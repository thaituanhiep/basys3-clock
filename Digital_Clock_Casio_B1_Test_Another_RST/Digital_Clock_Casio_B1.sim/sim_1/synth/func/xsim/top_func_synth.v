// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Jan 14 00:10:38 2026
// Host        : TrungPC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {E:/aa. Data
//               FF/zzz.Project_Sem2_Digital_Clock/Digital_Clock_Casio_B1_Test_Another_RST/Digital_Clock_Casio_B1.sim/sim_1/synth/func/xsim/top_func_synth.v}
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DigitalClock
   (skip_tick_reg_0,
    tick_1hz_reg,
    \sec_reg[4]_0 ,
    \sec_reg[3]_0 ,
    Q,
    \sec_reg[4]_1 ,
    \minute_reg[5]_0 ,
    \minute_reg[1]_0 ,
    \minute_reg[4]_0 ,
    \minute_reg[2]_0 ,
    \minute_reg[2]_1 ,
    \minute_reg[2]_2 ,
    \minute_reg[5]_1 ,
    \minute_reg[4]_1 ,
    \hour_r_reg[1]_0 ,
    \hour_r_reg[1]_1 ,
    \hour_r_reg[1]_2 ,
    \hour_r_reg[4]_0 ,
    \hour_r_reg[4]_1 ,
    \hour_r_reg[3]_0 ,
    alarm_enable_reg,
    \mode_reg[0] ,
    \sec_reg[2]_0 ,
    skip_tick_reg_1,
    clk,
    set_min_mode0,
    set_hour_mode0,
    tick_1hz,
    \minute_reg[5]_2 ,
    \sec_reg[3]_1 ,
    time_valid_pulse,
    \sec_reg[3]_2 ,
    \minute_reg[5]_3 ,
    \minute_reg[3]_0 ,
    \hour_r_reg[2]_0 ,
    D,
    \hour_r_reg[2]_1 ,
    alarm_match_reg,
    alarm_match_reg_0,
    LD_OBUF,
    alarm_match,
    mode,
    dc_d3,
    show_seconds,
    E,
    \sec_reg[5]_0 ,
    \minute_reg[5]_4 ,
    \minute_reg[4]_2 ,
    \hour_r_reg[4]_2 );
  output skip_tick_reg_0;
  output tick_1hz_reg;
  output \sec_reg[4]_0 ;
  output \sec_reg[3]_0 ;
  output [5:0]Q;
  output \sec_reg[4]_1 ;
  output \minute_reg[5]_0 ;
  output [1:0]\minute_reg[1]_0 ;
  output \minute_reg[4]_0 ;
  output \minute_reg[2]_0 ;
  output \minute_reg[2]_1 ;
  output \minute_reg[2]_2 ;
  output \minute_reg[5]_1 ;
  output \minute_reg[4]_1 ;
  output \hour_r_reg[1]_0 ;
  output [1:0]\hour_r_reg[1]_1 ;
  output \hour_r_reg[1]_2 ;
  output \hour_r_reg[4]_0 ;
  output \hour_r_reg[4]_1 ;
  output \hour_r_reg[3]_0 ;
  output alarm_enable_reg;
  output \mode_reg[0] ;
  output \sec_reg[2]_0 ;
  input skip_tick_reg_1;
  input clk;
  input set_min_mode0;
  input set_hour_mode0;
  input tick_1hz;
  input \minute_reg[5]_2 ;
  input [1:0]\sec_reg[3]_1 ;
  input time_valid_pulse;
  input \sec_reg[3]_2 ;
  input [2:0]\minute_reg[5]_3 ;
  input \minute_reg[3]_0 ;
  input \hour_r_reg[2]_0 ;
  input [3:0]D;
  input [0:0]\hour_r_reg[2]_1 ;
  input [4:0]alarm_match_reg;
  input [5:0]alarm_match_reg_0;
  input [0:0]LD_OBUF;
  input alarm_match;
  input [0:0]mode;
  input [0:0]dc_d3;
  input show_seconds;
  input [0:0]E;
  input [3:0]\sec_reg[5]_0 ;
  input [0:0]\minute_reg[5]_4 ;
  input [2:0]\minute_reg[4]_2 ;
  input [0:0]\hour_r_reg[4]_2 ;

  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]LD_OBUF;
  wire [5:0]Q;
  wire alarm_enable_reg;
  wire alarm_match;
  wire alarm_match_i_3_n_0;
  wire alarm_match_i_4_n_0;
  wire alarm_match_i_5_n_0;
  wire [4:0]alarm_match_reg;
  wire [5:0]alarm_match_reg_0;
  wire clk;
  wire \cur_value[3]_i_24_n_0 ;
  wire \cur_value[3]_i_25_n_0 ;
  wire [0:0]dc_d3;
  wire [4:2]dc_hour;
  wire [5:2]dc_min;
  wire \hour_r[4]_i_6_n_0 ;
  wire \hour_r[4]_i_7_n_0 ;
  wire \hour_r_reg[1]_0 ;
  wire [1:0]\hour_r_reg[1]_1 ;
  wire \hour_r_reg[1]_2 ;
  wire \hour_r_reg[2]_0 ;
  wire [0:0]\hour_r_reg[2]_1 ;
  wire \hour_r_reg[3]_0 ;
  wire \hour_r_reg[4]_0 ;
  wire \hour_r_reg[4]_1 ;
  wire [0:0]\hour_r_reg[4]_2 ;
  wire \minute[2]_i_1_n_0 ;
  wire \minute[2]_i_2_n_0 ;
  wire \minute[2]_i_3_n_0 ;
  wire \minute[2]_i_4_n_0 ;
  wire \minute[2]_i_5_n_0 ;
  wire \minute[3]_i_1_n_0 ;
  wire \minute[3]_i_2_n_0 ;
  wire \minute[3]_i_3_n_0 ;
  wire \minute[5]_i_2_n_0 ;
  wire \minute[5]_i_6_n_0 ;
  wire \minute[5]_i_7_n_0 ;
  wire [1:0]\minute_reg[1]_0 ;
  wire \minute_reg[2]_0 ;
  wire \minute_reg[2]_1 ;
  wire \minute_reg[2]_2 ;
  wire \minute_reg[3]_0 ;
  wire \minute_reg[4]_0 ;
  wire \minute_reg[4]_1 ;
  wire [2:0]\minute_reg[4]_2 ;
  wire \minute_reg[5]_0 ;
  wire \minute_reg[5]_1 ;
  wire \minute_reg[5]_2 ;
  wire [2:0]\minute_reg[5]_3 ;
  wire [0:0]\minute_reg[5]_4 ;
  wire [0:0]mode;
  wire \mode_reg[0] ;
  wire [2:2]p_1_in;
  wire \sec[2]_i_1_n_0 ;
  wire \sec[3]_i_1_n_0 ;
  wire \sec[3]_i_2_n_0 ;
  wire \sec_reg[2]_0 ;
  wire \sec_reg[3]_0 ;
  wire [1:0]\sec_reg[3]_1 ;
  wire \sec_reg[3]_2 ;
  wire \sec_reg[4]_0 ;
  wire \sec_reg[4]_1 ;
  wire [3:0]\sec_reg[5]_0 ;
  wire set_hour_mode0;
  wire set_min_mode0;
  wire show_seconds;
  wire skip_tick_reg_0;
  wire skip_tick_reg_1;
  wire tick_1hz;
  wire tick_1hz_reg;
  wire time_valid_pulse;
  wire \u_alarm/alarm_match2 ;

  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    alarm_match_i_1
       (.I0(LD_OBUF),
        .I1(\u_alarm/alarm_match2 ),
        .I2(alarm_match_i_3_n_0),
        .I3(alarm_match_i_4_n_0),
        .I4(tick_1hz),
        .I5(alarm_match),
        .O(alarm_enable_reg));
  LUT5 #(
    .INIT(32'h90000090)) 
    alarm_match_i_2
       (.I0(dc_hour[3]),
        .I1(alarm_match_reg[3]),
        .I2(alarm_match_i_5_n_0),
        .I3(alarm_match_reg[4]),
        .I4(dc_hour[4]),
        .O(\u_alarm/alarm_match2 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    alarm_match_i_3
       (.I0(\minute_reg[1]_0 [0]),
        .I1(alarm_match_reg_0[0]),
        .I2(alarm_match_reg_0[2]),
        .I3(dc_min[2]),
        .I4(alarm_match_reg_0[1]),
        .I5(\minute_reg[1]_0 [1]),
        .O(alarm_match_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    alarm_match_i_4
       (.I0(dc_min[3]),
        .I1(alarm_match_reg_0[3]),
        .I2(alarm_match_reg_0[5]),
        .I3(dc_min[5]),
        .I4(alarm_match_reg_0[4]),
        .I5(dc_min[4]),
        .O(alarm_match_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    alarm_match_i_5
       (.I0(\hour_r_reg[1]_1 [0]),
        .I1(alarm_match_reg[0]),
        .I2(alarm_match_reg[2]),
        .I3(dc_hour[2]),
        .I4(alarm_match_reg[1]),
        .I5(\hour_r_reg[1]_1 [1]),
        .O(alarm_match_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA624)) 
    \cur_value[1]_i_19 
       (.I0(dc_min[4]),
        .I1(dc_min[5]),
        .I2(dc_min[3]),
        .I3(dc_min[2]),
        .O(\minute_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h6D3C492C)) 
    \cur_value[1]_i_24 
       (.I0(dc_min[2]),
        .I1(dc_min[5]),
        .I2(dc_min[3]),
        .I3(dc_min[4]),
        .I4(\minute_reg[1]_0 [1]),
        .O(\minute_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \cur_value[1]_i_26 
       (.I0(dc_hour[4]),
        .I1(dc_hour[2]),
        .I2(dc_hour[3]),
        .O(\hour_r_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h73C7)) 
    \cur_value[1]_i_31 
       (.I0(\hour_r_reg[1]_1 [1]),
        .I1(dc_hour[3]),
        .I2(dc_hour[4]),
        .I3(dc_hour[2]),
        .O(\hour_r_reg[1]_2 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \cur_value[2]_i_18 
       (.I0(dc_min[5]),
        .I1(dc_min[3]),
        .I2(dc_min[4]),
        .O(\minute_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h18A6518A)) 
    \cur_value[2]_i_24 
       (.I0(dc_min[2]),
        .I1(dc_min[5]),
        .I2(dc_min[3]),
        .I3(dc_min[4]),
        .I4(\minute_reg[1]_0 [1]),
        .O(\minute_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0BD0)) 
    \cur_value[2]_i_27 
       (.I0(\hour_r_reg[1]_1 [1]),
        .I1(dc_hour[3]),
        .I2(dc_hour[4]),
        .I3(dc_hour[2]),
        .O(\hour_r_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDDDFFFFFCCC)) 
    \cur_value[3]_i_14 
       (.I0(mode),
        .I1(dc_d3),
        .I2(\hour_r_reg[1]_1 [1]),
        .I3(\cur_value[3]_i_24_n_0 ),
        .I4(\cur_value[3]_i_25_n_0 ),
        .I5(show_seconds),
        .O(\mode_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h41082410)) 
    \cur_value[3]_i_20 
       (.I0(dc_min[2]),
        .I1(dc_min[5]),
        .I2(dc_min[3]),
        .I3(dc_min[4]),
        .I4(\minute_reg[1]_0 [1]),
        .O(\minute_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cur_value[3]_i_24 
       (.I0(dc_hour[2]),
        .I1(dc_hour[4]),
        .I2(dc_hour[3]),
        .O(\cur_value[3]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \cur_value[3]_i_25 
       (.I0(\hour_r_reg[1]_1 [1]),
        .I1(dc_hour[3]),
        .I2(dc_hour[4]),
        .I3(dc_hour[2]),
        .O(\cur_value[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B88B8BB8B8B8)) 
    \hour_r[2]_i_1 
       (.I0(\hour_r_reg[2]_1 ),
        .I1(time_valid_pulse),
        .I2(dc_hour[2]),
        .I3(\hour_r_reg[1]_1 [0]),
        .I4(\hour_r_reg[1]_1 [1]),
        .I5(\hour_r_reg[2]_0 ),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'hAFFFFFF510000008)) 
    \hour_r[3]_i_2 
       (.I0(\hour_r_reg[2]_0 ),
        .I1(dc_hour[4]),
        .I2(dc_hour[2]),
        .I3(\hour_r_reg[1]_1 [0]),
        .I4(\hour_r_reg[1]_1 [1]),
        .I5(dc_hour[3]),
        .O(\hour_r_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \hour_r[4]_i_4 
       (.I0(\minute[2]_i_5_n_0 ),
        .I1(set_min_mode0),
        .I2(set_hour_mode0),
        .I3(tick_1hz),
        .I4(skip_tick_reg_0),
        .I5(\sec_reg[4]_0 ),
        .O(tick_1hz_reg));
  LUT6 #(
    .INIT(64'h000000002D2DF30F)) 
    \hour_r[4]_i_5 
       (.I0(\hour_r[4]_i_6_n_0 ),
        .I1(dc_hour[3]),
        .I2(dc_hour[4]),
        .I3(\hour_r[4]_i_7_n_0 ),
        .I4(\hour_r_reg[2]_0 ),
        .I5(time_valid_pulse),
        .O(\hour_r_reg[3]_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \hour_r[4]_i_6 
       (.I0(dc_hour[2]),
        .I1(\hour_r_reg[1]_1 [0]),
        .I2(\hour_r_reg[1]_1 [1]),
        .O(\hour_r[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \hour_r[4]_i_7 
       (.I0(dc_hour[2]),
        .I1(\hour_r_reg[1]_1 [0]),
        .I2(\hour_r_reg[1]_1 [1]),
        .O(\hour_r[4]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hour_r_reg[0] 
       (.C(clk),
        .CE(\hour_r_reg[4]_2 ),
        .D(D[0]),
        .Q(\hour_r_reg[1]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hour_r_reg[1] 
       (.C(clk),
        .CE(\hour_r_reg[4]_2 ),
        .D(D[1]),
        .Q(\hour_r_reg[1]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \hour_r_reg[2] 
       (.C(clk),
        .CE(\hour_r_reg[4]_2 ),
        .D(p_1_in),
        .Q(dc_hour[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \hour_r_reg[3] 
       (.C(clk),
        .CE(\hour_r_reg[4]_2 ),
        .D(D[2]),
        .Q(dc_hour[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hour_r_reg[4] 
       (.C(clk),
        .CE(\hour_r_reg[4]_2 ),
        .D(D[3]),
        .Q(dc_hour[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBB8B8BBB8B8B8B8)) 
    \minute[2]_i_1 
       (.I0(\minute_reg[5]_3 [0]),
        .I1(time_valid_pulse),
        .I2(\minute[2]_i_2_n_0 ),
        .I3(dc_min[2]),
        .I4(\minute[2]_i_3_n_0 ),
        .I5(\minute[2]_i_4_n_0 ),
        .O(\minute[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D00D00000000)) 
    \minute[2]_i_2 
       (.I0(\minute[5]_i_7_n_0 ),
        .I1(dc_min[5]),
        .I2(dc_min[2]),
        .I3(\minute_reg[1]_0 [0]),
        .I4(\minute_reg[1]_0 [1]),
        .I5(\minute_reg[3]_0 ),
        .O(\minute[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \minute[2]_i_3 
       (.I0(\minute_reg[1]_0 [1]),
        .I1(\minute_reg[1]_0 [0]),
        .O(\minute[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \minute[2]_i_4 
       (.I0(\minute[2]_i_5_n_0 ),
        .I1(\minute_reg[3]_0 ),
        .O(\minute[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \minute[2]_i_5 
       (.I0(dc_min[3]),
        .I1(\minute_reg[1]_0 [1]),
        .I2(\minute_reg[1]_0 [0]),
        .I3(dc_min[5]),
        .I4(dc_min[4]),
        .I5(dc_min[2]),
        .O(\minute[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8BB88888BBBBBBBB)) 
    \minute[3]_i_1 
       (.I0(\minute_reg[5]_3 [1]),
        .I1(time_valid_pulse),
        .I2(dc_min[3]),
        .I3(\minute[3]_i_2_n_0 ),
        .I4(\minute_reg[3]_0 ),
        .I5(\minute[3]_i_3_n_0 ),
        .O(\minute[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \minute[3]_i_2 
       (.I0(dc_min[2]),
        .I1(\minute_reg[1]_0 [0]),
        .I2(\minute_reg[1]_0 [1]),
        .O(\minute[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAEAFFAAFFFF)) 
    \minute[3]_i_3 
       (.I0(\minute_reg[3]_0 ),
        .I1(dc_min[5]),
        .I2(dc_min[4]),
        .I3(\minute[2]_i_3_n_0 ),
        .I4(dc_min[2]),
        .I5(dc_min[3]),
        .O(\minute[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2222222222222228)) 
    \minute[4]_i_2 
       (.I0(\minute_reg[3]_0 ),
        .I1(dc_min[4]),
        .I2(dc_min[3]),
        .I3(\minute_reg[1]_0 [1]),
        .I4(\minute_reg[1]_0 [0]),
        .I5(dc_min[2]),
        .O(\minute_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h37FFFFFFC0000000)) 
    \minute[4]_i_3 
       (.I0(dc_min[5]),
        .I1(dc_min[3]),
        .I2(dc_min[2]),
        .I3(\minute_reg[1]_0 [1]),
        .I4(\minute_reg[1]_0 [0]),
        .I5(dc_min[4]),
        .O(\minute_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBB8B8B8B8B8)) 
    \minute[5]_i_2 
       (.I0(\minute_reg[5]_3 [2]),
        .I1(time_valid_pulse),
        .I2(\minute[5]_i_6_n_0 ),
        .I3(dc_min[5]),
        .I4(\minute[5]_i_7_n_0 ),
        .I5(\minute_reg[3]_0 ),
        .O(\minute[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \minute[5]_i_4 
       (.I0(Q[3]),
        .I1(\sec[3]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(\minute_reg[5]_2 ),
        .O(\sec_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h4455555510000000)) 
    \minute[5]_i_6 
       (.I0(\minute_reg[3]_0 ),
        .I1(\minute[2]_i_3_n_0 ),
        .I2(dc_min[2]),
        .I3(dc_min[3]),
        .I4(dc_min[4]),
        .I5(dc_min[5]),
        .O(\minute[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \minute[5]_i_7 
       (.I0(dc_min[3]),
        .I1(dc_min[4]),
        .I2(\minute_reg[1]_0 [1]),
        .I3(\minute_reg[1]_0 [0]),
        .I4(dc_min[2]),
        .O(\minute[5]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minute_reg[0] 
       (.C(clk),
        .CE(\minute_reg[5]_4 ),
        .D(\minute_reg[4]_2 [0]),
        .Q(\minute_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \minute_reg[1] 
       (.C(clk),
        .CE(\minute_reg[5]_4 ),
        .D(\minute_reg[4]_2 [1]),
        .Q(\minute_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minute_reg[2] 
       (.C(clk),
        .CE(\minute_reg[5]_4 ),
        .D(\minute[2]_i_1_n_0 ),
        .Q(dc_min[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minute_reg[3] 
       (.C(clk),
        .CE(\minute_reg[5]_4 ),
        .D(\minute[3]_i_1_n_0 ),
        .Q(dc_min[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minute_reg[4] 
       (.C(clk),
        .CE(\minute_reg[5]_4 ),
        .D(\minute_reg[4]_2 [2]),
        .Q(dc_min[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \minute_reg[5] 
       (.C(clk),
        .CE(\minute_reg[5]_4 ),
        .D(\minute[5]_i_2_n_0 ),
        .Q(dc_min[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8FF8F8F888888888)) 
    \sec[2]_i_1 
       (.I0(\sec_reg[3]_1 [0]),
        .I1(time_valid_pulse),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\sec_reg[3]_2 ),
        .O(\sec[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F888888888)) 
    \sec[3]_i_1 
       (.I0(\sec_reg[3]_1 [1]),
        .I1(time_valid_pulse),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\sec[3]_i_2_n_0 ),
        .I5(\sec_reg[3]_2 ),
        .O(\sec[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sec[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\sec[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sec[4]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\sec_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \sec[5]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\sec_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \sec[5]_i_6 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\sec_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\sec_reg[5]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\sec_reg[5]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\sec[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\sec[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\sec_reg[5]_0 [2]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\sec_reg[5]_0 [3]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    skip_tick_reg
       (.C(clk),
        .CE(1'b1),
        .D(skip_tick_reg_1),
        .Q(skip_tick_reg_0),
        .R(1'b0));
endmodule

module ModeFSM
   (\mode_reg[2]_0 ,
    \mode_reg[1]_0 ,
    set_sel,
    dc_d3,
    \mode_reg[2]_1 ,
    \mode_reg[2]_2 ,
    \mode_reg[2]_3 ,
    \mode_reg[2]_4 ,
    skip_tick_reg,
    set_min_mode0,
    set_hour_mode0,
    SR,
    E,
    inc_hour0,
    \mode_reg[2]_5 ,
    inc_min0,
    init_done_reg,
    \mode_reg[2]_6 ,
    \mode_reg[2]_7 ,
    \mode_reg[2]_8 ,
    \mode_reg[1]_1 ,
    \mode_reg[1]_2 ,
    \mode_reg[2]_9 ,
    \mode_reg[2]_10 ,
    LD_OBUF,
    btn_right_pulse_reg,
    tx_start0,
    \mode_reg[2]_11 ,
    \mode_reg[2]_12 ,
    btn_pulse_reg,
    \mode_reg[2]_13 ,
    time_valid_pulse_reg,
    D,
    \cnt_reg[24] ,
    \cur_value[1]_i_3_0 ,
    blink,
    \cur_value[1]_i_5_0 ,
    skip_tick_reg_0,
    btn_up_pulse,
    btn_pulse,
    time_valid_pulse,
    \sec_reg[4] ,
    skip_tick_reg_1,
    tick_1hz,
    init_done,
    \sec_reg[5] ,
    \sec_reg[5]_0 ,
    \sec_reg[5]_1 ,
    \min_reg[5] ,
    \min_reg[5]_0 ,
    \min_reg[5]_1 ,
    cd_en_d,
    c_p,
    \sec_reg[5]_2 ,
    \sec_reg[5]_3 ,
    r_p,
    \cur_value_reg[3] ,
    \cur_value[3]_i_3_0 ,
    show_seconds,
    \cur_value[3]_i_3_1 ,
    \cur_value_reg[2] ,
    \cur_value[2]_i_3_0 ,
    \cur_value[2]_i_3_1 ,
    \cur_value_reg[1] ,
    \cur_value[1]_i_3_1 ,
    \cur_value[0]_i_2_0 ,
    \cur_value_reg[0] ,
    Q,
    \cur_value_reg[2]_0 ,
    \cur_value_reg[2]_1 ,
    \cur_value[2]_i_2_0 ,
    \cur_value[2]_i_2_1 ,
    \cur_value_reg[1]_0 ,
    \cur_value_reg[1]_1 ,
    \cur_value[1]_i_2_0 ,
    \cur_value[1]_i_2_1 ,
    \cur_value_reg[0]_0 ,
    \cur_value[0]_i_2_1 ,
    p_1_in,
    \cur_value_reg[3]_0 ,
    \cur_value_reg[3]_1 ,
    \cur_value_reg[3]_2 ,
    sw_d2,
    \cur_value[2]_i_5_0 ,
    \cur_value[2]_i_5_1 ,
    \cur_value_reg[1]_2 ,
    \cur_value_reg[1]_3 ,
    \cur_value_reg[0]_i_4_0 ,
    \cur_value_reg[0]_1 ,
    \cur_value_reg[0]_i_5_0 ,
    \cur_value_reg[1]_4 ,
    \cur_value_reg[1]_i_4_0 ,
    \cur_value_reg[1]_i_4_1 ,
    \cur_value_reg[0]_2 ,
    \cur_value_reg[0]_i_4_1 ,
    show_seconds_reg,
    btn_right_pulse,
    \sec_disp_reg[0] ,
    tx_start_reg,
    btn_center_pulse,
    tx_busy,
    btn_down_pulse,
    \alarm_hour_reg[4] ,
    IO_SSEG_DP_OBUF,
    data3,
    \cur_value[0]_i_9_0 ,
    \cur_value[3]_i_3_2 ,
    \cur_value[1]_i_3_2 ,
    \cur_value[0]_i_2_2 ,
    \cur_value[2]_i_3_2 ,
    \cur_value_reg[2]_2 ,
    digit_index,
    alarm_enable_reg,
    \cur_value_reg[3]_3 ,
    \mode_reg[2]_14 ,
    btn_left_pulse,
    clk,
    l_p);
  output \mode_reg[2]_0 ;
  output [1:0]\mode_reg[1]_0 ;
  output set_sel;
  output [0:0]dc_d3;
  output \mode_reg[2]_1 ;
  output \mode_reg[2]_2 ;
  output \mode_reg[2]_3 ;
  output \mode_reg[2]_4 ;
  output skip_tick_reg;
  output set_min_mode0;
  output set_hour_mode0;
  output [0:0]SR;
  output [0:0]E;
  output inc_hour0;
  output [0:0]\mode_reg[2]_5 ;
  output inc_min0;
  output init_done_reg;
  output [0:0]\mode_reg[2]_6 ;
  output [0:0]\mode_reg[2]_7 ;
  output \mode_reg[2]_8 ;
  output [0:0]\mode_reg[1]_1 ;
  output \mode_reg[1]_2 ;
  output [0:0]\mode_reg[2]_9 ;
  output \mode_reg[2]_10 ;
  output [5:0]LD_OBUF;
  output [0:0]btn_right_pulse_reg;
  output tx_start0;
  output \mode_reg[2]_11 ;
  output \mode_reg[2]_12 ;
  output btn_pulse_reg;
  output \mode_reg[2]_13 ;
  output time_valid_pulse_reg;
  output [3:0]D;
  input \cnt_reg[24] ;
  input [1:0]\cur_value[1]_i_3_0 ;
  input blink;
  input [1:0]\cur_value[1]_i_5_0 ;
  input skip_tick_reg_0;
  input btn_up_pulse;
  input btn_pulse;
  input time_valid_pulse;
  input \sec_reg[4] ;
  input skip_tick_reg_1;
  input tick_1hz;
  input init_done;
  input \sec_reg[5] ;
  input \sec_reg[5]_0 ;
  input \sec_reg[5]_1 ;
  input \min_reg[5] ;
  input \min_reg[5]_0 ;
  input \min_reg[5]_1 ;
  input cd_en_d;
  input c_p;
  input \sec_reg[5]_2 ;
  input \sec_reg[5]_3 ;
  input r_p;
  input \cur_value_reg[3] ;
  input \cur_value[3]_i_3_0 ;
  input show_seconds;
  input \cur_value[3]_i_3_1 ;
  input \cur_value_reg[2] ;
  input \cur_value[2]_i_3_0 ;
  input \cur_value[2]_i_3_1 ;
  input \cur_value_reg[1] ;
  input \cur_value[1]_i_3_1 ;
  input \cur_value[0]_i_2_0 ;
  input \cur_value_reg[0] ;
  input [0:0]Q;
  input \cur_value_reg[2]_0 ;
  input \cur_value_reg[2]_1 ;
  input \cur_value[2]_i_2_0 ;
  input \cur_value[2]_i_2_1 ;
  input \cur_value_reg[1]_0 ;
  input \cur_value_reg[1]_1 ;
  input \cur_value[1]_i_2_0 ;
  input \cur_value[1]_i_2_1 ;
  input \cur_value_reg[0]_0 ;
  input \cur_value[0]_i_2_1 ;
  input [1:0]p_1_in;
  input \cur_value_reg[3]_0 ;
  input \cur_value_reg[3]_1 ;
  input \cur_value_reg[3]_2 ;
  input [0:0]sw_d2;
  input \cur_value[2]_i_5_0 ;
  input \cur_value[2]_i_5_1 ;
  input \cur_value_reg[1]_2 ;
  input \cur_value_reg[1]_3 ;
  input \cur_value_reg[0]_i_4_0 ;
  input \cur_value_reg[0]_1 ;
  input [0:0]\cur_value_reg[0]_i_5_0 ;
  input \cur_value_reg[1]_4 ;
  input \cur_value_reg[1]_i_4_0 ;
  input \cur_value_reg[1]_i_4_1 ;
  input \cur_value_reg[0]_2 ;
  input \cur_value_reg[0]_i_4_1 ;
  input show_seconds_reg;
  input btn_right_pulse;
  input \sec_disp_reg[0] ;
  input tx_start_reg;
  input btn_center_pulse;
  input tx_busy;
  input btn_down_pulse;
  input \alarm_hour_reg[4] ;
  input IO_SSEG_DP_OBUF;
  input [0:0]data3;
  input [0:0]\cur_value[0]_i_9_0 ;
  input \cur_value[3]_i_3_2 ;
  input \cur_value[1]_i_3_2 ;
  input \cur_value[0]_i_2_2 ;
  input \cur_value[2]_i_3_2 ;
  input \cur_value_reg[2]_2 ;
  input [1:0]digit_index;
  input [0:0]alarm_enable_reg;
  input \cur_value_reg[3]_3 ;
  input \mode_reg[2]_14 ;
  input btn_left_pulse;
  input clk;
  input l_p;

  wire [3:0]D;
  wire [0:0]E;
  wire IO_SSEG_DP_OBUF;
  wire [5:0]LD_OBUF;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]alarm_enable_reg;
  wire \alarm_hour_reg[4] ;
  wire blink;
  wire btn_center_pulse;
  wire btn_down_pulse;
  wire btn_left_pulse;
  wire btn_pulse;
  wire btn_pulse_reg;
  wire btn_right_pulse;
  wire [0:0]btn_right_pulse_reg;
  wire btn_up_pulse;
  wire c_p;
  wire cd_en_d;
  wire clk;
  wire \cnt_reg[24] ;
  wire \cur_value[0]_i_11_n_0 ;
  wire \cur_value[0]_i_13_n_0 ;
  wire \cur_value[0]_i_17_n_0 ;
  wire \cur_value[0]_i_20_n_0 ;
  wire \cur_value[0]_i_2_0 ;
  wire \cur_value[0]_i_2_1 ;
  wire \cur_value[0]_i_2_2 ;
  wire \cur_value[0]_i_7_n_0 ;
  wire \cur_value[0]_i_8_n_0 ;
  wire [0:0]\cur_value[0]_i_9_0 ;
  wire \cur_value[0]_i_9_n_0 ;
  wire \cur_value[1]_i_10_n_0 ;
  wire \cur_value[1]_i_11_n_0 ;
  wire \cur_value[1]_i_12_n_0 ;
  wire \cur_value[1]_i_16_n_0 ;
  wire \cur_value[1]_i_2_0 ;
  wire \cur_value[1]_i_2_1 ;
  wire [1:0]\cur_value[1]_i_3_0 ;
  wire \cur_value[1]_i_3_1 ;
  wire \cur_value[1]_i_3_2 ;
  wire \cur_value[1]_i_3_n_0 ;
  wire [1:0]\cur_value[1]_i_5_0 ;
  wire \cur_value[1]_i_8_n_0 ;
  wire \cur_value[2]_i_10_n_0 ;
  wire \cur_value[2]_i_11_n_0 ;
  wire \cur_value[2]_i_15_n_0 ;
  wire \cur_value[2]_i_2_0 ;
  wire \cur_value[2]_i_2_1 ;
  wire \cur_value[2]_i_3_0 ;
  wire \cur_value[2]_i_3_1 ;
  wire \cur_value[2]_i_3_2 ;
  wire \cur_value[2]_i_3_n_0 ;
  wire \cur_value[2]_i_4_n_0 ;
  wire \cur_value[2]_i_5_0 ;
  wire \cur_value[2]_i_5_1 ;
  wire \cur_value[2]_i_8_n_0 ;
  wire \cur_value[3]_i_11_n_0 ;
  wire \cur_value[3]_i_3_0 ;
  wire \cur_value[3]_i_3_1 ;
  wire \cur_value[3]_i_3_2 ;
  wire \cur_value[3]_i_3_n_0 ;
  wire \cur_value[3]_i_8_n_0 ;
  wire \cur_value[3]_i_9_n_0 ;
  wire \cur_value_reg[0] ;
  wire \cur_value_reg[0]_0 ;
  wire \cur_value_reg[0]_1 ;
  wire \cur_value_reg[0]_2 ;
  wire \cur_value_reg[0]_i_3_n_0 ;
  wire \cur_value_reg[0]_i_4_0 ;
  wire \cur_value_reg[0]_i_4_1 ;
  wire [0:0]\cur_value_reg[0]_i_5_0 ;
  wire \cur_value_reg[1] ;
  wire \cur_value_reg[1]_0 ;
  wire \cur_value_reg[1]_1 ;
  wire \cur_value_reg[1]_2 ;
  wire \cur_value_reg[1]_3 ;
  wire \cur_value_reg[1]_4 ;
  wire \cur_value_reg[1]_i_4_0 ;
  wire \cur_value_reg[1]_i_4_1 ;
  wire \cur_value_reg[2] ;
  wire \cur_value_reg[2]_0 ;
  wire \cur_value_reg[2]_1 ;
  wire \cur_value_reg[2]_2 ;
  wire \cur_value_reg[3] ;
  wire \cur_value_reg[3]_0 ;
  wire \cur_value_reg[3]_1 ;
  wire \cur_value_reg[3]_2 ;
  wire \cur_value_reg[3]_3 ;
  wire [3:0]d1;
  wire [3:0]d2;
  wire [3:0]d3;
  wire [0:0]data3;
  wire [0:0]dc_d0;
  wire [3:3]dc_d1;
  wire [0:0]dc_d2;
  wire [0:0]dc_d3;
  wire dec_hour0;
  wire dec_min0;
  wire [1:0]digit_index;
  wire inc_hour0;
  wire inc_min0;
  wire init_done;
  wire init_done_reg;
  wire l_p;
  wire \min_reg[5] ;
  wire \min_reg[5]_0 ;
  wire \min_reg[5]_1 ;
  wire [2:2]mode;
  wire \mode[0]_i_1_n_0 ;
  wire \mode[1]_i_1_n_0 ;
  wire \mode[2]_i_1_n_0 ;
  wire [1:0]\mode_reg[1]_0 ;
  wire [0:0]\mode_reg[1]_1 ;
  wire \mode_reg[1]_2 ;
  wire \mode_reg[2]_0 ;
  wire \mode_reg[2]_1 ;
  wire \mode_reg[2]_10 ;
  wire \mode_reg[2]_11 ;
  wire \mode_reg[2]_12 ;
  wire \mode_reg[2]_13 ;
  wire \mode_reg[2]_14 ;
  wire \mode_reg[2]_2 ;
  wire \mode_reg[2]_3 ;
  wire \mode_reg[2]_4 ;
  wire [0:0]\mode_reg[2]_5 ;
  wire [0:0]\mode_reg[2]_6 ;
  wire [0:0]\mode_reg[2]_7 ;
  wire \mode_reg[2]_8 ;
  wire [0:0]\mode_reg[2]_9 ;
  wire [1:0]p_1_in;
  wire r_p;
  wire \sec_disp_reg[0] ;
  wire \sec_reg[4] ;
  wire \sec_reg[5] ;
  wire \sec_reg[5]_0 ;
  wire \sec_reg[5]_1 ;
  wire \sec_reg[5]_2 ;
  wire \sec_reg[5]_3 ;
  wire set_hour_mode0;
  wire set_min_mode0;
  wire set_sel;
  wire set_sel_i_1_n_0;
  wire show_seconds;
  wire show_seconds_reg;
  wire skip_tick_reg;
  wire skip_tick_reg_0;
  wire skip_tick_reg_1;
  wire [0:0]sw_d2;
  wire tick_1hz;
  wire time_valid_pulse;
  wire time_valid_pulse_reg;
  wire tx_busy;
  wire tx_start0;
  wire tx_start_reg;

  LUT3 #(
    .INIT(8'h01)) 
    \LD_OBUF[0]_inst_i_1 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(\mode_reg[1]_0 [0]),
        .I2(mode),
        .O(LD_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \LD_OBUF[1]_inst_i_1 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(\mode_reg[1]_0 [0]),
        .I2(mode),
        .O(LD_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \LD_OBUF[2]_inst_i_1 
       (.I0(\mode_reg[1]_0 [0]),
        .I1(\mode_reg[1]_0 [1]),
        .I2(mode),
        .O(LD_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \LD_OBUF[3]_inst_i_1 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(\mode_reg[1]_0 [0]),
        .I2(mode),
        .O(LD_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \LD_OBUF[4]_inst_i_1 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(\mode_reg[1]_0 [0]),
        .I2(mode),
        .O(LD_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \LD_OBUF[5]_inst_i_1 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(\mode_reg[1]_0 [0]),
        .I2(mode),
        .O(LD_OBUF[5]));
  LUT6 #(
    .INIT(64'hFF3FFF7F00C00080)) 
    alarm_enable_i_1
       (.I0(show_seconds_reg),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(mode),
        .I4(btn_right_pulse),
        .I5(alarm_enable_reg),
        .O(btn_pulse_reg));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \alarm_hour[4]_i_1 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(init_done),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h04040400)) 
    \alarm_hour[4]_i_2 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(dec_hour0),
        .I4(inc_hour0),
        .O(E));
  LUT6 #(
    .INIT(64'h000000000A000800)) 
    \alarm_hour[4]_i_4 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(btn_down_pulse),
        .I2(\mode_reg[1]_0 [0]),
        .I3(set_sel),
        .I4(\alarm_hour_reg[4] ),
        .I5(mode),
        .O(dec_hour0));
  LUT6 #(
    .INIT(64'h000000000A000800)) 
    \alarm_hour[4]_i_5 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(btn_up_pulse),
        .I2(\mode_reg[1]_0 [0]),
        .I3(set_sel),
        .I4(btn_pulse),
        .I5(mode),
        .O(inc_hour0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h04040400)) 
    \alarm_min[5]_i_1 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(dec_min0),
        .I4(inc_min0),
        .O(\mode_reg[2]_5 ));
  LUT6 #(
    .INIT(64'h00000000000A0008)) 
    \alarm_min[5]_i_3 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(btn_down_pulse),
        .I2(\mode_reg[1]_0 [0]),
        .I3(set_sel),
        .I4(\alarm_hour_reg[4] ),
        .I5(mode),
        .O(dec_min0));
  LUT6 #(
    .INIT(64'h00000000000A0008)) 
    \alarm_min[5]_i_4 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(btn_up_pulse),
        .I2(\mode_reg[1]_0 [0]),
        .I3(set_sel),
        .I4(btn_pulse),
        .I5(mode),
        .O(inc_min0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00FEFE00)) 
    blink_i_1
       (.I0(mode),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(blink),
        .I4(\cnt_reg[24] ),
        .O(\mode_reg[2]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg[24] ),
        .I1(mode),
        .I2(\mode_reg[1]_0 [1]),
        .I3(\mode_reg[1]_0 [0]),
        .O(\mode_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    colon_state_i_1
       (.I0(mode),
        .I1(\mode_reg[1]_0 [0]),
        .I2(show_seconds),
        .I3(\mode_reg[1]_0 [1]),
        .I4(IO_SSEG_DP_OBUF),
        .I5(tick_1hz),
        .O(\mode_reg[2]_11 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \cur_value[0]_i_1 
       (.I0(d1[0]),
        .I1(\cur_value_reg[0]_i_3_n_0 ),
        .I2(d3[0]),
        .I3(digit_index[0]),
        .I4(digit_index[1]),
        .I5(d2[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFBFBCBFBFBFBC8FB)) 
    \cur_value[0]_i_11 
       (.I0(\cur_value_reg[0]_i_4_1 ),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(\cur_value_reg[0]_i_4_0 ),
        .I4(dc_d3),
        .I5(show_seconds),
        .O(\cur_value[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFE0EFEFEFE0E0)) 
    \cur_value[0]_i_13 
       (.I0(\cur_value[0]_i_20_n_0 ),
        .I1(\cur_value_reg[0]_i_5_0 ),
        .I2(\mode_reg[1]_0 [1]),
        .I3(\mode_reg[1]_0 [0]),
        .I4(dc_d2),
        .I5(show_seconds),
        .O(\cur_value[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \cur_value[0]_i_17 
       (.I0(data3),
        .I1(\mode_reg[1]_0 [0]),
        .I2(set_sel),
        .I3(blink),
        .I4(\cur_value[0]_i_9_0 ),
        .O(\cur_value[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \cur_value[0]_i_18 
       (.I0(\cur_value[1]_i_3_0 [0]),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(set_sel),
        .I4(mode),
        .I5(blink),
        .O(dc_d0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \cur_value[0]_i_2 
       (.I0(\cur_value_reg[0]_0 ),
        .I1(mode),
        .I2(\cur_value[0]_i_7_n_0 ),
        .I3(\mode_reg[1]_0 [1]),
        .I4(\cur_value[0]_i_8_n_0 ),
        .O(d1[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \cur_value[0]_i_20 
       (.I0(set_sel),
        .I1(blink),
        .I2(\mode_reg[1]_0 [0]),
        .O(\cur_value[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAAAAAA)) 
    \cur_value[0]_i_21 
       (.I0(\cur_value[1]_i_5_0 [0]),
        .I1(\mode_reg[1]_0 [1]),
        .I2(set_sel),
        .I3(\mode_reg[1]_0 [0]),
        .I4(mode),
        .I5(blink),
        .O(dc_d2));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFCE)) 
    \cur_value[0]_i_7 
       (.I0(blink),
        .I1(\cur_value[0]_i_2_2 ),
        .I2(set_sel),
        .I3(\mode_reg[1]_0 [0]),
        .O(\cur_value[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEFEFEF40)) 
    \cur_value[0]_i_8 
       (.I0(\mode_reg[1]_0 [0]),
        .I1(\cur_value[0]_i_2_1 ),
        .I2(show_seconds),
        .I3(dc_d1),
        .I4(\cur_value[0]_i_2_0 ),
        .O(\cur_value[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \cur_value[0]_i_9 
       (.I0(\cur_value[0]_i_17_n_0 ),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(Q),
        .I4(show_seconds),
        .I5(dc_d0),
        .O(\cur_value[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \cur_value[1]_i_1 
       (.I0(d1[1]),
        .I1(\cur_value[1]_i_3_n_0 ),
        .I2(d3[1]),
        .I3(digit_index[0]),
        .I4(digit_index[1]),
        .I5(d2[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00CE)) 
    \cur_value[1]_i_10 
       (.I0(blink),
        .I1(\cur_value[1]_i_3_2 ),
        .I2(set_sel),
        .I3(\mode_reg[1]_0 [0]),
        .O(\cur_value[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EFEFEFEFEF40)) 
    \cur_value[1]_i_11 
       (.I0(\mode_reg[1]_0 [0]),
        .I1(\cur_value[1]_i_3_1 ),
        .I2(show_seconds),
        .I3(dc_d1),
        .I4(\cur_value[0]_i_2_0 ),
        .I5(\cur_value[1]_i_3_0 [1]),
        .O(\cur_value[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBB8BBBBBBB88)) 
    \cur_value[1]_i_12 
       (.I0(\cur_value_reg[1]_i_4_0 ),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(\cur_value_reg[1]_i_4_1 ),
        .I4(dc_d3),
        .I5(show_seconds),
        .O(\cur_value[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFD7FFC3)) 
    \cur_value[1]_i_16 
       (.I0(\mode_reg[1]_0 [0]),
        .I1(\cur_value[1]_i_5_0 [1]),
        .I2(\cur_value_reg[0]_i_4_0 ),
        .I3(dc_d3),
        .I4(show_seconds),
        .O(\cur_value[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB88888)) 
    \cur_value[1]_i_2 
       (.I0(\cur_value_reg[1]_0 ),
        .I1(mode),
        .I2(\cur_value_reg[1]_1 ),
        .I3(\mode_reg[1]_0 [0]),
        .I4(\mode_reg[1]_0 [1]),
        .I5(\cur_value[1]_i_8_n_0 ),
        .O(d1[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \cur_value[1]_i_3 
       (.I0(\cur_value_reg[1] ),
        .I1(mode),
        .I2(\cur_value[1]_i_10_n_0 ),
        .I3(\mode_reg[1]_0 [1]),
        .I4(\cur_value[1]_i_11_n_0 ),
        .O(\cur_value[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3330BBBB33308888)) 
    \cur_value[1]_i_5 
       (.I0(\cur_value_reg[1]_2 ),
        .I1(mode),
        .I2(\cur_value_reg[1]_3 ),
        .I3(\mode_reg[1]_0 [0]),
        .I4(\mode_reg[1]_0 [1]),
        .I5(\cur_value[1]_i_16_n_0 ),
        .O(d2[1]));
  LUT5 #(
    .INIT(32'hEFEFEF40)) 
    \cur_value[1]_i_8 
       (.I0(\mode_reg[1]_0 [0]),
        .I1(\cur_value[1]_i_2_0 ),
        .I2(show_seconds),
        .I3(dc_d1),
        .I4(\cur_value[1]_i_2_1 ),
        .O(\cur_value[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FAFAFFF0FCFC)) 
    \cur_value[2]_i_1 
       (.I0(d1[2]),
        .I1(\cur_value[2]_i_3_n_0 ),
        .I2(\cur_value[2]_i_4_n_0 ),
        .I3(d2[2]),
        .I4(digit_index[1]),
        .I5(digit_index[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h00CE)) 
    \cur_value[2]_i_10 
       (.I0(blink),
        .I1(\cur_value[2]_i_3_2 ),
        .I2(set_sel),
        .I3(\mode_reg[1]_0 [0]),
        .O(\cur_value[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEFEFEF40)) 
    \cur_value[2]_i_11 
       (.I0(\mode_reg[1]_0 [0]),
        .I1(\cur_value[2]_i_3_0 ),
        .I2(show_seconds),
        .I3(dc_d1),
        .I4(\cur_value[2]_i_3_1 ),
        .O(\cur_value[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBCBFBFBFBC8)) 
    \cur_value[2]_i_15 
       (.I0(\cur_value[2]_i_5_0 ),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(\cur_value[2]_i_5_1 ),
        .I4(dc_d3),
        .I5(show_seconds),
        .O(\cur_value[2]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \cur_value[2]_i_2 
       (.I0(\cur_value_reg[2]_0 ),
        .I1(mode),
        .I2(\cur_value_reg[2]_1 ),
        .I3(\mode_reg[1]_0 [1]),
        .I4(\cur_value[2]_i_8_n_0 ),
        .O(d1[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \cur_value[2]_i_3 
       (.I0(\cur_value_reg[2] ),
        .I1(mode),
        .I2(\cur_value[2]_i_10_n_0 ),
        .I3(\mode_reg[1]_0 [1]),
        .I4(\cur_value[2]_i_11_n_0 ),
        .O(\cur_value[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \cur_value[2]_i_4 
       (.I0(\cur_value[3]_i_11_n_0 ),
        .I1(mode),
        .I2(\mode_reg[1]_0 [1]),
        .I3(\cur_value_reg[2]_2 ),
        .I4(digit_index[0]),
        .I5(digit_index[1]),
        .O(\cur_value[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \cur_value[2]_i_5 
       (.I0(p_1_in[0]),
        .I1(\mode_reg[1]_0 [0]),
        .I2(sw_d2),
        .I3(\mode_reg[1]_0 [1]),
        .I4(mode),
        .I5(\cur_value[2]_i_15_n_0 ),
        .O(d2[2]));
  LUT5 #(
    .INIT(32'hEFEFEF40)) 
    \cur_value[2]_i_8 
       (.I0(\mode_reg[1]_0 [0]),
        .I1(\cur_value[2]_i_2_0 ),
        .I2(show_seconds),
        .I3(dc_d1),
        .I4(\cur_value[2]_i_2_1 ),
        .O(\cur_value[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \cur_value[3]_i_1 
       (.I0(d1[3]),
        .I1(\cur_value[3]_i_3_n_0 ),
        .I2(d3[3]),
        .I3(digit_index[0]),
        .I4(digit_index[1]),
        .I5(d2[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hB9F99999A8E88888)) 
    \cur_value[3]_i_11 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(\mode_reg[1]_0 [0]),
        .I2(set_sel),
        .I3(mode),
        .I4(blink),
        .I5(show_seconds),
        .O(\cur_value[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \cur_value[3]_i_19 
       (.I0(blink),
        .I1(mode),
        .I2(set_sel),
        .I3(\mode_reg[1]_0 [0]),
        .I4(\mode_reg[1]_0 [1]),
        .O(dc_d1));
  LUT6 #(
    .INIT(64'h118E1188008E0088)) 
    \cur_value[3]_i_2 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(\mode_reg[1]_0 [0]),
        .I2(set_sel),
        .I3(mode),
        .I4(blink),
        .I5(\cur_value_reg[3]_3 ),
        .O(d1[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \cur_value[3]_i_23 
       (.I0(blink),
        .I1(mode),
        .I2(\mode_reg[1]_0 [0]),
        .I3(set_sel),
        .I4(\mode_reg[1]_0 [1]),
        .O(dc_d3));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \cur_value[3]_i_3 
       (.I0(\cur_value_reg[3] ),
        .I1(mode),
        .I2(\cur_value[3]_i_8_n_0 ),
        .I3(\mode_reg[1]_0 [1]),
        .I4(\cur_value[3]_i_9_n_0 ),
        .O(\cur_value[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \cur_value[3]_i_4 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(\mode_reg[1]_0 [0]),
        .I2(p_1_in[1]),
        .I3(mode),
        .I4(\cur_value[3]_i_11_n_0 ),
        .O(d3[3]));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB88888)) 
    \cur_value[3]_i_5 
       (.I0(\cur_value_reg[3]_0 ),
        .I1(mode),
        .I2(\cur_value_reg[3]_1 ),
        .I3(\mode_reg[1]_0 [0]),
        .I4(\mode_reg[1]_0 [1]),
        .I5(\cur_value_reg[3]_2 ),
        .O(d2[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00CE)) 
    \cur_value[3]_i_8 
       (.I0(blink),
        .I1(\cur_value[3]_i_3_2 ),
        .I2(set_sel),
        .I3(\mode_reg[1]_0 [0]),
        .O(\cur_value[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEFEFEF40)) 
    \cur_value[3]_i_9 
       (.I0(\mode_reg[1]_0 [0]),
        .I1(\cur_value[3]_i_3_0 ),
        .I2(show_seconds),
        .I3(dc_d1),
        .I4(\cur_value[3]_i_3_1 ),
        .O(\cur_value[3]_i_9_n_0 ));
  MUXF7 \cur_value_reg[0]_i_3 
       (.I0(\cur_value[0]_i_9_n_0 ),
        .I1(\cur_value_reg[0] ),
        .O(\cur_value_reg[0]_i_3_n_0 ),
        .S(mode));
  MUXF7 \cur_value_reg[0]_i_4 
       (.I0(\cur_value[0]_i_11_n_0 ),
        .I1(\cur_value_reg[0]_2 ),
        .O(d3[0]),
        .S(mode));
  MUXF7 \cur_value_reg[0]_i_5 
       (.I0(\cur_value[0]_i_13_n_0 ),
        .I1(\cur_value_reg[0]_1 ),
        .O(d2[0]),
        .S(mode));
  MUXF7 \cur_value_reg[1]_i_4 
       (.I0(\cur_value[1]_i_12_n_0 ),
        .I1(\cur_value_reg[1]_4 ),
        .O(d3[1]),
        .S(mode));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \hour_r[2]_i_2 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [0]),
        .I2(set_sel),
        .I3(\mode_reg[1]_0 [1]),
        .I4(btn_up_pulse),
        .I5(btn_pulse),
        .O(\mode_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \hour_r[4]_i_3 
       (.I0(skip_tick_reg_0),
        .I1(mode),
        .I2(set_sel),
        .I3(\mode_reg[1]_0 [0]),
        .I4(\mode_reg[1]_0 [1]),
        .O(\mode_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    init_done_i_1
       (.I0(init_done),
        .I1(\mode_reg[1]_0 [0]),
        .I2(\mode_reg[1]_0 [1]),
        .I3(mode),
        .O(init_done_reg));
  LUT6 #(
    .INIT(64'h0202020002020202)) 
    \min[5]_i_1 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [0]),
        .I2(\mode_reg[1]_0 [1]),
        .I3(\min_reg[5] ),
        .I4(\min_reg[5]_0 ),
        .I5(\min_reg[5]_1 ),
        .O(\mode_reg[2]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \min[5]_i_1__0 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [0]),
        .I2(\mode_reg[1]_0 [1]),
        .O(\mode_reg[2]_9 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \minute[5]_i_8 
       (.I0(mode),
        .I1(set_sel),
        .I2(\mode_reg[1]_0 [0]),
        .I3(\mode_reg[1]_0 [1]),
        .I4(btn_up_pulse),
        .I5(btn_pulse),
        .O(\mode_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFFF04FF)) 
    \minute[5]_i_9 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [0]),
        .I2(\mode_reg[1]_0 [1]),
        .I3(tick_1hz),
        .I4(skip_tick_reg_1),
        .O(\mode_reg[2]_13 ));
  LUT6 #(
    .INIT(64'h030703070307A0F0)) 
    \mode[0]_i_1 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(c_p),
        .I4(\mode_reg[2]_14 ),
        .I5(btn_left_pulse),
        .O(\mode[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00140014001488CC)) 
    \mode[1]_i_1 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(c_p),
        .I4(\mode_reg[2]_14 ),
        .I5(btn_left_pulse),
        .O(\mode[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h024202420242AAAA)) 
    \mode[2]_i_1 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(c_p),
        .I4(\mode_reg[2]_14 ),
        .I5(btn_left_pulse),
        .O(\mode[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\mode[0]_i_1_n_0 ),
        .Q(\mode_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\mode[1]_i_1_n_0 ),
        .Q(\mode_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\mode[2]_i_1_n_0 ),
        .Q(mode),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040400000000000)) 
    running_i_1
       (.I0(\mode_reg[1]_0 [1]),
        .I1(\mode_reg[1]_0 [0]),
        .I2(mode),
        .I3(r_p),
        .I4(\sec_reg[5]_2 ),
        .I5(\sec_reg[5]_3 ),
        .O(\mode_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h5545)) 
    \sec[1]_i_2__0 
       (.I0(time_valid_pulse),
        .I1(\mode_reg[1]_0 [1]),
        .I2(\mode_reg[1]_0 [0]),
        .I3(mode),
        .O(time_valid_pulse_reg));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \sec[5]_i_11 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [0]),
        .I2(\mode_reg[1]_0 [1]),
        .I3(cd_en_d),
        .O(\mode_reg[2]_8 ));
  LUT6 #(
    .INIT(64'h0202020002000200)) 
    \sec[5]_i_1__0 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [0]),
        .I2(\mode_reg[1]_0 [1]),
        .I3(\sec_reg[5] ),
        .I4(\sec_reg[5]_0 ),
        .I5(\sec_reg[5]_1 ),
        .O(\mode_reg[2]_6 ));
  LUT6 #(
    .INIT(64'hBFBFFFBFFFFFFFFF)) 
    \sec[5]_i_1__1 
       (.I0(\mode_reg[1]_0 [1]),
        .I1(\mode_reg[1]_0 [0]),
        .I2(mode),
        .I3(c_p),
        .I4(\sec_reg[5]_2 ),
        .I5(\sec_reg[5]_3 ),
        .O(\mode_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h000000FB)) 
    \sec[5]_i_4 
       (.I0(mode),
        .I1(\mode_reg[1]_0 [0]),
        .I2(\mode_reg[1]_0 [1]),
        .I3(time_valid_pulse),
        .I4(\sec_reg[4] ),
        .O(\mode_reg[2]_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00030002)) 
    \sec_disp[5]_i_1 
       (.I0(btn_right_pulse),
        .I1(mode),
        .I2(\mode_reg[1]_0 [1]),
        .I3(\mode_reg[1]_0 [0]),
        .I4(show_seconds_reg),
        .I5(\sec_disp_reg[0] ),
        .O(btn_right_pulse_reg));
  LUT6 #(
    .INIT(64'h01140000A996AAAA)) 
    set_sel_i_1
       (.I0(set_sel),
        .I1(\mode_reg[1]_0 [0]),
        .I2(mode),
        .I3(\mode_reg[1]_0 [1]),
        .I4(r_p),
        .I5(l_p),
        .O(set_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    set_sel_reg
       (.C(clk),
        .CE(1'b1),
        .D(set_sel_i_1_n_0),
        .Q(set_sel),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000100010100)) 
    show_seconds_i_1
       (.I0(mode),
        .I1(\mode_reg[1]_0 [0]),
        .I2(\mode_reg[1]_0 [1]),
        .I3(show_seconds),
        .I4(show_seconds_reg),
        .I5(btn_right_pulse),
        .O(\mode_reg[2]_10 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC8CCFAFE)) 
    skip_tick_i_1
       (.I0(set_min_mode0),
        .I1(skip_tick_reg_1),
        .I2(set_hour_mode0),
        .I3(tick_1hz),
        .I4(skip_tick_reg_0),
        .I5(time_valid_pulse),
        .O(skip_tick_reg));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    skip_tick_i_2
       (.I0(\mode_reg[1]_0 [1]),
        .I1(\mode_reg[1]_0 [0]),
        .I2(set_sel),
        .I3(mode),
        .O(set_min_mode0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    skip_tick_i_3
       (.I0(\mode_reg[1]_0 [1]),
        .I1(set_sel),
        .I2(\mode_reg[1]_0 [0]),
        .I3(mode),
        .O(set_hour_mode0));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    tx_start_i_1
       (.I0(mode),
        .I1(\mode_reg[1]_0 [0]),
        .I2(tx_start_reg),
        .I3(btn_center_pulse),
        .I4(\mode_reg[1]_0 [1]),
        .I5(tx_busy),
        .O(tx_start0));
endmodule

module alarm
   (init_done,
    alarm_match,
    Q,
    \alarm_hour_reg[4]_0 ,
    \alarm_hour_reg[4]_1 ,
    blink_reg,
    blink_reg_0,
    blink_reg_1,
    blink_reg_2,
    \alarm_min_reg[1]_0 ,
    \alarm_min_reg[1]_1 ,
    \alarm_min_reg[1]_2 ,
    blink_reg_3,
    \alarm_min_reg[1]_3 ,
    set_sel_reg,
    init_done_reg_0,
    clk_IBUF_BUFG,
    rst_sys,
    alarm_match_reg_0,
    inc_min0,
    inc_hour0,
    set_sel,
    blink,
    mode,
    SR,
    E,
    \alarm_min_reg[5]_0 );
  output init_done;
  output alarm_match;
  output [5:0]Q;
  output [4:0]\alarm_hour_reg[4]_0 ;
  output \alarm_hour_reg[4]_1 ;
  output blink_reg;
  output blink_reg_0;
  output blink_reg_1;
  output blink_reg_2;
  output \alarm_min_reg[1]_0 ;
  output \alarm_min_reg[1]_1 ;
  output \alarm_min_reg[1]_2 ;
  output blink_reg_3;
  output \alarm_min_reg[1]_3 ;
  output set_sel_reg;
  input init_done_reg_0;
  input clk_IBUF_BUFG;
  input rst_sys;
  input alarm_match_reg_0;
  input inc_min0;
  input inc_hour0;
  input set_sel;
  input blink;
  input [0:0]mode;
  input [0:0]SR;
  input [0:0]E;
  input [0:0]\alarm_min_reg[5]_0 ;

  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [4:0]\alarm_hour_reg[4]_0 ;
  wire \alarm_hour_reg[4]_1 ;
  wire alarm_match;
  wire alarm_match_reg_0;
  wire \alarm_min[0]_i_1_n_0 ;
  wire \alarm_min[1]_i_1_n_0 ;
  wire \alarm_min[2]_i_1_n_0 ;
  wire \alarm_min[2]_i_2_n_0 ;
  wire \alarm_min[2]_i_3_n_0 ;
  wire \alarm_min[3]_i_2_n_0 ;
  wire \alarm_min[3]_i_3_n_0 ;
  wire \alarm_min[4]_i_2_n_0 ;
  wire \alarm_min[4]_i_3_n_0 ;
  wire \alarm_min[5]_i_5_n_0 ;
  wire \alarm_min[5]_i_6_n_0 ;
  wire \alarm_min_reg[1]_0 ;
  wire \alarm_min_reg[1]_1 ;
  wire \alarm_min_reg[1]_2 ;
  wire \alarm_min_reg[1]_3 ;
  wire \alarm_min_reg[3]_i_1_n_0 ;
  wire \alarm_min_reg[4]_i_1_n_0 ;
  wire [0:0]\alarm_min_reg[5]_0 ;
  wire \alarm_min_reg[5]_i_2_n_0 ;
  wire blink;
  wire blink_reg;
  wire blink_reg_0;
  wire blink_reg_1;
  wire blink_reg_2;
  wire blink_reg_3;
  wire clk_IBUF_BUFG;
  wire inc_hour0;
  wire inc_min0;
  wire init_done;
  wire init_done_reg_0;
  wire [0:0]mode;
  wire [4:0]p_0_in;
  wire rst_sys;
  wire set_sel;
  wire set_sel_reg;

  LUT1 #(
    .INIT(2'h1)) 
    \alarm_hour[0]_i_1 
       (.I0(\alarm_hour_reg[4]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \alarm_hour[1]_i_1 
       (.I0(inc_hour0),
        .I1(\alarm_hour_reg[4]_0 [1]),
        .I2(\alarm_hour_reg[4]_0 [0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6CC9)) 
    \alarm_hour[2]_i_1 
       (.I0(inc_hour0),
        .I1(\alarm_hour_reg[4]_0 [2]),
        .I2(\alarm_hour_reg[4]_0 [0]),
        .I3(\alarm_hour_reg[4]_0 [1]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h77FFFFEE08000010)) 
    \alarm_hour[3]_i_1 
       (.I0(inc_hour0),
        .I1(\alarm_hour_reg[4]_0 [2]),
        .I2(\alarm_hour_reg[4]_0 [4]),
        .I3(\alarm_hour_reg[4]_0 [0]),
        .I4(\alarm_hour_reg[4]_0 [1]),
        .I5(\alarm_hour_reg[4]_0 [3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h6CCCCCCC4CCCCCC9)) 
    \alarm_hour[4]_i_3 
       (.I0(inc_hour0),
        .I1(\alarm_hour_reg[4]_0 [4]),
        .I2(\alarm_hour_reg[4]_0 [2]),
        .I3(\alarm_hour_reg[4]_0 [0]),
        .I4(\alarm_hour_reg[4]_0 [1]),
        .I5(\alarm_hour_reg[4]_0 [3]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \alarm_hour_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[0]),
        .Q(\alarm_hour_reg[4]_0 [0]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \alarm_hour_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[1]),
        .Q(\alarm_hour_reg[4]_0 [1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \alarm_hour_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[2]),
        .Q(\alarm_hour_reg[4]_0 [2]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alarm_hour_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[3]),
        .Q(\alarm_hour_reg[4]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alarm_hour_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[4]),
        .Q(\alarm_hour_reg[4]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    alarm_match_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alarm_match_reg_0),
        .Q(alarm_match),
        .R(rst_sys));
  LUT4 #(
    .INIT(16'h30BB)) 
    \alarm_min[0]_i_1 
       (.I0(\alarm_min[2]_i_2_n_0 ),
        .I1(inc_min0),
        .I2(\alarm_min[2]_i_3_n_0 ),
        .I3(Q[0]),
        .O(\alarm_min[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h33B8B833)) 
    \alarm_min[1]_i_1 
       (.I0(\alarm_min[2]_i_2_n_0 ),
        .I1(inc_min0),
        .I2(\alarm_min[2]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\alarm_min[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0880808038B0B083)) 
    \alarm_min[2]_i_1 
       (.I0(\alarm_min[2]_i_2_n_0 ),
        .I1(inc_min0),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\alarm_min[2]_i_3_n_0 ),
        .O(\alarm_min[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \alarm_min[2]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\alarm_min[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \alarm_min[2]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\alarm_min[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \alarm_min[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\alarm_min[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6C4C6CCC6CCC6CCC)) 
    \alarm_min[3]_i_3 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\alarm_min[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \alarm_min[4]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\alarm_min[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7FFF80008000)) 
    \alarm_min[4]_i_3 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\alarm_min[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \alarm_min[5]_i_5 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\alarm_min[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F8000FFFF0000)) 
    \alarm_min[5]_i_6 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\alarm_min[5]_i_6_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \alarm_min_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\alarm_min_reg[5]_0 ),
        .D(\alarm_min[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alarm_min_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\alarm_min_reg[5]_0 ),
        .D(\alarm_min[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \alarm_min_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\alarm_min_reg[5]_0 ),
        .D(\alarm_min[2]_i_1_n_0 ),
        .Q(Q[2]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alarm_min_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\alarm_min_reg[5]_0 ),
        .D(\alarm_min_reg[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  MUXF7 \alarm_min_reg[3]_i_1 
       (.I0(\alarm_min[3]_i_2_n_0 ),
        .I1(\alarm_min[3]_i_3_n_0 ),
        .O(\alarm_min_reg[3]_i_1_n_0 ),
        .S(inc_min0));
  FDRE #(
    .INIT(1'b0)) 
    \alarm_min_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\alarm_min_reg[5]_0 ),
        .D(\alarm_min_reg[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  MUXF7 \alarm_min_reg[4]_i_1 
       (.I0(\alarm_min[4]_i_2_n_0 ),
        .I1(\alarm_min[4]_i_3_n_0 ),
        .O(\alarm_min_reg[4]_i_1_n_0 ),
        .S(inc_min0));
  FDRE #(
    .INIT(1'b0)) 
    \alarm_min_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\alarm_min_reg[5]_0 ),
        .D(\alarm_min_reg[5]_i_2_n_0 ),
        .Q(Q[5]),
        .R(SR));
  MUXF7 \alarm_min_reg[5]_i_2 
       (.I0(\alarm_min[5]_i_5_n_0 ),
        .I1(\alarm_min[5]_i_6_n_0 ),
        .O(\alarm_min_reg[5]_i_2_n_0 ),
        .S(inc_min0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h3E830FE0)) 
    \cur_value[0]_i_15 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[4]),
        .O(\alarm_min_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hF8FF88F88888FF88)) 
    \cur_value[0]_i_19 
       (.I0(blink),
        .I1(set_sel),
        .I2(\alarm_hour_reg[4]_0 [1]),
        .I3(\alarm_hour_reg[4]_0 [4]),
        .I4(\alarm_hour_reg[4]_0 [2]),
        .I5(\alarm_hour_reg[4]_0 [3]),
        .O(blink_reg));
  LUT6 #(
    .INIT(64'h888FF888F8F88FF8)) 
    \cur_value[1]_i_15 
       (.I0(blink),
        .I1(set_sel),
        .I2(\alarm_hour_reg[4]_0 [1]),
        .I3(\alarm_hour_reg[4]_0 [4]),
        .I4(\alarm_hour_reg[4]_0 [2]),
        .I5(\alarm_hour_reg[4]_0 [3]),
        .O(blink_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h9429A54A)) 
    \cur_value[1]_i_22 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[4]),
        .O(\alarm_min_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFA8A8A8)) 
    \cur_value[1]_i_25 
       (.I0(\alarm_hour_reg[4]_0 [4]),
        .I1(\alarm_hour_reg[4]_0 [3]),
        .I2(\alarm_hour_reg[4]_0 [2]),
        .I3(set_sel),
        .I4(blink),
        .I5(mode),
        .O(\alarm_hour_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hDD7D5D75CC3C0C30)) 
    \cur_value[1]_i_7 
       (.I0(set_sel),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(blink),
        .O(set_sel_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h18C6318C)) 
    \cur_value[2]_i_22 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\alarm_min_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h88F8FF8888FF8F88)) 
    \cur_value[2]_i_26 
       (.I0(blink),
        .I1(set_sel),
        .I2(\alarm_hour_reg[4]_0 [1]),
        .I3(\alarm_hour_reg[4]_0 [4]),
        .I4(\alarm_hour_reg[4]_0 [2]),
        .I5(\alarm_hour_reg[4]_0 [3]),
        .O(blink_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFC00FEAA)) 
    \cur_value[2]_i_7 
       (.I0(blink),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(set_sel),
        .I5(mode),
        .O(blink_reg_3));
  LUT6 #(
    .INIT(64'h8F888888888FF888)) 
    \cur_value[3]_i_13 
       (.I0(blink),
        .I1(set_sel),
        .I2(\alarm_hour_reg[4]_0 [1]),
        .I3(\alarm_hour_reg[4]_0 [4]),
        .I4(\alarm_hour_reg[4]_0 [3]),
        .I5(\alarm_hour_reg[4]_0 [2]),
        .O(blink_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h21084210)) 
    \cur_value[3]_i_17 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\alarm_min_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    init_done_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(init_done_reg_0),
        .Q(init_done),
        .R(1'b0));
endmodule

module alert_ctrl
   (BUZZER_OBUF,
    LD_OBUF,
    alarm_match,
    clk_IBUF_BUFG,
    rst_sys,
    cd_finished,
    p_2_in,
    blink_alert,
    tick_1hz);
  output BUZZER_OBUF;
  output [1:0]LD_OBUF;
  input alarm_match;
  input clk_IBUF_BUFG;
  input rst_sys;
  input cd_finished;
  input p_2_in;
  input blink_alert;
  input tick_1hz;

  wire BUZZER_OBUF;
  wire \FSM_onehot_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1__0_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [1:0]LD_OBUF;
  wire alarm_match;
  wire alarm_match_d;
  wire alarm_req;
  wire alarm_req_i_1_n_0;
  wire alarm_req_reg_n_0;
  wire [4:1]alarm_timer;
  wire \alarm_timer[0]_i_1_n_0 ;
  wire \alarm_timer_reg_n_0_[0] ;
  wire \alarm_timer_reg_n_0_[1] ;
  wire \alarm_timer_reg_n_0_[2] ;
  wire \alarm_timer_reg_n_0_[3] ;
  wire \alarm_timer_reg_n_0_[4] ;
  wire blink_alert;
  wire cd_finished;
  wire cd_finished_d;
  wire cd_req;
  wire cd_req_i_1_n_0;
  wire cd_req_reg_n_0;
  wire [2:1]cd_timer;
  wire \cd_timer[0]_i_1_n_0 ;
  wire \cd_timer_reg_n_0_[0] ;
  wire \cd_timer_reg_n_0_[1] ;
  wire \cd_timer_reg_n_0_[2] ;
  wire clk_IBUF_BUFG;
  wire p_2_in;
  wire rst_sys;
  wire state_next03_out;
  wire tick_1hz;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    BUZZER_OBUF_inst_i_1
       (.I0(cd_req),
        .I1(blink_alert),
        .I2(alarm_req),
        .O(BUZZER_OBUF));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(alarm_req),
        .I1(alarm_req_reg_n_0),
        .I2(cd_req),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(alarm_req_reg_n_0),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(cd_req),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hC8FFC800)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(alarm_req_reg_n_0),
        .I2(cd_req),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(alarm_req),
        .O(\FSM_onehot_state[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFA8FFA8FFA8)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(alarm_req_reg_n_0),
        .I2(cd_req_reg_n_0),
        .I3(\FSM_onehot_state[2]_i_3_n_0 ),
        .I4(state_next03_out),
        .I5(alarm_req),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAA00000000)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(p_2_in),
        .I1(\cd_timer_reg_n_0_[1] ),
        .I2(\cd_timer_reg_n_0_[0] ),
        .I3(\cd_timer_reg_n_0_[2] ),
        .I4(alarm_req_reg_n_0),
        .I5(cd_req),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(p_2_in),
        .I1(\alarm_timer_reg_n_0_[2] ),
        .I2(\alarm_timer_reg_n_0_[1] ),
        .I3(\alarm_timer_reg_n_0_[0] ),
        .I4(\alarm_timer_reg_n_0_[3] ),
        .I5(\alarm_timer_reg_n_0_[4] ),
        .O(state_next03_out));
  (* FSM_ENCODED_STATES = "CD:010,IDLE:001,ALARM:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1__0_n_0 ),
        .PRE(rst_sys),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "CD:010,IDLE:001,ALARM:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_sys),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(cd_req));
  (* FSM_ENCODED_STATES = "CD:010,IDLE:001,ALARM:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_sys),
        .D(\FSM_onehot_state[2]_i_1__0_n_0 ),
        .Q(alarm_req));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LD_OBUF[15]_inst_i_1 
       (.I0(alarm_req),
        .I1(blink_alert),
        .O(LD_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LD_OBUF[9]_inst_i_1 
       (.I0(cd_req),
        .I1(blink_alert),
        .O(LD_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    alarm_match_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_sys),
        .D(alarm_match),
        .Q(alarm_match_d));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    alarm_req_i_1
       (.I0(alarm_match_d),
        .I1(alarm_match),
        .I2(alarm_req),
        .I3(alarm_req_reg_n_0),
        .O(alarm_req_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    alarm_req_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_sys),
        .D(alarm_req_i_1_n_0),
        .Q(alarm_req_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \alarm_timer[0]_i_1 
       (.I0(alarm_req),
        .I1(\alarm_timer_reg_n_0_[0] ),
        .O(\alarm_timer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alarm_timer[1]_i_1 
       (.I0(alarm_req),
        .I1(\alarm_timer_reg_n_0_[1] ),
        .I2(\alarm_timer_reg_n_0_[0] ),
        .O(alarm_timer[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \alarm_timer[2]_i_1 
       (.I0(alarm_req),
        .I1(\alarm_timer_reg_n_0_[2] ),
        .I2(\alarm_timer_reg_n_0_[1] ),
        .I3(\alarm_timer_reg_n_0_[0] ),
        .O(alarm_timer[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \alarm_timer[3]_i_1 
       (.I0(alarm_req),
        .I1(\alarm_timer_reg_n_0_[3] ),
        .I2(\alarm_timer_reg_n_0_[2] ),
        .I3(\alarm_timer_reg_n_0_[0] ),
        .I4(\alarm_timer_reg_n_0_[1] ),
        .O(alarm_timer[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \alarm_timer[4]_i_1 
       (.I0(alarm_req),
        .I1(\alarm_timer_reg_n_0_[4] ),
        .I2(\alarm_timer_reg_n_0_[3] ),
        .I3(\alarm_timer_reg_n_0_[1] ),
        .I4(\alarm_timer_reg_n_0_[0] ),
        .I5(\alarm_timer_reg_n_0_[2] ),
        .O(alarm_timer[4]));
  FDCE #(
    .INIT(1'b0)) 
    \alarm_timer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(tick_1hz),
        .CLR(rst_sys),
        .D(\alarm_timer[0]_i_1_n_0 ),
        .Q(\alarm_timer_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \alarm_timer_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(tick_1hz),
        .CLR(rst_sys),
        .D(alarm_timer[1]),
        .Q(\alarm_timer_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \alarm_timer_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(tick_1hz),
        .CLR(rst_sys),
        .D(alarm_timer[2]),
        .Q(\alarm_timer_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \alarm_timer_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(tick_1hz),
        .CLR(rst_sys),
        .D(alarm_timer[3]),
        .Q(\alarm_timer_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \alarm_timer_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(tick_1hz),
        .CLR(rst_sys),
        .D(alarm_timer[4]),
        .Q(\alarm_timer_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    cd_finished_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_sys),
        .D(cd_finished),
        .Q(cd_finished_d));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    cd_req_i_1
       (.I0(cd_finished_d),
        .I1(cd_finished),
        .I2(cd_req),
        .I3(cd_req_reg_n_0),
        .O(cd_req_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    cd_req_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_sys),
        .D(cd_req_i_1_n_0),
        .Q(cd_req_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cd_timer[0]_i_1 
       (.I0(cd_req),
        .I1(\cd_timer_reg_n_0_[0] ),
        .O(\cd_timer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cd_timer[1]_i_1 
       (.I0(cd_req),
        .I1(\cd_timer_reg_n_0_[1] ),
        .I2(\cd_timer_reg_n_0_[0] ),
        .O(cd_timer[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \cd_timer[2]_i_1 
       (.I0(cd_req),
        .I1(\cd_timer_reg_n_0_[2] ),
        .I2(\cd_timer_reg_n_0_[1] ),
        .I3(\cd_timer_reg_n_0_[0] ),
        .O(cd_timer[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cd_timer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(tick_1hz),
        .CLR(rst_sys),
        .D(\cd_timer[0]_i_1_n_0 ),
        .Q(\cd_timer_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cd_timer_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(tick_1hz),
        .CLR(rst_sys),
        .D(cd_timer[1]),
        .Q(\cd_timer_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cd_timer_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(tick_1hz),
        .CLR(rst_sys),
        .D(cd_timer[2]),
        .Q(\cd_timer_reg_n_0_[2] ));
endmodule

module blink_gen
   (blink,
    \cnt_reg[0]_0 ,
    \cnt_reg[24]_0 ,
    clk_IBUF_BUFG,
    blink_reg_0);
  output blink;
  output \cnt_reg[0]_0 ;
  input \cnt_reg[24]_0 ;
  input clk_IBUF_BUFG;
  input blink_reg_0;

  wire blink;
  wire blink_reg_0;
  wire clk_IBUF_BUFG;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[0]_i_6_n_0 ;
  wire \cnt[0]_i_7_n_0 ;
  wire \cnt[0]_i_8_n_0 ;
  wire [24:0]cnt_reg;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_2_n_1 ;
  wire \cnt_reg[0]_i_2_n_2 ;
  wire \cnt_reg[0]_i_2_n_3 ;
  wire \cnt_reg[0]_i_2_n_4 ;
  wire \cnt_reg[0]_i_2_n_5 ;
  wire \cnt_reg[0]_i_2_n_6 ;
  wire \cnt_reg[0]_i_2_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_0 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[20]_i_1_n_0 ;
  wire \cnt_reg[20]_i_1_n_1 ;
  wire \cnt_reg[20]_i_1_n_2 ;
  wire \cnt_reg[20]_i_1_n_3 ;
  wire \cnt_reg[20]_i_1_n_4 ;
  wire \cnt_reg[20]_i_1_n_5 ;
  wire \cnt_reg[20]_i_1_n_6 ;
  wire \cnt_reg[20]_i_1_n_7 ;
  wire \cnt_reg[24]_0 ;
  wire \cnt_reg[24]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire [3:0]\NLW_cnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cnt_reg[24]_i_1_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    blink_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(blink_reg_0),
        .Q(blink),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt[0]_i_3 
       (.I0(\cnt[0]_i_5_n_0 ),
        .I1(\cnt[0]_i_6_n_0 ),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(cnt_reg[0]),
        .I4(\cnt[0]_i_8_n_0 ),
        .O(\cnt_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_4 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \cnt[0]_i_5 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[6]),
        .I5(cnt_reg[5]),
        .O(\cnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \cnt[0]_i_6 
       (.I0(cnt_reg[21]),
        .I1(cnt_reg[22]),
        .I2(cnt_reg[19]),
        .I3(cnt_reg[20]),
        .I4(cnt_reg[23]),
        .I5(cnt_reg[24]),
        .O(\cnt[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \cnt[0]_i_7 
       (.I0(cnt_reg[16]),
        .I1(cnt_reg[15]),
        .I2(cnt_reg[13]),
        .I3(cnt_reg[14]),
        .I4(cnt_reg[17]),
        .I5(cnt_reg[18]),
        .O(\cnt[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cnt[0]_i_8 
       (.I0(cnt_reg[9]),
        .I1(cnt_reg[10]),
        .I2(cnt_reg[7]),
        .I3(cnt_reg[8]),
        .I4(cnt_reg[12]),
        .I5(cnt_reg[11]),
        .O(\cnt[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_7 ),
        .Q(cnt_reg[0]),
        .R(\cnt_reg[24]_0 ));
  CARRY4 \cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_2_n_0 ,\cnt_reg[0]_i_2_n_1 ,\cnt_reg[0]_i_2_n_2 ,\cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_2_n_4 ,\cnt_reg[0]_i_2_n_5 ,\cnt_reg[0]_i_2_n_6 ,\cnt_reg[0]_i_2_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]),
        .R(\cnt_reg[24]_0 ));
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S(cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(cnt_reg[16]),
        .R(\cnt_reg[24]_0 ));
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\cnt_reg[16]_i_1_n_0 ,\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S(cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(cnt_reg[17]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(cnt_reg[18]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(cnt_reg[19]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_6 ),
        .Q(cnt_reg[1]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_7 ),
        .Q(cnt_reg[20]),
        .R(\cnt_reg[24]_0 ));
  CARRY4 \cnt_reg[20]_i_1 
       (.CI(\cnt_reg[16]_i_1_n_0 ),
        .CO({\cnt_reg[20]_i_1_n_0 ,\cnt_reg[20]_i_1_n_1 ,\cnt_reg[20]_i_1_n_2 ,\cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_1_n_4 ,\cnt_reg[20]_i_1_n_5 ,\cnt_reg[20]_i_1_n_6 ,\cnt_reg[20]_i_1_n_7 }),
        .S(cnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_6 ),
        .Q(cnt_reg[21]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_5 ),
        .Q(cnt_reg[22]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_4 ),
        .Q(cnt_reg[23]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[24]_i_1_n_7 ),
        .Q(cnt_reg[24]),
        .R(\cnt_reg[24]_0 ));
  CARRY4 \cnt_reg[24]_i_1 
       (.CI(\cnt_reg[20]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[24]_i_1_O_UNCONNECTED [3:1],\cnt_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,cnt_reg[24]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_5 ),
        .Q(cnt_reg[2]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_4 ),
        .Q(cnt_reg[3]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(\cnt_reg[24]_0 ));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_2_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(\cnt_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(\cnt_reg[24]_0 ));
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(\cnt_reg[24]_0 ));
endmodule

(* ORIG_REF_NAME = "blink_gen" *) 
module blink_gen_4
   (blink_alert,
    clk);
  output blink_alert;
  input clk;

  wire blink_alert;
  wire blink_i_1__0_n_0;
  wire clk;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[0]_i_3__0_n_0 ;
  wire \cnt[0]_i_4__0_n_0 ;
  wire \cnt[0]_i_5__0_n_0 ;
  wire \cnt[0]_i_6__0_n_0 ;
  wire \cnt[0]_i_7__0_n_0 ;
  wire \cnt[0]_i_8__0_n_0 ;
  wire [24:0]cnt_reg;
  wire \cnt_reg[0]_i_2__0_n_0 ;
  wire \cnt_reg[0]_i_2__0_n_1 ;
  wire \cnt_reg[0]_i_2__0_n_2 ;
  wire \cnt_reg[0]_i_2__0_n_3 ;
  wire \cnt_reg[0]_i_2__0_n_4 ;
  wire \cnt_reg[0]_i_2__0_n_5 ;
  wire \cnt_reg[0]_i_2__0_n_6 ;
  wire \cnt_reg[0]_i_2__0_n_7 ;
  wire \cnt_reg[12]_i_1__0_n_0 ;
  wire \cnt_reg[12]_i_1__0_n_1 ;
  wire \cnt_reg[12]_i_1__0_n_2 ;
  wire \cnt_reg[12]_i_1__0_n_3 ;
  wire \cnt_reg[12]_i_1__0_n_4 ;
  wire \cnt_reg[12]_i_1__0_n_5 ;
  wire \cnt_reg[12]_i_1__0_n_6 ;
  wire \cnt_reg[12]_i_1__0_n_7 ;
  wire \cnt_reg[16]_i_1__0_n_0 ;
  wire \cnt_reg[16]_i_1__0_n_1 ;
  wire \cnt_reg[16]_i_1__0_n_2 ;
  wire \cnt_reg[16]_i_1__0_n_3 ;
  wire \cnt_reg[16]_i_1__0_n_4 ;
  wire \cnt_reg[16]_i_1__0_n_5 ;
  wire \cnt_reg[16]_i_1__0_n_6 ;
  wire \cnt_reg[16]_i_1__0_n_7 ;
  wire \cnt_reg[20]_i_1__0_n_0 ;
  wire \cnt_reg[20]_i_1__0_n_1 ;
  wire \cnt_reg[20]_i_1__0_n_2 ;
  wire \cnt_reg[20]_i_1__0_n_3 ;
  wire \cnt_reg[20]_i_1__0_n_4 ;
  wire \cnt_reg[20]_i_1__0_n_5 ;
  wire \cnt_reg[20]_i_1__0_n_6 ;
  wire \cnt_reg[20]_i_1__0_n_7 ;
  wire \cnt_reg[24]_i_1__0_n_7 ;
  wire \cnt_reg[4]_i_1__0_n_0 ;
  wire \cnt_reg[4]_i_1__0_n_1 ;
  wire \cnt_reg[4]_i_1__0_n_2 ;
  wire \cnt_reg[4]_i_1__0_n_3 ;
  wire \cnt_reg[4]_i_1__0_n_4 ;
  wire \cnt_reg[4]_i_1__0_n_5 ;
  wire \cnt_reg[4]_i_1__0_n_6 ;
  wire \cnt_reg[4]_i_1__0_n_7 ;
  wire \cnt_reg[8]_i_1__0_n_0 ;
  wire \cnt_reg[8]_i_1__0_n_1 ;
  wire \cnt_reg[8]_i_1__0_n_2 ;
  wire \cnt_reg[8]_i_1__0_n_3 ;
  wire \cnt_reg[8]_i_1__0_n_4 ;
  wire \cnt_reg[8]_i_1__0_n_5 ;
  wire \cnt_reg[8]_i_1__0_n_6 ;
  wire \cnt_reg[8]_i_1__0_n_7 ;
  wire [3:0]\NLW_cnt_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_cnt_reg[24]_i_1__0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFBF00000040)) 
    blink_i_1__0
       (.I0(\cnt[0]_i_3__0_n_0 ),
        .I1(cnt_reg[11]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[6]),
        .I4(\cnt[0]_i_4__0_n_0 ),
        .I5(blink_alert),
        .O(blink_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    blink_reg
       (.C(clk),
        .CE(1'b1),
        .D(blink_i_1__0_n_0),
        .Q(blink_alert),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000040)) 
    \cnt[0]_i_1__0 
       (.I0(\cnt[0]_i_3__0_n_0 ),
        .I1(cnt_reg[11]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[6]),
        .I4(\cnt[0]_i_4__0_n_0 ),
        .O(\cnt[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \cnt[0]_i_3__0 
       (.I0(cnt_reg[20]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[12]),
        .I3(cnt_reg[13]),
        .I4(\cnt[0]_i_6__0_n_0 ),
        .O(\cnt[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFFFFFF)) 
    \cnt[0]_i_4__0 
       (.I0(\cnt[0]_i_7__0_n_0 ),
        .I1(\cnt[0]_i_8__0_n_0 ),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[7]),
        .I4(cnt_reg[21]),
        .I5(cnt_reg[22]),
        .O(\cnt[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_5__0 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cnt[0]_i_6__0 
       (.I0(cnt_reg[24]),
        .I1(cnt_reg[10]),
        .I2(cnt_reg[16]),
        .I3(cnt_reg[0]),
        .O(\cnt[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \cnt[0]_i_7__0 
       (.I0(cnt_reg[14]),
        .I1(cnt_reg[9]),
        .I2(cnt_reg[23]),
        .I3(cnt_reg[4]),
        .I4(cnt_reg[8]),
        .I5(cnt_reg[17]),
        .O(\cnt[0]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt[0]_i_8__0 
       (.I0(cnt_reg[18]),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[19]),
        .I3(cnt_reg[15]),
        .O(\cnt[0]_i_8__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2__0_n_7 ),
        .Q(cnt_reg[0]),
        .R(\cnt[0]_i_1__0_n_0 ));
  CARRY4 \cnt_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_2__0_n_0 ,\cnt_reg[0]_i_2__0_n_1 ,\cnt_reg[0]_i_2__0_n_2 ,\cnt_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_2__0_n_4 ,\cnt_reg[0]_i_2__0_n_5 ,\cnt_reg[0]_i_2__0_n_6 ,\cnt_reg[0]_i_2__0_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1__0_n_5 ),
        .Q(cnt_reg[10]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1__0_n_4 ),
        .Q(cnt_reg[11]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1__0_n_7 ),
        .Q(cnt_reg[12]),
        .R(\cnt[0]_i_1__0_n_0 ));
  CARRY4 \cnt_reg[12]_i_1__0 
       (.CI(\cnt_reg[8]_i_1__0_n_0 ),
        .CO({\cnt_reg[12]_i_1__0_n_0 ,\cnt_reg[12]_i_1__0_n_1 ,\cnt_reg[12]_i_1__0_n_2 ,\cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1__0_n_4 ,\cnt_reg[12]_i_1__0_n_5 ,\cnt_reg[12]_i_1__0_n_6 ,\cnt_reg[12]_i_1__0_n_7 }),
        .S(cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1__0_n_6 ),
        .Q(cnt_reg[13]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1__0_n_5 ),
        .Q(cnt_reg[14]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1__0_n_4 ),
        .Q(cnt_reg[15]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1__0_n_7 ),
        .Q(cnt_reg[16]),
        .R(\cnt[0]_i_1__0_n_0 ));
  CARRY4 \cnt_reg[16]_i_1__0 
       (.CI(\cnt_reg[12]_i_1__0_n_0 ),
        .CO({\cnt_reg[16]_i_1__0_n_0 ,\cnt_reg[16]_i_1__0_n_1 ,\cnt_reg[16]_i_1__0_n_2 ,\cnt_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1__0_n_4 ,\cnt_reg[16]_i_1__0_n_5 ,\cnt_reg[16]_i_1__0_n_6 ,\cnt_reg[16]_i_1__0_n_7 }),
        .S(cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1__0_n_6 ),
        .Q(cnt_reg[17]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1__0_n_5 ),
        .Q(cnt_reg[18]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1__0_n_4 ),
        .Q(cnt_reg[19]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2__0_n_6 ),
        .Q(cnt_reg[1]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1__0_n_7 ),
        .Q(cnt_reg[20]),
        .R(\cnt[0]_i_1__0_n_0 ));
  CARRY4 \cnt_reg[20]_i_1__0 
       (.CI(\cnt_reg[16]_i_1__0_n_0 ),
        .CO({\cnt_reg[20]_i_1__0_n_0 ,\cnt_reg[20]_i_1__0_n_1 ,\cnt_reg[20]_i_1__0_n_2 ,\cnt_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_1__0_n_4 ,\cnt_reg[20]_i_1__0_n_5 ,\cnt_reg[20]_i_1__0_n_6 ,\cnt_reg[20]_i_1__0_n_7 }),
        .S(cnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1__0_n_6 ),
        .Q(cnt_reg[21]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1__0_n_5 ),
        .Q(cnt_reg[22]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1__0_n_4 ),
        .Q(cnt_reg[23]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[24]_i_1__0_n_7 ),
        .Q(cnt_reg[24]),
        .R(\cnt[0]_i_1__0_n_0 ));
  CARRY4 \cnt_reg[24]_i_1__0 
       (.CI(\cnt_reg[20]_i_1__0_n_0 ),
        .CO(\NLW_cnt_reg[24]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[24]_i_1__0_O_UNCONNECTED [3:1],\cnt_reg[24]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,cnt_reg[24]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2__0_n_5 ),
        .Q(cnt_reg[2]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2__0_n_4 ),
        .Q(cnt_reg[3]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1__0_n_7 ),
        .Q(cnt_reg[4]),
        .R(\cnt[0]_i_1__0_n_0 ));
  CARRY4 \cnt_reg[4]_i_1__0 
       (.CI(\cnt_reg[0]_i_2__0_n_0 ),
        .CO({\cnt_reg[4]_i_1__0_n_0 ,\cnt_reg[4]_i_1__0_n_1 ,\cnt_reg[4]_i_1__0_n_2 ,\cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1__0_n_4 ,\cnt_reg[4]_i_1__0_n_5 ,\cnt_reg[4]_i_1__0_n_6 ,\cnt_reg[4]_i_1__0_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1__0_n_6 ),
        .Q(cnt_reg[5]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1__0_n_5 ),
        .Q(cnt_reg[6]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1__0_n_4 ),
        .Q(cnt_reg[7]),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1__0_n_7 ),
        .Q(cnt_reg[8]),
        .R(\cnt[0]_i_1__0_n_0 ));
  CARRY4 \cnt_reg[8]_i_1__0 
       (.CI(\cnt_reg[4]_i_1__0_n_0 ),
        .CO({\cnt_reg[8]_i_1__0_n_0 ,\cnt_reg[8]_i_1__0_n_1 ,\cnt_reg[8]_i_1__0_n_2 ,\cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1__0_n_4 ,\cnt_reg[8]_i_1__0_n_5 ,\cnt_reg[8]_i_1__0_n_6 ,\cnt_reg[8]_i_1__0_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1__0_n_6 ),
        .Q(cnt_reg[9]),
        .R(\cnt[0]_i_1__0_n_0 ));
endmodule

module countdown
   (cd_en_d,
    set_sel_reg_0,
    cd_finished,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[1]_0 ,
    btn_center_pulse_reg,
    \FSM_sequential_state_reg[2]_0 ,
    Q,
    tick_1hz_reg,
    \FSM_sequential_state_reg[2]_1 ,
    p_1_in,
    \FSM_sequential_state_reg[0]_1 ,
    \set_sec_reg[4]_0 ,
    \sec_reg[1]_0 ,
    \min_reg[1]_0 ,
    \mode_reg[0] ,
    set_sel_reg_1,
    \mode_reg[0]_0 ,
    \mode_reg[0]_1 ,
    \sec_reg[0]_0 ,
    \sec_reg[1]_1 ,
    \mode_reg[0]_2 ,
    \mode_reg[0]_3 ,
    \min_reg[1]_1 ,
    \min_reg[0]_0 ,
    \mode_reg[0]_4 ,
    \mode_reg[0]_5 ,
    \mode_reg[0]_6 ,
    \mode_reg[0]_7 ,
    LD_OBUF,
    clk,
    tick_1hz,
    r_p,
    \sec_reg[5]_0 ,
    c_p,
    \sec_reg[5]_1 ,
    btn_center_pulse,
    btn_pulse,
    \sec_reg[5]_2 ,
    btn_right_pulse,
    \sec_reg[3]_0 ,
    \min_reg[2]_0 ,
    \min_reg[4]_0 ,
    \min_reg[4]_1 ,
    d_p,
    \min_reg[4]_2 ,
    \min_reg[1]_2 ,
    btn_down_pulse,
    blink,
    \sec_reg[0]_1 ,
    \sec_reg[0]_2 ,
    \sec_reg[4]_0 ,
    \sec_reg[2]_0 ,
    btn_up_pulse,
    \min_reg[5]_0 ,
    u_p,
    mode,
    sw_d1,
    sw_d0,
    \cur_value[1]_i_3 ,
    sw_d2,
    sw_d3,
    \cur_value[1]_i_5 ,
    E,
    \sec_reg[5]_3 );
  output cd_en_d;
  output set_sel_reg_0;
  output cd_finished;
  output [0:0]\FSM_sequential_state_reg[0]_0 ;
  output \FSM_sequential_state_reg[1]_0 ;
  output btn_center_pulse_reg;
  output \FSM_sequential_state_reg[2]_0 ;
  output [2:0]Q;
  output tick_1hz_reg;
  output \FSM_sequential_state_reg[2]_1 ;
  output [1:0]p_1_in;
  output \FSM_sequential_state_reg[0]_1 ;
  output [2:0]\set_sec_reg[4]_0 ;
  output \sec_reg[1]_0 ;
  output \min_reg[1]_0 ;
  output \mode_reg[0] ;
  output set_sel_reg_1;
  output \mode_reg[0]_0 ;
  output \mode_reg[0]_1 ;
  output \sec_reg[0]_0 ;
  output \sec_reg[1]_1 ;
  output \mode_reg[0]_2 ;
  output \mode_reg[0]_3 ;
  output \min_reg[1]_1 ;
  output \min_reg[0]_0 ;
  output \mode_reg[0]_4 ;
  output \mode_reg[0]_5 ;
  output \mode_reg[0]_6 ;
  output \mode_reg[0]_7 ;
  input [0:0]LD_OBUF;
  input clk;
  input tick_1hz;
  input r_p;
  input \sec_reg[5]_0 ;
  input c_p;
  input \sec_reg[5]_1 ;
  input btn_center_pulse;
  input btn_pulse;
  input \sec_reg[5]_2 ;
  input btn_right_pulse;
  input \sec_reg[3]_0 ;
  input \min_reg[2]_0 ;
  input \min_reg[4]_0 ;
  input \min_reg[4]_1 ;
  input d_p;
  input \min_reg[4]_2 ;
  input \min_reg[1]_2 ;
  input btn_down_pulse;
  input blink;
  input \sec_reg[0]_1 ;
  input \sec_reg[0]_2 ;
  input \sec_reg[4]_0 ;
  input \sec_reg[2]_0 ;
  input btn_up_pulse;
  input \min_reg[5]_0 ;
  input u_p;
  input [1:0]mode;
  input [2:0]sw_d1;
  input [2:0]sw_d0;
  input [0:0]\cur_value[1]_i_3 ;
  input [1:0]sw_d2;
  input [2:0]sw_d3;
  input [0:0]\cur_value[1]_i_5 ;
  input [0:0]E;
  input [0:0]\sec_reg[5]_3 ;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire [0:0]\FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[2]_1 ;
  wire [0:0]LD_OBUF;
  wire [2:0]Q;
  wire blink;
  wire btn_center_pulse;
  wire btn_center_pulse_reg;
  wire btn_down_pulse;
  wire btn_pulse;
  wire btn_right_pulse;
  wire btn_up_pulse;
  wire c_p;
  wire cd_en_d;
  wire cd_finished;
  wire clk;
  wire \cur_value[1]_i_21_n_0 ;
  wire \cur_value[1]_i_27_n_0 ;
  wire [0:0]\cur_value[1]_i_3 ;
  wire \cur_value[1]_i_30_n_0 ;
  wire [0:0]\cur_value[1]_i_5 ;
  wire \cur_value[2]_i_20_n_0 ;
  wire \cur_value[2]_i_21_n_0 ;
  wire \cur_value[3]_i_16_n_0 ;
  wire \cur_value[3]_i_21_n_0 ;
  wire d_p;
  wire finished_i_1_n_0;
  wire finished_i_2_n_0;
  wire finished_i_3_n_0;
  wire [5:0]mem_min;
  wire [5:1]mem_sec;
  wire \mem_sec[5]_i_1_n_0 ;
  wire [5:0]min;
  wire \min[1]_i_2_n_0 ;
  wire \min[1]_i_3_n_0 ;
  wire \min[2]_i_2_n_0 ;
  wire \min[2]_i_3_n_0 ;
  wire \min[2]_i_4_n_0 ;
  wire \min[3]_i_2_n_0 ;
  wire \min[3]_i_3_n_0 ;
  wire \min[3]_i_4_n_0 ;
  wire \min[4]_i_13_n_0 ;
  wire \min[4]_i_2_n_0 ;
  wire \min[4]_i_3_n_0 ;
  wire \min[4]_i_5_n_0 ;
  wire \min[4]_i_6_n_0 ;
  wire \min[4]_i_7_n_0 ;
  wire \min[4]_i_9_n_0 ;
  wire \min[5]_i_10_n_0 ;
  wire \min[5]_i_12_n_0 ;
  wire \min[5]_i_6_n_0 ;
  wire \min[5]_i_7_n_0 ;
  wire \min[5]_i_8__0_n_0 ;
  wire \min[5]_i_9__0_n_0 ;
  wire [5:0]min__0;
  wire \min_reg[0]_0 ;
  wire \min_reg[1]_0 ;
  wire \min_reg[1]_1 ;
  wire \min_reg[1]_2 ;
  wire \min_reg[2]_0 ;
  wire \min_reg[4]_0 ;
  wire \min_reg[4]_1 ;
  wire \min_reg[4]_2 ;
  wire \min_reg[5]_0 ;
  wire [1:0]mode;
  wire \mode_reg[0] ;
  wire \mode_reg[0]_0 ;
  wire \mode_reg[0]_1 ;
  wire \mode_reg[0]_2 ;
  wire \mode_reg[0]_3 ;
  wire \mode_reg[0]_4 ;
  wire \mode_reg[0]_5 ;
  wire \mode_reg[0]_6 ;
  wire \mode_reg[0]_7 ;
  wire [1:0]p_1_in;
  wire r_p;
  wire [5:0]sec;
  wire \sec[0]_i_2_n_0 ;
  wire \sec[0]_i_3_n_0 ;
  wire \sec[0]_i_4_n_0 ;
  wire \sec[1]_i_2_n_0 ;
  wire \sec[1]_i_3_n_0 ;
  wire \sec[1]_i_4_n_0 ;
  wire \sec[1]_i_5_n_0 ;
  wire \sec[1]_i_6_n_0 ;
  wire \sec[1]_i_8_n_0 ;
  wire \sec[2]_i_2_n_0 ;
  wire \sec[2]_i_3_n_0 ;
  wire \sec[2]_i_4_n_0 ;
  wire \sec[2]_i_7_n_0 ;
  wire \sec[2]_i_8_n_0 ;
  wire \sec[3]_i_10_n_0 ;
  wire \sec[3]_i_2__0_n_0 ;
  wire \sec[3]_i_3_n_0 ;
  wire \sec[3]_i_4_n_0 ;
  wire \sec[3]_i_5_n_0 ;
  wire \sec[3]_i_7_n_0 ;
  wire \sec[3]_i_8_n_0 ;
  wire \sec[3]_i_9_n_0 ;
  wire \sec[4]_i_2_n_0 ;
  wire \sec[4]_i_3_n_0 ;
  wire \sec[4]_i_5_n_0 ;
  wire \sec[4]_i_6_n_0 ;
  wire \sec[4]_i_7_n_0 ;
  wire \sec[5]_i_10_n_0 ;
  wire \sec[5]_i_12_n_0 ;
  wire \sec[5]_i_13_n_0 ;
  wire \sec[5]_i_14_n_0 ;
  wire \sec[5]_i_15_n_0 ;
  wire \sec[5]_i_6__0_n_0 ;
  wire \sec[5]_i_7_n_0 ;
  wire \sec[5]_i_8_n_0 ;
  wire \sec[5]_i_9_n_0 ;
  wire [5:0]sec__0;
  wire \sec_reg[0]_0 ;
  wire \sec_reg[0]_1 ;
  wire \sec_reg[0]_2 ;
  wire \sec_reg[1]_0 ;
  wire \sec_reg[1]_1 ;
  wire \sec_reg[2]_0 ;
  wire \sec_reg[3]_0 ;
  wire \sec_reg[4]_0 ;
  wire \sec_reg[5]_0 ;
  wire \sec_reg[5]_1 ;
  wire \sec_reg[5]_2 ;
  wire [0:0]\sec_reg[5]_3 ;
  wire [2:0]\set_sec_reg[4]_0 ;
  wire \set_sec_reg_n_0_[1] ;
  wire \set_sec_reg_n_0_[3] ;
  wire \set_sec_reg_n_0_[5] ;
  wire set_sel_i_1__0_n_0;
  wire set_sel_reg_0;
  wire set_sel_reg_1;
  wire [2:1]state__0;
  wire [2:0]sw_d0;
  wire [2:0]sw_d1;
  wire [1:0]sw_d2;
  wire [2:0]sw_d3;
  wire tick_1hz;
  wire tick_1hz_reg;
  wire u_p;

  LUT6 #(
    .INIT(64'h22226A6600000000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(r_p),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(LD_OBUF),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22E622A200000000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(r_p),
        .I3(state__0[2]),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(LD_OBUF),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222226200000000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[2]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state__0[1]),
        .I3(r_p),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(LD_OBUF),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(tick_1hz),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(\FSM_sequential_state[2]_i_3_n_0 ),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\min[4]_i_13_n_0 ),
        .I1(\sec_reg[1]_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000FFEEF0000EEE0)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(btn_right_pulse),
        .I1(\sec_reg[5]_2 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(c_p),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "CD_SET:000,CD_FINISHED:100,CD_PAUSE:011,CD_READY:001,CD_RUNNING:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[0]_0 ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "CD_SET:000,CD_FINISHED:100,CD_PAUSE:011,CD_READY:001,CD_RUNNING:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "CD_SET:000,CD_FINISHED:100,CD_PAUSE:011,CD_READY:001,CD_RUNNING:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cd_en_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(LD_OBUF),
        .Q(cd_en_d),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \cur_value[0]_i_10 
       (.I0(set_sel_reg_1),
        .I1(sec__0[0]),
        .I2(mode[0]),
        .I3(sw_d0[0]),
        .I4(mode[1]),
        .O(\sec_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \cur_value[0]_i_12 
       (.I0(p_1_in[1]),
        .I1(\cur_value[1]_i_30_n_0 ),
        .I2(mode[0]),
        .I3(sw_d3[0]),
        .I4(mode[1]),
        .O(\mode_reg[0]_6 ));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \cur_value[0]_i_14 
       (.I0(p_1_in[1]),
        .I1(min__0[0]),
        .I2(mode[0]),
        .I3(sw_d2[0]),
        .I4(mode[1]),
        .O(\min_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \cur_value[0]_i_6 
       (.I0(\cur_value[1]_i_21_n_0 ),
        .I1(set_sel_reg_1),
        .I2(mode[0]),
        .I3(sw_d1[0]),
        .I4(mode[1]),
        .O(\mode_reg[0] ));
  LUT5 #(
    .INIT(32'h0000FD0D)) 
    \cur_value[1]_i_13 
       (.I0(\cur_value[1]_i_27_n_0 ),
        .I1(p_1_in[1]),
        .I2(mode[0]),
        .I3(sw_d3[1]),
        .I4(mode[1]),
        .O(\mode_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h6F6F6F6F606F6F60)) 
    \cur_value[1]_i_14 
       (.I0(sw_d3[0]),
        .I1(\cur_value[1]_i_5 ),
        .I2(mode[0]),
        .I3(min__0[1]),
        .I4(\cur_value[1]_i_30_n_0 ),
        .I5(p_1_in[1]),
        .O(\min_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h6D3C492C)) 
    \cur_value[1]_i_21 
       (.I0(sec__0[2]),
        .I1(sec__0[5]),
        .I2(sec__0[3]),
        .I3(sec__0[4]),
        .I4(sec__0[1]),
        .O(\cur_value[1]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h7C37)) 
    \cur_value[1]_i_27 
       (.I0(min__0[2]),
        .I1(min__0[4]),
        .I2(min__0[3]),
        .I3(min__0[5]),
        .O(\cur_value[1]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h6D3C492C)) 
    \cur_value[1]_i_30 
       (.I0(min__0[2]),
        .I1(min__0[5]),
        .I2(min__0[3]),
        .I3(min__0[4]),
        .I4(min__0[1]),
        .O(\cur_value[1]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \cur_value[1]_i_6 
       (.I0(set_sel_reg_1),
        .I1(\cur_value[2]_i_20_n_0 ),
        .I2(mode[0]),
        .I3(sw_d1[1]),
        .I4(mode[1]),
        .O(\mode_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6F606F6F60)) 
    \cur_value[1]_i_9 
       (.I0(sw_d1[0]),
        .I1(\cur_value[1]_i_3 ),
        .I2(mode[0]),
        .I3(sec__0[1]),
        .I4(\cur_value[1]_i_21_n_0 ),
        .I5(set_sel_reg_1),
        .O(\sec_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB88888)) 
    \cur_value[2]_i_12 
       (.I0(sw_d3[2]),
        .I1(mode[0]),
        .I2(min__0[4]),
        .I3(min__0[3]),
        .I4(min__0[5]),
        .I5(p_1_in[1]),
        .O(\mode_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2D420BD0)) 
    \cur_value[2]_i_13 
       (.I0(min__0[5]),
        .I1(min__0[3]),
        .I2(min__0[4]),
        .I3(min__0[2]),
        .I4(min__0[1]),
        .I5(p_1_in[1]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h9A18)) 
    \cur_value[2]_i_20 
       (.I0(sec__0[4]),
        .I1(sec__0[3]),
        .I2(sec__0[5]),
        .I3(sec__0[2]),
        .O(\cur_value[2]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00003492)) 
    \cur_value[2]_i_21 
       (.I0(sec__0[4]),
        .I1(sec__0[3]),
        .I2(sec__0[5]),
        .I3(sec__0[2]),
        .I4(sec__0[1]),
        .O(\cur_value[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB88888)) 
    \cur_value[2]_i_6 
       (.I0(sw_d1[2]),
        .I1(mode[0]),
        .I2(sec__0[4]),
        .I3(sec__0[3]),
        .I4(sec__0[5]),
        .I5(set_sel_reg_1),
        .O(\mode_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB88B8BB8)) 
    \cur_value[2]_i_9 
       (.I0(sw_d0[1]),
        .I1(mode[0]),
        .I2(\cur_value[2]_i_20_n_0 ),
        .I3(sec__0[2]),
        .I4(\cur_value[2]_i_21_n_0 ),
        .I5(set_sel_reg_1),
        .O(\mode_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \cur_value[3]_i_10 
       (.I0(set_sel_reg_0),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(state__0[2]),
        .I4(blink),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \cur_value[3]_i_12 
       (.I0(p_1_in[1]),
        .I1(\cur_value[3]_i_21_n_0 ),
        .I2(mode[0]),
        .I3(sw_d2[1]),
        .I4(mode[1]),
        .O(\mode_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h41082410)) 
    \cur_value[3]_i_16 
       (.I0(sec__0[2]),
        .I1(sec__0[5]),
        .I2(sec__0[3]),
        .I3(sec__0[4]),
        .I4(sec__0[1]),
        .O(\cur_value[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h41082410)) 
    \cur_value[3]_i_21 
       (.I0(min__0[2]),
        .I1(min__0[5]),
        .I2(min__0[3]),
        .I3(min__0[4]),
        .I4(min__0[1]),
        .O(\cur_value[3]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \cur_value[3]_i_6 
       (.I0(set_sel_reg_0),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(state__0[2]),
        .I4(blink),
        .O(set_sel_reg_1));
  LUT6 #(
    .INIT(64'hBBBB8888BBBBB888)) 
    \cur_value[3]_i_7 
       (.I0(sw_d0[2]),
        .I1(mode[0]),
        .I2(blink),
        .I3(\min[4]_i_3_n_0 ),
        .I4(\cur_value[3]_i_16_n_0 ),
        .I5(set_sel_reg_0),
        .O(\mode_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hEEEEE22200000000)) 
    finished_i_1
       (.I0(cd_finished),
        .I1(finished_i_2_n_0),
        .I2(tick_1hz),
        .I3(\FSM_sequential_state_reg[0]_1 ),
        .I4(finished_i_3_n_0),
        .I5(LD_OBUF),
        .O(finished_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000FF0020FFFF)) 
    finished_i_2
       (.I0(tick_1hz),
        .I1(r_p),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(finished_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h10)) 
    finished_i_3
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(state__0[2]),
        .O(finished_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    finished_reg
       (.C(clk),
        .CE(1'b1),
        .D(finished_i_1_n_0),
        .Q(cd_finished),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000E00000000)) 
    \mem_sec[5]_i_1 
       (.I0(btn_pulse),
        .I1(btn_center_pulse),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(state__0[2]),
        .I5(LD_OBUF),
        .O(\mem_sec[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \mem_sec_reg[0] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(sec__0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sec_reg[1] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(sec__0[1]),
        .Q(mem_sec[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \mem_sec_reg[2] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(sec__0[2]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sec_reg[3] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(sec__0[3]),
        .Q(mem_sec[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sec_reg[4] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(sec__0[4]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sec_reg[5] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(sec__0[5]),
        .Q(mem_sec[5]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1F11)) 
    \min[0]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_1 ),
        .I1(min__0[0]),
        .I2(\min[5]_i_6_n_0 ),
        .I3(mem_min[0]),
        .O(min[0]));
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    \min[1]_i_1 
       (.I0(\min[5]_i_6_n_0 ),
        .I1(mem_min[1]),
        .I2(\min[5]_i_7_n_0 ),
        .I3(\min[1]_i_2_n_0 ),
        .I4(\min[1]_i_3_n_0 ),
        .O(min[1]));
  LUT5 #(
    .INIT(32'hAAAAAA28)) 
    \min[1]_i_2 
       (.I0(\min[5]_i_9__0_n_0 ),
        .I1(min__0[1]),
        .I2(min__0[0]),
        .I3(\min_reg[1]_2 ),
        .I4(btn_down_pulse),
        .O(\min[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF999)) 
    \min[1]_i_3 
       (.I0(min__0[0]),
        .I1(min__0[1]),
        .I2(\min_reg[4]_2 ),
        .I3(\min[5]_i_9__0_n_0 ),
        .O(\min[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAAAEABAFAAAEA)) 
    \min[2]_i_1 
       (.I0(\min[2]_i_2_n_0 ),
        .I1(set_sel_reg_0),
        .I2(\min[4]_i_3_n_0 ),
        .I3(\min[2]_i_3_n_0 ),
        .I4(mem_min[2]),
        .I5(\min_reg[2]_0 ),
        .O(min[2]));
  LUT6 #(
    .INIT(64'h000AA3A0000AAAA0)) 
    \min[2]_i_2 
       (.I0(mem_min[2]),
        .I1(\min[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(\min[4]_i_6_n_0 ),
        .O(\min[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD00F0F0DDFDFDFFD)) 
    \min[2]_i_3 
       (.I0(d_p),
        .I1(\min[4]_i_13_n_0 ),
        .I2(min__0[2]),
        .I3(min__0[0]),
        .I4(min__0[1]),
        .I5(\min_reg[4]_2 ),
        .O(\min[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \min[2]_i_4 
       (.I0(min__0[2]),
        .I1(min__0[0]),
        .I2(min__0[1]),
        .O(\min[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFFF4F4)) 
    \min[3]_i_1 
       (.I0(\min[3]_i_2_n_0 ),
        .I1(\min[5]_i_9__0_n_0 ),
        .I2(mem_min[3]),
        .I3(\min[3]_i_3_n_0 ),
        .I4(\min[4]_i_6_n_0 ),
        .I5(\min[3]_i_4_n_0 ),
        .O(min[3]));
  LUT6 #(
    .INIT(64'h433333317777777D)) 
    \min[3]_i_2 
       (.I0(d_p),
        .I1(min__0[3]),
        .I2(min__0[2]),
        .I3(min__0[1]),
        .I4(min__0[0]),
        .I5(\min_reg[4]_2 ),
        .O(\min[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFF000F2)) 
    \min[3]_i_3 
       (.I0(set_sel_reg_0),
        .I1(\min_reg[2]_0 ),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(state__0[2]),
        .O(\min[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55560000FFFFFFFF)) 
    \min[3]_i_4 
       (.I0(min__0[3]),
        .I1(min__0[1]),
        .I2(min__0[0]),
        .I3(min__0[2]),
        .I4(\min_reg[4]_1 ),
        .I5(\FSM_sequential_state_reg[0]_1 ),
        .O(\min[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAAFFAEFFAAAA)) 
    \min[4]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(\min[4]_i_3_n_0 ),
        .I2(\min_reg[4]_0 ),
        .I3(\min[4]_i_5_n_0 ),
        .I4(mem_min[4]),
        .I5(\min[4]_i_6_n_0 ),
        .O(min[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \min[4]_i_12 
       (.I0(sec__0[1]),
        .I1(sec__0[0]),
        .I2(sec__0[2]),
        .I3(sec__0[5]),
        .I4(sec__0[4]),
        .I5(sec__0[3]),
        .O(\sec_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \min[4]_i_13 
       (.I0(min__0[1]),
        .I1(min__0[0]),
        .I2(min__0[2]),
        .I3(min__0[4]),
        .I4(min__0[3]),
        .I5(min__0[5]),
        .O(\min[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \min[4]_i_14 
       (.I0(min__0[1]),
        .I1(min__0[0]),
        .I2(min__0[2]),
        .I3(min__0[5]),
        .I4(min__0[3]),
        .I5(min__0[4]),
        .O(\min_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h80AAAA8080808080)) 
    \min[4]_i_2 
       (.I0(\min[5]_i_9__0_n_0 ),
        .I1(\min[4]_i_7_n_0 ),
        .I2(d_p),
        .I3(\min[4]_i_9_n_0 ),
        .I4(min__0[4]),
        .I5(\min_reg[4]_2 ),
        .O(\min[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \min[4]_i_3 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(state__0[2]),
        .O(\min[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F02FFFFFFF2F)) 
    \min[4]_i_5 
       (.I0(\min_reg[4]_1 ),
        .I1(\min[4]_i_7_n_0 ),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(mem_min[4]),
        .O(\min[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \min[4]_i_6 
       (.I0(\sec_reg[1]_0 ),
        .I1(btn_right_pulse),
        .I2(\sec_reg[5]_2 ),
        .I3(tick_1hz),
        .I4(\min[4]_i_13_n_0 ),
        .O(\min[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \min[4]_i_7 
       (.I0(min__0[4]),
        .I1(min__0[3]),
        .I2(min__0[2]),
        .I3(min__0[0]),
        .I4(min__0[1]),
        .O(\min[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \min[4]_i_9 
       (.I0(min__0[3]),
        .I1(min__0[2]),
        .I2(min__0[1]),
        .I3(min__0[0]),
        .O(\min[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABA8ABA8ABAB)) 
    \min[5]_i_10 
       (.I0(\min[5]_i_8__0_n_0 ),
        .I1(\min_reg[1]_2 ),
        .I2(btn_down_pulse),
        .I3(\min[5]_i_12_n_0 ),
        .I4(btn_up_pulse),
        .I5(\min_reg[5]_0 ),
        .O(\min[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h880000007FFFFFFF)) 
    \min[5]_i_12 
       (.I0(min__0[0]),
        .I1(min__0[1]),
        .I2(min__0[2]),
        .I3(min__0[3]),
        .I4(min__0[4]),
        .I5(min__0[5]),
        .O(\min[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h444F444FFFFF444F)) 
    \min[5]_i_2 
       (.I0(\min[5]_i_6_n_0 ),
        .I1(mem_min[5]),
        .I2(\min[5]_i_7_n_0 ),
        .I3(\min[5]_i_8__0_n_0 ),
        .I4(\min[5]_i_9__0_n_0 ),
        .I5(\min[5]_i_10_n_0 ),
        .O(min[5]));
  LUT5 #(
    .INIT(32'h40404440)) 
    \min[5]_i_3 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(\sec_reg[5]_0 ),
        .I3(LD_OBUF),
        .I4(cd_en_d),
        .O(\FSM_sequential_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0F0FFE0E0)) 
    \min[5]_i_4 
       (.I0(btn_center_pulse),
        .I1(btn_pulse),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(LD_OBUF),
        .I5(cd_en_d),
        .O(btn_center_pulse_reg));
  LUT6 #(
    .INIT(64'hFFF5FFFCFFF5FFFF)) 
    \min[5]_i_5 
       (.I0(\min[4]_i_6_n_0 ),
        .I1(\min_reg[2]_0 ),
        .I2(state__0[2]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(state__0[1]),
        .I5(set_sel_reg_0),
        .O(\FSM_sequential_state_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hCEC0CEC3CEC0CEC0)) 
    \min[5]_i_6 
       (.I0(\min[4]_i_6_n_0 ),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(state__0[1]),
        .I4(\min_reg[2]_0 ),
        .I5(set_sel_reg_0),
        .O(\min[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \min[5]_i_7 
       (.I0(\min[4]_i_6_n_0 ),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .O(\min[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \min[5]_i_8__0 
       (.I0(min__0[5]),
        .I1(min__0[4]),
        .I2(min__0[1]),
        .I3(min__0[0]),
        .I4(min__0[2]),
        .I5(min__0[3]),
        .O(\min[5]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \min[5]_i_9__0 
       (.I0(state__0[2]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(state__0[1]),
        .I3(set_sel_reg_0),
        .O(\min[5]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[0] 
       (.C(clk),
        .CE(E),
        .D(min[0]),
        .Q(min__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[1] 
       (.C(clk),
        .CE(E),
        .D(min[1]),
        .Q(min__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[2] 
       (.C(clk),
        .CE(E),
        .D(min[2]),
        .Q(min__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[3] 
       (.C(clk),
        .CE(E),
        .D(min[3]),
        .Q(min__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[4] 
       (.C(clk),
        .CE(E),
        .D(min[4]),
        .Q(min__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[5] 
       (.C(clk),
        .CE(E),
        .D(min[5]),
        .Q(min__0[5]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sec[0]_i_1__0 
       (.I0(\sec[0]_i_2_n_0 ),
        .I1(state__0[2]),
        .I2(\sec[0]_i_3_n_0 ),
        .I3(state__0[1]),
        .I4(\sec[0]_i_4_n_0 ),
        .O(sec[0]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sec[0]_i_2 
       (.I0(\set_sec_reg[4]_0 [0]),
        .I1(btn_pulse),
        .I2(btn_center_pulse),
        .I3(Q[0]),
        .O(\sec[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BB8888)) 
    \sec[0]_i_3 
       (.I0(\sec_reg[0]_1 ),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\sec_reg[0]_2 ),
        .I3(sec__0[0]),
        .I4(Q[0]),
        .I5(tick_1hz_reg),
        .O(\sec[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \sec[0]_i_4 
       (.I0(sec__0[0]),
        .I1(\sec[5]_i_10_n_0 ),
        .I2(Q[0]),
        .O(\sec[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB88888)) 
    \sec[1]_i_1__0 
       (.I0(\sec[1]_i_2_n_0 ),
        .I1(state__0[2]),
        .I2(\sec[1]_i_3_n_0 ),
        .I3(\sec[1]_i_4_n_0 ),
        .I4(state__0[1]),
        .I5(\sec[1]_i_5_n_0 ),
        .O(sec[1]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sec[1]_i_2 
       (.I0(\set_sec_reg_n_0_[1] ),
        .I1(btn_pulse),
        .I2(btn_center_pulse),
        .I3(mem_sec[1]),
        .O(\sec[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEE00E)) 
    \sec[1]_i_3 
       (.I0(tick_1hz_reg),
        .I1(mem_sec[1]),
        .I2(sec__0[0]),
        .I3(sec__0[1]),
        .I4(\sec_reg[0]_2 ),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(\sec[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABAA0000A8AA0000)) 
    \sec[1]_i_4 
       (.I0(mem_sec[1]),
        .I1(\sec_reg[5]_2 ),
        .I2(btn_right_pulse),
        .I3(c_p),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(\set_sec_reg_n_0_[1] ),
        .O(\sec[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0C2E3C2EAAAAAAAA)) 
    \sec[1]_i_5 
       (.I0(mem_sec[1]),
        .I1(d_p),
        .I2(\sec[1]_i_6_n_0 ),
        .I3(u_p),
        .I4(\sec[1]_i_8_n_0 ),
        .I5(\sec[3]_i_8_n_0 ),
        .O(\sec[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sec[1]_i_6 
       (.I0(sec__0[1]),
        .I1(sec__0[0]),
        .O(\sec[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \sec[1]_i_8 
       (.I0(sec__0[1]),
        .I1(sec__0[0]),
        .I2(sec__0[2]),
        .I3(sec__0[5]),
        .I4(sec__0[3]),
        .I5(sec__0[4]),
        .O(\sec[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sec[2]_i_1__0 
       (.I0(\sec[2]_i_2_n_0 ),
        .I1(state__0[2]),
        .I2(\sec[2]_i_3_n_0 ),
        .I3(state__0[1]),
        .I4(\sec[2]_i_4_n_0 ),
        .O(sec[2]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sec[2]_i_2 
       (.I0(\set_sec_reg[4]_0 [1]),
        .I1(btn_pulse),
        .I2(btn_center_pulse),
        .I3(Q[1]),
        .O(\sec[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \sec[2]_i_3 
       (.I0(\sec_reg[2]_0 ),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\sec_reg[0]_2 ),
        .I3(\sec[2]_i_7_n_0 ),
        .I4(tick_1hz_reg),
        .I5(Q[1]),
        .O(\sec[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB080B080FFFFB080)) 
    \sec[2]_i_4 
       (.I0(\sec[2]_i_7_n_0 ),
        .I1(d_p),
        .I2(\sec[3]_i_8_n_0 ),
        .I3(\sec[2]_i_8_n_0 ),
        .I4(Q[1]),
        .I5(\sec[5]_i_10_n_0 ),
        .O(\sec[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00000000FE)) 
    \sec[2]_i_7 
       (.I0(sec__0[3]),
        .I1(sec__0[4]),
        .I2(sec__0[5]),
        .I3(sec__0[1]),
        .I4(sec__0[0]),
        .I5(sec__0[2]),
        .O(\sec[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0054545454000000)) 
    \sec[2]_i_8 
       (.I0(\sec[1]_i_8_n_0 ),
        .I1(\min_reg[5]_0 ),
        .I2(btn_up_pulse),
        .I3(sec__0[1]),
        .I4(sec__0[0]),
        .I5(sec__0[2]),
        .O(\sec[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sec[3]_i_10 
       (.I0(sec__0[1]),
        .I1(sec__0[0]),
        .O(\sec[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sec[3]_i_1__0 
       (.I0(\sec[3]_i_2__0_n_0 ),
        .I1(state__0[2]),
        .I2(\sec[3]_i_3_n_0 ),
        .I3(state__0[1]),
        .I4(\sec[3]_i_4_n_0 ),
        .O(sec[3]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sec[3]_i_2__0 
       (.I0(\set_sec_reg_n_0_[3] ),
        .I1(btn_pulse),
        .I2(btn_center_pulse),
        .I3(mem_sec[3]),
        .O(\sec[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hF055FF55F0440044)) 
    \sec[3]_i_3 
       (.I0(\sec[3]_i_5_n_0 ),
        .I1(tick_1hz_reg),
        .I2(\set_sec_reg_n_0_[3] ),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(\sec_reg[3]_0 ),
        .I5(mem_sec[3]),
        .O(\sec[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4FF4444F4444444)) 
    \sec[3]_i_4 
       (.I0(\sec[5]_i_10_n_0 ),
        .I1(mem_sec[3]),
        .I2(\sec[3]_i_7_n_0 ),
        .I3(d_p),
        .I4(\sec[3]_i_8_n_0 ),
        .I5(\sec[3]_i_9_n_0 ),
        .O(\sec[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222222220)) 
    \sec[3]_i_5 
       (.I0(tick_1hz),
        .I1(r_p),
        .I2(sec__0[2]),
        .I3(sec__0[0]),
        .I4(sec__0[1]),
        .I5(sec__0[3]),
        .O(\sec[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \sec[3]_i_7 
       (.I0(sec__0[3]),
        .I1(sec__0[1]),
        .I2(sec__0[0]),
        .I3(sec__0[2]),
        .O(\sec[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sec[3]_i_8 
       (.I0(set_sel_reg_0),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .O(\sec[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF000F07000F00000)) 
    \sec[3]_i_9 
       (.I0(sec__0[5]),
        .I1(sec__0[4]),
        .I2(u_p),
        .I3(\sec[3]_i_10_n_0 ),
        .I4(sec__0[2]),
        .I5(sec__0[3]),
        .O(\sec[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hABA8FFFFABA80000)) 
    \sec[4]_i_1__0 
       (.I0(\set_sec_reg[4]_0 [2]),
        .I1(btn_pulse),
        .I2(btn_center_pulse),
        .I3(Q[2]),
        .I4(state__0[2]),
        .I5(\sec[4]_i_2_n_0 ),
        .O(sec[4]));
  LUT6 #(
    .INIT(64'hEFE0AFAFEFE0A0A0)) 
    \sec[4]_i_2 
       (.I0(\sec[4]_i_3_n_0 ),
        .I1(\sec_reg[4]_0 ),
        .I2(state__0[1]),
        .I3(Q[2]),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(\sec[4]_i_5_n_0 ),
        .O(\sec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CFCDC0CD)) 
    \sec[4]_i_3 
       (.I0(\min[4]_i_13_n_0 ),
        .I1(Q[2]),
        .I2(\sec_reg[0]_2 ),
        .I3(\sec_reg[1]_0 ),
        .I4(\sec[4]_i_6_n_0 ),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(\sec[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEF45404040)) 
    \sec[4]_i_5 
       (.I0(set_sel_reg_0),
        .I1(\sec[4]_i_6_n_0 ),
        .I2(d_p),
        .I3(\sec[4]_i_7_n_0 ),
        .I4(u_p),
        .I5(Q[2]),
        .O(\sec[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \sec[4]_i_6 
       (.I0(sec__0[4]),
        .I1(sec__0[2]),
        .I2(sec__0[0]),
        .I3(sec__0[1]),
        .I4(sec__0[3]),
        .O(\sec[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h662AAAAAAAAAAAAA)) 
    \sec[4]_i_7 
       (.I0(sec__0[4]),
        .I1(sec__0[3]),
        .I2(sec__0[5]),
        .I3(sec__0[2]),
        .I4(sec__0[0]),
        .I5(sec__0[1]),
        .O(\sec[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \sec[5]_i_10 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(set_sel_reg_0),
        .I2(btn_up_pulse),
        .I3(\min_reg[5]_0 ),
        .I4(btn_down_pulse),
        .I5(\min_reg[1]_2 ),
        .O(\sec[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h555555555555CCCF)) 
    \sec[5]_i_12 
       (.I0(\sec[5]_i_13_n_0 ),
        .I1(\sec[5]_i_15_n_0 ),
        .I2(btn_up_pulse),
        .I3(\min_reg[5]_0 ),
        .I4(btn_down_pulse),
        .I5(\min_reg[1]_2 ),
        .O(\sec[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \sec[5]_i_13 
       (.I0(sec__0[5]),
        .I1(sec__0[4]),
        .I2(sec__0[3]),
        .I3(sec__0[1]),
        .I4(sec__0[0]),
        .I5(sec__0[2]),
        .O(\sec[5]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \sec[5]_i_14 
       (.I0(\sec_reg[1]_0 ),
        .I1(tick_1hz),
        .I2(\sec_reg[5]_2 ),
        .I3(btn_right_pulse),
        .O(\sec[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFFFF80000000)) 
    \sec[5]_i_15 
       (.I0(sec__0[4]),
        .I1(sec__0[0]),
        .I2(sec__0[1]),
        .I3(sec__0[2]),
        .I4(sec__0[3]),
        .I5(sec__0[5]),
        .O(\sec[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBBBBBB8)) 
    \sec[5]_i_2__0 
       (.I0(\sec[5]_i_6__0_n_0 ),
        .I1(state__0[2]),
        .I2(\sec[5]_i_7_n_0 ),
        .I3(\sec[5]_i_8_n_0 ),
        .I4(state__0[1]),
        .I5(\sec[5]_i_9_n_0 ),
        .O(sec[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBF80B08)) 
    \sec[5]_i_3__0 
       (.I0(\sec_reg[5]_0 ),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(\sec[5]_i_10_n_0 ),
        .I4(c_p),
        .I5(\sec_reg[5]_1 ),
        .O(\FSM_sequential_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sec[5]_i_4__0 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(\FSM_sequential_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h02000202)) 
    \sec[5]_i_5__1 
       (.I0(tick_1hz),
        .I1(\sec_reg[5]_2 ),
        .I2(btn_right_pulse),
        .I3(\sec_reg[1]_0 ),
        .I4(\min[4]_i_13_n_0 ),
        .O(tick_1hz_reg));
  LUT4 #(
    .INIT(16'hABA8)) 
    \sec[5]_i_6__0 
       (.I0(\set_sec_reg_n_0_[5] ),
        .I1(btn_pulse),
        .I2(btn_center_pulse),
        .I3(mem_sec[5]),
        .O(\sec[5]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFEFE00)) 
    \sec[5]_i_7 
       (.I0(set_sel_reg_0),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\sec[5]_i_12_n_0 ),
        .I3(mem_sec[5]),
        .I4(\sec[5]_i_10_n_0 ),
        .I5(state__0[1]),
        .O(\sec[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000444044404440)) 
    \sec[5]_i_8 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(state__0[1]),
        .I2(mem_sec[5]),
        .I3(tick_1hz_reg),
        .I4(\sec[5]_i_13_n_0 ),
        .I5(\sec[5]_i_14_n_0 ),
        .O(\sec[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFFFDFFFFFF)) 
    \sec[5]_i_9 
       (.I0(\set_sec_reg_n_0_[5] ),
        .I1(\sec_reg[5]_2 ),
        .I2(btn_right_pulse),
        .I3(c_p),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(mem_sec[5]),
        .O(\sec[5]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \sec_reg[0] 
       (.C(clk),
        .CE(\sec_reg[5]_3 ),
        .D(sec[0]),
        .Q(sec__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[1] 
       (.C(clk),
        .CE(\sec_reg[5]_3 ),
        .D(sec[1]),
        .Q(sec__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \sec_reg[2] 
       (.C(clk),
        .CE(\sec_reg[5]_3 ),
        .D(sec[2]),
        .Q(sec__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[3] 
       (.C(clk),
        .CE(\sec_reg[5]_3 ),
        .D(sec[3]),
        .Q(sec__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[4] 
       (.C(clk),
        .CE(\sec_reg[5]_3 ),
        .D(sec[4]),
        .Q(sec__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[5] 
       (.C(clk),
        .CE(\sec_reg[5]_3 ),
        .D(sec[5]),
        .Q(sec__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \set_min_reg[0] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(min__0[0]),
        .Q(mem_min[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \set_min_reg[1] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(min__0[1]),
        .Q(mem_min[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \set_min_reg[2] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(min__0[2]),
        .Q(mem_min[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \set_min_reg[3] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(min__0[3]),
        .Q(mem_min[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \set_min_reg[4] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(min__0[4]),
        .Q(mem_min[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \set_min_reg[5] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(min__0[5]),
        .Q(mem_min[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \set_sec_reg[0] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(sec__0[0]),
        .Q(\set_sec_reg[4]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \set_sec_reg[1] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(sec__0[1]),
        .Q(\set_sec_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \set_sec_reg[2] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(sec__0[2]),
        .Q(\set_sec_reg[4]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \set_sec_reg[3] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(sec__0[3]),
        .Q(\set_sec_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \set_sec_reg[4] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(sec__0[4]),
        .Q(\set_sec_reg[4]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \set_sec_reg[5] 
       (.C(clk),
        .CE(\mem_sec[5]_i_1_n_0 ),
        .D(sec__0[5]),
        .Q(\set_sec_reg_n_0_[5] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAA600000000)) 
    set_sel_i_1__0
       (.I0(set_sel_reg_0),
        .I1(r_p),
        .I2(state__0[2]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(state__0[1]),
        .I5(LD_OBUF),
        .O(set_sel_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    set_sel_reg
       (.C(clk),
        .CE(1'b1),
        .D(set_sel_i_1__0_n_0),
        .Q(set_sel_reg_0),
        .R(1'b0));
endmodule

module debounce
   (c_p,
    btn_pulse,
    btn_center_pulse,
    clk_IBUF_BUFG,
    btn);
  output c_p;
  output btn_pulse;
  input btn_center_pulse;
  input clk_IBUF_BUFG;
  input btn;

  wire btn;
  wire btn_center_pulse;
  wire btn_pulse;
  wire btn_pulse_i_1__3_n_0;
  wire btn_stable;
  wire btn_stable_i_1__3_n_0;
  wire btn_stable_i_2__3_n_0;
  wire btn_stable_i_4__3_n_0;
  wire btn_stable_i_5__3_n_0;
  wire btn_stable_i_6__3_n_0;
  wire btn_stable_i_7__3_n_0;
  wire btn_stable_reg_n_0;
  wire c_p;
  wire clk_IBUF_BUFG;
  wire last;
  wire [15:1]p_0_in;
  wire \shift_reg_n_0_[15] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    btn_pulse_i_1__3
       (.I0(btn_stable_reg_n_0),
        .I1(last),
        .O(btn_pulse_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_pulse_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_pulse_i_1__3_n_0),
        .Q(btn_pulse),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    btn_stable_i_1__3
       (.I0(btn_stable_i_2__3_n_0),
        .I1(btn_stable),
        .I2(btn_stable_reg_n_0),
        .O(btn_stable_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_2__3
       (.I0(btn_stable_i_4__3_n_0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(btn_stable_i_5__3_n_0),
        .O(btn_stable_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    btn_stable_i_3__3
       (.I0(btn_stable_i_6__3_n_0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(btn_stable_i_7__3_n_0),
        .O(btn_stable));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_4__3
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[11]),
        .I3(p_0_in[12]),
        .I4(\shift_reg_n_0_[15] ),
        .I5(p_0_in[15]),
        .O(btn_stable_i_4__3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_5__3
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(p_0_in[10]),
        .I5(p_0_in[9]),
        .O(btn_stable_i_5__3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    btn_stable_i_6__3
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[11]),
        .I3(p_0_in[12]),
        .I4(\shift_reg_n_0_[15] ),
        .I5(p_0_in[15]),
        .O(btn_stable_i_6__3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    btn_stable_i_7__3
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(p_0_in[10]),
        .I5(p_0_in[9]),
        .O(btn_stable_i_7__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_stable_i_1__3_n_0),
        .Q(btn_stable_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_stable_reg_n_0),
        .Q(last),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \mode[2]_i_2 
       (.I0(btn_pulse),
        .I1(btn_center_pulse),
        .O(c_p));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(\shift_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(p_0_in[10]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module debounce_0
   (d_p,
    btn_pulse,
    btn_down_pulse,
    clk_IBUF_BUFG,
    btn);
  output d_p;
  output btn_pulse;
  input btn_down_pulse;
  input clk_IBUF_BUFG;
  input btn;

  wire btn;
  wire btn_down_pulse;
  wire btn_pulse;
  wire btn_pulse_i_1__2_n_0;
  wire btn_stable;
  wire btn_stable_i_1__2_n_0;
  wire btn_stable_i_2__2_n_0;
  wire btn_stable_i_4__2_n_0;
  wire btn_stable_i_5__2_n_0;
  wire btn_stable_i_6__2_n_0;
  wire btn_stable_i_7__2_n_0;
  wire btn_stable_reg_n_0;
  wire clk_IBUF_BUFG;
  wire d_p;
  wire last;
  wire [15:1]p_0_in;
  wire \shift_reg_n_0_[15] ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    btn_pulse_i_1__2
       (.I0(btn_stable_reg_n_0),
        .I1(last),
        .O(btn_pulse_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_pulse_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_pulse_i_1__2_n_0),
        .Q(btn_pulse),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    btn_stable_i_1__2
       (.I0(btn_stable_i_2__2_n_0),
        .I1(btn_stable),
        .I2(btn_stable_reg_n_0),
        .O(btn_stable_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_2__2
       (.I0(btn_stable_i_4__2_n_0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(btn_stable_i_5__2_n_0),
        .O(btn_stable_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    btn_stable_i_3__2
       (.I0(btn_stable_i_6__2_n_0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(btn_stable_i_7__2_n_0),
        .O(btn_stable));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_4__2
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[11]),
        .I3(p_0_in[12]),
        .I4(\shift_reg_n_0_[15] ),
        .I5(p_0_in[15]),
        .O(btn_stable_i_4__2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_5__2
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(p_0_in[10]),
        .I5(p_0_in[9]),
        .O(btn_stable_i_5__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    btn_stable_i_6__2
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[11]),
        .I3(p_0_in[12]),
        .I4(\shift_reg_n_0_[15] ),
        .I5(p_0_in[15]),
        .O(btn_stable_i_6__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    btn_stable_i_7__2
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(p_0_in[10]),
        .I5(p_0_in[9]),
        .O(btn_stable_i_7__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_stable_i_1__2_n_0),
        .Q(btn_stable_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_stable_reg_n_0),
        .Q(last),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \min[4]_i_8 
       (.I0(btn_pulse),
        .I1(btn_down_pulse),
        .O(d_p));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(\shift_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(p_0_in[10]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module debounce_1
   (l_p,
    btn_pulse,
    btn_left_pulse,
    clk_IBUF_BUFG,
    btn);
  output l_p;
  output btn_pulse;
  input btn_left_pulse;
  input clk_IBUF_BUFG;
  input btn;

  wire btn;
  wire btn_left_pulse;
  wire btn_pulse;
  wire btn_pulse_i_1_n_0;
  wire btn_stable;
  wire btn_stable_i_1_n_0;
  wire btn_stable_i_2_n_0;
  wire btn_stable_i_4_n_0;
  wire btn_stable_i_5_n_0;
  wire btn_stable_i_6_n_0;
  wire btn_stable_i_7_n_0;
  wire btn_stable_reg_n_0;
  wire clk_IBUF_BUFG;
  wire l_p;
  wire last;
  wire [15:1]p_0_in;
  wire \shift_reg_n_0_[15] ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    btn_pulse_i_1
       (.I0(btn_stable_reg_n_0),
        .I1(last),
        .O(btn_pulse_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_pulse_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_pulse_i_1_n_0),
        .Q(btn_pulse),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    btn_stable_i_1
       (.I0(btn_stable_i_2_n_0),
        .I1(btn_stable),
        .I2(btn_stable_reg_n_0),
        .O(btn_stable_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_2
       (.I0(btn_stable_i_4_n_0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(btn_stable_i_5_n_0),
        .O(btn_stable_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    btn_stable_i_3
       (.I0(btn_stable_i_6_n_0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(btn_stable_i_7_n_0),
        .O(btn_stable));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_4
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[11]),
        .I3(p_0_in[12]),
        .I4(\shift_reg_n_0_[15] ),
        .I5(p_0_in[15]),
        .O(btn_stable_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_5
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(p_0_in[10]),
        .I5(p_0_in[9]),
        .O(btn_stable_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    btn_stable_i_6
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[11]),
        .I3(p_0_in[12]),
        .I4(\shift_reg_n_0_[15] ),
        .I5(p_0_in[15]),
        .O(btn_stable_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    btn_stable_i_7
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(p_0_in[10]),
        .I5(p_0_in[9]),
        .O(btn_stable_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_stable_i_1_n_0),
        .Q(btn_stable_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_stable_reg_n_0),
        .Q(last),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    set_sel_i_3
       (.I0(btn_pulse),
        .I1(btn_left_pulse),
        .O(l_p));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(\shift_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(p_0_in[10]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module debounce_2
   (r_p,
    btn_pulse,
    btn_right_pulse,
    clk_IBUF_BUFG,
    btn);
  output r_p;
  output btn_pulse;
  input btn_right_pulse;
  input clk_IBUF_BUFG;
  input btn;

  wire btn;
  wire btn_pulse;
  wire btn_pulse_i_1__0_n_0;
  wire btn_right_pulse;
  wire btn_stable;
  wire btn_stable_i_1__0_n_0;
  wire btn_stable_i_2__0_n_0;
  wire btn_stable_i_4__0_n_0;
  wire btn_stable_i_5__0_n_0;
  wire btn_stable_i_6__0_n_0;
  wire btn_stable_i_7__0_n_0;
  wire btn_stable_reg_n_0;
  wire clk_IBUF_BUFG;
  wire last;
  wire [15:1]p_0_in;
  wire r_p;
  wire \shift_reg_n_0_[15] ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    btn_pulse_i_1__0
       (.I0(btn_stable_reg_n_0),
        .I1(last),
        .O(btn_pulse_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_pulse_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_pulse_i_1__0_n_0),
        .Q(btn_pulse),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    btn_stable_i_1__0
       (.I0(btn_stable_i_2__0_n_0),
        .I1(btn_stable),
        .I2(btn_stable_reg_n_0),
        .O(btn_stable_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_2__0
       (.I0(btn_stable_i_4__0_n_0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(btn_stable_i_5__0_n_0),
        .O(btn_stable_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    btn_stable_i_3__0
       (.I0(btn_stable_i_6__0_n_0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(btn_stable_i_7__0_n_0),
        .O(btn_stable));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_4__0
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[11]),
        .I3(p_0_in[12]),
        .I4(\shift_reg_n_0_[15] ),
        .I5(p_0_in[15]),
        .O(btn_stable_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_5__0
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(p_0_in[10]),
        .I5(p_0_in[9]),
        .O(btn_stable_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    btn_stable_i_6__0
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[11]),
        .I3(p_0_in[12]),
        .I4(\shift_reg_n_0_[15] ),
        .I5(p_0_in[15]),
        .O(btn_stable_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    btn_stable_i_7__0
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(p_0_in[10]),
        .I5(p_0_in[9]),
        .O(btn_stable_i_7__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_stable_i_1__0_n_0),
        .Q(btn_stable_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_stable_reg_n_0),
        .Q(last),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    set_sel_i_2
       (.I0(btn_pulse),
        .I1(btn_right_pulse),
        .O(r_p));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(\shift_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(p_0_in[10]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module debounce_3
   (u_p,
    btn_pulse,
    btn_up_pulse,
    clk_IBUF_BUFG,
    btn);
  output u_p;
  output btn_pulse;
  input btn_up_pulse;
  input clk_IBUF_BUFG;
  input btn;

  wire btn;
  wire btn_pulse;
  wire btn_pulse_i_1__1_n_0;
  wire btn_stable;
  wire btn_stable_i_1__1_n_0;
  wire btn_stable_i_2__1_n_0;
  wire btn_stable_i_4__1_n_0;
  wire btn_stable_i_5__1_n_0;
  wire btn_stable_i_6__1_n_0;
  wire btn_stable_i_7__1_n_0;
  wire btn_stable_reg_n_0;
  wire btn_up_pulse;
  wire clk_IBUF_BUFG;
  wire last;
  wire [15:1]p_0_in;
  wire \shift_reg_n_0_[15] ;
  wire u_p;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    btn_pulse_i_1__1
       (.I0(btn_stable_reg_n_0),
        .I1(last),
        .O(btn_pulse_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_pulse_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_pulse_i_1__1_n_0),
        .Q(btn_pulse),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    btn_stable_i_1__1
       (.I0(btn_stable_i_2__1_n_0),
        .I1(btn_stable),
        .I2(btn_stable_reg_n_0),
        .O(btn_stable_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_2__1
       (.I0(btn_stable_i_4__1_n_0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(btn_stable_i_5__1_n_0),
        .O(btn_stable_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    btn_stable_i_3__1
       (.I0(btn_stable_i_6__1_n_0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(btn_stable_i_7__1_n_0),
        .O(btn_stable));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_4__1
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[11]),
        .I3(p_0_in[12]),
        .I4(\shift_reg_n_0_[15] ),
        .I5(p_0_in[15]),
        .O(btn_stable_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_stable_i_5__1
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(p_0_in[10]),
        .I5(p_0_in[9]),
        .O(btn_stable_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    btn_stable_i_6__1
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[11]),
        .I3(p_0_in[12]),
        .I4(\shift_reg_n_0_[15] ),
        .I5(p_0_in[15]),
        .O(btn_stable_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    btn_stable_i_7__1
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(p_0_in[10]),
        .I5(p_0_in[9]),
        .O(btn_stable_i_7__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_stable_i_1__1_n_0),
        .Q(btn_stable_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_stable_reg_n_0),
        .Q(last),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \sec[1]_i_7 
       (.I0(btn_pulse),
        .I1(btn_up_pulse),
        .O(u_p));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(\shift_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(p_0_in[10]),
        .R(1'b0));
endmodule

module sevseg
   (\sec_disp_reg[1] ,
    \sec_disp_reg[1]_0 ,
    \sec_disp_reg[1]_1 ,
    \sec_disp_reg[3] ,
    \sec_disp_reg[1]_2 ,
    \sec_disp_reg[2] ,
    digit_index,
    \IO_SSEG_SEL_reg[3]_0 ,
    \IO_SSEG_reg[6]_0 ,
    Q,
    clk,
    D);
  output \sec_disp_reg[1] ;
  output \sec_disp_reg[1]_0 ;
  output \sec_disp_reg[1]_1 ;
  output \sec_disp_reg[3] ;
  output \sec_disp_reg[1]_2 ;
  output \sec_disp_reg[2] ;
  output [1:0]digit_index;
  output [3:0]\IO_SSEG_SEL_reg[3]_0 ;
  output [6:0]\IO_SSEG_reg[6]_0 ;
  input [4:0]Q;
  input clk;
  input [3:0]D;

  wire [3:0]D;
  wire [6:0]IO_SSEG;
  wire [3:0]\IO_SSEG_SEL_reg[3]_0 ;
  wire [6:0]\IO_SSEG_reg[6]_0 ;
  wire [4:0]Q;
  wire clear;
  wire clk;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire [18:5]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1__0_n_0 ;
  wire \counter_reg[12]_i_1__0_n_1 ;
  wire \counter_reg[12]_i_1__0_n_2 ;
  wire \counter_reg[12]_i_1__0_n_3 ;
  wire \counter_reg[12]_i_1__0_n_4 ;
  wire \counter_reg[12]_i_1__0_n_5 ;
  wire \counter_reg[12]_i_1__0_n_6 ;
  wire \counter_reg[12]_i_1__0_n_7 ;
  wire \counter_reg[16]_i_1__0_n_2 ;
  wire \counter_reg[16]_i_1__0_n_3 ;
  wire \counter_reg[16]_i_1__0_n_5 ;
  wire \counter_reg[16]_i_1__0_n_6 ;
  wire \counter_reg[16]_i_1__0_n_7 ;
  wire \counter_reg[4]_i_1__0_n_0 ;
  wire \counter_reg[4]_i_1__0_n_1 ;
  wire \counter_reg[4]_i_1__0_n_2 ;
  wire \counter_reg[4]_i_1__0_n_3 ;
  wire \counter_reg[4]_i_1__0_n_4 ;
  wire \counter_reg[4]_i_1__0_n_5 ;
  wire \counter_reg[4]_i_1__0_n_6 ;
  wire \counter_reg[4]_i_1__0_n_7 ;
  wire \counter_reg[8]_i_1__0_n_0 ;
  wire \counter_reg[8]_i_1__0_n_1 ;
  wire \counter_reg[8]_i_1__0_n_2 ;
  wire \counter_reg[8]_i_1__0_n_3 ;
  wire \counter_reg[8]_i_1__0_n_4 ;
  wire \counter_reg[8]_i_1__0_n_5 ;
  wire \counter_reg[8]_i_1__0_n_6 ;
  wire \counter_reg[8]_i_1__0_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire [3:0]cur_value;
  wire [1:0]digit_index;
  wire \digit_index[0]_i_1_n_0 ;
  wire \digit_index[1]_i_1_n_0 ;
  wire [3:0]p_0_in;
  wire \sec_disp_reg[1] ;
  wire \sec_disp_reg[1]_0 ;
  wire \sec_disp_reg[1]_1 ;
  wire \sec_disp_reg[1]_2 ;
  wire \sec_disp_reg[2] ;
  wire \sec_disp_reg[3] ;
  wire [3:2]\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[16]_i_1__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hAA9C)) 
    \IO_SSEG[0]_i_1 
       (.I0(cur_value[3]),
        .I1(cur_value[2]),
        .I2(cur_value[0]),
        .I3(cur_value[1]),
        .O(IO_SSEG[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hACE8)) 
    \IO_SSEG[1]_i_1 
       (.I0(cur_value[3]),
        .I1(cur_value[2]),
        .I2(cur_value[1]),
        .I3(cur_value[0]),
        .O(IO_SSEG[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hAAB0)) 
    \IO_SSEG[2]_i_1 
       (.I0(cur_value[3]),
        .I1(cur_value[0]),
        .I2(cur_value[1]),
        .I3(cur_value[2]),
        .O(IO_SSEG[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hEA9C)) 
    \IO_SSEG[3]_i_1 
       (.I0(cur_value[3]),
        .I1(cur_value[2]),
        .I2(cur_value[0]),
        .I3(cur_value[1]),
        .O(IO_SSEG[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFB8)) 
    \IO_SSEG[4]_i_1 
       (.I0(cur_value[3]),
        .I1(cur_value[1]),
        .I2(cur_value[2]),
        .I3(cur_value[0]),
        .O(IO_SSEG[4]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF9B8)) 
    \IO_SSEG[5]_i_1 
       (.I0(cur_value[3]),
        .I1(cur_value[2]),
        .I2(cur_value[1]),
        .I3(cur_value[0]),
        .O(IO_SSEG[5]));
  LUT4 #(
    .INIT(16'hEAA5)) 
    \IO_SSEG[6]_i_1 
       (.I0(cur_value[3]),
        .I1(cur_value[0]),
        .I2(cur_value[2]),
        .I3(cur_value[1]),
        .O(IO_SSEG[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \IO_SSEG_SEL[0]_i_1 
       (.I0(digit_index[1]),
        .I1(digit_index[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \IO_SSEG_SEL[1]_i_1 
       (.I0(digit_index[1]),
        .I1(digit_index[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \IO_SSEG_SEL[2]_i_1 
       (.I0(digit_index[0]),
        .I1(digit_index[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \IO_SSEG_SEL[3]_i_1 
       (.I0(digit_index[1]),
        .I1(digit_index[0]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \IO_SSEG_SEL_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\IO_SSEG_SEL_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IO_SSEG_SEL_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\IO_SSEG_SEL_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IO_SSEG_SEL_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\IO_SSEG_SEL_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IO_SSEG_SEL_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\IO_SSEG_SEL_reg[3]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IO_SSEG_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(IO_SSEG[0]),
        .Q(\IO_SSEG_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IO_SSEG_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(IO_SSEG[1]),
        .Q(\IO_SSEG_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IO_SSEG_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(IO_SSEG[2]),
        .Q(\IO_SSEG_reg[6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IO_SSEG_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(IO_SSEG[3]),
        .Q(\IO_SSEG_reg[6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IO_SSEG_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(IO_SSEG[4]),
        .Q(\IO_SSEG_reg[6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IO_SSEG_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(IO_SSEG[5]),
        .Q(\IO_SSEG_reg[6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IO_SSEG_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(IO_SSEG[6]),
        .Q(\IO_SSEG_reg[6]_0 [6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000080008000)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg[17]),
        .I1(counter_reg[18]),
        .I2(counter_reg[15]),
        .I3(counter_reg[16]),
        .I4(counter_reg[14]),
        .I5(\counter[0]_i_3_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    \counter[0]_i_3 
       (.I0(\counter[0]_i_5_n_0 ),
        .I1(counter_reg[5]),
        .I2(counter_reg[6]),
        .I3(counter_reg[7]),
        .I4(counter_reg[8]),
        .I5(counter_reg[13]),
        .O(\counter[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_5 
       (.I0(counter_reg[10]),
        .I1(counter_reg[9]),
        .I2(counter_reg[12]),
        .I3(counter_reg[11]),
        .O(\counter[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] ,\counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_5 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_4 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_7 ),
        .Q(counter_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__0 
       (.CI(\counter_reg[8]_i_1__0_n_0 ),
        .CO({\counter_reg[12]_i_1__0_n_0 ,\counter_reg[12]_i_1__0_n_1 ,\counter_reg[12]_i_1__0_n_2 ,\counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__0_n_4 ,\counter_reg[12]_i_1__0_n_5 ,\counter_reg[12]_i_1__0_n_6 ,\counter_reg[12]_i_1__0_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_6 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_5 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_4 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_7 ),
        .Q(counter_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__0 
       (.CI(\counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:2],\counter_reg[16]_i_1__0_n_2 ,\counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_1__0_O_UNCONNECTED [3],\counter_reg[16]_i_1__0_n_5 ,\counter_reg[16]_i_1__0_n_6 ,\counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,counter_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_6 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_5 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_7 ),
        .Q(\counter_reg_n_0_[4] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__0 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1__0_n_0 ,\counter_reg[4]_i_1__0_n_1 ,\counter_reg[4]_i_1__0_n_2 ,\counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__0_n_4 ,\counter_reg[4]_i_1__0_n_5 ,\counter_reg[4]_i_1__0_n_6 ,\counter_reg[4]_i_1__0_n_7 }),
        .S({counter_reg[7:5],\counter_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_6 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_5 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_4 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_7 ),
        .Q(counter_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[4]_i_1__0_n_0 ),
        .CO({\counter_reg[8]_i_1__0_n_0 ,\counter_reg[8]_i_1__0_n_1 ,\counter_reg[8]_i_1__0_n_2 ,\counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__0_n_4 ,\counter_reg[8]_i_1__0_n_5 ,\counter_reg[8]_i_1__0_n_6 ,\counter_reg[8]_i_1__0_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_6 ),
        .Q(counter_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h3E830FE0)) 
    \cur_value[0]_i_16 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\sec_disp_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h8E30)) 
    \cur_value[1]_i_18 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .O(\sec_disp_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h9429A54A)) 
    \cur_value[1]_i_23 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\sec_disp_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cur_value[2]_i_17 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\sec_disp_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h18C6318C)) 
    \cur_value[2]_i_23 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\sec_disp_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h21084210)) 
    \cur_value[3]_i_18 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\sec_disp_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \cur_value_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(cur_value[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cur_value_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(cur_value[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cur_value_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(cur_value[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cur_value_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(cur_value[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \digit_index[0]_i_1 
       (.I0(clear),
        .I1(digit_index[0]),
        .O(\digit_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \digit_index[1]_i_1 
       (.I0(digit_index[0]),
        .I1(clear),
        .I2(digit_index[1]),
        .O(\digit_index[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit_index[0]_i_1_n_0 ),
        .Q(digit_index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit_index[1]_i_1_n_0 ),
        .Q(digit_index[1]),
        .R(1'b0));
endmodule

module stopwatch
   (running_reg_0,
    \min_reg[1]_0 ,
    Q,
    sw_d0,
    \sec_reg[1]_0 ,
    sw_d2,
    sw_d3,
    sw_d1,
    running_reg_1,
    clk,
    tick_1hz,
    btn_pulse,
    btn_center_pulse,
    \min_reg[0]_0 ,
    SR,
    \sec_reg[5]_0 );
  output running_reg_0;
  output \min_reg[1]_0 ;
  output [1:0]Q;
  output [2:0]sw_d0;
  output [0:0]\sec_reg[1]_0 ;
  output [1:0]sw_d2;
  output [2:0]sw_d3;
  output [2:0]sw_d1;
  input running_reg_1;
  input clk;
  input tick_1hz;
  input btn_pulse;
  input btn_center_pulse;
  input \min_reg[0]_0 ;
  input [0:0]SR;
  input [0:0]\sec_reg[5]_0 ;

  wire [1:0]Q;
  wire [0:0]SR;
  wire btn_center_pulse;
  wire btn_pulse;
  wire clk;
  wire \min[0]_i_1__0_n_0 ;
  wire \min[1]_i_1__0_n_0 ;
  wire \min[2]_i_1__0_n_0 ;
  wire \min[3]_i_1__0_n_0 ;
  wire \min[4]_i_1__0_n_0 ;
  wire \min[5]_i_2__0_n_0 ;
  wire \min[5]_i_3__0_n_0 ;
  wire \min[5]_i_4__0_n_0 ;
  wire \min[5]_i_5__0_n_0 ;
  wire \min[5]_i_6__0_n_0 ;
  wire \min[5]_i_8_n_0 ;
  wire \min[5]_i_9_n_0 ;
  wire \min_reg[0]_0 ;
  wire \min_reg[1]_0 ;
  wire \min_reg_n_0_[2] ;
  wire \min_reg_n_0_[3] ;
  wire \min_reg_n_0_[4] ;
  wire \min_reg_n_0_[5] ;
  wire running1;
  wire running_reg_0;
  wire running_reg_1;
  wire [5:0]sec;
  wire \sec[5]_i_5__0_n_0 ;
  wire [0:0]\sec_reg[1]_0 ;
  wire [0:0]\sec_reg[5]_0 ;
  wire \sec_reg_n_0_[2] ;
  wire \sec_reg_n_0_[3] ;
  wire \sec_reg_n_0_[4] ;
  wire \sec_reg_n_0_[5] ;
  wire [2:0]sw_d0;
  wire [2:0]sw_d1;
  wire [1:0]sw_d2;
  wire [2:0]sw_d3;
  wire tick_1hz;

  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hD242)) 
    \cur_value[1]_i_17 
       (.I0(\sec_reg_n_0_[5] ),
        .I1(\sec_reg_n_0_[3] ),
        .I2(\sec_reg_n_0_[4] ),
        .I3(\sec_reg_n_0_[2] ),
        .O(sw_d1[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h4FB44B24)) 
    \cur_value[1]_i_20 
       (.I0(\sec_reg_n_0_[2] ),
        .I1(\sec_reg_n_0_[4] ),
        .I2(\sec_reg_n_0_[3] ),
        .I3(\sec_reg_n_0_[5] ),
        .I4(\sec_reg[1]_0 ),
        .O(sw_d1[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hC642)) 
    \cur_value[1]_i_28 
       (.I0(\min_reg_n_0_[5] ),
        .I1(\min_reg_n_0_[4] ),
        .I2(\min_reg_n_0_[3] ),
        .I3(\min_reg_n_0_[2] ),
        .O(sw_d3[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h3E0F83E0)) 
    \cur_value[1]_i_29 
       (.I0(Q[1]),
        .I1(\min_reg_n_0_[2] ),
        .I2(\min_reg_n_0_[3] ),
        .I3(\min_reg_n_0_[4] ),
        .I4(\min_reg_n_0_[5] ),
        .O(sw_d3[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h394223C4)) 
    \cur_value[2]_i_14 
       (.I0(\min_reg_n_0_[5] ),
        .I1(\min_reg_n_0_[4] ),
        .I2(\min_reg_n_0_[3] ),
        .I3(\min_reg_n_0_[2] ),
        .I4(Q[1]),
        .O(sw_d2[0]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \cur_value[2]_i_16 
       (.I0(\sec_reg_n_0_[4] ),
        .I1(\sec_reg_n_0_[3] ),
        .I2(\sec_reg_n_0_[5] ),
        .O(sw_d1[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h2D420BD0)) 
    \cur_value[2]_i_19 
       (.I0(\sec_reg_n_0_[5] ),
        .I1(\sec_reg_n_0_[3] ),
        .I2(\sec_reg_n_0_[4] ),
        .I3(\sec_reg_n_0_[2] ),
        .I4(\sec_reg[1]_0 ),
        .O(sw_d0[1]));
  LUT3 #(
    .INIT(8'hE0)) 
    \cur_value[2]_i_25 
       (.I0(\min_reg_n_0_[3] ),
        .I1(\min_reg_n_0_[4] ),
        .I2(\min_reg_n_0_[5] ),
        .O(sw_d3[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h41082410)) 
    \cur_value[3]_i_15 
       (.I0(\sec_reg_n_0_[2] ),
        .I1(\sec_reg_n_0_[5] ),
        .I2(\sec_reg_n_0_[3] ),
        .I3(\sec_reg_n_0_[4] ),
        .I4(\sec_reg[1]_0 ),
        .O(sw_d0[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h40182140)) 
    \cur_value[3]_i_22 
       (.I0(\min_reg_n_0_[2] ),
        .I1(\min_reg_n_0_[5] ),
        .I2(\min_reg_n_0_[4] ),
        .I3(\min_reg_n_0_[3] ),
        .I4(Q[1]),
        .O(sw_d2[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \min[0]_i_1__0 
       (.I0(\min[5]_i_5__0_n_0 ),
        .I1(Q[0]),
        .O(\min[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \min[1]_i_1__0 
       (.I0(\min[5]_i_5__0_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\min[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \min[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\min_reg_n_0_[2] ),
        .I3(\min[5]_i_5__0_n_0 ),
        .O(\min[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \min[3]_i_1__0 
       (.I0(\min[5]_i_5__0_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\min_reg_n_0_[2] ),
        .I4(\min_reg_n_0_[3] ),
        .O(\min[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \min[4]_i_1__0 
       (.I0(\min[5]_i_5__0_n_0 ),
        .I1(\min_reg_n_0_[3] ),
        .I2(\min_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\min_reg_n_0_[4] ),
        .O(\min[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h80FF80FF80FF8080)) 
    \min[5]_i_2__0 
       (.I0(\sec_reg_n_0_[3] ),
        .I1(sw_d0[0]),
        .I2(\min[5]_i_4__0_n_0 ),
        .I3(running_reg_0),
        .I4(btn_pulse),
        .I5(btn_center_pulse),
        .O(\min[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \min[5]_i_3__0 
       (.I0(\min[5]_i_5__0_n_0 ),
        .I1(\min_reg_n_0_[4] ),
        .I2(\min[5]_i_6__0_n_0 ),
        .I3(\min_reg_n_0_[5] ),
        .O(\min[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015555555)) 
    \min[5]_i_4__0 
       (.I0(\min_reg[0]_0 ),
        .I1(\min_reg_n_0_[5] ),
        .I2(\min_reg_n_0_[4] ),
        .I3(\min_reg_n_0_[3] ),
        .I4(\min_reg_n_0_[2] ),
        .I5(\min[5]_i_8_n_0 ),
        .O(\min[5]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hB000BBBB00000000)) 
    \min[5]_i_5__0 
       (.I0(\sec_reg_n_0_[2] ),
        .I1(\min[5]_i_9_n_0 ),
        .I2(\sec_reg_n_0_[4] ),
        .I3(\sec_reg_n_0_[3] ),
        .I4(\sec_reg_n_0_[5] ),
        .I5(\min[5]_i_4__0_n_0 ),
        .O(\min[5]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \min[5]_i_6__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\min_reg_n_0_[2] ),
        .I3(\min_reg_n_0_[3] ),
        .O(\min[5]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \min[5]_i_8 
       (.I0(\sec_reg_n_0_[5] ),
        .I1(\sec_reg_n_0_[2] ),
        .I2(\sec_reg_n_0_[4] ),
        .I3(\sec_reg[1]_0 ),
        .O(\min[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \min[5]_i_9 
       (.I0(\sec_reg[1]_0 ),
        .I1(sw_d0[0]),
        .O(\min[5]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[0] 
       (.C(clk),
        .CE(\min[5]_i_2__0_n_0 ),
        .D(\min[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[1] 
       (.C(clk),
        .CE(\min[5]_i_2__0_n_0 ),
        .D(\min[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[2] 
       (.C(clk),
        .CE(\min[5]_i_2__0_n_0 ),
        .D(\min[2]_i_1__0_n_0 ),
        .Q(\min_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[3] 
       (.C(clk),
        .CE(\min[5]_i_2__0_n_0 ),
        .D(\min[3]_i_1__0_n_0 ),
        .Q(\min_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[4] 
       (.C(clk),
        .CE(\min[5]_i_2__0_n_0 ),
        .D(\min[4]_i_1__0_n_0 ),
        .Q(\min_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[5] 
       (.C(clk),
        .CE(\min[5]_i_2__0_n_0 ),
        .D(\min[5]_i_3__0_n_0 ),
        .Q(\min_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    running_reg
       (.C(clk),
        .CE(1'b1),
        .D(running_reg_1),
        .Q(running_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sec[0]_i_1__1 
       (.I0(sw_d0[0]),
        .O(sec[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sec[1]_i_1__1 
       (.I0(sw_d0[0]),
        .I1(\sec_reg[1]_0 ),
        .O(sec[1]));
  LUT6 #(
    .INIT(64'h5F5F20A05F5FA0A0)) 
    \sec[2]_i_1__1 
       (.I0(sw_d0[0]),
        .I1(\sec_reg_n_0_[3] ),
        .I2(\sec_reg[1]_0 ),
        .I3(\sec_reg_n_0_[4] ),
        .I4(\sec_reg_n_0_[2] ),
        .I5(\sec_reg_n_0_[5] ),
        .O(sec[2]));
  LUT6 #(
    .INIT(64'h6C6C4CCC6C6CCCCC)) 
    \sec[3]_i_1__1 
       (.I0(sw_d0[0]),
        .I1(\sec_reg_n_0_[3] ),
        .I2(\sec_reg[1]_0 ),
        .I3(\sec_reg_n_0_[4] ),
        .I4(\sec_reg_n_0_[2] ),
        .I5(\sec_reg_n_0_[5] ),
        .O(sec[3]));
  LUT6 #(
    .INIT(64'h3FFF7FFF80008000)) 
    \sec[4]_i_1__1 
       (.I0(\sec_reg_n_0_[2] ),
        .I1(\sec_reg[1]_0 ),
        .I2(sw_d0[0]),
        .I3(\sec_reg_n_0_[3] ),
        .I4(\sec_reg_n_0_[5] ),
        .I5(\sec_reg_n_0_[4] ),
        .O(sec[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \sec[5]_i_2__1 
       (.I0(running_reg_0),
        .I1(tick_1hz),
        .O(running1));
  LUT6 #(
    .INIT(64'h2CCCCCCCCCCCCCCC)) 
    \sec[5]_i_3__1 
       (.I0(\sec_reg_n_0_[2] ),
        .I1(\sec_reg_n_0_[5] ),
        .I2(sw_d0[0]),
        .I3(\sec_reg_n_0_[3] ),
        .I4(\sec_reg[1]_0 ),
        .I5(\sec_reg_n_0_[4] ),
        .O(sec[5]));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \sec[5]_i_4__1 
       (.I0(Q[1]),
        .I1(\min_reg_n_0_[2] ),
        .I2(\sec[5]_i_5__0_n_0 ),
        .I3(Q[0]),
        .I4(tick_1hz),
        .I5(running_reg_0),
        .O(\min_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \sec[5]_i_5__0 
       (.I0(\min_reg_n_0_[3] ),
        .I1(\min_reg_n_0_[4] ),
        .I2(\min_reg_n_0_[5] ),
        .O(\sec[5]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[0] 
       (.C(clk),
        .CE(running1),
        .D(sec[0]),
        .Q(sw_d0[0]),
        .R(\sec_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[1] 
       (.C(clk),
        .CE(running1),
        .D(sec[1]),
        .Q(\sec_reg[1]_0 ),
        .R(\sec_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[2] 
       (.C(clk),
        .CE(running1),
        .D(sec[2]),
        .Q(\sec_reg_n_0_[2] ),
        .R(\sec_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[3] 
       (.C(clk),
        .CE(running1),
        .D(sec[3]),
        .Q(\sec_reg_n_0_[3] ),
        .R(\sec_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[4] 
       (.C(clk),
        .CE(running1),
        .D(sec[4]),
        .Q(\sec_reg_n_0_[4] ),
        .R(\sec_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[5] 
       (.C(clk),
        .CE(running1),
        .D(sec[5]),
        .Q(\sec_reg_n_0_[5] ),
        .R(\sec_reg[5]_0 ));
endmodule

module tick_1hz_gen
   (tick_1hz_reg_0,
    tick_1hz,
    tick_1hz_reg_1,
    tick_1hz_reg_2,
    \min[5]_i_4__0 ,
    show_seconds,
    btn_pulse,
    btn_right_pulse,
    \min[3]_i_4 ,
    clk);
  output tick_1hz_reg_0;
  output tick_1hz;
  output tick_1hz_reg_1;
  output tick_1hz_reg_2;
  input \min[5]_i_4__0 ;
  input show_seconds;
  input btn_pulse;
  input btn_right_pulse;
  input \min[3]_i_4 ;
  input clk;

  wire btn_pulse;
  wire btn_right_pulse;
  wire clk;
  wire [26:0]counter;
  wire \counter[26]_i_1_n_0 ;
  wire \counter[26]_i_3_n_0 ;
  wire \counter[26]_i_4_n_0 ;
  wire \counter[26]_i_5_n_0 ;
  wire \counter[26]_i_6_n_0 ;
  wire \counter[26]_i_7_n_0 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[26]_i_2_n_3 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \min[3]_i_4 ;
  wire \min[5]_i_4__0 ;
  wire [26:0]p_1_in;
  wire show_seconds;
  wire tick_1hz;
  wire tick_1hz_reg_0;
  wire tick_1hz_reg_1;
  wire tick_1hz_reg_2;
  wire [3:1]\NLW_counter_reg[26]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[26]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter[26]_i_1 
       (.I0(\counter[26]_i_3_n_0 ),
        .I1(\counter[26]_i_4_n_0 ),
        .I2(\counter[26]_i_5_n_0 ),
        .I3(\counter[26]_i_6_n_0 ),
        .I4(\counter[26]_i_7_n_0 ),
        .O(\counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[26]_i_3 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(\counter[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \counter[26]_i_4 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[3]),
        .I3(counter[4]),
        .I4(counter[8]),
        .I5(counter[7]),
        .O(\counter[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \counter[26]_i_5 
       (.I0(counter[18]),
        .I1(counter[17]),
        .I2(counter[15]),
        .I3(counter[16]),
        .I4(counter[19]),
        .I5(counter[20]),
        .O(\counter[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \counter[26]_i_6 
       (.I0(counter[11]),
        .I1(counter[12]),
        .I2(counter[9]),
        .I3(counter[10]),
        .I4(counter[14]),
        .I5(counter[13]),
        .O(\counter[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \counter[26]_i_7 
       (.I0(counter[23]),
        .I1(counter[24]),
        .I2(counter[21]),
        .I3(counter[22]),
        .I4(counter[25]),
        .I5(counter[26]),
        .O(\counter[26]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(counter[0]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(counter[10]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(counter[11]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(counter[12]),
        .R(\counter[26]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(counter[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(counter[13]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(counter[14]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(counter[15]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(counter[16]),
        .R(\counter[26]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(counter[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(counter[17]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(counter[18]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(counter[19]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(counter[1]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(counter[20]),
        .R(\counter[26]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[20:17]),
        .S(counter[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(counter[21]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(counter[22]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(counter[23]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(counter[24]),
        .R(\counter[26]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[24:21]),
        .S(counter[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[25]),
        .Q(counter[25]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[26]),
        .Q(counter[26]),
        .R(\counter[26]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[26]_i_2 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_reg[26]_i_2_CO_UNCONNECTED [3:1],\counter_reg[26]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[26]_i_2_O_UNCONNECTED [3:2],p_1_in[26:25]}),
        .S({1'b0,1'b0,counter[26:25]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(counter[2]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(counter[3]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(counter[4]),
        .R(\counter[26]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(counter[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(counter[5]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(counter[6]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(counter[7]),
        .R(\counter[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(counter[8]),
        .R(\counter[26]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(counter[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(counter[9]),
        .R(\counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \min[4]_i_11 
       (.I0(tick_1hz),
        .I1(btn_pulse),
        .I2(btn_right_pulse),
        .I3(\min[3]_i_4 ),
        .O(tick_1hz_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \min[5]_i_7__0 
       (.I0(tick_1hz),
        .I1(\min[5]_i_4__0 ),
        .O(tick_1hz_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    \sec_disp[5]_i_2 
       (.I0(tick_1hz),
        .I1(show_seconds),
        .O(tick_1hz_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    tick_1hz_reg
       (.C(clk),
        .CE(1'b1),
        .D(\counter[26]_i_1_n_0 ),
        .Q(tick_1hz),
        .R(1'b0));
endmodule

module time_uart_parser
   (time_valid_pulse,
    \s2_reg[3]_0 ,
    btn_left_pulse,
    btn_right_pulse,
    btn_up_pulse,
    btn_down_pulse,
    btn_center_pulse,
    Q,
    E,
    \ss_reg[3]_0 ,
    btn_pulse_reg,
    \hh_reg[4]_0 ,
    \hh_reg[2]_0 ,
    \mm_reg[3]_0 ,
    \mm_reg[5]_0 ,
    \ss_reg[5]_0 ,
    \mm_reg[4]_0 ,
    time_valid_pulse_reg_0,
    btn_center_pulse_reg_0,
    btn_pulse_reg_0,
    btn_right_pulse_reg_0,
    btn_pulse_reg_1,
    btn_pulse_reg_2,
    btn_pulse_reg_3,
    set_sel_reg,
    p_2_in,
    btn_pulse_reg_4,
    btn_down_pulse_reg_0,
    clk,
    time_valid_pulse_reg_1,
    time_valid_pulse_reg_2,
    \FSM_onehot_st_reg[0]_0 ,
    is_digit_return,
    btn_right_pulse_reg_1,
    valid,
    \FSM_onehot_st_reg[0]_1 ,
    tick_1hz,
    \sec_reg[5] ,
    set_min_mode0,
    set_hour_mode0,
    \hour_r_reg[4] ,
    \hour_r_reg[4]_0 ,
    \minute_reg[5] ,
    D,
    \sec_reg[4] ,
    \sec_reg[4]_0 ,
    \sec_reg[5]_0 ,
    \minute_reg[4] ,
    \minute_reg[4]_0 ,
    \minute_reg[4]_1 ,
    btn_pulse,
    \minute_reg[5]_0 ,
    \sec_reg[1] ,
    \minute_reg[1] ,
    \hour_r_reg[3] ,
    \hour_r_reg[4]_1 ,
    \hour_r_reg[1] ,
    \hour_r_reg[1]_0 ,
    \sec[0]_i_3 ,
    \sec[0]_i_3_0 ,
    \min[3]_i_2 ,
    \sec[4]_i_2 ,
    \sec[4]_i_2_0 ,
    \min_reg[4] ,
    \min[5]_i_3 ,
    rst_sys,
    \FSM_onehot_st_reg[8]_0 ,
    \m2_reg[3]_0 ,
    \bcode_reg[7]_0 ,
    \m1_reg[3]_0 ,
    \h2_reg[3]_0 ,
    \h1_reg[3]_0 ,
    \s2_reg[3]_1 ,
    \s1_reg[3]_0 ,
    \bcode_reg[7]_1 ,
    \mm_reg[0]_0 );
  output time_valid_pulse;
  output \s2_reg[3]_0 ;
  output btn_left_pulse;
  output btn_right_pulse;
  output btn_up_pulse;
  output btn_down_pulse;
  output btn_center_pulse;
  output [8:0]Q;
  output [0:0]E;
  output [1:0]\ss_reg[3]_0 ;
  output btn_pulse_reg;
  output [0:0]\hh_reg[4]_0 ;
  output [0:0]\hh_reg[2]_0 ;
  output [0:0]\mm_reg[3]_0 ;
  output [2:0]\mm_reg[5]_0 ;
  output [3:0]\ss_reg[5]_0 ;
  output [2:0]\mm_reg[4]_0 ;
  output [3:0]time_valid_pulse_reg_0;
  output btn_center_pulse_reg_0;
  output btn_pulse_reg_0;
  output btn_right_pulse_reg_0;
  output btn_pulse_reg_1;
  output btn_pulse_reg_2;
  output btn_pulse_reg_3;
  output set_sel_reg;
  output p_2_in;
  output btn_pulse_reg_4;
  input btn_down_pulse_reg_0;
  input clk;
  input time_valid_pulse_reg_1;
  input time_valid_pulse_reg_2;
  input \FSM_onehot_st_reg[0]_0 ;
  input is_digit_return;
  input btn_right_pulse_reg_1;
  input valid;
  input \FSM_onehot_st_reg[0]_1 ;
  input tick_1hz;
  input \sec_reg[5] ;
  input set_min_mode0;
  input set_hour_mode0;
  input \hour_r_reg[4] ;
  input \hour_r_reg[4]_0 ;
  input \minute_reg[5] ;
  input [3:0]D;
  input \sec_reg[4] ;
  input \sec_reg[4]_0 ;
  input \sec_reg[5]_0 ;
  input \minute_reg[4] ;
  input \minute_reg[4]_0 ;
  input \minute_reg[4]_1 ;
  input btn_pulse;
  input \minute_reg[5]_0 ;
  input \sec_reg[1] ;
  input [1:0]\minute_reg[1] ;
  input \hour_r_reg[3] ;
  input \hour_r_reg[4]_1 ;
  input [1:0]\hour_r_reg[1] ;
  input \hour_r_reg[1]_0 ;
  input \sec[0]_i_3 ;
  input \sec[0]_i_3_0 ;
  input \min[3]_i_2 ;
  input [2:0]\sec[4]_i_2 ;
  input [2:0]\sec[4]_i_2_0 ;
  input \min_reg[4] ;
  input [0:0]\min[5]_i_3 ;
  input rst_sys;
  input [1:0]\FSM_onehot_st_reg[8]_0 ;
  input [0:0]\m2_reg[3]_0 ;
  input [7:0]\bcode_reg[7]_0 ;
  input [0:0]\m1_reg[3]_0 ;
  input [0:0]\h2_reg[3]_0 ;
  input [0:0]\h1_reg[3]_0 ;
  input [0:0]\s2_reg[3]_1 ;
  input [0:0]\s1_reg[3]_0 ;
  input [0:0]\bcode_reg[7]_1 ;
  input [0:0]\mm_reg[0]_0 ;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_st[0]_i_1_n_0 ;
  wire \FSM_onehot_st[2]_i_1_n_0 ;
  wire \FSM_onehot_st[3]_i_1_n_0 ;
  wire \FSM_onehot_st[4]_i_1_n_0 ;
  wire \FSM_onehot_st[5]_i_1_n_0 ;
  wire \FSM_onehot_st[6]_i_1_n_0 ;
  wire \FSM_onehot_st[7]_i_1_n_0 ;
  wire \FSM_onehot_st[9]_i_1_n_0 ;
  wire \FSM_onehot_st[9]_i_2_n_0 ;
  wire \FSM_onehot_st[9]_i_4_n_0 ;
  wire \FSM_onehot_st_reg[0]_0 ;
  wire \FSM_onehot_st_reg[0]_1 ;
  wire [1:0]\FSM_onehot_st_reg[8]_0 ;
  wire \FSM_onehot_st_reg_n_0_[9] ;
  wire [8:0]Q;
  wire [7:0]\bcode_reg[7]_0 ;
  wire [0:0]\bcode_reg[7]_1 ;
  wire \bcode_reg_n_0_[0] ;
  wire \bcode_reg_n_0_[1] ;
  wire \bcode_reg_n_0_[2] ;
  wire \bcode_reg_n_0_[3] ;
  wire \bcode_reg_n_0_[4] ;
  wire \bcode_reg_n_0_[5] ;
  wire \bcode_reg_n_0_[6] ;
  wire \bcode_reg_n_0_[7] ;
  wire btn_center_pulse;
  wire btn_center_pulse_i_1_n_0;
  wire btn_center_pulse_reg_0;
  wire btn_down_pulse;
  wire btn_down_pulse_i_1_n_0;
  wire btn_down_pulse_reg_0;
  wire btn_left_pulse;
  wire btn_left_pulse_i_1_n_0;
  wire btn_left_pulse_i_2_n_0;
  wire btn_pulse;
  wire btn_pulse_reg;
  wire btn_pulse_reg_0;
  wire btn_pulse_reg_1;
  wire btn_pulse_reg_2;
  wire btn_pulse_reg_3;
  wire btn_pulse_reg_4;
  wire btn_right_pulse;
  wire btn_right_pulse_i_1_n_0;
  wire btn_right_pulse_i_2_n_0;
  wire btn_right_pulse_reg_0;
  wire btn_right_pulse_reg_1;
  wire btn_up_pulse;
  wire btn_up_pulse_i_1_n_0;
  wire clk;
  wire [5:0]ext_hh;
  wire [4:0]ext_mm;
  wire [5:0]ext_ss;
  wire [3:0]h1__0;
  wire [0:0]\h1_reg[3]_0 ;
  wire [3:0]h2__0;
  wire [0:0]\h2_reg[3]_0 ;
  wire \hh[1]_i_1_n_0 ;
  wire \hh[2]_i_1_n_0 ;
  wire \hh[3]_i_1_n_0 ;
  wire \hh[4]_i_1_n_0 ;
  wire \hh[5]_i_2_n_0 ;
  wire \hh[5]_i_3_n_0 ;
  wire [0:0]\hh_reg[2]_0 ;
  wire [0:0]\hh_reg[4]_0 ;
  wire [1:0]\hour_r_reg[1] ;
  wire \hour_r_reg[1]_0 ;
  wire \hour_r_reg[3] ;
  wire \hour_r_reg[4] ;
  wire \hour_r_reg[4]_0 ;
  wire \hour_r_reg[4]_1 ;
  wire is_digit_return;
  wire [3:0]m1__0;
  wire [0:0]\m1_reg[3]_0 ;
  wire [3:0]m2__0;
  wire [0:0]\m2_reg[3]_0 ;
  wire \min[3]_i_2 ;
  wire [0:0]\min[5]_i_3 ;
  wire \min_reg[4] ;
  wire \minute[5]_i_3_n_0 ;
  wire \minute[5]_i_5_n_0 ;
  wire [1:0]\minute_reg[1] ;
  wire \minute_reg[4] ;
  wire \minute_reg[4]_0 ;
  wire \minute_reg[4]_1 ;
  wire \minute_reg[5] ;
  wire \minute_reg[5]_0 ;
  wire \mm[1]_i_1_n_0 ;
  wire \mm[2]_i_1_n_0 ;
  wire \mm[3]_i_1_n_0 ;
  wire \mm[4]_i_1_n_0 ;
  wire \mm[5]_i_1_n_0 ;
  wire \mm[5]_i_2_n_0 ;
  wire [0:0]\mm_reg[0]_0 ;
  wire [0:0]\mm_reg[3]_0 ;
  wire [2:0]\mm_reg[4]_0 ;
  wire [2:0]\mm_reg[5]_0 ;
  wire p_2_in;
  wire rst_sys;
  wire [3:0]s1__0;
  wire [0:0]\s1_reg[3]_0 ;
  wire [3:0]s2__0;
  wire \s2_reg[3]_0 ;
  wire [0:0]\s2_reg[3]_1 ;
  wire \sec[0]_i_3 ;
  wire \sec[0]_i_3_0 ;
  wire [2:0]\sec[4]_i_2 ;
  wire [2:0]\sec[4]_i_2_0 ;
  wire \sec[5]_i_3_n_0 ;
  wire \sec_reg[1] ;
  wire \sec_reg[4] ;
  wire \sec_reg[4]_0 ;
  wire \sec_reg[5] ;
  wire \sec_reg[5]_0 ;
  wire set_hour_mode0;
  wire set_min_mode0;
  wire set_sel_reg;
  wire \ss[0]_i_1_n_0 ;
  wire \ss[1]_i_1_n_0 ;
  wire \ss[2]_i_1_n_0 ;
  wire \ss[3]_i_1_n_0 ;
  wire \ss[3]_i_2_n_0 ;
  wire \ss[4]_i_1_n_0 ;
  wire \ss[5]_i_1_n_0 ;
  wire \ss[5]_i_2_n_0 ;
  wire [1:0]\ss_reg[3]_0 ;
  wire [3:0]\ss_reg[5]_0 ;
  wire tick_1hz;
  wire time_valid_pulse;
  wire time_valid_pulse_i_10_n_0;
  wire time_valid_pulse_i_11_n_0;
  wire time_valid_pulse_i_12_n_0;
  wire time_valid_pulse_i_3_n_0;
  wire time_valid_pulse_i_5_n_0;
  wire time_valid_pulse_i_6_n_0;
  wire time_valid_pulse_i_7_n_0;
  wire [3:0]time_valid_pulse_reg_0;
  wire time_valid_pulse_reg_1;
  wire time_valid_pulse_reg_2;
  wire valid;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF22F2)) 
    \FSM_onehot_st[0]_i_1 
       (.I0(Q[8]),
        .I1(\FSM_onehot_st_reg[0]_0 ),
        .I2(\FSM_onehot_st[9]_i_4_n_0 ),
        .I3(is_digit_return),
        .I4(Q[7]),
        .I5(\FSM_onehot_st_reg_n_0_[9] ),
        .O(\FSM_onehot_st[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_st[2]_i_1 
       (.I0(Q[1]),
        .I1(is_digit_return),
        .O(\FSM_onehot_st[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_st[3]_i_1 
       (.I0(Q[2]),
        .I1(is_digit_return),
        .O(\FSM_onehot_st[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_st[4]_i_1 
       (.I0(Q[3]),
        .I1(is_digit_return),
        .O(\FSM_onehot_st[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_st[5]_i_1 
       (.I0(Q[4]),
        .I1(is_digit_return),
        .O(\FSM_onehot_st[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_st[6]_i_1 
       (.I0(Q[5]),
        .I1(is_digit_return),
        .O(\FSM_onehot_st[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_st[7]_i_1 
       (.I0(Q[6]),
        .I1(is_digit_return),
        .O(\FSM_onehot_st[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \FSM_onehot_st[9]_i_1 
       (.I0(valid),
        .I1(\FSM_onehot_st_reg[0]_1 ),
        .I2(Q[7]),
        .I3(\FSM_onehot_st_reg_n_0_[9] ),
        .I4(Q[8]),
        .I5(\FSM_onehot_st[9]_i_4_n_0 ),
        .O(\FSM_onehot_st[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_st[9]_i_2 
       (.I0(Q[8]),
        .I1(\FSM_onehot_st_reg[0]_0 ),
        .O(\FSM_onehot_st[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_st[9]_i_4 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\FSM_onehot_st[9]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "S_M1:0000001000,S_M2:0000010000,S_H2:0000000100,S_H1:0000000010,S_WAIT:0000000001,S_T_NL:0010000000,S_B_NL:1000000000,S_BCODE:0100000000,S_S2:0001000000,S_S1:0000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_st_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_st[9]_i_1_n_0 ),
        .D(\FSM_onehot_st[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(rst_sys));
  (* FSM_ENCODED_STATES = "S_M1:0000001000,S_M2:0000010000,S_H2:0000000100,S_H1:0000000010,S_WAIT:0000000001,S_T_NL:0010000000,S_B_NL:1000000000,S_BCODE:0100000000,S_S2:0001000000,S_S1:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_st[9]_i_1_n_0 ),
        .D(\FSM_onehot_st_reg[8]_0 [0]),
        .Q(Q[1]),
        .R(rst_sys));
  (* FSM_ENCODED_STATES = "S_M1:0000001000,S_M2:0000010000,S_H2:0000000100,S_H1:0000000010,S_WAIT:0000000001,S_T_NL:0010000000,S_B_NL:1000000000,S_BCODE:0100000000,S_S2:0001000000,S_S1:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_st[9]_i_1_n_0 ),
        .D(\FSM_onehot_st[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(rst_sys));
  (* FSM_ENCODED_STATES = "S_M1:0000001000,S_M2:0000010000,S_H2:0000000100,S_H1:0000000010,S_WAIT:0000000001,S_T_NL:0010000000,S_B_NL:1000000000,S_BCODE:0100000000,S_S2:0001000000,S_S1:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_st[9]_i_1_n_0 ),
        .D(\FSM_onehot_st[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(rst_sys));
  (* FSM_ENCODED_STATES = "S_M1:0000001000,S_M2:0000010000,S_H2:0000000100,S_H1:0000000010,S_WAIT:0000000001,S_T_NL:0010000000,S_B_NL:1000000000,S_BCODE:0100000000,S_S2:0001000000,S_S1:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_st[9]_i_1_n_0 ),
        .D(\FSM_onehot_st[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(rst_sys));
  (* FSM_ENCODED_STATES = "S_M1:0000001000,S_M2:0000010000,S_H2:0000000100,S_H1:0000000010,S_WAIT:0000000001,S_T_NL:0010000000,S_B_NL:1000000000,S_BCODE:0100000000,S_S2:0001000000,S_S1:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_st[9]_i_1_n_0 ),
        .D(\FSM_onehot_st[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(rst_sys));
  (* FSM_ENCODED_STATES = "S_M1:0000001000,S_M2:0000010000,S_H2:0000000100,S_H1:0000000010,S_WAIT:0000000001,S_T_NL:0010000000,S_B_NL:1000000000,S_BCODE:0100000000,S_S2:0001000000,S_S1:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_st[9]_i_1_n_0 ),
        .D(\FSM_onehot_st[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(rst_sys));
  (* FSM_ENCODED_STATES = "S_M1:0000001000,S_M2:0000010000,S_H2:0000000100,S_H1:0000000010,S_WAIT:0000000001,S_T_NL:0010000000,S_B_NL:1000000000,S_BCODE:0100000000,S_S2:0001000000,S_S1:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_st[9]_i_1_n_0 ),
        .D(\FSM_onehot_st[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(rst_sys));
  (* FSM_ENCODED_STATES = "S_M1:0000001000,S_M2:0000010000,S_H2:0000000100,S_H1:0000000010,S_WAIT:0000000001,S_T_NL:0010000000,S_B_NL:1000000000,S_BCODE:0100000000,S_S2:0001000000,S_S1:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[8] 
       (.C(clk),
        .CE(\FSM_onehot_st[9]_i_1_n_0 ),
        .D(\FSM_onehot_st_reg[8]_0 [1]),
        .Q(Q[8]),
        .R(rst_sys));
  (* FSM_ENCODED_STATES = "S_M1:0000001000,S_M2:0000010000,S_H2:0000000100,S_H1:0000000010,S_WAIT:0000000001,S_T_NL:0010000000,S_B_NL:1000000000,S_BCODE:0100000000,S_S2:0001000000,S_S1:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[9] 
       (.C(clk),
        .CE(\FSM_onehot_st[9]_i_1_n_0 ),
        .D(\FSM_onehot_st[9]_i_2_n_0 ),
        .Q(\FSM_onehot_st_reg_n_0_[9] ),
        .R(rst_sys));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[2]_i_5 
       (.I0(btn_up_pulse),
        .I1(\minute_reg[5]_0 ),
        .I2(btn_down_pulse),
        .I3(btn_pulse),
        .O(p_2_in));
  FDRE #(
    .INIT(1'b0)) 
    \bcode_reg[0] 
       (.C(clk),
        .CE(\bcode_reg[7]_1 ),
        .D(\bcode_reg[7]_0 [0]),
        .Q(\bcode_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcode_reg[1] 
       (.C(clk),
        .CE(\bcode_reg[7]_1 ),
        .D(\bcode_reg[7]_0 [1]),
        .Q(\bcode_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcode_reg[2] 
       (.C(clk),
        .CE(\bcode_reg[7]_1 ),
        .D(\bcode_reg[7]_0 [2]),
        .Q(\bcode_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcode_reg[3] 
       (.C(clk),
        .CE(\bcode_reg[7]_1 ),
        .D(\bcode_reg[7]_0 [3]),
        .Q(\bcode_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcode_reg[4] 
       (.C(clk),
        .CE(\bcode_reg[7]_1 ),
        .D(\bcode_reg[7]_0 [4]),
        .Q(\bcode_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcode_reg[5] 
       (.C(clk),
        .CE(\bcode_reg[7]_1 ),
        .D(\bcode_reg[7]_0 [5]),
        .Q(\bcode_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcode_reg[6] 
       (.C(clk),
        .CE(\bcode_reg[7]_1 ),
        .D(\bcode_reg[7]_0 [6]),
        .Q(\bcode_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcode_reg[7] 
       (.C(clk),
        .CE(\bcode_reg[7]_1 ),
        .D(\bcode_reg[7]_0 [7]),
        .Q(\bcode_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    btn_center_pulse_i_1
       (.I0(\bcode_reg_n_0_[2] ),
        .I1(\bcode_reg_n_0_[4] ),
        .I2(\bcode_reg_n_0_[0] ),
        .I3(\bcode_reg_n_0_[1] ),
        .I4(btn_right_pulse_i_2_n_0),
        .O(btn_center_pulse_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_center_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_center_pulse_i_1_n_0),
        .Q(btn_center_pulse),
        .R(btn_down_pulse_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    btn_down_pulse_i_1
       (.I0(\bcode_reg_n_0_[2] ),
        .I1(\bcode_reg_n_0_[4] ),
        .I2(\bcode_reg_n_0_[0] ),
        .I3(\bcode_reg_n_0_[1] ),
        .I4(btn_right_pulse_i_2_n_0),
        .O(btn_down_pulse_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_down_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_down_pulse_i_1_n_0),
        .Q(btn_down_pulse),
        .R(btn_down_pulse_reg_0));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    btn_left_pulse_i_1
       (.I0(\bcode_reg_n_0_[3] ),
        .I1(\bcode_reg_n_0_[4] ),
        .I2(\bcode_reg_n_0_[1] ),
        .I3(\bcode_reg_n_0_[2] ),
        .I4(\bcode_reg_n_0_[0] ),
        .I5(btn_left_pulse_i_2_n_0),
        .O(btn_left_pulse_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    btn_left_pulse_i_2
       (.I0(\bcode_reg_n_0_[6] ),
        .I1(\bcode_reg_n_0_[5] ),
        .I2(\bcode_reg_n_0_[7] ),
        .I3(\FSM_onehot_st_reg_n_0_[9] ),
        .I4(btn_right_pulse_reg_1),
        .O(btn_left_pulse_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_left_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_left_pulse_i_1_n_0),
        .Q(btn_left_pulse),
        .R(btn_down_pulse_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    btn_right_pulse_i_1
       (.I0(\bcode_reg_n_0_[4] ),
        .I1(\bcode_reg_n_0_[2] ),
        .I2(\bcode_reg_n_0_[1] ),
        .I3(\bcode_reg_n_0_[0] ),
        .I4(btn_right_pulse_i_2_n_0),
        .O(btn_right_pulse_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    btn_right_pulse_i_2
       (.I0(btn_right_pulse_reg_1),
        .I1(\FSM_onehot_st_reg_n_0_[9] ),
        .I2(\bcode_reg_n_0_[7] ),
        .I3(\bcode_reg_n_0_[5] ),
        .I4(\bcode_reg_n_0_[6] ),
        .I5(\bcode_reg_n_0_[3] ),
        .O(btn_right_pulse_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_right_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_right_pulse_i_1_n_0),
        .Q(btn_right_pulse),
        .R(btn_down_pulse_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    btn_up_pulse_i_1
       (.I0(\bcode_reg_n_0_[2] ),
        .I1(\bcode_reg_n_0_[4] ),
        .I2(\bcode_reg_n_0_[0] ),
        .I3(\bcode_reg_n_0_[1] ),
        .I4(btn_right_pulse_i_2_n_0),
        .O(btn_up_pulse_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_up_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_up_pulse_i_1_n_0),
        .Q(btn_up_pulse),
        .R(btn_down_pulse_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \h1_reg[0] 
       (.C(clk),
        .CE(\h1_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [0]),
        .Q(h1__0[0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \h1_reg[1] 
       (.C(clk),
        .CE(\h1_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [1]),
        .Q(h1__0[1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \h1_reg[2] 
       (.C(clk),
        .CE(\h1_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [2]),
        .Q(h1__0[2]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \h1_reg[3] 
       (.C(clk),
        .CE(\h1_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [3]),
        .Q(h1__0[3]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \h2_reg[0] 
       (.C(clk),
        .CE(\h2_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [0]),
        .Q(h2__0[0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \h2_reg[1] 
       (.C(clk),
        .CE(\h2_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [1]),
        .Q(h2__0[1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \h2_reg[2] 
       (.C(clk),
        .CE(\h2_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [2]),
        .Q(h2__0[2]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \h2_reg[3] 
       (.C(clk),
        .CE(\h2_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [3]),
        .Q(h2__0[3]),
        .R(rst_sys));
  LUT2 #(
    .INIT(4'h6)) 
    \hh[1]_i_1 
       (.I0(h1__0[0]),
        .I1(h2__0[1]),
        .O(\hh[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \hh[2]_i_1 
       (.I0(h1__0[0]),
        .I1(h2__0[1]),
        .I2(h2__0[2]),
        .I3(h1__0[1]),
        .O(\hh[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E81788777788)) 
    \hh[3]_i_1 
       (.I0(h1__0[1]),
        .I1(h2__0[2]),
        .I2(h2__0[1]),
        .I3(h2__0[3]),
        .I4(h1__0[2]),
        .I5(h1__0[0]),
        .O(\hh[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7887E11EE11E8778)) 
    \hh[4]_i_1 
       (.I0(h2__0[3]),
        .I1(\hh[5]_i_3_n_0 ),
        .I2(h1__0[3]),
        .I3(h1__0[1]),
        .I4(h1__0[0]),
        .I5(h1__0[2]),
        .O(\hh[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F0F0E180E1870F0)) 
    \hh[5]_i_2 
       (.I0(\hh[5]_i_3_n_0 ),
        .I1(h2__0[3]),
        .I2(h1__0[2]),
        .I3(h1__0[0]),
        .I4(h1__0[1]),
        .I5(h1__0[3]),
        .O(\hh[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \hh[5]_i_3 
       (.I0(h1__0[0]),
        .I1(h2__0[1]),
        .I2(h2__0[2]),
        .I3(h1__0[1]),
        .O(\hh[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hh_reg[0] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(h2__0[0]),
        .Q(ext_hh[0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \hh_reg[1] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\hh[1]_i_1_n_0 ),
        .Q(ext_hh[1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \hh_reg[2] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\hh[2]_i_1_n_0 ),
        .Q(\hh_reg[2]_0 ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \hh_reg[3] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\hh[3]_i_1_n_0 ),
        .Q(ext_hh[3]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \hh_reg[4] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\hh[4]_i_1_n_0 ),
        .Q(ext_hh[4]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \hh_reg[5] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\hh[5]_i_2_n_0 ),
        .Q(ext_hh[5]),
        .R(rst_sys));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \hour_r[0]_i_1 
       (.I0(\hour_r_reg[1] [0]),
        .I1(ext_hh[0]),
        .I2(time_valid_pulse),
        .O(time_valid_pulse_reg_0[0]));
  LUT5 #(
    .INIT(32'hB88B8BB8)) 
    \hour_r[1]_i_1 
       (.I0(ext_hh[1]),
        .I1(time_valid_pulse),
        .I2(\hour_r_reg[1] [1]),
        .I3(\hour_r_reg[1] [0]),
        .I4(\hour_r_reg[1]_0 ),
        .O(time_valid_pulse_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hour_r[3]_i_1 
       (.I0(ext_hh[3]),
        .I1(time_valid_pulse),
        .I2(\hour_r_reg[3] ),
        .O(time_valid_pulse_reg_0[2]));
  LUT6 #(
    .INIT(64'h07FF070007FF07FF)) 
    \hour_r[4]_i_1 
       (.I0(ext_hh[4]),
        .I1(ext_hh[3]),
        .I2(ext_hh[5]),
        .I3(time_valid_pulse),
        .I4(\hour_r_reg[4] ),
        .I5(\hour_r_reg[4]_0 ),
        .O(\hh_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \hour_r[4]_i_2 
       (.I0(time_valid_pulse),
        .I1(ext_hh[4]),
        .I2(\hour_r_reg[4]_1 ),
        .O(time_valid_pulse_reg_0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[0] 
       (.C(clk),
        .CE(\m1_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [0]),
        .Q(m1__0[0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[1] 
       (.C(clk),
        .CE(\m1_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [1]),
        .Q(m1__0[1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[2] 
       (.C(clk),
        .CE(\m1_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [2]),
        .Q(m1__0[2]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[3] 
       (.C(clk),
        .CE(\m1_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [3]),
        .Q(m1__0[3]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[0] 
       (.C(clk),
        .CE(\m2_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [0]),
        .Q(m2__0[0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[1] 
       (.C(clk),
        .CE(\m2_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [1]),
        .Q(m2__0[1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[2] 
       (.C(clk),
        .CE(\m2_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [2]),
        .Q(m2__0[2]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[3] 
       (.C(clk),
        .CE(\m2_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [3]),
        .Q(m2__0[3]),
        .R(rst_sys));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00001110)) 
    \min[4]_i_10 
       (.I0(btn_pulse),
        .I1(btn_down_pulse),
        .I2(\minute_reg[5]_0 ),
        .I3(btn_up_pulse),
        .I4(\min[3]_i_2 ),
        .O(btn_pulse_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \min[4]_i_4 
       (.I0(\min_reg[4] ),
        .I1(btn_up_pulse),
        .I2(\minute_reg[5]_0 ),
        .I3(btn_down_pulse),
        .I4(btn_pulse),
        .O(set_sel_reg));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h11100000)) 
    \min[5]_i_11 
       (.I0(\sec[0]_i_3_0 ),
        .I1(btn_right_pulse),
        .I2(\sec[0]_i_3 ),
        .I3(btn_center_pulse),
        .I4(\min[5]_i_3 ),
        .O(btn_pulse_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \minute[0]_i_1 
       (.I0(\minute_reg[1] [0]),
        .I1(ext_mm[0]),
        .I2(time_valid_pulse),
        .O(\mm_reg[4]_0 [0]));
  LUT5 #(
    .INIT(32'hB88B8BB8)) 
    \minute[1]_i_1 
       (.I0(ext_mm[1]),
        .I1(time_valid_pulse),
        .I2(\minute_reg[4]_0 ),
        .I3(\minute_reg[1] [0]),
        .I4(\minute_reg[1] [1]),
        .O(\mm_reg[4]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h8B8B8B88)) 
    \minute[4]_i_1 
       (.I0(ext_mm[4]),
        .I1(time_valid_pulse),
        .I2(\minute_reg[4] ),
        .I3(\minute_reg[4]_0 ),
        .I4(\minute_reg[4]_1 ),
        .O(\mm_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'h0EEEEEEEEEEEEEEE)) 
    \minute[5]_i_1 
       (.I0(\minute[5]_i_3_n_0 ),
        .I1(\minute_reg[5] ),
        .I2(\mm_reg[5]_0 [1]),
        .I3(\mm_reg[5]_0 [2]),
        .I4(\mm_reg[5]_0 [0]),
        .I5(\minute[5]_i_5_n_0 ),
        .O(\mm_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \minute[5]_i_3 
       (.I0(time_valid_pulse),
        .I1(btn_pulse),
        .I2(btn_down_pulse),
        .I3(\minute_reg[5]_0 ),
        .I4(btn_up_pulse),
        .I5(set_min_mode0),
        .O(\minute[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \minute[5]_i_5 
       (.I0(time_valid_pulse),
        .I1(ext_mm[4]),
        .O(\minute[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mm[1]_i_1 
       (.I0(m1__0[0]),
        .I1(m2__0[1]),
        .O(\mm[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \mm[2]_i_1 
       (.I0(m1__0[0]),
        .I1(m2__0[1]),
        .I2(m2__0[2]),
        .I3(m1__0[1]),
        .O(\mm[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E81788777788)) 
    \mm[3]_i_1 
       (.I0(m1__0[1]),
        .I1(m2__0[2]),
        .I2(m2__0[1]),
        .I3(m2__0[3]),
        .I4(m1__0[2]),
        .I5(m1__0[0]),
        .O(\mm[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7887E11EE11E8778)) 
    \mm[4]_i_1 
       (.I0(m2__0[3]),
        .I1(\mm[5]_i_2_n_0 ),
        .I2(m1__0[3]),
        .I3(m1__0[1]),
        .I4(m1__0[0]),
        .I5(m1__0[2]),
        .O(\mm[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F0F0E180E1870F0)) 
    \mm[5]_i_1 
       (.I0(\mm[5]_i_2_n_0 ),
        .I1(m2__0[3]),
        .I2(m1__0[2]),
        .I3(m1__0[0]),
        .I4(m1__0[1]),
        .I5(m1__0[3]),
        .O(\mm[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \mm[5]_i_2 
       (.I0(m1__0[0]),
        .I1(m2__0[1]),
        .I2(m2__0[2]),
        .I3(m1__0[1]),
        .O(\mm[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mm_reg[0] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(m2__0[0]),
        .Q(ext_mm[0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \mm_reg[1] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\mm[1]_i_1_n_0 ),
        .Q(ext_mm[1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \mm_reg[2] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\mm[2]_i_1_n_0 ),
        .Q(\mm_reg[5]_0 [0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \mm_reg[3] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\mm[3]_i_1_n_0 ),
        .Q(\mm_reg[5]_0 [1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \mm_reg[4] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\mm[4]_i_1_n_0 ),
        .Q(ext_mm[4]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \mm_reg[5] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\mm[5]_i_1_n_0 ),
        .Q(\mm_reg[5]_0 [2]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg[0] 
       (.C(clk),
        .CE(\s1_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [0]),
        .Q(s1__0[0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg[1] 
       (.C(clk),
        .CE(\s1_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [1]),
        .Q(s1__0[1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg[2] 
       (.C(clk),
        .CE(\s1_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [2]),
        .Q(s1__0[2]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg[3] 
       (.C(clk),
        .CE(\s1_reg[3]_0 ),
        .D(\bcode_reg[7]_0 [3]),
        .Q(s1__0[3]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \s2_reg[0] 
       (.C(clk),
        .CE(\s2_reg[3]_1 ),
        .D(\bcode_reg[7]_0 [0]),
        .Q(s2__0[0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \s2_reg[1] 
       (.C(clk),
        .CE(\s2_reg[3]_1 ),
        .D(\bcode_reg[7]_0 [1]),
        .Q(s2__0[1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \s2_reg[2] 
       (.C(clk),
        .CE(\s2_reg[3]_1 ),
        .D(\bcode_reg[7]_0 [2]),
        .Q(s2__0[2]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \s2_reg[3] 
       (.C(clk),
        .CE(\s2_reg[3]_1 ),
        .D(\bcode_reg[7]_0 [3]),
        .Q(s2__0[3]),
        .R(rst_sys));
  LUT4 #(
    .INIT(16'h8F88)) 
    \sec[0]_i_1 
       (.I0(ext_ss[0]),
        .I1(time_valid_pulse),
        .I2(D[0]),
        .I3(\sec_reg[1] ),
        .O(\ss_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'hFEFEFEFF10101000)) 
    \sec[0]_i_5 
       (.I0(\sec[0]_i_3_0 ),
        .I1(btn_right_pulse),
        .I2(\sec[4]_i_2 [0]),
        .I3(\sec[0]_i_3 ),
        .I4(btn_center_pulse),
        .I5(\sec[4]_i_2_0 [0]),
        .O(btn_pulse_reg_3));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \sec[1]_i_1 
       (.I0(ext_ss[1]),
        .I1(time_valid_pulse),
        .I2(D[0]),
        .I3(D[1]),
        .I4(\sec_reg[1] ),
        .O(\ss_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hFEFEFEFF10101000)) 
    \sec[2]_i_5 
       (.I0(\sec[0]_i_3_0 ),
        .I1(btn_right_pulse),
        .I2(\sec[4]_i_2 [1]),
        .I3(\sec[0]_i_3 ),
        .I4(btn_center_pulse),
        .I5(\sec[4]_i_2_0 [1]),
        .O(btn_pulse_reg_2));
  LUT3 #(
    .INIT(8'hEF)) 
    \sec[2]_i_6 
       (.I0(btn_right_pulse),
        .I1(\sec[0]_i_3_0 ),
        .I2(tick_1hz),
        .O(btn_right_pulse_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \sec[3]_i_6 
       (.I0(btn_center_pulse),
        .I1(\sec[0]_i_3 ),
        .I2(btn_right_pulse),
        .I3(\sec[0]_i_3_0 ),
        .O(btn_center_pulse_reg_0));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \sec[4]_i_1 
       (.I0(ext_ss[4]),
        .I1(time_valid_pulse),
        .I2(D[2]),
        .I3(\sec_reg[4] ),
        .I4(\sec_reg[4]_0 ),
        .O(\ss_reg[5]_0 [2]));
  LUT6 #(
    .INIT(64'hFEFEFEFF10101000)) 
    \sec[4]_i_4 
       (.I0(\sec[0]_i_3_0 ),
        .I1(btn_right_pulse),
        .I2(\sec[4]_i_2 [2]),
        .I3(\sec[0]_i_3 ),
        .I4(btn_center_pulse),
        .I5(\sec[4]_i_2_0 [2]),
        .O(btn_pulse_reg_1));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \sec[5]_i_1 
       (.I0(\ss_reg[3]_0 [0]),
        .I1(ext_ss[4]),
        .I2(\ss_reg[3]_0 [1]),
        .I3(time_valid_pulse),
        .I4(ext_ss[5]),
        .I5(\sec[5]_i_3_n_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'h88F8F888)) 
    \sec[5]_i_2 
       (.I0(ext_ss[5]),
        .I1(time_valid_pulse),
        .I2(\sec_reg[4]_0 ),
        .I3(D[3]),
        .I4(\sec_reg[5]_0 ),
        .O(\ss_reg[5]_0 [3]));
  LUT6 #(
    .INIT(64'h5555555100000051)) 
    \sec[5]_i_3 
       (.I0(time_valid_pulse),
        .I1(tick_1hz),
        .I2(\sec_reg[5] ),
        .I3(set_min_mode0),
        .I4(set_hour_mode0),
        .I5(btn_pulse_reg),
        .O(\sec[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    skip_tick_i_4
       (.I0(btn_pulse),
        .I1(btn_down_pulse),
        .I2(\minute_reg[5]_0 ),
        .I3(btn_up_pulse),
        .O(btn_pulse_reg));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ss[0]_i_1 
       (.I0(Q[7]),
        .I1(s2__0[0]),
        .O(\ss[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \ss[1]_i_1 
       (.I0(s1__0[0]),
        .I1(Q[7]),
        .I2(s2__0[1]),
        .O(\ss[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h82282828)) 
    \ss[2]_i_1 
       (.I0(Q[7]),
        .I1(s1__0[1]),
        .I2(s2__0[2]),
        .I3(s2__0[1]),
        .I4(s1__0[0]),
        .O(\ss[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h28828228)) 
    \ss[3]_i_1 
       (.I0(Q[7]),
        .I1(s1__0[0]),
        .I2(s1__0[2]),
        .I3(s2__0[3]),
        .I4(\ss[3]_i_2_n_0 ),
        .O(\ss[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \ss[3]_i_2 
       (.I0(s1__0[0]),
        .I1(s2__0[1]),
        .I2(s2__0[2]),
        .I3(s1__0[1]),
        .O(\ss[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2A80802A802A2A80)) 
    \ss[4]_i_1 
       (.I0(Q[7]),
        .I1(s1__0[2]),
        .I2(s1__0[0]),
        .I3(s1__0[1]),
        .I4(s1__0[3]),
        .I5(\ss[5]_i_2_n_0 ),
        .O(\ss[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8002A8A8022A8080)) 
    \ss[5]_i_1 
       (.I0(Q[7]),
        .I1(s1__0[3]),
        .I2(s1__0[1]),
        .I3(s1__0[0]),
        .I4(s1__0[2]),
        .I5(\ss[5]_i_2_n_0 ),
        .O(\ss[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FF888800)) 
    \ss[5]_i_2 
       (.I0(s1__0[1]),
        .I1(s2__0[2]),
        .I2(s2__0[1]),
        .I3(s2__0[3]),
        .I4(s1__0[2]),
        .I5(s1__0[0]),
        .O(\ss[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ss_reg[0] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\ss[0]_i_1_n_0 ),
        .Q(ext_ss[0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \ss_reg[1] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\ss[1]_i_1_n_0 ),
        .Q(ext_ss[1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \ss_reg[2] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\ss[2]_i_1_n_0 ),
        .Q(\ss_reg[3]_0 [0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \ss_reg[3] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\ss[3]_i_1_n_0 ),
        .Q(\ss_reg[3]_0 [1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \ss_reg[4] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\ss[4]_i_1_n_0 ),
        .Q(ext_ss[4]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \ss_reg[5] 
       (.C(clk),
        .CE(\mm_reg[0]_0 ),
        .D(\ss[5]_i_1_n_0 ),
        .Q(ext_ss[5]),
        .R(rst_sys));
  LUT6 #(
    .INIT(64'hD7FFEB69EB697DFF)) 
    time_valid_pulse_i_10
       (.I0(s1__0[0]),
        .I1(s1__0[2]),
        .I2(s2__0[3]),
        .I3(s2__0[1]),
        .I4(s2__0[2]),
        .I5(s1__0[1]),
        .O(time_valid_pulse_i_10_n_0));
  LUT6 #(
    .INIT(64'hD7FFEB69EB697DFF)) 
    time_valid_pulse_i_11
       (.I0(m1__0[0]),
        .I1(m1__0[2]),
        .I2(m2__0[3]),
        .I3(m2__0[1]),
        .I4(m2__0[2]),
        .I5(m1__0[1]),
        .O(time_valid_pulse_i_11_n_0));
  LUT6 #(
    .INIT(64'hE800FFE8FF888800)) 
    time_valid_pulse_i_12
       (.I0(m1__0[1]),
        .I1(m2__0[2]),
        .I2(m2__0[1]),
        .I3(m2__0[3]),
        .I4(m1__0[2]),
        .I5(m1__0[0]),
        .O(time_valid_pulse_i_12_n_0));
  LUT6 #(
    .INIT(64'hFF00000080000000)) 
    time_valid_pulse_i_2
       (.I0(time_valid_pulse_i_3_n_0),
        .I1(time_valid_pulse_reg_1),
        .I2(time_valid_pulse_i_5_n_0),
        .I3(time_valid_pulse_i_6_n_0),
        .I4(time_valid_pulse_i_7_n_0),
        .I5(time_valid_pulse_reg_2),
        .O(\s2_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hF0F7F1EF0F0F0F0F)) 
    time_valid_pulse_i_3
       (.I0(s2__0[3]),
        .I1(\ss[3]_i_2_n_0 ),
        .I2(s1__0[3]),
        .I3(s1__0[1]),
        .I4(s1__0[0]),
        .I5(s1__0[2]),
        .O(time_valid_pulse_i_3_n_0));
  LUT6 #(
    .INIT(64'hFBFBFFEFFFEFEFBF)) 
    time_valid_pulse_i_5
       (.I0(time_valid_pulse_i_10_n_0),
        .I1(\ss[5]_i_2_n_0 ),
        .I2(s1__0[2]),
        .I3(s1__0[0]),
        .I4(s1__0[1]),
        .I5(s1__0[3]),
        .O(time_valid_pulse_i_5_n_0));
  LUT6 #(
    .INIT(64'hCCCC333BCCC03BBF)) 
    time_valid_pulse_i_6
       (.I0(time_valid_pulse_i_11_n_0),
        .I1(m1__0[2]),
        .I2(m1__0[0]),
        .I3(m1__0[1]),
        .I4(m1__0[3]),
        .I5(time_valid_pulse_i_12_n_0),
        .O(time_valid_pulse_i_6_n_0));
  LUT6 #(
    .INIT(64'h10700001F0E0070F)) 
    time_valid_pulse_i_7
       (.I0(\hh[5]_i_3_n_0 ),
        .I1(h2__0[3]),
        .I2(h1__0[2]),
        .I3(h1__0[0]),
        .I4(h1__0[3]),
        .I5(h1__0[1]),
        .O(time_valid_pulse_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_valid_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(\s2_reg[3]_0 ),
        .Q(time_valid_pulse),
        .R(btn_down_pulse_reg_0));
endmodule

(* NotValidForBitStream *)
module top
   (clk,
    IO_BTN_L,
    IO_BTN_R,
    IO_BTN_U,
    IO_BTN_D,
    IO_BTN_C,
    uart_rx_pin,
    uart_tx_pin,
    IO_SSEG_SEL,
    IO_SSEG,
    IO_SSEG_DP,
    LD,
    BUZZER);
  input clk;
  input IO_BTN_L;
  input IO_BTN_R;
  input IO_BTN_U;
  input IO_BTN_D;
  input IO_BTN_C;
  input uart_rx_pin;
  output uart_tx_pin;
  output [3:0]IO_SSEG_SEL;
  output [6:0]IO_SSEG;
  output IO_SSEG_DP;
  output [15:0]LD;
  output BUZZER;

  wire BUZZER;
  wire BUZZER_OBUF;
  wire IO_BTN_C;
  wire IO_BTN_C_IBUF;
  wire IO_BTN_D;
  wire IO_BTN_D_IBUF;
  wire IO_BTN_L;
  wire IO_BTN_L_IBUF;
  wire IO_BTN_R;
  wire IO_BTN_R_IBUF;
  wire IO_BTN_U;
  wire IO_BTN_U_IBUF;
  wire [6:0]IO_SSEG;
  wire IO_SSEG_DP;
  wire IO_SSEG_DP_OBUF;
  wire [6:0]IO_SSEG_OBUF;
  wire [3:0]IO_SSEG_SEL;
  wire [3:0]IO_SSEG_SEL_OBUF;
  wire [15:0]LD;
  wire [10:0]LD_OBUF;
  wire [4:0]alarm_hour;
  wire alarm_hour0;
  wire alarm_hour_2;
  wire alarm_match;
  wire [5:0]alarm_min;
  wire alarm_min_1;
  wire blink;
  wire blink_alert;
  wire c_p;
  wire c_p_phy;
  wire cd_en_d;
  wire cd_finished;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire d_p;
  wire d_p_phy;
  wire [0:0]data3;
  wire [3:3]dc_d3;
  wire [1:0]dc_hour;
  wire [1:0]dc_min;
  wire [5:0]dc_sec;
  wire [1:0]digit_index;
  wire ext_c_p;
  wire ext_d_p;
  wire [2:2]ext_hh;
  wire ext_l_p;
  wire [5:2]ext_mm;
  wire ext_r_p;
  wire ext_set_pulse;
  wire [3:2]ext_ss;
  wire ext_u_p;
  wire inc_hour0;
  wire inc_min0;
  wire init_done;
  wire is_digit_return;
  wire l_p;
  wire l_p_phy;
  wire [4:0]mem_sec;
  wire [1:0]mode;
  wire [3:0]p_0_in;
  wire p_0_in_0;
  wire [15:10]p_1_in;
  wire [4:0]p_1_in_3;
  wire p_2_in;
  wire r_p;
  wire r_p_phy;
  wire [3:1]rst_cnt_reg;
  wire \rst_cnt_reg_n_0_[0] ;
  wire rst_sys;
  wire [7:0]rx_byte;
  wire rx_valid;
  wire [5:0]sec_disp;
  wire sel;
  wire set_hour_mode0;
  wire set_min_mode0;
  wire set_sel;
  wire show_seconds;
  wire [0:0]state__0;
  wire [3:0]sw_d0;
  wire [2:0]sw_d1;
  wire [3:0]sw_d2;
  wire [2:0]sw_d3;
  wire tick_1hz;
  wire tx_busy;
  wire tx_start;
  wire tx_start0;
  wire u_alarm_n_13;
  wire u_alarm_n_14;
  wire u_alarm_n_15;
  wire u_alarm_n_16;
  wire u_alarm_n_17;
  wire u_alarm_n_18;
  wire u_alarm_n_19;
  wire u_alarm_n_20;
  wire u_alarm_n_21;
  wire u_alarm_n_22;
  wire u_alarm_n_23;
  wire u_blink_n_1;
  wire u_clock_n_0;
  wire u_clock_n_1;
  wire u_clock_n_10;
  wire u_clock_n_11;
  wire u_clock_n_14;
  wire u_clock_n_15;
  wire u_clock_n_16;
  wire u_clock_n_17;
  wire u_clock_n_18;
  wire u_clock_n_19;
  wire u_clock_n_2;
  wire u_clock_n_20;
  wire u_clock_n_23;
  wire u_clock_n_24;
  wire u_clock_n_25;
  wire u_clock_n_26;
  wire u_clock_n_27;
  wire u_clock_n_28;
  wire u_clock_n_29;
  wire u_clock_n_3;
  wire u_countdown_n_1;
  wire u_countdown_n_10;
  wire u_countdown_n_11;
  wire u_countdown_n_14;
  wire u_countdown_n_15;
  wire u_countdown_n_16;
  wire u_countdown_n_17;
  wire u_countdown_n_18;
  wire u_countdown_n_19;
  wire u_countdown_n_20;
  wire u_countdown_n_21;
  wire u_countdown_n_22;
  wire u_countdown_n_23;
  wire u_countdown_n_24;
  wire u_countdown_n_25;
  wire u_countdown_n_26;
  wire u_countdown_n_27;
  wire u_countdown_n_28;
  wire u_countdown_n_29;
  wire u_countdown_n_30;
  wire u_countdown_n_31;
  wire u_countdown_n_32;
  wire u_countdown_n_33;
  wire u_countdown_n_4;
  wire u_countdown_n_5;
  wire u_countdown_n_6;
  wire u_fsm_n_0;
  wire u_fsm_n_17;
  wire u_fsm_n_18;
  wire u_fsm_n_19;
  wire u_fsm_n_20;
  wire u_fsm_n_21;
  wire u_fsm_n_22;
  wire u_fsm_n_24;
  wire u_fsm_n_31;
  wire u_fsm_n_33;
  wire u_fsm_n_34;
  wire u_fsm_n_35;
  wire u_fsm_n_36;
  wire u_fsm_n_37;
  wire u_fsm_n_38;
  wire u_fsm_n_39;
  wire u_fsm_n_40;
  wire u_fsm_n_41;
  wire u_fsm_n_5;
  wire u_fsm_n_6;
  wire u_fsm_n_7;
  wire u_fsm_n_8;
  wire u_fsm_n_9;
  wire u_p;
  wire u_p_phy;
  wire u_seg_n_0;
  wire u_seg_n_1;
  wire u_seg_n_2;
  wire u_seg_n_3;
  wire u_seg_n_4;
  wire u_seg_n_5;
  wire u_stopwatch_n_0;
  wire u_stopwatch_n_1;
  wire u_stopwatch_n_2;
  wire u_stopwatch_n_7;
  wire u_tick_n_0;
  wire u_tick_n_2;
  wire u_tick_n_3;
  wire u_time_parse_n_1;
  wire u_time_parse_n_10;
  wire u_time_parse_n_11;
  wire u_time_parse_n_12;
  wire u_time_parse_n_13;
  wire u_time_parse_n_14;
  wire u_time_parse_n_15;
  wire u_time_parse_n_16;
  wire u_time_parse_n_19;
  wire u_time_parse_n_20;
  wire u_time_parse_n_22;
  wire u_time_parse_n_26;
  wire u_time_parse_n_27;
  wire u_time_parse_n_28;
  wire u_time_parse_n_29;
  wire u_time_parse_n_30;
  wire u_time_parse_n_31;
  wire u_time_parse_n_32;
  wire u_time_parse_n_37;
  wire u_time_parse_n_38;
  wire u_time_parse_n_39;
  wire u_time_parse_n_40;
  wire u_time_parse_n_41;
  wire u_time_parse_n_42;
  wire u_time_parse_n_43;
  wire u_time_parse_n_45;
  wire u_time_parse_n_7;
  wire u_time_parse_n_8;
  wire u_time_parse_n_9;
  wire u_uart_rx_n_0;
  wire u_uart_rx_n_11;
  wire u_uart_rx_n_13;
  wire u_uart_rx_n_14;
  wire u_uart_rx_n_15;
  wire u_uart_rx_n_16;
  wire u_uart_rx_n_17;
  wire u_uart_rx_n_18;
  wire u_uart_rx_n_19;
  wire u_uart_rx_n_2;
  wire u_uart_rx_n_20;
  wire u_uart_rx_n_21;
  wire u_uart_rx_n_22;
  wire u_uart_rx_n_23;
  wire u_uart_rx_n_24;
  wire u_uart_rx_n_25;
  wire uart_rx_pin;
  wire uart_rx_pin_IBUF;
  wire uart_tx_pin;
  wire uart_tx_pin_OBUF;

  OBUF BUZZER_OBUF_inst
       (.I(BUZZER_OBUF),
        .O(BUZZER));
  IBUF IO_BTN_C_IBUF_inst
       (.I(IO_BTN_C),
        .O(IO_BTN_C_IBUF));
  IBUF IO_BTN_D_IBUF_inst
       (.I(IO_BTN_D),
        .O(IO_BTN_D_IBUF));
  IBUF IO_BTN_L_IBUF_inst
       (.I(IO_BTN_L),
        .O(IO_BTN_L_IBUF));
  IBUF IO_BTN_R_IBUF_inst
       (.I(IO_BTN_R),
        .O(IO_BTN_R_IBUF));
  IBUF IO_BTN_U_IBUF_inst
       (.I(IO_BTN_U),
        .O(IO_BTN_U_IBUF));
  OBUF IO_SSEG_DP_OBUF_inst
       (.I(IO_SSEG_DP_OBUF),
        .O(IO_SSEG_DP));
  OBUF \IO_SSEG_OBUF[0]_inst 
       (.I(IO_SSEG_OBUF[0]),
        .O(IO_SSEG[0]));
  OBUF \IO_SSEG_OBUF[1]_inst 
       (.I(IO_SSEG_OBUF[1]),
        .O(IO_SSEG[1]));
  OBUF \IO_SSEG_OBUF[2]_inst 
       (.I(IO_SSEG_OBUF[2]),
        .O(IO_SSEG[2]));
  OBUF \IO_SSEG_OBUF[3]_inst 
       (.I(IO_SSEG_OBUF[3]),
        .O(IO_SSEG[3]));
  OBUF \IO_SSEG_OBUF[4]_inst 
       (.I(IO_SSEG_OBUF[4]),
        .O(IO_SSEG[4]));
  OBUF \IO_SSEG_OBUF[5]_inst 
       (.I(IO_SSEG_OBUF[5]),
        .O(IO_SSEG[5]));
  OBUF \IO_SSEG_OBUF[6]_inst 
       (.I(IO_SSEG_OBUF[6]),
        .O(IO_SSEG[6]));
  OBUF \IO_SSEG_SEL_OBUF[0]_inst 
       (.I(IO_SSEG_SEL_OBUF[0]),
        .O(IO_SSEG_SEL[0]));
  OBUF \IO_SSEG_SEL_OBUF[1]_inst 
       (.I(IO_SSEG_SEL_OBUF[1]),
        .O(IO_SSEG_SEL[1]));
  OBUF \IO_SSEG_SEL_OBUF[2]_inst 
       (.I(IO_SSEG_SEL_OBUF[2]),
        .O(IO_SSEG_SEL[2]));
  OBUF \IO_SSEG_SEL_OBUF[3]_inst 
       (.I(IO_SSEG_SEL_OBUF[3]),
        .O(IO_SSEG_SEL[3]));
  OBUF \LD_OBUF[0]_inst 
       (.I(LD_OBUF[0]),
        .O(LD[0]));
  OBUF \LD_OBUF[10]_inst 
       (.I(LD_OBUF[10]),
        .O(LD[10]));
  OBUF \LD_OBUF[11]_inst 
       (.I(LD_OBUF[10]),
        .O(LD[11]));
  OBUF \LD_OBUF[12]_inst 
       (.I(LD_OBUF[10]),
        .O(LD[12]));
  OBUF \LD_OBUF[13]_inst 
       (.I(LD_OBUF[10]),
        .O(LD[13]));
  OBUF \LD_OBUF[14]_inst 
       (.I(LD_OBUF[10]),
        .O(LD[14]));
  OBUF \LD_OBUF[15]_inst 
       (.I(LD_OBUF[10]),
        .O(LD[15]));
  OBUF \LD_OBUF[1]_inst 
       (.I(LD_OBUF[1]),
        .O(LD[1]));
  OBUF \LD_OBUF[2]_inst 
       (.I(LD_OBUF[2]),
        .O(LD[2]));
  OBUF \LD_OBUF[3]_inst 
       (.I(LD_OBUF[3]),
        .O(LD[3]));
  OBUF \LD_OBUF[4]_inst 
       (.I(LD_OBUF[4]),
        .O(LD[4]));
  OBUF \LD_OBUF[5]_inst 
       (.I(LD_OBUF[5]),
        .O(LD[5]));
  OBUF \LD_OBUF[6]_inst 
       (.I(LD_OBUF[6]),
        .O(LD[6]));
  OBUF \LD_OBUF[7]_inst 
       (.I(LD_OBUF[7]),
        .O(LD[7]));
  OBUF \LD_OBUF[8]_inst 
       (.I(LD_OBUF[7]),
        .O(LD[8]));
  OBUF \LD_OBUF[9]_inst 
       (.I(LD_OBUF[7]),
        .O(LD[9]));
  FDRE #(
    .INIT(1'b0)) 
    alarm_enable_disp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(LD_OBUF[6]),
        .Q(data3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    alarm_enable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_fsm_n_35),
        .Q(LD_OBUF[6]),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    colon_state_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_fsm_n_33),
        .Q(IO_SSEG_DP_OBUF),
        .R(1'b0));
  debounce db_c
       (.btn(IO_BTN_C_IBUF),
        .btn_center_pulse(ext_c_p),
        .btn_pulse(c_p_phy),
        .c_p(c_p),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  debounce_0 db_d
       (.btn(IO_BTN_D_IBUF),
        .btn_down_pulse(ext_d_p),
        .btn_pulse(d_p_phy),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .d_p(d_p));
  debounce_1 db_l
       (.btn(IO_BTN_L_IBUF),
        .btn_left_pulse(ext_l_p),
        .btn_pulse(l_p_phy),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .l_p(l_p));
  debounce_2 db_r
       (.btn(IO_BTN_R_IBUF),
        .btn_pulse(r_p_phy),
        .btn_right_pulse(ext_r_p),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .r_p(r_p));
  debounce_3 db_u
       (.btn(IO_BTN_U_IBUF),
        .btn_pulse(u_p_phy),
        .btn_up_pulse(ext_u_p),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .u_p(u_p));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rst_cnt[0]_i_1 
       (.I0(\rst_cnt_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rst_cnt[1]_i_1 
       (.I0(\rst_cnt_reg_n_0_[0] ),
        .I1(rst_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rst_cnt[2]_i_1 
       (.I0(\rst_cnt_reg_n_0_[0] ),
        .I1(rst_cnt_reg[1]),
        .I2(rst_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rst_cnt[3]_i_1 
       (.I0(rst_cnt_reg[1]),
        .I1(\rst_cnt_reg_n_0_[0] ),
        .I2(rst_cnt_reg[2]),
        .I3(rst_cnt_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in[0]),
        .Q(\rst_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(rst_cnt_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(rst_cnt_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(rst_cnt_reg[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h1F)) 
    rst_sys_i_1
       (.I0(rst_cnt_reg[1]),
        .I1(rst_cnt_reg[2]),
        .I2(rst_cnt_reg[3]),
        .O(sel));
  FDRE #(
    .INIT(1'b1)) 
    rst_sys_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sel),
        .Q(rst_sys),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_disp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(u_fsm_n_31),
        .D(dc_sec[0]),
        .Q(sec_disp[0]),
        .R(LD_OBUF[1]));
  FDRE #(
    .INIT(1'b0)) 
    \sec_disp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(u_fsm_n_31),
        .D(dc_sec[1]),
        .Q(sec_disp[1]),
        .R(LD_OBUF[1]));
  FDRE #(
    .INIT(1'b0)) 
    \sec_disp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(u_fsm_n_31),
        .D(dc_sec[2]),
        .Q(sec_disp[2]),
        .R(LD_OBUF[1]));
  FDRE #(
    .INIT(1'b0)) 
    \sec_disp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(u_fsm_n_31),
        .D(dc_sec[3]),
        .Q(sec_disp[3]),
        .R(LD_OBUF[1]));
  FDRE #(
    .INIT(1'b0)) 
    \sec_disp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(u_fsm_n_31),
        .D(dc_sec[4]),
        .Q(sec_disp[4]),
        .R(LD_OBUF[1]));
  FDRE #(
    .INIT(1'b0)) 
    \sec_disp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(u_fsm_n_31),
        .D(dc_sec[5]),
        .Q(sec_disp[5]),
        .R(LD_OBUF[1]));
  FDRE #(
    .INIT(1'b0)) 
    show_seconds_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(u_fsm_n_24),
        .Q(show_seconds),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tx_start_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_start0),
        .Q(tx_start),
        .R(1'b0));
  alarm u_alarm
       (.E(alarm_hour_2),
        .Q(alarm_min),
        .SR(alarm_hour0),
        .\alarm_hour_reg[4]_0 (alarm_hour),
        .\alarm_hour_reg[4]_1 (u_alarm_n_13),
        .alarm_match(alarm_match),
        .alarm_match_reg_0(u_clock_n_27),
        .\alarm_min_reg[1]_0 (u_alarm_n_18),
        .\alarm_min_reg[1]_1 (u_alarm_n_19),
        .\alarm_min_reg[1]_2 (u_alarm_n_20),
        .\alarm_min_reg[1]_3 (u_alarm_n_22),
        .\alarm_min_reg[5]_0 (alarm_min_1),
        .blink(blink),
        .blink_reg(u_alarm_n_14),
        .blink_reg_0(u_alarm_n_15),
        .blink_reg_1(u_alarm_n_16),
        .blink_reg_2(u_alarm_n_17),
        .blink_reg_3(u_alarm_n_21),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .inc_hour0(inc_hour0),
        .inc_min0(inc_min0),
        .init_done(init_done),
        .init_done_reg_0(u_fsm_n_17),
        .mode(mode[0]),
        .rst_sys(rst_sys),
        .set_sel(set_sel),
        .set_sel_reg(u_alarm_n_23));
  alert_ctrl u_alert
       (.BUZZER_OBUF(BUZZER_OBUF),
        .LD_OBUF({LD_OBUF[10],LD_OBUF[7]}),
        .alarm_match(alarm_match),
        .blink_alert(blink_alert),
        .cd_finished(cd_finished),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_2_in(p_2_in),
        .rst_sys(rst_sys),
        .tick_1hz(tick_1hz));
  blink_gen u_blink
       (.blink(blink),
        .blink_reg_0(u_fsm_n_34),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_reg[0]_0 (u_blink_n_1),
        .\cnt_reg[24]_0 (u_fsm_n_0));
  blink_gen_4 u_blink_alert
       (.blink_alert(blink_alert),
        .clk(clk_IBUF_BUFG));
  DigitalClock u_clock
       (.D({p_1_in_3[4:3],p_1_in_3[1:0]}),
        .E(u_time_parse_n_16),
        .LD_OBUF(LD_OBUF[6]),
        .Q(dc_sec),
        .alarm_enable_reg(u_clock_n_27),
        .alarm_match(alarm_match),
        .alarm_match_reg(alarm_hour),
        .alarm_match_reg_0(alarm_min),
        .clk(clk_IBUF_BUFG),
        .dc_d3(dc_d3),
        .\hour_r_reg[1]_0 (u_clock_n_20),
        .\hour_r_reg[1]_1 (dc_hour),
        .\hour_r_reg[1]_2 (u_clock_n_23),
        .\hour_r_reg[2]_0 (u_fsm_n_7),
        .\hour_r_reg[2]_1 (ext_hh),
        .\hour_r_reg[3]_0 (u_clock_n_26),
        .\hour_r_reg[4]_0 (u_clock_n_24),
        .\hour_r_reg[4]_1 (u_clock_n_25),
        .\hour_r_reg[4]_2 (u_time_parse_n_20),
        .\minute_reg[1]_0 (dc_min),
        .\minute_reg[2]_0 (u_clock_n_15),
        .\minute_reg[2]_1 (u_clock_n_16),
        .\minute_reg[2]_2 (u_clock_n_17),
        .\minute_reg[3]_0 (u_fsm_n_6),
        .\minute_reg[4]_0 (u_clock_n_14),
        .\minute_reg[4]_1 (u_clock_n_19),
        .\minute_reg[4]_2 ({u_time_parse_n_30,u_time_parse_n_31,u_time_parse_n_32}),
        .\minute_reg[5]_0 (u_clock_n_11),
        .\minute_reg[5]_1 (u_clock_n_18),
        .\minute_reg[5]_2 (u_fsm_n_36),
        .\minute_reg[5]_3 ({ext_mm[5],ext_mm[3:2]}),
        .\minute_reg[5]_4 (u_time_parse_n_22),
        .mode(mode[0]),
        .\mode_reg[0] (u_clock_n_28),
        .\sec_reg[2]_0 (u_clock_n_29),
        .\sec_reg[3]_0 (u_clock_n_3),
        .\sec_reg[3]_1 (ext_ss),
        .\sec_reg[3]_2 (u_fsm_n_8),
        .\sec_reg[4]_0 (u_clock_n_2),
        .\sec_reg[4]_1 (u_clock_n_10),
        .\sec_reg[5]_0 ({u_time_parse_n_26,u_time_parse_n_27,u_time_parse_n_28,u_time_parse_n_29}),
        .set_hour_mode0(set_hour_mode0),
        .set_min_mode0(set_min_mode0),
        .show_seconds(show_seconds),
        .skip_tick_reg_0(u_clock_n_0),
        .skip_tick_reg_1(u_fsm_n_9),
        .tick_1hz(tick_1hz),
        .tick_1hz_reg(u_clock_n_1),
        .time_valid_pulse(ext_set_pulse));
  countdown u_countdown
       (.E(u_fsm_n_19),
        .\FSM_sequential_state_reg[0]_0 (state__0),
        .\FSM_sequential_state_reg[0]_1 (u_countdown_n_14),
        .\FSM_sequential_state_reg[1]_0 (u_countdown_n_4),
        .\FSM_sequential_state_reg[2]_0 (u_countdown_n_6),
        .\FSM_sequential_state_reg[2]_1 (u_countdown_n_11),
        .LD_OBUF(LD_OBUF[4]),
        .Q({mem_sec[4],mem_sec[2],mem_sec[0]}),
        .blink(blink),
        .btn_center_pulse(ext_c_p),
        .btn_center_pulse_reg(u_countdown_n_5),
        .btn_down_pulse(ext_d_p),
        .btn_pulse(c_p_phy),
        .btn_right_pulse(ext_r_p),
        .btn_up_pulse(ext_u_p),
        .c_p(c_p),
        .cd_en_d(cd_en_d),
        .cd_finished(cd_finished),
        .clk(clk_IBUF_BUFG),
        .\cur_value[1]_i_3 (u_stopwatch_n_7),
        .\cur_value[1]_i_5 (u_stopwatch_n_2),
        .d_p(d_p),
        .\min_reg[0]_0 (u_countdown_n_29),
        .\min_reg[1]_0 (u_countdown_n_19),
        .\min_reg[1]_1 (u_countdown_n_28),
        .\min_reg[1]_2 (d_p_phy),
        .\min_reg[2]_0 (u_time_parse_n_19),
        .\min_reg[4]_0 (u_time_parse_n_43),
        .\min_reg[4]_1 (u_tick_n_3),
        .\min_reg[4]_2 (u_time_parse_n_38),
        .\min_reg[5]_0 (u_p_phy),
        .mode(mode),
        .\mode_reg[0] (u_countdown_n_20),
        .\mode_reg[0]_0 (u_countdown_n_22),
        .\mode_reg[0]_1 (u_countdown_n_23),
        .\mode_reg[0]_2 (u_countdown_n_26),
        .\mode_reg[0]_3 (u_countdown_n_27),
        .\mode_reg[0]_4 (u_countdown_n_30),
        .\mode_reg[0]_5 (u_countdown_n_31),
        .\mode_reg[0]_6 (u_countdown_n_32),
        .\mode_reg[0]_7 (u_countdown_n_33),
        .p_1_in({p_1_in[15],p_1_in[10]}),
        .r_p(r_p),
        .\sec_reg[0]_0 (u_countdown_n_24),
        .\sec_reg[0]_1 (u_time_parse_n_42),
        .\sec_reg[0]_2 (u_time_parse_n_39),
        .\sec_reg[1]_0 (u_countdown_n_18),
        .\sec_reg[1]_1 (u_countdown_n_25),
        .\sec_reg[2]_0 (u_time_parse_n_41),
        .\sec_reg[3]_0 (u_time_parse_n_37),
        .\sec_reg[4]_0 (u_time_parse_n_40),
        .\sec_reg[5]_0 (u_time_parse_n_45),
        .\sec_reg[5]_1 (u_fsm_n_20),
        .\sec_reg[5]_2 (r_p_phy),
        .\sec_reg[5]_3 (u_fsm_n_18),
        .\set_sec_reg[4]_0 ({u_countdown_n_15,u_countdown_n_16,u_countdown_n_17}),
        .set_sel_reg_0(u_countdown_n_1),
        .set_sel_reg_1(u_countdown_n_21),
        .sw_d0({sw_d0[3:2],sw_d0[0]}),
        .sw_d1(sw_d1),
        .sw_d2({sw_d2[3],sw_d2[0]}),
        .sw_d3(sw_d3),
        .tick_1hz(tick_1hz),
        .tick_1hz_reg(u_countdown_n_10),
        .u_p(u_p));
  ModeFSM u_fsm
       (.D({u_fsm_n_38,u_fsm_n_39,u_fsm_n_40,u_fsm_n_41}),
        .E(alarm_hour_2),
        .IO_SSEG_DP_OBUF(IO_SSEG_DP_OBUF),
        .LD_OBUF(LD_OBUF[5:0]),
        .Q(sec_disp[0]),
        .SR(alarm_hour0),
        .alarm_enable_reg(LD_OBUF[6]),
        .\alarm_hour_reg[4] (d_p_phy),
        .blink(blink),
        .btn_center_pulse(ext_c_p),
        .btn_down_pulse(ext_d_p),
        .btn_left_pulse(ext_l_p),
        .btn_pulse(u_p_phy),
        .btn_pulse_reg(u_fsm_n_35),
        .btn_right_pulse(ext_r_p),
        .btn_right_pulse_reg(u_fsm_n_31),
        .btn_up_pulse(ext_u_p),
        .c_p(c_p),
        .cd_en_d(cd_en_d),
        .clk(clk_IBUF_BUFG),
        .\cnt_reg[24] (u_blink_n_1),
        .\cur_value[0]_i_2_0 (u_clock_n_17),
        .\cur_value[0]_i_2_1 (u_seg_n_2),
        .\cur_value[0]_i_2_2 (u_alarm_n_20),
        .\cur_value[0]_i_9_0 (alarm_min[0]),
        .\cur_value[1]_i_2_0 (u_seg_n_5),
        .\cur_value[1]_i_2_1 (u_clock_n_19),
        .\cur_value[1]_i_3_0 (dc_min),
        .\cur_value[1]_i_3_1 (u_seg_n_1),
        .\cur_value[1]_i_3_2 (u_alarm_n_19),
        .\cur_value[1]_i_5_0 (dc_hour),
        .\cur_value[2]_i_2_0 (u_seg_n_3),
        .\cur_value[2]_i_2_1 (u_clock_n_18),
        .\cur_value[2]_i_3_0 (u_seg_n_4),
        .\cur_value[2]_i_3_1 (u_clock_n_16),
        .\cur_value[2]_i_3_2 (u_alarm_n_22),
        .\cur_value[2]_i_5_0 (u_alarm_n_15),
        .\cur_value[2]_i_5_1 (u_clock_n_20),
        .\cur_value[3]_i_3_0 (u_seg_n_0),
        .\cur_value[3]_i_3_1 (u_clock_n_15),
        .\cur_value[3]_i_3_2 (u_alarm_n_18),
        .\cur_value_reg[0] (u_countdown_n_24),
        .\cur_value_reg[0]_0 (u_countdown_n_20),
        .\cur_value_reg[0]_1 (u_countdown_n_29),
        .\cur_value_reg[0]_2 (u_countdown_n_32),
        .\cur_value_reg[0]_i_4_0 (u_clock_n_23),
        .\cur_value_reg[0]_i_4_1 (u_alarm_n_14),
        .\cur_value_reg[0]_i_5_0 (alarm_hour[0]),
        .\cur_value_reg[1] (u_countdown_n_25),
        .\cur_value_reg[1]_0 (u_countdown_n_22),
        .\cur_value_reg[1]_1 (u_alarm_n_23),
        .\cur_value_reg[1]_2 (u_countdown_n_28),
        .\cur_value_reg[1]_3 (u_alarm_n_17),
        .\cur_value_reg[1]_4 (u_countdown_n_31),
        .\cur_value_reg[1]_i_4_0 (u_alarm_n_13),
        .\cur_value_reg[1]_i_4_1 (u_clock_n_25),
        .\cur_value_reg[2] (u_countdown_n_26),
        .\cur_value_reg[2]_0 (u_countdown_n_23),
        .\cur_value_reg[2]_1 (u_alarm_n_21),
        .\cur_value_reg[2]_2 (u_countdown_n_30),
        .\cur_value_reg[3] (u_countdown_n_33),
        .\cur_value_reg[3]_0 (u_countdown_n_27),
        .\cur_value_reg[3]_1 (u_alarm_n_16),
        .\cur_value_reg[3]_2 (u_clock_n_28),
        .\cur_value_reg[3]_3 (u_countdown_n_21),
        .data3(data3),
        .dc_d3(dc_d3),
        .digit_index(digit_index),
        .inc_hour0(inc_hour0),
        .inc_min0(inc_min0),
        .init_done(init_done),
        .init_done_reg(u_fsm_n_17),
        .l_p(l_p),
        .\min_reg[5] (u_countdown_n_6),
        .\min_reg[5]_0 (u_countdown_n_5),
        .\min_reg[5]_1 (u_countdown_n_11),
        .\mode_reg[1]_0 (mode),
        .\mode_reg[1]_1 (u_fsm_n_21),
        .\mode_reg[1]_2 (u_fsm_n_22),
        .\mode_reg[2]_0 (u_fsm_n_0),
        .\mode_reg[2]_1 (u_fsm_n_5),
        .\mode_reg[2]_10 (u_fsm_n_24),
        .\mode_reg[2]_11 (u_fsm_n_33),
        .\mode_reg[2]_12 (u_fsm_n_34),
        .\mode_reg[2]_13 (u_fsm_n_36),
        .\mode_reg[2]_14 (l_p_phy),
        .\mode_reg[2]_2 (u_fsm_n_6),
        .\mode_reg[2]_3 (u_fsm_n_7),
        .\mode_reg[2]_4 (u_fsm_n_8),
        .\mode_reg[2]_5 (alarm_min_1),
        .\mode_reg[2]_6 (u_fsm_n_18),
        .\mode_reg[2]_7 (u_fsm_n_19),
        .\mode_reg[2]_8 (u_fsm_n_20),
        .\mode_reg[2]_9 (p_0_in_0),
        .p_1_in({p_1_in[15],p_1_in[10]}),
        .r_p(r_p),
        .\sec_disp_reg[0] (u_tick_n_2),
        .\sec_reg[4] (u_clock_n_2),
        .\sec_reg[5] (u_countdown_n_4),
        .\sec_reg[5]_0 (u_countdown_n_14),
        .\sec_reg[5]_1 (u_countdown_n_10),
        .\sec_reg[5]_2 (u_stopwatch_n_0),
        .\sec_reg[5]_3 (u_stopwatch_n_1),
        .set_hour_mode0(set_hour_mode0),
        .set_min_mode0(set_min_mode0),
        .set_sel(set_sel),
        .show_seconds(show_seconds),
        .show_seconds_reg(r_p_phy),
        .skip_tick_reg(u_fsm_n_9),
        .skip_tick_reg_0(u_time_parse_n_19),
        .skip_tick_reg_1(u_clock_n_0),
        .sw_d2(sw_d2[2]),
        .tick_1hz(tick_1hz),
        .time_valid_pulse(ext_set_pulse),
        .time_valid_pulse_reg(u_fsm_n_37),
        .tx_busy(tx_busy),
        .tx_start0(tx_start0),
        .tx_start_reg(c_p_phy));
  sevseg u_seg
       (.D({u_fsm_n_38,u_fsm_n_39,u_fsm_n_40,u_fsm_n_41}),
        .\IO_SSEG_SEL_reg[3]_0 (IO_SSEG_SEL_OBUF),
        .\IO_SSEG_reg[6]_0 (IO_SSEG_OBUF),
        .Q(sec_disp[5:1]),
        .clk(clk_IBUF_BUFG),
        .digit_index(digit_index),
        .\sec_disp_reg[1] (u_seg_n_0),
        .\sec_disp_reg[1]_0 (u_seg_n_1),
        .\sec_disp_reg[1]_1 (u_seg_n_2),
        .\sec_disp_reg[1]_2 (u_seg_n_4),
        .\sec_disp_reg[2] (u_seg_n_5),
        .\sec_disp_reg[3] (u_seg_n_3));
  stopwatch u_stopwatch
       (.Q({u_stopwatch_n_2,sw_d2[0]}),
        .SR(p_0_in_0),
        .btn_center_pulse(ext_c_p),
        .btn_pulse(c_p_phy),
        .clk(clk_IBUF_BUFG),
        .\min_reg[0]_0 (u_tick_n_0),
        .\min_reg[1]_0 (u_stopwatch_n_1),
        .running_reg_0(u_stopwatch_n_0),
        .running_reg_1(u_fsm_n_22),
        .\sec_reg[1]_0 (u_stopwatch_n_7),
        .\sec_reg[5]_0 (u_fsm_n_21),
        .sw_d0({sw_d0[3:2],sw_d0[0]}),
        .sw_d1(sw_d1),
        .sw_d2(sw_d2[3:2]),
        .sw_d3(sw_d3),
        .tick_1hz(tick_1hz));
  tick_1hz_gen u_tick
       (.btn_pulse(r_p_phy),
        .btn_right_pulse(ext_r_p),
        .clk(clk_IBUF_BUFG),
        .\min[3]_i_4 (u_countdown_n_18),
        .\min[5]_i_4__0 (u_stopwatch_n_0),
        .show_seconds(show_seconds),
        .tick_1hz(tick_1hz),
        .tick_1hz_reg_0(u_tick_n_0),
        .tick_1hz_reg_1(u_tick_n_2),
        .tick_1hz_reg_2(u_tick_n_3));
  time_uart_parser u_time_parse
       (.D({dc_sec[5:4],dc_sec[1:0]}),
        .E(u_time_parse_n_16),
        .\FSM_onehot_st_reg[0]_0 (u_uart_rx_n_21),
        .\FSM_onehot_st_reg[0]_1 (u_uart_rx_n_22),
        .\FSM_onehot_st_reg[8]_0 ({u_uart_rx_n_23,u_uart_rx_n_24}),
        .Q({u_time_parse_n_7,u_time_parse_n_8,u_time_parse_n_9,u_time_parse_n_10,u_time_parse_n_11,u_time_parse_n_12,u_time_parse_n_13,u_time_parse_n_14,u_time_parse_n_15}),
        .\bcode_reg[7]_0 (rx_byte),
        .\bcode_reg[7]_1 (u_uart_rx_n_20),
        .btn_center_pulse(ext_c_p),
        .btn_center_pulse_reg_0(u_time_parse_n_37),
        .btn_down_pulse(ext_d_p),
        .btn_down_pulse_reg_0(u_uart_rx_n_25),
        .btn_left_pulse(ext_l_p),
        .btn_pulse(d_p_phy),
        .btn_pulse_reg(u_time_parse_n_19),
        .btn_pulse_reg_0(u_time_parse_n_38),
        .btn_pulse_reg_1(u_time_parse_n_40),
        .btn_pulse_reg_2(u_time_parse_n_41),
        .btn_pulse_reg_3(u_time_parse_n_42),
        .btn_pulse_reg_4(u_time_parse_n_45),
        .btn_right_pulse(ext_r_p),
        .btn_right_pulse_reg_0(u_time_parse_n_39),
        .btn_right_pulse_reg_1(u_uart_rx_n_19),
        .btn_up_pulse(ext_u_p),
        .clk(clk_IBUF_BUFG),
        .\h1_reg[3]_0 (u_uart_rx_n_14),
        .\h2_reg[3]_0 (u_uart_rx_n_15),
        .\hh_reg[2]_0 (ext_hh),
        .\hh_reg[4]_0 (u_time_parse_n_20),
        .\hour_r_reg[1] (dc_hour),
        .\hour_r_reg[1]_0 (u_fsm_n_7),
        .\hour_r_reg[3] (u_clock_n_24),
        .\hour_r_reg[4] (u_fsm_n_5),
        .\hour_r_reg[4]_0 (u_clock_n_1),
        .\hour_r_reg[4]_1 (u_clock_n_26),
        .is_digit_return(is_digit_return),
        .\m1_reg[3]_0 (u_uart_rx_n_16),
        .\m2_reg[3]_0 (u_uart_rx_n_17),
        .\min[3]_i_2 (u_countdown_n_19),
        .\min[5]_i_3 (state__0),
        .\min_reg[4] (u_countdown_n_1),
        .\minute_reg[1] (dc_min),
        .\minute_reg[4] (u_clock_n_14),
        .\minute_reg[4]_0 (u_fsm_n_6),
        .\minute_reg[4]_1 (u_clock_n_11),
        .\minute_reg[5] (u_clock_n_3),
        .\minute_reg[5]_0 (u_p_phy),
        .\mm_reg[0]_0 (u_uart_rx_n_0),
        .\mm_reg[3]_0 (u_time_parse_n_22),
        .\mm_reg[4]_0 ({u_time_parse_n_30,u_time_parse_n_31,u_time_parse_n_32}),
        .\mm_reg[5]_0 ({ext_mm[5],ext_mm[3:2]}),
        .p_2_in(p_2_in),
        .rst_sys(rst_sys),
        .\s1_reg[3]_0 (u_uart_rx_n_11),
        .\s2_reg[3]_0 (u_time_parse_n_1),
        .\s2_reg[3]_1 (u_uart_rx_n_13),
        .\sec[0]_i_3 (c_p_phy),
        .\sec[0]_i_3_0 (r_p_phy),
        .\sec[4]_i_2 ({u_countdown_n_15,u_countdown_n_16,u_countdown_n_17}),
        .\sec[4]_i_2_0 ({mem_sec[4],mem_sec[2],mem_sec[0]}),
        .\sec_reg[1] (u_fsm_n_37),
        .\sec_reg[4] (u_clock_n_29),
        .\sec_reg[4]_0 (u_fsm_n_8),
        .\sec_reg[5] (u_clock_n_0),
        .\sec_reg[5]_0 (u_clock_n_10),
        .set_hour_mode0(set_hour_mode0),
        .set_min_mode0(set_min_mode0),
        .set_sel_reg(u_time_parse_n_43),
        .\ss_reg[3]_0 (ext_ss),
        .\ss_reg[5]_0 ({u_time_parse_n_26,u_time_parse_n_27,u_time_parse_n_28,u_time_parse_n_29}),
        .tick_1hz(tick_1hz),
        .time_valid_pulse(ext_set_pulse),
        .time_valid_pulse_reg_0({p_1_in_3[4:3],p_1_in_3[1:0]}),
        .time_valid_pulse_reg_1(u_uart_rx_n_18),
        .time_valid_pulse_reg_2(u_uart_rx_n_2),
        .valid(rx_valid));
  uart_rx u_uart_rx
       (.\FSM_onehot_st_reg[0] (u_uart_rx_n_22),
        .\FSM_onehot_st_reg[0]_0 ({u_uart_rx_n_23,u_uart_rx_n_24}),
        .Q({u_time_parse_n_7,u_time_parse_n_8,u_time_parse_n_9,u_time_parse_n_10,u_time_parse_n_11,u_time_parse_n_12,u_time_parse_n_13,u_time_parse_n_14,u_time_parse_n_15}),
        .clk(clk_IBUF_BUFG),
        .data(rx_byte),
        .\data_reg[4]_0 (u_uart_rx_n_21),
        .\data_reg[5]_0 (u_uart_rx_n_2),
        .\data_reg[6]_0 (u_uart_rx_n_18),
        .\data_reg[7]_0 (u_uart_rx_n_19),
        .is_digit_return(is_digit_return),
        .\mm_reg[0] (u_time_parse_n_1),
        .rst_sys(rst_sys),
        .rst_sys_reg(u_uart_rx_n_20),
        .rst_sys_reg_0(u_uart_rx_n_25),
        .rx(uart_rx_pin_IBUF),
        .valid(rx_valid),
        .valid_reg_0(u_uart_rx_n_0),
        .valid_reg_1(u_uart_rx_n_11),
        .valid_reg_2(u_uart_rx_n_13),
        .valid_reg_3(u_uart_rx_n_14),
        .valid_reg_4(u_uart_rx_n_15),
        .valid_reg_5(u_uart_rx_n_16),
        .valid_reg_6(u_uart_rx_n_17));
  uart_tx u_uart_tx
       (.clk(clk_IBUF_BUFG),
        .rst_sys(rst_sys),
        .tx(uart_tx_pin_OBUF),
        .tx_busy(tx_busy),
        .tx_start(tx_start));
  IBUF uart_rx_pin_IBUF_inst
       (.I(uart_rx_pin),
        .O(uart_rx_pin_IBUF));
  OBUF uart_tx_pin_OBUF_inst
       (.I(uart_tx_pin_OBUF),
        .O(uart_tx_pin));
endmodule

module uart_rx
   (valid_reg_0,
    valid,
    \data_reg[5]_0 ,
    data,
    valid_reg_1,
    is_digit_return,
    valid_reg_2,
    valid_reg_3,
    valid_reg_4,
    valid_reg_5,
    valid_reg_6,
    \data_reg[6]_0 ,
    \data_reg[7]_0 ,
    rst_sys_reg,
    \data_reg[4]_0 ,
    \FSM_onehot_st_reg[0] ,
    \FSM_onehot_st_reg[0]_0 ,
    rst_sys_reg_0,
    \mm_reg[0] ,
    Q,
    rst_sys,
    clk,
    rx);
  output [0:0]valid_reg_0;
  output valid;
  output \data_reg[5]_0 ;
  output [7:0]data;
  output [0:0]valid_reg_1;
  output is_digit_return;
  output [0:0]valid_reg_2;
  output [0:0]valid_reg_3;
  output [0:0]valid_reg_4;
  output [0:0]valid_reg_5;
  output [0:0]valid_reg_6;
  output \data_reg[6]_0 ;
  output \data_reg[7]_0 ;
  output [0:0]rst_sys_reg;
  output \data_reg[4]_0 ;
  output \FSM_onehot_st_reg[0] ;
  output [1:0]\FSM_onehot_st_reg[0]_0 ;
  output rst_sys_reg_0;
  input \mm_reg[0] ;
  input [8:0]Q;
  input rst_sys;
  input clk;
  input rx;

  wire \FSM_onehot_st[7]_i_3_n_0 ;
  wire \FSM_onehot_st[8]_i_2_n_0 ;
  wire \FSM_onehot_st[9]_i_6_n_0 ;
  wire \FSM_onehot_st_reg[0] ;
  wire [1:0]\FSM_onehot_st_reg[0]_0 ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [8:0]Q;
  wire \bit_idx[0]_i_1_n_0 ;
  wire \bit_idx[1]_i_1_n_0 ;
  wire \bit_idx[2]_i_1_n_0 ;
  wire \bit_idx[2]_i_2_n_0 ;
  wire \bit_idx_reg_n_0_[0] ;
  wire \bit_idx_reg_n_0_[1] ;
  wire \bit_idx_reg_n_0_[2] ;
  wire clk;
  wire clk_cnt;
  wire \clk_cnt[0]_i_1__0_n_0 ;
  wire \clk_cnt[0]_i_2_n_0 ;
  wire \clk_cnt[0]_i_3_n_0 ;
  wire \clk_cnt[1]_i_1_n_0 ;
  wire \clk_cnt[1]_i_2_n_0 ;
  wire \clk_cnt[2]_i_1_n_0 ;
  wire \clk_cnt[2]_i_2_n_0 ;
  wire \clk_cnt[2]_i_3_n_0 ;
  wire \clk_cnt[2]_i_4_n_0 ;
  wire \clk_cnt[2]_i_5_n_0 ;
  wire \clk_cnt[3]_i_1_n_0 ;
  wire \clk_cnt[4]_i_1_n_0 ;
  wire \clk_cnt[5]_i_1_n_0 ;
  wire \clk_cnt[6]_i_1_n_0 ;
  wire \clk_cnt[7]_i_1_n_0 ;
  wire \clk_cnt[7]_i_2_n_0 ;
  wire \clk_cnt[8]_i_1_n_0 ;
  wire \clk_cnt[8]_i_2_n_0 ;
  wire \clk_cnt[8]_i_3_n_0 ;
  wire \clk_cnt[8]_i_4_n_0 ;
  wire \clk_cnt[9]_i_2_n_0 ;
  wire \clk_cnt[9]_i_3_n_0 ;
  wire \clk_cnt[9]_i_4_n_0 ;
  wire \clk_cnt[9]_i_5_n_0 ;
  wire \clk_cnt_reg_n_0_[0] ;
  wire \clk_cnt_reg_n_0_[1] ;
  wire \clk_cnt_reg_n_0_[2] ;
  wire \clk_cnt_reg_n_0_[3] ;
  wire \clk_cnt_reg_n_0_[4] ;
  wire \clk_cnt_reg_n_0_[5] ;
  wire \clk_cnt_reg_n_0_[6] ;
  wire \clk_cnt_reg_n_0_[7] ;
  wire \clk_cnt_reg_n_0_[8] ;
  wire \clk_cnt_reg_n_0_[9] ;
  wire [7:0]data;
  wire \data[7]_i_1_n_0 ;
  wire \data[7]_i_2_n_0 ;
  wire \data[7]_i_3_n_0 ;
  wire \data_reg[4]_0 ;
  wire \data_reg[5]_0 ;
  wire \data_reg[6]_0 ;
  wire \data_reg[7]_0 ;
  wire is_digit_return;
  wire \mm_reg[0] ;
  wire rst_sys;
  wire [0:0]rst_sys_reg;
  wire rst_sys_reg_0;
  wire rx;
  wire rx_ff1;
  wire rx_ff2;
  wire \shift[0]_i_1_n_0 ;
  wire \shift[1]_i_1_n_0 ;
  wire \shift[2]_i_1_n_0 ;
  wire \shift[3]_i_1_n_0 ;
  wire \shift[3]_i_2_n_0 ;
  wire \shift[4]_i_1_n_0 ;
  wire \shift[5]_i_1_n_0 ;
  wire \shift[6]_i_1_n_0 ;
  wire \shift[7]_i_1_n_0 ;
  wire \shift_reg_n_0_[0] ;
  wire \shift_reg_n_0_[1] ;
  wire \shift_reg_n_0_[2] ;
  wire \shift_reg_n_0_[3] ;
  wire \shift_reg_n_0_[4] ;
  wire \shift_reg_n_0_[5] ;
  wire \shift_reg_n_0_[6] ;
  wire \shift_reg_n_0_[7] ;
  wire time_valid_pulse_i_13_n_0;
  wire time_valid_pulse_i_9_n_0;
  wire valid;
  wire [0:0]valid_reg_0;
  wire [0:0]valid_reg_1;
  wire [0:0]valid_reg_2;
  wire [0:0]valid_reg_3;
  wire [0:0]valid_reg_4;
  wire [0:0]valid_reg_5;
  wire [0:0]valid_reg_6;

  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \FSM_onehot_st[1]_i_1 
       (.I0(data[3]),
        .I1(data[4]),
        .I2(Q[0]),
        .I3(data[2]),
        .I4(data[1]),
        .I5(\FSM_onehot_st[8]_i_2_n_0 ),
        .O(\FSM_onehot_st_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'h0000004040404040)) 
    \FSM_onehot_st[7]_i_2 
       (.I0(\FSM_onehot_st[7]_i_3_n_0 ),
        .I1(data[4]),
        .I2(data[5]),
        .I3(data[2]),
        .I4(data[1]),
        .I5(data[3]),
        .O(is_digit_return));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_st[7]_i_3 
       (.I0(data[6]),
        .I1(data[7]),
        .O(\FSM_onehot_st[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA8AAAAA)) 
    \FSM_onehot_st[8]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_st[8]_i_2_n_0 ),
        .I2(data[2]),
        .I3(data[1]),
        .I4(data[4]),
        .I5(data[3]),
        .O(\FSM_onehot_st_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_onehot_st[8]_i_2 
       (.I0(data[6]),
        .I1(data[7]),
        .I2(data[5]),
        .I3(data[0]),
        .O(\FSM_onehot_st[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002008)) 
    \FSM_onehot_st[9]_i_3 
       (.I0(Q[0]),
        .I1(data[1]),
        .I2(data[2]),
        .I3(data[4]),
        .I4(data[3]),
        .I5(\FSM_onehot_st[8]_i_2_n_0 ),
        .O(\FSM_onehot_st_reg[0] ));
  LUT6 #(
    .INIT(64'h0001000000090600)) 
    \FSM_onehot_st[9]_i_5 
       (.I0(data[4]),
        .I1(data[0]),
        .I2(\FSM_onehot_st[9]_i_6_n_0 ),
        .I3(data[1]),
        .I4(data[2]),
        .I5(data[3]),
        .O(\data_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_onehot_st[9]_i_6 
       (.I0(data[5]),
        .I1(data[7]),
        .I2(data[6]),
        .O(\FSM_onehot_st[9]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(rx_ff2),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(rx_ff2),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(\data[7]_i_1_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(rx_ff2),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_state[4]_i_3_n_0 ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\clk_cnt_reg_n_0_[0] ),
        .I2(\clk_cnt_reg_n_0_[9] ),
        .I3(\clk_cnt[0]_i_2_n_0 ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\data[7]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\bit_idx_reg_n_0_[2] ),
        .I3(\bit_idx_reg_n_0_[0] ),
        .I4(\bit_idx_reg_n_0_[1] ),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "S_START:00010,S_STOP:01000,S_DONE:10000,S_IDLE:00001,S_DATA:00100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst_sys));
  (* FSM_ENCODED_STATES = "S_START:00010,S_STOP:01000,S_DONE:10000,S_IDLE:00001,S_DATA:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(rst_sys));
  (* FSM_ENCODED_STATES = "S_START:00010,S_STOP:01000,S_DONE:10000,S_IDLE:00001,S_DATA:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(rst_sys));
  (* FSM_ENCODED_STATES = "S_START:00010,S_STOP:01000,S_DONE:10000,S_IDLE:00001,S_DATA:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst_sys));
  (* FSM_ENCODED_STATES = "S_START:00010,S_STOP:01000,S_DONE:10000,S_IDLE:00001,S_DATA:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(rst_sys));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \bcode[7]_i_1 
       (.I0(rst_sys),
        .I1(Q[8]),
        .I2(valid),
        .I3(\data_reg[4]_0 ),
        .O(rst_sys_reg));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h03A8)) 
    \bit_idx[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\bit_idx[2]_i_2_n_0 ),
        .I3(\bit_idx_reg_n_0_[0] ),
        .O(\bit_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h444F8880)) 
    \bit_idx[1]_i_1 
       (.I0(\bit_idx_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\bit_idx[2]_i_2_n_0 ),
        .I4(\bit_idx_reg_n_0_[1] ),
        .O(\bit_idx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2AFF80808000)) 
    \bit_idx[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\bit_idx[2]_i_2_n_0 ),
        .I5(\bit_idx_reg_n_0_[2] ),
        .O(\bit_idx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bit_idx[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\data[7]_i_2_n_0 ),
        .O(\bit_idx[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_idx_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_idx[0]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[0] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \bit_idx_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_idx[1]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[1] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \bit_idx_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_idx[2]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[2] ),
        .R(rst_sys));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h02)) 
    btn_left_pulse_i_3
       (.I0(time_valid_pulse_i_9_n_0),
        .I1(data[7]),
        .I2(data[6]),
        .O(\data_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h5555555155505550)) 
    \clk_cnt[0]_i_1__0 
       (.I0(\clk_cnt_reg_n_0_[0] ),
        .I1(\clk_cnt[0]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\clk_cnt_reg_n_0_[9] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\clk_cnt[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \clk_cnt[0]_i_2 
       (.I0(\clk_cnt[0]_i_3_n_0 ),
        .I1(\clk_cnt_reg_n_0_[1] ),
        .I2(\clk_cnt_reg_n_0_[2] ),
        .I3(\clk_cnt[9]_i_5_n_0 ),
        .I4(\clk_cnt_reg_n_0_[7] ),
        .I5(\clk_cnt_reg_n_0_[8] ),
        .O(\clk_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD5FFD5FFD5FF)) 
    \clk_cnt[0]_i_3 
       (.I0(\clk_cnt_reg_n_0_[8] ),
        .I1(\clk_cnt_reg_n_0_[6] ),
        .I2(\clk_cnt_reg_n_0_[7] ),
        .I3(\clk_cnt_reg_n_0_[5] ),
        .I4(\clk_cnt_reg_n_0_[4] ),
        .I5(\clk_cnt_reg_n_0_[3] ),
        .O(\clk_cnt[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \clk_cnt[1]_i_1 
       (.I0(\clk_cnt_reg_n_0_[0] ),
        .I1(\clk_cnt_reg_n_0_[1] ),
        .I2(\clk_cnt[1]_i_2_n_0 ),
        .O(\clk_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h00070005)) 
    \clk_cnt[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\clk_cnt_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\clk_cnt[0]_i_2_n_0 ),
        .O(\clk_cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FEFF00)) 
    \clk_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\clk_cnt[2]_i_2_n_0 ),
        .I2(\clk_cnt[2]_i_3_n_0 ),
        .I3(\clk_cnt_reg_n_0_[2] ),
        .I4(\clk_cnt[2]_i_4_n_0 ),
        .I5(\clk_cnt[2]_i_5_n_0 ),
        .O(\clk_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h3B)) 
    \clk_cnt[2]_i_2 
       (.I0(\clk_cnt_reg_n_0_[3] ),
        .I1(\clk_cnt_reg_n_0_[5] ),
        .I2(\clk_cnt_reg_n_0_[4] ),
        .O(\clk_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    \clk_cnt[2]_i_3 
       (.I0(\clk_cnt_reg_n_0_[5] ),
        .I1(\clk_cnt_reg_n_0_[9] ),
        .I2(\clk_cnt_reg_n_0_[4] ),
        .I3(\clk_cnt_reg_n_0_[8] ),
        .I4(\clk_cnt_reg_n_0_[6] ),
        .I5(\clk_cnt_reg_n_0_[7] ),
        .O(\clk_cnt[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[2]_i_4 
       (.I0(\clk_cnt_reg_n_0_[1] ),
        .I1(\clk_cnt_reg_n_0_[0] ),
        .O(\clk_cnt[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \clk_cnt[2]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\clk_cnt[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \clk_cnt[3]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .I3(\clk_cnt_reg_n_0_[1] ),
        .I4(\clk_cnt_reg_n_0_[3] ),
        .O(\clk_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \clk_cnt[4]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[1] ),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .I3(\clk_cnt_reg_n_0_[2] ),
        .I4(\clk_cnt_reg_n_0_[3] ),
        .I5(\clk_cnt_reg_n_0_[4] ),
        .O(\clk_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \clk_cnt[5]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[4] ),
        .I2(\clk_cnt[7]_i_2_n_0 ),
        .I3(\clk_cnt_reg_n_0_[5] ),
        .O(\clk_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \clk_cnt[6]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(\clk_cnt[7]_i_2_n_0 ),
        .I2(\clk_cnt_reg_n_0_[5] ),
        .I3(\clk_cnt_reg_n_0_[4] ),
        .I4(\clk_cnt_reg_n_0_[6] ),
        .O(\clk_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \clk_cnt[7]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[4] ),
        .I2(\clk_cnt_reg_n_0_[5] ),
        .I3(\clk_cnt[7]_i_2_n_0 ),
        .I4(\clk_cnt_reg_n_0_[6] ),
        .I5(\clk_cnt_reg_n_0_[7] ),
        .O(\clk_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_cnt[7]_i_2 
       (.I0(\clk_cnt_reg_n_0_[1] ),
        .I1(\clk_cnt_reg_n_0_[0] ),
        .I2(\clk_cnt_reg_n_0_[2] ),
        .I3(\clk_cnt_reg_n_0_[3] ),
        .O(\clk_cnt[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hD200)) 
    \clk_cnt[8]_i_1 
       (.I0(\clk_cnt_reg_n_0_[7] ),
        .I1(\clk_cnt[9]_i_3_n_0 ),
        .I2(\clk_cnt_reg_n_0_[8] ),
        .I3(\clk_cnt[8]_i_2_n_0 ),
        .O(\clk_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE0FFE0E0E0E0)) 
    \clk_cnt[8]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\data[7]_i_2_n_0 ),
        .I3(\clk_cnt[8]_i_3_n_0 ),
        .I4(\clk_cnt[8]_i_4_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\clk_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040404000000000)) 
    \clk_cnt[8]_i_3 
       (.I0(\clk_cnt_reg_n_0_[3] ),
        .I1(\clk_cnt_reg_n_0_[4] ),
        .I2(\clk_cnt_reg_n_0_[5] ),
        .I3(\clk_cnt_reg_n_0_[7] ),
        .I4(\clk_cnt_reg_n_0_[6] ),
        .I5(\clk_cnt_reg_n_0_[8] ),
        .O(\clk_cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    \clk_cnt[8]_i_4 
       (.I0(\clk_cnt_reg_n_0_[1] ),
        .I1(\clk_cnt_reg_n_0_[0] ),
        .I2(\clk_cnt_reg_n_0_[2] ),
        .I3(\clk_cnt_reg_n_0_[7] ),
        .I4(\clk_cnt_reg_n_0_[8] ),
        .I5(\clk_cnt_reg_n_0_[9] ),
        .O(\clk_cnt[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_cnt[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(clk_cnt));
  LUT6 #(
    .INIT(64'hF708F708F7080000)) 
    \clk_cnt[9]_i_2 
       (.I0(\clk_cnt_reg_n_0_[8] ),
        .I1(\clk_cnt_reg_n_0_[7] ),
        .I2(\clk_cnt[9]_i_3_n_0 ),
        .I3(\clk_cnt_reg_n_0_[9] ),
        .I4(\clk_cnt[9]_i_4_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\clk_cnt[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \clk_cnt[9]_i_3 
       (.I0(\clk_cnt[9]_i_5_n_0 ),
        .I1(\clk_cnt_reg_n_0_[1] ),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .I3(\clk_cnt_reg_n_0_[2] ),
        .I4(\clk_cnt_reg_n_0_[3] ),
        .I5(\clk_cnt_reg_n_0_[6] ),
        .O(\clk_cnt[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \clk_cnt[9]_i_4 
       (.I0(\data[7]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\clk_cnt[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[9]_i_5 
       (.I0(\clk_cnt_reg_n_0_[4] ),
        .I1(\clk_cnt_reg_n_0_[5] ),
        .O(\clk_cnt[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[0]_i_1__0_n_0 ),
        .Q(\clk_cnt_reg_n_0_[0] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[1]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[1] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[2]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[2] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[3]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[3] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[4]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[4] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[5]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[5] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[6]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[6] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[7]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[7] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[8]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[8] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[9] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[9]_i_2_n_0 ),
        .Q(\clk_cnt_reg_n_0_[9] ),
        .R(rst_sys));
  LUT2 #(
    .INIT(4'h2)) 
    \data[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\data[7]_i_2_n_0 ),
        .O(\data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBFFFBFF)) 
    \data[7]_i_2 
       (.I0(\data[7]_i_3_n_0 ),
        .I1(\clk_cnt_reg_n_0_[0] ),
        .I2(\clk_cnt_reg_n_0_[3] ),
        .I3(\clk_cnt_reg_n_0_[5] ),
        .I4(\clk_cnt_reg_n_0_[4] ),
        .I5(\clk_cnt[2]_i_3_n_0 ),
        .O(\data[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data[7]_i_3 
       (.I0(\clk_cnt_reg_n_0_[2] ),
        .I1(\clk_cnt_reg_n_0_[1] ),
        .O(\data[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\shift_reg_n_0_[0] ),
        .Q(data[0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\shift_reg_n_0_[1] ),
        .Q(data[1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\shift_reg_n_0_[2] ),
        .Q(data[2]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\shift_reg_n_0_[3] ),
        .Q(data[3]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\shift_reg_n_0_[4] ),
        .Q(data[4]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\shift_reg_n_0_[5] ),
        .Q(data[5]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\shift_reg_n_0_[6] ),
        .Q(data[6]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(\shift_reg_n_0_[7] ),
        .Q(data[7]),
        .R(rst_sys));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \h1[3]_i_1 
       (.I0(is_digit_return),
        .I1(valid),
        .I2(Q[1]),
        .O(valid_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \h2[3]_i_1 
       (.I0(is_digit_return),
        .I1(valid),
        .I2(Q[2]),
        .O(valid_reg_4));
  LUT2 #(
    .INIT(4'h8)) 
    \hh[5]_i_1 
       (.I0(valid),
        .I1(\mm_reg[0] ),
        .O(valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m1[3]_i_1 
       (.I0(is_digit_return),
        .I1(valid),
        .I2(Q[3]),
        .O(valid_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m2[3]_i_1 
       (.I0(is_digit_return),
        .I1(valid),
        .I2(Q[4]),
        .O(valid_reg_6));
  FDRE #(
    .INIT(1'b1)) 
    rx_ff1_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx),
        .Q(rx_ff1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    rx_ff2_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx_ff1),
        .Q(rx_ff2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s1[3]_i_1 
       (.I0(is_digit_return),
        .I1(valid),
        .I2(Q[5]),
        .O(valid_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s2[3]_i_1 
       (.I0(is_digit_return),
        .I1(valid),
        .I2(Q[6]),
        .O(valid_reg_2));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \shift[0]_i_1 
       (.I0(rx_ff2),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .I3(\shift[3]_i_2_n_0 ),
        .I4(\shift_reg_n_0_[0] ),
        .O(\shift[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \shift[1]_i_1 
       (.I0(rx_ff2),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .I3(\shift[3]_i_2_n_0 ),
        .I4(\shift_reg_n_0_[1] ),
        .O(\shift[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \shift[2]_i_1 
       (.I0(rx_ff2),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[1] ),
        .I3(\shift[3]_i_2_n_0 ),
        .I4(\shift_reg_n_0_[2] ),
        .O(\shift[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \shift[3]_i_1 
       (.I0(rx_ff2),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .I3(\shift[3]_i_2_n_0 ),
        .I4(\shift_reg_n_0_[3] ),
        .O(\shift[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \shift[3]_i_2 
       (.I0(\bit_idx_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\data[7]_i_2_n_0 ),
        .O(\shift[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \shift[4]_i_1 
       (.I0(rx_ff2),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .I3(\bit_idx_reg_n_0_[2] ),
        .I4(\bit_idx[2]_i_2_n_0 ),
        .I5(\shift_reg_n_0_[4] ),
        .O(\shift[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \shift[5]_i_1 
       (.I0(rx_ff2),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .I3(\bit_idx_reg_n_0_[2] ),
        .I4(\bit_idx[2]_i_2_n_0 ),
        .I5(\shift_reg_n_0_[5] ),
        .O(\shift[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \shift[6]_i_1 
       (.I0(rx_ff2),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[1] ),
        .I3(\bit_idx_reg_n_0_[2] ),
        .I4(\bit_idx[2]_i_2_n_0 ),
        .I5(\shift_reg_n_0_[6] ),
        .O(\shift[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \shift[7]_i_1 
       (.I0(rx_ff2),
        .I1(\bit_idx[2]_i_2_n_0 ),
        .I2(\bit_idx_reg_n_0_[2] ),
        .I3(\bit_idx_reg_n_0_[0] ),
        .I4(\bit_idx_reg_n_0_[1] ),
        .I5(\shift_reg_n_0_[7] ),
        .O(\shift[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift[0]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[0] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift[1]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[1] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift[2]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[2] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift[3]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[3] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift[4]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[4] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift[5]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[5] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift[6]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[6] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift[7]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[7] ),
        .R(rst_sys));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hB)) 
    time_valid_pulse_i_1
       (.I0(rst_sys),
        .I1(valid),
        .O(rst_sys_reg_0));
  LUT5 #(
    .INIT(32'h57FFFFFF)) 
    time_valid_pulse_i_13
       (.I0(data[3]),
        .I1(data[1]),
        .I2(data[2]),
        .I3(data[5]),
        .I4(data[4]),
        .O(time_valid_pulse_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    time_valid_pulse_i_4
       (.I0(data[6]),
        .I1(data[7]),
        .I2(time_valid_pulse_i_9_n_0),
        .I3(Q[7]),
        .O(\data_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h00007F0000000000)) 
    time_valid_pulse_i_8
       (.I0(data[5]),
        .I1(data[4]),
        .I2(time_valid_pulse_i_13_n_0),
        .I3(Q[4]),
        .I4(\FSM_onehot_st[7]_i_3_n_0 ),
        .I5(time_valid_pulse_i_9_n_0),
        .O(\data_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    time_valid_pulse_i_9
       (.I0(data[0]),
        .I1(data[1]),
        .I2(data[2]),
        .I3(data[4]),
        .I4(data[3]),
        .I5(data[5]),
        .O(time_valid_pulse_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(valid),
        .R(rst_sys));
endmodule

module uart_tx
   (tx_busy,
    tx,
    tx_start,
    rst_sys,
    clk);
  output tx_busy;
  output tx;
  input tx_start;
  input rst_sys;
  input clk;

  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \bit_idx[0]_i_1__0_n_0 ;
  wire \bit_idx[1]_i_1__0_n_0 ;
  wire \bit_idx[2]_i_1__0_n_0 ;
  wire \bit_idx_reg_n_0_[0] ;
  wire \bit_idx_reg_n_0_[1] ;
  wire \bit_idx_reg_n_0_[2] ;
  wire clk;
  wire \clk_cnt[0]_i_1_n_0 ;
  wire \clk_cnt[10]_i_1_n_0 ;
  wire \clk_cnt[10]_i_2_n_0 ;
  wire \clk_cnt[10]_i_3_n_0 ;
  wire \clk_cnt[10]_i_4_n_0 ;
  wire \clk_cnt[1]_i_1__0_n_0 ;
  wire \clk_cnt[2]_i_1__0_n_0 ;
  wire \clk_cnt[3]_i_1__0_n_0 ;
  wire \clk_cnt[4]_i_1__0_n_0 ;
  wire \clk_cnt[5]_i_1__0_n_0 ;
  wire \clk_cnt[6]_i_1__0_n_0 ;
  wire \clk_cnt[7]_i_1__0_n_0 ;
  wire \clk_cnt[8]_i_1__0_n_0 ;
  wire \clk_cnt[8]_i_2__0_n_0 ;
  wire \clk_cnt[9]_i_1__0_n_0 ;
  wire \clk_cnt[9]_i_2__0_n_0 ;
  wire \clk_cnt_reg_n_0_[0] ;
  wire \clk_cnt_reg_n_0_[10] ;
  wire \clk_cnt_reg_n_0_[1] ;
  wire \clk_cnt_reg_n_0_[2] ;
  wire \clk_cnt_reg_n_0_[3] ;
  wire \clk_cnt_reg_n_0_[4] ;
  wire \clk_cnt_reg_n_0_[5] ;
  wire \clk_cnt_reg_n_0_[6] ;
  wire \clk_cnt_reg_n_0_[7] ;
  wire \clk_cnt_reg_n_0_[8] ;
  wire \clk_cnt_reg_n_0_[9] ;
  wire [5:0]in12;
  wire rst_sys;
  wire [6:0]shreg;
  wire \shreg[6]_i_1_n_0 ;
  wire \shreg[6]_i_3_n_0 ;
  wire \shreg_reg_n_0_[0] ;
  wire [1:0]state__0;
  wire tx;
  wire tx_busy;
  wire tx_busy_i_1_n_0;
  wire tx_i_1_n_0;
  wire tx_i_2_n_0;
  wire tx_i_3_n_0;
  wire tx_start;

  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hAAAA1F10)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(state__0[1]),
        .I3(tx_start),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\bit_idx_reg_n_0_[1] ),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[2] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(state__0[0]),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\clk_cnt_reg_n_0_[3] ),
        .I1(\clk_cnt_reg_n_0_[4] ),
        .I2(\clk_cnt_reg_n_0_[10] ),
        .I3(\clk_cnt_reg_n_0_[7] ),
        .I4(\clk_cnt_reg_n_0_[2] ),
        .I5(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\clk_cnt_reg_n_0_[8] ),
        .I1(\clk_cnt_reg_n_0_[5] ),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .I3(\clk_cnt_reg_n_0_[1] ),
        .I4(\clk_cnt_reg_n_0_[6] ),
        .I5(\clk_cnt_reg_n_0_[9] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:00,S_START:01,S_DATA:10,S_STOP:11," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state__0[0]),
        .R(rst_sys));
  (* FSM_ENCODED_STATES = "S_IDLE:00,S_START:01,S_DATA:10,S_STOP:11," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state__0[1]),
        .R(rst_sys));
  LUT6 #(
    .INIT(64'hF0F0A0A0E5A50000)) 
    \bit_idx[0]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .I3(\bit_idx_reg_n_0_[2] ),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\bit_idx[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC8888DC9C0000)) 
    \bit_idx[1]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .I3(\bit_idx_reg_n_0_[2] ),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\bit_idx[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AA00FF400000)) 
    \bit_idx[2]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .I3(\bit_idx_reg_n_0_[2] ),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\bit_idx[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_idx_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_idx[0]_i_1__0_n_0 ),
        .Q(\bit_idx_reg_n_0_[0] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \bit_idx_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_idx[1]_i_1__0_n_0 ),
        .Q(\bit_idx_reg_n_0_[1] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \bit_idx_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_idx[2]_i_1__0_n_0 ),
        .Q(\bit_idx_reg_n_0_[2] ),
        .R(rst_sys));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \clk_cnt[0]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .O(\clk_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888288888888888)) 
    \clk_cnt[10]_i_1 
       (.I0(\clk_cnt[10]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[10] ),
        .I2(\clk_cnt[10]_i_3_n_0 ),
        .I3(\clk_cnt_reg_n_0_[9] ),
        .I4(\clk_cnt[10]_i_4_n_0 ),
        .I5(\clk_cnt_reg_n_0_[8] ),
        .O(\clk_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \clk_cnt[10]_i_2 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(\clk_cnt[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \clk_cnt[10]_i_3 
       (.I0(\clk_cnt_reg_n_0_[4] ),
        .I1(\clk_cnt_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_n_0_[3] ),
        .I3(\clk_cnt_reg_n_0_[7] ),
        .O(\clk_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_cnt[10]_i_4 
       (.I0(\clk_cnt_reg_n_0_[5] ),
        .I1(\clk_cnt_reg_n_0_[0] ),
        .I2(\clk_cnt_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_n_0_[6] ),
        .O(\clk_cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \clk_cnt[1]_i_1__0 
       (.I0(\clk_cnt[10]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[1] ),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .O(\clk_cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \clk_cnt[2]_i_1__0 
       (.I0(\clk_cnt[10]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .I3(\clk_cnt_reg_n_0_[1] ),
        .O(\clk_cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \clk_cnt[3]_i_1__0 
       (.I0(\clk_cnt[10]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[3] ),
        .I2(\clk_cnt_reg_n_0_[2] ),
        .I3(\clk_cnt_reg_n_0_[1] ),
        .I4(\clk_cnt_reg_n_0_[0] ),
        .O(\clk_cnt[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \clk_cnt[4]_i_1__0 
       (.I0(\clk_cnt[10]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[4] ),
        .I2(\clk_cnt_reg_n_0_[3] ),
        .I3(\clk_cnt_reg_n_0_[2] ),
        .I4(\clk_cnt_reg_n_0_[1] ),
        .I5(\clk_cnt_reg_n_0_[0] ),
        .O(\clk_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888888828888888)) 
    \clk_cnt[5]_i_1__0 
       (.I0(\clk_cnt[10]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[5] ),
        .I2(\clk_cnt_reg_n_0_[4] ),
        .I3(\clk_cnt_reg_n_0_[2] ),
        .I4(\clk_cnt_reg_n_0_[3] ),
        .I5(\clk_cnt[8]_i_2__0_n_0 ),
        .O(\clk_cnt[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \clk_cnt[6]_i_1__0 
       (.I0(\clk_cnt[10]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[6] ),
        .I2(\clk_cnt[9]_i_2__0_n_0 ),
        .I3(\clk_cnt_reg_n_0_[5] ),
        .I4(\clk_cnt_reg_n_0_[0] ),
        .I5(\clk_cnt_reg_n_0_[1] ),
        .O(\clk_cnt[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888888828888888)) 
    \clk_cnt[7]_i_1__0 
       (.I0(\clk_cnt[10]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[7] ),
        .I2(\clk_cnt_reg_n_0_[4] ),
        .I3(\clk_cnt_reg_n_0_[2] ),
        .I4(\clk_cnt_reg_n_0_[3] ),
        .I5(\clk_cnt[10]_i_4_n_0 ),
        .O(\clk_cnt[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888288888888888)) 
    \clk_cnt[8]_i_1__0 
       (.I0(\clk_cnt[10]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[8] ),
        .I2(\clk_cnt[10]_i_3_n_0 ),
        .I3(\clk_cnt_reg_n_0_[6] ),
        .I4(\clk_cnt[8]_i_2__0_n_0 ),
        .I5(\clk_cnt_reg_n_0_[5] ),
        .O(\clk_cnt[8]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \clk_cnt[8]_i_2__0 
       (.I0(\clk_cnt_reg_n_0_[0] ),
        .I1(\clk_cnt_reg_n_0_[1] ),
        .O(\clk_cnt[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888888828888888)) 
    \clk_cnt[9]_i_1__0 
       (.I0(\clk_cnt[10]_i_2_n_0 ),
        .I1(\clk_cnt_reg_n_0_[9] ),
        .I2(\clk_cnt_reg_n_0_[7] ),
        .I3(\clk_cnt[9]_i_2__0_n_0 ),
        .I4(\clk_cnt_reg_n_0_[8] ),
        .I5(\clk_cnt[10]_i_4_n_0 ),
        .O(\clk_cnt[9]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \clk_cnt[9]_i_2__0 
       (.I0(\clk_cnt_reg_n_0_[3] ),
        .I1(\clk_cnt_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_n_0_[4] ),
        .O(\clk_cnt[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_cnt[0]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[0] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_cnt[10]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[10] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_cnt[1]_i_1__0_n_0 ),
        .Q(\clk_cnt_reg_n_0_[1] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_cnt[2]_i_1__0_n_0 ),
        .Q(\clk_cnt_reg_n_0_[2] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_cnt[3]_i_1__0_n_0 ),
        .Q(\clk_cnt_reg_n_0_[3] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_cnt[4]_i_1__0_n_0 ),
        .Q(\clk_cnt_reg_n_0_[4] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_cnt[5]_i_1__0_n_0 ),
        .Q(\clk_cnt_reg_n_0_[5] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_cnt[6]_i_1__0_n_0 ),
        .Q(\clk_cnt_reg_n_0_[6] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_cnt[7]_i_1__0_n_0 ),
        .Q(\clk_cnt_reg_n_0_[7] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_cnt[8]_i_1__0_n_0 ),
        .Q(\clk_cnt_reg_n_0_[8] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_cnt[9]_i_1__0_n_0 ),
        .Q(\clk_cnt_reg_n_0_[9] ),
        .R(rst_sys));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \shreg[0]_i_1 
       (.I0(in12[0]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(shreg[0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \shreg[1]_i_1 
       (.I0(in12[1]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(shreg[1]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \shreg[2]_i_1 
       (.I0(in12[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(shreg[2]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \shreg[3]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(in12[3]),
        .O(shreg[3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \shreg[4]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(in12[4]),
        .O(shreg[4]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \shreg[5]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(in12[5]),
        .O(shreg[5]));
  LUT5 #(
    .INIT(32'h002E0F2E)) 
    \shreg[6]_i_1 
       (.I0(tx_start),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(\shreg[6]_i_3_n_0 ),
        .O(\shreg[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \shreg[6]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(shreg[6]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \shreg[6]_i_3 
       (.I0(state__0[0]),
        .I1(\bit_idx_reg_n_0_[2] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .I3(\bit_idx_reg_n_0_[1] ),
        .O(\shreg[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[0] 
       (.C(clk),
        .CE(\shreg[6]_i_1_n_0 ),
        .D(shreg[0]),
        .Q(\shreg_reg_n_0_[0] ),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[1] 
       (.C(clk),
        .CE(\shreg[6]_i_1_n_0 ),
        .D(shreg[1]),
        .Q(in12[0]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[2] 
       (.C(clk),
        .CE(\shreg[6]_i_1_n_0 ),
        .D(shreg[2]),
        .Q(in12[1]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[3] 
       (.C(clk),
        .CE(\shreg[6]_i_1_n_0 ),
        .D(shreg[3]),
        .Q(in12[2]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[4] 
       (.C(clk),
        .CE(\shreg[6]_i_1_n_0 ),
        .D(shreg[4]),
        .Q(in12[3]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[5] 
       (.C(clk),
        .CE(\shreg[6]_i_1_n_0 ),
        .D(shreg[5]),
        .Q(in12[4]),
        .R(rst_sys));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[6] 
       (.C(clk),
        .CE(\shreg[6]_i_1_n_0 ),
        .D(shreg[6]),
        .Q(in12[5]),
        .R(rst_sys));
  LUT3 #(
    .INIT(8'hFE)) 
    tx_busy_i_1
       (.I0(tx_start),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(tx_busy_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_busy_i_1_n_0),
        .Q(tx_busy),
        .R(rst_sys));
  LUT3 #(
    .INIT(8'hD7)) 
    tx_i_1
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(tx_i_1_n_0));
  LUT5 #(
    .INIT(32'hF5F5F577)) 
    tx_i_2
       (.I0(tx_i_3_n_0),
        .I1(tx_start),
        .I2(\shreg_reg_n_0_[0] ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(tx_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h007FFFFF)) 
    tx_i_3
       (.I0(\bit_idx_reg_n_0_[1] ),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[2] ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(tx_i_3_n_0));
  FDSE #(
    .INIT(1'b1)) 
    tx_reg
       (.C(clk),
        .CE(tx_i_1_n_0),
        .D(tx_i_2_n_0),
        .Q(tx),
        .S(rst_sys));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
