`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2025 07:07:41 PM
// Design Name: 
// Module Name: uart_rx
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


module uart_rx #(
    parameter integer CLK_HZ = 100_000_000,
    parameter integer BAUD   = 115200
)(
    input  wire       clk,
    input  wire       rst,
    input  wire       rx,        // UART RX line (idle = 1)
    output reg [7:0]  data,
    output reg        valid       // 1-cycle pulse when byte received
);
    localparam integer CLKS_PER_BIT = CLK_HZ / BAUD; // 100e6/115200 ≈ 868

    localparam [2:0]
        S_IDLE  = 3'd0,
        S_START = 3'd1,
        S_DATA  = 3'd2,
        S_STOP  = 3'd3,
        S_DONE  = 3'd4;

    reg [2:0] state = S_IDLE;

    reg [$clog2(CLKS_PER_BIT+1)-1:0] clk_cnt = 0;
    reg [2:0] bit_idx = 0;
    reg [7:0] shift   = 8'h00;

    // 2-flop synchronizer
    reg rx_ff1 = 1'b1, rx_ff2 = 1'b1;
    always @(posedge clk) begin
        rx_ff1 <= rx;
        rx_ff2 <= rx_ff1;
    end
    wire rx_s = rx_ff2;

    always @(posedge clk) begin
        if (rst) begin
            state   <= S_IDLE;
            clk_cnt <= 0;
            bit_idx <= 0;
            shift   <= 8'h00;
            data    <= 8'h00;
            valid   <= 1'b0;
        end else begin
            valid <= 1'b0;

            case (state)
                S_IDLE: begin
                    clk_cnt <= 0;
                    bit_idx <= 0;
                    if (rx_s == 1'b0) state <= S_START; // start bit
                end

                S_START: begin
                    if (clk_cnt == (CLKS_PER_BIT/2)) begin
                        clk_cnt <= 0;
                        if (rx_s == 1'b0) state <= S_DATA;
                        else state <= S_IDLE; // false start
                    end else begin
                        clk_cnt <= clk_cnt + 1;
                    end
                end

                S_DATA: begin
                    if (clk_cnt == CLKS_PER_BIT-1) begin
                        clk_cnt <= 0;
                        shift[bit_idx] <= rx_s; // LSB first
                        if (bit_idx == 3'd7) begin
                            bit_idx <= 0;
                            state <= S_STOP;
                        end else begin
                            bit_idx <= bit_idx + 1;
                        end
                    end else begin
                        clk_cnt <= clk_cnt + 1;
                    end
                end

                S_STOP: begin
                    if (clk_cnt == CLKS_PER_BIT-1) begin
                        clk_cnt <= 0;
                        data  <= shift;
                        state <= S_DONE;
                    end else begin
                        clk_cnt <= clk_cnt + 1;
                    end
                end

                S_DONE: begin
                    valid <= 1'b1;
                    state <= S_IDLE;
                end

                default: state <= S_IDLE;
            endcase
        end
    end
endmodule
