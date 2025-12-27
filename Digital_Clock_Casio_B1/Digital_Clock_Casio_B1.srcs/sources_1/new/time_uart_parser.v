`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// time_uart_parser
// - Parses time packets and "remote button" packets from UART stream.
// - Designed for Verilog-2001 (Vivado friendly).
//
// Packets:
//   Time sync:  'T' HH MM '\n'    Example: T0937\n
//   Button:     'B' <code> '\n'   code: L,R,U,D,C
//              Example: BL\n   (inject left button pulse)
//
// Outputs:
//   hh/mm updated when a valid time packet is received, plus time_valid_pulse (1 clk).
//   btn_*_pulse asserted for 1 clk when a valid button packet is received.
//
// Note: This module does NOT debounce remote commands; it emits a clean pulse.
//       top.v ORs these pulses with the debounced physical button pulses.
//
//////////////////////////////////////////////////////////////////////////////////

module time_uart_parser(
    input  wire       clk,
    input  wire       rst,

    input  wire [7:0] rx_byte,
    input  wire       rx_valid,

    output reg  [5:0] hh,               // 0..23
    output reg  [5:0] mm,               // 0..59
    output reg        time_valid_pulse,  // 1-cycle pulse when hh/mm updated

    output reg        btn_left_pulse,
    output reg        btn_right_pulse,
    output reg        btn_up_pulse,
    output reg        btn_down_pulse,
    output reg        btn_center_pulse
);

    // -------------------------
    // Helper functions
    // -------------------------
    function is_digit;
        input [7:0] c;
        begin
            is_digit = (c >= 8'h30 && c <= 8'h39); // '0'..'9'
        end
    endfunction

    function [3:0] to_digit;
        input [7:0] c;
        begin
            to_digit = c - 8'h30; // ASCII -> 0..9
        end
    endfunction

    function [6:0] d2n;
        input [3:0] d1;
        input [3:0] d2;
        begin
            d2n = (d1 * 7'd10) + d2;
        end
    endfunction

    // -------------------------
    // Parser FSM
    // -------------------------
    localparam [3:0]
        S_WAIT = 4'd0,

        // Time: 'T' H1 H2 M1 M2 '\n'
        S_H1   = 4'd1,
        S_H2   = 4'd2,
        S_M1   = 4'd3,
        S_M2   = 4'd4,
        S_T_NL = 4'd5,

        // Button: 'B' CODE '\n'
        S_BCODE = 4'd6,
        S_B_NL  = 4'd7;

    reg [3:0] st;

    reg [3:0] h1, h2, m1, m2;
    reg [7:0] bcode;

    // Temporary computed values
    reg [6:0] hh7;
    reg [6:0] mm7;

    always @(posedge clk) begin
        if (rst) begin
            st <= S_WAIT;

            h1 <= 0; h2 <= 0; m1 <= 0; m2 <= 0;
            bcode <= 8'h00;

            hh7 <= 0; mm7 <= 0;
            hh  <= 0; mm  <= 0;

            time_valid_pulse <= 1'b0;

            btn_left_pulse   <= 1'b0;
            btn_right_pulse  <= 1'b0;
            btn_up_pulse     <= 1'b0;
            btn_down_pulse   <= 1'b0;
            btn_center_pulse <= 1'b0;

        end else begin
            // default: pulses low
            time_valid_pulse <= 1'b0;

            btn_left_pulse   <= 1'b0;
            btn_right_pulse  <= 1'b0;
            btn_up_pulse     <= 1'b0;
            btn_down_pulse   <= 1'b0;
            btn_center_pulse <= 1'b0;

            if (rx_valid) begin
                case (st)
                    S_WAIT: begin
                        if (rx_byte == 8'h54) begin // 'T'
                            st <= S_H1;
                        end else if (rx_byte == 8'h42) begin // 'B'
                            st <= S_BCODE;
                        end else begin
                            st <= S_WAIT;
                        end
                    end

                    // ----------------- TIME -----------------
                    S_H1: begin
                        if (is_digit(rx_byte)) begin
                            h1 <= to_digit(rx_byte);
                            st <= S_H2;
                        end else begin
                            st <= S_WAIT;
                        end
                    end

                    S_H2: begin
                        if (is_digit(rx_byte)) begin
                            h2 <= to_digit(rx_byte);
                            st <= S_M1;
                        end else begin
                            st <= S_WAIT;
                        end
                    end

                    S_M1: begin
                        if (is_digit(rx_byte)) begin
                            m1 <= to_digit(rx_byte);
                            st <= S_M2;
                        end else begin
                            st <= S_WAIT;
                        end
                    end

                    S_M2: begin
                        if (is_digit(rx_byte)) begin
                            m2 <= to_digit(rx_byte);
                            st <= S_T_NL;
                        end else begin
                            st <= S_WAIT;
                        end
                    end

                    S_T_NL: begin
                        if (rx_byte == 8'h0A) begin // '\n'
                            // compute
                            hh7 <= d2n(h1, h2);
                            mm7 <= d2n(m1, m2);

                            // validate + latch this cycle
                            begin : VALIDATE_AND_LATCH
                                reg [6:0] hh_tmp;
                                reg [6:0] mm_tmp;
                                hh_tmp = d2n(h1, h2);
                                mm_tmp = d2n(m1, m2);
                                if (hh_tmp <= 7'd23 && mm_tmp <= 7'd59) begin
                                    hh <= hh_tmp[5:0];
                                    mm <= mm_tmp[5:0];
                                    time_valid_pulse <= 1'b1;
                                end
                            end
                            st <= S_WAIT;
                        end else begin
                            st <= S_WAIT;
                        end
                    end

                    // ----------------- BUTTON -----------------
                    S_BCODE: begin
                        // Accept only the 5 codes; store and wait for newline
                        if ( (rx_byte == 8'h4C) || // 'L'
                             (rx_byte == 8'h52) || // 'R'
                             (rx_byte == 8'h55) || // 'U'
                             (rx_byte == 8'h44) || // 'D'
                             (rx_byte == 8'h43) ) begin // 'C'
                            bcode <= rx_byte;
                            st <= S_B_NL;
                        end else begin
                            st <= S_WAIT;
                        end
                    end

                    S_B_NL: begin
                        if (rx_byte == 8'h0A) begin // '\n'
                            case (bcode)
                                8'h4C: btn_left_pulse   <= 1'b1; // 'L'
                                8'h52: btn_right_pulse  <= 1'b1; // 'R'
                                8'h55: btn_up_pulse     <= 1'b1; // 'U'
                                8'h44: btn_down_pulse   <= 1'b1; // 'D'
                                8'h43: btn_center_pulse <= 1'b1; // 'C'
                                default: ;
                            endcase
                            st <= S_WAIT;
                        end else begin
                            st <= S_WAIT;
                        end
                    end

                    default: st <= S_WAIT;
                endcase
            end
        end
    end

endmodule
