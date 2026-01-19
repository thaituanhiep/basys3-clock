`timescale 1ns/1ps

module DigitalClock_tb;

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

  reg  [5:0] ext_hh;
  reg  [5:0] ext_mm;
  reg  [5:0] ext_ss;
  reg        ext_set_pulse;

  wire [3:0] digit0;
  wire [3:0] digit1;
  wire [3:0] digit2;
  wire [3:0] digit3;

  wire [4:0] hour;
  wire [5:0] min;

  wire [4:0] cur_hour;
  wire [5:0] cur_min;
  wire [5:0] cur_sec;

  // =========================
  // DUT INSTANTIATION
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
  // CLOCK: 100 MHz (GIẢ)
  // =========================
  initial clk = 0;
  always #5 clk = ~clk;

  // =========================
  // TASK: 1 GIÂY LOGIC
  // =========================
  task tick;
  begin
    @(posedge clk);
    tick_1hz = 1;
    @(posedge clk);
    tick_1hz = 0;
  end
  endtask

  // =========================
  // TEST SEQUENCE
  // =========================
  initial begin
    // -------- INIT --------
    tick_1hz = 0;
    set_min_mode  = 0;
    set_hour_mode = 0;
    btn_up_pulse  = 0;
    btn_down_pulse= 0;
    blink = 0;

    ext_set_pulse = 0;
    ext_hh = 0;
    ext_mm = 0;
    ext_ss = 0;

    // =========================
    // SET TIME = 23:59:58
    // =========================
    ext_hh = 23;
    ext_mm = 59;
    ext_ss = 58;

    @(posedge clk);
    ext_set_pulse = 1;
    @(posedge clk);
    ext_set_pulse = 0;

    // ⚠ skip_tick sẽ bỏ tick đầu tiên
    // → chạy 1 tick bỏ + 5 tick thật = 6 tick

    // =========================
    // RUN 6 SECONDS
    // =========================
    repeat (6) begin
      tick();
    end

    // =========================
    // EXPECTED RESULT
    // =========================
    // Timeline:
    // 23:59:58  (start)
    // 23:59:59
    // 00:00:00
    // 00:00:01
    // 00:00:02
    // 00:00:03
    //
    // Final:
    // cur_hour = 0
    // cur_min  = 0
    // cur_sec  = 3

    #100;
    $stop;
  end

endmodule
