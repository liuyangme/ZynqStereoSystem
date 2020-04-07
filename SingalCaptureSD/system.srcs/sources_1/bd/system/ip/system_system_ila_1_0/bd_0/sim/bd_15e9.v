//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_15e9.bd
//Design : bd_15e9
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_15e9,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_15e9,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "system_system_ila_1_0.hwdef" *) 
module bd_15e9
   (SLOT_0_VIDEO_TIMING_active_video,
    SLOT_0_VIDEO_TIMING_hblank,
    SLOT_0_VIDEO_TIMING_hsync,
    SLOT_0_VIDEO_TIMING_vblank,
    SLOT_0_VIDEO_TIMING_vsync,
    clk,
    probe0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING ACTIVE_VIDEO" *) input SLOT_0_VIDEO_TIMING_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING HBLANK" *) input SLOT_0_VIDEO_TIMING_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING HSYNC" *) input SLOT_0_VIDEO_TIMING_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING VBLANK" *) input SLOT_0_VIDEO_TIMING_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING VSYNC" *) input SLOT_0_VIDEO_TIMING_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 74250000, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [0:0]probe0;

  wire SLOT_0_VIDEO_TIMING_active_video_1;
  wire SLOT_0_VIDEO_TIMING_hblank_1;
  wire SLOT_0_VIDEO_TIMING_hsync_1;
  wire SLOT_0_VIDEO_TIMING_vblank_1;
  wire SLOT_0_VIDEO_TIMING_vsync_1;
  wire clk_1;
  wire [0:0]probe0_1;

  assign SLOT_0_VIDEO_TIMING_active_video_1 = SLOT_0_VIDEO_TIMING_active_video;
  assign SLOT_0_VIDEO_TIMING_hblank_1 = SLOT_0_VIDEO_TIMING_hblank;
  assign SLOT_0_VIDEO_TIMING_hsync_1 = SLOT_0_VIDEO_TIMING_hsync;
  assign SLOT_0_VIDEO_TIMING_vblank_1 = SLOT_0_VIDEO_TIMING_vblank;
  assign SLOT_0_VIDEO_TIMING_vsync_1 = SLOT_0_VIDEO_TIMING_vsync;
  assign clk_1 = clk;
  assign probe0_1 = probe0[0];
  bd_15e9_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(SLOT_0_VIDEO_TIMING_active_video_1),
        .probe2(SLOT_0_VIDEO_TIMING_hblank_1),
        .probe3(SLOT_0_VIDEO_TIMING_hsync_1),
        .probe4(SLOT_0_VIDEO_TIMING_vblank_1),
        .probe5(SLOT_0_VIDEO_TIMING_vsync_1));
endmodule
