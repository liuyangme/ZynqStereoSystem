//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_1579.bd
//Design : bd_1579
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_1579,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_1579,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=32,numReposBlks=32,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "system_system_ila_0_1.hwdef" *) 
module bd_1579
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI3, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_0_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE" *) input [3:0]SLOT_0_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARID" *) input [0:0]SLOT_0_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN" *) input [3:0]SLOT_0_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT" *) input [2:0]SLOT_0_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *) input SLOT_0_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE" *) input [2:0]SLOT_0_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *) input SLOT_0_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *) input [31:0]SLOT_0_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE" *) input [3:0]SLOT_0_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWID" *) input [0:0]SLOT_0_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN" *) input [3:0]SLOT_0_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT" *) input [2:0]SLOT_0_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *) input SLOT_0_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE" *) input [2:0]SLOT_0_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *) input SLOT_0_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BID" *) input [0:0]SLOT_0_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *) input SLOT_0_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP" *) input [1:0]SLOT_0_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *) input SLOT_0_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *) input [63:0]SLOT_0_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RID" *) input [0:0]SLOT_0_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST" *) input SLOT_0_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *) input SLOT_0_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP" *) input [1:0]SLOT_0_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *) input SLOT_0_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *) input [63:0]SLOT_0_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WID" *) input [0:0]SLOT_0_AXI_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST" *) input SLOT_0_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *) input SLOT_0_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB" *) input [7:0]SLOT_0_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *) input SLOT_0_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_10_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_10_AXIS, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [23:0]SLOT_10_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_10_AXIS TLAST" *) input SLOT_10_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_10_AXIS TREADY" *) input SLOT_10_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_10_AXIS TUSER" *) input [0:0]SLOT_10_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_10_AXIS TVALID" *) input SLOT_10_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI3, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_1_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARCACHE" *) input [3:0]SLOT_1_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARID" *) input [0:0]SLOT_1_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARLEN" *) input [3:0]SLOT_1_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARPROT" *) input [2:0]SLOT_1_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARREADY" *) input SLOT_1_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARSIZE" *) input [2:0]SLOT_1_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARVALID" *) input SLOT_1_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWADDR" *) input [31:0]SLOT_1_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWCACHE" *) input [3:0]SLOT_1_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWID" *) input [0:0]SLOT_1_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWLEN" *) input [3:0]SLOT_1_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWPROT" *) input [2:0]SLOT_1_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWREADY" *) input SLOT_1_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWSIZE" *) input [2:0]SLOT_1_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWVALID" *) input SLOT_1_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BID" *) input [0:0]SLOT_1_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BREADY" *) input SLOT_1_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BRESP" *) input [1:0]SLOT_1_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BVALID" *) input SLOT_1_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RDATA" *) input [63:0]SLOT_1_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RID" *) input [0:0]SLOT_1_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RLAST" *) input SLOT_1_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RREADY" *) input SLOT_1_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RRESP" *) input [1:0]SLOT_1_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RVALID" *) input SLOT_1_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WDATA" *) input [63:0]SLOT_1_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WID" *) input [0:0]SLOT_1_AXI_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WLAST" *) input SLOT_1_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WREADY" *) input SLOT_1_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WSTRB" *) input [7:0]SLOT_1_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WVALID" *) input SLOT_1_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXIS, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [23:0]SLOT_2_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TKEEP" *) input [2:0]SLOT_2_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TLAST" *) input SLOT_2_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TREADY" *) input SLOT_2_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TUSER" *) input [0:0]SLOT_2_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TVALID" *) input SLOT_2_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 128, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_3_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE" *) input [3:0]SLOT_3_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN" *) input [7:0]SLOT_3_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT" *) input [2:0]SLOT_3_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY" *) input SLOT_3_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE" *) input [2:0]SLOT_3_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID" *) input SLOT_3_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR" *) input [31:0]SLOT_3_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE" *) input [3:0]SLOT_3_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN" *) input [7:0]SLOT_3_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT" *) input [2:0]SLOT_3_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY" *) input SLOT_3_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE" *) input [2:0]SLOT_3_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID" *) input SLOT_3_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY" *) input SLOT_3_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP" *) input [1:0]SLOT_3_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID" *) input SLOT_3_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA" *) input [63:0]SLOT_3_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST" *) input SLOT_3_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY" *) input SLOT_3_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID" *) input SLOT_3_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA" *) input [63:0]SLOT_3_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST" *) input SLOT_3_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY" *) input SLOT_3_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB" *) input [7:0]SLOT_3_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID" *) input SLOT_3_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_4_AXIS, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [23:0]SLOT_4_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TKEEP" *) input [2:0]SLOT_4_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TLAST" *) input SLOT_4_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TREADY" *) input SLOT_4_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TUSER" *) input [0:0]SLOT_4_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TVALID" *) input SLOT_4_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_5_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 128, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_5_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARCACHE" *) input [3:0]SLOT_5_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARLEN" *) input [7:0]SLOT_5_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARPROT" *) input [2:0]SLOT_5_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARREADY" *) input SLOT_5_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARSIZE" *) input [2:0]SLOT_5_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARVALID" *) input SLOT_5_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWADDR" *) input [31:0]SLOT_5_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWCACHE" *) input [3:0]SLOT_5_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWLEN" *) input [7:0]SLOT_5_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWPROT" *) input [2:0]SLOT_5_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWREADY" *) input SLOT_5_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWSIZE" *) input [2:0]SLOT_5_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWVALID" *) input SLOT_5_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BREADY" *) input SLOT_5_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BRESP" *) input [1:0]SLOT_5_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BVALID" *) input SLOT_5_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RDATA" *) input [63:0]SLOT_5_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RLAST" *) input SLOT_5_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RREADY" *) input SLOT_5_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RVALID" *) input SLOT_5_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WDATA" *) input [63:0]SLOT_5_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WLAST" *) input SLOT_5_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WREADY" *) input SLOT_5_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WSTRB" *) input [7:0]SLOT_5_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WVALID" *) input SLOT_5_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_6_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 0, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 128, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_6_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARCACHE" *) input [3:0]SLOT_6_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARLEN" *) input [7:0]SLOT_6_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARPROT" *) input [2:0]SLOT_6_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARREADY" *) input SLOT_6_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARSIZE" *) input [2:0]SLOT_6_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARVALID" *) input SLOT_6_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWADDR" *) input [31:0]SLOT_6_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWCACHE" *) input [3:0]SLOT_6_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWLEN" *) input [7:0]SLOT_6_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWPROT" *) input [2:0]SLOT_6_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWREADY" *) input SLOT_6_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWSIZE" *) input [2:0]SLOT_6_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWVALID" *) input SLOT_6_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI BREADY" *) input SLOT_6_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI BVALID" *) input SLOT_6_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RDATA" *) input [63:0]SLOT_6_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RLAST" *) input SLOT_6_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RREADY" *) input SLOT_6_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RRESP" *) input [1:0]SLOT_6_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RVALID" *) input SLOT_6_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WDATA" *) input [63:0]SLOT_6_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WLAST" *) input SLOT_6_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WREADY" *) input SLOT_6_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WVALID" *) input SLOT_6_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_7_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 0, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 128, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_7_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARCACHE" *) input [1:0]SLOT_7_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARLEN" *) input [7:0]SLOT_7_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARPROT" *) input [2:0]SLOT_7_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARREADY" *) input SLOT_7_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARSIZE" *) input [2:0]SLOT_7_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARVALID" *) input SLOT_7_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWADDR" *) input [31:0]SLOT_7_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWCACHE" *) input [3:0]SLOT_7_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWLEN" *) input [7:0]SLOT_7_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWPROT" *) input [2:0]SLOT_7_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWREADY" *) input SLOT_7_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWSIZE" *) input [2:0]SLOT_7_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWVALID" *) input SLOT_7_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI BREADY" *) input SLOT_7_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI BVALID" *) input SLOT_7_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI RDATA" *) input [63:0]SLOT_7_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI RLAST" *) input SLOT_7_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI RREADY" *) input SLOT_7_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI RRESP" *) input [1:0]SLOT_7_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI RVALID" *) input SLOT_7_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI WDATA" *) input [63:0]SLOT_7_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI WLAST" *) input SLOT_7_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI WREADY" *) input SLOT_7_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI WVALID" *) input SLOT_7_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_8_AXIS, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [23:0]SLOT_8_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TDEST" *) input [0:0]SLOT_8_AXIS_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TID" *) input [0:0]SLOT_8_AXIS_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TKEEP" *) input [2:0]SLOT_8_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TLAST" *) input SLOT_8_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TREADY" *) input SLOT_8_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TSTRB" *) input [2:0]SLOT_8_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TUSER" *) input [0:0]SLOT_8_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TVALID" *) input SLOT_8_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_9_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_9_AXIS, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [23:0]SLOT_9_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_9_AXIS TLAST" *) input SLOT_9_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_9_AXIS TREADY" *) input SLOT_9_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_9_AXIS TUSER" *) input [0:0]SLOT_9_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_9_AXIS TVALID" *) input SLOT_9_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_10_AXIS:SLOT_1_AXI:SLOT_2_AXIS:SLOT_3_AXI:SLOT_4_AXIS:SLOT_5_AXI:SLOT_6_AXI:SLOT_7_AXI:SLOT_8_AXIS:SLOT_9_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [23:0]Conn10_TDATA;
  wire Conn10_TLAST;
  wire Conn10_TREADY;
  wire [0:0]Conn10_TUSER;
  wire Conn10_TVALID;
  wire [31:0]Conn1_ARADDR;
  wire [3:0]Conn1_ARCACHE;
  wire [0:0]Conn1_ARID;
  wire [3:0]Conn1_ARLEN;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [3:0]Conn1_AWCACHE;
  wire [0:0]Conn1_AWID;
  wire [3:0]Conn1_AWLEN;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire [0:0]Conn1_BID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [63:0]Conn1_RDATA;
  wire [0:0]Conn1_RID;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [63:0]Conn1_WDATA;
  wire [0:0]Conn1_WID;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [7:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [23:0]Conn2_TDATA;
  wire [2:0]Conn2_TKEEP;
  wire Conn2_TLAST;
  wire Conn2_TREADY;
  wire [0:0]Conn2_TUSER;
  wire Conn2_TVALID;
  wire [31:0]Conn3_ARADDR;
  wire [3:0]Conn3_ARCACHE;
  wire [7:0]Conn3_ARLEN;
  wire [2:0]Conn3_ARPROT;
  wire Conn3_ARREADY;
  wire [2:0]Conn3_ARSIZE;
  wire Conn3_ARVALID;
  wire [31:0]Conn3_AWADDR;
  wire [3:0]Conn3_AWCACHE;
  wire [7:0]Conn3_AWLEN;
  wire [2:0]Conn3_AWPROT;
  wire Conn3_AWREADY;
  wire [2:0]Conn3_AWSIZE;
  wire Conn3_AWVALID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [63:0]Conn3_RDATA;
  wire Conn3_RLAST;
  wire Conn3_RREADY;
  wire Conn3_RVALID;
  wire [63:0]Conn3_WDATA;
  wire Conn3_WLAST;
  wire Conn3_WREADY;
  wire [7:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [23:0]Conn4_TDATA;
  wire [2:0]Conn4_TKEEP;
  wire Conn4_TLAST;
  wire Conn4_TREADY;
  wire [0:0]Conn4_TUSER;
  wire Conn4_TVALID;
  wire [31:0]Conn5_ARADDR;
  wire [3:0]Conn5_ARCACHE;
  wire [7:0]Conn5_ARLEN;
  wire [2:0]Conn5_ARPROT;
  wire Conn5_ARREADY;
  wire [2:0]Conn5_ARSIZE;
  wire Conn5_ARVALID;
  wire [31:0]Conn5_AWADDR;
  wire [3:0]Conn5_AWCACHE;
  wire [7:0]Conn5_AWLEN;
  wire [2:0]Conn5_AWPROT;
  wire Conn5_AWREADY;
  wire [2:0]Conn5_AWSIZE;
  wire Conn5_AWVALID;
  wire Conn5_BREADY;
  wire [1:0]Conn5_BRESP;
  wire Conn5_BVALID;
  wire [63:0]Conn5_RDATA;
  wire Conn5_RLAST;
  wire Conn5_RREADY;
  wire Conn5_RVALID;
  wire [63:0]Conn5_WDATA;
  wire Conn5_WLAST;
  wire Conn5_WREADY;
  wire [7:0]Conn5_WSTRB;
  wire Conn5_WVALID;
  wire [31:0]Conn6_ARADDR;
  wire [3:0]Conn6_ARCACHE;
  wire [7:0]Conn6_ARLEN;
  wire [2:0]Conn6_ARPROT;
  wire Conn6_ARREADY;
  wire [2:0]Conn6_ARSIZE;
  wire Conn6_ARVALID;
  wire [31:0]Conn6_AWADDR;
  wire [3:0]Conn6_AWCACHE;
  wire [7:0]Conn6_AWLEN;
  wire [2:0]Conn6_AWPROT;
  wire Conn6_AWREADY;
  wire [2:0]Conn6_AWSIZE;
  wire Conn6_AWVALID;
  wire Conn6_BREADY;
  wire Conn6_BVALID;
  wire [63:0]Conn6_RDATA;
  wire Conn6_RLAST;
  wire Conn6_RREADY;
  wire [1:0]Conn6_RRESP;
  wire Conn6_RVALID;
  wire [63:0]Conn6_WDATA;
  wire Conn6_WLAST;
  wire Conn6_WREADY;
  wire Conn6_WVALID;
  wire [31:0]Conn7_ARADDR;
  wire [1:0]Conn7_ARCACHE;
  wire [7:0]Conn7_ARLEN;
  wire [2:0]Conn7_ARPROT;
  wire Conn7_ARREADY;
  wire [2:0]Conn7_ARSIZE;
  wire Conn7_ARVALID;
  wire [31:0]Conn7_AWADDR;
  wire [3:0]Conn7_AWCACHE;
  wire [7:0]Conn7_AWLEN;
  wire [2:0]Conn7_AWPROT;
  wire Conn7_AWREADY;
  wire [2:0]Conn7_AWSIZE;
  wire Conn7_AWVALID;
  wire Conn7_BREADY;
  wire Conn7_BVALID;
  wire [63:0]Conn7_RDATA;
  wire Conn7_RLAST;
  wire Conn7_RREADY;
  wire [1:0]Conn7_RRESP;
  wire Conn7_RVALID;
  wire [63:0]Conn7_WDATA;
  wire Conn7_WLAST;
  wire Conn7_WREADY;
  wire Conn7_WVALID;
  wire [23:0]Conn8_TDATA;
  wire [0:0]Conn8_TDEST;
  wire [0:0]Conn8_TID;
  wire [2:0]Conn8_TKEEP;
  wire Conn8_TLAST;
  wire Conn8_TREADY;
  wire [2:0]Conn8_TSTRB;
  wire [0:0]Conn8_TUSER;
  wire Conn8_TVALID;
  wire [23:0]Conn9_TDATA;
  wire Conn9_TLAST;
  wire Conn9_TREADY;
  wire [0:0]Conn9_TUSER;
  wire Conn9_TVALID;
  wire [31:0]Conn_ARADDR;
  wire [3:0]Conn_ARCACHE;
  wire [0:0]Conn_ARID;
  wire [3:0]Conn_ARLEN;
  wire [2:0]Conn_ARPROT;
  wire Conn_ARREADY;
  wire [2:0]Conn_ARSIZE;
  wire Conn_ARVALID;
  wire [31:0]Conn_AWADDR;
  wire [3:0]Conn_AWCACHE;
  wire [0:0]Conn_AWID;
  wire [3:0]Conn_AWLEN;
  wire [2:0]Conn_AWPROT;
  wire Conn_AWREADY;
  wire [2:0]Conn_AWSIZE;
  wire Conn_AWVALID;
  wire [0:0]Conn_BID;
  wire Conn_BREADY;
  wire [1:0]Conn_BRESP;
  wire Conn_BVALID;
  wire [63:0]Conn_RDATA;
  wire [0:0]Conn_RID;
  wire Conn_RLAST;
  wire Conn_RREADY;
  wire [1:0]Conn_RRESP;
  wire Conn_RVALID;
  wire [63:0]Conn_WDATA;
  wire [0:0]Conn_WID;
  wire Conn_WLAST;
  wire Conn_WREADY;
  wire [7:0]Conn_WSTRB;
  wire Conn_WVALID;
  wire clk_1;
  wire [1:0]net_slot_0_axi_ar_cnt;
  wire [1:0]net_slot_0_axi_ar_ctrl;
  wire [31:0]net_slot_0_axi_araddr;
  wire [3:0]net_slot_0_axi_arcache;
  wire [0:0]net_slot_0_axi_arid;
  wire [3:0]net_slot_0_axi_arlen;
  wire [2:0]net_slot_0_axi_arprot;
  wire net_slot_0_axi_arready;
  wire [2:0]net_slot_0_axi_arsize;
  wire net_slot_0_axi_arvalid;
  wire [1:0]net_slot_0_axi_aw_cnt;
  wire [1:0]net_slot_0_axi_aw_ctrl;
  wire [31:0]net_slot_0_axi_awaddr;
  wire [3:0]net_slot_0_axi_awcache;
  wire [0:0]net_slot_0_axi_awid;
  wire [3:0]net_slot_0_axi_awlen;
  wire [2:0]net_slot_0_axi_awprot;
  wire net_slot_0_axi_awready;
  wire [2:0]net_slot_0_axi_awsize;
  wire net_slot_0_axi_awvalid;
  wire [1:0]net_slot_0_axi_b_cnt;
  wire [1:0]net_slot_0_axi_b_ctrl;
  wire [0:0]net_slot_0_axi_bid;
  wire net_slot_0_axi_bready;
  wire [1:0]net_slot_0_axi_bresp;
  wire net_slot_0_axi_bvalid;
  wire [1:0]net_slot_0_axi_r_cnt;
  wire [2:0]net_slot_0_axi_r_ctrl;
  wire [63:0]net_slot_0_axi_rdata;
  wire [0:0]net_slot_0_axi_rid;
  wire net_slot_0_axi_rlast;
  wire net_slot_0_axi_rready;
  wire [1:0]net_slot_0_axi_rresp;
  wire net_slot_0_axi_rvalid;
  wire [2:0]net_slot_0_axi_w_ctrl;
  wire [63:0]net_slot_0_axi_wdata;
  wire [0:0]net_slot_0_axi_wid;
  wire net_slot_0_axi_wlast;
  wire net_slot_0_axi_wready;
  wire [7:0]net_slot_0_axi_wstrb;
  wire net_slot_0_axi_wvalid;
  wire [23:0]net_slot_10_axis_tdata;
  wire net_slot_10_axis_tlast;
  wire net_slot_10_axis_tready;
  wire [0:0]net_slot_10_axis_tuser;
  wire net_slot_10_axis_tvalid;
  wire [1:0]net_slot_1_axi_ar_cnt;
  wire [1:0]net_slot_1_axi_ar_ctrl;
  wire [31:0]net_slot_1_axi_araddr;
  wire [3:0]net_slot_1_axi_arcache;
  wire [0:0]net_slot_1_axi_arid;
  wire [3:0]net_slot_1_axi_arlen;
  wire [2:0]net_slot_1_axi_arprot;
  wire net_slot_1_axi_arready;
  wire [2:0]net_slot_1_axi_arsize;
  wire net_slot_1_axi_arvalid;
  wire [1:0]net_slot_1_axi_aw_cnt;
  wire [1:0]net_slot_1_axi_aw_ctrl;
  wire [31:0]net_slot_1_axi_awaddr;
  wire [3:0]net_slot_1_axi_awcache;
  wire [0:0]net_slot_1_axi_awid;
  wire [3:0]net_slot_1_axi_awlen;
  wire [2:0]net_slot_1_axi_awprot;
  wire net_slot_1_axi_awready;
  wire [2:0]net_slot_1_axi_awsize;
  wire net_slot_1_axi_awvalid;
  wire [1:0]net_slot_1_axi_b_cnt;
  wire [1:0]net_slot_1_axi_b_ctrl;
  wire [0:0]net_slot_1_axi_bid;
  wire net_slot_1_axi_bready;
  wire [1:0]net_slot_1_axi_bresp;
  wire net_slot_1_axi_bvalid;
  wire [1:0]net_slot_1_axi_r_cnt;
  wire [2:0]net_slot_1_axi_r_ctrl;
  wire [63:0]net_slot_1_axi_rdata;
  wire [0:0]net_slot_1_axi_rid;
  wire net_slot_1_axi_rlast;
  wire net_slot_1_axi_rready;
  wire [1:0]net_slot_1_axi_rresp;
  wire net_slot_1_axi_rvalid;
  wire [2:0]net_slot_1_axi_w_ctrl;
  wire [63:0]net_slot_1_axi_wdata;
  wire [0:0]net_slot_1_axi_wid;
  wire net_slot_1_axi_wlast;
  wire net_slot_1_axi_wready;
  wire [7:0]net_slot_1_axi_wstrb;
  wire net_slot_1_axi_wvalid;
  wire [23:0]net_slot_2_axis_tdata;
  wire [2:0]net_slot_2_axis_tkeep;
  wire net_slot_2_axis_tlast;
  wire net_slot_2_axis_tready;
  wire [0:0]net_slot_2_axis_tuser;
  wire net_slot_2_axis_tvalid;
  wire [1:0]net_slot_3_axi_ar_cnt;
  wire [1:0]net_slot_3_axi_ar_ctrl;
  wire [31:0]net_slot_3_axi_araddr;
  wire [3:0]net_slot_3_axi_arcache;
  wire [7:0]net_slot_3_axi_arlen;
  wire [2:0]net_slot_3_axi_arprot;
  wire net_slot_3_axi_arready;
  wire [2:0]net_slot_3_axi_arsize;
  wire net_slot_3_axi_arvalid;
  wire [1:0]net_slot_3_axi_aw_cnt;
  wire [1:0]net_slot_3_axi_aw_ctrl;
  wire [31:0]net_slot_3_axi_awaddr;
  wire [3:0]net_slot_3_axi_awcache;
  wire [7:0]net_slot_3_axi_awlen;
  wire [2:0]net_slot_3_axi_awprot;
  wire net_slot_3_axi_awready;
  wire [2:0]net_slot_3_axi_awsize;
  wire net_slot_3_axi_awvalid;
  wire [1:0]net_slot_3_axi_b_cnt;
  wire [1:0]net_slot_3_axi_b_ctrl;
  wire net_slot_3_axi_bready;
  wire [1:0]net_slot_3_axi_bresp;
  wire net_slot_3_axi_bvalid;
  wire [1:0]net_slot_3_axi_r_cnt;
  wire [2:0]net_slot_3_axi_r_ctrl;
  wire [63:0]net_slot_3_axi_rdata;
  wire net_slot_3_axi_rlast;
  wire net_slot_3_axi_rready;
  wire net_slot_3_axi_rvalid;
  wire [2:0]net_slot_3_axi_w_ctrl;
  wire [63:0]net_slot_3_axi_wdata;
  wire net_slot_3_axi_wlast;
  wire net_slot_3_axi_wready;
  wire [7:0]net_slot_3_axi_wstrb;
  wire net_slot_3_axi_wvalid;
  wire [23:0]net_slot_4_axis_tdata;
  wire [2:0]net_slot_4_axis_tkeep;
  wire net_slot_4_axis_tlast;
  wire net_slot_4_axis_tready;
  wire [0:0]net_slot_4_axis_tuser;
  wire net_slot_4_axis_tvalid;
  wire [1:0]net_slot_5_axi_ar_cnt;
  wire [1:0]net_slot_5_axi_ar_ctrl;
  wire [31:0]net_slot_5_axi_araddr;
  wire [3:0]net_slot_5_axi_arcache;
  wire [7:0]net_slot_5_axi_arlen;
  wire [2:0]net_slot_5_axi_arprot;
  wire net_slot_5_axi_arready;
  wire [2:0]net_slot_5_axi_arsize;
  wire net_slot_5_axi_arvalid;
  wire [1:0]net_slot_5_axi_aw_cnt;
  wire [1:0]net_slot_5_axi_aw_ctrl;
  wire [31:0]net_slot_5_axi_awaddr;
  wire [3:0]net_slot_5_axi_awcache;
  wire [7:0]net_slot_5_axi_awlen;
  wire [2:0]net_slot_5_axi_awprot;
  wire net_slot_5_axi_awready;
  wire [2:0]net_slot_5_axi_awsize;
  wire net_slot_5_axi_awvalid;
  wire [1:0]net_slot_5_axi_b_cnt;
  wire [1:0]net_slot_5_axi_b_ctrl;
  wire net_slot_5_axi_bready;
  wire [1:0]net_slot_5_axi_bresp;
  wire net_slot_5_axi_bvalid;
  wire [1:0]net_slot_5_axi_r_cnt;
  wire [2:0]net_slot_5_axi_r_ctrl;
  wire [63:0]net_slot_5_axi_rdata;
  wire net_slot_5_axi_rlast;
  wire net_slot_5_axi_rready;
  wire net_slot_5_axi_rvalid;
  wire [2:0]net_slot_5_axi_w_ctrl;
  wire [63:0]net_slot_5_axi_wdata;
  wire net_slot_5_axi_wlast;
  wire net_slot_5_axi_wready;
  wire [7:0]net_slot_5_axi_wstrb;
  wire net_slot_5_axi_wvalid;
  wire [1:0]net_slot_6_axi_ar_cnt;
  wire [1:0]net_slot_6_axi_ar_ctrl;
  wire [31:0]net_slot_6_axi_araddr;
  wire [3:0]net_slot_6_axi_arcache;
  wire [7:0]net_slot_6_axi_arlen;
  wire [2:0]net_slot_6_axi_arprot;
  wire net_slot_6_axi_arready;
  wire [2:0]net_slot_6_axi_arsize;
  wire net_slot_6_axi_arvalid;
  wire [1:0]net_slot_6_axi_aw_cnt;
  wire [1:0]net_slot_6_axi_aw_ctrl;
  wire [31:0]net_slot_6_axi_awaddr;
  wire [3:0]net_slot_6_axi_awcache;
  wire [7:0]net_slot_6_axi_awlen;
  wire [2:0]net_slot_6_axi_awprot;
  wire net_slot_6_axi_awready;
  wire [2:0]net_slot_6_axi_awsize;
  wire net_slot_6_axi_awvalid;
  wire [1:0]net_slot_6_axi_b_cnt;
  wire [1:0]net_slot_6_axi_b_ctrl;
  wire net_slot_6_axi_bready;
  wire net_slot_6_axi_bvalid;
  wire [1:0]net_slot_6_axi_r_cnt;
  wire [2:0]net_slot_6_axi_r_ctrl;
  wire [63:0]net_slot_6_axi_rdata;
  wire net_slot_6_axi_rlast;
  wire net_slot_6_axi_rready;
  wire [1:0]net_slot_6_axi_rresp;
  wire net_slot_6_axi_rvalid;
  wire [2:0]net_slot_6_axi_w_ctrl;
  wire [63:0]net_slot_6_axi_wdata;
  wire net_slot_6_axi_wlast;
  wire net_slot_6_axi_wready;
  wire net_slot_6_axi_wvalid;
  wire [1:0]net_slot_7_axi_ar_cnt;
  wire [1:0]net_slot_7_axi_ar_ctrl;
  wire [31:0]net_slot_7_axi_araddr;
  wire [3:0]net_slot_7_axi_arcache;
  wire [7:0]net_slot_7_axi_arlen;
  wire [2:0]net_slot_7_axi_arprot;
  wire net_slot_7_axi_arready;
  wire [2:0]net_slot_7_axi_arsize;
  wire net_slot_7_axi_arvalid;
  wire [1:0]net_slot_7_axi_aw_cnt;
  wire [1:0]net_slot_7_axi_aw_ctrl;
  wire [31:0]net_slot_7_axi_awaddr;
  wire [3:0]net_slot_7_axi_awcache;
  wire [7:0]net_slot_7_axi_awlen;
  wire [2:0]net_slot_7_axi_awprot;
  wire net_slot_7_axi_awready;
  wire [2:0]net_slot_7_axi_awsize;
  wire net_slot_7_axi_awvalid;
  wire [1:0]net_slot_7_axi_b_cnt;
  wire [1:0]net_slot_7_axi_b_ctrl;
  wire net_slot_7_axi_bready;
  wire net_slot_7_axi_bvalid;
  wire [1:0]net_slot_7_axi_r_cnt;
  wire [2:0]net_slot_7_axi_r_ctrl;
  wire [63:0]net_slot_7_axi_rdata;
  wire net_slot_7_axi_rlast;
  wire net_slot_7_axi_rready;
  wire [1:0]net_slot_7_axi_rresp;
  wire net_slot_7_axi_rvalid;
  wire [2:0]net_slot_7_axi_w_ctrl;
  wire [63:0]net_slot_7_axi_wdata;
  wire net_slot_7_axi_wlast;
  wire net_slot_7_axi_wready;
  wire net_slot_7_axi_wvalid;
  wire [23:0]net_slot_8_axis_tdata;
  wire [0:0]net_slot_8_axis_tdest;
  wire [0:0]net_slot_8_axis_tid;
  wire [2:0]net_slot_8_axis_tkeep;
  wire net_slot_8_axis_tlast;
  wire net_slot_8_axis_tready;
  wire [2:0]net_slot_8_axis_tstrb;
  wire [0:0]net_slot_8_axis_tuser;
  wire net_slot_8_axis_tvalid;
  wire [23:0]net_slot_9_axis_tdata;
  wire net_slot_9_axis_tlast;
  wire net_slot_9_axis_tready;
  wire [0:0]net_slot_9_axis_tuser;
  wire net_slot_9_axis_tvalid;
  wire [0:0]probe0_1;
  wire [0:0]probe1_1;
  wire resetn_1;

  assign Conn10_TDATA = SLOT_10_AXIS_tdata[23:0];
  assign Conn10_TLAST = SLOT_10_AXIS_tlast;
  assign Conn10_TREADY = SLOT_10_AXIS_tready;
  assign Conn10_TUSER = SLOT_10_AXIS_tuser[0];
  assign Conn10_TVALID = SLOT_10_AXIS_tvalid;
  assign Conn1_ARADDR = SLOT_1_AXI_araddr[31:0];
  assign Conn1_ARCACHE = SLOT_1_AXI_arcache[3:0];
  assign Conn1_ARID = SLOT_1_AXI_arid[0];
  assign Conn1_ARLEN = SLOT_1_AXI_arlen[3:0];
  assign Conn1_ARPROT = SLOT_1_AXI_arprot[2:0];
  assign Conn1_ARREADY = SLOT_1_AXI_arready;
  assign Conn1_ARSIZE = SLOT_1_AXI_arsize[2:0];
  assign Conn1_ARVALID = SLOT_1_AXI_arvalid;
  assign Conn1_AWADDR = SLOT_1_AXI_awaddr[31:0];
  assign Conn1_AWCACHE = SLOT_1_AXI_awcache[3:0];
  assign Conn1_AWID = SLOT_1_AXI_awid[0];
  assign Conn1_AWLEN = SLOT_1_AXI_awlen[3:0];
  assign Conn1_AWPROT = SLOT_1_AXI_awprot[2:0];
  assign Conn1_AWREADY = SLOT_1_AXI_awready;
  assign Conn1_AWSIZE = SLOT_1_AXI_awsize[2:0];
  assign Conn1_AWVALID = SLOT_1_AXI_awvalid;
  assign Conn1_BID = SLOT_1_AXI_bid[0];
  assign Conn1_BREADY = SLOT_1_AXI_bready;
  assign Conn1_BRESP = SLOT_1_AXI_bresp[1:0];
  assign Conn1_BVALID = SLOT_1_AXI_bvalid;
  assign Conn1_RDATA = SLOT_1_AXI_rdata[63:0];
  assign Conn1_RID = SLOT_1_AXI_rid[0];
  assign Conn1_RLAST = SLOT_1_AXI_rlast;
  assign Conn1_RREADY = SLOT_1_AXI_rready;
  assign Conn1_RRESP = SLOT_1_AXI_rresp[1:0];
  assign Conn1_RVALID = SLOT_1_AXI_rvalid;
  assign Conn1_WDATA = SLOT_1_AXI_wdata[63:0];
  assign Conn1_WID = SLOT_1_AXI_wid[0];
  assign Conn1_WLAST = SLOT_1_AXI_wlast;
  assign Conn1_WREADY = SLOT_1_AXI_wready;
  assign Conn1_WSTRB = SLOT_1_AXI_wstrb[7:0];
  assign Conn1_WVALID = SLOT_1_AXI_wvalid;
  assign Conn2_TDATA = SLOT_2_AXIS_tdata[23:0];
  assign Conn2_TKEEP = SLOT_2_AXIS_tkeep[2:0];
  assign Conn2_TLAST = SLOT_2_AXIS_tlast;
  assign Conn2_TREADY = SLOT_2_AXIS_tready;
  assign Conn2_TUSER = SLOT_2_AXIS_tuser[0];
  assign Conn2_TVALID = SLOT_2_AXIS_tvalid;
  assign Conn3_ARADDR = SLOT_3_AXI_araddr[31:0];
  assign Conn3_ARCACHE = SLOT_3_AXI_arcache[3:0];
  assign Conn3_ARLEN = SLOT_3_AXI_arlen[7:0];
  assign Conn3_ARPROT = SLOT_3_AXI_arprot[2:0];
  assign Conn3_ARREADY = SLOT_3_AXI_arready;
  assign Conn3_ARSIZE = SLOT_3_AXI_arsize[2:0];
  assign Conn3_ARVALID = SLOT_3_AXI_arvalid;
  assign Conn3_AWADDR = SLOT_3_AXI_awaddr[31:0];
  assign Conn3_AWCACHE = SLOT_3_AXI_awcache[3:0];
  assign Conn3_AWLEN = SLOT_3_AXI_awlen[7:0];
  assign Conn3_AWPROT = SLOT_3_AXI_awprot[2:0];
  assign Conn3_AWREADY = SLOT_3_AXI_awready;
  assign Conn3_AWSIZE = SLOT_3_AXI_awsize[2:0];
  assign Conn3_AWVALID = SLOT_3_AXI_awvalid;
  assign Conn3_BREADY = SLOT_3_AXI_bready;
  assign Conn3_BRESP = SLOT_3_AXI_bresp[1:0];
  assign Conn3_BVALID = SLOT_3_AXI_bvalid;
  assign Conn3_RDATA = SLOT_3_AXI_rdata[63:0];
  assign Conn3_RLAST = SLOT_3_AXI_rlast;
  assign Conn3_RREADY = SLOT_3_AXI_rready;
  assign Conn3_RVALID = SLOT_3_AXI_rvalid;
  assign Conn3_WDATA = SLOT_3_AXI_wdata[63:0];
  assign Conn3_WLAST = SLOT_3_AXI_wlast;
  assign Conn3_WREADY = SLOT_3_AXI_wready;
  assign Conn3_WSTRB = SLOT_3_AXI_wstrb[7:0];
  assign Conn3_WVALID = SLOT_3_AXI_wvalid;
  assign Conn4_TDATA = SLOT_4_AXIS_tdata[23:0];
  assign Conn4_TKEEP = SLOT_4_AXIS_tkeep[2:0];
  assign Conn4_TLAST = SLOT_4_AXIS_tlast;
  assign Conn4_TREADY = SLOT_4_AXIS_tready;
  assign Conn4_TUSER = SLOT_4_AXIS_tuser[0];
  assign Conn4_TVALID = SLOT_4_AXIS_tvalid;
  assign Conn5_ARADDR = SLOT_5_AXI_araddr[31:0];
  assign Conn5_ARCACHE = SLOT_5_AXI_arcache[3:0];
  assign Conn5_ARLEN = SLOT_5_AXI_arlen[7:0];
  assign Conn5_ARPROT = SLOT_5_AXI_arprot[2:0];
  assign Conn5_ARREADY = SLOT_5_AXI_arready;
  assign Conn5_ARSIZE = SLOT_5_AXI_arsize[2:0];
  assign Conn5_ARVALID = SLOT_5_AXI_arvalid;
  assign Conn5_AWADDR = SLOT_5_AXI_awaddr[31:0];
  assign Conn5_AWCACHE = SLOT_5_AXI_awcache[3:0];
  assign Conn5_AWLEN = SLOT_5_AXI_awlen[7:0];
  assign Conn5_AWPROT = SLOT_5_AXI_awprot[2:0];
  assign Conn5_AWREADY = SLOT_5_AXI_awready;
  assign Conn5_AWSIZE = SLOT_5_AXI_awsize[2:0];
  assign Conn5_AWVALID = SLOT_5_AXI_awvalid;
  assign Conn5_BREADY = SLOT_5_AXI_bready;
  assign Conn5_BRESP = SLOT_5_AXI_bresp[1:0];
  assign Conn5_BVALID = SLOT_5_AXI_bvalid;
  assign Conn5_RDATA = SLOT_5_AXI_rdata[63:0];
  assign Conn5_RLAST = SLOT_5_AXI_rlast;
  assign Conn5_RREADY = SLOT_5_AXI_rready;
  assign Conn5_RVALID = SLOT_5_AXI_rvalid;
  assign Conn5_WDATA = SLOT_5_AXI_wdata[63:0];
  assign Conn5_WLAST = SLOT_5_AXI_wlast;
  assign Conn5_WREADY = SLOT_5_AXI_wready;
  assign Conn5_WSTRB = SLOT_5_AXI_wstrb[7:0];
  assign Conn5_WVALID = SLOT_5_AXI_wvalid;
  assign Conn6_ARADDR = SLOT_6_AXI_araddr[31:0];
  assign Conn6_ARCACHE = SLOT_6_AXI_arcache[3:0];
  assign Conn6_ARLEN = SLOT_6_AXI_arlen[7:0];
  assign Conn6_ARPROT = SLOT_6_AXI_arprot[2:0];
  assign Conn6_ARREADY = SLOT_6_AXI_arready;
  assign Conn6_ARSIZE = SLOT_6_AXI_arsize[2:0];
  assign Conn6_ARVALID = SLOT_6_AXI_arvalid;
  assign Conn6_AWADDR = SLOT_6_AXI_awaddr[31:0];
  assign Conn6_AWCACHE = SLOT_6_AXI_awcache[3:0];
  assign Conn6_AWLEN = SLOT_6_AXI_awlen[7:0];
  assign Conn6_AWPROT = SLOT_6_AXI_awprot[2:0];
  assign Conn6_AWREADY = SLOT_6_AXI_awready;
  assign Conn6_AWSIZE = SLOT_6_AXI_awsize[2:0];
  assign Conn6_AWVALID = SLOT_6_AXI_awvalid;
  assign Conn6_BREADY = SLOT_6_AXI_bready;
  assign Conn6_BVALID = SLOT_6_AXI_bvalid;
  assign Conn6_RDATA = SLOT_6_AXI_rdata[63:0];
  assign Conn6_RLAST = SLOT_6_AXI_rlast;
  assign Conn6_RREADY = SLOT_6_AXI_rready;
  assign Conn6_RRESP = SLOT_6_AXI_rresp[1:0];
  assign Conn6_RVALID = SLOT_6_AXI_rvalid;
  assign Conn6_WDATA = SLOT_6_AXI_wdata[63:0];
  assign Conn6_WLAST = SLOT_6_AXI_wlast;
  assign Conn6_WREADY = SLOT_6_AXI_wready;
  assign Conn6_WVALID = SLOT_6_AXI_wvalid;
  assign Conn7_ARADDR = SLOT_7_AXI_araddr[31:0];
  assign Conn7_ARCACHE = SLOT_7_AXI_arcache[1:0];
  assign Conn7_ARLEN = SLOT_7_AXI_arlen[7:0];
  assign Conn7_ARPROT = SLOT_7_AXI_arprot[2:0];
  assign Conn7_ARREADY = SLOT_7_AXI_arready;
  assign Conn7_ARSIZE = SLOT_7_AXI_arsize[2:0];
  assign Conn7_ARVALID = SLOT_7_AXI_arvalid;
  assign Conn7_AWADDR = SLOT_7_AXI_awaddr[31:0];
  assign Conn7_AWCACHE = SLOT_7_AXI_awcache[3:0];
  assign Conn7_AWLEN = SLOT_7_AXI_awlen[7:0];
  assign Conn7_AWPROT = SLOT_7_AXI_awprot[2:0];
  assign Conn7_AWREADY = SLOT_7_AXI_awready;
  assign Conn7_AWSIZE = SLOT_7_AXI_awsize[2:0];
  assign Conn7_AWVALID = SLOT_7_AXI_awvalid;
  assign Conn7_BREADY = SLOT_7_AXI_bready;
  assign Conn7_BVALID = SLOT_7_AXI_bvalid;
  assign Conn7_RDATA = SLOT_7_AXI_rdata[63:0];
  assign Conn7_RLAST = SLOT_7_AXI_rlast;
  assign Conn7_RREADY = SLOT_7_AXI_rready;
  assign Conn7_RRESP = SLOT_7_AXI_rresp[1:0];
  assign Conn7_RVALID = SLOT_7_AXI_rvalid;
  assign Conn7_WDATA = SLOT_7_AXI_wdata[63:0];
  assign Conn7_WLAST = SLOT_7_AXI_wlast;
  assign Conn7_WREADY = SLOT_7_AXI_wready;
  assign Conn7_WVALID = SLOT_7_AXI_wvalid;
  assign Conn8_TDATA = SLOT_8_AXIS_tdata[23:0];
  assign Conn8_TDEST = SLOT_8_AXIS_tdest[0];
  assign Conn8_TID = SLOT_8_AXIS_tid[0];
  assign Conn8_TKEEP = SLOT_8_AXIS_tkeep[2:0];
  assign Conn8_TLAST = SLOT_8_AXIS_tlast;
  assign Conn8_TREADY = SLOT_8_AXIS_tready;
  assign Conn8_TSTRB = SLOT_8_AXIS_tstrb[2:0];
  assign Conn8_TUSER = SLOT_8_AXIS_tuser[0];
  assign Conn8_TVALID = SLOT_8_AXIS_tvalid;
  assign Conn9_TDATA = SLOT_9_AXIS_tdata[23:0];
  assign Conn9_TLAST = SLOT_9_AXIS_tlast;
  assign Conn9_TREADY = SLOT_9_AXIS_tready;
  assign Conn9_TUSER = SLOT_9_AXIS_tuser[0];
  assign Conn9_TVALID = SLOT_9_AXIS_tvalid;
  assign Conn_ARADDR = SLOT_0_AXI_araddr[31:0];
  assign Conn_ARCACHE = SLOT_0_AXI_arcache[3:0];
  assign Conn_ARID = SLOT_0_AXI_arid[0];
  assign Conn_ARLEN = SLOT_0_AXI_arlen[3:0];
  assign Conn_ARPROT = SLOT_0_AXI_arprot[2:0];
  assign Conn_ARREADY = SLOT_0_AXI_arready;
  assign Conn_ARSIZE = SLOT_0_AXI_arsize[2:0];
  assign Conn_ARVALID = SLOT_0_AXI_arvalid;
  assign Conn_AWADDR = SLOT_0_AXI_awaddr[31:0];
  assign Conn_AWCACHE = SLOT_0_AXI_awcache[3:0];
  assign Conn_AWID = SLOT_0_AXI_awid[0];
  assign Conn_AWLEN = SLOT_0_AXI_awlen[3:0];
  assign Conn_AWPROT = SLOT_0_AXI_awprot[2:0];
  assign Conn_AWREADY = SLOT_0_AXI_awready;
  assign Conn_AWSIZE = SLOT_0_AXI_awsize[2:0];
  assign Conn_AWVALID = SLOT_0_AXI_awvalid;
  assign Conn_BID = SLOT_0_AXI_bid[0];
  assign Conn_BREADY = SLOT_0_AXI_bready;
  assign Conn_BRESP = SLOT_0_AXI_bresp[1:0];
  assign Conn_BVALID = SLOT_0_AXI_bvalid;
  assign Conn_RDATA = SLOT_0_AXI_rdata[63:0];
  assign Conn_RID = SLOT_0_AXI_rid[0];
  assign Conn_RLAST = SLOT_0_AXI_rlast;
  assign Conn_RREADY = SLOT_0_AXI_rready;
  assign Conn_RRESP = SLOT_0_AXI_rresp[1:0];
  assign Conn_RVALID = SLOT_0_AXI_rvalid;
  assign Conn_WDATA = SLOT_0_AXI_wdata[63:0];
  assign Conn_WID = SLOT_0_AXI_wid[0];
  assign Conn_WLAST = SLOT_0_AXI_wlast;
  assign Conn_WREADY = SLOT_0_AXI_wready;
  assign Conn_WSTRB = SLOT_0_AXI_wstrb[7:0];
  assign Conn_WVALID = SLOT_0_AXI_wvalid;
  assign clk_1 = clk;
  assign probe0_1 = probe0[0];
  assign probe1_1 = probe1[0];
  assign resetn_1 = resetn;
  bd_1579_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axi_ar_cnt(net_slot_0_axi_ar_cnt),
        .m_slot_0_axi_araddr(net_slot_0_axi_araddr),
        .m_slot_0_axi_arcache(net_slot_0_axi_arcache),
        .m_slot_0_axi_arid(net_slot_0_axi_arid),
        .m_slot_0_axi_arlen(net_slot_0_axi_arlen),
        .m_slot_0_axi_arprot(net_slot_0_axi_arprot),
        .m_slot_0_axi_arready(net_slot_0_axi_arready),
        .m_slot_0_axi_arsize(net_slot_0_axi_arsize),
        .m_slot_0_axi_arvalid(net_slot_0_axi_arvalid),
        .m_slot_0_axi_aw_cnt(net_slot_0_axi_aw_cnt),
        .m_slot_0_axi_awaddr(net_slot_0_axi_awaddr),
        .m_slot_0_axi_awcache(net_slot_0_axi_awcache),
        .m_slot_0_axi_awid(net_slot_0_axi_awid),
        .m_slot_0_axi_awlen(net_slot_0_axi_awlen),
        .m_slot_0_axi_awprot(net_slot_0_axi_awprot),
        .m_slot_0_axi_awready(net_slot_0_axi_awready),
        .m_slot_0_axi_awsize(net_slot_0_axi_awsize),
        .m_slot_0_axi_awvalid(net_slot_0_axi_awvalid),
        .m_slot_0_axi_b_cnt(net_slot_0_axi_b_cnt),
        .m_slot_0_axi_bid(net_slot_0_axi_bid),
        .m_slot_0_axi_bready(net_slot_0_axi_bready),
        .m_slot_0_axi_bresp(net_slot_0_axi_bresp),
        .m_slot_0_axi_bvalid(net_slot_0_axi_bvalid),
        .m_slot_0_axi_r_cnt(net_slot_0_axi_r_cnt),
        .m_slot_0_axi_rdata(net_slot_0_axi_rdata),
        .m_slot_0_axi_rid(net_slot_0_axi_rid),
        .m_slot_0_axi_rlast(net_slot_0_axi_rlast),
        .m_slot_0_axi_rready(net_slot_0_axi_rready),
        .m_slot_0_axi_rresp(net_slot_0_axi_rresp),
        .m_slot_0_axi_rvalid(net_slot_0_axi_rvalid),
        .m_slot_0_axi_wdata(net_slot_0_axi_wdata),
        .m_slot_0_axi_wid(net_slot_0_axi_wid),
        .m_slot_0_axi_wlast(net_slot_0_axi_wlast),
        .m_slot_0_axi_wready(net_slot_0_axi_wready),
        .m_slot_0_axi_wstrb(net_slot_0_axi_wstrb),
        .m_slot_0_axi_wvalid(net_slot_0_axi_wvalid),
        .m_slot_10_axis_tdata(net_slot_10_axis_tdata),
        .m_slot_10_axis_tlast(net_slot_10_axis_tlast),
        .m_slot_10_axis_tready(net_slot_10_axis_tready),
        .m_slot_10_axis_tuser(net_slot_10_axis_tuser),
        .m_slot_10_axis_tvalid(net_slot_10_axis_tvalid),
        .m_slot_1_axi_ar_cnt(net_slot_1_axi_ar_cnt),
        .m_slot_1_axi_araddr(net_slot_1_axi_araddr),
        .m_slot_1_axi_arcache(net_slot_1_axi_arcache),
        .m_slot_1_axi_arid(net_slot_1_axi_arid),
        .m_slot_1_axi_arlen(net_slot_1_axi_arlen),
        .m_slot_1_axi_arprot(net_slot_1_axi_arprot),
        .m_slot_1_axi_arready(net_slot_1_axi_arready),
        .m_slot_1_axi_arsize(net_slot_1_axi_arsize),
        .m_slot_1_axi_arvalid(net_slot_1_axi_arvalid),
        .m_slot_1_axi_aw_cnt(net_slot_1_axi_aw_cnt),
        .m_slot_1_axi_awaddr(net_slot_1_axi_awaddr),
        .m_slot_1_axi_awcache(net_slot_1_axi_awcache),
        .m_slot_1_axi_awid(net_slot_1_axi_awid),
        .m_slot_1_axi_awlen(net_slot_1_axi_awlen),
        .m_slot_1_axi_awprot(net_slot_1_axi_awprot),
        .m_slot_1_axi_awready(net_slot_1_axi_awready),
        .m_slot_1_axi_awsize(net_slot_1_axi_awsize),
        .m_slot_1_axi_awvalid(net_slot_1_axi_awvalid),
        .m_slot_1_axi_b_cnt(net_slot_1_axi_b_cnt),
        .m_slot_1_axi_bid(net_slot_1_axi_bid),
        .m_slot_1_axi_bready(net_slot_1_axi_bready),
        .m_slot_1_axi_bresp(net_slot_1_axi_bresp),
        .m_slot_1_axi_bvalid(net_slot_1_axi_bvalid),
        .m_slot_1_axi_r_cnt(net_slot_1_axi_r_cnt),
        .m_slot_1_axi_rdata(net_slot_1_axi_rdata),
        .m_slot_1_axi_rid(net_slot_1_axi_rid),
        .m_slot_1_axi_rlast(net_slot_1_axi_rlast),
        .m_slot_1_axi_rready(net_slot_1_axi_rready),
        .m_slot_1_axi_rresp(net_slot_1_axi_rresp),
        .m_slot_1_axi_rvalid(net_slot_1_axi_rvalid),
        .m_slot_1_axi_wdata(net_slot_1_axi_wdata),
        .m_slot_1_axi_wid(net_slot_1_axi_wid),
        .m_slot_1_axi_wlast(net_slot_1_axi_wlast),
        .m_slot_1_axi_wready(net_slot_1_axi_wready),
        .m_slot_1_axi_wstrb(net_slot_1_axi_wstrb),
        .m_slot_1_axi_wvalid(net_slot_1_axi_wvalid),
        .m_slot_2_axis_tdata(net_slot_2_axis_tdata),
        .m_slot_2_axis_tkeep(net_slot_2_axis_tkeep),
        .m_slot_2_axis_tlast(net_slot_2_axis_tlast),
        .m_slot_2_axis_tready(net_slot_2_axis_tready),
        .m_slot_2_axis_tuser(net_slot_2_axis_tuser),
        .m_slot_2_axis_tvalid(net_slot_2_axis_tvalid),
        .m_slot_3_axi_ar_cnt(net_slot_3_axi_ar_cnt),
        .m_slot_3_axi_araddr(net_slot_3_axi_araddr),
        .m_slot_3_axi_arcache(net_slot_3_axi_arcache),
        .m_slot_3_axi_arlen(net_slot_3_axi_arlen),
        .m_slot_3_axi_arprot(net_slot_3_axi_arprot),
        .m_slot_3_axi_arready(net_slot_3_axi_arready),
        .m_slot_3_axi_arsize(net_slot_3_axi_arsize),
        .m_slot_3_axi_arvalid(net_slot_3_axi_arvalid),
        .m_slot_3_axi_aw_cnt(net_slot_3_axi_aw_cnt),
        .m_slot_3_axi_awaddr(net_slot_3_axi_awaddr),
        .m_slot_3_axi_awcache(net_slot_3_axi_awcache),
        .m_slot_3_axi_awlen(net_slot_3_axi_awlen),
        .m_slot_3_axi_awprot(net_slot_3_axi_awprot),
        .m_slot_3_axi_awready(net_slot_3_axi_awready),
        .m_slot_3_axi_awsize(net_slot_3_axi_awsize),
        .m_slot_3_axi_awvalid(net_slot_3_axi_awvalid),
        .m_slot_3_axi_b_cnt(net_slot_3_axi_b_cnt),
        .m_slot_3_axi_bready(net_slot_3_axi_bready),
        .m_slot_3_axi_bresp(net_slot_3_axi_bresp),
        .m_slot_3_axi_bvalid(net_slot_3_axi_bvalid),
        .m_slot_3_axi_r_cnt(net_slot_3_axi_r_cnt),
        .m_slot_3_axi_rdata(net_slot_3_axi_rdata),
        .m_slot_3_axi_rlast(net_slot_3_axi_rlast),
        .m_slot_3_axi_rready(net_slot_3_axi_rready),
        .m_slot_3_axi_rvalid(net_slot_3_axi_rvalid),
        .m_slot_3_axi_wdata(net_slot_3_axi_wdata),
        .m_slot_3_axi_wlast(net_slot_3_axi_wlast),
        .m_slot_3_axi_wready(net_slot_3_axi_wready),
        .m_slot_3_axi_wstrb(net_slot_3_axi_wstrb),
        .m_slot_3_axi_wvalid(net_slot_3_axi_wvalid),
        .m_slot_4_axis_tdata(net_slot_4_axis_tdata),
        .m_slot_4_axis_tkeep(net_slot_4_axis_tkeep),
        .m_slot_4_axis_tlast(net_slot_4_axis_tlast),
        .m_slot_4_axis_tready(net_slot_4_axis_tready),
        .m_slot_4_axis_tuser(net_slot_4_axis_tuser),
        .m_slot_4_axis_tvalid(net_slot_4_axis_tvalid),
        .m_slot_5_axi_ar_cnt(net_slot_5_axi_ar_cnt),
        .m_slot_5_axi_araddr(net_slot_5_axi_araddr),
        .m_slot_5_axi_arcache(net_slot_5_axi_arcache),
        .m_slot_5_axi_arlen(net_slot_5_axi_arlen),
        .m_slot_5_axi_arprot(net_slot_5_axi_arprot),
        .m_slot_5_axi_arready(net_slot_5_axi_arready),
        .m_slot_5_axi_arsize(net_slot_5_axi_arsize),
        .m_slot_5_axi_arvalid(net_slot_5_axi_arvalid),
        .m_slot_5_axi_aw_cnt(net_slot_5_axi_aw_cnt),
        .m_slot_5_axi_awaddr(net_slot_5_axi_awaddr),
        .m_slot_5_axi_awcache(net_slot_5_axi_awcache),
        .m_slot_5_axi_awlen(net_slot_5_axi_awlen),
        .m_slot_5_axi_awprot(net_slot_5_axi_awprot),
        .m_slot_5_axi_awready(net_slot_5_axi_awready),
        .m_slot_5_axi_awsize(net_slot_5_axi_awsize),
        .m_slot_5_axi_awvalid(net_slot_5_axi_awvalid),
        .m_slot_5_axi_b_cnt(net_slot_5_axi_b_cnt),
        .m_slot_5_axi_bready(net_slot_5_axi_bready),
        .m_slot_5_axi_bresp(net_slot_5_axi_bresp),
        .m_slot_5_axi_bvalid(net_slot_5_axi_bvalid),
        .m_slot_5_axi_r_cnt(net_slot_5_axi_r_cnt),
        .m_slot_5_axi_rdata(net_slot_5_axi_rdata),
        .m_slot_5_axi_rlast(net_slot_5_axi_rlast),
        .m_slot_5_axi_rready(net_slot_5_axi_rready),
        .m_slot_5_axi_rvalid(net_slot_5_axi_rvalid),
        .m_slot_5_axi_wdata(net_slot_5_axi_wdata),
        .m_slot_5_axi_wlast(net_slot_5_axi_wlast),
        .m_slot_5_axi_wready(net_slot_5_axi_wready),
        .m_slot_5_axi_wstrb(net_slot_5_axi_wstrb),
        .m_slot_5_axi_wvalid(net_slot_5_axi_wvalid),
        .m_slot_6_axi_ar_cnt(net_slot_6_axi_ar_cnt),
        .m_slot_6_axi_araddr(net_slot_6_axi_araddr),
        .m_slot_6_axi_arcache(net_slot_6_axi_arcache),
        .m_slot_6_axi_arlen(net_slot_6_axi_arlen),
        .m_slot_6_axi_arprot(net_slot_6_axi_arprot),
        .m_slot_6_axi_arready(net_slot_6_axi_arready),
        .m_slot_6_axi_arsize(net_slot_6_axi_arsize),
        .m_slot_6_axi_arvalid(net_slot_6_axi_arvalid),
        .m_slot_6_axi_aw_cnt(net_slot_6_axi_aw_cnt),
        .m_slot_6_axi_awaddr(net_slot_6_axi_awaddr),
        .m_slot_6_axi_awcache(net_slot_6_axi_awcache),
        .m_slot_6_axi_awlen(net_slot_6_axi_awlen),
        .m_slot_6_axi_awprot(net_slot_6_axi_awprot),
        .m_slot_6_axi_awready(net_slot_6_axi_awready),
        .m_slot_6_axi_awsize(net_slot_6_axi_awsize),
        .m_slot_6_axi_awvalid(net_slot_6_axi_awvalid),
        .m_slot_6_axi_b_cnt(net_slot_6_axi_b_cnt),
        .m_slot_6_axi_bready(net_slot_6_axi_bready),
        .m_slot_6_axi_bvalid(net_slot_6_axi_bvalid),
        .m_slot_6_axi_r_cnt(net_slot_6_axi_r_cnt),
        .m_slot_6_axi_rdata(net_slot_6_axi_rdata),
        .m_slot_6_axi_rlast(net_slot_6_axi_rlast),
        .m_slot_6_axi_rready(net_slot_6_axi_rready),
        .m_slot_6_axi_rresp(net_slot_6_axi_rresp),
        .m_slot_6_axi_rvalid(net_slot_6_axi_rvalid),
        .m_slot_6_axi_wdata(net_slot_6_axi_wdata),
        .m_slot_6_axi_wlast(net_slot_6_axi_wlast),
        .m_slot_6_axi_wready(net_slot_6_axi_wready),
        .m_slot_6_axi_wvalid(net_slot_6_axi_wvalid),
        .m_slot_7_axi_ar_cnt(net_slot_7_axi_ar_cnt),
        .m_slot_7_axi_araddr(net_slot_7_axi_araddr),
        .m_slot_7_axi_arcache(net_slot_7_axi_arcache),
        .m_slot_7_axi_arlen(net_slot_7_axi_arlen),
        .m_slot_7_axi_arprot(net_slot_7_axi_arprot),
        .m_slot_7_axi_arready(net_slot_7_axi_arready),
        .m_slot_7_axi_arsize(net_slot_7_axi_arsize),
        .m_slot_7_axi_arvalid(net_slot_7_axi_arvalid),
        .m_slot_7_axi_aw_cnt(net_slot_7_axi_aw_cnt),
        .m_slot_7_axi_awaddr(net_slot_7_axi_awaddr),
        .m_slot_7_axi_awcache(net_slot_7_axi_awcache),
        .m_slot_7_axi_awlen(net_slot_7_axi_awlen),
        .m_slot_7_axi_awprot(net_slot_7_axi_awprot),
        .m_slot_7_axi_awready(net_slot_7_axi_awready),
        .m_slot_7_axi_awsize(net_slot_7_axi_awsize),
        .m_slot_7_axi_awvalid(net_slot_7_axi_awvalid),
        .m_slot_7_axi_b_cnt(net_slot_7_axi_b_cnt),
        .m_slot_7_axi_bready(net_slot_7_axi_bready),
        .m_slot_7_axi_bvalid(net_slot_7_axi_bvalid),
        .m_slot_7_axi_r_cnt(net_slot_7_axi_r_cnt),
        .m_slot_7_axi_rdata(net_slot_7_axi_rdata),
        .m_slot_7_axi_rlast(net_slot_7_axi_rlast),
        .m_slot_7_axi_rready(net_slot_7_axi_rready),
        .m_slot_7_axi_rresp(net_slot_7_axi_rresp),
        .m_slot_7_axi_rvalid(net_slot_7_axi_rvalid),
        .m_slot_7_axi_wdata(net_slot_7_axi_wdata),
        .m_slot_7_axi_wlast(net_slot_7_axi_wlast),
        .m_slot_7_axi_wready(net_slot_7_axi_wready),
        .m_slot_7_axi_wvalid(net_slot_7_axi_wvalid),
        .m_slot_8_axis_tdata(net_slot_8_axis_tdata),
        .m_slot_8_axis_tdest(net_slot_8_axis_tdest),
        .m_slot_8_axis_tid(net_slot_8_axis_tid),
        .m_slot_8_axis_tkeep(net_slot_8_axis_tkeep),
        .m_slot_8_axis_tlast(net_slot_8_axis_tlast),
        .m_slot_8_axis_tready(net_slot_8_axis_tready),
        .m_slot_8_axis_tstrb(net_slot_8_axis_tstrb),
        .m_slot_8_axis_tuser(net_slot_8_axis_tuser),
        .m_slot_8_axis_tvalid(net_slot_8_axis_tvalid),
        .m_slot_9_axis_tdata(net_slot_9_axis_tdata),
        .m_slot_9_axis_tlast(net_slot_9_axis_tlast),
        .m_slot_9_axis_tready(net_slot_9_axis_tready),
        .m_slot_9_axis_tuser(net_slot_9_axis_tuser),
        .m_slot_9_axis_tvalid(net_slot_9_axis_tvalid),
        .slot_0_axi_araddr(Conn_ARADDR),
        .slot_0_axi_arcache(Conn_ARCACHE),
        .slot_0_axi_arid(Conn_ARID),
        .slot_0_axi_arlen(Conn_ARLEN),
        .slot_0_axi_arprot(Conn_ARPROT),
        .slot_0_axi_arready(Conn_ARREADY),
        .slot_0_axi_arsize(Conn_ARSIZE),
        .slot_0_axi_arvalid(Conn_ARVALID),
        .slot_0_axi_awaddr(Conn_AWADDR),
        .slot_0_axi_awcache(Conn_AWCACHE),
        .slot_0_axi_awid(Conn_AWID),
        .slot_0_axi_awlen(Conn_AWLEN),
        .slot_0_axi_awprot(Conn_AWPROT),
        .slot_0_axi_awready(Conn_AWREADY),
        .slot_0_axi_awsize(Conn_AWSIZE),
        .slot_0_axi_awvalid(Conn_AWVALID),
        .slot_0_axi_bid(Conn_BID),
        .slot_0_axi_bready(Conn_BREADY),
        .slot_0_axi_bresp(Conn_BRESP),
        .slot_0_axi_bvalid(Conn_BVALID),
        .slot_0_axi_rdata(Conn_RDATA),
        .slot_0_axi_rid(Conn_RID),
        .slot_0_axi_rlast(Conn_RLAST),
        .slot_0_axi_rready(Conn_RREADY),
        .slot_0_axi_rresp(Conn_RRESP),
        .slot_0_axi_rvalid(Conn_RVALID),
        .slot_0_axi_wdata(Conn_WDATA),
        .slot_0_axi_wid(Conn_WID),
        .slot_0_axi_wlast(Conn_WLAST),
        .slot_0_axi_wready(Conn_WREADY),
        .slot_0_axi_wstrb(Conn_WSTRB),
        .slot_0_axi_wvalid(Conn_WVALID),
        .slot_10_axis_tdata(Conn10_TDATA),
        .slot_10_axis_tlast(Conn10_TLAST),
        .slot_10_axis_tready(Conn10_TREADY),
        .slot_10_axis_tuser(Conn10_TUSER),
        .slot_10_axis_tvalid(Conn10_TVALID),
        .slot_1_axi_araddr(Conn1_ARADDR),
        .slot_1_axi_arcache(Conn1_ARCACHE),
        .slot_1_axi_arid(Conn1_ARID),
        .slot_1_axi_arlen(Conn1_ARLEN),
        .slot_1_axi_arprot(Conn1_ARPROT),
        .slot_1_axi_arready(Conn1_ARREADY),
        .slot_1_axi_arsize(Conn1_ARSIZE),
        .slot_1_axi_arvalid(Conn1_ARVALID),
        .slot_1_axi_awaddr(Conn1_AWADDR),
        .slot_1_axi_awcache(Conn1_AWCACHE),
        .slot_1_axi_awid(Conn1_AWID),
        .slot_1_axi_awlen(Conn1_AWLEN),
        .slot_1_axi_awprot(Conn1_AWPROT),
        .slot_1_axi_awready(Conn1_AWREADY),
        .slot_1_axi_awsize(Conn1_AWSIZE),
        .slot_1_axi_awvalid(Conn1_AWVALID),
        .slot_1_axi_bid(Conn1_BID),
        .slot_1_axi_bready(Conn1_BREADY),
        .slot_1_axi_bresp(Conn1_BRESP),
        .slot_1_axi_bvalid(Conn1_BVALID),
        .slot_1_axi_rdata(Conn1_RDATA),
        .slot_1_axi_rid(Conn1_RID),
        .slot_1_axi_rlast(Conn1_RLAST),
        .slot_1_axi_rready(Conn1_RREADY),
        .slot_1_axi_rresp(Conn1_RRESP),
        .slot_1_axi_rvalid(Conn1_RVALID),
        .slot_1_axi_wdata(Conn1_WDATA),
        .slot_1_axi_wid(Conn1_WID),
        .slot_1_axi_wlast(Conn1_WLAST),
        .slot_1_axi_wready(Conn1_WREADY),
        .slot_1_axi_wstrb(Conn1_WSTRB),
        .slot_1_axi_wvalid(Conn1_WVALID),
        .slot_2_axis_tdata(Conn2_TDATA),
        .slot_2_axis_tkeep(Conn2_TKEEP),
        .slot_2_axis_tlast(Conn2_TLAST),
        .slot_2_axis_tready(Conn2_TREADY),
        .slot_2_axis_tuser(Conn2_TUSER),
        .slot_2_axis_tvalid(Conn2_TVALID),
        .slot_3_axi_araddr(Conn3_ARADDR),
        .slot_3_axi_arcache(Conn3_ARCACHE),
        .slot_3_axi_arlen(Conn3_ARLEN),
        .slot_3_axi_arprot(Conn3_ARPROT),
        .slot_3_axi_arready(Conn3_ARREADY),
        .slot_3_axi_arsize(Conn3_ARSIZE),
        .slot_3_axi_arvalid(Conn3_ARVALID),
        .slot_3_axi_awaddr(Conn3_AWADDR),
        .slot_3_axi_awcache(Conn3_AWCACHE),
        .slot_3_axi_awlen(Conn3_AWLEN),
        .slot_3_axi_awprot(Conn3_AWPROT),
        .slot_3_axi_awready(Conn3_AWREADY),
        .slot_3_axi_awsize(Conn3_AWSIZE),
        .slot_3_axi_awvalid(Conn3_AWVALID),
        .slot_3_axi_bready(Conn3_BREADY),
        .slot_3_axi_bresp(Conn3_BRESP),
        .slot_3_axi_bvalid(Conn3_BVALID),
        .slot_3_axi_rdata(Conn3_RDATA),
        .slot_3_axi_rlast(Conn3_RLAST),
        .slot_3_axi_rready(Conn3_RREADY),
        .slot_3_axi_rvalid(Conn3_RVALID),
        .slot_3_axi_wdata(Conn3_WDATA),
        .slot_3_axi_wlast(Conn3_WLAST),
        .slot_3_axi_wready(Conn3_WREADY),
        .slot_3_axi_wstrb(Conn3_WSTRB),
        .slot_3_axi_wvalid(Conn3_WVALID),
        .slot_4_axis_tdata(Conn4_TDATA),
        .slot_4_axis_tkeep(Conn4_TKEEP),
        .slot_4_axis_tlast(Conn4_TLAST),
        .slot_4_axis_tready(Conn4_TREADY),
        .slot_4_axis_tuser(Conn4_TUSER),
        .slot_4_axis_tvalid(Conn4_TVALID),
        .slot_5_axi_araddr(Conn5_ARADDR),
        .slot_5_axi_arcache(Conn5_ARCACHE),
        .slot_5_axi_arlen(Conn5_ARLEN),
        .slot_5_axi_arprot(Conn5_ARPROT),
        .slot_5_axi_arready(Conn5_ARREADY),
        .slot_5_axi_arsize(Conn5_ARSIZE),
        .slot_5_axi_arvalid(Conn5_ARVALID),
        .slot_5_axi_awaddr(Conn5_AWADDR),
        .slot_5_axi_awcache(Conn5_AWCACHE),
        .slot_5_axi_awlen(Conn5_AWLEN),
        .slot_5_axi_awprot(Conn5_AWPROT),
        .slot_5_axi_awready(Conn5_AWREADY),
        .slot_5_axi_awsize(Conn5_AWSIZE),
        .slot_5_axi_awvalid(Conn5_AWVALID),
        .slot_5_axi_bready(Conn5_BREADY),
        .slot_5_axi_bresp(Conn5_BRESP),
        .slot_5_axi_bvalid(Conn5_BVALID),
        .slot_5_axi_rdata(Conn5_RDATA),
        .slot_5_axi_rlast(Conn5_RLAST),
        .slot_5_axi_rready(Conn5_RREADY),
        .slot_5_axi_rvalid(Conn5_RVALID),
        .slot_5_axi_wdata(Conn5_WDATA),
        .slot_5_axi_wlast(Conn5_WLAST),
        .slot_5_axi_wready(Conn5_WREADY),
        .slot_5_axi_wstrb(Conn5_WSTRB),
        .slot_5_axi_wvalid(Conn5_WVALID),
        .slot_6_axi_araddr(Conn6_ARADDR),
        .slot_6_axi_arcache(Conn6_ARCACHE),
        .slot_6_axi_arlen(Conn6_ARLEN),
        .slot_6_axi_arprot(Conn6_ARPROT),
        .slot_6_axi_arready(Conn6_ARREADY),
        .slot_6_axi_arsize(Conn6_ARSIZE),
        .slot_6_axi_arvalid(Conn6_ARVALID),
        .slot_6_axi_awaddr(Conn6_AWADDR),
        .slot_6_axi_awcache(Conn6_AWCACHE),
        .slot_6_axi_awlen(Conn6_AWLEN),
        .slot_6_axi_awprot(Conn6_AWPROT),
        .slot_6_axi_awready(Conn6_AWREADY),
        .slot_6_axi_awsize(Conn6_AWSIZE),
        .slot_6_axi_awvalid(Conn6_AWVALID),
        .slot_6_axi_bready(Conn6_BREADY),
        .slot_6_axi_bvalid(Conn6_BVALID),
        .slot_6_axi_rdata(Conn6_RDATA),
        .slot_6_axi_rlast(Conn6_RLAST),
        .slot_6_axi_rready(Conn6_RREADY),
        .slot_6_axi_rresp(Conn6_RRESP),
        .slot_6_axi_rvalid(Conn6_RVALID),
        .slot_6_axi_wdata(Conn6_WDATA),
        .slot_6_axi_wlast(Conn6_WLAST),
        .slot_6_axi_wready(Conn6_WREADY),
        .slot_6_axi_wvalid(Conn6_WVALID),
        .slot_7_axi_araddr(Conn7_ARADDR),
        .slot_7_axi_arcache(Conn7_ARCACHE),
        .slot_7_axi_arlen(Conn7_ARLEN),
        .slot_7_axi_arprot(Conn7_ARPROT),
        .slot_7_axi_arready(Conn7_ARREADY),
        .slot_7_axi_arsize(Conn7_ARSIZE),
        .slot_7_axi_arvalid(Conn7_ARVALID),
        .slot_7_axi_awaddr(Conn7_AWADDR),
        .slot_7_axi_awcache(Conn7_AWCACHE),
        .slot_7_axi_awlen(Conn7_AWLEN),
        .slot_7_axi_awprot(Conn7_AWPROT),
        .slot_7_axi_awready(Conn7_AWREADY),
        .slot_7_axi_awsize(Conn7_AWSIZE),
        .slot_7_axi_awvalid(Conn7_AWVALID),
        .slot_7_axi_bready(Conn7_BREADY),
        .slot_7_axi_bvalid(Conn7_BVALID),
        .slot_7_axi_rdata(Conn7_RDATA),
        .slot_7_axi_rlast(Conn7_RLAST),
        .slot_7_axi_rready(Conn7_RREADY),
        .slot_7_axi_rresp(Conn7_RRESP),
        .slot_7_axi_rvalid(Conn7_RVALID),
        .slot_7_axi_wdata(Conn7_WDATA),
        .slot_7_axi_wlast(Conn7_WLAST),
        .slot_7_axi_wready(Conn7_WREADY),
        .slot_7_axi_wvalid(Conn7_WVALID),
        .slot_8_axis_tdata(Conn8_TDATA),
        .slot_8_axis_tdest(Conn8_TDEST),
        .slot_8_axis_tid(Conn8_TID),
        .slot_8_axis_tkeep(Conn8_TKEEP),
        .slot_8_axis_tlast(Conn8_TLAST),
        .slot_8_axis_tready(Conn8_TREADY),
        .slot_8_axis_tstrb(Conn8_TSTRB),
        .slot_8_axis_tuser(Conn8_TUSER),
        .slot_8_axis_tvalid(Conn8_TVALID),
        .slot_9_axis_tdata(Conn9_TDATA),
        .slot_9_axis_tlast(Conn9_TLAST),
        .slot_9_axis_tready(Conn9_TREADY),
        .slot_9_axis_tuser(Conn9_TUSER),
        .slot_9_axis_tvalid(Conn9_TVALID));
  bd_1579_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe10(net_slot_0_axi_awaddr),
        .probe100(net_slot_5_axi_arsize),
        .probe101(net_slot_5_axi_aw_cnt),
        .probe102(net_slot_5_axi_awaddr),
        .probe103(net_slot_5_axi_awcache),
        .probe104(net_slot_5_axi_awlen),
        .probe105(net_slot_5_axi_awprot),
        .probe106(net_slot_5_axi_awsize),
        .probe107(net_slot_5_axi_b_cnt),
        .probe108(net_slot_5_axi_bresp),
        .probe109(net_slot_5_axi_r_cnt),
        .probe11(net_slot_0_axi_awcache),
        .probe110(net_slot_5_axi_rdata),
        .probe111(net_slot_5_axi_wdata),
        .probe112(net_slot_5_axi_wstrb),
        .probe113(net_slot_5_axi_aw_ctrl),
        .probe114(net_slot_5_axi_w_ctrl),
        .probe115(net_slot_5_axi_b_ctrl),
        .probe116(net_slot_5_axi_ar_ctrl),
        .probe117(net_slot_5_axi_r_ctrl),
        .probe118(net_slot_6_axi_ar_cnt),
        .probe119(net_slot_6_axi_araddr),
        .probe12(net_slot_0_axi_awid),
        .probe120(net_slot_6_axi_arcache),
        .probe121(net_slot_6_axi_arlen),
        .probe122(net_slot_6_axi_arprot),
        .probe123(net_slot_6_axi_arsize),
        .probe124(net_slot_6_axi_aw_cnt),
        .probe125(net_slot_6_axi_awaddr),
        .probe126(net_slot_6_axi_awcache),
        .probe127(net_slot_6_axi_awlen),
        .probe128(net_slot_6_axi_awprot),
        .probe129(net_slot_6_axi_awsize),
        .probe13(net_slot_0_axi_awlen),
        .probe130(net_slot_6_axi_b_cnt),
        .probe131(net_slot_6_axi_r_cnt),
        .probe132(net_slot_6_axi_rdata),
        .probe133(net_slot_6_axi_rresp),
        .probe134(net_slot_6_axi_wdata),
        .probe135(net_slot_6_axi_aw_ctrl),
        .probe136(net_slot_6_axi_w_ctrl),
        .probe137(net_slot_6_axi_b_ctrl),
        .probe138(net_slot_6_axi_ar_ctrl),
        .probe139(net_slot_6_axi_r_ctrl),
        .probe14(net_slot_0_axi_awprot),
        .probe140(net_slot_7_axi_ar_cnt),
        .probe141(net_slot_7_axi_araddr),
        .probe142(net_slot_7_axi_arcache),
        .probe143(net_slot_7_axi_arlen),
        .probe144(net_slot_7_axi_arprot),
        .probe145(net_slot_7_axi_arsize),
        .probe146(net_slot_7_axi_aw_cnt),
        .probe147(net_slot_7_axi_awaddr),
        .probe148(net_slot_7_axi_awcache),
        .probe149(net_slot_7_axi_awlen),
        .probe15(net_slot_0_axi_awsize),
        .probe150(net_slot_7_axi_awprot),
        .probe151(net_slot_7_axi_awsize),
        .probe152(net_slot_7_axi_b_cnt),
        .probe153(net_slot_7_axi_r_cnt),
        .probe154(net_slot_7_axi_rdata),
        .probe155(net_slot_7_axi_rresp),
        .probe156(net_slot_7_axi_wdata),
        .probe157(net_slot_7_axi_aw_ctrl),
        .probe158(net_slot_7_axi_w_ctrl),
        .probe159(net_slot_7_axi_b_ctrl),
        .probe16(net_slot_0_axi_b_cnt),
        .probe160(net_slot_7_axi_ar_ctrl),
        .probe161(net_slot_7_axi_r_ctrl),
        .probe162(net_slot_8_axis_tdata),
        .probe163(net_slot_8_axis_tdest),
        .probe164(net_slot_8_axis_tid),
        .probe165(net_slot_8_axis_tkeep),
        .probe166(net_slot_8_axis_tstrb),
        .probe167(net_slot_8_axis_tuser),
        .probe168(net_slot_8_axis_tvalid),
        .probe169(net_slot_8_axis_tready),
        .probe17(net_slot_0_axi_bid),
        .probe170(net_slot_8_axis_tlast),
        .probe171(net_slot_9_axis_tdata),
        .probe172(net_slot_9_axis_tuser),
        .probe173(net_slot_9_axis_tvalid),
        .probe174(net_slot_9_axis_tready),
        .probe175(net_slot_9_axis_tlast),
        .probe176(net_slot_10_axis_tdata),
        .probe177(net_slot_10_axis_tuser),
        .probe178(net_slot_10_axis_tvalid),
        .probe179(net_slot_10_axis_tready),
        .probe18(net_slot_0_axi_bresp),
        .probe180(net_slot_10_axis_tlast),
        .probe19(net_slot_0_axi_r_cnt),
        .probe2(net_slot_0_axi_ar_cnt),
        .probe20(net_slot_0_axi_rdata),
        .probe21(net_slot_0_axi_rid),
        .probe22(net_slot_0_axi_rresp),
        .probe23(net_slot_0_axi_wdata),
        .probe24(net_slot_0_axi_wid),
        .probe25(net_slot_0_axi_wstrb),
        .probe26(net_slot_0_axi_aw_ctrl),
        .probe27(net_slot_0_axi_w_ctrl),
        .probe28(net_slot_0_axi_b_ctrl),
        .probe29(net_slot_0_axi_ar_ctrl),
        .probe3(net_slot_0_axi_araddr),
        .probe30(net_slot_0_axi_r_ctrl),
        .probe31(net_slot_1_axi_ar_cnt),
        .probe32(net_slot_1_axi_araddr),
        .probe33(net_slot_1_axi_arcache),
        .probe34(net_slot_1_axi_arid),
        .probe35(net_slot_1_axi_arlen),
        .probe36(net_slot_1_axi_arprot),
        .probe37(net_slot_1_axi_arsize),
        .probe38(net_slot_1_axi_aw_cnt),
        .probe39(net_slot_1_axi_awaddr),
        .probe4(net_slot_0_axi_arcache),
        .probe40(net_slot_1_axi_awcache),
        .probe41(net_slot_1_axi_awid),
        .probe42(net_slot_1_axi_awlen),
        .probe43(net_slot_1_axi_awprot),
        .probe44(net_slot_1_axi_awsize),
        .probe45(net_slot_1_axi_b_cnt),
        .probe46(net_slot_1_axi_bid),
        .probe47(net_slot_1_axi_bresp),
        .probe48(net_slot_1_axi_r_cnt),
        .probe49(net_slot_1_axi_rdata),
        .probe5(net_slot_0_axi_arid),
        .probe50(net_slot_1_axi_rid),
        .probe51(net_slot_1_axi_rresp),
        .probe52(net_slot_1_axi_wdata),
        .probe53(net_slot_1_axi_wid),
        .probe54(net_slot_1_axi_wstrb),
        .probe55(net_slot_1_axi_aw_ctrl),
        .probe56(net_slot_1_axi_w_ctrl),
        .probe57(net_slot_1_axi_b_ctrl),
        .probe58(net_slot_1_axi_ar_ctrl),
        .probe59(net_slot_1_axi_r_ctrl),
        .probe6(net_slot_0_axi_arlen),
        .probe60(net_slot_2_axis_tdata),
        .probe61(net_slot_2_axis_tkeep),
        .probe62(net_slot_2_axis_tuser),
        .probe63(net_slot_2_axis_tvalid),
        .probe64(net_slot_2_axis_tready),
        .probe65(net_slot_2_axis_tlast),
        .probe66(net_slot_3_axi_ar_cnt),
        .probe67(net_slot_3_axi_araddr),
        .probe68(net_slot_3_axi_arcache),
        .probe69(net_slot_3_axi_arlen),
        .probe7(net_slot_0_axi_arprot),
        .probe70(net_slot_3_axi_arprot),
        .probe71(net_slot_3_axi_arsize),
        .probe72(net_slot_3_axi_aw_cnt),
        .probe73(net_slot_3_axi_awaddr),
        .probe74(net_slot_3_axi_awcache),
        .probe75(net_slot_3_axi_awlen),
        .probe76(net_slot_3_axi_awprot),
        .probe77(net_slot_3_axi_awsize),
        .probe78(net_slot_3_axi_b_cnt),
        .probe79(net_slot_3_axi_bresp),
        .probe8(net_slot_0_axi_arsize),
        .probe80(net_slot_3_axi_r_cnt),
        .probe81(net_slot_3_axi_rdata),
        .probe82(net_slot_3_axi_wdata),
        .probe83(net_slot_3_axi_wstrb),
        .probe84(net_slot_3_axi_aw_ctrl),
        .probe85(net_slot_3_axi_w_ctrl),
        .probe86(net_slot_3_axi_b_ctrl),
        .probe87(net_slot_3_axi_ar_ctrl),
        .probe88(net_slot_3_axi_r_ctrl),
        .probe89(net_slot_4_axis_tdata),
        .probe9(net_slot_0_axi_aw_cnt),
        .probe90(net_slot_4_axis_tkeep),
        .probe91(net_slot_4_axis_tuser),
        .probe92(net_slot_4_axis_tvalid),
        .probe93(net_slot_4_axis_tready),
        .probe94(net_slot_4_axis_tlast),
        .probe95(net_slot_5_axi_ar_cnt),
        .probe96(net_slot_5_axi_araddr),
        .probe97(net_slot_5_axi_arcache),
        .probe98(net_slot_5_axi_arlen),
        .probe99(net_slot_5_axi_arprot));
  bd_1579_slot_0_ar_0 slot_0_ar
       (.In0(net_slot_0_axi_arvalid),
        .In1(net_slot_0_axi_arready),
        .dout(net_slot_0_axi_ar_ctrl));
  bd_1579_slot_0_aw_0 slot_0_aw
       (.In0(net_slot_0_axi_awvalid),
        .In1(net_slot_0_axi_awready),
        .dout(net_slot_0_axi_aw_ctrl));
  bd_1579_slot_0_b_0 slot_0_b
       (.In0(net_slot_0_axi_bvalid),
        .In1(net_slot_0_axi_bready),
        .dout(net_slot_0_axi_b_ctrl));
  bd_1579_slot_0_r_0 slot_0_r
       (.In0(net_slot_0_axi_rvalid),
        .In1(net_slot_0_axi_rready),
        .In2(net_slot_0_axi_rlast),
        .dout(net_slot_0_axi_r_ctrl));
  bd_1579_slot_0_w_0 slot_0_w
       (.In0(net_slot_0_axi_wvalid),
        .In1(net_slot_0_axi_wready),
        .In2(net_slot_0_axi_wlast),
        .dout(net_slot_0_axi_w_ctrl));
  bd_1579_slot_1_ar_0 slot_1_ar
       (.In0(net_slot_1_axi_arvalid),
        .In1(net_slot_1_axi_arready),
        .dout(net_slot_1_axi_ar_ctrl));
  bd_1579_slot_1_aw_0 slot_1_aw
       (.In0(net_slot_1_axi_awvalid),
        .In1(net_slot_1_axi_awready),
        .dout(net_slot_1_axi_aw_ctrl));
  bd_1579_slot_1_b_0 slot_1_b
       (.In0(net_slot_1_axi_bvalid),
        .In1(net_slot_1_axi_bready),
        .dout(net_slot_1_axi_b_ctrl));
  bd_1579_slot_1_r_0 slot_1_r
       (.In0(net_slot_1_axi_rvalid),
        .In1(net_slot_1_axi_rready),
        .In2(net_slot_1_axi_rlast),
        .dout(net_slot_1_axi_r_ctrl));
  bd_1579_slot_1_w_0 slot_1_w
       (.In0(net_slot_1_axi_wvalid),
        .In1(net_slot_1_axi_wready),
        .In2(net_slot_1_axi_wlast),
        .dout(net_slot_1_axi_w_ctrl));
  bd_1579_slot_3_ar_0 slot_3_ar
       (.In0(net_slot_3_axi_arvalid),
        .In1(net_slot_3_axi_arready),
        .dout(net_slot_3_axi_ar_ctrl));
  bd_1579_slot_3_aw_0 slot_3_aw
       (.In0(net_slot_3_axi_awvalid),
        .In1(net_slot_3_axi_awready),
        .dout(net_slot_3_axi_aw_ctrl));
  bd_1579_slot_3_b_0 slot_3_b
       (.In0(net_slot_3_axi_bvalid),
        .In1(net_slot_3_axi_bready),
        .dout(net_slot_3_axi_b_ctrl));
  bd_1579_slot_3_r_0 slot_3_r
       (.In0(net_slot_3_axi_rvalid),
        .In1(net_slot_3_axi_rready),
        .In2(net_slot_3_axi_rlast),
        .dout(net_slot_3_axi_r_ctrl));
  bd_1579_slot_3_w_0 slot_3_w
       (.In0(net_slot_3_axi_wvalid),
        .In1(net_slot_3_axi_wready),
        .In2(net_slot_3_axi_wlast),
        .dout(net_slot_3_axi_w_ctrl));
  bd_1579_slot_5_ar_0 slot_5_ar
       (.In0(net_slot_5_axi_arvalid),
        .In1(net_slot_5_axi_arready),
        .dout(net_slot_5_axi_ar_ctrl));
  bd_1579_slot_5_aw_0 slot_5_aw
       (.In0(net_slot_5_axi_awvalid),
        .In1(net_slot_5_axi_awready),
        .dout(net_slot_5_axi_aw_ctrl));
  bd_1579_slot_5_b_0 slot_5_b
       (.In0(net_slot_5_axi_bvalid),
        .In1(net_slot_5_axi_bready),
        .dout(net_slot_5_axi_b_ctrl));
  bd_1579_slot_5_r_0 slot_5_r
       (.In0(net_slot_5_axi_rvalid),
        .In1(net_slot_5_axi_rready),
        .In2(net_slot_5_axi_rlast),
        .dout(net_slot_5_axi_r_ctrl));
  bd_1579_slot_5_w_0 slot_5_w
       (.In0(net_slot_5_axi_wvalid),
        .In1(net_slot_5_axi_wready),
        .In2(net_slot_5_axi_wlast),
        .dout(net_slot_5_axi_w_ctrl));
  bd_1579_slot_6_ar_0 slot_6_ar
       (.In0(net_slot_6_axi_arvalid),
        .In1(net_slot_6_axi_arready),
        .dout(net_slot_6_axi_ar_ctrl));
  bd_1579_slot_6_aw_0 slot_6_aw
       (.In0(net_slot_6_axi_awvalid),
        .In1(net_slot_6_axi_awready),
        .dout(net_slot_6_axi_aw_ctrl));
  bd_1579_slot_6_b_0 slot_6_b
       (.In0(net_slot_6_axi_bvalid),
        .In1(net_slot_6_axi_bready),
        .dout(net_slot_6_axi_b_ctrl));
  bd_1579_slot_6_r_0 slot_6_r
       (.In0(net_slot_6_axi_rvalid),
        .In1(net_slot_6_axi_rready),
        .In2(net_slot_6_axi_rlast),
        .dout(net_slot_6_axi_r_ctrl));
  bd_1579_slot_6_w_0 slot_6_w
       (.In0(net_slot_6_axi_wvalid),
        .In1(net_slot_6_axi_wready),
        .In2(net_slot_6_axi_wlast),
        .dout(net_slot_6_axi_w_ctrl));
  bd_1579_slot_7_ar_0 slot_7_ar
       (.In0(net_slot_7_axi_arvalid),
        .In1(net_slot_7_axi_arready),
        .dout(net_slot_7_axi_ar_ctrl));
  bd_1579_slot_7_aw_0 slot_7_aw
       (.In0(net_slot_7_axi_awvalid),
        .In1(net_slot_7_axi_awready),
        .dout(net_slot_7_axi_aw_ctrl));
  bd_1579_slot_7_b_0 slot_7_b
       (.In0(net_slot_7_axi_bvalid),
        .In1(net_slot_7_axi_bready),
        .dout(net_slot_7_axi_b_ctrl));
  bd_1579_slot_7_r_0 slot_7_r
       (.In0(net_slot_7_axi_rvalid),
        .In1(net_slot_7_axi_rready),
        .In2(net_slot_7_axi_rlast),
        .dout(net_slot_7_axi_r_ctrl));
  bd_1579_slot_7_w_0 slot_7_w
       (.In0(net_slot_7_axi_wvalid),
        .In1(net_slot_7_axi_wready),
        .In2(net_slot_7_axi_wlast),
        .dout(net_slot_7_axi_w_ctrl));
endmodule
