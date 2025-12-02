`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2025 06:36:14 PM
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


// uart_rx.v
// UART Receiver 8N1, nhận 1 byte, tạo pulse o_Rx_DV khi xong

module uart_rx
#(
    parameter integer CLKS_PER_BIT = 868   // 100MHz / 115200
)
(
    input  wire       i_Clock,
    input  wire       i_Rx_Serial,
    output reg        o_Rx_DV,
    output reg [7:0]  o_Rx_Byte
);

    // Đồng bộ chống metastability
    reg r_Rx_Data_R = 1'b1;
    reg r_Rx_Data   = 1'b1;

    always @(posedge i_Clock) begin
        r_Rx_Data_R <= i_Rx_Serial;
        r_Rx_Data   <= r_Rx_Data_R;
    end

    // FSM state
    localparam [2:0]
        s_IDLE     = 3'd0,
        s_START    = 3'd1,
        s_DATA     = 3'd2,
        s_STOP     = 3'd3,
        s_CLEANUP  = 3'd4;

    reg [2:0]  r_State      = s_IDLE;
    reg [15:0] r_Clk_Count  = 0;
    reg [2:0]  r_Bit_Index  = 0;  // 0..7

    always @(posedge i_Clock) begin
        case (r_State)
            // ---------------------------------------------------
            s_IDLE: begin
                o_Rx_DV     <= 1'b0;
                r_Clk_Count <= 0;
                r_Bit_Index <= 0;

                // chờ start bit (mức 0)
                if (r_Rx_Data == 1'b0)
                    r_State <= s_START;
            end

            // ---------------------------------------------------
            s_START: begin
                if (r_Clk_Count == (CLKS_PER_BIT/2)-1) begin
                    // lấy mẫu giữa start bit
                    if (r_Rx_Data == 1'b0) begin
                        r_Clk_Count <= 0;
                        r_State     <= s_DATA;
                    end else begin
                        // nhiễu, quay lại idle
                        r_State <= s_IDLE;
                    end
                end else begin
                    r_Clk_Count <= r_Clk_Count + 1'b1;
                end
            end

            // ---------------------------------------------------
            s_DATA: begin
                if (r_Clk_Count == CLKS_PER_BIT-1) begin
                    r_Clk_Count          <= 0;
                    o_Rx_Byte[r_Bit_Index] <= r_Rx_Data;

                    if (r_Bit_Index == 3'd7) begin
                        r_Bit_Index <= 0;
                        r_State     <= s_STOP;
                    end else begin
                        r_Bit_Index <= r_Bit_Index + 1'b1;
                    end
                end else begin
                    r_Clk_Count <= r_Clk_Count + 1'b1;
                end
            end

            // ---------------------------------------------------
            s_STOP: begin
                if (r_Clk_Count == CLKS_PER_BIT-1) begin
                    o_Rx_DV    <= 1'b1;
                    r_Clk_Count <= 0;
                    r_State    <= s_CLEANUP;
                end else begin
                    r_Clk_Count <= r_Clk_Count + 1'b1;
                end
            end

            // ---------------------------------------------------
            s_CLEANUP: begin
                r_State <= s_IDLE;
                o_Rx_DV <= 1'b0;
            end

            default: r_State <= s_IDLE;
        endcase
    end

endmodule

