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

  // =============================
  // FSM STATE (Verilog chuẩn)
  // =============================
  localparam CD_SET      = 3'd0;
  localparam CD_READY    = 3'd1;
  localparam CD_RUNNING  = 3'd2;
  localparam CD_PAUSE    = 3'd3;
  localparam CD_FINISHED = 3'd4;

  reg [2:0] state;

  reg [5:0] sec, min;
  reg [5:0] set_sec, set_min;
  reg set_sel; // 0 = SEC, 1 = MIN

  // =============================
  // MAIN CONTROL
  // =============================
  always @(posedge clk) begin
    if (!cd_enable) begin
      // RESET KHI RỜI MODE 4
      state    <= CD_SET;
      running  <= 1'b0;
      finished <= 1'b0;
      set_sel  <= 1'b0;

      // DEFAULT = 00:05
      sec <= 6'd5;
      min <= 6'd0;
    end else begin
      case (state)

        // =============================
        // SET TIME
        // =============================
        CD_SET: begin
          running  <= 1'b0;
          finished <= 1'b0;

          // Cursor
          if (btn_right_pulse)
            set_sel <= ~set_sel;

          // Adjust
          if (set_sel == 1'b0) begin
            if (btn_up_pulse)
              sec <= (sec == 59) ? 0 : sec + 1;
            if (btn_down_pulse)
              sec <= (sec == 0) ? 59 : sec - 1;
          end else begin
            if (btn_up_pulse)
              min <= (min == 59) ? 0 : min + 1;
            if (btn_down_pulse)
              min <= (min == 0) ? 59 : min - 1;
          end

          // SAVE
          if (btn_center_pulse) begin
            set_sec <= sec;
            set_min <= min;
            state   <= CD_READY;
          end
        end

        // =============================
        // READY
        // =============================
        CD_READY: begin
          running  <= 1'b0;
          finished <= 1'b0;

          if (btn_right_pulse)
            state <= CD_RUNNING;
        end

        // =============================
        // RUNNING
        // =============================
        CD_RUNNING: begin
          running <= 1'b1;

          // PAUSE
          if (btn_right_pulse) begin
            running <= 1'b0;
            state   <= CD_PAUSE;
          end
          // COUNTDOWN
          else if (tick_1hz) begin
            if (sec == 0) begin
              if (min == 0) begin
                running  <= 1'b0;
                finished <= 1'b1;
                state    <= CD_FINISHED;
              end else begin
                min <= min - 1;
                sec <= 59;
              end
            end else begin
              sec <= sec - 1;
            end
          end
        end

        // =============================
        // PAUSE
        // =============================
        CD_PAUSE: begin
          running <= 1'b0;

          // RESUME
          if (btn_right_pulse) begin
            state <= CD_RUNNING;
          end
          // RESET về giá trị đã set
          else if (btn_center_pulse) begin
            sec   <= set_sec;
            min   <= set_min;
            state <= CD_READY;
          end
        end

        // =============================
        // FINISHED
        // =============================
        CD_FINISHED: begin
          running  <= 1'b0;
          finished <= 1'b1;

          // RESET để set lại
          if (btn_center_pulse) begin
            sec   <= set_sec;
            min   <= set_min;
            state <= CD_SET;
          end
        end

        default: state <= CD_SET;
      endcase
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

    if (state == CD_SET && blink) begin
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
