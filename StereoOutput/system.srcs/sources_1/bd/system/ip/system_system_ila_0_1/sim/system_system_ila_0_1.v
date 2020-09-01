// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:system_ila:1.1
// IP Revision: 6

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_system_ila_0_1 (
  clk,
  probe0,
  probe1,
  SLOT_0_AXI_awid,
  SLOT_0_AXI_awaddr,
  SLOT_0_AXI_awlen,
  SLOT_0_AXI_awsize,
  SLOT_0_AXI_awcache,
  SLOT_0_AXI_awprot,
  SLOT_0_AXI_awvalid,
  SLOT_0_AXI_awready,
  SLOT_0_AXI_wid,
  SLOT_0_AXI_wdata,
  SLOT_0_AXI_wstrb,
  SLOT_0_AXI_wlast,
  SLOT_0_AXI_wvalid,
  SLOT_0_AXI_wready,
  SLOT_0_AXI_bid,
  SLOT_0_AXI_bresp,
  SLOT_0_AXI_bvalid,
  SLOT_0_AXI_bready,
  SLOT_0_AXI_arid,
  SLOT_0_AXI_araddr,
  SLOT_0_AXI_arlen,
  SLOT_0_AXI_arsize,
  SLOT_0_AXI_arcache,
  SLOT_0_AXI_arprot,
  SLOT_0_AXI_arvalid,
  SLOT_0_AXI_arready,
  SLOT_0_AXI_rid,
  SLOT_0_AXI_rdata,
  SLOT_0_AXI_rresp,
  SLOT_0_AXI_rlast,
  SLOT_0_AXI_rvalid,
  SLOT_0_AXI_rready,
  SLOT_1_AXI_awid,
  SLOT_1_AXI_awaddr,
  SLOT_1_AXI_awlen,
  SLOT_1_AXI_awsize,
  SLOT_1_AXI_awcache,
  SLOT_1_AXI_awprot,
  SLOT_1_AXI_awvalid,
  SLOT_1_AXI_awready,
  SLOT_1_AXI_wid,
  SLOT_1_AXI_wdata,
  SLOT_1_AXI_wstrb,
  SLOT_1_AXI_wlast,
  SLOT_1_AXI_wvalid,
  SLOT_1_AXI_wready,
  SLOT_1_AXI_bid,
  SLOT_1_AXI_bresp,
  SLOT_1_AXI_bvalid,
  SLOT_1_AXI_bready,
  SLOT_1_AXI_arid,
  SLOT_1_AXI_araddr,
  SLOT_1_AXI_arlen,
  SLOT_1_AXI_arsize,
  SLOT_1_AXI_arcache,
  SLOT_1_AXI_arprot,
  SLOT_1_AXI_arvalid,
  SLOT_1_AXI_arready,
  SLOT_1_AXI_rid,
  SLOT_1_AXI_rdata,
  SLOT_1_AXI_rresp,
  SLOT_1_AXI_rlast,
  SLOT_1_AXI_rvalid,
  SLOT_1_AXI_rready,
  SLOT_2_AXIS_tdata,
  SLOT_2_AXIS_tkeep,
  SLOT_2_AXIS_tlast,
  SLOT_2_AXIS_tuser,
  SLOT_2_AXIS_tvalid,
  SLOT_2_AXIS_tready,
  SLOT_3_AXI_awaddr,
  SLOT_3_AXI_awlen,
  SLOT_3_AXI_awsize,
  SLOT_3_AXI_awcache,
  SLOT_3_AXI_awprot,
  SLOT_3_AXI_awvalid,
  SLOT_3_AXI_awready,
  SLOT_3_AXI_wdata,
  SLOT_3_AXI_wstrb,
  SLOT_3_AXI_wlast,
  SLOT_3_AXI_wvalid,
  SLOT_3_AXI_wready,
  SLOT_3_AXI_bresp,
  SLOT_3_AXI_bvalid,
  SLOT_3_AXI_bready,
  SLOT_3_AXI_araddr,
  SLOT_3_AXI_arlen,
  SLOT_3_AXI_arsize,
  SLOT_3_AXI_arcache,
  SLOT_3_AXI_arprot,
  SLOT_3_AXI_arvalid,
  SLOT_3_AXI_arready,
  SLOT_3_AXI_rdata,
  SLOT_3_AXI_rlast,
  SLOT_3_AXI_rvalid,
  SLOT_3_AXI_rready,
  SLOT_4_AXIS_tdata,
  SLOT_4_AXIS_tkeep,
  SLOT_4_AXIS_tlast,
  SLOT_4_AXIS_tuser,
  SLOT_4_AXIS_tvalid,
  SLOT_4_AXIS_tready,
  SLOT_5_AXI_awaddr,
  SLOT_5_AXI_awlen,
  SLOT_5_AXI_awsize,
  SLOT_5_AXI_awcache,
  SLOT_5_AXI_awprot,
  SLOT_5_AXI_awvalid,
  SLOT_5_AXI_awready,
  SLOT_5_AXI_wdata,
  SLOT_5_AXI_wstrb,
  SLOT_5_AXI_wlast,
  SLOT_5_AXI_wvalid,
  SLOT_5_AXI_wready,
  SLOT_5_AXI_bresp,
  SLOT_5_AXI_bvalid,
  SLOT_5_AXI_bready,
  SLOT_5_AXI_araddr,
  SLOT_5_AXI_arlen,
  SLOT_5_AXI_arsize,
  SLOT_5_AXI_arcache,
  SLOT_5_AXI_arprot,
  SLOT_5_AXI_arvalid,
  SLOT_5_AXI_arready,
  SLOT_5_AXI_rdata,
  SLOT_5_AXI_rlast,
  SLOT_5_AXI_rvalid,
  SLOT_5_AXI_rready,
  SLOT_6_AXI_awaddr,
  SLOT_6_AXI_awlen,
  SLOT_6_AXI_awsize,
  SLOT_6_AXI_awcache,
  SLOT_6_AXI_awprot,
  SLOT_6_AXI_awvalid,
  SLOT_6_AXI_awready,
  SLOT_6_AXI_wdata,
  SLOT_6_AXI_wlast,
  SLOT_6_AXI_wvalid,
  SLOT_6_AXI_wready,
  SLOT_6_AXI_bvalid,
  SLOT_6_AXI_bready,
  SLOT_6_AXI_araddr,
  SLOT_6_AXI_arlen,
  SLOT_6_AXI_arsize,
  SLOT_6_AXI_arcache,
  SLOT_6_AXI_arprot,
  SLOT_6_AXI_arvalid,
  SLOT_6_AXI_arready,
  SLOT_6_AXI_rdata,
  SLOT_6_AXI_rresp,
  SLOT_6_AXI_rlast,
  SLOT_6_AXI_rvalid,
  SLOT_6_AXI_rready,
  SLOT_7_AXI_awaddr,
  SLOT_7_AXI_awlen,
  SLOT_7_AXI_awsize,
  SLOT_7_AXI_awcache,
  SLOT_7_AXI_awprot,
  SLOT_7_AXI_awvalid,
  SLOT_7_AXI_awready,
  SLOT_7_AXI_wdata,
  SLOT_7_AXI_wlast,
  SLOT_7_AXI_wvalid,
  SLOT_7_AXI_wready,
  SLOT_7_AXI_bvalid,
  SLOT_7_AXI_bready,
  SLOT_7_AXI_araddr,
  SLOT_7_AXI_arlen,
  SLOT_7_AXI_arsize,
  SLOT_7_AXI_arcache,
  SLOT_7_AXI_arprot,
  SLOT_7_AXI_arvalid,
  SLOT_7_AXI_arready,
  SLOT_7_AXI_rdata,
  SLOT_7_AXI_rresp,
  SLOT_7_AXI_rlast,
  SLOT_7_AXI_rvalid,
  SLOT_7_AXI_rready,
  SLOT_8_AXIS_tid,
  SLOT_8_AXIS_tdest,
  SLOT_8_AXIS_tdata,
  SLOT_8_AXIS_tstrb,
  SLOT_8_AXIS_tkeep,
  SLOT_8_AXIS_tlast,
  SLOT_8_AXIS_tuser,
  SLOT_8_AXIS_tvalid,
  SLOT_8_AXIS_tready,
  SLOT_9_AXIS_tdata,
  SLOT_9_AXIS_tlast,
  SLOT_9_AXIS_tuser,
  SLOT_9_AXIS_tvalid,
  SLOT_9_AXIS_tready,
  SLOT_10_AXIS_tdata,
  SLOT_10_AXIS_tlast,
  SLOT_10_AXIS_tuser,
  SLOT_10_AXIS_tvalid,
  SLOT_10_AXIS_tready,
  resetn
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_10_AXIS:SLOT_1_AXI:SLOT_2_AXIS:SLOT_3_AXI:SLOT_4_AXIS:SLOT_5_AXI:SLOT_6_AXI:SLOT_7_AXI:SLOT_8_AXIS:SLOT_9_AXIS, ASSOCIATED_RESET resetn, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk CLK" *)
input wire clk;
input wire [0 : 0] probe0;
input wire [0 : 0] probe1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWID" *)
input wire [0 : 0] SLOT_0_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *)
input wire [31 : 0] SLOT_0_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN" *)
input wire [3 : 0] SLOT_0_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE" *)
input wire [2 : 0] SLOT_0_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE" *)
input wire [3 : 0] SLOT_0_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT" *)
input wire [2 : 0] SLOT_0_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *)
input wire SLOT_0_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *)
input wire SLOT_0_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WID" *)
input wire [0 : 0] SLOT_0_AXI_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *)
input wire [63 : 0] SLOT_0_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB" *)
input wire [7 : 0] SLOT_0_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST" *)
input wire SLOT_0_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *)
input wire SLOT_0_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *)
input wire SLOT_0_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BID" *)
input wire [0 : 0] SLOT_0_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP" *)
input wire [1 : 0] SLOT_0_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *)
input wire SLOT_0_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *)
input wire SLOT_0_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARID" *)
input wire [0 : 0] SLOT_0_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *)
input wire [31 : 0] SLOT_0_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN" *)
input wire [3 : 0] SLOT_0_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE" *)
input wire [2 : 0] SLOT_0_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE" *)
input wire [3 : 0] SLOT_0_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT" *)
input wire [2 : 0] SLOT_0_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *)
input wire SLOT_0_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *)
input wire SLOT_0_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RID" *)
input wire [0 : 0] SLOT_0_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *)
input wire [63 : 0] SLOT_0_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP" *)
input wire [1 : 0] SLOT_0_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST" *)
input wire SLOT_0_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *)
input wire SLOT_0_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREAD\
S 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *)
input wire SLOT_0_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWID" *)
input wire [0 : 0] SLOT_1_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWADDR" *)
input wire [31 : 0] SLOT_1_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWLEN" *)
input wire [3 : 0] SLOT_1_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWSIZE" *)
input wire [2 : 0] SLOT_1_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWCACHE" *)
input wire [3 : 0] SLOT_1_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWPROT" *)
input wire [2 : 0] SLOT_1_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWVALID" *)
input wire SLOT_1_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWREADY" *)
input wire SLOT_1_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WID" *)
input wire [0 : 0] SLOT_1_AXI_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WDATA" *)
input wire [63 : 0] SLOT_1_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WSTRB" *)
input wire [7 : 0] SLOT_1_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WLAST" *)
input wire SLOT_1_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WVALID" *)
input wire SLOT_1_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WREADY" *)
input wire SLOT_1_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BID" *)
input wire [0 : 0] SLOT_1_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BRESP" *)
input wire [1 : 0] SLOT_1_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BVALID" *)
input wire SLOT_1_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BREADY" *)
input wire SLOT_1_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARID" *)
input wire [0 : 0] SLOT_1_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARADDR" *)
input wire [31 : 0] SLOT_1_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARLEN" *)
input wire [3 : 0] SLOT_1_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARSIZE" *)
input wire [2 : 0] SLOT_1_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARCACHE" *)
input wire [3 : 0] SLOT_1_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARPROT" *)
input wire [2 : 0] SLOT_1_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARVALID" *)
input wire SLOT_1_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARREADY" *)
input wire SLOT_1_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RID" *)
input wire [0 : 0] SLOT_1_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RDATA" *)
input wire [63 : 0] SLOT_1_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RRESP" *)
input wire [1 : 0] SLOT_1_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RLAST" *)
input wire SLOT_1_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RVALID" *)
input wire SLOT_1_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREAD\
S 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RREADY" *)
input wire SLOT_1_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TDATA" *)
input wire [23 : 0] SLOT_2_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TKEEP" *)
input wire [2 : 0] SLOT_2_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TLAST" *)
input wire SLOT_2_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TUSER" *)
input wire [0 : 0] SLOT_2_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TVALID" *)
input wire SLOT_2_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TREADY" *)
input wire SLOT_2_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR" *)
input wire [31 : 0] SLOT_3_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN" *)
input wire [7 : 0] SLOT_3_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE" *)
input wire [2 : 0] SLOT_3_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE" *)
input wire [3 : 0] SLOT_3_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT" *)
input wire [2 : 0] SLOT_3_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID" *)
input wire SLOT_3_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY" *)
input wire SLOT_3_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA" *)
input wire [63 : 0] SLOT_3_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB" *)
input wire [7 : 0] SLOT_3_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST" *)
input wire SLOT_3_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID" *)
input wire SLOT_3_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY" *)
input wire SLOT_3_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP" *)
input wire [1 : 0] SLOT_3_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID" *)
input wire SLOT_3_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY" *)
input wire SLOT_3_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR" *)
input wire [31 : 0] SLOT_3_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN" *)
input wire [7 : 0] SLOT_3_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE" *)
input wire [2 : 0] SLOT_3_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE" *)
input wire [3 : 0] SLOT_3_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT" *)
input wire [2 : 0] SLOT_3_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID" *)
input wire SLOT_3_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY" *)
input wire SLOT_3_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA" *)
input wire [63 : 0] SLOT_3_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST" *)
input wire SLOT_3_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID" *)
input wire SLOT_3_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREA\
DS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY" *)
input wire SLOT_3_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TDATA" *)
input wire [23 : 0] SLOT_4_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TKEEP" *)
input wire [2 : 0] SLOT_4_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TLAST" *)
input wire SLOT_4_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TUSER" *)
input wire [0 : 0] SLOT_4_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TVALID" *)
input wire SLOT_4_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_4_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TREADY" *)
input wire SLOT_4_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWADDR" *)
input wire [31 : 0] SLOT_5_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWLEN" *)
input wire [7 : 0] SLOT_5_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWSIZE" *)
input wire [2 : 0] SLOT_5_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWCACHE" *)
input wire [3 : 0] SLOT_5_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWPROT" *)
input wire [2 : 0] SLOT_5_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWVALID" *)
input wire SLOT_5_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWREADY" *)
input wire SLOT_5_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WDATA" *)
input wire [63 : 0] SLOT_5_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WSTRB" *)
input wire [7 : 0] SLOT_5_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WLAST" *)
input wire SLOT_5_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WVALID" *)
input wire SLOT_5_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WREADY" *)
input wire SLOT_5_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BRESP" *)
input wire [1 : 0] SLOT_5_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BVALID" *)
input wire SLOT_5_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BREADY" *)
input wire SLOT_5_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARADDR" *)
input wire [31 : 0] SLOT_5_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARLEN" *)
input wire [7 : 0] SLOT_5_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARSIZE" *)
input wire [2 : 0] SLOT_5_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARCACHE" *)
input wire [3 : 0] SLOT_5_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARPROT" *)
input wire [2 : 0] SLOT_5_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARVALID" *)
input wire SLOT_5_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARREADY" *)
input wire SLOT_5_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RDATA" *)
input wire [63 : 0] SLOT_5_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RLAST" *)
input wire SLOT_5_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RVALID" *)
input wire SLOT_5_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_5_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREA\
DS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RREADY" *)
input wire SLOT_5_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWADDR" *)
input wire [31 : 0] SLOT_6_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWLEN" *)
input wire [7 : 0] SLOT_6_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWSIZE" *)
input wire [2 : 0] SLOT_6_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWCACHE" *)
input wire [3 : 0] SLOT_6_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWPROT" *)
input wire [2 : 0] SLOT_6_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWVALID" *)
input wire SLOT_6_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWREADY" *)
input wire SLOT_6_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WDATA" *)
input wire [63 : 0] SLOT_6_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WLAST" *)
input wire SLOT_6_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WVALID" *)
input wire SLOT_6_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WREADY" *)
input wire SLOT_6_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI BVALID" *)
input wire SLOT_6_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI BREADY" *)
input wire SLOT_6_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARADDR" *)
input wire [31 : 0] SLOT_6_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARLEN" *)
input wire [7 : 0] SLOT_6_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARSIZE" *)
input wire [2 : 0] SLOT_6_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARCACHE" *)
input wire [3 : 0] SLOT_6_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARPROT" *)
input wire [2 : 0] SLOT_6_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARVALID" *)
input wire SLOT_6_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARREADY" *)
input wire SLOT_6_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RDATA" *)
input wire [63 : 0] SLOT_6_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RRESP" *)
input wire [1 : 0] SLOT_6_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RLAST" *)
input wire SLOT_6_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RVALID" *)
input wire SLOT_6_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_6_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREAD\
S 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RREADY" *)
input wire SLOT_6_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWADDR" *)
input wire [31 : 0] SLOT_7_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWLEN" *)
input wire [7 : 0] SLOT_7_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWSIZE" *)
input wire [2 : 0] SLOT_7_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWCACHE" *)
input wire [3 : 0] SLOT_7_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWPROT" *)
input wire [2 : 0] SLOT_7_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWVALID" *)
input wire SLOT_7_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI AWREADY" *)
input wire SLOT_7_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI WDATA" *)
input wire [63 : 0] SLOT_7_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI WLAST" *)
input wire SLOT_7_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI WVALID" *)
input wire SLOT_7_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI WREADY" *)
input wire SLOT_7_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI BVALID" *)
input wire SLOT_7_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI BREADY" *)
input wire SLOT_7_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARADDR" *)
input wire [31 : 0] SLOT_7_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARLEN" *)
input wire [7 : 0] SLOT_7_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARSIZE" *)
input wire [2 : 0] SLOT_7_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARCACHE" *)
input wire [1 : 0] SLOT_7_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARPROT" *)
input wire [2 : 0] SLOT_7_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARVALID" *)
input wire SLOT_7_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI ARREADY" *)
input wire SLOT_7_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI RDATA" *)
input wire [63 : 0] SLOT_7_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI RRESP" *)
input wire [1 : 0] SLOT_7_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI RLAST" *)
input wire SLOT_7_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI RVALID" *)
input wire SLOT_7_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_7_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREAD\
S 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_7_AXI RREADY" *)
input wire SLOT_7_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TID" *)
input wire [0 : 0] SLOT_8_AXIS_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TDEST" *)
input wire [0 : 0] SLOT_8_AXIS_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TDATA" *)
input wire [23 : 0] SLOT_8_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TSTRB" *)
input wire [2 : 0] SLOT_8_AXIS_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TKEEP" *)
input wire [2 : 0] SLOT_8_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TLAST" *)
input wire SLOT_8_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TUSER" *)
input wire [0 : 0] SLOT_8_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TVALID" *)
input wire SLOT_8_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_8_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TREADY" *)
input wire SLOT_8_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_9_AXIS TDATA" *)
input wire [23 : 0] SLOT_9_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_9_AXIS TLAST" *)
input wire SLOT_9_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_9_AXIS TUSER" *)
input wire [0 : 0] SLOT_9_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_9_AXIS TVALID" *)
input wire SLOT_9_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_9_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minim\
um {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type \
immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {a\
ttribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string \
minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type imm\
ediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} m\
aximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs \
{resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_9_AXIS TREADY" *)
input wire SLOT_9_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_10_AXIS TDATA" *)
input wire [23 : 0] SLOT_10_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_10_AXIS TLAST" *)
input wire SLOT_10_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_10_AXIS TUSER" *)
input wire [0 : 0] SLOT_10_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_10_AXIS TVALID" *)
input wire SLOT_10_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_10_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long mini\
mum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type\
 immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {\
attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string\
 minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type im\
mediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} \
maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs\
 {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_10_AXIS TREADY" *)
input wire SLOT_10_AXIS_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.resetn RST" *)
input wire resetn;

  bd_1579 inst (
    .clk(clk),
    .probe0(probe0),
    .probe1(probe1),
    .SLOT_0_AXI_awid(SLOT_0_AXI_awid),
    .SLOT_0_AXI_awaddr(SLOT_0_AXI_awaddr),
    .SLOT_0_AXI_awlen(SLOT_0_AXI_awlen),
    .SLOT_0_AXI_awsize(SLOT_0_AXI_awsize),
    .SLOT_0_AXI_awcache(SLOT_0_AXI_awcache),
    .SLOT_0_AXI_awprot(SLOT_0_AXI_awprot),
    .SLOT_0_AXI_awvalid(SLOT_0_AXI_awvalid),
    .SLOT_0_AXI_awready(SLOT_0_AXI_awready),
    .SLOT_0_AXI_wid(SLOT_0_AXI_wid),
    .SLOT_0_AXI_wdata(SLOT_0_AXI_wdata),
    .SLOT_0_AXI_wstrb(SLOT_0_AXI_wstrb),
    .SLOT_0_AXI_wlast(SLOT_0_AXI_wlast),
    .SLOT_0_AXI_wvalid(SLOT_0_AXI_wvalid),
    .SLOT_0_AXI_wready(SLOT_0_AXI_wready),
    .SLOT_0_AXI_bid(SLOT_0_AXI_bid),
    .SLOT_0_AXI_bresp(SLOT_0_AXI_bresp),
    .SLOT_0_AXI_bvalid(SLOT_0_AXI_bvalid),
    .SLOT_0_AXI_bready(SLOT_0_AXI_bready),
    .SLOT_0_AXI_arid(SLOT_0_AXI_arid),
    .SLOT_0_AXI_araddr(SLOT_0_AXI_araddr),
    .SLOT_0_AXI_arlen(SLOT_0_AXI_arlen),
    .SLOT_0_AXI_arsize(SLOT_0_AXI_arsize),
    .SLOT_0_AXI_arcache(SLOT_0_AXI_arcache),
    .SLOT_0_AXI_arprot(SLOT_0_AXI_arprot),
    .SLOT_0_AXI_arvalid(SLOT_0_AXI_arvalid),
    .SLOT_0_AXI_arready(SLOT_0_AXI_arready),
    .SLOT_0_AXI_rid(SLOT_0_AXI_rid),
    .SLOT_0_AXI_rdata(SLOT_0_AXI_rdata),
    .SLOT_0_AXI_rresp(SLOT_0_AXI_rresp),
    .SLOT_0_AXI_rlast(SLOT_0_AXI_rlast),
    .SLOT_0_AXI_rvalid(SLOT_0_AXI_rvalid),
    .SLOT_0_AXI_rready(SLOT_0_AXI_rready),
    .SLOT_1_AXI_awid(SLOT_1_AXI_awid),
    .SLOT_1_AXI_awaddr(SLOT_1_AXI_awaddr),
    .SLOT_1_AXI_awlen(SLOT_1_AXI_awlen),
    .SLOT_1_AXI_awsize(SLOT_1_AXI_awsize),
    .SLOT_1_AXI_awcache(SLOT_1_AXI_awcache),
    .SLOT_1_AXI_awprot(SLOT_1_AXI_awprot),
    .SLOT_1_AXI_awvalid(SLOT_1_AXI_awvalid),
    .SLOT_1_AXI_awready(SLOT_1_AXI_awready),
    .SLOT_1_AXI_wid(SLOT_1_AXI_wid),
    .SLOT_1_AXI_wdata(SLOT_1_AXI_wdata),
    .SLOT_1_AXI_wstrb(SLOT_1_AXI_wstrb),
    .SLOT_1_AXI_wlast(SLOT_1_AXI_wlast),
    .SLOT_1_AXI_wvalid(SLOT_1_AXI_wvalid),
    .SLOT_1_AXI_wready(SLOT_1_AXI_wready),
    .SLOT_1_AXI_bid(SLOT_1_AXI_bid),
    .SLOT_1_AXI_bresp(SLOT_1_AXI_bresp),
    .SLOT_1_AXI_bvalid(SLOT_1_AXI_bvalid),
    .SLOT_1_AXI_bready(SLOT_1_AXI_bready),
    .SLOT_1_AXI_arid(SLOT_1_AXI_arid),
    .SLOT_1_AXI_araddr(SLOT_1_AXI_araddr),
    .SLOT_1_AXI_arlen(SLOT_1_AXI_arlen),
    .SLOT_1_AXI_arsize(SLOT_1_AXI_arsize),
    .SLOT_1_AXI_arcache(SLOT_1_AXI_arcache),
    .SLOT_1_AXI_arprot(SLOT_1_AXI_arprot),
    .SLOT_1_AXI_arvalid(SLOT_1_AXI_arvalid),
    .SLOT_1_AXI_arready(SLOT_1_AXI_arready),
    .SLOT_1_AXI_rid(SLOT_1_AXI_rid),
    .SLOT_1_AXI_rdata(SLOT_1_AXI_rdata),
    .SLOT_1_AXI_rresp(SLOT_1_AXI_rresp),
    .SLOT_1_AXI_rlast(SLOT_1_AXI_rlast),
    .SLOT_1_AXI_rvalid(SLOT_1_AXI_rvalid),
    .SLOT_1_AXI_rready(SLOT_1_AXI_rready),
    .SLOT_2_AXIS_tdata(SLOT_2_AXIS_tdata),
    .SLOT_2_AXIS_tkeep(SLOT_2_AXIS_tkeep),
    .SLOT_2_AXIS_tlast(SLOT_2_AXIS_tlast),
    .SLOT_2_AXIS_tuser(SLOT_2_AXIS_tuser),
    .SLOT_2_AXIS_tvalid(SLOT_2_AXIS_tvalid),
    .SLOT_2_AXIS_tready(SLOT_2_AXIS_tready),
    .SLOT_3_AXI_awaddr(SLOT_3_AXI_awaddr),
    .SLOT_3_AXI_awlen(SLOT_3_AXI_awlen),
    .SLOT_3_AXI_awsize(SLOT_3_AXI_awsize),
    .SLOT_3_AXI_awcache(SLOT_3_AXI_awcache),
    .SLOT_3_AXI_awprot(SLOT_3_AXI_awprot),
    .SLOT_3_AXI_awvalid(SLOT_3_AXI_awvalid),
    .SLOT_3_AXI_awready(SLOT_3_AXI_awready),
    .SLOT_3_AXI_wdata(SLOT_3_AXI_wdata),
    .SLOT_3_AXI_wstrb(SLOT_3_AXI_wstrb),
    .SLOT_3_AXI_wlast(SLOT_3_AXI_wlast),
    .SLOT_3_AXI_wvalid(SLOT_3_AXI_wvalid),
    .SLOT_3_AXI_wready(SLOT_3_AXI_wready),
    .SLOT_3_AXI_bresp(SLOT_3_AXI_bresp),
    .SLOT_3_AXI_bvalid(SLOT_3_AXI_bvalid),
    .SLOT_3_AXI_bready(SLOT_3_AXI_bready),
    .SLOT_3_AXI_araddr(SLOT_3_AXI_araddr),
    .SLOT_3_AXI_arlen(SLOT_3_AXI_arlen),
    .SLOT_3_AXI_arsize(SLOT_3_AXI_arsize),
    .SLOT_3_AXI_arcache(SLOT_3_AXI_arcache),
    .SLOT_3_AXI_arprot(SLOT_3_AXI_arprot),
    .SLOT_3_AXI_arvalid(SLOT_3_AXI_arvalid),
    .SLOT_3_AXI_arready(SLOT_3_AXI_arready),
    .SLOT_3_AXI_rdata(SLOT_3_AXI_rdata),
    .SLOT_3_AXI_rlast(SLOT_3_AXI_rlast),
    .SLOT_3_AXI_rvalid(SLOT_3_AXI_rvalid),
    .SLOT_3_AXI_rready(SLOT_3_AXI_rready),
    .SLOT_4_AXIS_tdata(SLOT_4_AXIS_tdata),
    .SLOT_4_AXIS_tkeep(SLOT_4_AXIS_tkeep),
    .SLOT_4_AXIS_tlast(SLOT_4_AXIS_tlast),
    .SLOT_4_AXIS_tuser(SLOT_4_AXIS_tuser),
    .SLOT_4_AXIS_tvalid(SLOT_4_AXIS_tvalid),
    .SLOT_4_AXIS_tready(SLOT_4_AXIS_tready),
    .SLOT_5_AXI_awaddr(SLOT_5_AXI_awaddr),
    .SLOT_5_AXI_awlen(SLOT_5_AXI_awlen),
    .SLOT_5_AXI_awsize(SLOT_5_AXI_awsize),
    .SLOT_5_AXI_awcache(SLOT_5_AXI_awcache),
    .SLOT_5_AXI_awprot(SLOT_5_AXI_awprot),
    .SLOT_5_AXI_awvalid(SLOT_5_AXI_awvalid),
    .SLOT_5_AXI_awready(SLOT_5_AXI_awready),
    .SLOT_5_AXI_wdata(SLOT_5_AXI_wdata),
    .SLOT_5_AXI_wstrb(SLOT_5_AXI_wstrb),
    .SLOT_5_AXI_wlast(SLOT_5_AXI_wlast),
    .SLOT_5_AXI_wvalid(SLOT_5_AXI_wvalid),
    .SLOT_5_AXI_wready(SLOT_5_AXI_wready),
    .SLOT_5_AXI_bresp(SLOT_5_AXI_bresp),
    .SLOT_5_AXI_bvalid(SLOT_5_AXI_bvalid),
    .SLOT_5_AXI_bready(SLOT_5_AXI_bready),
    .SLOT_5_AXI_araddr(SLOT_5_AXI_araddr),
    .SLOT_5_AXI_arlen(SLOT_5_AXI_arlen),
    .SLOT_5_AXI_arsize(SLOT_5_AXI_arsize),
    .SLOT_5_AXI_arcache(SLOT_5_AXI_arcache),
    .SLOT_5_AXI_arprot(SLOT_5_AXI_arprot),
    .SLOT_5_AXI_arvalid(SLOT_5_AXI_arvalid),
    .SLOT_5_AXI_arready(SLOT_5_AXI_arready),
    .SLOT_5_AXI_rdata(SLOT_5_AXI_rdata),
    .SLOT_5_AXI_rlast(SLOT_5_AXI_rlast),
    .SLOT_5_AXI_rvalid(SLOT_5_AXI_rvalid),
    .SLOT_5_AXI_rready(SLOT_5_AXI_rready),
    .SLOT_6_AXI_awaddr(SLOT_6_AXI_awaddr),
    .SLOT_6_AXI_awlen(SLOT_6_AXI_awlen),
    .SLOT_6_AXI_awsize(SLOT_6_AXI_awsize),
    .SLOT_6_AXI_awcache(SLOT_6_AXI_awcache),
    .SLOT_6_AXI_awprot(SLOT_6_AXI_awprot),
    .SLOT_6_AXI_awvalid(SLOT_6_AXI_awvalid),
    .SLOT_6_AXI_awready(SLOT_6_AXI_awready),
    .SLOT_6_AXI_wdata(SLOT_6_AXI_wdata),
    .SLOT_6_AXI_wlast(SLOT_6_AXI_wlast),
    .SLOT_6_AXI_wvalid(SLOT_6_AXI_wvalid),
    .SLOT_6_AXI_wready(SLOT_6_AXI_wready),
    .SLOT_6_AXI_bvalid(SLOT_6_AXI_bvalid),
    .SLOT_6_AXI_bready(SLOT_6_AXI_bready),
    .SLOT_6_AXI_araddr(SLOT_6_AXI_araddr),
    .SLOT_6_AXI_arlen(SLOT_6_AXI_arlen),
    .SLOT_6_AXI_arsize(SLOT_6_AXI_arsize),
    .SLOT_6_AXI_arcache(SLOT_6_AXI_arcache),
    .SLOT_6_AXI_arprot(SLOT_6_AXI_arprot),
    .SLOT_6_AXI_arvalid(SLOT_6_AXI_arvalid),
    .SLOT_6_AXI_arready(SLOT_6_AXI_arready),
    .SLOT_6_AXI_rdata(SLOT_6_AXI_rdata),
    .SLOT_6_AXI_rresp(SLOT_6_AXI_rresp),
    .SLOT_6_AXI_rlast(SLOT_6_AXI_rlast),
    .SLOT_6_AXI_rvalid(SLOT_6_AXI_rvalid),
    .SLOT_6_AXI_rready(SLOT_6_AXI_rready),
    .SLOT_7_AXI_awaddr(SLOT_7_AXI_awaddr),
    .SLOT_7_AXI_awlen(SLOT_7_AXI_awlen),
    .SLOT_7_AXI_awsize(SLOT_7_AXI_awsize),
    .SLOT_7_AXI_awcache(SLOT_7_AXI_awcache),
    .SLOT_7_AXI_awprot(SLOT_7_AXI_awprot),
    .SLOT_7_AXI_awvalid(SLOT_7_AXI_awvalid),
    .SLOT_7_AXI_awready(SLOT_7_AXI_awready),
    .SLOT_7_AXI_wdata(SLOT_7_AXI_wdata),
    .SLOT_7_AXI_wlast(SLOT_7_AXI_wlast),
    .SLOT_7_AXI_wvalid(SLOT_7_AXI_wvalid),
    .SLOT_7_AXI_wready(SLOT_7_AXI_wready),
    .SLOT_7_AXI_bvalid(SLOT_7_AXI_bvalid),
    .SLOT_7_AXI_bready(SLOT_7_AXI_bready),
    .SLOT_7_AXI_araddr(SLOT_7_AXI_araddr),
    .SLOT_7_AXI_arlen(SLOT_7_AXI_arlen),
    .SLOT_7_AXI_arsize(SLOT_7_AXI_arsize),
    .SLOT_7_AXI_arcache(SLOT_7_AXI_arcache),
    .SLOT_7_AXI_arprot(SLOT_7_AXI_arprot),
    .SLOT_7_AXI_arvalid(SLOT_7_AXI_arvalid),
    .SLOT_7_AXI_arready(SLOT_7_AXI_arready),
    .SLOT_7_AXI_rdata(SLOT_7_AXI_rdata),
    .SLOT_7_AXI_rresp(SLOT_7_AXI_rresp),
    .SLOT_7_AXI_rlast(SLOT_7_AXI_rlast),
    .SLOT_7_AXI_rvalid(SLOT_7_AXI_rvalid),
    .SLOT_7_AXI_rready(SLOT_7_AXI_rready),
    .SLOT_8_AXIS_tid(SLOT_8_AXIS_tid),
    .SLOT_8_AXIS_tdest(SLOT_8_AXIS_tdest),
    .SLOT_8_AXIS_tdata(SLOT_8_AXIS_tdata),
    .SLOT_8_AXIS_tstrb(SLOT_8_AXIS_tstrb),
    .SLOT_8_AXIS_tkeep(SLOT_8_AXIS_tkeep),
    .SLOT_8_AXIS_tlast(SLOT_8_AXIS_tlast),
    .SLOT_8_AXIS_tuser(SLOT_8_AXIS_tuser),
    .SLOT_8_AXIS_tvalid(SLOT_8_AXIS_tvalid),
    .SLOT_8_AXIS_tready(SLOT_8_AXIS_tready),
    .SLOT_9_AXIS_tdata(SLOT_9_AXIS_tdata),
    .SLOT_9_AXIS_tlast(SLOT_9_AXIS_tlast),
    .SLOT_9_AXIS_tuser(SLOT_9_AXIS_tuser),
    .SLOT_9_AXIS_tvalid(SLOT_9_AXIS_tvalid),
    .SLOT_9_AXIS_tready(SLOT_9_AXIS_tready),
    .SLOT_10_AXIS_tdata(SLOT_10_AXIS_tdata),
    .SLOT_10_AXIS_tlast(SLOT_10_AXIS_tlast),
    .SLOT_10_AXIS_tuser(SLOT_10_AXIS_tuser),
    .SLOT_10_AXIS_tvalid(SLOT_10_AXIS_tvalid),
    .SLOT_10_AXIS_tready(SLOT_10_AXIS_tready),
    .resetn(resetn)
  );
endmodule
