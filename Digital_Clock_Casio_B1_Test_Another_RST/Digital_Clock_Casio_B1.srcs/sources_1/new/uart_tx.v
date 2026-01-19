`timescale 1ns / 1ps

module uart_tx #(
    parameter integer CLK_HZ = 100_000_000,
    parameter integer BAUD   = 115200
)(
    input  wire       clk,
    input  wire       rst,

    input  wire       tx_start,
    input  wire [7:0] tx_data,
    output reg        tx_busy,

    output reg        tx
);
    localparam integer CLKS_PER_BIT = (CLK_HZ + (BAUD/2)) / BAUD; // rounded
    localparam integer CNT_W = $clog2(CLKS_PER_BIT);

    localparam [2:0] S_IDLE  = 3'd0;
    localparam [2:0] S_START = 3'd1;
    localparam [2:0] S_DATA  = 3'd2;
    localparam [2:0] S_STOP  = 3'd3;

    reg [2:0] state = S_IDLE;
    reg [CNT_W:0] clk_cnt = { (CNT_W+1){1'b0} };
    reg [2:0] bit_idx = 3'd0;
    reg [7:0] shreg = 8'h00;

    always @(posedge clk) begin
        if (rst) begin
            state  <= S_IDLE;
            tx     <= 1'b1;   // idle high
            tx_busy<= 1'b0;
            clk_cnt<= 0;
            bit_idx<= 0;
            shreg  <= 0;
        end else begin
            case (state)
                S_IDLE: begin
                    tx <= 1'b1;
                    tx_busy <= 1'b0;
                    clk_cnt <= 0;
                    bit_idx <= 0;

                    if (tx_start) begin
                        tx_busy <= 1'b1;
                        shreg   <= tx_data;
                        tx      <= 1'b0; // start bit
                        state   <= S_START;
                    end
                end

                S_START: begin
                    tx_busy <= 1'b1;
                    if (clk_cnt == CLKS_PER_BIT-1) begin
                        clk_cnt <= 0;
                        tx      <= shreg[0];
                        shreg   <= {1'b0, shreg[7:1]};
                        bit_idx <= 0;
                        state   <= S_DATA;
                    end else begin
                        clk_cnt <= clk_cnt + 1;
                    end
                end

                S_DATA: begin
                    tx_busy <= 1'b1;
                    if (clk_cnt == CLKS_PER_BIT-1) begin
                        clk_cnt <= 0;
                        if (bit_idx == 3'd7) begin
                            tx    <= 1'b1; // stop bit
                            state <= S_STOP;
                        end else begin
                            bit_idx <= bit_idx + 1;
                            tx      <= shreg[0];
                            shreg   <= {1'b0, shreg[7:1]};
                        end
                    end else begin
                        clk_cnt <= clk_cnt + 1;
                    end
                end

                S_STOP: begin
                    tx_busy <= 1'b1;
                    tx      <= 1'b1;
                    if (clk_cnt == CLKS_PER_BIT-1) begin
                        clk_cnt <= 0;
                        state   <= S_IDLE;
                    end else begin
                        clk_cnt <= clk_cnt + 1;
                    end
                end

                default: state <= S_IDLE;
            endcase
        end
    end
endmodule
