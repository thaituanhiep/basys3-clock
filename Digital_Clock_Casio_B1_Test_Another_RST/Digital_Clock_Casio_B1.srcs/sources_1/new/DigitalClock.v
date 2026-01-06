module DigitalClock (
    input wire clk,
    input wire tick_1hz,

    input wire set_min_mode,
    input wire set_hour_mode,

    input wire btn_up_pulse,
    input wire btn_down_pulse,

    input wire blink,

    input  wire [5:0] ext_hh,
    input  wire [5:0] ext_mm,
    input  wire [5:0] ext_ss,
    input  wire       ext_set_pulse,

    output reg [3:0] digit0,
    output reg [3:0] digit1,
    output reg [3:0] digit2,
    output reg [3:0] digit3,

    output wire [4:0] hour,
    output wire [5:0] min,

    output wire [4:0] cur_hour,
    output wire [5:0] cur_min,
    output wire [5:0] cur_sec
);

  // =========================
  // TIME REGISTERS (NGUỒN DUY NHẤT)
  // =========================
  reg [5:0] sec    = 0;
  reg [5:0] minute = 34;
  reg [4:0] hour_r = 12;

  reg skip_tick = 1'b0;   // ★ BẮT BUỘC PHẢI CÓ

  assign hour     = hour_r;
  assign min      = minute;
  assign cur_hour = hour_r;
  assign cur_min  = minute;
  assign cur_sec  = sec;

  // =========================
  // CLOCK CORE
  // =========================
  always @(posedge clk) begin

    // ===== SET TIME TỪ ESP32 =====
    if (ext_set_pulse) begin
      if (ext_hh <= 23) hour_r <= ext_hh[4:0];
      if (ext_mm <= 59) minute <= ext_mm;
      if (ext_ss <= 59) sec    <= ext_ss;
      skip_tick <= 1'b1;     // bỏ tick kế tiếp
    end

    // ===== SET MIN =====
    else if (set_min_mode) begin
      if (btn_up_pulse) begin
        minute <= (minute == 59) ? 0 : minute + 1;
        sec <= 0;
        skip_tick <= 1'b1;
      end
      else if (btn_down_pulse) begin
        minute <= (minute == 0) ? 59 : minute - 1;
        sec <= 0;
        skip_tick <= 1'b1;
      end
    end

    // ===== SET HOUR =====
    else if (set_hour_mode) begin
      if (btn_up_pulse) begin
        hour_r <= (hour_r == 23) ? 0 : hour_r + 1;
        sec <= 0;
        skip_tick <= 1'b1;
      end
      else if (btn_down_pulse) begin
        hour_r <= (hour_r == 0) ? 23 : hour_r - 1;
        sec <= 0;
        skip_tick <= 1'b1;
      end
    end

    // ===== RUN MODE =====
    else if (tick_1hz) begin
      if (skip_tick) begin
        skip_tick <= 1'b0;   // bỏ đúng 1 tick
      end else begin
        if (sec == 59) begin
          sec <= 0;
          if (minute == 59) begin
            minute <= 0;
            hour_r <= (hour_r == 23) ? 0 : hour_r + 1;
          end else begin
            minute <= minute + 1;
          end
        end else begin
          sec <= sec + 1;
        end
      end
    end
  end

  // =========================
  // DISPLAY + BLINK
  // =========================
  always @(*) begin
    digit0 = minute % 10;
    digit1 = minute / 10;
    digit2 = hour_r % 10;
    digit3 = hour_r / 10;

    if (set_min_mode && blink) begin
      digit0 = 4'hF;
      digit1 = 4'hF;
    end

    if (set_hour_mode && blink) begin
      digit2 = 4'hF;
      digit3 = 4'hF;
    end
  end

endmodule
