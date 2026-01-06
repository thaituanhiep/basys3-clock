module stopwatch (
    input wire clk,
    input wire tick_1hz,

    input wire sw_enable,   // mode == STOPWATCH
    input wire btn_start,   // BTNC: start / stop
    input wire btn_reset,   // BTNR: reset (chỉ khi pause)

    output reg running,     // đang chạy

    output reg [3:0] d0,   // sec ones
    output reg [3:0] d1,   // sec tens
    output reg [3:0] d2,   // min ones
    output reg [3:0] d3    // min tens
);

  // ============================
  // REGISTERS
  // ============================
  reg [5:0] sec = 0;       // 0-59
  reg [5:0] min = 0;       // 0-60

  // ============================
  // CONTROL + COUNTING
  // ============================
  always @(posedge clk) begin
    if (!sw_enable) begin
      running <= 1'b0;
      sec     <= 0;
      min     <= 0;
    end else begin
      // Start / Stop bằng BTNC
      if (btn_start)
        running <= ~running;

      // Reset bằng BTNR **chỉ khi pause**
      if (btn_reset && !running) begin
        sec <= 0;
        min <= 0;
      end

      // Đếm thời gian
      if (tick_1hz && running) begin
        if (sec == 59) begin
          sec <= 0;
          if (min < 60) min <= min + 1;
        end else begin
          sec <= sec + 1;
        end

        // HARD LIMIT: 60:00
        if (min == 60) begin
          running <= 1'b0;
          sec     <= 0;
        end
      end
    end
  end

  // ============================
  // DISPLAY MM:SS
  // ============================
  always @(*) begin
    d0 = sec % 10;
    d1 = sec / 10;
    d2 = min % 10;
    d3 = min / 10;
  end

endmodule
