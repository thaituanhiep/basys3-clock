module countdown (
    input wire clk,
    input wire tick_1hz,

    input wire cd_enable,        // mode 4
    input wire btn_up_pulse,
    input wire btn_down_pulse,
    input wire btn_right_pulse,  // BTNR
    input wire btn_center_pulse, // BTNC

    input wire blink,

    output reg running,
    output reg finished,

    output reg [3:0] d0,
    output reg [3:0] d1,
    output reg [3:0] d2,
    output reg [3:0] d3
);

  reg [5:0] sec, min;
  reg [5:0] set_sec, set_min;
  reg set_sel;      // 0 = SEC, 1 = MIN
  reg set_valid;    // đã lưu giá trị set

  // =============================
  // MAIN CONTROL
  // =============================
  always @(posedge clk) begin
    if (!cd_enable) begin
      running   <= 1'b0;
      finished  <= 1'b0;
      set_sel   <= 1'b0;
      set_valid <= 1'b0;
      
      // DEFAULT = 00:05
      sec       <= 6'd5;
      min       <= 6'd0;
    end else begin

      // =============================
      // SET MODE (chỉ khi chưa chạy & chưa finished)
      // =============================
      if (!running && !finished && !set_valid) begin
        // Cursor
        if (btn_right_pulse)
          set_sel <= ~set_sel;

        // Adjust
        if (set_sel == 1'b0) begin
          // SEC
          if (btn_up_pulse)
            sec <= (sec == 59) ? 0  : sec + 1;
          if (btn_down_pulse)
            sec <= (sec == 0)  ? 59 : sec - 1;
        end else begin
          // MIN
          if (btn_up_pulse)
            min <= (min == 59) ? 0  : min + 1;
          if (btn_down_pulse)
            min <= (min == 0)  ? 59 : min - 1;
        end
        

        // Save
        if (btn_center_pulse) begin
          set_sec   <= sec;
          set_min   <= min;
          set_valid <= 1'b1;
        end
      end

      // =============================
      // BTNR: START / PAUSE / RESUME
      // =============================
      if (btn_right_pulse && set_valid && !finished) begin
        running <= ~running;
      end

      // =============================
      // BTNC: RESET (chỉ khi PAUSE)
      // =============================
      if (btn_center_pulse && !running && set_valid && !finished) begin
        sec      <= set_sec;
        min      <= set_min;
      end

      // =============================
      // COUNTDOWN
      // =============================
      if (running && tick_1hz) begin
        if (sec == 0) begin
          if (min == 0) begin
            running  <= 1'b0;
            finished <= 1'b1;
          end else begin
            min <= min - 1;
            sec <= 59;
          end
        end else begin
          sec <= sec - 1;
        end
      end
    end
  end

  // =============================
  // DISPLAY + BLINK
  // =============================
  always @(*) begin
    d0 = sec % 10;
    d1 = sec / 10;
    d2 = min % 10;
    d3 = min / 10;

    if (!running && !finished && !set_valid && blink) begin
      if (set_sel == 1'b0) begin
        d0 = 4'hF;
        d1 = 4'hF;
      end else begin
        d2 = 4'hF;
        d3 = 4'hF;
      end
    end
  end

endmodule
