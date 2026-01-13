`timescale 1ns/1ps

module tb_uart_rx;

  // ---- SIM params (match real board + ESP32) ----
  localparam integer CLK_HZ        = 100_000_000;
  localparam integer BAUD          = 115200;
  localparam integer CLKS_PER_BIT  = CLK_HZ / BAUD; // 868
  localparam integer CLK_PERIOD_NS = 10;            // 100MHz

  // timeout (clock cycles)
  localparam integer WAIT_VALID_TIMEOUT_CYC = 400_000; // 4ms @100MHz

  reg  clk = 1'b0;
  reg  rst = 1'b1;
  reg  rx  = 1'b1;  // idle high

  wire [7:0] data;
  wire       valid;

  integer errors = 0;

  // ---- DUT ----
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

  // 100MHz clock
  always #(CLK_PERIOD_NS/2) clk = ~clk;

  // -----------------------------
  // Helpers: wait clock cycles
  // -----------------------------
  task wait_clks;
    input integer n;
    integer i;
    begin
      for (i = 0; i < n; i = i + 1)
        @(posedge clk);
    end
  endtask

  task uart_wait_1bit;
    begin
      wait_clks(CLKS_PER_BIT);
    end
  endtask

  // -----------------------------
  // UART TX on rx line (LSB first)
  // -----------------------------
  task uart_line_send_byte;
    input [7:0] b;
    integer i;
    begin
      // idle >= 1 bit before start
      rx = 1'b1;
      uart_wait_1bit;

      // start bit
      rx = 1'b0;
      uart_wait_1bit;

      // data bits LSB first
      for (i = 0; i < 8; i = i + 1) begin
        rx = b[i];
        uart_wait_1bit;
      end

      // stop bit
      rx = 1'b1;
      uart_wait_1bit;

      // extra idle gap between bytes
      uart_wait_1bit;
    end
  endtask

  // Convert 0..99 to ASCII tens/ones
  function [7:0] ascii_tens;
    input [7:0] v;
    begin
      ascii_tens = "0" + (v / 10);
    end
  endfunction

  function [7:0] ascii_ones;
    input [7:0] v;
    begin
      ascii_ones = "0" + (v % 10);
    end
  endfunction

  // Send frame: "T%02u%02u%02u\n"
  task send_time_ascii;
    input [7:0] hh;
    input [7:0] mm;
    input [7:0] ss;
    begin
      uart_line_send_byte("T");
      uart_line_send_byte(ascii_tens(hh));
      uart_line_send_byte(ascii_ones(hh));
      uart_line_send_byte(ascii_tens(mm));
      uart_line_send_byte(ascii_ones(mm));
      uart_line_send_byte(ascii_tens(ss));
      uart_line_send_byte(ascii_ones(ss));
      uart_line_send_byte(8'h0A); // '\n'
    end
  endtask

  // -----------------------------
  // Expect one byte with timeout
  // (NO fork, NO disable fork)
  // -----------------------------
  task expect_byte;
    input [7:0] exp;
    reg got;
    integer k;
    begin
      got = 1'b0;

      // wait until valid==1, but stop after timeout cycles
      begin : WAIT_FOR_VALID
        for (k = 0; k < WAIT_VALID_TIMEOUT_CYC; k = k + 1) begin
          if (valid === 1'b1) begin
            got = 1'b1;
            disable WAIT_FOR_VALID;
          end
          @(posedge clk);
        end
      end

      if (!got) begin
        $display("[FAIL] Timeout waiting for valid (expected 0x%02h) at t=%0t", exp, $time);
        errors = errors + 1;
      end else begin
        if (data !== exp) begin
          $display("[FAIL] Expected 0x%02h, got 0x%02h at t=%0t", exp, data, $time);
          errors = errors + 1;
        end else begin
          if (data >= 8'h20 && data <= 8'h7E)
            $display("[PASS] RX got 0x%02h ('%c') at t=%0t", data, data, $time);
          else
            $display("[PASS] RX got 0x%02h at t=%0t", data, $time);
        end

        // valid should drop next cycle (your uart_rx pulses 1 cycle)
        @(posedge clk);
        if (valid !== 1'b0)
          $display("[WARN] valid not low after 1 cycle at t=%0t", $time);
      end
    end
  endtask

  task expect_time_ascii;
    input [7:0] hh;
    input [7:0] mm;
    input [7:0] ss;
    begin
      expect_byte("T");
      expect_byte(ascii_tens(hh));
      expect_byte(ascii_ones(hh));
      expect_byte(ascii_tens(mm));
      expect_byte(ascii_ones(mm));
      expect_byte(ascii_tens(ss));
      expect_byte(ascii_ones(ss));
      expect_byte(8'h0A);
    end
  endtask

  // -----------------------------
  // Test sequence
  // -----------------------------
  initial begin
    $display("=== tb_uart_rx start ===");
    $display("CLK_HZ=%0d BAUD=%0d CLKS_PER_BIT=%0d", CLK_HZ, BAUD, CLKS_PER_BIT);

    // reset
    rx  = 1'b1;
    rst = 1'b1;
    wait_clks(50);
    rst = 1'b0;
    wait_clks(50);

    // Frame 1: T093745\n
    fork
      begin
        send_time_ascii(8'd9, 8'd37, 8'd45);
      end
      begin
        expect_time_ascii(8'd9, 8'd37, 8'd45);
      end
    join

    // idle gap between frames
    wait_clks(CLKS_PER_BIT * 20);

    // Frame 2: T000005\n
    fork
      begin
        send_time_ascii(8'd0, 8'd0, 8'd5);
      end
      begin
        expect_time_ascii(8'd0, 8'd0, 8'd5);
      end
    join

    if (errors == 0) $display("=== tb_uart_rx PASS ===");
    else             $display("=== tb_uart_rx FAIL: %0d errors ===", errors);

    $finish;
  end

endmodule
