//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_d5b8_wrapper.bd
//Design : bd_d5b8_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_d5b8_wrapper
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tkeep,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tuser,
    SLOT_0_AXIS_tvalid,
    SLOT_1_AXI_araddr,
    SLOT_1_AXI_arid,
    SLOT_1_AXI_arlen,
    SLOT_1_AXI_arprot,
    SLOT_1_AXI_arready,
    SLOT_1_AXI_arsize,
    SLOT_1_AXI_arvalid,
    SLOT_1_AXI_awaddr,
    SLOT_1_AXI_awid,
    SLOT_1_AXI_awlen,
    SLOT_1_AXI_awprot,
    SLOT_1_AXI_awready,
    SLOT_1_AXI_awsize,
    SLOT_1_AXI_awvalid,
    SLOT_1_AXI_bid,
    SLOT_1_AXI_bready,
    SLOT_1_AXI_bresp,
    SLOT_1_AXI_bvalid,
    SLOT_1_AXI_rdata,
    SLOT_1_AXI_rid,
    SLOT_1_AXI_rlast,
    SLOT_1_AXI_rready,
    SLOT_1_AXI_rresp,
    SLOT_1_AXI_rvalid,
    SLOT_1_AXI_wdata,
    SLOT_1_AXI_wid,
    SLOT_1_AXI_wlast,
    SLOT_1_AXI_wready,
    SLOT_1_AXI_wstrb,
    SLOT_1_AXI_wvalid,
    SLOT_2_AXI_araddr,
    SLOT_2_AXI_arready,
    SLOT_2_AXI_arvalid,
    SLOT_2_AXI_awaddr,
    SLOT_2_AXI_awready,
    SLOT_2_AXI_awvalid,
    SLOT_2_AXI_bready,
    SLOT_2_AXI_bresp,
    SLOT_2_AXI_bvalid,
    SLOT_2_AXI_rdata,
    SLOT_2_AXI_rready,
    SLOT_2_AXI_rresp,
    SLOT_2_AXI_rvalid,
    SLOT_2_AXI_wdata,
    SLOT_2_AXI_wready,
    SLOT_2_AXI_wstrb,
    SLOT_2_AXI_wvalid,
    SLOT_3_AXI_araddr,
    SLOT_3_AXI_arlen,
    SLOT_3_AXI_arready,
    SLOT_3_AXI_arsize,
    SLOT_3_AXI_arvalid,
    SLOT_3_AXI_awaddr,
    SLOT_3_AXI_awlen,
    SLOT_3_AXI_awready,
    SLOT_3_AXI_awsize,
    SLOT_3_AXI_awvalid,
    SLOT_3_AXI_bready,
    SLOT_3_AXI_bvalid,
    SLOT_3_AXI_rdata,
    SLOT_3_AXI_rlast,
    SLOT_3_AXI_rready,
    SLOT_3_AXI_rresp,
    SLOT_3_AXI_rvalid,
    SLOT_3_AXI_wdata,
    SLOT_3_AXI_wlast,
    SLOT_3_AXI_wready,
    SLOT_3_AXI_wvalid,
    SLOT_4_AXI_araddr,
    SLOT_4_AXI_arlen,
    SLOT_4_AXI_arready,
    SLOT_4_AXI_arsize,
    SLOT_4_AXI_arvalid,
    SLOT_4_AXI_awaddr,
    SLOT_4_AXI_awlen,
    SLOT_4_AXI_awready,
    SLOT_4_AXI_awsize,
    SLOT_4_AXI_awvalid,
    SLOT_4_AXI_bready,
    SLOT_4_AXI_bresp,
    SLOT_4_AXI_bvalid,
    SLOT_4_AXI_rdata,
    SLOT_4_AXI_rlast,
    SLOT_4_AXI_rready,
    SLOT_4_AXI_rvalid,
    SLOT_4_AXI_wdata,
    SLOT_4_AXI_wlast,
    SLOT_4_AXI_wready,
    SLOT_4_AXI_wstrb,
    SLOT_4_AXI_wvalid,
    SLOT_5_AXIS_tdata,
    SLOT_5_AXIS_tlast,
    SLOT_5_AXIS_tready,
    SLOT_5_AXIS_tuser,
    SLOT_5_AXIS_tvalid,
    SLOT_6_AXIS_tdata,
    SLOT_6_AXIS_tlast,
    SLOT_6_AXIS_tready,
    SLOT_6_AXIS_tuser,
    SLOT_6_AXIS_tvalid,
    SLOT_7_AXI_araddr,
    SLOT_7_AXI_arready,
    SLOT_7_AXI_arvalid,
    SLOT_7_AXI_awaddr,
    SLOT_7_AXI_awready,
    SLOT_7_AXI_awvalid,
    SLOT_7_AXI_bready,
    SLOT_7_AXI_bresp,
    SLOT_7_AXI_bvalid,
    SLOT_7_AXI_rdata,
    SLOT_7_AXI_rready,
    SLOT_7_AXI_rresp,
    SLOT_7_AXI_rvalid,
    SLOT_7_AXI_wdata,
    SLOT_7_AXI_wready,
    SLOT_7_AXI_wstrb,
    SLOT_7_AXI_wvalid,
    clk,
    resetn);
  input [23:0]SLOT_0_AXIS_tdata;
  input [2:0]SLOT_0_AXIS_tkeep;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tready;
  input [0:0]SLOT_0_AXIS_tuser;
  input SLOT_0_AXIS_tvalid;
  input [31:0]SLOT_1_AXI_araddr;
  input [0:0]SLOT_1_AXI_arid;
  input [3:0]SLOT_1_AXI_arlen;
  input [2:0]SLOT_1_AXI_arprot;
  input SLOT_1_AXI_arready;
  input [2:0]SLOT_1_AXI_arsize;
  input SLOT_1_AXI_arvalid;
  input [31:0]SLOT_1_AXI_awaddr;
  input [0:0]SLOT_1_AXI_awid;
  input [3:0]SLOT_1_AXI_awlen;
  input [2:0]SLOT_1_AXI_awprot;
  input SLOT_1_AXI_awready;
  input [2:0]SLOT_1_AXI_awsize;
  input SLOT_1_AXI_awvalid;
  input [0:0]SLOT_1_AXI_bid;
  input SLOT_1_AXI_bready;
  input [1:0]SLOT_1_AXI_bresp;
  input SLOT_1_AXI_bvalid;
  input [63:0]SLOT_1_AXI_rdata;
  input [0:0]SLOT_1_AXI_rid;
  input SLOT_1_AXI_rlast;
  input SLOT_1_AXI_rready;
  input [1:0]SLOT_1_AXI_rresp;
  input SLOT_1_AXI_rvalid;
  input [63:0]SLOT_1_AXI_wdata;
  input [0:0]SLOT_1_AXI_wid;
  input SLOT_1_AXI_wlast;
  input SLOT_1_AXI_wready;
  input [7:0]SLOT_1_AXI_wstrb;
  input SLOT_1_AXI_wvalid;
  input [8:0]SLOT_2_AXI_araddr;
  input SLOT_2_AXI_arready;
  input SLOT_2_AXI_arvalid;
  input [8:0]SLOT_2_AXI_awaddr;
  input SLOT_2_AXI_awready;
  input SLOT_2_AXI_awvalid;
  input SLOT_2_AXI_bready;
  input [1:0]SLOT_2_AXI_bresp;
  input SLOT_2_AXI_bvalid;
  input [31:0]SLOT_2_AXI_rdata;
  input SLOT_2_AXI_rready;
  input [1:0]SLOT_2_AXI_rresp;
  input SLOT_2_AXI_rvalid;
  input [31:0]SLOT_2_AXI_wdata;
  input SLOT_2_AXI_wready;
  input [3:0]SLOT_2_AXI_wstrb;
  input SLOT_2_AXI_wvalid;
  input [31:0]SLOT_3_AXI_araddr;
  input [7:0]SLOT_3_AXI_arlen;
  input SLOT_3_AXI_arready;
  input [2:0]SLOT_3_AXI_arsize;
  input SLOT_3_AXI_arvalid;
  input [31:0]SLOT_3_AXI_awaddr;
  input [7:0]SLOT_3_AXI_awlen;
  input SLOT_3_AXI_awready;
  input [2:0]SLOT_3_AXI_awsize;
  input SLOT_3_AXI_awvalid;
  input SLOT_3_AXI_bready;
  input SLOT_3_AXI_bvalid;
  input [63:0]SLOT_3_AXI_rdata;
  input SLOT_3_AXI_rlast;
  input SLOT_3_AXI_rready;
  input [1:0]SLOT_3_AXI_rresp;
  input SLOT_3_AXI_rvalid;
  input [63:0]SLOT_3_AXI_wdata;
  input SLOT_3_AXI_wlast;
  input SLOT_3_AXI_wready;
  input SLOT_3_AXI_wvalid;
  input [31:0]SLOT_4_AXI_araddr;
  input [7:0]SLOT_4_AXI_arlen;
  input SLOT_4_AXI_arready;
  input [2:0]SLOT_4_AXI_arsize;
  input SLOT_4_AXI_arvalid;
  input [31:0]SLOT_4_AXI_awaddr;
  input [7:0]SLOT_4_AXI_awlen;
  input SLOT_4_AXI_awready;
  input [2:0]SLOT_4_AXI_awsize;
  input SLOT_4_AXI_awvalid;
  input SLOT_4_AXI_bready;
  input [1:0]SLOT_4_AXI_bresp;
  input SLOT_4_AXI_bvalid;
  input [63:0]SLOT_4_AXI_rdata;
  input SLOT_4_AXI_rlast;
  input SLOT_4_AXI_rready;
  input SLOT_4_AXI_rvalid;
  input [63:0]SLOT_4_AXI_wdata;
  input SLOT_4_AXI_wlast;
  input SLOT_4_AXI_wready;
  input [7:0]SLOT_4_AXI_wstrb;
  input SLOT_4_AXI_wvalid;
  input [23:0]SLOT_5_AXIS_tdata;
  input SLOT_5_AXIS_tlast;
  input SLOT_5_AXIS_tready;
  input [0:0]SLOT_5_AXIS_tuser;
  input SLOT_5_AXIS_tvalid;
  input [23:0]SLOT_6_AXIS_tdata;
  input SLOT_6_AXIS_tlast;
  input SLOT_6_AXIS_tready;
  input [0:0]SLOT_6_AXIS_tuser;
  input SLOT_6_AXIS_tvalid;
  input [8:0]SLOT_7_AXI_araddr;
  input SLOT_7_AXI_arready;
  input SLOT_7_AXI_arvalid;
  input [8:0]SLOT_7_AXI_awaddr;
  input SLOT_7_AXI_awready;
  input SLOT_7_AXI_awvalid;
  input SLOT_7_AXI_bready;
  input [1:0]SLOT_7_AXI_bresp;
  input SLOT_7_AXI_bvalid;
  input [31:0]SLOT_7_AXI_rdata;
  input SLOT_7_AXI_rready;
  input [1:0]SLOT_7_AXI_rresp;
  input SLOT_7_AXI_rvalid;
  input [31:0]SLOT_7_AXI_wdata;
  input SLOT_7_AXI_wready;
  input [3:0]SLOT_7_AXI_wstrb;
  input SLOT_7_AXI_wvalid;
  input clk;
  input resetn;

  wire [23:0]SLOT_0_AXIS_tdata;
  wire [2:0]SLOT_0_AXIS_tkeep;
  wire SLOT_0_AXIS_tlast;
  wire SLOT_0_AXIS_tready;
  wire [0:0]SLOT_0_AXIS_tuser;
  wire SLOT_0_AXIS_tvalid;
  wire [31:0]SLOT_1_AXI_araddr;
  wire [0:0]SLOT_1_AXI_arid;
  wire [3:0]SLOT_1_AXI_arlen;
  wire [2:0]SLOT_1_AXI_arprot;
  wire SLOT_1_AXI_arready;
  wire [2:0]SLOT_1_AXI_arsize;
  wire SLOT_1_AXI_arvalid;
  wire [31:0]SLOT_1_AXI_awaddr;
  wire [0:0]SLOT_1_AXI_awid;
  wire [3:0]SLOT_1_AXI_awlen;
  wire [2:0]SLOT_1_AXI_awprot;
  wire SLOT_1_AXI_awready;
  wire [2:0]SLOT_1_AXI_awsize;
  wire SLOT_1_AXI_awvalid;
  wire [0:0]SLOT_1_AXI_bid;
  wire SLOT_1_AXI_bready;
  wire [1:0]SLOT_1_AXI_bresp;
  wire SLOT_1_AXI_bvalid;
  wire [63:0]SLOT_1_AXI_rdata;
  wire [0:0]SLOT_1_AXI_rid;
  wire SLOT_1_AXI_rlast;
  wire SLOT_1_AXI_rready;
  wire [1:0]SLOT_1_AXI_rresp;
  wire SLOT_1_AXI_rvalid;
  wire [63:0]SLOT_1_AXI_wdata;
  wire [0:0]SLOT_1_AXI_wid;
  wire SLOT_1_AXI_wlast;
  wire SLOT_1_AXI_wready;
  wire [7:0]SLOT_1_AXI_wstrb;
  wire SLOT_1_AXI_wvalid;
  wire [8:0]SLOT_2_AXI_araddr;
  wire SLOT_2_AXI_arready;
  wire SLOT_2_AXI_arvalid;
  wire [8:0]SLOT_2_AXI_awaddr;
  wire SLOT_2_AXI_awready;
  wire SLOT_2_AXI_awvalid;
  wire SLOT_2_AXI_bready;
  wire [1:0]SLOT_2_AXI_bresp;
  wire SLOT_2_AXI_bvalid;
  wire [31:0]SLOT_2_AXI_rdata;
  wire SLOT_2_AXI_rready;
  wire [1:0]SLOT_2_AXI_rresp;
  wire SLOT_2_AXI_rvalid;
  wire [31:0]SLOT_2_AXI_wdata;
  wire SLOT_2_AXI_wready;
  wire [3:0]SLOT_2_AXI_wstrb;
  wire SLOT_2_AXI_wvalid;
  wire [31:0]SLOT_3_AXI_araddr;
  wire [7:0]SLOT_3_AXI_arlen;
  wire SLOT_3_AXI_arready;
  wire [2:0]SLOT_3_AXI_arsize;
  wire SLOT_3_AXI_arvalid;
  wire [31:0]SLOT_3_AXI_awaddr;
  wire [7:0]SLOT_3_AXI_awlen;
  wire SLOT_3_AXI_awready;
  wire [2:0]SLOT_3_AXI_awsize;
  wire SLOT_3_AXI_awvalid;
  wire SLOT_3_AXI_bready;
  wire SLOT_3_AXI_bvalid;
  wire [63:0]SLOT_3_AXI_rdata;
  wire SLOT_3_AXI_rlast;
  wire SLOT_3_AXI_rready;
  wire [1:0]SLOT_3_AXI_rresp;
  wire SLOT_3_AXI_rvalid;
  wire [63:0]SLOT_3_AXI_wdata;
  wire SLOT_3_AXI_wlast;
  wire SLOT_3_AXI_wready;
  wire SLOT_3_AXI_wvalid;
  wire [31:0]SLOT_4_AXI_araddr;
  wire [7:0]SLOT_4_AXI_arlen;
  wire SLOT_4_AXI_arready;
  wire [2:0]SLOT_4_AXI_arsize;
  wire SLOT_4_AXI_arvalid;
  wire [31:0]SLOT_4_AXI_awaddr;
  wire [7:0]SLOT_4_AXI_awlen;
  wire SLOT_4_AXI_awready;
  wire [2:0]SLOT_4_AXI_awsize;
  wire SLOT_4_AXI_awvalid;
  wire SLOT_4_AXI_bready;
  wire [1:0]SLOT_4_AXI_bresp;
  wire SLOT_4_AXI_bvalid;
  wire [63:0]SLOT_4_AXI_rdata;
  wire SLOT_4_AXI_rlast;
  wire SLOT_4_AXI_rready;
  wire SLOT_4_AXI_rvalid;
  wire [63:0]SLOT_4_AXI_wdata;
  wire SLOT_4_AXI_wlast;
  wire SLOT_4_AXI_wready;
  wire [7:0]SLOT_4_AXI_wstrb;
  wire SLOT_4_AXI_wvalid;
  wire [23:0]SLOT_5_AXIS_tdata;
  wire SLOT_5_AXIS_tlast;
  wire SLOT_5_AXIS_tready;
  wire [0:0]SLOT_5_AXIS_tuser;
  wire SLOT_5_AXIS_tvalid;
  wire [23:0]SLOT_6_AXIS_tdata;
  wire SLOT_6_AXIS_tlast;
  wire SLOT_6_AXIS_tready;
  wire [0:0]SLOT_6_AXIS_tuser;
  wire SLOT_6_AXIS_tvalid;
  wire [8:0]SLOT_7_AXI_araddr;
  wire SLOT_7_AXI_arready;
  wire SLOT_7_AXI_arvalid;
  wire [8:0]SLOT_7_AXI_awaddr;
  wire SLOT_7_AXI_awready;
  wire SLOT_7_AXI_awvalid;
  wire SLOT_7_AXI_bready;
  wire [1:0]SLOT_7_AXI_bresp;
  wire SLOT_7_AXI_bvalid;
  wire [31:0]SLOT_7_AXI_rdata;
  wire SLOT_7_AXI_rready;
  wire [1:0]SLOT_7_AXI_rresp;
  wire SLOT_7_AXI_rvalid;
  wire [31:0]SLOT_7_AXI_wdata;
  wire SLOT_7_AXI_wready;
  wire [3:0]SLOT_7_AXI_wstrb;
  wire SLOT_7_AXI_wvalid;
  wire clk;
  wire resetn;

  bd_d5b8 bd_d5b8_i
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tkeep(SLOT_0_AXIS_tkeep),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
        .SLOT_0_AXIS_tuser(SLOT_0_AXIS_tuser),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .SLOT_1_AXI_araddr(SLOT_1_AXI_araddr),
        .SLOT_1_AXI_arid(SLOT_1_AXI_arid),
        .SLOT_1_AXI_arlen(SLOT_1_AXI_arlen),
        .SLOT_1_AXI_arprot(SLOT_1_AXI_arprot),
        .SLOT_1_AXI_arready(SLOT_1_AXI_arready),
        .SLOT_1_AXI_arsize(SLOT_1_AXI_arsize),
        .SLOT_1_AXI_arvalid(SLOT_1_AXI_arvalid),
        .SLOT_1_AXI_awaddr(SLOT_1_AXI_awaddr),
        .SLOT_1_AXI_awid(SLOT_1_AXI_awid),
        .SLOT_1_AXI_awlen(SLOT_1_AXI_awlen),
        .SLOT_1_AXI_awprot(SLOT_1_AXI_awprot),
        .SLOT_1_AXI_awready(SLOT_1_AXI_awready),
        .SLOT_1_AXI_awsize(SLOT_1_AXI_awsize),
        .SLOT_1_AXI_awvalid(SLOT_1_AXI_awvalid),
        .SLOT_1_AXI_bid(SLOT_1_AXI_bid),
        .SLOT_1_AXI_bready(SLOT_1_AXI_bready),
        .SLOT_1_AXI_bresp(SLOT_1_AXI_bresp),
        .SLOT_1_AXI_bvalid(SLOT_1_AXI_bvalid),
        .SLOT_1_AXI_rdata(SLOT_1_AXI_rdata),
        .SLOT_1_AXI_rid(SLOT_1_AXI_rid),
        .SLOT_1_AXI_rlast(SLOT_1_AXI_rlast),
        .SLOT_1_AXI_rready(SLOT_1_AXI_rready),
        .SLOT_1_AXI_rresp(SLOT_1_AXI_rresp),
        .SLOT_1_AXI_rvalid(SLOT_1_AXI_rvalid),
        .SLOT_1_AXI_wdata(SLOT_1_AXI_wdata),
        .SLOT_1_AXI_wid(SLOT_1_AXI_wid),
        .SLOT_1_AXI_wlast(SLOT_1_AXI_wlast),
        .SLOT_1_AXI_wready(SLOT_1_AXI_wready),
        .SLOT_1_AXI_wstrb(SLOT_1_AXI_wstrb),
        .SLOT_1_AXI_wvalid(SLOT_1_AXI_wvalid),
        .SLOT_2_AXI_araddr(SLOT_2_AXI_araddr),
        .SLOT_2_AXI_arready(SLOT_2_AXI_arready),
        .SLOT_2_AXI_arvalid(SLOT_2_AXI_arvalid),
        .SLOT_2_AXI_awaddr(SLOT_2_AXI_awaddr),
        .SLOT_2_AXI_awready(SLOT_2_AXI_awready),
        .SLOT_2_AXI_awvalid(SLOT_2_AXI_awvalid),
        .SLOT_2_AXI_bready(SLOT_2_AXI_bready),
        .SLOT_2_AXI_bresp(SLOT_2_AXI_bresp),
        .SLOT_2_AXI_bvalid(SLOT_2_AXI_bvalid),
        .SLOT_2_AXI_rdata(SLOT_2_AXI_rdata),
        .SLOT_2_AXI_rready(SLOT_2_AXI_rready),
        .SLOT_2_AXI_rresp(SLOT_2_AXI_rresp),
        .SLOT_2_AXI_rvalid(SLOT_2_AXI_rvalid),
        .SLOT_2_AXI_wdata(SLOT_2_AXI_wdata),
        .SLOT_2_AXI_wready(SLOT_2_AXI_wready),
        .SLOT_2_AXI_wstrb(SLOT_2_AXI_wstrb),
        .SLOT_2_AXI_wvalid(SLOT_2_AXI_wvalid),
        .SLOT_3_AXI_araddr(SLOT_3_AXI_araddr),
        .SLOT_3_AXI_arlen(SLOT_3_AXI_arlen),
        .SLOT_3_AXI_arready(SLOT_3_AXI_arready),
        .SLOT_3_AXI_arsize(SLOT_3_AXI_arsize),
        .SLOT_3_AXI_arvalid(SLOT_3_AXI_arvalid),
        .SLOT_3_AXI_awaddr(SLOT_3_AXI_awaddr),
        .SLOT_3_AXI_awlen(SLOT_3_AXI_awlen),
        .SLOT_3_AXI_awready(SLOT_3_AXI_awready),
        .SLOT_3_AXI_awsize(SLOT_3_AXI_awsize),
        .SLOT_3_AXI_awvalid(SLOT_3_AXI_awvalid),
        .SLOT_3_AXI_bready(SLOT_3_AXI_bready),
        .SLOT_3_AXI_bvalid(SLOT_3_AXI_bvalid),
        .SLOT_3_AXI_rdata(SLOT_3_AXI_rdata),
        .SLOT_3_AXI_rlast(SLOT_3_AXI_rlast),
        .SLOT_3_AXI_rready(SLOT_3_AXI_rready),
        .SLOT_3_AXI_rresp(SLOT_3_AXI_rresp),
        .SLOT_3_AXI_rvalid(SLOT_3_AXI_rvalid),
        .SLOT_3_AXI_wdata(SLOT_3_AXI_wdata),
        .SLOT_3_AXI_wlast(SLOT_3_AXI_wlast),
        .SLOT_3_AXI_wready(SLOT_3_AXI_wready),
        .SLOT_3_AXI_wvalid(SLOT_3_AXI_wvalid),
        .SLOT_4_AXI_araddr(SLOT_4_AXI_araddr),
        .SLOT_4_AXI_arlen(SLOT_4_AXI_arlen),
        .SLOT_4_AXI_arready(SLOT_4_AXI_arready),
        .SLOT_4_AXI_arsize(SLOT_4_AXI_arsize),
        .SLOT_4_AXI_arvalid(SLOT_4_AXI_arvalid),
        .SLOT_4_AXI_awaddr(SLOT_4_AXI_awaddr),
        .SLOT_4_AXI_awlen(SLOT_4_AXI_awlen),
        .SLOT_4_AXI_awready(SLOT_4_AXI_awready),
        .SLOT_4_AXI_awsize(SLOT_4_AXI_awsize),
        .SLOT_4_AXI_awvalid(SLOT_4_AXI_awvalid),
        .SLOT_4_AXI_bready(SLOT_4_AXI_bready),
        .SLOT_4_AXI_bresp(SLOT_4_AXI_bresp),
        .SLOT_4_AXI_bvalid(SLOT_4_AXI_bvalid),
        .SLOT_4_AXI_rdata(SLOT_4_AXI_rdata),
        .SLOT_4_AXI_rlast(SLOT_4_AXI_rlast),
        .SLOT_4_AXI_rready(SLOT_4_AXI_rready),
        .SLOT_4_AXI_rvalid(SLOT_4_AXI_rvalid),
        .SLOT_4_AXI_wdata(SLOT_4_AXI_wdata),
        .SLOT_4_AXI_wlast(SLOT_4_AXI_wlast),
        .SLOT_4_AXI_wready(SLOT_4_AXI_wready),
        .SLOT_4_AXI_wstrb(SLOT_4_AXI_wstrb),
        .SLOT_4_AXI_wvalid(SLOT_4_AXI_wvalid),
        .SLOT_5_AXIS_tdata(SLOT_5_AXIS_tdata),
        .SLOT_5_AXIS_tlast(SLOT_5_AXIS_tlast),
        .SLOT_5_AXIS_tready(SLOT_5_AXIS_tready),
        .SLOT_5_AXIS_tuser(SLOT_5_AXIS_tuser),
        .SLOT_5_AXIS_tvalid(SLOT_5_AXIS_tvalid),
        .SLOT_6_AXIS_tdata(SLOT_6_AXIS_tdata),
        .SLOT_6_AXIS_tlast(SLOT_6_AXIS_tlast),
        .SLOT_6_AXIS_tready(SLOT_6_AXIS_tready),
        .SLOT_6_AXIS_tuser(SLOT_6_AXIS_tuser),
        .SLOT_6_AXIS_tvalid(SLOT_6_AXIS_tvalid),
        .SLOT_7_AXI_araddr(SLOT_7_AXI_araddr),
        .SLOT_7_AXI_arready(SLOT_7_AXI_arready),
        .SLOT_7_AXI_arvalid(SLOT_7_AXI_arvalid),
        .SLOT_7_AXI_awaddr(SLOT_7_AXI_awaddr),
        .SLOT_7_AXI_awready(SLOT_7_AXI_awready),
        .SLOT_7_AXI_awvalid(SLOT_7_AXI_awvalid),
        .SLOT_7_AXI_bready(SLOT_7_AXI_bready),
        .SLOT_7_AXI_bresp(SLOT_7_AXI_bresp),
        .SLOT_7_AXI_bvalid(SLOT_7_AXI_bvalid),
        .SLOT_7_AXI_rdata(SLOT_7_AXI_rdata),
        .SLOT_7_AXI_rready(SLOT_7_AXI_rready),
        .SLOT_7_AXI_rresp(SLOT_7_AXI_rresp),
        .SLOT_7_AXI_rvalid(SLOT_7_AXI_rvalid),
        .SLOT_7_AXI_wdata(SLOT_7_AXI_wdata),
        .SLOT_7_AXI_wready(SLOT_7_AXI_wready),
        .SLOT_7_AXI_wstrb(SLOT_7_AXI_wstrb),
        .SLOT_7_AXI_wvalid(SLOT_7_AXI_wvalid),
        .clk(clk),
        .resetn(resetn));
endmodule
