`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2026 10:47:25 AM
// Design Name: 
// Module Name: tb_uart_tx
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns/1ps

module tb_uart_tx;

  localparam integer CLK_HZ = 100_000_000;
  localparam integer BAUD   = 1_000_000; // faster sim
  localparam integer CLKS_PER_BIT = (CLK_HZ + (BAUD/2)) / BAUD; // match uart_tx
  localparam integer CLK_PERIOD_NS = 10;
  localparam integer BIT_TIME_NS = CLKS_PER_BIT * CLK_PERIOD_NS;

  reg clk = 0;
  reg rst = 1;

  reg        tx_start = 0;
  reg [7:0]  tx_data  = 8'h00;
  wire       tx_busy;
  wire       tx;

  integer errors = 0;

  uart_tx #(
    .CLK_HZ(CLK_HZ),
    .BAUD(BAUD)
  ) dut (
    .clk(clk),
    .rst(rst),
    .tx_start(tx_start),
    .tx_data(tx_data),
    .tx_busy(tx_busy),
    .tx(tx)
  );

  always #(CLK_PERIOD_NS/2) clk = ~clk;

  // Send a byte request (pulse tx_start 1 clock)
  task tx_send;
    input [7:0] b;
    begin
      @(posedge clk);
      tx_data  <= b;
      tx_start <= 1'b1;
      @(posedge clk);
      tx_start <= 1'b0;
    end
  endtask

  // Decode UART on tx line (async time-based sampling)
  task capture_tx_byte;
    output [7:0] b;
    integer i;
    begin
      b = 8'h00;

      // wait start bit (falling edge to 0)
      @(negedge tx);

      // move to middle of start bit
      #(BIT_TIME_NS/2);
      if (tx !== 1'b0) begin
        $display("[FAIL] Start bit not low at mid-start t=%0t", $time);
        errors = errors + 1;
      end

      // move to middle of first data bit (1.5 bit from edge)
      #(BIT_TIME_NS);

      for (i=0; i<8; i=i+1) begin
        b[i] = tx;
        #(BIT_TIME_NS);
      end

      // now should be stop bit = 1
      if (tx !== 1'b1) begin
        $display("[FAIL] Stop bit not high t=%0t", $time);
        errors = errors + 1;
      end

      // small gap
      #(BIT_TIME_NS);
    end
  endtask

  task expect_tx_byte;
    input [7:0] exp;
    reg [7:0] got;
    begin
      capture_tx_byte(got);
      if (got !== exp) begin
        $display("[FAIL] Expected TX 0x%02h, got 0x%02h at t=%0t", exp, got, $time);
        errors = errors + 1;
      end else begin
        $display("[PASS] TX sent 0x%02h at t=%0t", got, $time);
      end
    end
  endtask

  initial begin
    $display("=== tb_uart_tx start ===");

    rst = 1'b1;
    repeat (10) @(posedge clk);
    rst = 1'b0;
    repeat (10) @(posedge clk);

    // drive sends in parallel with capture
    fork
      begin
        tx_send(8'h55);
        // wait until not busy before next send (optional)
        wait (tx_busy == 1'b0);
        tx_send(8'hA3);
        wait (tx_busy == 1'b0);
        tx_send(8'h0A);
      end
      begin
        expect_tx_byte(8'h55);
        expect_tx_byte(8'hA3);
        expect_tx_byte(8'h0A);
      end
    join

    if (errors == 0) $display("=== tb_uart_tx PASS ===");
    else             $display("=== tb_uart_tx FAIL: %0d errors ===", errors);

    $finish;
  end

endmodule

