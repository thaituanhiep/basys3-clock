module alarm (
    input wire clk,
    input wire rst,
    input wire tick_1hz,

    input wire [4:0] cur_hour,
    input wire [5:0] cur_min,

    input wire set_alarm,    // mode == Alarm Set
    input wire inc_hour,
    input wire dec_hour,
    input wire inc_min,
    input wire dec_min,
    input wire alarm_enable,

    output reg alarm_match,

    // expose alarm time for display
    output wire [4:0] alarm_hour_out,
    output wire [5:0] alarm_min_out
);

  // =============================
  // INTERNAL REGISTERS
  // =============================
  reg [4:0] alarm_hour;
  reg [5:0] alarm_min;
  reg       init_done;     // ✅ THÊM

  // =============================
  // INIT (chạy 1 lần khi nạp FPGA)
  // =============================
  initial begin
    init_done = 1'b0;      // ✅ THÊM
  end

  // =============================
  // SET ALARM TIME
  // =============================
  always @(posedge clk) begin
    // INIT LẦN ĐẦU TIÊN KHI VÀO SET ALARM
    if (set_alarm && !init_done) begin
      alarm_hour <= 5'd6;
      alarm_min  <= 6'd5;
      init_done  <= 1'b1;
    end
    else if (set_alarm) begin
      // ----- SET HOUR -----
      if (inc_hour)
        alarm_hour <= (alarm_hour == 23) ? 0 : alarm_hour + 1;
      else if (dec_hour)
        alarm_hour <= (alarm_hour == 0) ? 23 : alarm_hour - 1;

      // ----- SET MIN -----
      if (inc_min)
        alarm_min <= (alarm_min == 59) ? 0 : alarm_min + 1;
      else if (dec_min)
        alarm_min <= (alarm_min == 0) ? 59 : alarm_min - 1;
    end
  end

  // =============================
  // ALARM MATCH (1Hz SAFE)
  // =============================
  always @(posedge clk) begin
    if (rst)
      alarm_match <= 1'b0;
    else if (tick_1hz) begin
      if (alarm_enable &&
          cur_hour == alarm_hour &&
          cur_min  == alarm_min)
        alarm_match <= 1'b1;
      else
        alarm_match <= 1'b0;
    end
  end

  // =============================
  // OUTPUT
  // =============================
  assign alarm_hour_out = alarm_hour;
  assign alarm_min_out  = alarm_min;

endmodule
