`timescale 1ns/1ps

module tb_ModeFSM;

  // =============================
  // SIGNAL DECLARATION
  // =============================
  reg clk;
  reg btn_left_pulse;
  reg btn_right_pulse;
  reg btn_center_pulse;

  wire [2:0] mode;
  wire       set_sel;

  // =============================
  // DUT INSTANTIATION
  // =============================
  ModeFSM dut (
    .clk(clk),
    .btn_left_pulse(btn_left_pulse),
    .btn_right_pulse(btn_right_pulse),
    .btn_center_pulse(btn_center_pulse),
    .mode(mode),
    .set_sel(set_sel)
  );

  // =============================
  // CLOCK GENERATION
  // =============================
  initial clk = 0;
  always #5 clk = ~clk;   // 10ns period

  // =============================
  // TASK: BTNL PULSE
  // =============================
  task press_left;
    begin
      btn_left_pulse = 1;
      #10;
      btn_left_pulse = 0;
    end
  endtask

  // =============================
  // TEST SEQUENCE
  // =============================
  initial begin
    // init inputs
    btn_left_pulse   = 0;
    btn_right_pulse  = 0;
    btn_center_pulse = 0;

    // =============================
    // 1. Khởi động
    // =============================
    #20;
    $display("T=%0t | START | mode=%0d", $time, mode);

    // =============================
    // 2. Mỗi 2s chuyển mode 1 lần
    // =============================
    repeat (6) begin
      #200;            // 2s (giả lập)
      press_left();
      #20;
      $display("T=%0t | BTNL | mode=%0d", $time, mode);
    end

    // =============================
    // 3. Sau 2s, từ mode 5 về mode 0
    // =============================
    #200;
    press_left();
    #20;
    $display("T=%0t | WRAP | mode=%0d", $time, mode);

    // =============================
    // END SIM
    // =============================
    #100;
    $finish;
  end

endmodule
