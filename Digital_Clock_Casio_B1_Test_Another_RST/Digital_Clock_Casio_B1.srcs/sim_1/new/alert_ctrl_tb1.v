`timescale 1ns/1ps

module alert_ctrl_tb;

  // =========================
  // SIGNALS
  // =========================
  reg clk;
  reg rst;

  reg tick_1hz;
  reg blink_1hz;
  reg blink_enable;

  reg alarm_match;
  reg cd_finished;

  reg btnu_pulse;
  reg btnd_pulse;

  wire buzzer_en;
  wire [15:0] led_alert;

  // =========================
  // DUT
  // =========================
  alert_ctrl dut (
    .clk(clk),
    .rst(rst),
    .tick_1hz(tick_1hz),
    .blink_1hz(blink_1hz),
    .alarm_match(alarm_match),
    .cd_finished(cd_finished),
    .btnu_pulse(btnu_pulse),
    .btnd_pulse(btnd_pulse),
    .buzzer_en(buzzer_en),
    .led_alert(led_alert)
  );

  // =========================
  // CLOCK 100 MHz (NEVER STOP)
  // =========================
  initial clk = 0;
  always #5 clk = ~clk;

  // =========================
  // TICK 1Hz (100ns = 1s giả)
  // =========================
  initial tick_1hz = 0;
  always begin
    #90;
    tick_1hz = 1;
    #10;
    tick_1hz = 0;
  end

  // =========================
  // BLINK 1Hz (GATED)
  // =========================
  initial begin
    blink_1hz     = 0;
    blink_enable  = 0;
    forever begin
      #100;
      if (blink_enable)
        blink_1hz = ~blink_1hz;
      else
        blink_1hz = 0;   // dừng hẳn, không toggle
    end
  end

  // =========================
  // TEST SEQUENCE
  // =========================
  initial begin
    // INIT
    rst = 1;
    alarm_match = 0;
    cd_finished = 0;
    btnu_pulse = 0;
    btnd_pulse = 0;

    // -------------------------
    // RESET
    // -------------------------
    #50;
    rst = 0;
    $display("RESET DONE");

    // -------------------------
    // ALARM MATCH @ 15:00:00
    // -------------------------
    #80;
    $display("ALARM MATCH ASSERTED");

    alarm_match = 1;
    blink_enable = 1;   // bật blink khi vào alert

    // đảm bảo FSM bắt được
    repeat (2) @(posedge tick_1hz);

    alarm_match = 0;
    $display("ALARM MATCH RELEASED");

    // -------------------------
    // ALERT RUNNING
    // -------------------------
    #300;

    // -------------------------
    // STOP ALERT (BTNU)
    // -------------------------
    @(posedge clk);
    btnu_pulse = 1;
    @(posedge clk);
    btnu_pulse = 0;

    blink_enable = 0;   //
    $display("STOP ALERT");

    // -------------------------
    // OBSERVE STOPPED STATE
    // -------------------------
    #200;
    $stop;
  end

endmodule
