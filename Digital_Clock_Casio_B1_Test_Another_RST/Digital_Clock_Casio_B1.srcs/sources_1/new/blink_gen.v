module blink_gen (
    input  wire clk,
    input  wire enable,
    output reg  blink
);

  reg [25:0] cnt;

  always @(posedge clk) begin
    if (!enable) begin
      cnt   <= 0;
      blink <= 0;
    end else if (cnt == 25_000_000 - 1) begin
      cnt   <= 0;
      blink <= ~blink;
    end else begin
      cnt <= cnt + 1;
    end
  end

endmodule
