`timescale 1ns / 1ps
module time_uart_parser(
    input  wire       clk,
    input  wire       rst,

    input  wire [7:0] rx_byte,
    input  wire       rx_valid,

    output reg  [5:0] hh,               // 0..23
    output reg  [5:0] mm,               // 0..59
    output reg  [5:0] ss,               // 0..59 
    output reg        time_valid_pulse,  // 1-cycle pulse

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
            is_digit = (c >= 8'h30 && c <= 8'h39);
        end
    endfunction

    function [3:0] to_digit;
        input [7:0] c;
        begin
            to_digit = c - 8'h30;
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
    // FSM
    // -------------------------
    localparam [3:0]
        S_WAIT = 4'd0,

        S_H1   = 4'd1,
        S_H2   = 4'd2,
        S_M1   = 4'd3,
        S_M2   = 4'd4,

        S_S1   = 4'd5,   // ★ NEW
        S_S2   = 4'd6,   // ★ NEW

        S_T_NL = 4'd7,

        S_BCODE = 4'd8,
        S_B_NL  = 4'd9;

    reg [3:0] st;

    reg [3:0] h1, h2, m1, m2, s1, s2;
    reg [7:0] bcode;

    always @(posedge clk) begin
        if (rst) begin
            st <= S_WAIT;

            h1 <= 0; h2 <= 0;
            m1 <= 0; m2 <= 0;
            s1 <= 0; s2 <= 0;

            hh <= 0;
            mm <= 0;
            ss <= 0;

            time_valid_pulse <= 1'b0;

            btn_left_pulse   <= 1'b0;
            btn_right_pulse  <= 1'b0;
            btn_up_pulse     <= 1'b0;
            btn_down_pulse   <= 1'b0;
            btn_center_pulse <= 1'b0;

        end else begin
            time_valid_pulse <= 1'b0;

            btn_left_pulse   <= 1'b0;
            btn_right_pulse  <= 1'b0;
            btn_up_pulse     <= 1'b0;
            btn_down_pulse   <= 1'b0;
            btn_center_pulse <= 1'b0;

            if (rx_valid) begin
                case (st)
                    S_WAIT:
                        if (rx_byte == 8'h54) st <= S_H1;        // 'T'
                        else if (rx_byte == 8'h42) st <= S_BCODE; // 'B'

                    // -------- TIME --------
                    S_H1: if (is_digit(rx_byte)) begin h1 <= to_digit(rx_byte); st <= S_H2; end else st <= S_WAIT;
                    S_H2: if (is_digit(rx_byte)) begin h2 <= to_digit(rx_byte); st <= S_M1; end else st <= S_WAIT;
                    S_M1: if (is_digit(rx_byte)) begin m1 <= to_digit(rx_byte); st <= S_M2; end else st <= S_WAIT;

                    S_M2: begin
                        if (is_digit(rx_byte)) begin
                            m2 <= to_digit(rx_byte);
                            st <= S_S1;      // ★ thử parse seconds
                        end else if (rx_byte == 8'h0A) begin
                            // legacy HH MM \n
                            if (d2n(h1,h2) <= 23 && d2n(m1,m2) <= 59) begin
                                hh <= d2n(h1,h2);
                                mm <= d2n(m1,m2);
                                ss <= 6'd0;   // optional reset
                                time_valid_pulse <= 1'b1;
                            end
                            st <= S_WAIT;
                        end else st <= S_WAIT;
                    end

                    S_S1: if (is_digit(rx_byte)) begin s1 <= to_digit(rx_byte); st <= S_S2; end else st <= S_WAIT;
                    S_S2: if (is_digit(rx_byte)) begin s2 <= to_digit(rx_byte); st <= S_T_NL; end else st <= S_WAIT;

                    S_T_NL: begin
                        if (rx_byte == 8'h0A) begin
                            if (d2n(h1,h2) <= 23 &&
                                d2n(m1,m2) <= 59 &&
                                d2n(s1,s2) <= 59) begin
                                hh <= d2n(h1,h2);
                                mm <= d2n(m1,m2);
                                ss <= d2n(s1,s2);
                                time_valid_pulse <= 1'b1;
                            end
                        end
                        st <= S_WAIT;
                    end

                    // -------- BUTTON --------
                    S_BCODE: begin
                        if (rx_byte == "L" || rx_byte == "R" ||
                            rx_byte == "U" || rx_byte == "D" ||
                            rx_byte == "C") begin
                            bcode <= rx_byte;
                            st <= S_B_NL;
                        end else st <= S_WAIT;
                    end

                    S_B_NL: begin
                        if (rx_byte == 8'h0A) begin
                            case (bcode)
                                "L": btn_left_pulse   <= 1'b1;
                                "R": btn_right_pulse  <= 1'b1;
                                "U": btn_up_pulse     <= 1'b1;
                                "D": btn_down_pulse   <= 1'b1;
                                "C": btn_center_pulse <= 1'b1;
                            endcase
                        end
                        st <= S_WAIT;
                    end
                endcase
            end
        end
    end
endmodule
