module blink_gen (
    input  wire clk,
    input  wire tick_1hz,
    input  wire enable,
    output reg  blink
);
  always @(posedge clk) begin
    if (!enable) blink <= 1'b0;
    else if (tick_1hz) blink <= ~blink;
  end

endmodule
