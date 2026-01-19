`timescale 1ns/1ps

module tb_time_uart_parser;

  // -----------------------------
  // Clock / Reset
  // -----------------------------
  localparam integer CLK_PERIOD_NS = 10; // 100MHz
  localparam integer TIME_TIMEOUT_CYC = 5000; // timeout chờ time_valid_pulse (50us)
  localparam integer BTN_TIMEOUT_CYC  = 2000; // timeout chờ btn pulse (20us)

  reg clk = 1'b0;
  reg rst = 1'b1;

  // DUT input
  reg  [7:0] rx_byte  = 8'h00;
  reg        rx_valid = 1'b0;

  // DUT output
  wire [5:0] hh;
  wire [5:0] mm;
  wire [5:0] ss;

  wire time_valid_pulse;
  wire btn_left_pulse;
  wire btn_right_pulse;
  wire btn_up_pulse;
  wire btn_down_pulse;
  wire btn_center_pulse;

  integer errors = 0;

  // -----------------------------
  // DUT
  // -----------------------------
  time_uart_parser dut (
    .clk(clk),
    .rst(rst),
    .rx_byte(rx_byte),
    .rx_valid(rx_valid),
    .hh(hh),
    .mm(mm),
    .ss(ss),
    .time_valid_pulse(time_valid_pulse),
    .btn_left_pulse(btn_left_pulse),
    .btn_right_pulse(btn_right_pulse),
    .btn_up_pulse(btn_up_pulse),
    .btn_down_pulse(btn_down_pulse),
    .btn_center_pulse(btn_center_pulse)
  );

  // clock
  always #(CLK_PERIOD_NS/2) clk = ~clk;

  // -----------------------------
  // Helpers / Tasks
  // -----------------------------

  task wait_clks;
    input integer n;
    integer i;
    begin
      for (i = 0; i < n; i = i + 1) @(posedge clk);
    end
  endtask

  // pulse rx_valid for 1 clk with rx_byte = b
  task push_byte;
    input [7:0] b;
    begin
      @(posedge clk);
      rx_byte  <= b;
      rx_valid <= 1'b1;
      @(posedge clk);
      rx_valid <= 1'b0;
      rx_byte  <= 8'h00;
    end
  endtask

  // send 2 decimal digits (00..99) as ASCII
  task push_2digits;
    input integer val; // 0..99
    integer tens;
    integer ones;
    begin
      tens = (val / 10);
      ones = (val % 10);
      push_byte(8'h30 + tens[7:0]);
      push_byte(8'h30 + ones[7:0]);
    end
  endtask

  // send time packet FULL only: 'T' HH MM SS '\n'
  task send_time_full;
    input integer H;
    input integer M;
    input integer S;
    begin
      push_byte(8'h54); // 'T'
      push_2digits(H);
      push_2digits(M);
      push_2digits(S);
      push_byte(8'h0A); // '\n'
    end
  endtask

  // send button packet: 'B' code '\n'
  task send_button;
    input [7:0] code; // "L","R","U","D","C"
    begin
      push_byte(8'h42); // 'B'
      push_byte(code);
      push_byte(8'h0A);
    end
  endtask

  // wait time_valid_pulse with timeout, then check hh/mm/ss
  task expect_time_full;
    input [5:0] ehh;
    input [5:0] emm;
    input [5:0] ess;
    integer i;
    reg got;
    begin
      got = 1'b0;

      for (i = 0; i < TIME_TIMEOUT_CYC; i = i + 1) begin
        @(posedge clk);
        if (time_valid_pulse === 1'b1) begin
          got = 1'b1;
          i = TIME_TIMEOUT_CYC; // break loop
        end
      end

      if (!got) begin
        $display("[FAIL] time_valid_pulse not seen (timeout). t=%0t", $time);
        errors = errors + 1;
      end else begin
        if (hh !== ehh || mm !== emm || ss !== ess) begin
          $display("[FAIL] Time exp %0d:%0d:%0d got %0d:%0d:%0d t=%0t",
                   ehh, emm, ess, hh, mm, ss, $time);
          errors = errors + 1;
        end else begin
          $display("[PASS] Time %0d:%0d:%0d t=%0t", hh, mm, ss, $time);
        end

        // should be 1-cycle pulse
        @(posedge clk);
        if (time_valid_pulse !== 1'b0) begin
          $display("[WARN] time_valid_pulse not low after 1 cycle t=%0t", $time);
        end
      end
    end
  endtask

  // wait for specific button pulse with timeout
  task expect_button;
    input [7:0] code; // "L","R","U","D","C"
    integer i;
    reg got;
    begin
      got = 1'b0;

      for (i = 0; i < BTN_TIMEOUT_CYC; i = i + 1) begin
        @(posedge clk);

        if ((code == 8'h4C && btn_left_pulse)   || // 'L'
            (code == 8'h52 && btn_right_pulse)  || // 'R'
            (code == 8'h55 && btn_up_pulse)     || // 'U'
            (code == 8'h44 && btn_down_pulse)   || // 'D'
            (code == 8'h43 && btn_center_pulse) ) begin // 'C'
          got = 1'b1;
          i = BTN_TIMEOUT_CYC; // break loop
        end
      end

      if (!got) begin
        $display("[FAIL] Button pulse %0s not seen (timeout). t=%0t", code, $time);
        errors = errors + 1;
      end else begin
        $display("[PASS] Button %0s pulse seen t=%0t", code, $time);
      end
    end
  endtask

  // ensure NO time_valid_pulse within N cycles
  task expect_no_time_pulse;
    input integer cycles;
    integer i;
    begin
      for (i = 0; i < cycles; i = i + 1) begin
        @(posedge clk);
        if (time_valid_pulse === 1'b1) begin
          $display("[FAIL] Unexpected time_valid_pulse at t=%0t", $time);
          errors = errors + 1;
        end
      end
      $display("[PASS] No unexpected time_valid_pulse in %0d cycles", cycles);
    end
  endtask

  // -----------------------------
  // Test sequence
  // -----------------------------
  initial begin
    $display("=== tb_time_uart_parser start ===");

    // reset
    rst = 1'b1;
    wait_clks(20);
    rst = 1'b0;
    wait_clks(10);

    // 1) Full time: T235959\n
    fork
      begin
        send_time_full(23, 59, 59);
      end
      begin
        expect_time_full(6'd23, 6'd59, 6'd59);
      end
    join

    // 2) Button: BL\n
    fork
      begin
        send_button(8'h4C); // 'L'
      end
      begin
        expect_button(8'h4C); // 'L'
      end
    join

    // 3) Invalid time: T299999\n -> should NOT pulse
    send_time_full(29, 99, 99);
    expect_no_time_pulse(400);

    if (errors == 0)
      $display("=== tb_time_uart_parser PASS ===");
    else
      $display("=== tb_time_uart_parser FAIL: %0d errors ===", errors);

    $finish;
  end

endmodule