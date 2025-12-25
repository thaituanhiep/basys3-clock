`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2025 07:08:39 PM
// Design Name: 
// Module Name: time_uart_parser
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module time_uart_parser(
    input  wire       clk,
    input  wire       rst,

    input  wire [7:0] rx_byte,
    input  wire       rx_valid,

    output reg  [5:0] hh,                // 0..23
    output reg  [5:0] mm,                // 0..59
    output reg        time_valid_pulse    // 1-cycle pulse when hh/mm updated
);

    localparam [2:0]
        P_WAIT_T  = 3'd0,
        P_H1      = 3'd1,
        P_H2      = 3'd2,
        P_M1      = 3'd3,
        P_M2      = 3'd4,
        P_WAIT_NL = 3'd5;

    reg [2:0] st = P_WAIT_T;

    reg [3:0] h1, h2, m1, m2;

    // temp regs
    reg [6:0] hh7;
    reg [6:0] mm7;

    // -------------------------
    // Helper functions (Verilog-2001)
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
            to_digit = c - 8'h30; // ASCII -> number 0..9
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
    // Packet: 'T' HH MM '\n'
    // Example: T0937\n
    // -------------------------
    always @(posedge clk) begin
        if (rst) begin
            st <= P_WAIT_T;

            h1 <= 0; h2 <= 0; m1 <= 0; m2 <= 0;
            hh7 <= 0; mm7 <= 0;

            hh <= 0;
            mm <= 0;
            time_valid_pulse <= 1'b0;
        end else begin
            time_valid_pulse <= 1'b0;

            if (rx_valid) begin
                case (st)
                    P_WAIT_T: begin
                        if (rx_byte == 8'h54) // 'T'
                            st <= P_H1;
                        else
                            st <= P_WAIT_T;
                    end

                    P_H1: begin
                        if (is_digit(rx_byte)) begin
                            h1 <= to_digit(rx_byte);
                            st <= P_H2;
                        end else begin
                            st <= P_WAIT_T;
                        end
                    end

                    P_H2: begin
                        if (is_digit(rx_byte)) begin
                            h2 <= to_digit(rx_byte);
                            st <= P_M1;
                        end else begin
                            st <= P_WAIT_T;
                        end
                    end

                    P_M1: begin
                        if (is_digit(rx_byte)) begin
                            m1 <= to_digit(rx_byte);
                            st <= P_M2;
                        end else begin
                            st <= P_WAIT_T;
                        end
                    end

                    P_M2: begin
                        if (is_digit(rx_byte)) begin
                            m2 <= to_digit(rx_byte);
                            st <= P_WAIT_NL;
                        end else begin
                            st <= P_WAIT_T;
                        end
                    end

                    P_WAIT_NL: begin
                        if (rx_byte == 8'h0A) begin // '\n'
                            // compute into regs (no select on function call)
                            hh7 <= d2n(h1, h2);
                            mm7 <= d2n(m1, m2);

                            // validate using computed values (compute again into temps for this cycle)
                            // (Vivado Verilog-2001 friendly)
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

                            st <= P_WAIT_T;
                        end else begin
                            st <= P_WAIT_T;
                        end
                    end

                    default: st <= P_WAIT_T;
                endcase
            end
        end
    end

endmodule
