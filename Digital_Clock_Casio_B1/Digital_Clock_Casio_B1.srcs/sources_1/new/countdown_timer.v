module countdown (
    input wire clk,
    input wire tick_1hz,

    input wire cd_enable,         // mode == MODE_COUNTDOWN
    input wire btn_up_pulse,
    input wire btn_down_pulse,
    input wire btn_right_pulse,   // switch sec/min
    input wire btn_center_pulse,  // start / pause
    input wire btn_reset_pulse,   // reset về User Default khi Pause

    input wire blink,  // để hiển thị nhấp nháy khi set

    output reg running,  // countdown đang chạy
    output reg finished, // đã đếm về 00:00

    output reg [3:0] d0,  // sec ones
    output reg [3:0] d1,  // sec tens
    output reg [3:0] d2,  // min ones
    output reg [3:0] d3   // min tens
);

  // =============================
  // REGISTERS
  // =============================
  reg [5:0] sec = 0;  // giây hiện tại
  reg [5:0] min = 0;  // phút hiện tại
  reg [5:0] set_sec = 0;  // giây được user set trước khi chạy
  reg [5:0] set_min = 0;  // phút được user set trước khi chạy
  reg       set_sel = 0;  // 0 = set sec, 1 = set min
  reg       set_valid = 0;  // đã từng set giá trị chưa

  // =============================
  // CONTROL LOGIC
  // =============================
  always @(posedge clk) begin
    if (!cd_enable) begin
      // Khi rời Countdown mode: stop, restore giá trị set trước
      running  <= 0;
      finished <= 0;
      set_sel  <= 0;
      if (set_valid) begin
        sec <= set_sec;
        min <= set_min;
      end else begin
        sec <= 0;
        min <= 0;
      end
    end else begin
      // -------- cursor switch --------
      if (!running && btn_right_pulse) set_sel <= ~set_sel;

      // -------- setting --------
      if (!running && !finished) begin
        if (set_sel == 0) begin
          if (btn_up_pulse && sec < 59) sec <= sec + 1;
          if (btn_down_pulse && sec > 0) sec <= sec - 1;
        end else begin
          if (btn_up_pulse && min < 60) min <= min + 1;
          if (btn_down_pulse && min > 0) min <= min - 1;
        end
        // Lưu giá trị set để có thể restore khi rời mode hoặc reset
        set_sec   <= sec;
        set_min   <= min;
        set_valid <= 1;
      end

      // -------- start / pause --------
      if (btn_center_pulse && !finished) begin
        running <= ~running;
      end

      // -------- reset về User Default --------
      if (btn_reset_pulse && !running) begin
        if (set_valid) begin
          sec <= set_sec;
          min <= set_min;
        end else begin
          sec <= 0;
          min <= 0;
        end
        finished <= 0;
      end

      // -------- counting down --------
      if (running && tick_1hz) begin
        if (sec == 0) begin
          if (min == 0) begin
            running  <= 0;
            finished <= 1;  // đã về 00:00
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
  // DISPLAY + BLINK LOGIC
  // =============================
  always @(*) begin
    // Giá trị hiển thị mặc định
    d0 = sec % 10;
    d1 = sec / 10;
    d2 = min % 10;
    d3 = min / 10;

    // Nhấp nháy khi đang set và countdown chưa chạy
    if (!running && blink) begin
      if (set_sel == 0) begin
        d0 = 4'hF;  // tắt 2 số giây
        d1 = 4'hF;
      end else begin
        d2 = 4'hF;  // tắt 2 số phút
        d3 = 4'hF;
      end
    end
  end

endmodule
