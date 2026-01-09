`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2026 10:48:37 AM
// Design Name: 
// Module Name: tb_time_uart_parser
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

module tb_time_uart_parser;

  localparam integer CLK_PERIOD_NS = 10; // 100MHz

  reg clk = 1'b0;
  reg rst = 1'b1;

  reg  [7:0] rx_byte  = 8'h00;
  reg        rx_valid = 1'b0;

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

  // DUT
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

  // -------------------------
  // Helpers / Tasks
  // -------------------------

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

  // send time legacy packet: 'T' HH MM '\n'
  task send_time_legacy;
    input integer H;
    input integer M;
    begin
      push_byte("T");
      push_2digits(H);
      push_2digits(M);
      push_byte(8'h0A); // '\n'
    end
  endtask

  // send time packet with seconds: 'T' HH MM SS '\n'
  task send_time_full;
    input integer H;
    input integer M;
    input integer S;
    begin
      push_byte("T");
      push_2digits(H);
      push_2digits(M);
      push_2digits(S);
      push_byte(8'h0A); // '\n'
    end
  endtask

  // send button packet: 'B' code '\n' (code = "L","R","U","D","C")
  task send_button;
    input [7:0] code;
    begin
      push_byte("B");
      push_byte(code);
      push_byte(8'h0A);
    end
  endtask

  // wait time_valid_pulse and check hh/mm/ss
  task expect_time;
    input [5:0] ehh;
    input [5:0] emm;
    input [5:0] ess;
    integer guard;
    begin
      // wait up to some cycles to avoid infinite loop
      guard = 2000;
      while (guard > 0 && time_valid_pulse !== 1'b1) begin
        @(posedge clk);
        guard = guard - 1;
      end

      if (guard == 0) begin
        $display("[FAIL] time_valid_pulse not seen");
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

  // wait for a specific button pulse
  task expect_btn_pulse;
    input [7:0] code; // "L","R","U","D","C"
    integer timeout;
    reg found;
    begin
      timeout = 500;
      found = 1'b0;

      while (timeout > 0 && !found) begin
        @(posedge clk);
        if ((code=="L" && btn_left_pulse)   ||
            (code=="R" && btn_right_pulse)  ||
            (code=="U" && btn_up_pulse)     ||
            (code=="D" && btn_down_pulse)   ||
            (code=="C" && btn_center_pulse)) begin
          found = 1'b1;
        end
        timeout = timeout - 1;
      end

      if (!found) begin
        $display("[FAIL] Button %s pulse not seen", code);
        errors = errors + 1;
      end else begin
        $display("[PASS] Button %s pulse seen t=%0t", code, $time);
      end
    end
  endtask

  // ensure NO time_valid_pulse within N cycles
  task expect_no_time_pulse;
    input integer cycles;
    integer i;
    begin
      for (i=0; i<cycles; i=i+1) begin
        @(posedge clk);
        if (time_valid_pulse) begin
          $display("[FAIL] Unexpected time_valid_pulse at t=%0t", $time);
          errors = errors + 1;
        end
      end
      $display("[PASS] No unexpected time_valid_pulse in %0d cycles", cycles);
    end
  endtask

  // -------------------------
  // Test sequence
  // -------------------------
  initial begin
    $display("=== tb_time_uart_parser start ===");

    // reset
    rst = 1'b1;
    repeat (10) @(posedge clk);
    rst = 1'b0;
    repeat (5) @(posedge clk);

    // 1) Legacy: T HH MM \n  -> ss = 0
    fork
      begin
        send_time_legacy(12, 34);
      end
      begin
        expect_time(6'd12, 6'd34, 6'd0);
      end
    join

    // 2) Full: T HH MM SS \n
    fork
      begin
        send_time_full(23, 59, 59);
      end
      begin
        expect_time(6'd23, 6'd59, 6'd59);
      end
    join

    // 3) Button: B L \n
    fork
      begin
        send_button("L");
      end
      begin
        expect_btn_pulse("L");
      end
    join

    // 4) Invalid time: 29:99:99 -> should NOT pulse
    send_time_full(29, 99, 99);
    expect_no_time_pulse(400);

    if (errors == 0)
      $display("=== tb_time_uart_parser PASS ===");
    else
      $display("=== tb_time_uart_parser FAIL: %0d errors ===", errors);

    $finish;
  end

endmodule


