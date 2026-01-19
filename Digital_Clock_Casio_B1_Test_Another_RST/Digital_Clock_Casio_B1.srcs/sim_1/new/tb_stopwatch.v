`timescale 1ns/1ps

module stopwatch_tb;

  // =========================
  // SIGNALS
  // =========================
  reg clk;
  reg tick_1hz;

  reg sw_enable;
  reg btn_start;
  reg btn_reset;

  wire running;
  wire [3:0] d0, d1, d2, d3;

  // =========================
  // DUT
  // =========================
  stopwatch dut (
    .clk(clk),
    .tick_1hz(tick_1hz),
    .sw_enable(sw_enable),
    .btn_start(btn_start),
    .btn_reset(btn_reset),
    .running(running),
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3)
  );

  // =========================
  // CLOCK 100 MHz (NEVER STOP)
  // =========================
  initial clk = 0;
  always #5 clk = ~clk;

  // =========================
  // TICK 1Hz (FAKE FAST)
  // 100ns = 1 second logic
  // =========================
  initial tick_1hz = 0;
  always begin
    #90;
    tick_1hz = 1;
    #10;
    tick_1hz = 0;
  end

  // =========================
  // TASKS
  // =========================
  task press_start;
    begin
      @(posedge clk);
      btn_start = 1;
      @(posedge clk);
      btn_start = 0;
    end
  endtask

  task press_reset;
    begin
      @(posedge clk);
      btn_reset = 1;
      @(posedge clk);
      btn_reset = 0;
    end
  endtask

  // =========================
  // TEST SEQUENCE
  // =========================
  initial begin
    // INIT
    sw_enable = 0;
    btn_start = 0;
    btn_reset = 0;

    // -------------------------
    // 1. POWER UP
    // -------------------------
    #50;

    // -------------------------
    // 2. ENABLE STOPWATCH
    // -------------------------
    sw_enable = 1;
    $display("STOPWATCH ENABLED");

    // -------------------------
    // 3. START
    // -------------------------
    press_start();
    $display("START");

    // -------------------------
    // 4. RUN 5 SECONDS
    // -------------------------
    repeat (5) @(posedge tick_1hz);

    // -------------------------
    // 5. STOP
    // -------------------------
    press_start();
    $display("STOP");

    // -------------------------
    // 6. RESET (WHEN PAUSE)
    // -------------------------
    press_reset();
    $display("RESET");

    // -------------------------
    // 7. START AGAIN
    // -------------------------
    press_start();
    $display("START AGAIN");

    // -------------------------
    // 8. RUN 3 SECONDS
    // -------------------------
    repeat (3) @(posedge tick_1hz);

    // -------------------------
    // END
    // -------------------------
    $display("END SIMULATION");
    #100;
    $stop;
  end

endmodule
