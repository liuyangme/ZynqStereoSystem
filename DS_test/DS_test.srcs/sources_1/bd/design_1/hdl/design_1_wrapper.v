//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Oct 29 12:41:58 2020
//Host        : LiuYang-Laptop running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_in1_0,
    clk_out1_0,
    clk_out2_0,
    clk_out3_0,
    clk_out4_0,
    clk_out5_0,
    clk_out6_0,
    clk_out7_0,
    reset_0);
  input clk_in1_0;
  output clk_out1_0;
  output clk_out2_0;
  output clk_out3_0;
  output clk_out4_0;
  output clk_out5_0;
  output clk_out6_0;
  output clk_out7_0;
  input reset_0;

  wire clk_in1_0;
  wire clk_out1_0;
  wire clk_out2_0;
  wire clk_out3_0;
  wire clk_out4_0;
  wire clk_out5_0;
  wire clk_out6_0;
  wire clk_out7_0;
  wire reset_0;

  design_1 design_1_i
       (.clk_in1_0(clk_in1_0),
        .clk_out1_0(clk_out1_0),
        .clk_out2_0(clk_out2_0),
        .clk_out3_0(clk_out3_0),
        .clk_out4_0(clk_out4_0),
        .clk_out5_0(clk_out5_0),
        .clk_out6_0(clk_out6_0),
        .clk_out7_0(clk_out7_0),
        .reset_0(reset_0));
endmodule
