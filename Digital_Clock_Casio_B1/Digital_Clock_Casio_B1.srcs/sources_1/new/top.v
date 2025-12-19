module top (
    input wire clk,

    // Buttons
    input wire IO_BTN_L,
    input wire IO_BTN_R,
    input wire IO_BTN_U,
    input wire IO_BTN_D,
    input wire IO_BTN_C,

    // 7-seg
    output wire [3:0] IO_SSEG_SEL,
    output wire [6:0] IO_SSEG,
    output wire       IO_SSEG_DP,

    // LEDs
    output wire [15:0] LD
);

  // =====================================================
  // CLOCK 1HZ
  // =====================================================
  wire tick_1hz;
  tick_1hz_gen u_tick (
      .clk(clk),
      .tick_1hz(tick_1hz)
  );

  // =====================================================
  // DEBOUNCE
  // =====================================================
  wire l_p, r_p, u_p, d_p, c_p;

  debounce db_l (.clk(clk), .btn(IO_BTN_L), .btn_pulse(l_p));
  debounce db_r (.clk(clk), .btn(IO_BTN_R), .btn_pulse(r_p));
  debounce db_u (.clk(clk), .btn(IO_BTN_U), .btn_pulse(u_p));
  debounce db_d (.clk(clk), .btn(IO_BTN_D), .btn_pulse(d_p));
  debounce db_c (.clk(clk), .btn(IO_BTN_C), .btn_pulse(c_p));

  // =====================================================
  // MODE FSM
  // =====================================================
  wire [2:0] mode;
  wire set_sel;

  ModeFSM u_fsm (
      .clk(clk),
      .btn_left_pulse(l_p),
      .btn_right_pulse(r_p),
      .btn_center_pulse(c_p),
      .mode(mode),
      .set_sel(set_sel)
  );

  // =====================================================
  // BLINK
  // =====================================================
  wire blink;
  blink_gen u_blink (
      .clk(clk),
      .enable(mode != 3'd0),
      .blink(blink)
  );

  // =====================================================
  // DIGITAL CLOCK
  // =====================================================
  wire [3:0] dc_d0, dc_d1, dc_d2, dc_d3;
  wire [4:0] dc_hour;
  wire [5:0] dc_min;

  DigitalClock u_clock (
      .clk(clk),
      .tick_1hz(tick_1hz),
      .set_min_mode(mode == 3'd1 && set_sel == 0),
      .set_hour_mode(mode == 3'd1 && set_sel == 1),
      .btn_up_pulse(u_p),
      .btn_down_pulse(d_p),
      .blink(blink),
      .digit0(dc_d0),
      .digit1(dc_d1),
      .digit2(dc_d2),
      .digit3(dc_d3),
      .hour(dc_hour),
      .min(dc_min)
  );

  // =====================================================
  // SECOND COUNTER (FOR DISPLAY ONLY)
  // =====================================================
  reg [5:0] sec_cnt;

  always @(posedge clk) begin
    if (tick_1hz) begin
      if (sec_cnt == 59) sec_cnt <= 0;
      else sec_cnt <= sec_cnt + 1;
    end
  end

  wire [3:0] sec_ones = sec_cnt % 10;
  wire [3:0] sec_tens = sec_cnt / 10;

  // =====================================================
  // DISPLAY TOGGLE (HH:MM <-> SS)
  // =====================================================
  reg show_seconds;

  always @(posedge clk) begin
    if (mode != 3'd0)
      show_seconds <= 1'b0;              // reset khi ra khỏi mode 0
    else if (r_p)
      show_seconds <= ~show_seconds;     // toggle khi nhấn BTNR
  end

  // =====================================================
  // ALARM
  // =====================================================
  wire alarm_match;
  reg alarm_enable;
  reg alarm_enable_disp;

  wire [4:0] alarm_hour;
  wire [5:0] alarm_min;

  wire alarm_set_mode = (mode == 3'd2);
  wire alarm_set_min  = alarm_set_mode && (set_sel == 0);
  wire alarm_set_hour = alarm_set_mode && (set_sel == 1);

  always @(posedge clk)
    if (mode == 3'd3 && r_p) alarm_enable <= ~alarm_enable;

  always @(posedge clk)
    alarm_enable_disp <= alarm_enable;

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
      .clk(clk),
      .rst(1'b0),
      .tick_1hz(tick_1hz),
      .cur_hour(dc_hour),
      .cur_min(dc_min),
      .set_alarm(alarm_set_mode),
      .inc_hour(alarm_set_hour && u_p),
      .dec_hour(alarm_set_hour && d_p),
      .inc_min(alarm_set_min && u_p),
      .dec_min(alarm_set_min && d_p),
      .alarm_enable(alarm_enable),
      .alarm_match(alarm_match),
      .alarm_hour_out(alarm_hour),
      .alarm_min_out(alarm_min)
  );

  wire [3:0] al_onoff_d0, al_onoff_d1, al_onoff_d2, al_onoff_d3;
  assign {al_onoff_d3, al_onoff_d2, al_onoff_d1, al_onoff_d0} =
         alarm_enable_disp ? {4'hF,4'hF,4'hF,4'h1}
                           : {4'hF,4'hF,4'hF,4'h0};

  // =====================================================
  // COUNTDOWN
  // =====================================================
  wire [3:0] cd_d0, cd_d1, cd_d2, cd_d3;
  wire cd_running, cd_finished;

  countdown u_countdown (
      .clk(clk),
      .tick_1hz(tick_1hz),
      .cd_enable(mode == 3'd4),
      .btn_up_pulse(u_p),
      .btn_down_pulse(d_p),
      .btn_right_pulse(r_p),
      .btn_center_pulse(c_p),

      .blink(blink),
      .running(cd_running),
      .finished(cd_finished),
      .d0(cd_d0),
      .d1(cd_d1),
      .d2(cd_d2),
      .d3(cd_d3)
  );

  // =====================================================
  // STOPWATCH
  // =====================================================
  wire [3:0] sw_d0, sw_d1, sw_d2, sw_d3;
  wire sw_running;

  stopwatch u_stopwatch (
      .clk(clk),
      .tick_1hz(tick_1hz),
      .sw_enable(mode == 3'd5),
      .btn_start(r_p),
      .btn_reset(c_p),
      .running(sw_running),
      .d0(sw_d0),
      .d1(sw_d1),
      .d2(sw_d2),
      .d3(sw_d3)
  );

  // =====================================================
  // DISPLAY MUX
  // =====================================================
  wire [3:0] d0, d1, d2, d3;

  assign {d3,d2,d1,d0} =
      (mode == 3'd0) ?
        (show_seconds ? {4'hF,4'hF,sec_tens,sec_ones}
                      : {dc_d3,dc_d2,dc_d1,dc_d0}) :
      (mode == 3'd1) ? {dc_d3,dc_d2,dc_d1,dc_d0} :
      (mode == 3'd2) ? {al_d3,al_d2,al_d1,al_d0} :
      (mode == 3'd3) ? {al_onoff_d3,al_onoff_d2,al_onoff_d1,al_onoff_d0} :
      (mode == 3'd4) ? {cd_d3,cd_d2,cd_d1,cd_d0} :
      (mode == 3'd5) ? {sw_d3,sw_d2,sw_d1,sw_d0} :
                       16'd0;


  // =====================================================
  // SEVEN SEG
  // =====================================================
  sevseg u_seg (
      .clk(clk),
      .binary_input_0(d0),
      .binary_input_1(d1),
      .binary_input_2(d2),
      .binary_input_3(d3),
      .IO_SSEG_SEL(IO_SSEG_SEL),
      .IO_SSEG(IO_SSEG),
      .IO_SSEG_DP(IO_SSEG_DP)
  );
  
    // =====================================================
    // COLON BLINK (1Hz, only for Digital Clock)
    // =====================================================
    reg colon_state;
    assign IO_SSEG_DP = colon_state;
    
    always @(posedge clk) begin
      if (mode != 3'd0 || show_seconds)
        colon_state <= 1'b0;          // tắt ':' khi không ở HH:MM
      else if (tick_1hz)
        colon_state <= ~colon_state;  // nháy theo giây
    end
      
  
  
    // =====================================================
    // LED STATUS
    // =====================================================
    
    // Mode indicator LD0-LD5
    wire [15:0] led_mode;
    assign led_mode = (mode <= 3'd5) ? (16'b1 << mode) : 16'b0;
    
    // Alarm enable LD6
    wire [15:0] led_alarm_status;
    assign led_alarm_status = alarm_enable ? (16'b1 << 6) : 16'b0;
    
    // Alert LD10-LD15 nhấp nháy
    wire [15:0] led_alert;
    assign led_alert =
    // Alarm: chỉ nháy ở mode 0 (Digital Clock)
    ((mode == 3'd0) && alarm_match && blink) ||

    // Countdown finished: chỉ nháy ở mode 4 (Countdown)
    ((mode == 3'd4) && cd_finished && blink)
    ? (16'b111111 << 10)
    : 16'b0;

    
    // LD7-LD9 OFF (giữ 0)
    wire [15:0] led_reserved = 16'b0;
    
    // Combine tất cả LED
    assign LD = led_mode | led_alarm_status | led_alert | led_reserved;
    

endmodule
