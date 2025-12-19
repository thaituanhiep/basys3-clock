module ModeFSM (
    input wire clk,

    input wire btn_left_pulse,   // BTNL
    input wire btn_right_pulse,  // BTNR
    input wire btn_center_pulse, // BTNC

    output reg [2:0] mode,
    output reg       set_sel  // 0 = MIN / SEC , 1 = HOUR / MIN
);

  localparam MODE_CLOCK = 3'd0;
  localparam MODE_SET_CLOCK = 3'd1;
  localparam MODE_SET_ALARM = 3'd2;
  localparam MODE_ALARM_ONOFF = 3'd3;
  localparam MODE_COUNTDOWN = 3'd4;
  localparam MODE_STOPWATCH = 3'd5;

  // =============================
  // INIT
  // =============================
  initial begin
    mode    = MODE_CLOCK;
    set_sel = 1'b0;
  end

  always @(posedge clk) begin

    // =============================
    // MODE CHANGE (BTNL)
    // =============================
    if (btn_left_pulse) begin
      case (mode)
        MODE_CLOCK:       mode <= MODE_SET_CLOCK;
        MODE_SET_CLOCK:   mode <= MODE_SET_ALARM;
        MODE_SET_ALARM:   mode <= MODE_ALARM_ONOFF;
        MODE_ALARM_ONOFF: mode <= MODE_COUNTDOWN;
        MODE_COUNTDOWN:   mode <= MODE_STOPWATCH;
        MODE_STOPWATCH:   mode <= MODE_CLOCK;
        default:          mode <= MODE_CLOCK;
      endcase
      set_sel <= 1'b0;  // luôn bắt đầu bằng field thấp
    end

    // =============================
    // CURSOR CHANGE (BTNR)
    // =============================
    if (
            (mode == MODE_SET_CLOCK  ||
             mode == MODE_SET_ALARM  ||
             mode == MODE_COUNTDOWN)
            && btn_right_pulse
        ) begin
      set_sel <= ~set_sel;
    end

    // =============================
    // SAVE / EXIT (BTNC)
    // =============================
    if (btn_center_pulse) begin
      case (mode)
        MODE_SET_CLOCK, MODE_SET_ALARM, MODE_ALARM_ONOFF: mode <= MODE_CLOCK;

        default: ;
      endcase
    end
  end

endmodule
