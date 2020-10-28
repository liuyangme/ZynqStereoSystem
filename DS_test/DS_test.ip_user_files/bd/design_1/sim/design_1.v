//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Oct 28 09:58:07 2020
//Host        : LiuYang-Laptop running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_in1_0,
    clk_out1_0,
    clk_out2_0,
    clk_out3_0,
    clk_out4_0,
    clk_out5_0,
    clk_out6_0,
    clk_out7_0,
    reset_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_in1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT1_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 200000000, INSERT_VIP 0, PHASE 0.0" *) output clk_out1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT2_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT2_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.0" *) output clk_out2_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT3_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT3_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.0" *) output clk_out3_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT4_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT4_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, INSERT_VIP 0, PHASE 0.0" *) output clk_out4_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT5_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT5_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 15000000, INSERT_VIP 0, PHASE 0.0" *) output clk_out5_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT6_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT6_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 10000000, INSERT_VIP 0, PHASE 0.0" *) output clk_out6_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT7_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT7_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 5000000, INSERT_VIP 0, PHASE 0.0" *) output clk_out7_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_0;

  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_clk_out3;
  wire clk_wiz_0_clk_out4;
  wire clk_wiz_0_clk_out5;
  wire clk_wiz_0_clk_out6;
  wire clk_wiz_0_clk_out7;
  wire reset_0_1;

  assign clk_in1_0_1 = clk_in1_0;
  assign clk_out1_0 = clk_wiz_0_clk_out1;
  assign clk_out2_0 = clk_wiz_0_clk_out2;
  assign clk_out3_0 = clk_wiz_0_clk_out3;
  assign clk_out4_0 = clk_wiz_0_clk_out4;
  assign clk_out5_0 = clk_wiz_0_clk_out5;
  assign clk_out6_0 = clk_wiz_0_clk_out6;
  assign clk_out7_0 = clk_wiz_0_clk_out7;
  assign reset_0_1 = reset_0;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .clk_out3(clk_wiz_0_clk_out3),
        .clk_out4(clk_wiz_0_clk_out4),
        .clk_out5(clk_wiz_0_clk_out5),
        .clk_out6(clk_wiz_0_clk_out6),
        .clk_out7(clk_wiz_0_clk_out7),
        .reset(reset_0_1));
endmodule
