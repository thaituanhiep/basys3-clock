`timescale 1ns / 1ps

module alert_ctrl_tb;

  // =============================
  // DUT signals
  // =============================
  reg clk;
  reg rst;

  reg tick_1hz;
  reg blink_1hz;

  reg alarm_match;
  reg cd_finished;

  reg btnu_pulse;
  reg btnd_pulse;

  wire buzzer_en;
  wire [15:0] led_alert;

  // =============================
  // Instantiate DUT
  // =============================
  alert_ctrl dut (
    .clk         (clk),
    .rst         (rst),
    .tick_1hz    (tick_1hz),
    .blink_1hz   (blink_1hz),
    .alarm_match (alarm_match),
    .cd_finished (cd_finished),
    .btnu_pulse  (btnu_pulse),
    .btnd_pulse  (btnd_pulse),
    .buzzer_en   (buzzer_en),
    .led_alert   (led_alert)
  );

  // =============================
  // Clock 100 MHz
  // =============================
  always #5 clk = ~clk;

  // =============================
  // Helper tasks
  // =============================
  task tick1s;
    begin
      tick_1hz = 1;
      #10;
      tick_1hz = 0;
      #20;
    end
  endtask

  task blink_toggle;
    begin
      blink_1hz = ~blink_1hz;
      #10;
    end
  endtask

  task pulse_alarm;
    begin
      alarm_match = 1;
      #10;
      alarm_match = 0;
    end
  endtask

  task pulse_cd_done;
    begin
      cd_finished = 1;
      #10;
      cd_finished = 0;
    end
  endtask

  task pulse_stop;
    begin
      btnu_pulse = 1;
      #10;
      btnu_pulse = 0;
    end
  endtask

  // =============================
  // Test sequence
  // =============================
  integer i;

  initial begin
    // init
    clk = 0;
    rst = 1;

    tick_1hz = 0;
    blink_1hz = 0;

    alarm_match = 0;
    cd_finished = 0;

    btnu_pulse = 0;
    btnd_pulse = 0;

    #30;
    rst = 0;

    // =============================
    // 1. Idle after reset
    // =============================
    $display("RESET DONE");

    // =============================
    // 2. Alarm trigger
    // =============================
    pulse_alarm();   // rising edge
    #20;

    for (i = 0; i < 5; i = i + 1) begin
      blink_toggle();
      tick1s();
      $display("ALARM %0d  buzzer=%b led=%h", i, buzzer_en, led_alert);
    end

    // =============================
    // 3. Stop alarm by button
    // =============================
    pulse_stop();
    #20;
    $display("STOP ALARM buzzer=%b", buzzer_en);

    // =============================
    // 4. Countdown finished
    // =============================
    pulse_cd_done();
    #20;

    for (i = 0; i < 3; i = i + 1) begin
      blink_toggle();
      tick1s();
      $display("CD %0d buzzer=%b led=%h", i, buzzer_en, led_alert);
    end

    // =============================
    // 5. Alarm overrides CD
    // =============================
    pulse_cd_done();
    #20;
    pulse_alarm();   // alarm during CD
    #20;

    blink_toggle();
    tick1s();
    $display("OVERRIDE buzzer=%b led=%h", buzzer_en, led_alert);

    // =============================
    // 6. Auto timeout ALARM (15s)
    // =============================
    pulse_alarm();
    #20;

    for (i = 0; i < 16; i = i + 1)
      tick1s();

    $display("AUTO EXIT buzzer=%b", buzzer_en);

    // =============================
    // Finish
    // =============================
    $display("ALERT_CTRL TB DONE");
    #50;
    $stop;
  end

endmodule
