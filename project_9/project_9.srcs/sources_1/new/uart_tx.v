`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2025 06:37:21 PM
// Design Name: 
// Module Name: uart_tx
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


// uart_tx.v
// UART Transmitter 8N1

module uart_tx
#(
    parameter integer CLKS_PER_BIT = 868   // 100MHz / 115200
)
(
    input  wire       i_Clock,
    input  wire       i_Tx_DV,      // pulse 1 clock để gửi byte
    input  wire [7:0] i_Tx_Byte,
    output reg        o_Tx_Active,
    output reg        o_Tx_Serial,
    output reg        o_Tx_Done
);

    localparam [2:0]
        s_IDLE      = 3'd0,
        s_START_BIT = 3'd1,
        s_DATA_BITS = 3'd2,
        s_STOP_BIT  = 3'd3,
        s_CLEANUP   = 3'd4;

    reg [2:0]  r_State      = s_IDLE;
    reg [15:0] r_Clk_Count  = 0;
    reg [2:0]  r_Bit_Index  = 0;
    reg [7:0]  r_Tx_Data    = 8'h00;

    always @(posedge i_Clock) begin
        case (r_State)
            // ---------------------------------------------------
            s_IDLE: begin
                o_Tx_Serial <= 1'b1;   // line idle = 1
                o_Tx_Done   <= 1'b0;
                o_Tx_Active <= 1'b0;
                r_Clk_Count <= 0;
                r_Bit_Index <= 0;

                if (i_Tx_DV == 1'b1) begin
                    r_Tx_Data  <= i_Tx_Byte;
                    o_Tx_Active <= 1'b1;
                    r_State    <= s_START_BIT;
                end
            end

            // ---------------------------------------------------
            s_START_BIT: begin
                o_Tx_Serial <= 1'b0;   // start bit = 0

                if (r_Clk_Count == CLKS_PER_BIT-1) begin
                    r_Clk_Count <= 0;
                    r_State     <= s_DATA_BITS;
                end else begin
                    r_Clk_Count <= r_Clk_Count + 1'b1;
                end
            end

            // ---------------------------------------------------
            s_DATA_BITS: begin
                o_Tx_Serial <= r_Tx_Data[r_Bit_Index];

                if (r_Clk_Count == CLKS_PER_BIT-1) begin
                    r_Clk_Count <= 0;

                    if (r_Bit_Index == 3'd7) begin
                        r_Bit_Index <= 0;
                        r_State     <= s_STOP_BIT;
                    end else begin
                        r_Bit_Index <= r_Bit_Index + 1'b1;
                    end
                end else begin
                    r_Clk_Count <= r_Clk_Count + 1'b1;
                end
            end

            // ---------------------------------------------------
            s_STOP_BIT: begin
                o_Tx_Serial <= 1'b1;   // stop bit = 1

                if (r_Clk_Count == CLKS_PER_BIT-1) begin
                    r_Clk_Count <= 0;
                    o_Tx_Done   <= 1'b1;
                    o_Tx_Active <= 1'b0;
                    r_State     <= s_CLEANUP;
                end else begin
                    r_Clk_Count <= r_Clk_Count + 1'b1;
                end
            end

            // ---------------------------------------------------
            s_CLEANUP: begin
                // giữ o_Tx_Done lên 1 một clock
                o_Tx_Done <= 1'b0;
                r_State   <= s_IDLE;
            end

            default: r_State <= s_IDLE;
        endcase
    end

endmodule
// uart_tx.v
// UART Transmitter 8N1

module uart_tx
#(
    parameter integer CLKS_PER_BIT = 868   // 100MHz / 115200
)
(
    input  wire       i_Clock,
    input  wire       i_Tx_DV,      // pulse 1 clock để gửi byte
    input  wire [7:0] i_Tx_Byte,
    output reg        o_Tx_Active,
    output reg        o_Tx_Serial,
    output reg        o_Tx_Done
);

    localparam [2:0]
        s_IDLE      = 3'd0,
        s_START_BIT = 3'd1,
        s_DATA_BITS = 3'd2,
        s_STOP_BIT  = 3'd3,
        s_CLEANUP   = 3'd4;

    reg [2:0]  r_State      = s_IDLE;
    reg [15:0] r_Clk_Count  = 0;
    reg [2:0]  r_Bit_Index  = 0;
    reg [7:0]  r_Tx_Data    = 8'h00;

    always @(posedge i_Clock) begin
        case (r_State)
            // ---------------------------------------------------
            s_IDLE: begin
                o_Tx_Serial <= 1'b1;   // line idle = 1
                o_Tx_Done   <= 1'b0;
                o_Tx_Active <= 1'b0;
                r_Clk_Count <= 0;
                r_Bit_Index <= 0;

                if (i_Tx_DV == 1'b1) begin
                    r_Tx_Data  <= i_Tx_Byte;
                    o_Tx_Active <= 1'b1;
                    r_State    <= s_START_BIT;
                end
            end

            // ---------------------------------------------------
            s_START_BIT: begin
                o_Tx_Serial <= 1'b0;   // start bit = 0

                if (r_Clk_Count == CLKS_PER_BIT-1) begin
                    r_Clk_Count <= 0;
                    r_State     <= s_DATA_BITS;
                end else begin
                    r_Clk_Count <= r_Clk_Count + 1'b1;
                end
            end

            // ---------------------------------------------------
            s_DATA_BITS: begin
                o_Tx_Serial <= r_Tx_Data[r_Bit_Index];

                if (r_Clk_Count == CLKS_PER_BIT-1) begin
                    r_Clk_Count <= 0;

                    if (r_Bit_Index == 3'd7) begin
                        r_Bit_Index <= 0;
                        r_State     <= s_STOP_BIT;
                    end else begin
                        r_Bit_Index <= r_Bit_Index + 1'b1;
                    end
                end else begin
                    r_Clk_Count <= r_Clk_Count + 1'b1;
                end
            end

            // ---------------------------------------------------
            s_STOP_BIT: begin
                o_Tx_Serial <= 1'b1;   // stop bit = 1

                if (r_Clk_Count == CLKS_PER_BIT-1) begin
                    r_Clk_Count <= 0;
                    o_Tx_Done   <= 1'b1;
                    o_Tx_Active <= 1'b0;
                    r_State     <= s_CLEANUP;
                end else begin
                    r_Clk_Count <= r_Clk_Count + 1'b1;
                end
            end

            // ---------------------------------------------------
            s_CLEANUP: begin
                // giữ o_Tx_Done lên 1 một clock
                o_Tx_Done <= 1'b0;
                r_State   <= s_IDLE;
            end

            default: r_State <= s_IDLE;
        endcase
    end

endmodule

