module alert_ctrl (
    input  wire clk,
    input  wire rst,

    input  wire tick_1hz,
    input  wire blink_1hz,

    input  wire alarm_match,
    input  wire cd_finished,

    input  wire btnu_pulse,
    input  wire btnd_pulse,

    output reg  buzzer_en,
    output reg [15:0] led_alert
);

    // =====================================================
    // FSM STATES
    // =====================================================
    localparam IDLE  = 2'd0;
    localparam ALARM = 2'd1;
    localparam CD    = 2'd2;

    reg [1:0] state, state_next;

    // =====================================================
    // TIMERS
    // =====================================================
    reg [4:0] alarm_timer;
    reg [2:0] cd_timer;

    wire stop_pulse = btnu_pulse | btnd_pulse;

    // =====================================================
    // ALARM MATCH EDGE DETECT
    // =====================================================
    reg alarm_match_d;

    always @(posedge clk or posedge rst) begin
        if (rst)
            alarm_match_d <= 1'b0;
        else
            alarm_match_d <= alarm_match;
    end

    wire alarm_match_pulse = alarm_match & ~alarm_match_d;

    // =====================================================
    // ALARM REQUEST (EVENT LATCH)
    // =====================================================
    reg alarm_req;

    always @(posedge clk or posedge rst) begin
        if (rst)
            alarm_req <= 1'b0;
        else if (alarm_match_pulse)
            alarm_req <= 1'b1;
        else if (state == ALARM)
            alarm_req <= 1'b0;
    end

    // =====================================================
    // COUNTDOWN FINISHED EDGE DETECT
    // =====================================================
    reg cd_finished_d;

    always @(posedge clk or posedge rst) begin
        if (rst)
            cd_finished_d <= 1'b0;
        else
            cd_finished_d <= cd_finished;
    end

    wire cd_finished_pulse = cd_finished & ~cd_finished_d;

    // =====================================================
    // COUNTDOWN REQUEST
    // =====================================================
    reg cd_req;

    always @(posedge clk or posedge rst) begin
        if (rst)
            cd_req <= 1'b0;
        else if (cd_finished_pulse)
            cd_req <= 1'b1;
        else if (state == CD)
            cd_req <= 1'b0;
    end

    // =====================================================
    // STATE REGISTER
    // =====================================================
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= IDLE;
        else
            state <= state_next;
    end

    // =====================================================
    // NEXT STATE LOGIC
    // =====================================================
    always @(*) begin
        state_next = state;

        case (state)
            IDLE: begin
                if (alarm_req)
                    state_next = ALARM;
                else if (cd_req)
                    state_next = CD;
            end

            ALARM: begin
                if (stop_pulse || alarm_timer >= 5'd15)
                    state_next = IDLE;
            end

            CD: begin
                if (alarm_req)
                    state_next = ALARM;
                else if (stop_pulse || cd_timer >= 3'd5)
                    state_next = IDLE;
            end
        endcase
    end

    // =====================================================
    // TIMER COUNTING
    // =====================================================
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            alarm_timer <= 0;
            cd_timer    <= 0;
        end else if (tick_1hz) begin
            if (state == ALARM)
                alarm_timer <= alarm_timer + 1'b1;
            else
                alarm_timer <= 0;

            if (state == CD)
                cd_timer <= cd_timer + 1'b1;
            else
                cd_timer <= 0;
        end
    end

    // =====================================================
    // OUTPUT LOGIC
    // =====================================================
    always @(*) begin
        buzzer_en = 1'b0;
        led_alert = 16'b0;

        case (state)
            ALARM: begin
                buzzer_en        = blink_1hz;
                led_alert[15:10] = {6{blink_1hz}};
            end

            CD: begin
                buzzer_en       = 1'b1;
                led_alert[9:7]  = {3{blink_1hz}};
            end
        endcase
    end

endmodule
