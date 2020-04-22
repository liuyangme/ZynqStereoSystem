// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Apr 22 23:09:26 2020
// Host        : LiuYangLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/Project/Personal/StereoVision/Project_FPGA/Stereo-Display-ZYNQ/ControlBoardTest/system.sim/sim_1/synth/func/xsim/control_test_tb_func_synth.v
// Design      : control_test
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module control_test
   (clk_i,
    rst_n,
    key_i_n,
    switchkey_i_n,
    beep_o,
    led_o);
  input clk_i;
  input rst_n;
  input [6:0]key_i_n;
  input [3:0]switchkey_i_n;
  output beep_o;
  output [1:0]led_o;

  wire beep_o;
  wire beep_o_OBUF;
  wire \beep_o_r[0]_i_10_n_0 ;
  wire \beep_o_r[0]_i_11_n_0 ;
  wire \beep_o_r[0]_i_12_n_0 ;
  wire \beep_o_r[0]_i_13_n_0 ;
  wire \beep_o_r[0]_i_14_n_0 ;
  wire \beep_o_r[0]_i_15_n_0 ;
  wire \beep_o_r[0]_i_16_n_0 ;
  wire \beep_o_r[0]_i_17_n_0 ;
  wire \beep_o_r[0]_i_18_n_0 ;
  wire \beep_o_r[0]_i_19_n_0 ;
  wire \beep_o_r[0]_i_1_n_0 ;
  wire \beep_o_r[0]_i_20_n_0 ;
  wire \beep_o_r[0]_i_2_n_0 ;
  wire \beep_o_r[0]_i_3_n_0 ;
  wire \beep_o_r[0]_i_4_n_0 ;
  wire \beep_o_r[0]_i_5_n_0 ;
  wire \beep_o_r[0]_i_6_n_0 ;
  wire \beep_o_r[0]_i_7_n_0 ;
  wire \beep_o_r[0]_i_8_n_0 ;
  wire \beep_o_r[0]_i_9_n_0 ;
  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire [31:1]data0;
  wire [6:0]key_i_n;
  wire [6:0]key_i_n_IBUF;
  wire key_i_n_r;
  wire \key_i_n_r_reg_n_0_[0] ;
  wire \key_i_n_r_reg_n_0_[1] ;
  wire \key_i_n_r_reg_n_0_[2] ;
  wire \key_i_n_r_reg_n_0_[3] ;
  wire \key_i_n_r_reg_n_0_[4] ;
  wire \key_i_n_r_reg_n_0_[5] ;
  wire \key_i_n_r_reg_n_0_[6] ;
  wire \key_state[0]_i_1_n_0 ;
  wire \key_state[1]_i_1_n_0 ;
  wire \key_state[2]_i_1_n_0 ;
  wire \key_state[3]_i_1_n_0 ;
  wire \key_state[4]_i_1_n_0 ;
  wire \key_state[5]_i_1_n_0 ;
  wire \key_state[6]_i_1_n_0 ;
  wire \key_state_reg_n_0_[0] ;
  wire [6:0]key_temp;
  wire [1:0]led_o;
  wire [1:0]led_o_OBUF;
  wire \led_o_r[0]_i_1_n_0 ;
  wire \led_o_r[1]_i_1_n_0 ;
  wire \led_o_r[1]_i_2_n_0 ;
  wire rst_n;
  wire rst_n_IBUF;
  wire [5:0]sel0;
  wire [3:0]switchkey_i_n;
  wire [3:0]switchkey_i_n_IBUF;
  wire [3:0]switchkey_i_n_r;
  wire \switchkey_i_n_r[3]_i_1_n_0 ;
  wire timer_vessel_1;
  wire \timer_vessel_1[0]_i_1_n_0 ;
  wire \timer_vessel_1[24]_i_10_n_0 ;
  wire \timer_vessel_1[24]_i_11_n_0 ;
  wire \timer_vessel_1[24]_i_12_n_0 ;
  wire \timer_vessel_1[24]_i_1_n_0 ;
  wire \timer_vessel_1[24]_i_4_n_0 ;
  wire \timer_vessel_1[24]_i_5_n_0 ;
  wire \timer_vessel_1[24]_i_6_n_0 ;
  wire \timer_vessel_1[24]_i_7_n_0 ;
  wire \timer_vessel_1[24]_i_8_n_0 ;
  wire \timer_vessel_1[24]_i_9_n_0 ;
  wire \timer_vessel_1_reg[12]_i_1_n_0 ;
  wire \timer_vessel_1_reg[12]_i_1_n_1 ;
  wire \timer_vessel_1_reg[12]_i_1_n_2 ;
  wire \timer_vessel_1_reg[12]_i_1_n_3 ;
  wire \timer_vessel_1_reg[12]_i_1_n_4 ;
  wire \timer_vessel_1_reg[12]_i_1_n_5 ;
  wire \timer_vessel_1_reg[12]_i_1_n_6 ;
  wire \timer_vessel_1_reg[12]_i_1_n_7 ;
  wire \timer_vessel_1_reg[16]_i_1_n_0 ;
  wire \timer_vessel_1_reg[16]_i_1_n_1 ;
  wire \timer_vessel_1_reg[16]_i_1_n_2 ;
  wire \timer_vessel_1_reg[16]_i_1_n_3 ;
  wire \timer_vessel_1_reg[16]_i_1_n_4 ;
  wire \timer_vessel_1_reg[16]_i_1_n_5 ;
  wire \timer_vessel_1_reg[16]_i_1_n_6 ;
  wire \timer_vessel_1_reg[16]_i_1_n_7 ;
  wire \timer_vessel_1_reg[20]_i_1_n_0 ;
  wire \timer_vessel_1_reg[20]_i_1_n_1 ;
  wire \timer_vessel_1_reg[20]_i_1_n_2 ;
  wire \timer_vessel_1_reg[20]_i_1_n_3 ;
  wire \timer_vessel_1_reg[20]_i_1_n_4 ;
  wire \timer_vessel_1_reg[20]_i_1_n_5 ;
  wire \timer_vessel_1_reg[20]_i_1_n_6 ;
  wire \timer_vessel_1_reg[20]_i_1_n_7 ;
  wire \timer_vessel_1_reg[24]_i_3_n_1 ;
  wire \timer_vessel_1_reg[24]_i_3_n_2 ;
  wire \timer_vessel_1_reg[24]_i_3_n_3 ;
  wire \timer_vessel_1_reg[24]_i_3_n_4 ;
  wire \timer_vessel_1_reg[24]_i_3_n_5 ;
  wire \timer_vessel_1_reg[24]_i_3_n_6 ;
  wire \timer_vessel_1_reg[24]_i_3_n_7 ;
  wire \timer_vessel_1_reg[4]_i_1_n_0 ;
  wire \timer_vessel_1_reg[4]_i_1_n_1 ;
  wire \timer_vessel_1_reg[4]_i_1_n_2 ;
  wire \timer_vessel_1_reg[4]_i_1_n_3 ;
  wire \timer_vessel_1_reg[4]_i_1_n_4 ;
  wire \timer_vessel_1_reg[4]_i_1_n_5 ;
  wire \timer_vessel_1_reg[4]_i_1_n_6 ;
  wire \timer_vessel_1_reg[4]_i_1_n_7 ;
  wire \timer_vessel_1_reg[8]_i_1_n_0 ;
  wire \timer_vessel_1_reg[8]_i_1_n_1 ;
  wire \timer_vessel_1_reg[8]_i_1_n_2 ;
  wire \timer_vessel_1_reg[8]_i_1_n_3 ;
  wire \timer_vessel_1_reg[8]_i_1_n_4 ;
  wire \timer_vessel_1_reg[8]_i_1_n_5 ;
  wire \timer_vessel_1_reg[8]_i_1_n_6 ;
  wire \timer_vessel_1_reg[8]_i_1_n_7 ;
  wire \timer_vessel_1_reg_n_0_[0] ;
  wire \timer_vessel_1_reg_n_0_[10] ;
  wire \timer_vessel_1_reg_n_0_[11] ;
  wire \timer_vessel_1_reg_n_0_[12] ;
  wire \timer_vessel_1_reg_n_0_[13] ;
  wire \timer_vessel_1_reg_n_0_[14] ;
  wire \timer_vessel_1_reg_n_0_[15] ;
  wire \timer_vessel_1_reg_n_0_[16] ;
  wire \timer_vessel_1_reg_n_0_[17] ;
  wire \timer_vessel_1_reg_n_0_[18] ;
  wire \timer_vessel_1_reg_n_0_[19] ;
  wire \timer_vessel_1_reg_n_0_[1] ;
  wire \timer_vessel_1_reg_n_0_[20] ;
  wire \timer_vessel_1_reg_n_0_[21] ;
  wire \timer_vessel_1_reg_n_0_[22] ;
  wire \timer_vessel_1_reg_n_0_[23] ;
  wire \timer_vessel_1_reg_n_0_[24] ;
  wire \timer_vessel_1_reg_n_0_[2] ;
  wire \timer_vessel_1_reg_n_0_[3] ;
  wire \timer_vessel_1_reg_n_0_[4] ;
  wire \timer_vessel_1_reg_n_0_[5] ;
  wire \timer_vessel_1_reg_n_0_[6] ;
  wire \timer_vessel_1_reg_n_0_[7] ;
  wire \timer_vessel_1_reg_n_0_[8] ;
  wire \timer_vessel_1_reg_n_0_[9] ;
  wire \timer_vessel_2[0]_i_1_n_0 ;
  wire \timer_vessel_2[10]_i_1_n_0 ;
  wire \timer_vessel_2[11]_i_1_n_0 ;
  wire \timer_vessel_2[12]_i_1_n_0 ;
  wire \timer_vessel_2[13]_i_1_n_0 ;
  wire \timer_vessel_2[14]_i_1_n_0 ;
  wire \timer_vessel_2[15]_i_1_n_0 ;
  wire \timer_vessel_2[16]_i_1_n_0 ;
  wire \timer_vessel_2[17]_i_1_n_0 ;
  wire \timer_vessel_2[18]_i_1_n_0 ;
  wire \timer_vessel_2[19]_i_1_n_0 ;
  wire \timer_vessel_2[1]_i_1_n_0 ;
  wire \timer_vessel_2[20]_i_1_n_0 ;
  wire \timer_vessel_2[21]_i_1_n_0 ;
  wire \timer_vessel_2[22]_i_1_n_0 ;
  wire \timer_vessel_2[23]_i_1_n_0 ;
  wire \timer_vessel_2[24]_i_1_n_0 ;
  wire \timer_vessel_2[25]_i_1_n_0 ;
  wire \timer_vessel_2[26]_i_1_n_0 ;
  wire \timer_vessel_2[27]_i_1_n_0 ;
  wire \timer_vessel_2[28]_i_1_n_0 ;
  wire \timer_vessel_2[29]_i_1_n_0 ;
  wire \timer_vessel_2[2]_i_1_n_0 ;
  wire \timer_vessel_2[30]_i_1_n_0 ;
  wire \timer_vessel_2[31]_i_10_n_0 ;
  wire \timer_vessel_2[31]_i_11_n_0 ;
  wire \timer_vessel_2[31]_i_12_n_0 ;
  wire \timer_vessel_2[31]_i_13_n_0 ;
  wire \timer_vessel_2[31]_i_14_n_0 ;
  wire \timer_vessel_2[31]_i_15_n_0 ;
  wire \timer_vessel_2[31]_i_16_n_0 ;
  wire \timer_vessel_2[31]_i_17_n_0 ;
  wire \timer_vessel_2[31]_i_18_n_0 ;
  wire \timer_vessel_2[31]_i_19_n_0 ;
  wire \timer_vessel_2[31]_i_1_n_0 ;
  wire \timer_vessel_2[31]_i_20_n_0 ;
  wire \timer_vessel_2[31]_i_21_n_0 ;
  wire \timer_vessel_2[31]_i_22_n_0 ;
  wire \timer_vessel_2[31]_i_23_n_0 ;
  wire \timer_vessel_2[31]_i_24_n_0 ;
  wire \timer_vessel_2[31]_i_25_n_0 ;
  wire \timer_vessel_2[31]_i_26_n_0 ;
  wire \timer_vessel_2[31]_i_27_n_0 ;
  wire \timer_vessel_2[31]_i_28_n_0 ;
  wire \timer_vessel_2[31]_i_29_n_0 ;
  wire \timer_vessel_2[31]_i_2_n_0 ;
  wire \timer_vessel_2[31]_i_30_n_0 ;
  wire \timer_vessel_2[31]_i_31_n_0 ;
  wire \timer_vessel_2[31]_i_32_n_0 ;
  wire \timer_vessel_2[31]_i_33_n_0 ;
  wire \timer_vessel_2[31]_i_34_n_0 ;
  wire \timer_vessel_2[31]_i_35_n_0 ;
  wire \timer_vessel_2[31]_i_36_n_0 ;
  wire \timer_vessel_2[31]_i_37_n_0 ;
  wire \timer_vessel_2[31]_i_38_n_0 ;
  wire \timer_vessel_2[31]_i_39_n_0 ;
  wire \timer_vessel_2[31]_i_3_n_0 ;
  wire \timer_vessel_2[31]_i_40_n_0 ;
  wire \timer_vessel_2[31]_i_41_n_0 ;
  wire \timer_vessel_2[31]_i_42_n_0 ;
  wire \timer_vessel_2[31]_i_43_n_0 ;
  wire \timer_vessel_2[31]_i_44_n_0 ;
  wire \timer_vessel_2[31]_i_45_n_0 ;
  wire \timer_vessel_2[31]_i_46_n_0 ;
  wire \timer_vessel_2[31]_i_47_n_0 ;
  wire \timer_vessel_2[31]_i_48_n_0 ;
  wire \timer_vessel_2[31]_i_49_n_0 ;
  wire \timer_vessel_2[31]_i_4_n_0 ;
  wire \timer_vessel_2[31]_i_50_n_0 ;
  wire \timer_vessel_2[31]_i_51_n_0 ;
  wire \timer_vessel_2[31]_i_52_n_0 ;
  wire \timer_vessel_2[31]_i_53_n_0 ;
  wire \timer_vessel_2[31]_i_54_n_0 ;
  wire \timer_vessel_2[31]_i_55_n_0 ;
  wire \timer_vessel_2[31]_i_56_n_0 ;
  wire \timer_vessel_2[31]_i_57_n_0 ;
  wire \timer_vessel_2[31]_i_58_n_0 ;
  wire \timer_vessel_2[31]_i_59_n_0 ;
  wire \timer_vessel_2[31]_i_5_n_0 ;
  wire \timer_vessel_2[31]_i_60_n_0 ;
  wire \timer_vessel_2[31]_i_61_n_0 ;
  wire \timer_vessel_2[31]_i_62_n_0 ;
  wire \timer_vessel_2[31]_i_63_n_0 ;
  wire \timer_vessel_2[31]_i_64_n_0 ;
  wire \timer_vessel_2[31]_i_65_n_0 ;
  wire \timer_vessel_2[31]_i_66_n_0 ;
  wire \timer_vessel_2[31]_i_67_n_0 ;
  wire \timer_vessel_2[31]_i_68_n_0 ;
  wire \timer_vessel_2[31]_i_69_n_0 ;
  wire \timer_vessel_2[31]_i_6_n_0 ;
  wire \timer_vessel_2[31]_i_70_n_0 ;
  wire \timer_vessel_2[31]_i_71_n_0 ;
  wire \timer_vessel_2[31]_i_72_n_0 ;
  wire \timer_vessel_2[31]_i_73_n_0 ;
  wire \timer_vessel_2[31]_i_7_n_0 ;
  wire \timer_vessel_2[31]_i_9_n_0 ;
  wire \timer_vessel_2[3]_i_1_n_0 ;
  wire \timer_vessel_2[4]_i_1_n_0 ;
  wire \timer_vessel_2[5]_i_1_n_0 ;
  wire \timer_vessel_2[6]_i_1_n_0 ;
  wire \timer_vessel_2[7]_i_1_n_0 ;
  wire \timer_vessel_2[8]_i_1_n_0 ;
  wire \timer_vessel_2[9]_i_1_n_0 ;
  wire \timer_vessel_2_reg[12]_i_2_n_0 ;
  wire \timer_vessel_2_reg[12]_i_2_n_1 ;
  wire \timer_vessel_2_reg[12]_i_2_n_2 ;
  wire \timer_vessel_2_reg[12]_i_2_n_3 ;
  wire \timer_vessel_2_reg[16]_i_2_n_0 ;
  wire \timer_vessel_2_reg[16]_i_2_n_1 ;
  wire \timer_vessel_2_reg[16]_i_2_n_2 ;
  wire \timer_vessel_2_reg[16]_i_2_n_3 ;
  wire \timer_vessel_2_reg[20]_i_2_n_0 ;
  wire \timer_vessel_2_reg[20]_i_2_n_1 ;
  wire \timer_vessel_2_reg[20]_i_2_n_2 ;
  wire \timer_vessel_2_reg[20]_i_2_n_3 ;
  wire \timer_vessel_2_reg[24]_i_2_n_0 ;
  wire \timer_vessel_2_reg[24]_i_2_n_1 ;
  wire \timer_vessel_2_reg[24]_i_2_n_2 ;
  wire \timer_vessel_2_reg[24]_i_2_n_3 ;
  wire \timer_vessel_2_reg[28]_i_2_n_0 ;
  wire \timer_vessel_2_reg[28]_i_2_n_1 ;
  wire \timer_vessel_2_reg[28]_i_2_n_2 ;
  wire \timer_vessel_2_reg[28]_i_2_n_3 ;
  wire \timer_vessel_2_reg[31]_i_8_n_2 ;
  wire \timer_vessel_2_reg[31]_i_8_n_3 ;
  wire \timer_vessel_2_reg[4]_i_2_n_0 ;
  wire \timer_vessel_2_reg[4]_i_2_n_1 ;
  wire \timer_vessel_2_reg[4]_i_2_n_2 ;
  wire \timer_vessel_2_reg[4]_i_2_n_3 ;
  wire \timer_vessel_2_reg[8]_i_2_n_0 ;
  wire \timer_vessel_2_reg[8]_i_2_n_1 ;
  wire \timer_vessel_2_reg[8]_i_2_n_2 ;
  wire \timer_vessel_2_reg[8]_i_2_n_3 ;
  wire \timer_vessel_2_reg_n_0_[0] ;
  wire \timer_vessel_2_reg_n_0_[10] ;
  wire \timer_vessel_2_reg_n_0_[11] ;
  wire \timer_vessel_2_reg_n_0_[12] ;
  wire \timer_vessel_2_reg_n_0_[13] ;
  wire \timer_vessel_2_reg_n_0_[14] ;
  wire \timer_vessel_2_reg_n_0_[15] ;
  wire \timer_vessel_2_reg_n_0_[16] ;
  wire \timer_vessel_2_reg_n_0_[17] ;
  wire \timer_vessel_2_reg_n_0_[18] ;
  wire \timer_vessel_2_reg_n_0_[19] ;
  wire \timer_vessel_2_reg_n_0_[1] ;
  wire \timer_vessel_2_reg_n_0_[20] ;
  wire \timer_vessel_2_reg_n_0_[21] ;
  wire \timer_vessel_2_reg_n_0_[22] ;
  wire \timer_vessel_2_reg_n_0_[23] ;
  wire \timer_vessel_2_reg_n_0_[24] ;
  wire \timer_vessel_2_reg_n_0_[25] ;
  wire \timer_vessel_2_reg_n_0_[26] ;
  wire \timer_vessel_2_reg_n_0_[27] ;
  wire \timer_vessel_2_reg_n_0_[28] ;
  wire \timer_vessel_2_reg_n_0_[29] ;
  wire \timer_vessel_2_reg_n_0_[2] ;
  wire \timer_vessel_2_reg_n_0_[30] ;
  wire \timer_vessel_2_reg_n_0_[31] ;
  wire \timer_vessel_2_reg_n_0_[3] ;
  wire \timer_vessel_2_reg_n_0_[4] ;
  wire \timer_vessel_2_reg_n_0_[5] ;
  wire \timer_vessel_2_reg_n_0_[6] ;
  wire \timer_vessel_2_reg_n_0_[7] ;
  wire \timer_vessel_2_reg_n_0_[8] ;
  wire \timer_vessel_2_reg_n_0_[9] ;
  wire timer_vessel_3;
  wire \timer_vessel_3[0]_i_1_n_0 ;
  wire \timer_vessel_3[24]_i_10_n_0 ;
  wire \timer_vessel_3[24]_i_11_n_0 ;
  wire \timer_vessel_3[24]_i_12_n_0 ;
  wire \timer_vessel_3[24]_i_13_n_0 ;
  wire \timer_vessel_3[24]_i_1_n_0 ;
  wire \timer_vessel_3[24]_i_4_n_0 ;
  wire \timer_vessel_3[24]_i_5_n_0 ;
  wire \timer_vessel_3[24]_i_6_n_0 ;
  wire \timer_vessel_3[24]_i_7_n_0 ;
  wire \timer_vessel_3[24]_i_8_n_0 ;
  wire \timer_vessel_3[24]_i_9_n_0 ;
  wire \timer_vessel_3_reg[12]_i_1_n_0 ;
  wire \timer_vessel_3_reg[12]_i_1_n_1 ;
  wire \timer_vessel_3_reg[12]_i_1_n_2 ;
  wire \timer_vessel_3_reg[12]_i_1_n_3 ;
  wire \timer_vessel_3_reg[12]_i_1_n_4 ;
  wire \timer_vessel_3_reg[12]_i_1_n_5 ;
  wire \timer_vessel_3_reg[12]_i_1_n_6 ;
  wire \timer_vessel_3_reg[12]_i_1_n_7 ;
  wire \timer_vessel_3_reg[16]_i_1_n_0 ;
  wire \timer_vessel_3_reg[16]_i_1_n_1 ;
  wire \timer_vessel_3_reg[16]_i_1_n_2 ;
  wire \timer_vessel_3_reg[16]_i_1_n_3 ;
  wire \timer_vessel_3_reg[16]_i_1_n_4 ;
  wire \timer_vessel_3_reg[16]_i_1_n_5 ;
  wire \timer_vessel_3_reg[16]_i_1_n_6 ;
  wire \timer_vessel_3_reg[16]_i_1_n_7 ;
  wire \timer_vessel_3_reg[20]_i_1_n_0 ;
  wire \timer_vessel_3_reg[20]_i_1_n_1 ;
  wire \timer_vessel_3_reg[20]_i_1_n_2 ;
  wire \timer_vessel_3_reg[20]_i_1_n_3 ;
  wire \timer_vessel_3_reg[20]_i_1_n_4 ;
  wire \timer_vessel_3_reg[20]_i_1_n_5 ;
  wire \timer_vessel_3_reg[20]_i_1_n_6 ;
  wire \timer_vessel_3_reg[20]_i_1_n_7 ;
  wire \timer_vessel_3_reg[24]_i_3_n_1 ;
  wire \timer_vessel_3_reg[24]_i_3_n_2 ;
  wire \timer_vessel_3_reg[24]_i_3_n_3 ;
  wire \timer_vessel_3_reg[24]_i_3_n_4 ;
  wire \timer_vessel_3_reg[24]_i_3_n_5 ;
  wire \timer_vessel_3_reg[24]_i_3_n_6 ;
  wire \timer_vessel_3_reg[24]_i_3_n_7 ;
  wire \timer_vessel_3_reg[4]_i_1_n_0 ;
  wire \timer_vessel_3_reg[4]_i_1_n_1 ;
  wire \timer_vessel_3_reg[4]_i_1_n_2 ;
  wire \timer_vessel_3_reg[4]_i_1_n_3 ;
  wire \timer_vessel_3_reg[4]_i_1_n_4 ;
  wire \timer_vessel_3_reg[4]_i_1_n_5 ;
  wire \timer_vessel_3_reg[4]_i_1_n_6 ;
  wire \timer_vessel_3_reg[4]_i_1_n_7 ;
  wire \timer_vessel_3_reg[8]_i_1_n_0 ;
  wire \timer_vessel_3_reg[8]_i_1_n_1 ;
  wire \timer_vessel_3_reg[8]_i_1_n_2 ;
  wire \timer_vessel_3_reg[8]_i_1_n_3 ;
  wire \timer_vessel_3_reg[8]_i_1_n_4 ;
  wire \timer_vessel_3_reg[8]_i_1_n_5 ;
  wire \timer_vessel_3_reg[8]_i_1_n_6 ;
  wire \timer_vessel_3_reg[8]_i_1_n_7 ;
  wire \timer_vessel_3_reg_n_0_[0] ;
  wire \timer_vessel_3_reg_n_0_[10] ;
  wire \timer_vessel_3_reg_n_0_[11] ;
  wire \timer_vessel_3_reg_n_0_[12] ;
  wire \timer_vessel_3_reg_n_0_[13] ;
  wire \timer_vessel_3_reg_n_0_[14] ;
  wire \timer_vessel_3_reg_n_0_[15] ;
  wire \timer_vessel_3_reg_n_0_[16] ;
  wire \timer_vessel_3_reg_n_0_[17] ;
  wire \timer_vessel_3_reg_n_0_[18] ;
  wire \timer_vessel_3_reg_n_0_[19] ;
  wire \timer_vessel_3_reg_n_0_[1] ;
  wire \timer_vessel_3_reg_n_0_[20] ;
  wire \timer_vessel_3_reg_n_0_[21] ;
  wire \timer_vessel_3_reg_n_0_[22] ;
  wire \timer_vessel_3_reg_n_0_[23] ;
  wire \timer_vessel_3_reg_n_0_[24] ;
  wire \timer_vessel_3_reg_n_0_[2] ;
  wire \timer_vessel_3_reg_n_0_[3] ;
  wire \timer_vessel_3_reg_n_0_[4] ;
  wire \timer_vessel_3_reg_n_0_[5] ;
  wire \timer_vessel_3_reg_n_0_[6] ;
  wire \timer_vessel_3_reg_n_0_[7] ;
  wire \timer_vessel_3_reg_n_0_[8] ;
  wire \timer_vessel_3_reg_n_0_[9] ;
  wire [3:3]\NLW_timer_vessel_1_reg[24]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_timer_vessel_2_reg[31]_i_8_CO_UNCONNECTED ;
  wire [3:3]\NLW_timer_vessel_2_reg[31]_i_8_O_UNCONNECTED ;
  wire [3:3]\NLW_timer_vessel_3_reg[24]_i_3_CO_UNCONNECTED ;

  OBUF beep_o_OBUF_inst
       (.I(beep_o_OBUF),
        .O(beep_o));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \beep_o_r[0]_i_1 
       (.I0(\beep_o_r[0]_i_2_n_0 ),
        .I1(rst_n_IBUF),
        .I2(\beep_o_r[0]_i_3_n_0 ),
        .I3(\beep_o_r[0]_i_4_n_0 ),
        .I4(\timer_vessel_2[31]_i_3_n_0 ),
        .I5(beep_o_OBUF),
        .O(\beep_o_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD5D5D5D500D50000)) 
    \beep_o_r[0]_i_10 
       (.I0(\timer_vessel_2_reg_n_0_[23] ),
        .I1(\timer_vessel_2_reg_n_0_[22] ),
        .I2(\timer_vessel_2_reg_n_0_[21] ),
        .I3(\timer_vessel_2_reg_n_0_[16] ),
        .I4(\timer_vessel_2_reg_n_0_[15] ),
        .I5(\timer_vessel_2_reg_n_0_[17] ),
        .O(\beep_o_r[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \beep_o_r[0]_i_11 
       (.I0(\timer_vessel_2_reg_n_0_[26] ),
        .I1(\timer_vessel_2_reg_n_0_[24] ),
        .I2(\timer_vessel_2_reg_n_0_[25] ),
        .O(\beep_o_r[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \beep_o_r[0]_i_12 
       (.I0(\timer_vessel_2[31]_i_25_n_0 ),
        .I1(\timer_vessel_2[31]_i_39_n_0 ),
        .I2(\timer_vessel_2_reg_n_0_[6] ),
        .I3(\timer_vessel_2_reg_n_0_[14] ),
        .I4(\timer_vessel_2_reg_n_0_[7] ),
        .I5(\timer_vessel_2_reg_n_0_[8] ),
        .O(\beep_o_r[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \beep_o_r[0]_i_13 
       (.I0(\timer_vessel_2[31]_i_63_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[13] ),
        .I2(\timer_vessel_2_reg_n_0_[20] ),
        .I3(\timer_vessel_2_reg_n_0_[12] ),
        .I4(switchkey_i_n_r[3]),
        .O(\beep_o_r[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \beep_o_r[0]_i_14 
       (.I0(\timer_vessel_2_reg_n_0_[29] ),
        .I1(\timer_vessel_2_reg_n_0_[28] ),
        .I2(\timer_vessel_2_reg_n_0_[27] ),
        .O(\beep_o_r[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \beep_o_r[0]_i_15 
       (.I0(\timer_vessel_2[31]_i_63_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[26] ),
        .I2(\timer_vessel_2_reg_n_0_[7] ),
        .I3(\timer_vessel_2_reg_n_0_[20] ),
        .I4(\timer_vessel_2[31]_i_60_n_0 ),
        .I5(\timer_vessel_2[31]_i_39_n_0 ),
        .O(\beep_o_r[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \beep_o_r[0]_i_16 
       (.I0(\timer_vessel_2_reg_n_0_[18] ),
        .I1(\timer_vessel_2_reg_n_0_[19] ),
        .I2(\timer_vessel_2_reg_n_0_[21] ),
        .I3(switchkey_i_n_r[0]),
        .I4(\beep_o_r[0]_i_20_n_0 ),
        .I5(\timer_vessel_2[31]_i_69_n_0 ),
        .O(\beep_o_r[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \beep_o_r[0]_i_17 
       (.I0(\timer_vessel_2_reg_n_0_[25] ),
        .I1(\timer_vessel_2_reg_n_0_[24] ),
        .O(\beep_o_r[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \beep_o_r[0]_i_18 
       (.I0(\timer_vessel_2_reg_n_0_[25] ),
        .I1(\timer_vessel_2_reg_n_0_[24] ),
        .I2(\timer_vessel_2_reg_n_0_[22] ),
        .I3(\timer_vessel_2_reg_n_0_[23] ),
        .I4(\timer_vessel_2_reg_n_0_[20] ),
        .I5(\timer_vessel_2_reg_n_0_[19] ),
        .O(\beep_o_r[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    \beep_o_r[0]_i_19 
       (.I0(\timer_vessel_2_reg_n_0_[15] ),
        .I1(switchkey_i_n_r[1]),
        .I2(\timer_vessel_2_reg_n_0_[10] ),
        .I3(\timer_vessel_2_reg_n_0_[14] ),
        .I4(\timer_vessel_2_reg_n_0_[26] ),
        .I5(\timer_vessel_2[31]_i_42_n_0 ),
        .O(\beep_o_r[0]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFBFBB7)) 
    \beep_o_r[0]_i_2 
       (.I0(switchkey_i_n_r[0]),
        .I1(beep_o_OBUF),
        .I2(switchkey_i_n_r[3]),
        .I3(switchkey_i_n_r[2]),
        .I4(switchkey_i_n_r[1]),
        .O(\beep_o_r[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \beep_o_r[0]_i_20 
       (.I0(\timer_vessel_2_reg_n_0_[17] ),
        .I1(\timer_vessel_2_reg_n_0_[25] ),
        .O(\beep_o_r[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \beep_o_r[0]_i_3 
       (.I0(\timer_vessel_2_reg_n_0_[2] ),
        .I1(\timer_vessel_2_reg_n_0_[1] ),
        .I2(\timer_vessel_2_reg_n_0_[0] ),
        .I3(\timer_vessel_2_reg_n_0_[3] ),
        .I4(\timer_vessel_2_reg_n_0_[4] ),
        .I5(\timer_vessel_2_reg_n_0_[5] ),
        .O(\beep_o_r[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80808088AAAAAAAA)) 
    \beep_o_r[0]_i_4 
       (.I0(\beep_o_r[0]_i_5_n_0 ),
        .I1(\beep_o_r[0]_i_6_n_0 ),
        .I2(\beep_o_r[0]_i_7_n_0 ),
        .I3(\beep_o_r[0]_i_8_n_0 ),
        .I4(\beep_o_r[0]_i_9_n_0 ),
        .I5(\timer_vessel_2[31]_i_13_n_0 ),
        .O(\beep_o_r[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \beep_o_r[0]_i_5 
       (.I0(\beep_o_r[0]_i_10_n_0 ),
        .I1(\beep_o_r[0]_i_11_n_0 ),
        .I2(\beep_o_r[0]_i_12_n_0 ),
        .I3(\beep_o_r[0]_i_13_n_0 ),
        .I4(\timer_vessel_2[31]_i_56_n_0 ),
        .I5(\beep_o_r[0]_i_14_n_0 ),
        .O(\beep_o_r[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \beep_o_r[0]_i_6 
       (.I0(\beep_o_r[0]_i_15_n_0 ),
        .I1(\beep_o_r[0]_i_16_n_0 ),
        .I2(\beep_o_r[0]_i_17_n_0 ),
        .I3(\timer_vessel_2[31]_i_42_n_0 ),
        .I4(\timer_vessel_2_reg_n_0_[16] ),
        .I5(\timer_vessel_2_reg_n_0_[15] ),
        .O(\beep_o_r[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF45)) 
    \beep_o_r[0]_i_7 
       (.I0(\timer_vessel_2_reg_n_0_[20] ),
        .I1(\timer_vessel_2_reg_n_0_[19] ),
        .I2(\timer_vessel_2_reg_n_0_[18] ),
        .I3(\timer_vessel_2_reg_n_0_[6] ),
        .I4(\timer_vessel_2_reg_n_0_[8] ),
        .I5(\timer_vessel_2_reg_n_0_[7] ),
        .O(\beep_o_r[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \beep_o_r[0]_i_8 
       (.I0(\timer_vessel_2[31]_i_64_n_0 ),
        .I1(switchkey_i_n_r[2]),
        .I2(\timer_vessel_2_reg_n_0_[17] ),
        .I3(\timer_vessel_2_reg_n_0_[16] ),
        .I4(\timer_vessel_2[31]_i_36_n_0 ),
        .O(\beep_o_r[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000888)) 
    \beep_o_r[0]_i_9 
       (.I0(\beep_o_r[0]_i_18_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[23] ),
        .I2(\timer_vessel_2_reg_n_0_[22] ),
        .I3(\timer_vessel_2_reg_n_0_[21] ),
        .I4(\timer_vessel_2[31]_i_31_n_0 ),
        .I5(\beep_o_r[0]_i_19_n_0 ),
        .O(\beep_o_r[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \beep_o_r_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\beep_o_r[0]_i_1_n_0 ),
        .Q(beep_o_OBUF),
        .R(1'b0));
  BUFG clk_i_IBUF_BUFG_inst
       (.I(clk_i_IBUF),
        .O(clk_i_IBUF_BUFG));
  IBUF clk_i_IBUF_inst
       (.I(clk_i),
        .O(clk_i_IBUF));
  IBUF \key_i_n_IBUF[0]_inst 
       (.I(key_i_n[0]),
        .O(key_i_n_IBUF[0]));
  IBUF \key_i_n_IBUF[1]_inst 
       (.I(key_i_n[1]),
        .O(key_i_n_IBUF[1]));
  IBUF \key_i_n_IBUF[2]_inst 
       (.I(key_i_n[2]),
        .O(key_i_n_IBUF[2]));
  IBUF \key_i_n_IBUF[3]_inst 
       (.I(key_i_n[3]),
        .O(key_i_n_IBUF[3]));
  IBUF \key_i_n_IBUF[4]_inst 
       (.I(key_i_n[4]),
        .O(key_i_n_IBUF[4]));
  IBUF \key_i_n_IBUF[5]_inst 
       (.I(key_i_n[5]),
        .O(key_i_n_IBUF[5]));
  IBUF \key_i_n_IBUF[6]_inst 
       (.I(key_i_n[6]),
        .O(key_i_n_IBUF[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \key_i_n_r[6]_i_1 
       (.I0(\timer_vessel_3_reg_n_0_[0] ),
        .I1(\timer_vessel_3[24]_i_7_n_0 ),
        .O(key_i_n_r));
  FDRE #(
    .INIT(1'b0)) 
    \key_i_n_r_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(key_i_n_r),
        .D(key_i_n_IBUF[0]),
        .Q(\key_i_n_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_i_n_r_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(key_i_n_r),
        .D(key_i_n_IBUF[1]),
        .Q(\key_i_n_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_i_n_r_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(key_i_n_r),
        .D(key_i_n_IBUF[2]),
        .Q(\key_i_n_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_i_n_r_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(key_i_n_r),
        .D(key_i_n_IBUF[3]),
        .Q(\key_i_n_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_i_n_r_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(key_i_n_r),
        .D(key_i_n_IBUF[4]),
        .Q(\key_i_n_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_i_n_r_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(key_i_n_r),
        .D(key_i_n_IBUF[5]),
        .Q(\key_i_n_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_i_n_r_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(key_i_n_r),
        .D(key_i_n_IBUF[6]),
        .Q(\key_i_n_r_reg_n_0_[6] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \key_state[0]_i_1 
       (.I0(key_temp[0]),
        .I1(\key_i_n_r_reg_n_0_[0] ),
        .O(\key_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \key_state[1]_i_1 
       (.I0(key_temp[1]),
        .I1(\key_i_n_r_reg_n_0_[1] ),
        .O(\key_state[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \key_state[2]_i_1 
       (.I0(key_temp[2]),
        .I1(\key_i_n_r_reg_n_0_[2] ),
        .O(\key_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \key_state[3]_i_1 
       (.I0(key_temp[3]),
        .I1(\key_i_n_r_reg_n_0_[3] ),
        .O(\key_state[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \key_state[4]_i_1 
       (.I0(key_temp[4]),
        .I1(\key_i_n_r_reg_n_0_[4] ),
        .O(\key_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \key_state[5]_i_1 
       (.I0(key_temp[5]),
        .I1(\key_i_n_r_reg_n_0_[5] ),
        .O(\key_state[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \key_state[6]_i_1 
       (.I0(key_temp[6]),
        .I1(\key_i_n_r_reg_n_0_[6] ),
        .O(\key_state[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \key_state_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(\key_state[0]_i_1_n_0 ),
        .Q(\key_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_state_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(\key_state[1]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_state_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(\key_state[2]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_state_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(\key_state[3]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_state_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(\key_state[4]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_state_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(\key_state[5]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_state_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(\key_state[6]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_temp_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\key_i_n_r_reg_n_0_[0] ),
        .Q(key_temp[0]),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \key_temp_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\key_i_n_r_reg_n_0_[1] ),
        .Q(key_temp[1]),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \key_temp_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\key_i_n_r_reg_n_0_[2] ),
        .Q(key_temp[2]),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \key_temp_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\key_i_n_r_reg_n_0_[3] ),
        .Q(key_temp[3]),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \key_temp_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\key_i_n_r_reg_n_0_[4] ),
        .Q(key_temp[4]),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \key_temp_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\key_i_n_r_reg_n_0_[5] ),
        .Q(key_temp[5]),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \key_temp_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\key_i_n_r_reg_n_0_[6] ),
        .Q(key_temp[6]),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  OBUF \led_o_OBUF[0]_inst 
       (.I(led_o_OBUF[0]),
        .O(led_o[0]));
  OBUF \led_o_OBUF[1]_inst 
       (.I(led_o_OBUF[1]),
        .O(led_o[1]));
  LUT4 #(
    .INIT(16'h666F)) 
    \led_o_r[0]_i_1 
       (.I0(led_o_OBUF[0]),
        .I1(\timer_vessel_1[24]_i_1_n_0 ),
        .I2(\timer_vessel_1[24]_i_7_n_0 ),
        .I3(rst_n_IBUF),
        .O(\led_o_r[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \led_o_r[1]_i_1 
       (.I0(\led_o_r[1]_i_2_n_0 ),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(\key_state_reg_n_0_[0] ),
        .I4(led_o_OBUF[1]),
        .O(\led_o_r[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_o_r[1]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\led_o_r[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \led_o_r_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\led_o_r[0]_i_1_n_0 ),
        .Q(led_o_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_o_r_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\led_o_r[1]_i_1_n_0 ),
        .Q(led_o_OBUF[1]),
        .R(1'b0));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF \switchkey_i_n_IBUF[0]_inst 
       (.I(switchkey_i_n[0]),
        .O(switchkey_i_n_IBUF[0]));
  IBUF \switchkey_i_n_IBUF[1]_inst 
       (.I(switchkey_i_n[1]),
        .O(switchkey_i_n_IBUF[1]));
  IBUF \switchkey_i_n_IBUF[2]_inst 
       (.I(switchkey_i_n[2]),
        .O(switchkey_i_n_IBUF[2]));
  IBUF \switchkey_i_n_IBUF[3]_inst 
       (.I(switchkey_i_n[3]),
        .O(switchkey_i_n_IBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \switchkey_i_n_r[3]_i_1 
       (.I0(rst_n_IBUF),
        .O(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \switchkey_i_n_r_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(switchkey_i_n_IBUF[0]),
        .Q(switchkey_i_n_r[0]),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \switchkey_i_n_r_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(switchkey_i_n_IBUF[1]),
        .Q(switchkey_i_n_r[1]),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \switchkey_i_n_r_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(switchkey_i_n_IBUF[2]),
        .Q(switchkey_i_n_r[2]),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \switchkey_i_n_r_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(switchkey_i_n_IBUF[3]),
        .Q(switchkey_i_n_r[3]),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \timer_vessel_1[0]_i_1 
       (.I0(\timer_vessel_1_reg_n_0_[0] ),
        .O(\timer_vessel_1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \timer_vessel_1[24]_i_1 
       (.I0(\timer_vessel_1[24]_i_4_n_0 ),
        .I1(\timer_vessel_1_reg_n_0_[15] ),
        .I2(\timer_vessel_1_reg_n_0_[14] ),
        .I3(\timer_vessel_1_reg_n_0_[16] ),
        .I4(\timer_vessel_1[24]_i_5_n_0 ),
        .I5(\timer_vessel_1[24]_i_6_n_0 ),
        .O(\timer_vessel_1[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8000)) 
    \timer_vessel_1[24]_i_10 
       (.I0(\timer_vessel_1_reg_n_0_[19] ),
        .I1(\timer_vessel_1_reg_n_0_[15] ),
        .I2(\timer_vessel_1_reg_n_0_[14] ),
        .I3(\timer_vessel_1_reg_n_0_[16] ),
        .I4(\timer_vessel_1_reg_n_0_[18] ),
        .I5(\timer_vessel_1_reg_n_0_[17] ),
        .O(\timer_vessel_1[24]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \timer_vessel_1[24]_i_11 
       (.I0(\timer_vessel_1_reg_n_0_[7] ),
        .I1(\timer_vessel_1_reg_n_0_[8] ),
        .I2(\timer_vessel_1_reg_n_0_[9] ),
        .O(\timer_vessel_1[24]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \timer_vessel_1[24]_i_12 
       (.I0(\timer_vessel_1_reg_n_0_[23] ),
        .I1(\timer_vessel_1_reg_n_0_[24] ),
        .I2(\timer_vessel_1_reg_n_0_[22] ),
        .O(\timer_vessel_1[24]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \timer_vessel_1[24]_i_2 
       (.I0(\timer_vessel_1[24]_i_1_n_0 ),
        .I1(\timer_vessel_1[24]_i_7_n_0 ),
        .O(timer_vessel_1));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \timer_vessel_1[24]_i_4 
       (.I0(\timer_vessel_1_reg_n_0_[22] ),
        .I1(\timer_vessel_1_reg_n_0_[24] ),
        .I2(\timer_vessel_1_reg_n_0_[23] ),
        .I3(\timer_vessel_1_reg_n_0_[9] ),
        .I4(\timer_vessel_1_reg_n_0_[8] ),
        .I5(\timer_vessel_1_reg_n_0_[7] ),
        .O(\timer_vessel_1[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer_vessel_1[24]_i_5 
       (.I0(\timer_vessel_1_reg_n_0_[5] ),
        .I1(\timer_vessel_1_reg_n_0_[6] ),
        .I2(\timer_vessel_1_reg_n_0_[0] ),
        .I3(\timer_vessel_1_reg_n_0_[3] ),
        .I4(\timer_vessel_1[24]_i_8_n_0 ),
        .O(\timer_vessel_1[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer_vessel_1[24]_i_6 
       (.I0(\timer_vessel_1_reg_n_0_[18] ),
        .I1(\timer_vessel_1_reg_n_0_[17] ),
        .I2(\timer_vessel_1_reg_n_0_[21] ),
        .I3(\timer_vessel_1_reg_n_0_[20] ),
        .I4(\timer_vessel_1[24]_i_9_n_0 ),
        .O(\timer_vessel_1[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFE00FE)) 
    \timer_vessel_1[24]_i_7 
       (.I0(\timer_vessel_1[24]_i_10_n_0 ),
        .I1(\timer_vessel_1_reg_n_0_[21] ),
        .I2(\timer_vessel_1_reg_n_0_[20] ),
        .I3(\timer_vessel_1[24]_i_11_n_0 ),
        .I4(\timer_vessel_1[24]_i_6_n_0 ),
        .I5(\timer_vessel_1[24]_i_12_n_0 ),
        .O(\timer_vessel_1[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \timer_vessel_1[24]_i_8 
       (.I0(\timer_vessel_1_reg_n_0_[19] ),
        .I1(\timer_vessel_1_reg_n_0_[1] ),
        .I2(\timer_vessel_1_reg_n_0_[4] ),
        .I3(\timer_vessel_1_reg_n_0_[2] ),
        .O(\timer_vessel_1[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_vessel_1[24]_i_9 
       (.I0(\timer_vessel_1_reg_n_0_[11] ),
        .I1(\timer_vessel_1_reg_n_0_[10] ),
        .I2(\timer_vessel_1_reg_n_0_[13] ),
        .I3(\timer_vessel_1_reg_n_0_[12] ),
        .O(\timer_vessel_1[24]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1[0]_i_1_n_0 ),
        .Q(\timer_vessel_1_reg_n_0_[0] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[10] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[12]_i_1_n_6 ),
        .Q(\timer_vessel_1_reg_n_0_[10] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[11] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[12]_i_1_n_5 ),
        .Q(\timer_vessel_1_reg_n_0_[11] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[12] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[12]_i_1_n_4 ),
        .Q(\timer_vessel_1_reg_n_0_[12] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  CARRY4 \timer_vessel_1_reg[12]_i_1 
       (.CI(\timer_vessel_1_reg[8]_i_1_n_0 ),
        .CO({\timer_vessel_1_reg[12]_i_1_n_0 ,\timer_vessel_1_reg[12]_i_1_n_1 ,\timer_vessel_1_reg[12]_i_1_n_2 ,\timer_vessel_1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_vessel_1_reg[12]_i_1_n_4 ,\timer_vessel_1_reg[12]_i_1_n_5 ,\timer_vessel_1_reg[12]_i_1_n_6 ,\timer_vessel_1_reg[12]_i_1_n_7 }),
        .S({\timer_vessel_1_reg_n_0_[12] ,\timer_vessel_1_reg_n_0_[11] ,\timer_vessel_1_reg_n_0_[10] ,\timer_vessel_1_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[13] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[16]_i_1_n_7 ),
        .Q(\timer_vessel_1_reg_n_0_[13] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[14] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[16]_i_1_n_6 ),
        .Q(\timer_vessel_1_reg_n_0_[14] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[15] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[16]_i_1_n_5 ),
        .Q(\timer_vessel_1_reg_n_0_[15] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[16] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[16]_i_1_n_4 ),
        .Q(\timer_vessel_1_reg_n_0_[16] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  CARRY4 \timer_vessel_1_reg[16]_i_1 
       (.CI(\timer_vessel_1_reg[12]_i_1_n_0 ),
        .CO({\timer_vessel_1_reg[16]_i_1_n_0 ,\timer_vessel_1_reg[16]_i_1_n_1 ,\timer_vessel_1_reg[16]_i_1_n_2 ,\timer_vessel_1_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_vessel_1_reg[16]_i_1_n_4 ,\timer_vessel_1_reg[16]_i_1_n_5 ,\timer_vessel_1_reg[16]_i_1_n_6 ,\timer_vessel_1_reg[16]_i_1_n_7 }),
        .S({\timer_vessel_1_reg_n_0_[16] ,\timer_vessel_1_reg_n_0_[15] ,\timer_vessel_1_reg_n_0_[14] ,\timer_vessel_1_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[17] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[20]_i_1_n_7 ),
        .Q(\timer_vessel_1_reg_n_0_[17] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[18] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[20]_i_1_n_6 ),
        .Q(\timer_vessel_1_reg_n_0_[18] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[19] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[20]_i_1_n_5 ),
        .Q(\timer_vessel_1_reg_n_0_[19] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[4]_i_1_n_7 ),
        .Q(\timer_vessel_1_reg_n_0_[1] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[20] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[20]_i_1_n_4 ),
        .Q(\timer_vessel_1_reg_n_0_[20] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  CARRY4 \timer_vessel_1_reg[20]_i_1 
       (.CI(\timer_vessel_1_reg[16]_i_1_n_0 ),
        .CO({\timer_vessel_1_reg[20]_i_1_n_0 ,\timer_vessel_1_reg[20]_i_1_n_1 ,\timer_vessel_1_reg[20]_i_1_n_2 ,\timer_vessel_1_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_vessel_1_reg[20]_i_1_n_4 ,\timer_vessel_1_reg[20]_i_1_n_5 ,\timer_vessel_1_reg[20]_i_1_n_6 ,\timer_vessel_1_reg[20]_i_1_n_7 }),
        .S({\timer_vessel_1_reg_n_0_[20] ,\timer_vessel_1_reg_n_0_[19] ,\timer_vessel_1_reg_n_0_[18] ,\timer_vessel_1_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[21] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[24]_i_3_n_7 ),
        .Q(\timer_vessel_1_reg_n_0_[21] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[22] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[24]_i_3_n_6 ),
        .Q(\timer_vessel_1_reg_n_0_[22] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[23] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[24]_i_3_n_5 ),
        .Q(\timer_vessel_1_reg_n_0_[23] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[24] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[24]_i_3_n_4 ),
        .Q(\timer_vessel_1_reg_n_0_[24] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  CARRY4 \timer_vessel_1_reg[24]_i_3 
       (.CI(\timer_vessel_1_reg[20]_i_1_n_0 ),
        .CO({\NLW_timer_vessel_1_reg[24]_i_3_CO_UNCONNECTED [3],\timer_vessel_1_reg[24]_i_3_n_1 ,\timer_vessel_1_reg[24]_i_3_n_2 ,\timer_vessel_1_reg[24]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_vessel_1_reg[24]_i_3_n_4 ,\timer_vessel_1_reg[24]_i_3_n_5 ,\timer_vessel_1_reg[24]_i_3_n_6 ,\timer_vessel_1_reg[24]_i_3_n_7 }),
        .S({\timer_vessel_1_reg_n_0_[24] ,\timer_vessel_1_reg_n_0_[23] ,\timer_vessel_1_reg_n_0_[22] ,\timer_vessel_1_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[4]_i_1_n_6 ),
        .Q(\timer_vessel_1_reg_n_0_[2] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[4]_i_1_n_5 ),
        .Q(\timer_vessel_1_reg_n_0_[3] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[4]_i_1_n_4 ),
        .Q(\timer_vessel_1_reg_n_0_[4] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  CARRY4 \timer_vessel_1_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\timer_vessel_1_reg[4]_i_1_n_0 ,\timer_vessel_1_reg[4]_i_1_n_1 ,\timer_vessel_1_reg[4]_i_1_n_2 ,\timer_vessel_1_reg[4]_i_1_n_3 }),
        .CYINIT(\timer_vessel_1_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_vessel_1_reg[4]_i_1_n_4 ,\timer_vessel_1_reg[4]_i_1_n_5 ,\timer_vessel_1_reg[4]_i_1_n_6 ,\timer_vessel_1_reg[4]_i_1_n_7 }),
        .S({\timer_vessel_1_reg_n_0_[4] ,\timer_vessel_1_reg_n_0_[3] ,\timer_vessel_1_reg_n_0_[2] ,\timer_vessel_1_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[8]_i_1_n_7 ),
        .Q(\timer_vessel_1_reg_n_0_[5] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[8]_i_1_n_6 ),
        .Q(\timer_vessel_1_reg_n_0_[6] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[8]_i_1_n_5 ),
        .Q(\timer_vessel_1_reg_n_0_[7] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[8] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[8]_i_1_n_4 ),
        .Q(\timer_vessel_1_reg_n_0_[8] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  CARRY4 \timer_vessel_1_reg[8]_i_1 
       (.CI(\timer_vessel_1_reg[4]_i_1_n_0 ),
        .CO({\timer_vessel_1_reg[8]_i_1_n_0 ,\timer_vessel_1_reg[8]_i_1_n_1 ,\timer_vessel_1_reg[8]_i_1_n_2 ,\timer_vessel_1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_vessel_1_reg[8]_i_1_n_4 ,\timer_vessel_1_reg[8]_i_1_n_5 ,\timer_vessel_1_reg[8]_i_1_n_6 ,\timer_vessel_1_reg[8]_i_1_n_7 }),
        .S({\timer_vessel_1_reg_n_0_[8] ,\timer_vessel_1_reg_n_0_[7] ,\timer_vessel_1_reg_n_0_[6] ,\timer_vessel_1_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_1_reg[9] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_1),
        .D(\timer_vessel_1_reg[12]_i_1_n_7 ),
        .Q(\timer_vessel_1_reg_n_0_[9] ),
        .R(\timer_vessel_1[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555510055555555)) 
    \timer_vessel_2[0]_i_1 
       (.I0(\timer_vessel_2_reg_n_0_[0] ),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[10]_i_1 
       (.I0(data0[10]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[11]_i_1 
       (.I0(data0[11]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[12]_i_1 
       (.I0(data0[12]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[13]_i_1 
       (.I0(data0[13]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[14]_i_1 
       (.I0(data0[14]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[15]_i_1 
       (.I0(data0[15]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[16]_i_1 
       (.I0(data0[16]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[17]_i_1 
       (.I0(data0[17]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[18]_i_1 
       (.I0(data0[18]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[19]_i_1 
       (.I0(data0[19]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[1]_i_1 
       (.I0(data0[1]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[20]_i_1 
       (.I0(data0[20]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[21]_i_1 
       (.I0(data0[21]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[22]_i_1 
       (.I0(data0[22]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[23]_i_1 
       (.I0(data0[23]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[24]_i_1 
       (.I0(data0[24]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[25]_i_1 
       (.I0(data0[25]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[26]_i_1 
       (.I0(data0[26]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[27]_i_1 
       (.I0(data0[27]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[28]_i_1 
       (.I0(data0[28]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[29]_i_1 
       (.I0(data0[29]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[2]_i_1 
       (.I0(data0[2]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[30]_i_1 
       (.I0(data0[30]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8A8AAAAAAAA)) 
    \timer_vessel_2[31]_i_1 
       (.I0(\timer_vessel_2[31]_i_3_n_0 ),
        .I1(\timer_vessel_2[31]_i_4_n_0 ),
        .I2(\timer_vessel_2[31]_i_5_n_0 ),
        .I3(\timer_vessel_2[31]_i_6_n_0 ),
        .I4(switchkey_i_n_r[0]),
        .I5(\timer_vessel_2[31]_i_7_n_0 ),
        .O(\timer_vessel_2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \timer_vessel_2[31]_i_10 
       (.I0(\timer_vessel_2[31]_i_29_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[14] ),
        .I2(\timer_vessel_2_reg_n_0_[13] ),
        .I3(\timer_vessel_2_reg_n_0_[7] ),
        .I4(\timer_vessel_2_reg_n_0_[19] ),
        .I5(\timer_vessel_2[31]_i_30_n_0 ),
        .O(\timer_vessel_2[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA2AAAAAAAAA)) 
    \timer_vessel_2[31]_i_11 
       (.I0(switchkey_i_n_r[1]),
        .I1(\timer_vessel_2_reg_n_0_[15] ),
        .I2(\timer_vessel_2_reg_n_0_[18] ),
        .I3(\timer_vessel_2[31]_i_31_n_0 ),
        .I4(\timer_vessel_2[31]_i_32_n_0 ),
        .I5(\timer_vessel_2[31]_i_33_n_0 ),
        .O(\timer_vessel_2[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000D000DDDDDDDD)) 
    \timer_vessel_2[31]_i_12 
       (.I0(switchkey_i_n_r[3]),
        .I1(\timer_vessel_2[31]_i_34_n_0 ),
        .I2(\timer_vessel_2[31]_i_35_n_0 ),
        .I3(\timer_vessel_2[31]_i_33_n_0 ),
        .I4(\timer_vessel_2[31]_i_36_n_0 ),
        .I5(switchkey_i_n_r[2]),
        .O(\timer_vessel_2[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \timer_vessel_2[31]_i_13 
       (.I0(\timer_vessel_2_reg_n_0_[27] ),
        .I1(\timer_vessel_2_reg_n_0_[31] ),
        .I2(\timer_vessel_2_reg_n_0_[29] ),
        .I3(\timer_vessel_2_reg_n_0_[28] ),
        .I4(\timer_vessel_2_reg_n_0_[30] ),
        .O(\timer_vessel_2[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAA8A8A8A8)) 
    \timer_vessel_2[31]_i_14 
       (.I0(\timer_vessel_2_reg_n_0_[26] ),
        .I1(\timer_vessel_2_reg_n_0_[25] ),
        .I2(\timer_vessel_2_reg_n_0_[24] ),
        .I3(\timer_vessel_2[31]_i_37_n_0 ),
        .I4(\timer_vessel_2[31]_i_38_n_0 ),
        .I5(\timer_vessel_2[31]_i_39_n_0 ),
        .O(\timer_vessel_2[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer_vessel_2[31]_i_15 
       (.I0(\timer_vessel_2_reg_n_0_[11] ),
        .I1(\timer_vessel_2_reg_n_0_[6] ),
        .I2(\timer_vessel_2[31]_i_40_n_0 ),
        .I3(\timer_vessel_2_reg_n_0_[3] ),
        .I4(\timer_vessel_2_reg_n_0_[14] ),
        .I5(\timer_vessel_2[31]_i_41_n_0 ),
        .O(\timer_vessel_2[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \timer_vessel_2[31]_i_16 
       (.I0(\timer_vessel_2[31]_i_39_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[15] ),
        .I2(\timer_vessel_2_reg_n_0_[18] ),
        .I3(\timer_vessel_2_reg_n_0_[10] ),
        .I4(\timer_vessel_2_reg_n_0_[26] ),
        .I5(\timer_vessel_2[31]_i_42_n_0 ),
        .O(\timer_vessel_2[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer_vessel_2[31]_i_17 
       (.I0(\timer_vessel_2[31]_i_43_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[24] ),
        .I2(\timer_vessel_2_reg_n_0_[25] ),
        .I3(\timer_vessel_2_reg_n_0_[7] ),
        .I4(\timer_vessel_2_reg_n_0_[27] ),
        .I5(\timer_vessel_2[31]_i_25_n_0 ),
        .O(\timer_vessel_2[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7F7F7F7F7FFF)) 
    \timer_vessel_2[31]_i_18 
       (.I0(\timer_vessel_2_reg_n_0_[26] ),
        .I1(\timer_vessel_2_reg_n_0_[25] ),
        .I2(\timer_vessel_2_reg_n_0_[24] ),
        .I3(\timer_vessel_2_reg_n_0_[22] ),
        .I4(\timer_vessel_2_reg_n_0_[23] ),
        .I5(\timer_vessel_2_reg_n_0_[21] ),
        .O(\timer_vessel_2[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAAAAAAAAAAAAA)) 
    \timer_vessel_2[31]_i_19 
       (.I0(\timer_vessel_2[31]_i_44_n_0 ),
        .I1(\timer_vessel_2[31]_i_45_n_0 ),
        .I2(\timer_vessel_2[31]_i_46_n_0 ),
        .I3(\timer_vessel_2_reg_n_0_[18] ),
        .I4(\timer_vessel_2_reg_n_0_[17] ),
        .I5(\timer_vessel_2_reg_n_0_[16] ),
        .O(\timer_vessel_2[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[31]_i_2 
       (.I0(data0[31]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \timer_vessel_2[31]_i_20 
       (.I0(\timer_vessel_2[31]_i_47_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[6] ),
        .I2(\timer_vessel_2_reg_n_0_[7] ),
        .I3(\timer_vessel_2_reg_n_0_[26] ),
        .I4(\timer_vessel_2_reg_n_0_[9] ),
        .I5(\timer_vessel_2[31]_i_45_n_0 ),
        .O(\timer_vessel_2[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer_vessel_2[31]_i_21 
       (.I0(\timer_vessel_2[31]_i_48_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[1] ),
        .I2(\timer_vessel_2_reg_n_0_[0] ),
        .I3(\timer_vessel_2_reg_n_0_[8] ),
        .I4(\timer_vessel_2_reg_n_0_[27] ),
        .I5(\timer_vessel_2[31]_i_25_n_0 ),
        .O(\timer_vessel_2[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer_vessel_2[31]_i_22 
       (.I0(\timer_vessel_2[31]_i_49_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[1] ),
        .I2(\timer_vessel_2_reg_n_0_[0] ),
        .I3(\timer_vessel_2_reg_n_0_[3] ),
        .I4(\timer_vessel_2_reg_n_0_[2] ),
        .I5(\timer_vessel_2[31]_i_50_n_0 ),
        .O(\timer_vessel_2[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \timer_vessel_2[31]_i_23 
       (.I0(\timer_vessel_2_reg_n_0_[19] ),
        .I1(\timer_vessel_2_reg_n_0_[17] ),
        .I2(\timer_vessel_2_reg_n_0_[7] ),
        .I3(\timer_vessel_2_reg_n_0_[15] ),
        .I4(\timer_vessel_2[31]_i_51_n_0 ),
        .I5(\timer_vessel_2[31]_i_52_n_0 ),
        .O(\timer_vessel_2[31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF01FFFF)) 
    \timer_vessel_2[31]_i_24 
       (.I0(\timer_vessel_2[31]_i_53_n_0 ),
        .I1(\timer_vessel_2[31]_i_54_n_0 ),
        .I2(\timer_vessel_2_reg_n_0_[18] ),
        .I3(\timer_vessel_2[31]_i_51_n_0 ),
        .I4(\timer_vessel_2_reg_n_0_[19] ),
        .I5(\timer_vessel_2_reg_n_0_[24] ),
        .O(\timer_vessel_2[31]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_vessel_2[31]_i_25 
       (.I0(\timer_vessel_2_reg_n_0_[30] ),
        .I1(\timer_vessel_2_reg_n_0_[28] ),
        .I2(\timer_vessel_2_reg_n_0_[29] ),
        .I3(\timer_vessel_2_reg_n_0_[31] ),
        .O(\timer_vessel_2[31]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \timer_vessel_2[31]_i_26 
       (.I0(\timer_vessel_2_reg_n_0_[26] ),
        .I1(\timer_vessel_2_reg_n_0_[27] ),
        .O(\timer_vessel_2[31]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000000008880FFFF)) 
    \timer_vessel_2[31]_i_27 
       (.I0(\timer_vessel_2_reg_n_0_[15] ),
        .I1(\timer_vessel_2_reg_n_0_[14] ),
        .I2(\timer_vessel_2[31]_i_55_n_0 ),
        .I3(\timer_vessel_2_reg_n_0_[13] ),
        .I4(\timer_vessel_2[31]_i_56_n_0 ),
        .I5(\timer_vessel_2[31]_i_51_n_0 ),
        .O(\timer_vessel_2[31]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \timer_vessel_2[31]_i_28 
       (.I0(\timer_vessel_2_reg_n_0_[25] ),
        .I1(\timer_vessel_2_reg_n_0_[24] ),
        .O(\timer_vessel_2[31]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer_vessel_2[31]_i_29 
       (.I0(\timer_vessel_2_reg_n_0_[16] ),
        .I1(\timer_vessel_2_reg_n_0_[18] ),
        .I2(\timer_vessel_2[31]_i_57_n_0 ),
        .I3(\timer_vessel_2_reg_n_0_[30] ),
        .I4(\timer_vessel_2_reg_n_0_[24] ),
        .I5(\timer_vessel_2[31]_i_26_n_0 ),
        .O(\timer_vessel_2[31]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \timer_vessel_2[31]_i_3 
       (.I0(switchkey_i_n_r[0]),
        .I1(switchkey_i_n_r[1]),
        .I2(switchkey_i_n_r[2]),
        .I3(switchkey_i_n_r[3]),
        .O(\timer_vessel_2[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \timer_vessel_2[31]_i_30 
       (.I0(\timer_vessel_2[31]_i_58_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[25] ),
        .I2(\timer_vessel_2_reg_n_0_[17] ),
        .I3(\timer_vessel_2_reg_n_0_[12] ),
        .I4(\timer_vessel_2_reg_n_0_[15] ),
        .I5(\timer_vessel_2[31]_i_51_n_0 ),
        .O(\timer_vessel_2[31]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_vessel_2[31]_i_31 
       (.I0(\timer_vessel_2_reg_n_0_[11] ),
        .I1(\timer_vessel_2_reg_n_0_[9] ),
        .I2(\timer_vessel_2_reg_n_0_[17] ),
        .I3(\timer_vessel_2_reg_n_0_[16] ),
        .O(\timer_vessel_2[31]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \timer_vessel_2[31]_i_32 
       (.I0(\timer_vessel_2_reg_n_0_[24] ),
        .I1(\timer_vessel_2_reg_n_0_[30] ),
        .I2(\timer_vessel_2[31]_i_39_n_0 ),
        .I3(\timer_vessel_2_reg_n_0_[19] ),
        .I4(\timer_vessel_2_reg_n_0_[10] ),
        .I5(\timer_vessel_2[31]_i_59_n_0 ),
        .O(\timer_vessel_2[31]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \timer_vessel_2[31]_i_33 
       (.I0(\beep_o_r[0]_i_3_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[7] ),
        .I2(\timer_vessel_2[31]_i_60_n_0 ),
        .I3(\timer_vessel_2_reg_n_0_[31] ),
        .I4(\timer_vessel_2_reg_n_0_[29] ),
        .I5(\timer_vessel_2_reg_n_0_[28] ),
        .O(\timer_vessel_2[31]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \timer_vessel_2[31]_i_34 
       (.I0(\timer_vessel_2[31]_i_9_n_0 ),
        .I1(\timer_vessel_2[31]_i_61_n_0 ),
        .I2(\timer_vessel_2[31]_i_62_n_0 ),
        .I3(\timer_vessel_2[31]_i_51_n_0 ),
        .I4(\timer_vessel_2[31]_i_56_n_0 ),
        .I5(\timer_vessel_2[31]_i_63_n_0 ),
        .O(\timer_vessel_2[31]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \timer_vessel_2[31]_i_35 
       (.I0(\timer_vessel_2[31]_i_64_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[27] ),
        .I2(\timer_vessel_2_reg_n_0_[30] ),
        .I3(\timer_vessel_2_reg_n_0_[18] ),
        .I4(\timer_vessel_2_reg_n_0_[17] ),
        .I5(\timer_vessel_2_reg_n_0_[16] ),
        .O(\timer_vessel_2[31]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \timer_vessel_2[31]_i_36 
       (.I0(\timer_vessel_2[31]_i_45_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[9] ),
        .I2(\timer_vessel_2_reg_n_0_[11] ),
        .I3(\timer_vessel_2_reg_n_0_[10] ),
        .I4(\timer_vessel_2_reg_n_0_[21] ),
        .O(\timer_vessel_2[31]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFEFEFEFE)) 
    \timer_vessel_2[31]_i_37 
       (.I0(\timer_vessel_2_reg_n_0_[19] ),
        .I1(\timer_vessel_2_reg_n_0_[20] ),
        .I2(\timer_vessel_2_reg_n_0_[21] ),
        .I3(\timer_vessel_2[31]_i_65_n_0 ),
        .I4(\timer_vessel_2[31]_i_66_n_0 ),
        .I5(\timer_vessel_2_reg_n_0_[18] ),
        .O(\timer_vessel_2[31]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFFFFFFFFFF)) 
    \timer_vessel_2[31]_i_38 
       (.I0(\timer_vessel_2_reg_n_0_[11] ),
        .I1(\timer_vessel_2_reg_n_0_[10] ),
        .I2(\timer_vessel_2_reg_n_0_[15] ),
        .I3(\timer_vessel_2_reg_n_0_[18] ),
        .I4(\timer_vessel_2_reg_n_0_[13] ),
        .I5(\timer_vessel_2_reg_n_0_[12] ),
        .O(\timer_vessel_2[31]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_vessel_2[31]_i_39 
       (.I0(\timer_vessel_2_reg_n_0_[22] ),
        .I1(\timer_vessel_2_reg_n_0_[23] ),
        .O(\timer_vessel_2[31]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h08080808080808AA)) 
    \timer_vessel_2[31]_i_4 
       (.I0(switchkey_i_n_r[1]),
        .I1(\timer_vessel_2[31]_i_13_n_0 ),
        .I2(\timer_vessel_2[31]_i_14_n_0 ),
        .I3(\timer_vessel_2[31]_i_15_n_0 ),
        .I4(\timer_vessel_2[31]_i_16_n_0 ),
        .I5(\timer_vessel_2[31]_i_17_n_0 ),
        .O(\timer_vessel_2[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \timer_vessel_2[31]_i_40 
       (.I0(\timer_vessel_2_reg_n_0_[9] ),
        .I1(\timer_vessel_2_reg_n_0_[8] ),
        .O(\timer_vessel_2[31]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \timer_vessel_2[31]_i_41 
       (.I0(\timer_vessel_2_reg_n_0_[4] ),
        .I1(\timer_vessel_2_reg_n_0_[5] ),
        .O(\timer_vessel_2[31]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \timer_vessel_2[31]_i_42 
       (.I0(\timer_vessel_2_reg_n_0_[13] ),
        .I1(\timer_vessel_2_reg_n_0_[12] ),
        .O(\timer_vessel_2[31]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer_vessel_2[31]_i_43 
       (.I0(\timer_vessel_2_reg_n_0_[2] ),
        .I1(\timer_vessel_2_reg_n_0_[19] ),
        .I2(\timer_vessel_2[31]_i_66_n_0 ),
        .I3(\timer_vessel_2_reg_n_0_[20] ),
        .I4(\timer_vessel_2_reg_n_0_[21] ),
        .I5(\timer_vessel_2[31]_i_67_n_0 ),
        .O(\timer_vessel_2[31]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_vessel_2[31]_i_44 
       (.I0(\timer_vessel_2_reg_n_0_[20] ),
        .I1(\timer_vessel_2_reg_n_0_[19] ),
        .I2(\timer_vessel_2_reg_n_0_[23] ),
        .I3(\timer_vessel_2_reg_n_0_[22] ),
        .O(\timer_vessel_2[31]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_vessel_2[31]_i_45 
       (.I0(\timer_vessel_2_reg_n_0_[12] ),
        .I1(\timer_vessel_2_reg_n_0_[15] ),
        .I2(\timer_vessel_2_reg_n_0_[14] ),
        .I3(\timer_vessel_2_reg_n_0_[13] ),
        .O(\timer_vessel_2[31]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \timer_vessel_2[31]_i_46 
       (.I0(\timer_vessel_2_reg_n_0_[9] ),
        .I1(\timer_vessel_2_reg_n_0_[11] ),
        .I2(\timer_vessel_2_reg_n_0_[10] ),
        .O(\timer_vessel_2[31]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \timer_vessel_2[31]_i_47 
       (.I0(\timer_vessel_2[31]_i_54_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[10] ),
        .I2(\timer_vessel_2_reg_n_0_[11] ),
        .I3(\timer_vessel_2_reg_n_0_[21] ),
        .I4(\timer_vessel_2_reg_n_0_[18] ),
        .I5(\beep_o_r[0]_i_17_n_0 ),
        .O(\timer_vessel_2[31]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer_vessel_2[31]_i_48 
       (.I0(\timer_vessel_2_reg_n_0_[3] ),
        .I1(\timer_vessel_2_reg_n_0_[19] ),
        .I2(\timer_vessel_2[31]_i_41_n_0 ),
        .I3(\timer_vessel_2_reg_n_0_[2] ),
        .I4(\timer_vessel_2_reg_n_0_[20] ),
        .I5(\timer_vessel_2[31]_i_68_n_0 ),
        .O(\timer_vessel_2[31]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_vessel_2[31]_i_49 
       (.I0(\timer_vessel_2_reg_n_0_[16] ),
        .I1(\timer_vessel_2_reg_n_0_[5] ),
        .I2(\timer_vessel_2_reg_n_0_[18] ),
        .I3(\timer_vessel_2_reg_n_0_[4] ),
        .O(\timer_vessel_2[31]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h808880888088AAAA)) 
    \timer_vessel_2[31]_i_5 
       (.I0(switchkey_i_n_r[2]),
        .I1(\timer_vessel_2[31]_i_13_n_0 ),
        .I2(\timer_vessel_2[31]_i_18_n_0 ),
        .I3(\timer_vessel_2[31]_i_19_n_0 ),
        .I4(\timer_vessel_2[31]_i_20_n_0 ),
        .I5(\timer_vessel_2[31]_i_21_n_0 ),
        .O(\timer_vessel_2[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer_vessel_2[31]_i_50 
       (.I0(\timer_vessel_2[31]_i_25_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[11] ),
        .I2(\timer_vessel_2_reg_n_0_[24] ),
        .I3(\timer_vessel_2_reg_n_0_[26] ),
        .I4(\timer_vessel_2_reg_n_0_[27] ),
        .O(\timer_vessel_2[31]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timer_vessel_2[31]_i_51 
       (.I0(\timer_vessel_2_reg_n_0_[21] ),
        .I1(\timer_vessel_2_reg_n_0_[22] ),
        .I2(\timer_vessel_2_reg_n_0_[23] ),
        .I3(\timer_vessel_2_reg_n_0_[20] ),
        .O(\timer_vessel_2[31]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \timer_vessel_2[31]_i_52 
       (.I0(\timer_vessel_2_reg_n_0_[25] ),
        .I1(\timer_vessel_2_reg_n_0_[12] ),
        .I2(\timer_vessel_2[31]_i_69_n_0 ),
        .I3(\timer_vessel_2_reg_n_0_[10] ),
        .I4(\timer_vessel_2_reg_n_0_[9] ),
        .I5(\timer_vessel_2[31]_i_60_n_0 ),
        .O(\timer_vessel_2[31]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h00E0000000000000)) 
    \timer_vessel_2[31]_i_53 
       (.I0(\timer_vessel_2[31]_i_58_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[7] ),
        .I2(\timer_vessel_2_reg_n_0_[17] ),
        .I3(\timer_vessel_2[31]_i_42_n_0 ),
        .I4(\timer_vessel_2_reg_n_0_[15] ),
        .I5(\timer_vessel_2_reg_n_0_[14] ),
        .O(\timer_vessel_2[31]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_vessel_2[31]_i_54 
       (.I0(\timer_vessel_2_reg_n_0_[16] ),
        .I1(\timer_vessel_2_reg_n_0_[17] ),
        .O(\timer_vessel_2[31]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC88C0CCCC88CC)) 
    \timer_vessel_2[31]_i_55 
       (.I0(\timer_vessel_2_reg_n_0_[9] ),
        .I1(\timer_vessel_2_reg_n_0_[12] ),
        .I2(\timer_vessel_2[31]_i_70_n_0 ),
        .I3(\timer_vessel_2[31]_i_71_n_0 ),
        .I4(\timer_vessel_2[31]_i_72_n_0 ),
        .I5(\beep_o_r[0]_i_3_n_0 ),
        .O(\timer_vessel_2[31]_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \timer_vessel_2[31]_i_56 
       (.I0(\timer_vessel_2_reg_n_0_[17] ),
        .I1(\timer_vessel_2_reg_n_0_[16] ),
        .I2(\timer_vessel_2_reg_n_0_[18] ),
        .I3(\timer_vessel_2_reg_n_0_[19] ),
        .O(\timer_vessel_2[31]_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \timer_vessel_2[31]_i_57 
       (.I0(\timer_vessel_2_reg_n_0_[28] ),
        .I1(\timer_vessel_2_reg_n_0_[29] ),
        .O(\timer_vessel_2[31]_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_vessel_2[31]_i_58 
       (.I0(\timer_vessel_2_reg_n_0_[11] ),
        .I1(\timer_vessel_2_reg_n_0_[10] ),
        .I2(\timer_vessel_2_reg_n_0_[8] ),
        .I3(\timer_vessel_2_reg_n_0_[9] ),
        .O(\timer_vessel_2[31]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer_vessel_2[31]_i_59 
       (.I0(\timer_vessel_2_reg_n_0_[20] ),
        .I1(\timer_vessel_2_reg_n_0_[21] ),
        .I2(\timer_vessel_2[31]_i_42_n_0 ),
        .I3(\timer_vessel_2_reg_n_0_[25] ),
        .I4(\timer_vessel_2_reg_n_0_[27] ),
        .I5(\timer_vessel_2[31]_i_73_n_0 ),
        .O(\timer_vessel_2[31]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEE00E0)) 
    \timer_vessel_2[31]_i_6 
       (.I0(\timer_vessel_2[31]_i_22_n_0 ),
        .I1(\timer_vessel_2[31]_i_23_n_0 ),
        .I2(\timer_vessel_2_reg_n_0_[25] ),
        .I3(\timer_vessel_2[31]_i_24_n_0 ),
        .I4(\timer_vessel_2[31]_i_25_n_0 ),
        .I5(\timer_vessel_2[31]_i_26_n_0 ),
        .O(\timer_vessel_2[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \timer_vessel_2[31]_i_60 
       (.I0(\timer_vessel_2_reg_n_0_[6] ),
        .I1(\timer_vessel_2_reg_n_0_[8] ),
        .O(\timer_vessel_2[31]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \timer_vessel_2[31]_i_61 
       (.I0(\timer_vessel_2_reg_n_0_[15] ),
        .I1(\timer_vessel_2_reg_n_0_[14] ),
        .I2(\timer_vessel_2_reg_n_0_[7] ),
        .I3(\timer_vessel_2_reg_n_0_[8] ),
        .I4(\timer_vessel_2_reg_n_0_[28] ),
        .I5(\timer_vessel_2_reg_n_0_[29] ),
        .O(\timer_vessel_2[31]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \timer_vessel_2[31]_i_62 
       (.I0(\timer_vessel_2[31]_i_28_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[26] ),
        .I2(\timer_vessel_2_reg_n_0_[13] ),
        .I3(\timer_vessel_2_reg_n_0_[30] ),
        .I4(\timer_vessel_2_reg_n_0_[27] ),
        .I5(\timer_vessel_2_reg_n_0_[12] ),
        .O(\timer_vessel_2[31]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \timer_vessel_2[31]_i_63 
       (.I0(\timer_vessel_2_reg_n_0_[9] ),
        .I1(\timer_vessel_2_reg_n_0_[11] ),
        .I2(\timer_vessel_2_reg_n_0_[10] ),
        .O(\timer_vessel_2[31]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \timer_vessel_2[31]_i_64 
       (.I0(\timer_vessel_2_reg_n_0_[26] ),
        .I1(\timer_vessel_2_reg_n_0_[20] ),
        .I2(\timer_vessel_2_reg_n_0_[19] ),
        .I3(\timer_vessel_2_reg_n_0_[23] ),
        .I4(\timer_vessel_2_reg_n_0_[22] ),
        .I5(\beep_o_r[0]_i_17_n_0 ),
        .O(\timer_vessel_2[31]_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \timer_vessel_2[31]_i_65 
       (.I0(\timer_vessel_2_reg_n_0_[14] ),
        .I1(\timer_vessel_2_reg_n_0_[15] ),
        .O(\timer_vessel_2[31]_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \timer_vessel_2[31]_i_66 
       (.I0(\timer_vessel_2_reg_n_0_[16] ),
        .I1(\timer_vessel_2_reg_n_0_[17] ),
        .O(\timer_vessel_2[31]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \timer_vessel_2[31]_i_67 
       (.I0(\timer_vessel_2_reg_n_0_[0] ),
        .I1(\timer_vessel_2_reg_n_0_[1] ),
        .O(\timer_vessel_2[31]_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \timer_vessel_2[31]_i_68 
       (.I0(\timer_vessel_2_reg_n_0_[22] ),
        .I1(\timer_vessel_2_reg_n_0_[23] ),
        .O(\timer_vessel_2[31]_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \timer_vessel_2[31]_i_69 
       (.I0(\timer_vessel_2_reg_n_0_[13] ),
        .I1(\timer_vessel_2_reg_n_0_[14] ),
        .O(\timer_vessel_2[31]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA8FFFFFFFF)) 
    \timer_vessel_2[31]_i_7 
       (.I0(\timer_vessel_2_reg_n_0_[27] ),
        .I1(\timer_vessel_2[31]_i_27_n_0 ),
        .I2(\timer_vessel_2_reg_n_0_[26] ),
        .I3(\timer_vessel_2[31]_i_28_n_0 ),
        .I4(\timer_vessel_2[31]_i_25_n_0 ),
        .I5(switchkey_i_n_r[3]),
        .O(\timer_vessel_2[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \timer_vessel_2[31]_i_70 
       (.I0(\timer_vessel_2_reg_n_0_[6] ),
        .I1(\timer_vessel_2_reg_n_0_[9] ),
        .I2(\timer_vessel_2_reg_n_0_[12] ),
        .I3(\timer_vessel_2_reg_n_0_[27] ),
        .O(\timer_vessel_2[31]_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \timer_vessel_2[31]_i_71 
       (.I0(\timer_vessel_2_reg_n_0_[7] ),
        .I1(\timer_vessel_2_reg_n_0_[8] ),
        .O(\timer_vessel_2[31]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \timer_vessel_2[31]_i_72 
       (.I0(\timer_vessel_2_reg_n_0_[10] ),
        .I1(\timer_vessel_2_reg_n_0_[11] ),
        .O(\timer_vessel_2[31]_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \timer_vessel_2[31]_i_73 
       (.I0(\timer_vessel_2_reg_n_0_[14] ),
        .I1(\timer_vessel_2_reg_n_0_[26] ),
        .O(\timer_vessel_2[31]_i_73_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \timer_vessel_2[31]_i_9 
       (.I0(\beep_o_r[0]_i_3_n_0 ),
        .I1(\timer_vessel_2_reg_n_0_[6] ),
        .I2(\timer_vessel_2_reg_n_0_[31] ),
        .O(\timer_vessel_2[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[3]_i_1 
       (.I0(data0[3]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[4]_i_1 
       (.I0(data0[4]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[5]_i_1 
       (.I0(data0[5]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[6]_i_1 
       (.I0(data0[6]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[7]_i_1 
       (.I0(data0[7]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[8]_i_1 
       (.I0(data0[8]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \timer_vessel_2[9]_i_1 
       (.I0(data0[9]),
        .I1(\timer_vessel_2[31]_i_9_n_0 ),
        .I2(\timer_vessel_2[31]_i_10_n_0 ),
        .I3(switchkey_i_n_r[0]),
        .I4(\timer_vessel_2[31]_i_11_n_0 ),
        .I5(\timer_vessel_2[31]_i_12_n_0 ),
        .O(\timer_vessel_2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[0]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[0] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[10] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[10]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[10] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[11] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[11]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[11] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[12] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[12]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[12] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  CARRY4 \timer_vessel_2_reg[12]_i_2 
       (.CI(\timer_vessel_2_reg[8]_i_2_n_0 ),
        .CO({\timer_vessel_2_reg[12]_i_2_n_0 ,\timer_vessel_2_reg[12]_i_2_n_1 ,\timer_vessel_2_reg[12]_i_2_n_2 ,\timer_vessel_2_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\timer_vessel_2_reg_n_0_[12] ,\timer_vessel_2_reg_n_0_[11] ,\timer_vessel_2_reg_n_0_[10] ,\timer_vessel_2_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[13] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[13]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[13] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[14] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[14]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[14] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[15] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[15]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[15] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[16] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[16]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[16] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  CARRY4 \timer_vessel_2_reg[16]_i_2 
       (.CI(\timer_vessel_2_reg[12]_i_2_n_0 ),
        .CO({\timer_vessel_2_reg[16]_i_2_n_0 ,\timer_vessel_2_reg[16]_i_2_n_1 ,\timer_vessel_2_reg[16]_i_2_n_2 ,\timer_vessel_2_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\timer_vessel_2_reg_n_0_[16] ,\timer_vessel_2_reg_n_0_[15] ,\timer_vessel_2_reg_n_0_[14] ,\timer_vessel_2_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[17] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[17]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[17] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[18] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[18]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[18] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[19] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[19]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[19] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[1]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[1] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[20] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[20]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[20] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  CARRY4 \timer_vessel_2_reg[20]_i_2 
       (.CI(\timer_vessel_2_reg[16]_i_2_n_0 ),
        .CO({\timer_vessel_2_reg[20]_i_2_n_0 ,\timer_vessel_2_reg[20]_i_2_n_1 ,\timer_vessel_2_reg[20]_i_2_n_2 ,\timer_vessel_2_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\timer_vessel_2_reg_n_0_[20] ,\timer_vessel_2_reg_n_0_[19] ,\timer_vessel_2_reg_n_0_[18] ,\timer_vessel_2_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[21] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[21]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[21] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[22] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[22]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[22] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[23] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[23]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[23] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[24] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[24]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[24] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  CARRY4 \timer_vessel_2_reg[24]_i_2 
       (.CI(\timer_vessel_2_reg[20]_i_2_n_0 ),
        .CO({\timer_vessel_2_reg[24]_i_2_n_0 ,\timer_vessel_2_reg[24]_i_2_n_1 ,\timer_vessel_2_reg[24]_i_2_n_2 ,\timer_vessel_2_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\timer_vessel_2_reg_n_0_[24] ,\timer_vessel_2_reg_n_0_[23] ,\timer_vessel_2_reg_n_0_[22] ,\timer_vessel_2_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[25] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[25]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[25] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[26] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[26]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[26] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[27] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[27]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[27] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[28] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[28]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[28] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  CARRY4 \timer_vessel_2_reg[28]_i_2 
       (.CI(\timer_vessel_2_reg[24]_i_2_n_0 ),
        .CO({\timer_vessel_2_reg[28]_i_2_n_0 ,\timer_vessel_2_reg[28]_i_2_n_1 ,\timer_vessel_2_reg[28]_i_2_n_2 ,\timer_vessel_2_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\timer_vessel_2_reg_n_0_[28] ,\timer_vessel_2_reg_n_0_[27] ,\timer_vessel_2_reg_n_0_[26] ,\timer_vessel_2_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[29] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[29]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[29] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[2]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[2] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[30] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[30]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[30] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[31] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[31]_i_2_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[31] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  CARRY4 \timer_vessel_2_reg[31]_i_8 
       (.CI(\timer_vessel_2_reg[28]_i_2_n_0 ),
        .CO({\NLW_timer_vessel_2_reg[31]_i_8_CO_UNCONNECTED [3:2],\timer_vessel_2_reg[31]_i_8_n_2 ,\timer_vessel_2_reg[31]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_timer_vessel_2_reg[31]_i_8_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\timer_vessel_2_reg_n_0_[31] ,\timer_vessel_2_reg_n_0_[30] ,\timer_vessel_2_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[3]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[3] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[4]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[4] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  CARRY4 \timer_vessel_2_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\timer_vessel_2_reg[4]_i_2_n_0 ,\timer_vessel_2_reg[4]_i_2_n_1 ,\timer_vessel_2_reg[4]_i_2_n_2 ,\timer_vessel_2_reg[4]_i_2_n_3 }),
        .CYINIT(\timer_vessel_2_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\timer_vessel_2_reg_n_0_[4] ,\timer_vessel_2_reg_n_0_[3] ,\timer_vessel_2_reg_n_0_[2] ,\timer_vessel_2_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[5]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[5] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[6]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[6] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[7]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[7] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[8] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[8]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[8] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  CARRY4 \timer_vessel_2_reg[8]_i_2 
       (.CI(\timer_vessel_2_reg[4]_i_2_n_0 ),
        .CO({\timer_vessel_2_reg[8]_i_2_n_0 ,\timer_vessel_2_reg[8]_i_2_n_1 ,\timer_vessel_2_reg[8]_i_2_n_2 ,\timer_vessel_2_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\timer_vessel_2_reg_n_0_[8] ,\timer_vessel_2_reg_n_0_[7] ,\timer_vessel_2_reg_n_0_[6] ,\timer_vessel_2_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_2_reg[9] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\timer_vessel_2[31]_i_1_n_0 ),
        .D(\timer_vessel_2[9]_i_1_n_0 ),
        .Q(\timer_vessel_2_reg_n_0_[9] ),
        .R(\switchkey_i_n_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF22DF00002200)) 
    \timer_vessel_3[0]_i_1 
       (.I0(\timer_vessel_3_reg_n_0_[24] ),
        .I1(\timer_vessel_3[24]_i_4_n_0 ),
        .I2(\timer_vessel_3[24]_i_5_n_0 ),
        .I3(\timer_vessel_3_reg_n_0_[0] ),
        .I4(\timer_vessel_3[24]_i_6_n_0 ),
        .I5(\timer_vessel_3[24]_i_7_n_0 ),
        .O(\timer_vessel_3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF00DF)) 
    \timer_vessel_3[24]_i_1 
       (.I0(\timer_vessel_3_reg_n_0_[24] ),
        .I1(\timer_vessel_3[24]_i_4_n_0 ),
        .I2(\timer_vessel_3[24]_i_5_n_0 ),
        .I3(\timer_vessel_3_reg_n_0_[0] ),
        .I4(\timer_vessel_3[24]_i_6_n_0 ),
        .I5(\timer_vessel_3[24]_i_7_n_0 ),
        .O(\timer_vessel_3[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_vessel_3[24]_i_10 
       (.I0(\timer_vessel_3_reg_n_0_[3] ),
        .I1(\timer_vessel_3_reg_n_0_[2] ),
        .I2(\timer_vessel_3_reg_n_0_[5] ),
        .I3(\timer_vessel_3_reg_n_0_[4] ),
        .O(\timer_vessel_3[24]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer_vessel_3[24]_i_11 
       (.I0(\timer_vessel_3_reg_n_0_[12] ),
        .I1(\timer_vessel_3_reg_n_0_[15] ),
        .I2(\timer_vessel_3_reg_n_0_[14] ),
        .I3(\timer_vessel_3[24]_i_9_n_0 ),
        .I4(\timer_vessel_3_reg_n_0_[9] ),
        .O(\timer_vessel_3[24]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_vessel_3[24]_i_12 
       (.I0(\timer_vessel_3[24]_i_9_n_0 ),
        .I1(\timer_vessel_3_reg_n_0_[14] ),
        .I2(\timer_vessel_3_reg_n_0_[15] ),
        .I3(\timer_vessel_3_reg_n_0_[12] ),
        .O(\timer_vessel_3[24]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timer_vessel_3[24]_i_13 
       (.I0(\timer_vessel_3_reg_n_0_[21] ),
        .I1(\timer_vessel_3_reg_n_0_[20] ),
        .I2(\timer_vessel_3_reg_n_0_[11] ),
        .I3(\timer_vessel_3_reg_n_0_[10] ),
        .O(\timer_vessel_3[24]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDDDF)) 
    \timer_vessel_3[24]_i_2 
       (.I0(\timer_vessel_3_reg_n_0_[24] ),
        .I1(\timer_vessel_3[24]_i_4_n_0 ),
        .I2(\timer_vessel_3[24]_i_5_n_0 ),
        .I3(\timer_vessel_3_reg_n_0_[0] ),
        .I4(\timer_vessel_3[24]_i_6_n_0 ),
        .O(timer_vessel_3));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBBBBBF)) 
    \timer_vessel_3[24]_i_4 
       (.I0(\timer_vessel_3[24]_i_8_n_0 ),
        .I1(\timer_vessel_3_reg_n_0_[16] ),
        .I2(\timer_vessel_3_reg_n_0_[13] ),
        .I3(\timer_vessel_3_reg_n_0_[15] ),
        .I4(\timer_vessel_3_reg_n_0_[14] ),
        .I5(\timer_vessel_3[24]_i_9_n_0 ),
        .O(\timer_vessel_3[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer_vessel_3[24]_i_5 
       (.I0(\timer_vessel_3_reg_n_0_[7] ),
        .I1(\timer_vessel_3_reg_n_0_[6] ),
        .I2(\timer_vessel_3_reg_n_0_[1] ),
        .I3(\timer_vessel_3[24]_i_10_n_0 ),
        .I4(\timer_vessel_3[24]_i_11_n_0 ),
        .O(\timer_vessel_3[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h010F0F0F)) 
    \timer_vessel_3[24]_i_6 
       (.I0(\timer_vessel_3_reg_n_0_[8] ),
        .I1(\timer_vessel_3_reg_n_0_[9] ),
        .I2(\timer_vessel_3[24]_i_12_n_0 ),
        .I3(\timer_vessel_3_reg_n_0_[10] ),
        .I4(\timer_vessel_3_reg_n_0_[11] ),
        .O(\timer_vessel_3[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \timer_vessel_3[24]_i_7 
       (.I0(\timer_vessel_3[24]_i_13_n_0 ),
        .I1(\timer_vessel_3_reg_n_0_[13] ),
        .I2(\timer_vessel_3_reg_n_0_[8] ),
        .I3(\timer_vessel_3_reg_n_0_[24] ),
        .I4(\timer_vessel_3_reg_n_0_[16] ),
        .I5(\timer_vessel_3[24]_i_5_n_0 ),
        .O(\timer_vessel_3[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0007)) 
    \timer_vessel_3[24]_i_8 
       (.I0(\timer_vessel_3_reg_n_0_[21] ),
        .I1(\timer_vessel_3_reg_n_0_[20] ),
        .I2(\timer_vessel_3_reg_n_0_[23] ),
        .I3(\timer_vessel_3_reg_n_0_[22] ),
        .O(\timer_vessel_3[24]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer_vessel_3[24]_i_9 
       (.I0(\timer_vessel_3_reg_n_0_[17] ),
        .I1(\timer_vessel_3_reg_n_0_[22] ),
        .I2(\timer_vessel_3_reg_n_0_[23] ),
        .I3(\timer_vessel_3_reg_n_0_[19] ),
        .I4(\timer_vessel_3_reg_n_0_[18] ),
        .O(\timer_vessel_3[24]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_vessel_3[0]_i_1_n_0 ),
        .Q(\timer_vessel_3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[10] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[12]_i_1_n_6 ),
        .Q(\timer_vessel_3_reg_n_0_[10] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[11] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[12]_i_1_n_5 ),
        .Q(\timer_vessel_3_reg_n_0_[11] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[12] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[12]_i_1_n_4 ),
        .Q(\timer_vessel_3_reg_n_0_[12] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  CARRY4 \timer_vessel_3_reg[12]_i_1 
       (.CI(\timer_vessel_3_reg[8]_i_1_n_0 ),
        .CO({\timer_vessel_3_reg[12]_i_1_n_0 ,\timer_vessel_3_reg[12]_i_1_n_1 ,\timer_vessel_3_reg[12]_i_1_n_2 ,\timer_vessel_3_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_vessel_3_reg[12]_i_1_n_4 ,\timer_vessel_3_reg[12]_i_1_n_5 ,\timer_vessel_3_reg[12]_i_1_n_6 ,\timer_vessel_3_reg[12]_i_1_n_7 }),
        .S({\timer_vessel_3_reg_n_0_[12] ,\timer_vessel_3_reg_n_0_[11] ,\timer_vessel_3_reg_n_0_[10] ,\timer_vessel_3_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[13] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[16]_i_1_n_7 ),
        .Q(\timer_vessel_3_reg_n_0_[13] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[14] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[16]_i_1_n_6 ),
        .Q(\timer_vessel_3_reg_n_0_[14] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[15] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[16]_i_1_n_5 ),
        .Q(\timer_vessel_3_reg_n_0_[15] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[16] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[16]_i_1_n_4 ),
        .Q(\timer_vessel_3_reg_n_0_[16] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  CARRY4 \timer_vessel_3_reg[16]_i_1 
       (.CI(\timer_vessel_3_reg[12]_i_1_n_0 ),
        .CO({\timer_vessel_3_reg[16]_i_1_n_0 ,\timer_vessel_3_reg[16]_i_1_n_1 ,\timer_vessel_3_reg[16]_i_1_n_2 ,\timer_vessel_3_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_vessel_3_reg[16]_i_1_n_4 ,\timer_vessel_3_reg[16]_i_1_n_5 ,\timer_vessel_3_reg[16]_i_1_n_6 ,\timer_vessel_3_reg[16]_i_1_n_7 }),
        .S({\timer_vessel_3_reg_n_0_[16] ,\timer_vessel_3_reg_n_0_[15] ,\timer_vessel_3_reg_n_0_[14] ,\timer_vessel_3_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[17] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[20]_i_1_n_7 ),
        .Q(\timer_vessel_3_reg_n_0_[17] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[18] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[20]_i_1_n_6 ),
        .Q(\timer_vessel_3_reg_n_0_[18] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[19] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[20]_i_1_n_5 ),
        .Q(\timer_vessel_3_reg_n_0_[19] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[4]_i_1_n_7 ),
        .Q(\timer_vessel_3_reg_n_0_[1] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[20] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[20]_i_1_n_4 ),
        .Q(\timer_vessel_3_reg_n_0_[20] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  CARRY4 \timer_vessel_3_reg[20]_i_1 
       (.CI(\timer_vessel_3_reg[16]_i_1_n_0 ),
        .CO({\timer_vessel_3_reg[20]_i_1_n_0 ,\timer_vessel_3_reg[20]_i_1_n_1 ,\timer_vessel_3_reg[20]_i_1_n_2 ,\timer_vessel_3_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_vessel_3_reg[20]_i_1_n_4 ,\timer_vessel_3_reg[20]_i_1_n_5 ,\timer_vessel_3_reg[20]_i_1_n_6 ,\timer_vessel_3_reg[20]_i_1_n_7 }),
        .S({\timer_vessel_3_reg_n_0_[20] ,\timer_vessel_3_reg_n_0_[19] ,\timer_vessel_3_reg_n_0_[18] ,\timer_vessel_3_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[21] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[24]_i_3_n_7 ),
        .Q(\timer_vessel_3_reg_n_0_[21] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[22] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[24]_i_3_n_6 ),
        .Q(\timer_vessel_3_reg_n_0_[22] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[23] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[24]_i_3_n_5 ),
        .Q(\timer_vessel_3_reg_n_0_[23] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[24] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[24]_i_3_n_4 ),
        .Q(\timer_vessel_3_reg_n_0_[24] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  CARRY4 \timer_vessel_3_reg[24]_i_3 
       (.CI(\timer_vessel_3_reg[20]_i_1_n_0 ),
        .CO({\NLW_timer_vessel_3_reg[24]_i_3_CO_UNCONNECTED [3],\timer_vessel_3_reg[24]_i_3_n_1 ,\timer_vessel_3_reg[24]_i_3_n_2 ,\timer_vessel_3_reg[24]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_vessel_3_reg[24]_i_3_n_4 ,\timer_vessel_3_reg[24]_i_3_n_5 ,\timer_vessel_3_reg[24]_i_3_n_6 ,\timer_vessel_3_reg[24]_i_3_n_7 }),
        .S({\timer_vessel_3_reg_n_0_[24] ,\timer_vessel_3_reg_n_0_[23] ,\timer_vessel_3_reg_n_0_[22] ,\timer_vessel_3_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[4]_i_1_n_6 ),
        .Q(\timer_vessel_3_reg_n_0_[2] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[4]_i_1_n_5 ),
        .Q(\timer_vessel_3_reg_n_0_[3] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[4]_i_1_n_4 ),
        .Q(\timer_vessel_3_reg_n_0_[4] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  CARRY4 \timer_vessel_3_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\timer_vessel_3_reg[4]_i_1_n_0 ,\timer_vessel_3_reg[4]_i_1_n_1 ,\timer_vessel_3_reg[4]_i_1_n_2 ,\timer_vessel_3_reg[4]_i_1_n_3 }),
        .CYINIT(\timer_vessel_3_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_vessel_3_reg[4]_i_1_n_4 ,\timer_vessel_3_reg[4]_i_1_n_5 ,\timer_vessel_3_reg[4]_i_1_n_6 ,\timer_vessel_3_reg[4]_i_1_n_7 }),
        .S({\timer_vessel_3_reg_n_0_[4] ,\timer_vessel_3_reg_n_0_[3] ,\timer_vessel_3_reg_n_0_[2] ,\timer_vessel_3_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[8]_i_1_n_7 ),
        .Q(\timer_vessel_3_reg_n_0_[5] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[8]_i_1_n_6 ),
        .Q(\timer_vessel_3_reg_n_0_[6] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[8]_i_1_n_5 ),
        .Q(\timer_vessel_3_reg_n_0_[7] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[8] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[8]_i_1_n_4 ),
        .Q(\timer_vessel_3_reg_n_0_[8] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
  CARRY4 \timer_vessel_3_reg[8]_i_1 
       (.CI(\timer_vessel_3_reg[4]_i_1_n_0 ),
        .CO({\timer_vessel_3_reg[8]_i_1_n_0 ,\timer_vessel_3_reg[8]_i_1_n_1 ,\timer_vessel_3_reg[8]_i_1_n_2 ,\timer_vessel_3_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_vessel_3_reg[8]_i_1_n_4 ,\timer_vessel_3_reg[8]_i_1_n_5 ,\timer_vessel_3_reg[8]_i_1_n_6 ,\timer_vessel_3_reg[8]_i_1_n_7 }),
        .S({\timer_vessel_3_reg_n_0_[8] ,\timer_vessel_3_reg_n_0_[7] ,\timer_vessel_3_reg_n_0_[6] ,\timer_vessel_3_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_vessel_3_reg[9] 
       (.C(clk_i_IBUF_BUFG),
        .CE(timer_vessel_3),
        .D(\timer_vessel_3_reg[12]_i_1_n_7 ),
        .Q(\timer_vessel_3_reg_n_0_[9] ),
        .R(\timer_vessel_3[24]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
