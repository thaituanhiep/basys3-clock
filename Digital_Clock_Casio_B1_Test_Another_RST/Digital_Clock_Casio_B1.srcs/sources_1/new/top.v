`timescale 1ns / 1ps

module top (
    input  wire        clk,

    // Buttons
    input  wire        IO_BTN_L,
    input  wire        IO_BTN_R,
    input  wire        IO_BTN_U,
    input  wire        IO_BTN_D,
    input  wire        IO_BTN_C,

    // UART pins (FPGA <-> ESP32)
    input  wire        uart_rx_pin,
    output wire        uart_tx_pin,
    

    // 7-seg
    output wire [3:0]  IO_SSEG_SEL,
    output wire [6:0]  IO_SSEG,
    output wire        IO_SSEG_DP,

    // LEDs
    output wire [15:0] LD,

    // BUZZER
    output wire        BUZZER
);

    
    // =====================================================
    // System reset (internal, power-up only)
    // =====================================================
    reg [3:0] rst_cnt = 0;
    reg rst_sys = 1'b1;
    
    always @(posedge clk) begin
        if (rst_cnt < 4'd10) begin
            rst_cnt <= rst_cnt + 1;
            rst_sys <= 1'b1;
        end else begin
            rst_sys <= 1'b0;
        end
    end
    
    
    // =====================================================
    // CLOCK 1HZ
    // =====================================================
    wire tick_1hz;
    tick_1hz_gen u_tick (
        .clk     (clk),
        .tick_1hz(tick_1hz)
    );

    // =====================================================
    // DEBOUNCE (physical)
    // =====================================================
    wire l_p_phy, r_p_phy, u_p_phy, d_p_phy, c_p_phy;

    debounce db_l (.clk(clk), .btn(IO_BTN_L), .btn_pulse(l_p_phy));
    debounce db_r (.clk(clk), .btn(IO_BTN_R), .btn_pulse(r_p_phy));
    debounce db_u (.clk(clk), .btn(IO_BTN_U), .btn_pulse(u_p_phy));
    debounce db_d (.clk(clk), .btn(IO_BTN_D), .btn_pulse(d_p_phy));
    debounce db_c (.clk(clk), .btn(IO_BTN_C), .btn_pulse(c_p_phy));

    // =====================================================
    // UART RX + TIME + REMOTE BUTTON PARSER
    // =====================================================
    wire [7:0] rx_byte;
    wire       rx_valid;

    uart_rx #(
        .CLK_HZ(100_000_000),
        .BAUD  (115200)
    ) u_uart_rx (
        .clk  (clk),
        .rst  (rst_sys),
        .rx   (uart_rx_pin),
        .data (rx_byte),
        .valid(rx_valid)
    );

    wire [5:0] ext_hh;
    wire [5:0] ext_mm;
    wire [5:0] ext_ss;
    wire       ext_set_pulse;

    wire       ext_l_p, ext_r_p, ext_u_p, ext_d_p, ext_c_p;

    time_uart_parser u_time_parse (
        .clk             (clk),
        .rst             (rst_sys),
        .rx_byte         (rx_byte),
        .rx_valid        (rx_valid),
        .hh              (ext_hh),
        .mm              (ext_mm),
        .ss              (ext_ss),
        .time_valid_pulse(ext_set_pulse),

        .btn_left_pulse  (ext_l_p),
        .btn_right_pulse (ext_r_p),
        .btn_up_pulse    (ext_u_p),
        .btn_down_pulse  (ext_d_p),
        .btn_center_pulse(ext_c_p)
    );

    // =====================================================
    // COMBINE pulses: physical OR remote (remote is "press elsewhere")
    // =====================================================
    wire l_p = l_p_phy | ext_l_p;
    wire r_p = r_p_phy | ext_r_p;
    wire u_p = u_p_phy | ext_u_p;
    wire d_p = d_p_phy | ext_d_p;
    wire c_p = c_p_phy | ext_c_p;

    // =====================================================
    // MODE FSM
    // =====================================================
    wire [2:0] mode;
    wire       set_sel;

    ModeFSM u_fsm (
        .clk             (clk),
        .btn_left_pulse  (l_p),
        .btn_right_pulse (r_p),
        .btn_center_pulse(c_p),
        .mode            (mode),
        .set_sel         (set_sel)
    );

    // =====================================================
    // BLINK (UI)
    // =====================================================
    wire blink;
    blink_gen u_blink (
        .clk   (clk),
        .enable(mode != 3'd0),
        .blink (blink)
    );

    // =====================================================
    // BLINK FOR ALERT (ALWAYS ON)
    // =====================================================
    wire blink_alert;
    blink_gen u_blink_alert (
        .clk   (clk),
        .enable(1'b1),
        .blink (blink_alert)
    );

    // =====================================================
    // DIGITAL CLOCK
    // =====================================================
    wire [3:0] dc_d0, dc_d1, dc_d2, dc_d3;
    wire [4:0] dc_hour;
    wire [5:0] dc_min;
    wire [5:0] dc_sec;
    



    DigitalClock u_clock (
        .clk          (clk),
        .tick_1hz      (tick_1hz),

        .set_min_mode  (mode == 3'd1 && set_sel == 1'b0),
        .set_hour_mode (mode == 3'd1 && set_sel == 1'b1),

        .btn_up_pulse  (u_p),
        .btn_down_pulse(d_p),
        .blink         (blink),

        .digit0        (dc_d0),
        .digit1        (dc_d1),
        .digit2        (dc_d2),
        .digit3        (dc_d3),

        .ext_hh        (ext_hh),
        .ext_mm        (ext_mm),
        .ext_ss        (ext_ss),
        .ext_set_pulse (ext_set_pulse),

        .hour          (dc_hour),
        .min           (dc_min),
        .cur_sec (dc_sec)
    );

    // =====================================================
    // DISPLAY TOGGLE => SECOND COUNTER
    // =====================================================
reg show_seconds = 1'b0;   // Mặc định HH:MM

always @(posedge clk) begin
    if (mode != 3'd0)
        show_seconds <= 1'b0;
    else if (r_p)
        show_seconds <= ~show_seconds;
end

// =====================================================
// SECOND DISPLAY (LATCHED - SYNC SAFE)
// =====================================================
reg [5:0] sec_disp;

always @(posedge clk) begin
    // Khi set time -> reset sec về 0 (chuẩn Casio)
    if (mode == 3'd1) begin
        sec_disp <= 6'd0;
    end
    // Khi đang hiển thị seconds -> update đúng tick_1hz
    else if (show_seconds && tick_1hz) begin
        sec_disp <= dc_sec;
    end
    // Vừa bật chế độ xem seconds -> chụp lại ngay
    else if (r_p && mode == 3'd0) begin
        sec_disp <= dc_sec;
    end
end

wire [3:0] sec_ones = sec_disp % 10;
wire [3:0] sec_tens = sec_disp / 10;

    
    // =====================================================
    // DISPLAY MUX
    // =====================================================
    wire [3:0] d0, d1, d2, d3;

    assign {d3,d2,d1,d0} =
        (mode == 3'd0) ? (show_seconds ? {4'hF,4'hF,sec_tens,sec_ones} : {dc_d3,dc_d2,dc_d1,dc_d0}) :
        (mode == 3'd1) ? {dc_d3,dc_d2,dc_d1,dc_d0} :
        (mode == 3'd2) ? {al_d3,al_d2,al_d1,al_d0} :
        (mode == 3'd3) ? {4'hF,4'hF,4'hF, alarm_enable_disp ? 4'h1 : 4'h0} :
        (mode == 3'd4) ? {cd_d3,cd_d2,cd_d1,cd_d0} :
        (mode == 3'd5) ? {sw_d3,sw_d2,sw_d1,sw_d0} :
                         16'd0;
    // =====================================================
    // COLON BLINK
    // =====================================================
    reg colon_state = 1'b0;
    assign IO_SSEG_DP = colon_state;

    always @(posedge clk) begin
        if (mode != 3'd0 || show_seconds)
            colon_state <= 1'b0;
        else if (tick_1hz)
            colon_state <= ~colon_state;
    end


    // =====================================================
    // ALARM
    // =====================================================
    wire alarm_match;
    
    reg alarm_enable      = 1'b0;   // Alarm OFF khi mới nạp FPGA
    reg alarm_enable_disp = 1'b0;
    
    wire [4:0] alarm_hour;
    wire [5:0] alarm_min;

    wire alarm_set_mode = (mode == 3'd2);
    wire alarm_set_min  = alarm_set_mode && (set_sel == 1'b0);
    wire alarm_set_hour = alarm_set_mode && (set_sel == 1'b1);

    always @(posedge clk) begin
        if (mode == 3'd3 && r_p)
            alarm_enable <= ~alarm_enable;
    end
                           

    always @(posedge clk) begin
        alarm_enable_disp <= alarm_enable;
    end


    reg [3:0] al_d0, al_d1, al_d2, al_d3;
    always @(*) begin
        al_d0 = alarm_min % 10;
        al_d1 = alarm_min / 10;
        al_d2 = alarm_hour % 10;
        al_d3 = alarm_hour / 10;

        if (alarm_set_min && blink) begin
            al_d0 = 4'hF; al_d1 = 4'hF;
        end
        if (alarm_set_hour && blink) begin
            al_d2 = 4'hF; al_d3 = 4'hF;
        end
    end

    alarm u_alarm (
        .clk          (clk),
        .rst          (rst_sys),
        .tick_1hz     (tick_1hz),

        .cur_hour     (dc_hour),
        .cur_min      (dc_min),

        .set_alarm    (alarm_set_mode),

        .inc_hour     (alarm_set_hour && u_p),
        .dec_hour     (alarm_set_hour && d_p),
        .inc_min      (alarm_set_min  && u_p),
        .dec_min      (alarm_set_min  && d_p),

        .alarm_enable (alarm_enable),
        .alarm_match  (alarm_match),

        .alarm_hour_out(alarm_hour),
        .alarm_min_out (alarm_min)
    );

    // =====================================================
    // COUNTDOWN
    // =====================================================
    wire [3:0] cd_d0, cd_d1, cd_d2, cd_d3;
    wire       cd_running, cd_finished;

    countdown u_countdown (
        .clk          (clk),
        .tick_1hz      (tick_1hz),
        .cd_enable     (mode == 3'd4),

        .btn_up_pulse  (u_p),
        .btn_down_pulse(d_p),
        .btn_right_pulse(r_p),
        .btn_center_pulse(c_p),

        .blink         (blink),

        .running       (cd_running),
        .finished      (cd_finished),

        .d0            (cd_d0),
        .d1            (cd_d1),
        .d2            (cd_d2),
        .d3            (cd_d3)
    );

    // =====================================================
    // STOPWATCH
    // =====================================================
    wire [3:0] sw_d0, sw_d1, sw_d2, sw_d3;

    stopwatch u_stopwatch (
        .clk       (clk),
        .tick_1hz   (tick_1hz),
        .sw_enable  (mode == 3'd5),
        .btn_start  (r_p),
        .btn_reset  (c_p),
        .d0         (sw_d0),
        .d1         (sw_d1),
        .d2         (sw_d2),
        .d3         (sw_d3)
    );

   
    // =====================================================
    // SEVEN SEG
    // =====================================================
    sevseg u_seg (
        .clk            (clk),
        .binary_input_0 (d0),
        .binary_input_1 (d1),
        .binary_input_2 (d2),
        .binary_input_3 (d3),
        .IO_SSEG_SEL    (IO_SSEG_SEL),
        .IO_SSEG        (IO_SSEG),
        .IO_SSEG_DP     (IO_SSEG_DP)
    );

    // =====================================================
    // UART TX (Basys3 -> ESP32): send 'G' when BTNC pressed in CLOCK mode
    // =====================================================
    wire tx_busy;
    reg  tx_start;
    reg  [7:0] tx_data;

    always @(posedge clk) begin
        tx_start <= 1'b0;
        if (!tx_busy && c_p && (mode == 3'd0)) begin
            tx_start <= 1'b1;
            tx_data  <= 8'h47; // 'G'
        end
    end

    uart_tx #(
        .CLK_HZ(100_000_000),
        .BAUD  (115200)
    ) u_uart_tx (
        .clk     (clk),
        .rst     (rst_sys),
        .tx_start(tx_start),
        .tx_data (tx_data),
        .tx_busy (tx_busy),
        .tx      (uart_tx_pin)
    );

    

    // =====================================================
    // LED STATUS
    // =====================================================
    wire [15:0] led_mode = (mode <= 3'd5) ? (16'b1 << mode) : 16'b0;
    wire [15:0] led_alarm_status = alarm_enable ? (16'b1 << 6) : 16'b0;

    // =====================================================
    // ALERT CONTROLLER
    // =====================================================
    wire buzzer_en;
    wire [15:0] led_alert;

    alert_ctrl u_alert (
        .clk      (clk),
        .rst      (rst_sys),
        .tick_1hz (tick_1hz),
        .blink_1hz(blink_alert),

        .alarm_match(alarm_match),
        .cd_finished(cd_finished),

        .btnu_pulse(u_p),
        .btnd_pulse(d_p),

        .buzzer_en(buzzer_en),
        .led_alert(led_alert)
    );

    assign BUZZER = buzzer_en;

    // =====================================================
    // LED COMBINE
    // =====================================================
    assign LD = led_mode | led_alarm_status | led_alert;

endmodule