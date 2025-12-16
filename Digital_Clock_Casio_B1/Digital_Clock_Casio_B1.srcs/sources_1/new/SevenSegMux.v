module SevenSegMux (
    input wire [2:0] mode,

    input wire [3:0] dc_d0,
    dc_d1,
    dc_d2,
    dc_d3,
    input wire [3:0] al_d0,
    al_d1,
    al_d2,
    al_d3,

    output reg [3:0] d0,
    d1,
    d2,
    d3
);

  localparam MODE_CLOCK = 3'd0;
  localparam MODE_SET_CLOCK = 3'd1;
  localparam MODE_SET_ALARM = 3'd2;
  localparam MODE_ALARM_ONOFF = 3'd3;

  always @(*) begin
    case (mode)
      MODE_CLOCK, MODE_SET_CLOCK: begin
        d0 = dc_d0;
        d1 = dc_d1;
        d2 = dc_d2;
        d3 = dc_d3;
      end

      MODE_SET_ALARM, MODE_ALARM_ONOFF: begin
        d0 = al_d0;
        d1 = al_d1;
        d2 = al_d2;
        d3 = al_d3;
      end

      default: begin
        d0 = 0;
        d1 = 0;
        d2 = 0;
        d3 = 0;
      end
    endcase
  end

endmodule
