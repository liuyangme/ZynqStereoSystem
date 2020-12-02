//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_15e9_wrapper.bd
//Design : bd_15e9_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_15e9_wrapper
   (clk,
    probe0);
  input clk;
  input [23:0]probe0;

  wire clk;
  wire [23:0]probe0;

  bd_15e9 bd_15e9_i
       (.clk(clk),
        .probe0(probe0));
endmodule
