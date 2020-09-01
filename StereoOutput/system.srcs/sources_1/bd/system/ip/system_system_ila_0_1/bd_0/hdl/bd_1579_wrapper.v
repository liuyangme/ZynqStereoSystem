//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_1579_wrapper.bd
//Design : bd_1579_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_1579_wrapper
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arcache,
    SLOT_0_AXI_arid,
    SLOT_0_AXI_arlen,
    SLOT_0_AXI_arprot,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arsize,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awcache,
    SLOT_0_AXI_awid,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awprot,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rid,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wid,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wstrb,
    SLOT_0_AXI_wvalid,
    SLOT_10_AXIS_tdata,
    SLOT_10_AXIS_tlast,
    SLOT_10_AXIS_tready,
    SLOT_10_AXIS_tuser,
    SLOT_10_AXIS_tvalid,
    SLOT_1_AXI_araddr,
    SLOT_1_AXI_arcache,
    SLOT_1_AXI_arid,
    SLOT_1_AXI_arlen,
    SLOT_1_AXI_arprot,
    SLOT_1_AXI_arready,
    SLOT_1_AXI_arsize,
    SLOT_1_AXI_arvalid,
    SLOT_1_AXI_awaddr,
    SLOT_1_AXI_awcache,
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
    SLOT_2_AXIS_tdata,
    SLOT_2_AXIS_tkeep,
    SLOT_2_AXIS_tlast,
    SLOT_2_AXIS_tready,
    SLOT_2_AXIS_tuser,
    SLOT_2_AXIS_tvalid,
    SLOT_3_AXI_araddr,
    SLOT_3_AXI_arcache,
    SLOT_3_AXI_arlen,
    SLOT_3_AXI_arprot,
    SLOT_3_AXI_arready,
    SLOT_3_AXI_arsize,
    SLOT_3_AXI_arvalid,
    SLOT_3_AXI_awaddr,
    SLOT_3_AXI_awcache,
    SLOT_3_AXI_awlen,
    SLOT_3_AXI_awprot,
    SLOT_3_AXI_awready,
    SLOT_3_AXI_awsize,
    SLOT_3_AXI_awvalid,
    SLOT_3_AXI_bready,
    SLOT_3_AXI_bresp,
    SLOT_3_AXI_bvalid,
    SLOT_3_AXI_rdata,
    SLOT_3_AXI_rlast,
    SLOT_3_AXI_rready,
    SLOT_3_AXI_rvalid,
    SLOT_3_AXI_wdata,
    SLOT_3_AXI_wlast,
    SLOT_3_AXI_wready,
    SLOT_3_AXI_wstrb,
    SLOT_3_AXI_wvalid,
    SLOT_4_AXIS_tdata,
    SLOT_4_AXIS_tkeep,
    SLOT_4_AXIS_tlast,
    SLOT_4_AXIS_tready,
    SLOT_4_AXIS_tuser,
    SLOT_4_AXIS_tvalid,
    SLOT_5_AXI_araddr,
    SLOT_5_AXI_arcache,
    SLOT_5_AXI_arlen,
    SLOT_5_AXI_arprot,
    SLOT_5_AXI_arready,
    SLOT_5_AXI_arsize,
    SLOT_5_AXI_arvalid,
    SLOT_5_AXI_awaddr,
    SLOT_5_AXI_awcache,
    SLOT_5_AXI_awlen,
    SLOT_5_AXI_awprot,
    SLOT_5_AXI_awready,
    SLOT_5_AXI_awsize,
    SLOT_5_AXI_awvalid,
    SLOT_5_AXI_bready,
    SLOT_5_AXI_bresp,
    SLOT_5_AXI_bvalid,
    SLOT_5_AXI_rdata,
    SLOT_5_AXI_rlast,
    SLOT_5_AXI_rready,
    SLOT_5_AXI_rvalid,
    SLOT_5_AXI_wdata,
    SLOT_5_AXI_wlast,
    SLOT_5_AXI_wready,
    SLOT_5_AXI_wstrb,
    SLOT_5_AXI_wvalid,
    SLOT_6_AXI_araddr,
    SLOT_6_AXI_arcache,
    SLOT_6_AXI_arlen,
    SLOT_6_AXI_arprot,
    SLOT_6_AXI_arready,
    SLOT_6_AXI_arsize,
    SLOT_6_AXI_arvalid,
    SLOT_6_AXI_awaddr,
    SLOT_6_AXI_awcache,
    SLOT_6_AXI_awlen,
    SLOT_6_AXI_awprot,
    SLOT_6_AXI_awready,
    SLOT_6_AXI_awsize,
    SLOT_6_AXI_awvalid,
    SLOT_6_AXI_bready,
    SLOT_6_AXI_bvalid,
    SLOT_6_AXI_rdata,
    SLOT_6_AXI_rlast,
    SLOT_6_AXI_rready,
    SLOT_6_AXI_rresp,
    SLOT_6_AXI_rvalid,
    SLOT_6_AXI_wdata,
    SLOT_6_AXI_wlast,
    SLOT_6_AXI_wready,
    SLOT_6_AXI_wvalid,
    SLOT_7_AXI_araddr,
    SLOT_7_AXI_arcache,
    SLOT_7_AXI_arlen,
    SLOT_7_AXI_arprot,
    SLOT_7_AXI_arready,
    SLOT_7_AXI_arsize,
    SLOT_7_AXI_arvalid,
    SLOT_7_AXI_awaddr,
    SLOT_7_AXI_awcache,
    SLOT_7_AXI_awlen,
    SLOT_7_AXI_awprot,
    SLOT_7_AXI_awready,
    SLOT_7_AXI_awsize,
    SLOT_7_AXI_awvalid,
    SLOT_7_AXI_bready,
    SLOT_7_AXI_bvalid,
    SLOT_7_AXI_rdata,
    SLOT_7_AXI_rlast,
    SLOT_7_AXI_rready,
    SLOT_7_AXI_rresp,
    SLOT_7_AXI_rvalid,
    SLOT_7_AXI_wdata,
    SLOT_7_AXI_wlast,
    SLOT_7_AXI_wready,
    SLOT_7_AXI_wvalid,
    SLOT_8_AXIS_tdata,
    SLOT_8_AXIS_tdest,
    SLOT_8_AXIS_tid,
    SLOT_8_AXIS_tkeep,
    SLOT_8_AXIS_tlast,
    SLOT_8_AXIS_tready,
    SLOT_8_AXIS_tstrb,
    SLOT_8_AXIS_tuser,
    SLOT_8_AXIS_tvalid,
    SLOT_9_AXIS_tdata,
    SLOT_9_AXIS_tlast,
    SLOT_9_AXIS_tready,
    SLOT_9_AXIS_tuser,
    SLOT_9_AXIS_tvalid,
    clk,
    probe0,
    probe1,
    resetn);
  input [31:0]SLOT_0_AXI_araddr;
  input [3:0]SLOT_0_AXI_arcache;
  input [0:0]SLOT_0_AXI_arid;
  input [3:0]SLOT_0_AXI_arlen;
  input [2:0]SLOT_0_AXI_arprot;
  input SLOT_0_AXI_arready;
  input [2:0]SLOT_0_AXI_arsize;
  input SLOT_0_AXI_arvalid;
  input [31:0]SLOT_0_AXI_awaddr;
  input [3:0]SLOT_0_AXI_awcache;
  input [0:0]SLOT_0_AXI_awid;
  input [3:0]SLOT_0_AXI_awlen;
  input [2:0]SLOT_0_AXI_awprot;
  input SLOT_0_AXI_awready;
  input [2:0]SLOT_0_AXI_awsize;
  input SLOT_0_AXI_awvalid;
  input [0:0]SLOT_0_AXI_bid;
  input SLOT_0_AXI_bready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input [63:0]SLOT_0_AXI_rdata;
  input [0:0]SLOT_0_AXI_rid;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rready;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rvalid;
  input [63:0]SLOT_0_AXI_wdata;
  input [0:0]SLOT_0_AXI_wid;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wready;
  input [7:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wvalid;
  input [23:0]SLOT_10_AXIS_tdata;
  input SLOT_10_AXIS_tlast;
  input SLOT_10_AXIS_tready;
  input [0:0]SLOT_10_AXIS_tuser;
  input SLOT_10_AXIS_tvalid;
  input [31:0]SLOT_1_AXI_araddr;
  input [3:0]SLOT_1_AXI_arcache;
  input [0:0]SLOT_1_AXI_arid;
  input [3:0]SLOT_1_AXI_arlen;
  input [2:0]SLOT_1_AXI_arprot;
  input SLOT_1_AXI_arready;
  input [2:0]SLOT_1_AXI_arsize;
  input SLOT_1_AXI_arvalid;
  input [31:0]SLOT_1_AXI_awaddr;
  input [3:0]SLOT_1_AXI_awcache;
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
  input [23:0]SLOT_2_AXIS_tdata;
  input [2:0]SLOT_2_AXIS_tkeep;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tready;
  input [0:0]SLOT_2_AXIS_tuser;
  input SLOT_2_AXIS_tvalid;
  input [31:0]SLOT_3_AXI_araddr;
  input [3:0]SLOT_3_AXI_arcache;
  input [7:0]SLOT_3_AXI_arlen;
  input [2:0]SLOT_3_AXI_arprot;
  input SLOT_3_AXI_arready;
  input [2:0]SLOT_3_AXI_arsize;
  input SLOT_3_AXI_arvalid;
  input [31:0]SLOT_3_AXI_awaddr;
  input [3:0]SLOT_3_AXI_awcache;
  input [7:0]SLOT_3_AXI_awlen;
  input [2:0]SLOT_3_AXI_awprot;
  input SLOT_3_AXI_awready;
  input [2:0]SLOT_3_AXI_awsize;
  input SLOT_3_AXI_awvalid;
  input SLOT_3_AXI_bready;
  input [1:0]SLOT_3_AXI_bresp;
  input SLOT_3_AXI_bvalid;
  input [63:0]SLOT_3_AXI_rdata;
  input SLOT_3_AXI_rlast;
  input SLOT_3_AXI_rready;
  input SLOT_3_AXI_rvalid;
  input [63:0]SLOT_3_AXI_wdata;
  input SLOT_3_AXI_wlast;
  input SLOT_3_AXI_wready;
  input [7:0]SLOT_3_AXI_wstrb;
  input SLOT_3_AXI_wvalid;
  input [23:0]SLOT_4_AXIS_tdata;
  input [2:0]SLOT_4_AXIS_tkeep;
  input SLOT_4_AXIS_tlast;
  input SLOT_4_AXIS_tready;
  input [0:0]SLOT_4_AXIS_tuser;
  input SLOT_4_AXIS_tvalid;
  input [31:0]SLOT_5_AXI_araddr;
  input [3:0]SLOT_5_AXI_arcache;
  input [7:0]SLOT_5_AXI_arlen;
  input [2:0]SLOT_5_AXI_arprot;
  input SLOT_5_AXI_arready;
  input [2:0]SLOT_5_AXI_arsize;
  input SLOT_5_AXI_arvalid;
  input [31:0]SLOT_5_AXI_awaddr;
  input [3:0]SLOT_5_AXI_awcache;
  input [7:0]SLOT_5_AXI_awlen;
  input [2:0]SLOT_5_AXI_awprot;
  input SLOT_5_AXI_awready;
  input [2:0]SLOT_5_AXI_awsize;
  input SLOT_5_AXI_awvalid;
  input SLOT_5_AXI_bready;
  input [1:0]SLOT_5_AXI_bresp;
  input SLOT_5_AXI_bvalid;
  input [63:0]SLOT_5_AXI_rdata;
  input SLOT_5_AXI_rlast;
  input SLOT_5_AXI_rready;
  input SLOT_5_AXI_rvalid;
  input [63:0]SLOT_5_AXI_wdata;
  input SLOT_5_AXI_wlast;
  input SLOT_5_AXI_wready;
  input [7:0]SLOT_5_AXI_wstrb;
  input SLOT_5_AXI_wvalid;
  input [31:0]SLOT_6_AXI_araddr;
  input [3:0]SLOT_6_AXI_arcache;
  input [7:0]SLOT_6_AXI_arlen;
  input [2:0]SLOT_6_AXI_arprot;
  input SLOT_6_AXI_arready;
  input [2:0]SLOT_6_AXI_arsize;
  input SLOT_6_AXI_arvalid;
  input [31:0]SLOT_6_AXI_awaddr;
  input [3:0]SLOT_6_AXI_awcache;
  input [7:0]SLOT_6_AXI_awlen;
  input [2:0]SLOT_6_AXI_awprot;
  input SLOT_6_AXI_awready;
  input [2:0]SLOT_6_AXI_awsize;
  input SLOT_6_AXI_awvalid;
  input SLOT_6_AXI_bready;
  input SLOT_6_AXI_bvalid;
  input [63:0]SLOT_6_AXI_rdata;
  input SLOT_6_AXI_rlast;
  input SLOT_6_AXI_rready;
  input [1:0]SLOT_6_AXI_rresp;
  input SLOT_6_AXI_rvalid;
  input [63:0]SLOT_6_AXI_wdata;
  input SLOT_6_AXI_wlast;
  input SLOT_6_AXI_wready;
  input SLOT_6_AXI_wvalid;
  input [31:0]SLOT_7_AXI_araddr;
  input [1:0]SLOT_7_AXI_arcache;
  input [7:0]SLOT_7_AXI_arlen;
  input [2:0]SLOT_7_AXI_arprot;
  input SLOT_7_AXI_arready;
  input [2:0]SLOT_7_AXI_arsize;
  input SLOT_7_AXI_arvalid;
  input [31:0]SLOT_7_AXI_awaddr;
  input [3:0]SLOT_7_AXI_awcache;
  input [7:0]SLOT_7_AXI_awlen;
  input [2:0]SLOT_7_AXI_awprot;
  input SLOT_7_AXI_awready;
  input [2:0]SLOT_7_AXI_awsize;
  input SLOT_7_AXI_awvalid;
  input SLOT_7_AXI_bready;
  input SLOT_7_AXI_bvalid;
  input [63:0]SLOT_7_AXI_rdata;
  input SLOT_7_AXI_rlast;
  input SLOT_7_AXI_rready;
  input [1:0]SLOT_7_AXI_rresp;
  input SLOT_7_AXI_rvalid;
  input [63:0]SLOT_7_AXI_wdata;
  input SLOT_7_AXI_wlast;
  input SLOT_7_AXI_wready;
  input SLOT_7_AXI_wvalid;
  input [23:0]SLOT_8_AXIS_tdata;
  input [0:0]SLOT_8_AXIS_tdest;
  input [0:0]SLOT_8_AXIS_tid;
  input [2:0]SLOT_8_AXIS_tkeep;
  input SLOT_8_AXIS_tlast;
  input SLOT_8_AXIS_tready;
  input [2:0]SLOT_8_AXIS_tstrb;
  input [0:0]SLOT_8_AXIS_tuser;
  input SLOT_8_AXIS_tvalid;
  input [23:0]SLOT_9_AXIS_tdata;
  input SLOT_9_AXIS_tlast;
  input SLOT_9_AXIS_tready;
  input [0:0]SLOT_9_AXIS_tuser;
  input SLOT_9_AXIS_tvalid;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input resetn;

  wire [31:0]SLOT_0_AXI_araddr;
  wire [3:0]SLOT_0_AXI_arcache;
  wire [0:0]SLOT_0_AXI_arid;
  wire [3:0]SLOT_0_AXI_arlen;
  wire [2:0]SLOT_0_AXI_arprot;
  wire SLOT_0_AXI_arready;
  wire [2:0]SLOT_0_AXI_arsize;
  wire SLOT_0_AXI_arvalid;
  wire [31:0]SLOT_0_AXI_awaddr;
  wire [3:0]SLOT_0_AXI_awcache;
  wire [0:0]SLOT_0_AXI_awid;
  wire [3:0]SLOT_0_AXI_awlen;
  wire [2:0]SLOT_0_AXI_awprot;
  wire SLOT_0_AXI_awready;
  wire [2:0]SLOT_0_AXI_awsize;
  wire SLOT_0_AXI_awvalid;
  wire [0:0]SLOT_0_AXI_bid;
  wire SLOT_0_AXI_bready;
  wire [1:0]SLOT_0_AXI_bresp;
  wire SLOT_0_AXI_bvalid;
  wire [63:0]SLOT_0_AXI_rdata;
  wire [0:0]SLOT_0_AXI_rid;
  wire SLOT_0_AXI_rlast;
  wire SLOT_0_AXI_rready;
  wire [1:0]SLOT_0_AXI_rresp;
  wire SLOT_0_AXI_rvalid;
  wire [63:0]SLOT_0_AXI_wdata;
  wire [0:0]SLOT_0_AXI_wid;
  wire SLOT_0_AXI_wlast;
  wire SLOT_0_AXI_wready;
  wire [7:0]SLOT_0_AXI_wstrb;
  wire SLOT_0_AXI_wvalid;
  wire [23:0]SLOT_10_AXIS_tdata;
  wire SLOT_10_AXIS_tlast;
  wire SLOT_10_AXIS_tready;
  wire [0:0]SLOT_10_AXIS_tuser;
  wire SLOT_10_AXIS_tvalid;
  wire [31:0]SLOT_1_AXI_araddr;
  wire [3:0]SLOT_1_AXI_arcache;
  wire [0:0]SLOT_1_AXI_arid;
  wire [3:0]SLOT_1_AXI_arlen;
  wire [2:0]SLOT_1_AXI_arprot;
  wire SLOT_1_AXI_arready;
  wire [2:0]SLOT_1_AXI_arsize;
  wire SLOT_1_AXI_arvalid;
  wire [31:0]SLOT_1_AXI_awaddr;
  wire [3:0]SLOT_1_AXI_awcache;
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
  wire [23:0]SLOT_2_AXIS_tdata;
  wire [2:0]SLOT_2_AXIS_tkeep;
  wire SLOT_2_AXIS_tlast;
  wire SLOT_2_AXIS_tready;
  wire [0:0]SLOT_2_AXIS_tuser;
  wire SLOT_2_AXIS_tvalid;
  wire [31:0]SLOT_3_AXI_araddr;
  wire [3:0]SLOT_3_AXI_arcache;
  wire [7:0]SLOT_3_AXI_arlen;
  wire [2:0]SLOT_3_AXI_arprot;
  wire SLOT_3_AXI_arready;
  wire [2:0]SLOT_3_AXI_arsize;
  wire SLOT_3_AXI_arvalid;
  wire [31:0]SLOT_3_AXI_awaddr;
  wire [3:0]SLOT_3_AXI_awcache;
  wire [7:0]SLOT_3_AXI_awlen;
  wire [2:0]SLOT_3_AXI_awprot;
  wire SLOT_3_AXI_awready;
  wire [2:0]SLOT_3_AXI_awsize;
  wire SLOT_3_AXI_awvalid;
  wire SLOT_3_AXI_bready;
  wire [1:0]SLOT_3_AXI_bresp;
  wire SLOT_3_AXI_bvalid;
  wire [63:0]SLOT_3_AXI_rdata;
  wire SLOT_3_AXI_rlast;
  wire SLOT_3_AXI_rready;
  wire SLOT_3_AXI_rvalid;
  wire [63:0]SLOT_3_AXI_wdata;
  wire SLOT_3_AXI_wlast;
  wire SLOT_3_AXI_wready;
  wire [7:0]SLOT_3_AXI_wstrb;
  wire SLOT_3_AXI_wvalid;
  wire [23:0]SLOT_4_AXIS_tdata;
  wire [2:0]SLOT_4_AXIS_tkeep;
  wire SLOT_4_AXIS_tlast;
  wire SLOT_4_AXIS_tready;
  wire [0:0]SLOT_4_AXIS_tuser;
  wire SLOT_4_AXIS_tvalid;
  wire [31:0]SLOT_5_AXI_araddr;
  wire [3:0]SLOT_5_AXI_arcache;
  wire [7:0]SLOT_5_AXI_arlen;
  wire [2:0]SLOT_5_AXI_arprot;
  wire SLOT_5_AXI_arready;
  wire [2:0]SLOT_5_AXI_arsize;
  wire SLOT_5_AXI_arvalid;
  wire [31:0]SLOT_5_AXI_awaddr;
  wire [3:0]SLOT_5_AXI_awcache;
  wire [7:0]SLOT_5_AXI_awlen;
  wire [2:0]SLOT_5_AXI_awprot;
  wire SLOT_5_AXI_awready;
  wire [2:0]SLOT_5_AXI_awsize;
  wire SLOT_5_AXI_awvalid;
  wire SLOT_5_AXI_bready;
  wire [1:0]SLOT_5_AXI_bresp;
  wire SLOT_5_AXI_bvalid;
  wire [63:0]SLOT_5_AXI_rdata;
  wire SLOT_5_AXI_rlast;
  wire SLOT_5_AXI_rready;
  wire SLOT_5_AXI_rvalid;
  wire [63:0]SLOT_5_AXI_wdata;
  wire SLOT_5_AXI_wlast;
  wire SLOT_5_AXI_wready;
  wire [7:0]SLOT_5_AXI_wstrb;
  wire SLOT_5_AXI_wvalid;
  wire [31:0]SLOT_6_AXI_araddr;
  wire [3:0]SLOT_6_AXI_arcache;
  wire [7:0]SLOT_6_AXI_arlen;
  wire [2:0]SLOT_6_AXI_arprot;
  wire SLOT_6_AXI_arready;
  wire [2:0]SLOT_6_AXI_arsize;
  wire SLOT_6_AXI_arvalid;
  wire [31:0]SLOT_6_AXI_awaddr;
  wire [3:0]SLOT_6_AXI_awcache;
  wire [7:0]SLOT_6_AXI_awlen;
  wire [2:0]SLOT_6_AXI_awprot;
  wire SLOT_6_AXI_awready;
  wire [2:0]SLOT_6_AXI_awsize;
  wire SLOT_6_AXI_awvalid;
  wire SLOT_6_AXI_bready;
  wire SLOT_6_AXI_bvalid;
  wire [63:0]SLOT_6_AXI_rdata;
  wire SLOT_6_AXI_rlast;
  wire SLOT_6_AXI_rready;
  wire [1:0]SLOT_6_AXI_rresp;
  wire SLOT_6_AXI_rvalid;
  wire [63:0]SLOT_6_AXI_wdata;
  wire SLOT_6_AXI_wlast;
  wire SLOT_6_AXI_wready;
  wire SLOT_6_AXI_wvalid;
  wire [31:0]SLOT_7_AXI_araddr;
  wire [1:0]SLOT_7_AXI_arcache;
  wire [7:0]SLOT_7_AXI_arlen;
  wire [2:0]SLOT_7_AXI_arprot;
  wire SLOT_7_AXI_arready;
  wire [2:0]SLOT_7_AXI_arsize;
  wire SLOT_7_AXI_arvalid;
  wire [31:0]SLOT_7_AXI_awaddr;
  wire [3:0]SLOT_7_AXI_awcache;
  wire [7:0]SLOT_7_AXI_awlen;
  wire [2:0]SLOT_7_AXI_awprot;
  wire SLOT_7_AXI_awready;
  wire [2:0]SLOT_7_AXI_awsize;
  wire SLOT_7_AXI_awvalid;
  wire SLOT_7_AXI_bready;
  wire SLOT_7_AXI_bvalid;
  wire [63:0]SLOT_7_AXI_rdata;
  wire SLOT_7_AXI_rlast;
  wire SLOT_7_AXI_rready;
  wire [1:0]SLOT_7_AXI_rresp;
  wire SLOT_7_AXI_rvalid;
  wire [63:0]SLOT_7_AXI_wdata;
  wire SLOT_7_AXI_wlast;
  wire SLOT_7_AXI_wready;
  wire SLOT_7_AXI_wvalid;
  wire [23:0]SLOT_8_AXIS_tdata;
  wire [0:0]SLOT_8_AXIS_tdest;
  wire [0:0]SLOT_8_AXIS_tid;
  wire [2:0]SLOT_8_AXIS_tkeep;
  wire SLOT_8_AXIS_tlast;
  wire SLOT_8_AXIS_tready;
  wire [2:0]SLOT_8_AXIS_tstrb;
  wire [0:0]SLOT_8_AXIS_tuser;
  wire SLOT_8_AXIS_tvalid;
  wire [23:0]SLOT_9_AXIS_tdata;
  wire SLOT_9_AXIS_tlast;
  wire SLOT_9_AXIS_tready;
  wire [0:0]SLOT_9_AXIS_tuser;
  wire SLOT_9_AXIS_tvalid;
  wire clk;
  wire [0:0]probe0;
  wire [0:0]probe1;
  wire resetn;

  bd_1579 bd_1579_i
       (.SLOT_0_AXI_araddr(SLOT_0_AXI_araddr),
        .SLOT_0_AXI_arcache(SLOT_0_AXI_arcache),
        .SLOT_0_AXI_arid(SLOT_0_AXI_arid),
        .SLOT_0_AXI_arlen(SLOT_0_AXI_arlen),
        .SLOT_0_AXI_arprot(SLOT_0_AXI_arprot),
        .SLOT_0_AXI_arready(SLOT_0_AXI_arready),
        .SLOT_0_AXI_arsize(SLOT_0_AXI_arsize),
        .SLOT_0_AXI_arvalid(SLOT_0_AXI_arvalid),
        .SLOT_0_AXI_awaddr(SLOT_0_AXI_awaddr),
        .SLOT_0_AXI_awcache(SLOT_0_AXI_awcache),
        .SLOT_0_AXI_awid(SLOT_0_AXI_awid),
        .SLOT_0_AXI_awlen(SLOT_0_AXI_awlen),
        .SLOT_0_AXI_awprot(SLOT_0_AXI_awprot),
        .SLOT_0_AXI_awready(SLOT_0_AXI_awready),
        .SLOT_0_AXI_awsize(SLOT_0_AXI_awsize),
        .SLOT_0_AXI_awvalid(SLOT_0_AXI_awvalid),
        .SLOT_0_AXI_bid(SLOT_0_AXI_bid),
        .SLOT_0_AXI_bready(SLOT_0_AXI_bready),
        .SLOT_0_AXI_bresp(SLOT_0_AXI_bresp),
        .SLOT_0_AXI_bvalid(SLOT_0_AXI_bvalid),
        .SLOT_0_AXI_rdata(SLOT_0_AXI_rdata),
        .SLOT_0_AXI_rid(SLOT_0_AXI_rid),
        .SLOT_0_AXI_rlast(SLOT_0_AXI_rlast),
        .SLOT_0_AXI_rready(SLOT_0_AXI_rready),
        .SLOT_0_AXI_rresp(SLOT_0_AXI_rresp),
        .SLOT_0_AXI_rvalid(SLOT_0_AXI_rvalid),
        .SLOT_0_AXI_wdata(SLOT_0_AXI_wdata),
        .SLOT_0_AXI_wid(SLOT_0_AXI_wid),
        .SLOT_0_AXI_wlast(SLOT_0_AXI_wlast),
        .SLOT_0_AXI_wready(SLOT_0_AXI_wready),
        .SLOT_0_AXI_wstrb(SLOT_0_AXI_wstrb),
        .SLOT_0_AXI_wvalid(SLOT_0_AXI_wvalid),
        .SLOT_10_AXIS_tdata(SLOT_10_AXIS_tdata),
        .SLOT_10_AXIS_tlast(SLOT_10_AXIS_tlast),
        .SLOT_10_AXIS_tready(SLOT_10_AXIS_tready),
        .SLOT_10_AXIS_tuser(SLOT_10_AXIS_tuser),
        .SLOT_10_AXIS_tvalid(SLOT_10_AXIS_tvalid),
        .SLOT_1_AXI_araddr(SLOT_1_AXI_araddr),
        .SLOT_1_AXI_arcache(SLOT_1_AXI_arcache),
        .SLOT_1_AXI_arid(SLOT_1_AXI_arid),
        .SLOT_1_AXI_arlen(SLOT_1_AXI_arlen),
        .SLOT_1_AXI_arprot(SLOT_1_AXI_arprot),
        .SLOT_1_AXI_arready(SLOT_1_AXI_arready),
        .SLOT_1_AXI_arsize(SLOT_1_AXI_arsize),
        .SLOT_1_AXI_arvalid(SLOT_1_AXI_arvalid),
        .SLOT_1_AXI_awaddr(SLOT_1_AXI_awaddr),
        .SLOT_1_AXI_awcache(SLOT_1_AXI_awcache),
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
        .SLOT_2_AXIS_tdata(SLOT_2_AXIS_tdata),
        .SLOT_2_AXIS_tkeep(SLOT_2_AXIS_tkeep),
        .SLOT_2_AXIS_tlast(SLOT_2_AXIS_tlast),
        .SLOT_2_AXIS_tready(SLOT_2_AXIS_tready),
        .SLOT_2_AXIS_tuser(SLOT_2_AXIS_tuser),
        .SLOT_2_AXIS_tvalid(SLOT_2_AXIS_tvalid),
        .SLOT_3_AXI_araddr(SLOT_3_AXI_araddr),
        .SLOT_3_AXI_arcache(SLOT_3_AXI_arcache),
        .SLOT_3_AXI_arlen(SLOT_3_AXI_arlen),
        .SLOT_3_AXI_arprot(SLOT_3_AXI_arprot),
        .SLOT_3_AXI_arready(SLOT_3_AXI_arready),
        .SLOT_3_AXI_arsize(SLOT_3_AXI_arsize),
        .SLOT_3_AXI_arvalid(SLOT_3_AXI_arvalid),
        .SLOT_3_AXI_awaddr(SLOT_3_AXI_awaddr),
        .SLOT_3_AXI_awcache(SLOT_3_AXI_awcache),
        .SLOT_3_AXI_awlen(SLOT_3_AXI_awlen),
        .SLOT_3_AXI_awprot(SLOT_3_AXI_awprot),
        .SLOT_3_AXI_awready(SLOT_3_AXI_awready),
        .SLOT_3_AXI_awsize(SLOT_3_AXI_awsize),
        .SLOT_3_AXI_awvalid(SLOT_3_AXI_awvalid),
        .SLOT_3_AXI_bready(SLOT_3_AXI_bready),
        .SLOT_3_AXI_bresp(SLOT_3_AXI_bresp),
        .SLOT_3_AXI_bvalid(SLOT_3_AXI_bvalid),
        .SLOT_3_AXI_rdata(SLOT_3_AXI_rdata),
        .SLOT_3_AXI_rlast(SLOT_3_AXI_rlast),
        .SLOT_3_AXI_rready(SLOT_3_AXI_rready),
        .SLOT_3_AXI_rvalid(SLOT_3_AXI_rvalid),
        .SLOT_3_AXI_wdata(SLOT_3_AXI_wdata),
        .SLOT_3_AXI_wlast(SLOT_3_AXI_wlast),
        .SLOT_3_AXI_wready(SLOT_3_AXI_wready),
        .SLOT_3_AXI_wstrb(SLOT_3_AXI_wstrb),
        .SLOT_3_AXI_wvalid(SLOT_3_AXI_wvalid),
        .SLOT_4_AXIS_tdata(SLOT_4_AXIS_tdata),
        .SLOT_4_AXIS_tkeep(SLOT_4_AXIS_tkeep),
        .SLOT_4_AXIS_tlast(SLOT_4_AXIS_tlast),
        .SLOT_4_AXIS_tready(SLOT_4_AXIS_tready),
        .SLOT_4_AXIS_tuser(SLOT_4_AXIS_tuser),
        .SLOT_4_AXIS_tvalid(SLOT_4_AXIS_tvalid),
        .SLOT_5_AXI_araddr(SLOT_5_AXI_araddr),
        .SLOT_5_AXI_arcache(SLOT_5_AXI_arcache),
        .SLOT_5_AXI_arlen(SLOT_5_AXI_arlen),
        .SLOT_5_AXI_arprot(SLOT_5_AXI_arprot),
        .SLOT_5_AXI_arready(SLOT_5_AXI_arready),
        .SLOT_5_AXI_arsize(SLOT_5_AXI_arsize),
        .SLOT_5_AXI_arvalid(SLOT_5_AXI_arvalid),
        .SLOT_5_AXI_awaddr(SLOT_5_AXI_awaddr),
        .SLOT_5_AXI_awcache(SLOT_5_AXI_awcache),
        .SLOT_5_AXI_awlen(SLOT_5_AXI_awlen),
        .SLOT_5_AXI_awprot(SLOT_5_AXI_awprot),
        .SLOT_5_AXI_awready(SLOT_5_AXI_awready),
        .SLOT_5_AXI_awsize(SLOT_5_AXI_awsize),
        .SLOT_5_AXI_awvalid(SLOT_5_AXI_awvalid),
        .SLOT_5_AXI_bready(SLOT_5_AXI_bready),
        .SLOT_5_AXI_bresp(SLOT_5_AXI_bresp),
        .SLOT_5_AXI_bvalid(SLOT_5_AXI_bvalid),
        .SLOT_5_AXI_rdata(SLOT_5_AXI_rdata),
        .SLOT_5_AXI_rlast(SLOT_5_AXI_rlast),
        .SLOT_5_AXI_rready(SLOT_5_AXI_rready),
        .SLOT_5_AXI_rvalid(SLOT_5_AXI_rvalid),
        .SLOT_5_AXI_wdata(SLOT_5_AXI_wdata),
        .SLOT_5_AXI_wlast(SLOT_5_AXI_wlast),
        .SLOT_5_AXI_wready(SLOT_5_AXI_wready),
        .SLOT_5_AXI_wstrb(SLOT_5_AXI_wstrb),
        .SLOT_5_AXI_wvalid(SLOT_5_AXI_wvalid),
        .SLOT_6_AXI_araddr(SLOT_6_AXI_araddr),
        .SLOT_6_AXI_arcache(SLOT_6_AXI_arcache),
        .SLOT_6_AXI_arlen(SLOT_6_AXI_arlen),
        .SLOT_6_AXI_arprot(SLOT_6_AXI_arprot),
        .SLOT_6_AXI_arready(SLOT_6_AXI_arready),
        .SLOT_6_AXI_arsize(SLOT_6_AXI_arsize),
        .SLOT_6_AXI_arvalid(SLOT_6_AXI_arvalid),
        .SLOT_6_AXI_awaddr(SLOT_6_AXI_awaddr),
        .SLOT_6_AXI_awcache(SLOT_6_AXI_awcache),
        .SLOT_6_AXI_awlen(SLOT_6_AXI_awlen),
        .SLOT_6_AXI_awprot(SLOT_6_AXI_awprot),
        .SLOT_6_AXI_awready(SLOT_6_AXI_awready),
        .SLOT_6_AXI_awsize(SLOT_6_AXI_awsize),
        .SLOT_6_AXI_awvalid(SLOT_6_AXI_awvalid),
        .SLOT_6_AXI_bready(SLOT_6_AXI_bready),
        .SLOT_6_AXI_bvalid(SLOT_6_AXI_bvalid),
        .SLOT_6_AXI_rdata(SLOT_6_AXI_rdata),
        .SLOT_6_AXI_rlast(SLOT_6_AXI_rlast),
        .SLOT_6_AXI_rready(SLOT_6_AXI_rready),
        .SLOT_6_AXI_rresp(SLOT_6_AXI_rresp),
        .SLOT_6_AXI_rvalid(SLOT_6_AXI_rvalid),
        .SLOT_6_AXI_wdata(SLOT_6_AXI_wdata),
        .SLOT_6_AXI_wlast(SLOT_6_AXI_wlast),
        .SLOT_6_AXI_wready(SLOT_6_AXI_wready),
        .SLOT_6_AXI_wvalid(SLOT_6_AXI_wvalid),
        .SLOT_7_AXI_araddr(SLOT_7_AXI_araddr),
        .SLOT_7_AXI_arcache(SLOT_7_AXI_arcache),
        .SLOT_7_AXI_arlen(SLOT_7_AXI_arlen),
        .SLOT_7_AXI_arprot(SLOT_7_AXI_arprot),
        .SLOT_7_AXI_arready(SLOT_7_AXI_arready),
        .SLOT_7_AXI_arsize(SLOT_7_AXI_arsize),
        .SLOT_7_AXI_arvalid(SLOT_7_AXI_arvalid),
        .SLOT_7_AXI_awaddr(SLOT_7_AXI_awaddr),
        .SLOT_7_AXI_awcache(SLOT_7_AXI_awcache),
        .SLOT_7_AXI_awlen(SLOT_7_AXI_awlen),
        .SLOT_7_AXI_awprot(SLOT_7_AXI_awprot),
        .SLOT_7_AXI_awready(SLOT_7_AXI_awready),
        .SLOT_7_AXI_awsize(SLOT_7_AXI_awsize),
        .SLOT_7_AXI_awvalid(SLOT_7_AXI_awvalid),
        .SLOT_7_AXI_bready(SLOT_7_AXI_bready),
        .SLOT_7_AXI_bvalid(SLOT_7_AXI_bvalid),
        .SLOT_7_AXI_rdata(SLOT_7_AXI_rdata),
        .SLOT_7_AXI_rlast(SLOT_7_AXI_rlast),
        .SLOT_7_AXI_rready(SLOT_7_AXI_rready),
        .SLOT_7_AXI_rresp(SLOT_7_AXI_rresp),
        .SLOT_7_AXI_rvalid(SLOT_7_AXI_rvalid),
        .SLOT_7_AXI_wdata(SLOT_7_AXI_wdata),
        .SLOT_7_AXI_wlast(SLOT_7_AXI_wlast),
        .SLOT_7_AXI_wready(SLOT_7_AXI_wready),
        .SLOT_7_AXI_wvalid(SLOT_7_AXI_wvalid),
        .SLOT_8_AXIS_tdata(SLOT_8_AXIS_tdata),
        .SLOT_8_AXIS_tdest(SLOT_8_AXIS_tdest),
        .SLOT_8_AXIS_tid(SLOT_8_AXIS_tid),
        .SLOT_8_AXIS_tkeep(SLOT_8_AXIS_tkeep),
        .SLOT_8_AXIS_tlast(SLOT_8_AXIS_tlast),
        .SLOT_8_AXIS_tready(SLOT_8_AXIS_tready),
        .SLOT_8_AXIS_tstrb(SLOT_8_AXIS_tstrb),
        .SLOT_8_AXIS_tuser(SLOT_8_AXIS_tuser),
        .SLOT_8_AXIS_tvalid(SLOT_8_AXIS_tvalid),
        .SLOT_9_AXIS_tdata(SLOT_9_AXIS_tdata),
        .SLOT_9_AXIS_tlast(SLOT_9_AXIS_tlast),
        .SLOT_9_AXIS_tready(SLOT_9_AXIS_tready),
        .SLOT_9_AXIS_tuser(SLOT_9_AXIS_tuser),
        .SLOT_9_AXIS_tvalid(SLOT_9_AXIS_tvalid),
        .clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .resetn(resetn));
endmodule
