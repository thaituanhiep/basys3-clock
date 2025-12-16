module alarm (
    input wire clk,
    input wire rst,
    input wire tick_1hz,

    input wire [4:0] cur_hour,
    input wire [5:0] cur_min,

    input wire set_alarm,
    input wire inc_hour,
    input wire inc_min,
    input wire alarm_enable,

    output reg alarm_match
);

  reg [4:0] alarm_hour;
  reg [5:0] alarm_min;

  // =============================
  // SET ALARM TIME
  // =============================
  always @(posedge clk) begin
    if (rst) begin
      alarm_hour <= 0;
      alarm_min  <= 0;
    end else if (set_alarm) begin
      if (inc_hour) alarm_hour <= (alarm_hour == 23) ? 0 : alarm_hour + 1;

      if (inc_min) alarm_min <= (alarm_min == 59) ? 0 : alarm_min + 1;
    end
  end

  // =============================
  // ALARM MATCH (1Hz SAFE)
  // =============================
  always @(posedge clk) begin
    if (rst) alarm_match <= 1'b0;
    else if (tick_1hz) begin
      if (alarm_enable && cur_hour == alarm_hour && cur_min == alarm_min) alarm_match <= 1'b1;
      else alarm_match <= 1'b0;
    end
  end

endmodule
