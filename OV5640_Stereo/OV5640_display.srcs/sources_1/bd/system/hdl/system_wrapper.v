//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Sep 29 16:58:57 2020
//Host        : LiuYang-Laptop running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR_0_addr,
    DDR_0_ba,
    DDR_0_cas_n,
    DDR_0_ck_n,
    DDR_0_ck_p,
    DDR_0_cke,
    DDR_0_cs_n,
    DDR_0_dm,
    DDR_0_dq,
    DDR_0_dqs_n,
    DDR_0_dqs_p,
    DDR_0_odt,
    DDR_0_ras_n,
    DDR_0_reset_n,
    DDR_0_we_n,
    FIXED_IO_0_ddr_vrn,
    FIXED_IO_0_ddr_vrp,
    FIXED_IO_0_mio,
    FIXED_IO_0_ps_clk,
    FIXED_IO_0_ps_porb,
    FIXED_IO_0_ps_srstb,
    GPIO_0_0_tri_io,
    HDMI_CLK_N_0,
    HDMI_CLK_P_0,
    HDMI_D0_N_0,
    HDMI_D0_P_0,
    HDMI_D1_N_0,
    HDMI_D1_P_0,
    HDMI_D2_N_0,
    HDMI_D2_P_0,
    cmos_data_i_0,
    cmos_data_i_1,
    cmos_href_i_0,
    cmos_href_i_1,
    cmos_pclk_i_0,
    cmos_pclk_i_1,
    cmos_vsync_i_0,
    cmos_vsync_i_1,
    cmos_xclk_o_0,
    cmos_xclk_o_1);
  inout [14:0]DDR_0_addr;
  inout [2:0]DDR_0_ba;
  inout DDR_0_cas_n;
  inout DDR_0_ck_n;
  inout DDR_0_ck_p;
  inout DDR_0_cke;
  inout DDR_0_cs_n;
  inout [3:0]DDR_0_dm;
  inout [31:0]DDR_0_dq;
  inout [3:0]DDR_0_dqs_n;
  inout [3:0]DDR_0_dqs_p;
  inout DDR_0_odt;
  inout DDR_0_ras_n;
  inout DDR_0_reset_n;
  inout DDR_0_we_n;
  inout FIXED_IO_0_ddr_vrn;
  inout FIXED_IO_0_ddr_vrp;
  inout [53:0]FIXED_IO_0_mio;
  inout FIXED_IO_0_ps_clk;
  inout FIXED_IO_0_ps_porb;
  inout FIXED_IO_0_ps_srstb;
  inout [1:0]GPIO_0_0_tri_io;
  output HDMI_CLK_N_0;
  output HDMI_CLK_P_0;
  output HDMI_D0_N_0;
  output HDMI_D0_P_0;
  output HDMI_D1_N_0;
  output HDMI_D1_P_0;
  output HDMI_D2_N_0;
  output HDMI_D2_P_0;
  input [7:0]cmos_data_i_0;
  input [7:0]cmos_data_i_1;
  input cmos_href_i_0;
  input cmos_href_i_1;
  input cmos_pclk_i_0;
  input cmos_pclk_i_1;
  input cmos_vsync_i_0;
  input cmos_vsync_i_1;
  output cmos_xclk_o_0;
  output cmos_xclk_o_1;

  wire [14:0]DDR_0_addr;
  wire [2:0]DDR_0_ba;
  wire DDR_0_cas_n;
  wire DDR_0_ck_n;
  wire DDR_0_ck_p;
  wire DDR_0_cke;
  wire DDR_0_cs_n;
  wire [3:0]DDR_0_dm;
  wire [31:0]DDR_0_dq;
  wire [3:0]DDR_0_dqs_n;
  wire [3:0]DDR_0_dqs_p;
  wire DDR_0_odt;
  wire DDR_0_ras_n;
  wire DDR_0_reset_n;
  wire DDR_0_we_n;
  wire FIXED_IO_0_ddr_vrn;
  wire FIXED_IO_0_ddr_vrp;
  wire [53:0]FIXED_IO_0_mio;
  wire FIXED_IO_0_ps_clk;
  wire FIXED_IO_0_ps_porb;
  wire FIXED_IO_0_ps_srstb;
  wire [0:0]GPIO_0_0_tri_i_0;
  wire [1:1]GPIO_0_0_tri_i_1;
  wire [0:0]GPIO_0_0_tri_io_0;
  wire [1:1]GPIO_0_0_tri_io_1;
  wire [0:0]GPIO_0_0_tri_o_0;
  wire [1:1]GPIO_0_0_tri_o_1;
  wire [0:0]GPIO_0_0_tri_t_0;
  wire [1:1]GPIO_0_0_tri_t_1;
  wire HDMI_CLK_N_0;
  wire HDMI_CLK_P_0;
  wire HDMI_D0_N_0;
  wire HDMI_D0_P_0;
  wire HDMI_D1_N_0;
  wire HDMI_D1_P_0;
  wire HDMI_D2_N_0;
  wire HDMI_D2_P_0;
  wire [7:0]cmos_data_i_0;
  wire [7:0]cmos_data_i_1;
  wire cmos_href_i_0;
  wire cmos_href_i_1;
  wire cmos_pclk_i_0;
  wire cmos_pclk_i_1;
  wire cmos_vsync_i_0;
  wire cmos_vsync_i_1;
  wire cmos_xclk_o_0;
  wire cmos_xclk_o_1;

  IOBUF GPIO_0_0_tri_iobuf_0
       (.I(GPIO_0_0_tri_o_0),
        .IO(GPIO_0_0_tri_io[0]),
        .O(GPIO_0_0_tri_i_0),
        .T(GPIO_0_0_tri_t_0));
  IOBUF GPIO_0_0_tri_iobuf_1
       (.I(GPIO_0_0_tri_o_1),
        .IO(GPIO_0_0_tri_io[1]),
        .O(GPIO_0_0_tri_i_1),
        .T(GPIO_0_0_tri_t_1));
  system system_i
       (.DDR_0_addr(DDR_0_addr),
        .DDR_0_ba(DDR_0_ba),
        .DDR_0_cas_n(DDR_0_cas_n),
        .DDR_0_ck_n(DDR_0_ck_n),
        .DDR_0_ck_p(DDR_0_ck_p),
        .DDR_0_cke(DDR_0_cke),
        .DDR_0_cs_n(DDR_0_cs_n),
        .DDR_0_dm(DDR_0_dm),
        .DDR_0_dq(DDR_0_dq),
        .DDR_0_dqs_n(DDR_0_dqs_n),
        .DDR_0_dqs_p(DDR_0_dqs_p),
        .DDR_0_odt(DDR_0_odt),
        .DDR_0_ras_n(DDR_0_ras_n),
        .DDR_0_reset_n(DDR_0_reset_n),
        .DDR_0_we_n(DDR_0_we_n),
        .FIXED_IO_0_ddr_vrn(FIXED_IO_0_ddr_vrn),
        .FIXED_IO_0_ddr_vrp(FIXED_IO_0_ddr_vrp),
        .FIXED_IO_0_mio(FIXED_IO_0_mio),
        .FIXED_IO_0_ps_clk(FIXED_IO_0_ps_clk),
        .FIXED_IO_0_ps_porb(FIXED_IO_0_ps_porb),
        .FIXED_IO_0_ps_srstb(FIXED_IO_0_ps_srstb),
        .GPIO_0_0_tri_i({GPIO_0_0_tri_i_1,GPIO_0_0_tri_i_0}),
        .GPIO_0_0_tri_o({GPIO_0_0_tri_o_1,GPIO_0_0_tri_o_0}),
        .GPIO_0_0_tri_t({GPIO_0_0_tri_t_1,GPIO_0_0_tri_t_0}),
        .HDMI_CLK_N_0(HDMI_CLK_N_0),
        .HDMI_CLK_P_0(HDMI_CLK_P_0),
        .HDMI_D0_N_0(HDMI_D0_N_0),
        .HDMI_D0_P_0(HDMI_D0_P_0),
        .HDMI_D1_N_0(HDMI_D1_N_0),
        .HDMI_D1_P_0(HDMI_D1_P_0),
        .HDMI_D2_N_0(HDMI_D2_N_0),
        .HDMI_D2_P_0(HDMI_D2_P_0),
        .cmos_data_i_0(cmos_data_i_0),
        .cmos_data_i_1(cmos_data_i_1),
        .cmos_href_i_0(cmos_href_i_0),
        .cmos_href_i_1(cmos_href_i_1),
        .cmos_pclk_i_0(cmos_pclk_i_0),
        .cmos_pclk_i_1(cmos_pclk_i_1),
        .cmos_vsync_i_0(cmos_vsync_i_0),
        .cmos_vsync_i_1(cmos_vsync_i_1),
        .cmos_xclk_o_0(cmos_xclk_o_0),
        .cmos_xclk_o_1(cmos_xclk_o_1));
endmodule
