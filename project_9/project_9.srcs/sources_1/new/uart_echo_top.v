`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2025 06:35:30 PM
// Design Name: 
// Module Name: uart_echo_top
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


module top_uart_clock_7seg_basys3 (
    input  wire       CLK100MHZ,
    input  wire [3:0] BTN,
    input  wire       RsRx,
    output wire       RsTx,
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [3:0] AN
);

    // Rename cho dễ đọc
    wire clk = CLK100MHZ;
    wire btn_set = BTN[0];

    //---------------------------------------------------------------
    // UART RX/TX
    //---------------------------------------------------------------
    localparam integer CLKS_PER_BIT = 868; // 100e6 / 115200

    wire       rx_dv;
    wire [7:0] rx_byte;

    uart_rx #(.CLKS_PER_BIT(CLKS_PER_BIT)) U_RX (
        .i_Clock    (clk),
        .i_Rx_Serial(RsRx),
        .o_Rx_DV    (rx_dv),
        .o_Rx_Byte  (rx_byte)
    );

    wire tx_active;
    reg  tx_start = 0;
    reg  [7:0] tx_byte = 0;

    uart_tx #(.CLKS_PER_BIT(CLKS_PER_BIT)) U_TX (
        .i_Clock    (clk),
        .i_Tx_DV    (tx_start),
        .i_Tx_Byte  (tx_byte),
        .o_Tx_Active(tx_active),
        .o_Tx_Serial(RsTx),
        .o_Tx_Done()
    );

    // Echo
    always @(posedge clk) begin
        tx_start <= 1'b0;
        if (rx_dv && !tx_active) begin
            tx_byte  <= rx_byte;
            tx_start <= 1'b1;
        end
    end


    //---------------------------------------------------------------
    // Debounce BTN0
    //---------------------------------------------------------------
    reg d1 = 0, d2 = 0;
    always @(posedge clk) begin
        d1 <= btn_set;
        d2 <= d1;
    end
    wire btn_rise = d1 & ~d2;


    //---------------------------------------------------------------
    // Time registers: HH:MM:SS
    //---------------------------------------------------------------
    reg [4:0] hour   = 12;
    reg [5:0] minute = 0;
    reg [5:0] second = 0;

    reg in_set = 0;
    reg [3:0] d0, d1_h, d2_m, d3_m;
    reg [2:0] idx = 0;

    function [3:0] asc2d;
        input [7:0] c;
        asc2d = (c>="0" && c<="9") ? (c-"0") : 4'd0;
    endfunction

    wire [5:0] new_hour   = d0     * 10 + d1_h;
    wire [6:0] new_minute = d2_m   * 10 + d3_m;


    //---------------------------------------------------------------
    // Tick 1 Hz
    //---------------------------------------------------------------
    reg [26:0] div = 0;
    wire tick_1hz = (div == 27'd99_999_999);

    always @(posedge clk) begin
        if (tick_1hz) div <= 0;
        else          div <= div + 1;
    end


    //---------------------------------------------------------------
    // Main time logic
    //---------------------------------------------------------------
    always @(posedge clk) begin
        if (btn_rise) begin
            in_set <= 1;
            idx    <= 0;
        end

        if (in_set && rx_dv && rx_byte >= "0" && rx_byte <= "9") begin
            case (idx)
                0: begin d0   <= asc2d(rx_byte); idx <= 1; end
                1: begin d1_h <= asc2d(rx_byte); idx <= 2; end
                2: begin d2_m <= asc2d(rx_byte); idx <= 3; end
                3: begin d3_m <= asc2d(rx_byte); idx <= 4; end
            endcase
        end

        if (in_set && idx == 4) begin
            if (new_hour < 24 && new_minute < 60) begin
                hour   <= new_hour;
                minute <= new_minute;
                second <= 0;
            end
            in_set <= 0;
        end

        else if (!in_set && tick_1hz) begin
            if (second == 59) begin
                second <= 0;
                if (minute == 59) begin
                    minute <= 0;
                    hour <= (hour == 23 ? 0 : hour + 1);
                end else minute <= minute + 1;
            end else second <= second + 1;
        end
    end


    //---------------------------------------------------------------
    // Convert HHMM → 4 BCD
    //---------------------------------------------------------------
    reg [3:0] h_t, h_o, m_t, m_o;
    integer temp;

    always @(*) begin
        temp = hour;   h_t = temp/10; h_o = temp%10;
        temp = minute; m_t = temp/10; m_o = temp%10;
    end


    //---------------------------------------------------------------
    // 7-seg multiplex
    //---------------------------------------------------------------
    reg [1:0] sel = 0;
    reg [15:0] rcount = 0;

    always @(posedge clk) begin
        rcount <= rcount + 1;
        if (rcount == 50000) begin
            rcount <= 0;
            sel <= sel + 1;
        end
    end

    reg [3:0] bcd;
    reg [6:0] seven;
    reg [3:0] anode;

    always @(*) begin
        case(sel)
            0: begin bcd = h_t; anode = 4'b0111; end
            1: begin bcd = h_o; anode = 4'b1011; end
            2: begin bcd = m_t; anode = 4'b1101; end
            3: begin bcd = m_o; anode = 4'b1110; end
        endcase
    end

    always @(*) begin
        case(bcd)
            0: seven=7'b0000001;
            1: seven=7'b1001111;
            2: seven=7'b0010010;
            3: seven=7'b0000110;
            4: seven=7'b1001100;
            5: seven=7'b0100100;
            6: seven=7'b0100000;
            7: seven=7'b0001111;
            8: seven=7'b0000000;
            9: seven=7'b0000100;
            default: seven=7'b1111111;
        endcase
    end


    //---------------------------------------------------------------
    // Output mapping to Basys3 pins
    //---------------------------------------------------------------
    assign {CA,CB,CC,CD,CE,CF,CG} = seven;
    assign DP = 1'b1;  // tắt chấm
    assign AN = anode;

endmodule










