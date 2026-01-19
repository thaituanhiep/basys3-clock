`timescale 1ns/1ps

module DigitalClock_setClock_tb;

  // =========================
  // SIGNAL DECLARATION
  // =========================
  reg clk;
  reg tick_1hz;

  reg set_min_mode;
  reg set_hour_mode;

  reg btn_up_pulse;
  reg btn_down_pulse;

  reg blink;

  reg [5:0] ext_hh;
  reg [5:0] ext_mm;
  reg [5:0] ext_ss;
  reg       ext_set_pulse;

  wire [3:0] digit0, digit1, digit2, digit3;
  wire [4:0] hour;
  wire [5:0] min;

  wire [4:0] cur_hour;
  wire [5:0] cur_min;
  wire [5:0] cur_sec;

  // =========================
  // DUT
  // =========================
  DigitalClock dut (
    .clk(clk),
    .tick_1hz(tick_1hz),

    .set_min_mode(set_min_mode),
    .set_hour_mode(set_hour_mode),

    .btn_up_pulse(btn_up_pulse),
    .btn_down_pulse(btn_down_pulse),

    .blink(blink),

    .ext_hh(ext_hh),
    .ext_mm(ext_mm),
    .ext_ss(ext_ss),
    .ext_set_pulse(ext_set_pulse),

    .digit0(digit0),
    .digit1(digit1),
    .digit2(digit2),
    .digit3(digit3),

    .hour(hour),
    .min(min),

    .cur_hour(cur_hour),
    .cur_min(cur_min),
    .cur_sec(cur_sec)
  );

  // =========================
  // CLOCK 100MHz (10ns)
  // =========================
  always #5 clk = ~clk;

  // =========================
  // 1Hz TICK (giả lập)
  // =========================
  task tick_1s;
    begin
      tick_1hz = 1;
      #10;
      tick_1hz = 0;
    end
  endtask

  // =========================
  // BUTTON PULSE
  // =========================
  task pulse_up;
    begin
      btn_up_pulse = 1;
      #10;
      btn_up_pulse = 0;
    end
  endtask

  // =========================
  // TEST SEQUENCE
  // =========================
  initial begin
    // INIT
    clk = 0;
    tick_1hz = 0;

    set_min_mode = 0;
    set_hour_mode = 0;

    btn_up_pulse = 0;
    btn_down_pulse = 0;

    blink = 0;

    ext_hh = 0;
    ext_mm = 0;
    ext_ss = 0;
    ext_set_pulse = 0;

    // =========================
    // 1. START: MODE 0 - 12:34:00
    // =========================
    #50;
    $display("START TIME = %02d:%02d:%02d",
              cur_hour, cur_min, cur_sec);

    // =========================
    // 2. FSM → MODE 1 (SET CLOCK)
    // =========================

    // ---- SET HOUR TO 15 ----
    set_hour_mode = 1;
    repeat (3) pulse_up();   // 12 → 15
    set_hour_mode = 0;

    #50;
    $display("AFTER SET HOUR = %02d:%02d:%02d",
              cur_hour, cur_min, cur_sec);

    // ---- SET MIN TO 30 ----
    set_min_mode = 1;
    repeat (56) pulse_up();  // 34 → 30 (wrap)
    set_min_mode = 0;

    #50;
    $display("AFTER SET MIN = %02d:%02d:%02d",
              cur_hour, cur_min, cur_sec);

    // =========================
    // 3. SAVE (BTNC)
    // =========================
    ext_hh = cur_hour;
    ext_mm = cur_min;
    ext_ss = 0;

    ext_set_pulse = 1;
    #10;
    ext_set_pulse = 0;

    #50;
    $display("AFTER SAVE = %02d:%02d:%02d",
              cur_hour, cur_min, cur_sec);

    // =========================
    // 4. BACK TO MODE 0 - RUN
    // =========================
    tick_1s;
    tick_1s;

    $display("RUN MODE = %02d:%02d:%02d",
              cur_hour, cur_min, cur_sec);

    // =========================
    // DONE
    // =========================
    #100;
    $finish;
  end

endmodule
