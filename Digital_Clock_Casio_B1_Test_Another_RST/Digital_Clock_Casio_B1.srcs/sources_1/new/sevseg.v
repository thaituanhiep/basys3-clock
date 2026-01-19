module sevseg (
    input            clk,
    input      [3:0] binary_input_0,
    input      [3:0] binary_input_1,
    input      [3:0] binary_input_2,
    input      [3:0] binary_input_3,

    input            IO_SSEG_DP,     //

    output reg [3:0] IO_SSEG_SEL,
    output reg [6:0] IO_SSEG,
    output reg       IO_SSEG_DP_OUT  // 
);

  reg [1:0] digit_index = 0;
  reg [18:0] counter = 0;

  localparam MAX_COUNT = 500000;  // ~200Hz refresh

  reg [3:0] cur_value;

  always @(posedge clk) begin
    // =============================
    // QUÉT DIGIT
    // =============================
    if (counter < MAX_COUNT)
      counter <= counter + 1;
    else begin
      counter <= 0;
      digit_index <= digit_index + 1;
    end

    // =============================
    // CHỌN GIÁ TRỊ
    // =============================
    case (digit_index)
      2'd0: cur_value <= binary_input_0;
      2'd1: cur_value <= binary_input_1;
      2'd2: cur_value <= binary_input_2;
      2'd3: cur_value <= binary_input_3;
    endcase

    // =============================
    // MAPPING 7-SEG (active low)
    // =============================
    case (cur_value)
      4'd0: IO_SSEG <= 7'b1000000;
      4'd1: IO_SSEG <= 7'b1111001;
      4'd2: IO_SSEG <= 7'b0100100;
      4'd3: IO_SSEG <= 7'b0110000;
      4'd4: IO_SSEG <= 7'b0011001;
      4'd5: IO_SSEG <= 7'b0010010;
      4'd6: IO_SSEG <= 7'b0000010;
      4'd7: IO_SSEG <= 7'b1111000;
      4'd8: IO_SSEG <= 7'b0000000;
      4'd9: IO_SSEG <= 7'b0010000;
      default: IO_SSEG <= 7'b1111111;
    endcase

    // =============================
    // CHỌN DIGIT
    // =============================
    case (digit_index)
      2'd0: IO_SSEG_SEL <= 4'b1110;
      2'd1: IO_SSEG_SEL <= 4'b1101;
      2'd2: IO_SSEG_SEL <= 4'b1011;
      2'd3: IO_SSEG_SEL <= 4'b0111;
    endcase

    // =============================
    // DP = dấu ':' (chỉ digit 1)
    // =============================
    if (digit_index == 2'd1)
      IO_SSEG_DP_OUT <= ~IO_SSEG_DP; // active low
    else
      IO_SSEG_DP_OUT <= 1'b1;
  end

endmodule
