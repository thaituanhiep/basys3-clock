module DigitalClock (
    input wire clk,
    input wire tick_1hz, // ✅ xung 1 chu kỳ / giây từ TOP

    input wire set_min_mode,
    input wire set_hour_mode,

    input wire btn_up_pulse,
    input wire btn_down_pulse,

    input wire blink,

    output reg [3:0] digit0,  // min ones
    output reg [3:0] digit1,  // min tens
    output reg [3:0] digit2,  // hour ones
    output reg [3:0] digit3   // hour tens
);

  // =========================
  // TIME REGISTERS
  // =========================
  reg [5:0] sec = 0;
  reg [5:0] minute = 34;  // default 12:34
  reg [4:0] hour = 12;

  // =========================
  // CLOCK RUN (LUÔN CHẠY)
  // =========================
  always @(posedge clk) begin
    if (tick_1hz && !set_min_mode && !set_hour_mode) begin
      if (sec == 59) begin
        sec <= 0;
        if (minute == 59) begin
          minute <= 0;
          hour   <= (hour == 23) ? 0 : hour + 1;
        end else begin
          minute <= minute + 1;
        end
      end else begin
        sec <= sec + 1;
      end
    end

    // -------- SET MIN --------
    if (set_min_mode) begin
      if (btn_up_pulse) minute <= (minute == 59) ? 0 : minute + 1;
      if (btn_down_pulse) minute <= (minute == 0) ? 59 : minute - 1;
    end

    // -------- SET HOUR --------
    if (set_hour_mode) begin
      if (btn_up_pulse) hour <= (hour == 23) ? 0 : hour + 1;
      if (btn_down_pulse) hour <= (hour == 0) ? 23 : hour - 1;
    end
  end

  // =========================
  // DISPLAY + BLINK
  // =========================
  always @(*) begin
    digit0 = minute % 10;
    digit1 = minute / 10;
    digit2 = hour % 10;
    digit3 = hour / 10;

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
