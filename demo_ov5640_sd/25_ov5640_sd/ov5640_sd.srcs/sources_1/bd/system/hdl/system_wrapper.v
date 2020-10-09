//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Fri Sep 21 16:05:04 2018
//Host        : DESKTOP-DH1FU73 running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    TMDS_clk_n,
    TMDS_clk_p,
    TMDS_data_n,
    TMDS_data_p,
    cmos1_d,
    cmos1_href,
    cmos1_i2c_scl_io,
    cmos1_i2c_sda_io,
    cmos1_pclk,
    cmos1_vsync,
    cmos_rstn_tri_o,
    hdmi_oen);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output TMDS_clk_n;
  output TMDS_clk_p;
  output [2:0]TMDS_data_n;
  output [2:0]TMDS_data_p;
  input [9:0]cmos1_d;
  input cmos1_href;
  inout cmos1_i2c_scl_io;
  inout cmos1_i2c_sda_io;
  input cmos1_pclk;
  input cmos1_vsync;
  output [0:0]cmos_rstn_tri_o;
  output hdmi_oen;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire TMDS_clk_n;
  wire TMDS_clk_p;
  wire [2:0]TMDS_data_n;
  wire [2:0]TMDS_data_p;
  wire [9:0]cmos1_d;
  wire cmos1_href;
  wire cmos1_i2c_scl_i;
  wire cmos1_i2c_scl_io;
  wire cmos1_i2c_scl_o;
  wire cmos1_i2c_scl_t;
  wire cmos1_i2c_sda_i;
  wire cmos1_i2c_sda_io;
  wire cmos1_i2c_sda_o;
  wire cmos1_i2c_sda_t;
  wire cmos1_pclk;
  wire cmos1_vsync;
  wire [0:0]cmos_rstn_tri_o;
  wire hdmi_oen;

  IOBUF cmos1_i2c_scl_iobuf
       (.I(cmos1_i2c_scl_o),
        .IO(cmos1_i2c_scl_io),
        .O(cmos1_i2c_scl_i),
        .T(cmos1_i2c_scl_t));
  IOBUF cmos1_i2c_sda_iobuf
       (.I(cmos1_i2c_sda_o),
        .IO(cmos1_i2c_sda_io),
        .O(cmos1_i2c_sda_i),
        .T(cmos1_i2c_sda_t));
  system system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .TMDS_clk_n(TMDS_clk_n),
        .TMDS_clk_p(TMDS_clk_p),
        .TMDS_data_n(TMDS_data_n),
        .TMDS_data_p(TMDS_data_p),
        .cmos1_d(cmos1_d),
        .cmos1_href(cmos1_href),
        .cmos1_i2c_scl_i(cmos1_i2c_scl_i),
        .cmos1_i2c_scl_o(cmos1_i2c_scl_o),
        .cmos1_i2c_scl_t(cmos1_i2c_scl_t),
        .cmos1_i2c_sda_i(cmos1_i2c_sda_i),
        .cmos1_i2c_sda_o(cmos1_i2c_sda_o),
        .cmos1_i2c_sda_t(cmos1_i2c_sda_t),
        .cmos1_pclk(cmos1_pclk),
        .cmos1_vsync(cmos1_vsync),
        .cmos_rstn_tri_o(cmos_rstn_tri_o),
        .hdmi_oen(hdmi_oen));
endmodule
