//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_d528_wrapper.bd
//Design : bd_d528_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_d528_wrapper
   (SLOT_0_IIC_scl_i,
    SLOT_0_IIC_scl_o,
    SLOT_0_IIC_scl_t,
    SLOT_0_IIC_sda_i,
    SLOT_0_IIC_sda_o,
    SLOT_0_IIC_sda_t,
    clk);
  input SLOT_0_IIC_scl_i;
  input SLOT_0_IIC_scl_o;
  input SLOT_0_IIC_scl_t;
  input SLOT_0_IIC_sda_i;
  input SLOT_0_IIC_sda_o;
  input SLOT_0_IIC_sda_t;
  input clk;

  wire SLOT_0_IIC_scl_i;
  wire SLOT_0_IIC_scl_o;
  wire SLOT_0_IIC_scl_t;
  wire SLOT_0_IIC_sda_i;
  wire SLOT_0_IIC_sda_o;
  wire SLOT_0_IIC_sda_t;
  wire clk;

  bd_d528 bd_d528_i
       (.SLOT_0_IIC_scl_i(SLOT_0_IIC_scl_i),
        .SLOT_0_IIC_scl_o(SLOT_0_IIC_scl_o),
        .SLOT_0_IIC_scl_t(SLOT_0_IIC_scl_t),
        .SLOT_0_IIC_sda_i(SLOT_0_IIC_sda_i),
        .SLOT_0_IIC_sda_o(SLOT_0_IIC_sda_o),
        .SLOT_0_IIC_sda_t(SLOT_0_IIC_sda_t),
        .clk(clk));
endmodule
