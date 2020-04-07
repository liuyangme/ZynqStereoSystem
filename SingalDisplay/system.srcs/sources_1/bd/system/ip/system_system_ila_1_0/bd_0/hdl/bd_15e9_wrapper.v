//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_15e9_wrapper.bd
//Design : bd_15e9_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_15e9_wrapper
   (SLOT_0_VIDEO_TIMING_active_video,
    SLOT_0_VIDEO_TIMING_hblank,
    SLOT_0_VIDEO_TIMING_hsync,
    SLOT_0_VIDEO_TIMING_vblank,
    SLOT_0_VIDEO_TIMING_vsync,
    clk,
    probe0);
  input SLOT_0_VIDEO_TIMING_active_video;
  input SLOT_0_VIDEO_TIMING_hblank;
  input SLOT_0_VIDEO_TIMING_hsync;
  input SLOT_0_VIDEO_TIMING_vblank;
  input SLOT_0_VIDEO_TIMING_vsync;
  input clk;
  input [0:0]probe0;

  wire SLOT_0_VIDEO_TIMING_active_video;
  wire SLOT_0_VIDEO_TIMING_hblank;
  wire SLOT_0_VIDEO_TIMING_hsync;
  wire SLOT_0_VIDEO_TIMING_vblank;
  wire SLOT_0_VIDEO_TIMING_vsync;
  wire clk;
  wire [0:0]probe0;

  bd_15e9 bd_15e9_i
       (.SLOT_0_VIDEO_TIMING_active_video(SLOT_0_VIDEO_TIMING_active_video),
        .SLOT_0_VIDEO_TIMING_hblank(SLOT_0_VIDEO_TIMING_hblank),
        .SLOT_0_VIDEO_TIMING_hsync(SLOT_0_VIDEO_TIMING_hsync),
        .SLOT_0_VIDEO_TIMING_vblank(SLOT_0_VIDEO_TIMING_vblank),
        .SLOT_0_VIDEO_TIMING_vsync(SLOT_0_VIDEO_TIMING_vsync),
        .clk(clk),
        .probe0(probe0));
endmodule
