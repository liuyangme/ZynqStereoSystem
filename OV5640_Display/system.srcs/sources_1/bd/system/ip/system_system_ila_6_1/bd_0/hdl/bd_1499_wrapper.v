//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_1499_wrapper.bd
//Design : bd_1499_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_1499_wrapper
   (clk,
    probe0);
  input clk;
  input [23:0]probe0;

  wire clk;
  wire [23:0]probe0;

  bd_1499 bd_1499_i
       (.clk(clk),
        .probe0(probe0));
endmodule
