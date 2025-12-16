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

    // LEDs (Alert)
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
  debounce db_l (
      .clk(clk),
      .btn(IO_BTN_L),
      .btn_pulse(l_p)
  );
  debounce db_r (
      .clk(clk),
      .btn(IO_BTN_R),
      .btn_pulse(r_p)
  );
  debounce db_u (
      .clk(clk),
      .btn(IO_BTN_U),
      .btn_pulse(u_p)
  );
  debounce db_d (
      .clk(clk),
      .btn(IO_BTN_D),
      .btn_pulse(d_p)
  );
  debounce db_c (
      .clk(clk),
      .btn(IO_BTN_C),
      .btn_pulse(c_p)
  );

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
      .tick_1hz(tick_1hz),
      .enable(mode != 3'd0),
      .blink(blink)
  );

  // =====================================================
  // DIGITAL CLOCK (24H - HH:MM)
  // =====================================================
  wire [3:0] dc_d0, dc_d1, dc_d2, dc_d3;
  wire [4:0] dc_hour;  // giờ hiện tại
  wire [5:0] dc_min;  // phút hiện tại

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
      .digit3(dc_d3)
      // Giả sử module DigitalClock expose hour/min ra dc_hour/dc_min
  );

  // =====================================================
  // ALARM
  // =====================================================
  wire alarm_match;
  reg [4:0] alarm_hour_reg;
  reg [5:0] alarm_min_reg;
  wire alarm_enable;

  // Set alarm hour/min
  always @(posedge clk) begin
    if (mode == 3'd2) begin
      if (u_p) alarm_hour_reg <= (alarm_hour_reg == 23) ? 0 : alarm_hour_reg + 1;
      if (d_p) alarm_min_reg <= (alarm_min_reg == 59) ? 0 : alarm_min_reg + 1;
    end
  end

  // Map alarm to 7-seg
  wire [3:0] al_d0 = alarm_min_reg % 10;
  wire [3:0] al_d1 = alarm_min_reg / 10;
  wire [3:0] al_d2 = alarm_hour_reg % 10;
  wire [3:0] al_d3 = alarm_hour_reg / 10;

  alarm u_alarm (
      .clk(clk),
      .rst(1'b0),
      .tick_1hz(tick_1hz),
      .cur_hour(dc_hour),
      .cur_min(dc_min),
      .set_alarm(mode == 3'd2),
      .inc_hour(u_p),
      .inc_min(d_p),
      .alarm_enable(alarm_enable),
      .alarm_match(alarm_match)
  );

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
      .btn_reset_pulse(c_p),
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
  // ALERT LED LOGIC
  // =====================================================
  reg cd_alert;
  reg [4:0] alarm_alert_counter;

  always @(posedge clk) begin
    // Countdown alert latch
    if (cd_finished) cd_alert <= 1;
    else if (mode == 3'd4 && c_p) cd_alert <= 0;

    // Alarm alert counter (15s)
    if (alarm_match) alarm_alert_counter <= 15;  // 15 tick_1hz = 15s
    else if (alarm_alert_counter > 0 && tick_1hz) alarm_alert_counter <= alarm_alert_counter - 1;
  end

  wire alarm_alert = (alarm_alert_counter > 0);
  wire countdown_alert = cd_alert;
  wire led_alert = (alarm_alert | countdown_alert) & blink;
  assign LD = {16{led_alert}};

  // =====================================================
  // DISPLAY MUX
  // =====================================================
  wire [3:0] d0, d1, d2, d3;
  assign {d3,d2,d1,d0} =
        (mode == 3'd0 || mode == 3'd1) ? {dc_d3,dc_d2,dc_d1,dc_d0} :
        (mode == 3'd2 || mode == 3'd3) ? {al_d3,al_d2,al_d1,al_d0} :
        (mode == 3'd4)                ? {cd_d3,cd_d2,cd_d1,cd_d0} :
        (mode == 3'd5)                ? {sw_d3,sw_d2,sw_d1,sw_d0} :
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
      .IO_SSEG(IO_SSEG)
  );

endmodule
