`timescale 1ns/1ps

module tb_uart_tx;

  // =====================================================
  // Simulation parameters (match real design)
  // =====================================================
  localparam integer CLK_HZ = 100_000_000;
  localparam integer BAUD   = 115200;
  localparam integer CLKS_PER_BIT = (CLK_HZ + (BAUD/2)) / BAUD;
  localparam integer CLK_PERIOD_NS = 10;

  reg clk = 0;
  reg rst = 1;

  reg        tx_start = 0;
  reg [7:0]  tx_data  = 8'h00;
  wire       tx_busy;
  wire       tx;

  integer errors = 0;

  // =====================================================
  // DUT
  // =====================================================
  uart_tx #(
    .CLK_HZ(CLK_HZ),
    .BAUD  (BAUD)
  ) dut (
    .clk      (clk),
    .rst      (rst),
    .tx_start (tx_start),
    .tx_data  (tx_data),
    .tx_busy  (tx_busy),
    .tx       (tx)
  );

  // =====================================================
  // Clock 100 MHz
  // =====================================================
  always #(CLK_PERIOD_NS/2) clk = ~clk;

  // =====================================================
  // Send 1 byte request (pulse tx_start for 1 clock)
  // =====================================================
  task send_byte;
    input [7:0] b;
    begin
      @(posedge clk);
      tx_data  <= b;
      tx_start <= 1'b1;

      @(posedge clk);
      tx_start <= 1'b0;
    end
  endtask

  // =====================================================
  // Capture 1 UART byte from tx line
  // =====================================================
  task capture_tx_byte;
    output [7:0] b;
    integer i;
    integer BIT_TIME_NS;
    begin
      BIT_TIME_NS = CLKS_PER_BIT * CLK_PERIOD_NS;
      b = 8'h00;

      // wait for start bit (falling edge)
      @(negedge tx);

      // move to middle of start bit
      #(BIT_TIME_NS/2);
      if (tx !== 1'b0) begin
        $display("[FAIL] Start bit not low at t=%0t", $time);
        errors = errors + 1;
      end

      // move to middle of first data bit
      #(BIT_TIME_NS);

      // sample 8 data bits (LSB first)
      for (i = 0; i < 8; i = i + 1) begin
        b[i] = tx;
        #(BIT_TIME_NS);
      end

      // check stop bit
      if (tx !== 1'b1) begin
        $display("[FAIL] Stop bit not high at t=%0t", $time);
        errors = errors + 1;
      end

      // small gap
      #(BIT_TIME_NS);
    end
  endtask

  // =====================================================
  // Expect TX byte
  // =====================================================
  task expect_tx_byte;
    input [7:0] exp;
    reg [7:0] got;
    begin
      capture_tx_byte(got);

      if (got !== exp) begin
        $display("[FAIL] Expected TX 0x%02h, got 0x%02h at t=%0t",
                 exp, got, $time);
        errors = errors + 1;
      end else begin
        $display("[PASS] TX sent 0x%02h ('%c') at t=%0t",
                 got, got, $time);
      end
    end
  endtask

  // =====================================================
  // Test sequence
  // =====================================================
  initial begin
    $display("=== tb_uart_tx (send 'G') start ===");
    $display("CLK_HZ=%0d BAUD=%0d CLKS_PER_BIT=%0d",
              CLK_HZ, BAUD, CLKS_PER_BIT);

    // reset
    rst = 1'b1;
    repeat (20) @(posedge clk);
    rst = 1'b0;
    repeat (20) @(posedge clk);

    // Send 'G' = 0x47
    fork
      begin
        send_byte(8'h47);
      end
      begin
        expect_tx_byte(8'h47);
      end
    join

    if (errors == 0)
      $display("=== tb_uart_tx PASS ===");
    else
      $display("=== tb_uart_tx FAIL: %0d errors ===", errors);

    $finish;
  end

endmodule
