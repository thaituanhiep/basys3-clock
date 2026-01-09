`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2026 10:46:37 AM
// Design Name: 
// Module Name: tb_uart_rx
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

module tb_uart_rx;

  // ---- SIM params ----
  localparam integer CLK_HZ = 100_000_000;
  localparam integer BAUD   = 1_000_000; // faster sim (CLKS_PER_BIT=100)
  localparam integer CLKS_PER_BIT = CLK_HZ / BAUD;
  localparam integer CLK_PERIOD_NS = 10; // 100MHz
  localparam integer BIT_TIME_NS = CLKS_PER_BIT * CLK_PERIOD_NS;

  reg  clk = 0;
  reg  rst = 1;
  reg  rx  = 1;   // idle high

  wire [7:0] data;
  wire valid;

  integer errors = 0;

  uart_rx #(
    .CLK_HZ(CLK_HZ),
    .BAUD(BAUD)
  ) dut (
    .clk(clk),
    .rst(rst),
    .rx(rx),
    .data(data),
    .valid(valid)
  );

  // clock
  always #(CLK_PERIOD_NS/2) clk = ~clk;

  // ---- tasks ----
  task uart_line_send_byte;
    input [7:0] b;
    integer i;
    begin
      // start bit
      rx = 1'b0;
      #(BIT_TIME_NS);

      // data bits LSB first
      for (i=0; i<8; i=i+1) begin
        rx = b[i];
        #(BIT_TIME_NS);
      end

      // stop bit
      rx = 1'b1;
      #(BIT_TIME_NS);

      // idle gap (optional)
      #(BIT_TIME_NS);
    end
  endtask

  task expect_byte;
    input [7:0] exp;
    begin
      // wait for valid pulse
      while (valid !== 1'b1) @(posedge clk);

      if (data !== exp) begin
        $display("[FAIL] Expected 0x%02h, got 0x%02h at t=%0t", exp, data, $time);
        errors = errors + 1;
      end else begin
        $display("[PASS] RX got 0x%02h at t=%0t", data, $time);
      end

      // valid should drop next cycle (1-cycle pulse behavior)
      @(posedge clk);
      if (valid !== 1'b0) begin
        $display("[WARN] valid not low after 1 cycle at t=%0t", $time);
      end
    end
  endtask

  // ---- test sequence ----
  initial begin
    $display("=== tb_uart_rx start ===");

    // reset
    rx = 1'b1;
    rst = 1'b1;
    repeat (10) @(posedge clk);
    rst = 1'b0;
    repeat (10) @(posedge clk);

    // send a few bytes
    fork
      begin
        uart_line_send_byte(8'h55);
        uart_line_send_byte(8'hA3);
        uart_line_send_byte(8'h00);
        uart_line_send_byte(8'hFF);
      end
      begin
        expect_byte(8'h55);
        expect_byte(8'hA3);
        expect_byte(8'h00);
        expect_byte(8'hFF);
      end
    join

    if (errors == 0) $display("=== tb_uart_rx PASS ===");
    else             $display("=== tb_uart_rx FAIL: %0d errors ===", errors);

    $finish;
  end

endmodule

