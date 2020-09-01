//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Tue Sep  1 12:29:48 2020
//Host        : LiuYangLaptop running 64-bit major release  (build 9200)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_1GAV7EC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [1:0]auto_pc_to_m00_couplers_ARBURST;
  wire [3:0]auto_pc_to_m00_couplers_ARCACHE;
  wire [0:0]auto_pc_to_m00_couplers_ARID;
  wire [3:0]auto_pc_to_m00_couplers_ARLEN;
  wire [1:0]auto_pc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire [3:0]auto_pc_to_m00_couplers_ARQOS;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire [2:0]auto_pc_to_m00_couplers_ARSIZE;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [1:0]auto_pc_to_m00_couplers_AWBURST;
  wire [3:0]auto_pc_to_m00_couplers_AWCACHE;
  wire [0:0]auto_pc_to_m00_couplers_AWID;
  wire [3:0]auto_pc_to_m00_couplers_AWLEN;
  wire [1:0]auto_pc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire [3:0]auto_pc_to_m00_couplers_AWQOS;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire [2:0]auto_pc_to_m00_couplers_AWSIZE;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire [5:0]auto_pc_to_m00_couplers_BID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [63:0]auto_pc_to_m00_couplers_RDATA;
  wire [5:0]auto_pc_to_m00_couplers_RID;
  wire auto_pc_to_m00_couplers_RLAST;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [63:0]auto_pc_to_m00_couplers_WDATA;
  wire [0:0]auto_pc_to_m00_couplers_WID;
  wire auto_pc_to_m00_couplers_WLAST;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [7:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [0:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [0:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [63:0]m00_couplers_to_auto_pc_RDATA;
  wire [0:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [63:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [7:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[0] = auto_pc_to_m00_couplers_ARID;
  assign M_AXI_arlen[3:0] = auto_pc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[0] = auto_pc_to_m00_couplers_AWID;
  assign M_AXI_awlen[3:0] = auto_pc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wid[0] = auto_pc_to_m00_couplers_WID;
  assign M_AXI_wlast = auto_pc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign auto_pc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_m00_couplers_BID[0]),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_m00_couplers_RID[0]),
        .m_axi_rlast(auto_pc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wid(auto_pc_to_m00_couplers_WID),
        .m_axi_wlast(auto_pc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m00_couplers_imp_1O8IVZM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [1:0]auto_pc_to_m00_couplers_ARBURST;
  wire [3:0]auto_pc_to_m00_couplers_ARCACHE;
  wire [0:0]auto_pc_to_m00_couplers_ARID;
  wire [3:0]auto_pc_to_m00_couplers_ARLEN;
  wire [1:0]auto_pc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire [3:0]auto_pc_to_m00_couplers_ARQOS;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire [2:0]auto_pc_to_m00_couplers_ARSIZE;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [1:0]auto_pc_to_m00_couplers_AWBURST;
  wire [3:0]auto_pc_to_m00_couplers_AWCACHE;
  wire [0:0]auto_pc_to_m00_couplers_AWID;
  wire [3:0]auto_pc_to_m00_couplers_AWLEN;
  wire [1:0]auto_pc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire [3:0]auto_pc_to_m00_couplers_AWQOS;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire [2:0]auto_pc_to_m00_couplers_AWSIZE;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire [5:0]auto_pc_to_m00_couplers_BID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [63:0]auto_pc_to_m00_couplers_RDATA;
  wire [5:0]auto_pc_to_m00_couplers_RID;
  wire auto_pc_to_m00_couplers_RLAST;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [63:0]auto_pc_to_m00_couplers_WDATA;
  wire [0:0]auto_pc_to_m00_couplers_WID;
  wire auto_pc_to_m00_couplers_WLAST;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [7:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [0:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [0:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [63:0]m00_couplers_to_auto_pc_RDATA;
  wire [0:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [63:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [7:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[0] = auto_pc_to_m00_couplers_ARID;
  assign M_AXI_arlen[3:0] = auto_pc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[0] = auto_pc_to_m00_couplers_AWID;
  assign M_AXI_awlen[3:0] = auto_pc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wid[0] = auto_pc_to_m00_couplers_WID;
  assign M_AXI_wlast = auto_pc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign auto_pc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_m00_couplers_BID[0]),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_m00_couplers_RID[0]),
        .m_axi_rlast(auto_pc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wid(auto_pc_to_m00_couplers_WID),
        .m_axi_wlast(auto_pc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m00_couplers_imp_BJFRAJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_11QGAKA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_1CC6POO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_3Q5ND
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_1YDN4A4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_N94YD9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_12TUYLH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awready,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wready,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awready,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wready);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  input [0:0]M_AXI_awready;
  input [0:0]M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  input [0:0]M_AXI_wready;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  output [0:0]S_AXI_awready;
  output [0:0]S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  output [0:0]S_AXI_wready;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [63:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RLAST;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rlast[0] = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast[0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
endmodule

module s00_couplers_imp_1U76YUB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awready,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wready,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awready,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wready);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  input [0:0]M_AXI_awready;
  input [0:0]M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  input [0:0]M_AXI_wready;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  output [0:0]S_AXI_awready;
  output [0:0]S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  output [0:0]S_AXI_wready;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [63:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RLAST;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rlast[0] = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast[0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
endmodule

module s00_couplers_imp_8CNLH6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_AFJYUS
   (M_ACLK,
    M_ARESETN,
    M_AXI_arready,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_arready,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  input [0:0]M_AXI_arready;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  input [0:0]M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  output [0:0]S_AXI_arready;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  output [0:0]S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [0:0]s01_couplers_to_s01_couplers_ARREADY;
  wire [31:0]s01_couplers_to_s01_couplers_AWADDR;
  wire [1:0]s01_couplers_to_s01_couplers_AWBURST;
  wire [3:0]s01_couplers_to_s01_couplers_AWCACHE;
  wire [7:0]s01_couplers_to_s01_couplers_AWLEN;
  wire [2:0]s01_couplers_to_s01_couplers_AWPROT;
  wire [0:0]s01_couplers_to_s01_couplers_AWREADY;
  wire [2:0]s01_couplers_to_s01_couplers_AWSIZE;
  wire [0:0]s01_couplers_to_s01_couplers_AWVALID;
  wire [0:0]s01_couplers_to_s01_couplers_BREADY;
  wire [1:0]s01_couplers_to_s01_couplers_BRESP;
  wire [0:0]s01_couplers_to_s01_couplers_BVALID;
  wire [63:0]s01_couplers_to_s01_couplers_RDATA;
  wire [0:0]s01_couplers_to_s01_couplers_RLAST;
  wire [0:0]s01_couplers_to_s01_couplers_RVALID;
  wire [63:0]s01_couplers_to_s01_couplers_WDATA;
  wire [0:0]s01_couplers_to_s01_couplers_WLAST;
  wire [0:0]s01_couplers_to_s01_couplers_WREADY;
  wire [7:0]s01_couplers_to_s01_couplers_WSTRB;
  wire [0:0]s01_couplers_to_s01_couplers_WVALID;

  assign M_AXI_awaddr[31:0] = s01_couplers_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_couplers_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_couplers_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s01_couplers_to_s01_couplers_AWLEN;
  assign M_AXI_awprot[2:0] = s01_couplers_to_s01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = s01_couplers_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = s01_couplers_to_s01_couplers_AWVALID;
  assign M_AXI_bready[0] = s01_couplers_to_s01_couplers_BREADY;
  assign M_AXI_wdata[63:0] = s01_couplers_to_s01_couplers_WDATA;
  assign M_AXI_wlast[0] = s01_couplers_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s01_couplers_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s01_couplers_to_s01_couplers_WVALID;
  assign S_AXI_arready[0] = s01_couplers_to_s01_couplers_ARREADY;
  assign S_AXI_awready[0] = s01_couplers_to_s01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_couplers_BRESP;
  assign S_AXI_bvalid[0] = s01_couplers_to_s01_couplers_BVALID;
  assign S_AXI_rdata[63:0] = s01_couplers_to_s01_couplers_RDATA;
  assign S_AXI_rlast[0] = s01_couplers_to_s01_couplers_RLAST;
  assign S_AXI_rvalid[0] = s01_couplers_to_s01_couplers_RVALID;
  assign S_AXI_wready[0] = s01_couplers_to_s01_couplers_WREADY;
  assign s01_couplers_to_s01_couplers_ARREADY = M_AXI_arready[0];
  assign s01_couplers_to_s01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_couplers_AWREADY = M_AXI_awready[0];
  assign s01_couplers_to_s01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_couplers_AWVALID = S_AXI_awvalid[0];
  assign s01_couplers_to_s01_couplers_BREADY = S_AXI_bready[0];
  assign s01_couplers_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_couplers_to_s01_couplers_BVALID = M_AXI_bvalid[0];
  assign s01_couplers_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign s01_couplers_to_s01_couplers_RLAST = M_AXI_rlast[0];
  assign s01_couplers_to_s01_couplers_RVALID = M_AXI_rvalid[0];
  assign s01_couplers_to_s01_couplers_WDATA = S_AXI_wdata[63:0];
  assign s01_couplers_to_s01_couplers_WLAST = S_AXI_wlast[0];
  assign s01_couplers_to_s01_couplers_WREADY = M_AXI_wready[0];
  assign s01_couplers_to_s01_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign s01_couplers_to_s01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s01_couplers_imp_I173AQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_arready,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_arready,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  input [0:0]M_AXI_arready;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  input [0:0]M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  output [0:0]S_AXI_arready;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  output [0:0]S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [0:0]s01_couplers_to_s01_couplers_ARREADY;
  wire [31:0]s01_couplers_to_s01_couplers_AWADDR;
  wire [1:0]s01_couplers_to_s01_couplers_AWBURST;
  wire [3:0]s01_couplers_to_s01_couplers_AWCACHE;
  wire [7:0]s01_couplers_to_s01_couplers_AWLEN;
  wire [2:0]s01_couplers_to_s01_couplers_AWPROT;
  wire [0:0]s01_couplers_to_s01_couplers_AWREADY;
  wire [2:0]s01_couplers_to_s01_couplers_AWSIZE;
  wire [0:0]s01_couplers_to_s01_couplers_AWVALID;
  wire [0:0]s01_couplers_to_s01_couplers_BREADY;
  wire [1:0]s01_couplers_to_s01_couplers_BRESP;
  wire [0:0]s01_couplers_to_s01_couplers_BVALID;
  wire [63:0]s01_couplers_to_s01_couplers_RDATA;
  wire [0:0]s01_couplers_to_s01_couplers_RLAST;
  wire [0:0]s01_couplers_to_s01_couplers_RVALID;
  wire [63:0]s01_couplers_to_s01_couplers_WDATA;
  wire [0:0]s01_couplers_to_s01_couplers_WLAST;
  wire [0:0]s01_couplers_to_s01_couplers_WREADY;
  wire [7:0]s01_couplers_to_s01_couplers_WSTRB;
  wire [0:0]s01_couplers_to_s01_couplers_WVALID;

  assign M_AXI_awaddr[31:0] = s01_couplers_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_couplers_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_couplers_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s01_couplers_to_s01_couplers_AWLEN;
  assign M_AXI_awprot[2:0] = s01_couplers_to_s01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = s01_couplers_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = s01_couplers_to_s01_couplers_AWVALID;
  assign M_AXI_bready[0] = s01_couplers_to_s01_couplers_BREADY;
  assign M_AXI_wdata[63:0] = s01_couplers_to_s01_couplers_WDATA;
  assign M_AXI_wlast[0] = s01_couplers_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s01_couplers_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s01_couplers_to_s01_couplers_WVALID;
  assign S_AXI_arready[0] = s01_couplers_to_s01_couplers_ARREADY;
  assign S_AXI_awready[0] = s01_couplers_to_s01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_couplers_BRESP;
  assign S_AXI_bvalid[0] = s01_couplers_to_s01_couplers_BVALID;
  assign S_AXI_rdata[63:0] = s01_couplers_to_s01_couplers_RDATA;
  assign S_AXI_rlast[0] = s01_couplers_to_s01_couplers_RLAST;
  assign S_AXI_rvalid[0] = s01_couplers_to_s01_couplers_RVALID;
  assign S_AXI_wready[0] = s01_couplers_to_s01_couplers_WREADY;
  assign s01_couplers_to_s01_couplers_ARREADY = M_AXI_arready[0];
  assign s01_couplers_to_s01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_couplers_AWREADY = M_AXI_awready[0];
  assign s01_couplers_to_s01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_couplers_AWVALID = S_AXI_awvalid[0];
  assign s01_couplers_to_s01_couplers_BREADY = S_AXI_bready[0];
  assign s01_couplers_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_couplers_to_s01_couplers_BVALID = M_AXI_bvalid[0];
  assign s01_couplers_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign s01_couplers_to_s01_couplers_RLAST = M_AXI_rlast[0];
  assign s01_couplers_to_s01_couplers_RVALID = M_AXI_rvalid[0];
  assign s01_couplers_to_s01_couplers_WDATA = S_AXI_wdata[63:0];
  assign s01_couplers_to_s01_couplers_WLAST = S_AXI_wlast[0];
  assign s01_couplers_to_s01_couplers_WREADY = M_AXI_wready[0];
  assign s01_couplers_to_s01_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign s01_couplers_to_s01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=47,numReposBlks=31,numNonXlnxBlks=0,numHierBlks=16,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_clkrst_cnt=13,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
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
    GPIO_0_0_tri_i,
    GPIO_0_0_tri_o,
    GPIO_0_0_tri_t,
    HDMI_CLK_N_0,
    HDMI_CLK_P_0,
    HDMI_D0_N_0,
    HDMI_D0_P_0,
    HDMI_D1_N_0,
    HDMI_D1_P_0,
    HDMI_D2_N_0,
    HDMI_D2_P_0,
    IIC_0_0_scl_i,
    IIC_0_0_scl_o,
    IIC_0_0_scl_t,
    IIC_0_0_sda_i,
    IIC_0_0_sda_o,
    IIC_0_0_sda_t,
    IIC_1_0_scl_i,
    IIC_1_0_scl_o,
    IIC_1_0_scl_t,
    IIC_1_0_sda_i,
    IIC_1_0_sda_o,
    IIC_1_0_sda_t,
    SDIO_0_0_cdn,
    USBIND_0_0_port_indctl,
    USBIND_0_0_vbus_pwrfault,
    USBIND_0_0_vbus_pwrselect,
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 BA" *) inout [2:0]DDR_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CAS_N" *) inout DDR_0_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CK_N" *) inout DDR_0_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CK_P" *) inout DDR_0_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CKE" *) inout DDR_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CS_N" *) inout DDR_0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DM" *) inout [3:0]DDR_0_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQ" *) inout [31:0]DDR_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_N" *) inout [3:0]DDR_0_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_P" *) inout [3:0]DDR_0_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 ODT" *) inout DDR_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 RAS_N" *) inout DDR_0_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 RESET_N" *) inout DDR_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 WE_N" *) inout DDR_0_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO_0, CAN_DEBUG false" *) inout FIXED_IO_0_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRP" *) inout FIXED_IO_0_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 MIO" *) inout [53:0]FIXED_IO_0_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_CLK" *) inout FIXED_IO_0_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_PORB" *) inout FIXED_IO_0_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_SRSTB" *) inout FIXED_IO_0_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_I" *) input [63:0]GPIO_0_0_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_O" *) output [63:0]GPIO_0_0_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_T" *) output [63:0]GPIO_0_0_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HDMI_CLK_N_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HDMI_CLK_N_0, CLK_DOMAIN system_HDMI_tx_0_0_HDMI_CLK_N, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) output HDMI_CLK_N_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HDMI_CLK_P_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HDMI_CLK_P_0, CLK_DOMAIN system_HDMI_tx_0_0_HDMI_CLK_P, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) output HDMI_CLK_P_0;
  output HDMI_D0_N_0;
  output HDMI_D0_P_0;
  output HDMI_D1_N_0;
  output HDMI_D1_P_0;
  output HDMI_D2_N_0;
  output HDMI_D2_P_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SCL_I" *) input IIC_0_0_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SCL_O" *) output IIC_0_0_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SCL_T" *) output IIC_0_0_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SDA_I" *) input IIC_0_0_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SDA_O" *) output IIC_0_0_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SDA_T" *) output IIC_0_0_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1_0 SCL_I" *) input IIC_1_0_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1_0 SCL_O" *) output IIC_1_0_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1_0 SCL_T" *) output IIC_1_0_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1_0 SDA_I" *) input IIC_1_0_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1_0 SDA_O" *) output IIC_1_0_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1_0 SDA_T" *) output IIC_1_0_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdio:1.0 SDIO_0_0 CDN" *) input SDIO_0_0_cdn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:usbctrl:1.0 USBIND_0_0 PORT_INDCTL" *) output [1:0]USBIND_0_0_port_indctl;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:usbctrl:1.0 USBIND_0_0 VBUS_PWRFAULT" *) input USBIND_0_0_vbus_pwrfault;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:usbctrl:1.0 USBIND_0_0 VBUS_PWRSELECT" *) output USBIND_0_0_vbus_pwrselect;
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

  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]ARESETN_1;
  wire HDMI_tx_0_HDMI_CLK_N;
  wire HDMI_tx_0_HDMI_CLK_P;
  wire HDMI_tx_0_HDMI_D0_N;
  wire HDMI_tx_0_HDMI_D0_P;
  wire HDMI_tx_0_HDMI_D1_N;
  wire HDMI_tx_0_HDMI_D1_P;
  wire HDMI_tx_0_HDMI_D2_N;
  wire HDMI_tx_0_HDMI_D2_P;
  wire Net1;
  wire Net2;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire Net3;
  wire OVSensor_0_cmos_xclk_o;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire OVSensor_0_hs_o;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]OVSensor_0_rgb_o;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire OVSensor_0_vid_clk_ce;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire OVSensor_0_vs_o;
  wire OVSensor_1_cmos_xclk_o;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire OVSensor_1_hs_o;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]OVSensor_1_rgb_o;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire OVSensor_1_vid_clk_ce;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire OVSensor_1_vs_o;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]S00_AXI_1_ARADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]S00_AXI_1_ARBURST;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]S00_AXI_1_ARCACHE;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]S00_AXI_1_ARLEN;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]S00_AXI_1_ARPROT;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]S00_AXI_1_ARREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]S00_AXI_1_ARSIZE;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_ARVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]S00_AXI_1_AWREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]S00_AXI_1_BVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]S00_AXI_1_RDATA;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]S00_AXI_1_RLAST;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_RREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]S00_AXI_1_RRESP;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]S00_AXI_1_RVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]S00_AXI_1_WREADY;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]S00_AXI_2_ARADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]S00_AXI_2_ARBURST;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]S00_AXI_2_ARCACHE;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]S00_AXI_2_ARLEN;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]S00_AXI_2_ARPROT;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]S00_AXI_2_ARREADY;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]S00_AXI_2_ARSIZE;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_2_ARVALID;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]S00_AXI_2_AWREADY;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]S00_AXI_2_BVALID;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]S00_AXI_2_RDATA;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]S00_AXI_2_RLAST;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_2_RREADY;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]S00_AXI_2_RRESP;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]S00_AXI_2_RVALID;
  (* CONN_BUS_INFO = "S00_AXI_2 xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]S00_AXI_2_WREADY;
  wire [31:0]S00_AXI_3_ARADDR;
  wire [1:0]S00_AXI_3_ARBURST;
  wire [3:0]S00_AXI_3_ARCACHE;
  wire [11:0]S00_AXI_3_ARID;
  wire [3:0]S00_AXI_3_ARLEN;
  wire [1:0]S00_AXI_3_ARLOCK;
  wire [2:0]S00_AXI_3_ARPROT;
  wire [3:0]S00_AXI_3_ARQOS;
  wire S00_AXI_3_ARREADY;
  wire [2:0]S00_AXI_3_ARSIZE;
  wire S00_AXI_3_ARVALID;
  wire [31:0]S00_AXI_3_AWADDR;
  wire [1:0]S00_AXI_3_AWBURST;
  wire [3:0]S00_AXI_3_AWCACHE;
  wire [11:0]S00_AXI_3_AWID;
  wire [3:0]S00_AXI_3_AWLEN;
  wire [1:0]S00_AXI_3_AWLOCK;
  wire [2:0]S00_AXI_3_AWPROT;
  wire [3:0]S00_AXI_3_AWQOS;
  wire S00_AXI_3_AWREADY;
  wire [2:0]S00_AXI_3_AWSIZE;
  wire S00_AXI_3_AWVALID;
  wire [11:0]S00_AXI_3_BID;
  wire S00_AXI_3_BREADY;
  wire [1:0]S00_AXI_3_BRESP;
  wire S00_AXI_3_BVALID;
  wire [31:0]S00_AXI_3_RDATA;
  wire [11:0]S00_AXI_3_RID;
  wire S00_AXI_3_RLAST;
  wire S00_AXI_3_RREADY;
  wire [1:0]S00_AXI_3_RRESP;
  wire S00_AXI_3_RVALID;
  wire [31:0]S00_AXI_3_WDATA;
  wire [11:0]S00_AXI_3_WID;
  wire S00_AXI_3_WLAST;
  wire S00_AXI_3_WREADY;
  wire [3:0]S00_AXI_3_WSTRB;
  wire S00_AXI_3_WVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_ARADDR;
  wire axi_interconnect_1_M00_AXI_ARREADY;
  wire [0:0]axi_interconnect_1_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_AWADDR;
  wire axi_interconnect_1_M00_AXI_AWREADY;
  wire [0:0]axi_interconnect_1_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_BRESP;
  wire axi_interconnect_1_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_RRESP;
  wire axi_interconnect_1_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_WDATA;
  wire axi_interconnect_1_M00_AXI_WREADY;
  wire [0:0]axi_interconnect_1_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_ARADDR;
  wire axi_interconnect_1_M01_AXI_ARREADY;
  wire [0:0]axi_interconnect_1_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_AWADDR;
  wire axi_interconnect_1_M01_AXI_AWREADY;
  wire [0:0]axi_interconnect_1_M01_AXI_AWVALID;
  wire [0:0]axi_interconnect_1_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M01_AXI_BRESP;
  wire axi_interconnect_1_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_RDATA;
  wire [0:0]axi_interconnect_1_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M01_AXI_RRESP;
  wire axi_interconnect_1_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_WDATA;
  wire axi_interconnect_1_M01_AXI_WREADY;
  wire [0:0]axi_interconnect_1_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M02_AXI_ARADDR;
  wire axi_interconnect_1_M02_AXI_ARREADY;
  wire [0:0]axi_interconnect_1_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M02_AXI_AWADDR;
  wire axi_interconnect_1_M02_AXI_AWREADY;
  wire [0:0]axi_interconnect_1_M02_AXI_AWVALID;
  wire [0:0]axi_interconnect_1_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M02_AXI_BRESP;
  wire axi_interconnect_1_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M02_AXI_RDATA;
  wire [0:0]axi_interconnect_1_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M02_AXI_RRESP;
  wire axi_interconnect_1_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M02_AXI_WDATA;
  wire axi_interconnect_1_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M02_AXI_WSTRB;
  wire [0:0]axi_interconnect_1_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M03_AXI_ARADDR;
  wire axi_interconnect_1_M03_AXI_ARREADY;
  wire [0:0]axi_interconnect_1_M03_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M03_AXI_AWADDR;
  wire axi_interconnect_1_M03_AXI_AWREADY;
  wire [0:0]axi_interconnect_1_M03_AXI_AWVALID;
  wire [0:0]axi_interconnect_1_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M03_AXI_BRESP;
  wire axi_interconnect_1_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M03_AXI_RDATA;
  wire [0:0]axi_interconnect_1_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M03_AXI_RRESP;
  wire axi_interconnect_1_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M03_AXI_WDATA;
  wire axi_interconnect_1_M03_AXI_WREADY;
  wire [0:0]axi_interconnect_1_M03_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M04_AXI_ARADDR;
  wire axi_interconnect_1_M04_AXI_ARREADY;
  wire [0:0]axi_interconnect_1_M04_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M04_AXI_AWADDR;
  wire axi_interconnect_1_M04_AXI_AWREADY;
  wire [0:0]axi_interconnect_1_M04_AXI_AWVALID;
  wire [0:0]axi_interconnect_1_M04_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M04_AXI_BRESP;
  wire axi_interconnect_1_M04_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M04_AXI_RDATA;
  wire [0:0]axi_interconnect_1_M04_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M04_AXI_RRESP;
  wire axi_interconnect_1_M04_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M04_AXI_WDATA;
  wire axi_interconnect_1_M04_AXI_WREADY;
  wire [0:0]axi_interconnect_1_M04_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M05_AXI_ARADDR;
  wire axi_interconnect_1_M05_AXI_ARREADY;
  wire axi_interconnect_1_M05_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M05_AXI_AWADDR;
  wire axi_interconnect_1_M05_AXI_AWREADY;
  wire axi_interconnect_1_M05_AXI_AWVALID;
  wire axi_interconnect_1_M05_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M05_AXI_BRESP;
  wire axi_interconnect_1_M05_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M05_AXI_RDATA;
  wire axi_interconnect_1_M05_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M05_AXI_RRESP;
  wire axi_interconnect_1_M05_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M05_AXI_WDATA;
  wire axi_interconnect_1_M05_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M05_AXI_WSTRB;
  wire axi_interconnect_1_M05_AXI_WVALID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_mem_interconnect_0_M00_AXI_ARADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_mem_interconnect_0_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_mem_interconnect_0_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_mem_interconnect_0_M00_AXI_ARID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_mem_interconnect_0_M00_AXI_ARLEN;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_mem_interconnect_0_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_mem_interconnect_0_M00_AXI_ARPROT;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_mem_interconnect_0_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_0_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_mem_interconnect_0_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_0_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_mem_interconnect_0_M00_AXI_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_mem_interconnect_0_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_mem_interconnect_0_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_mem_interconnect_0_M00_AXI_AWID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_mem_interconnect_0_M00_AXI_AWLEN;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_mem_interconnect_0_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_mem_interconnect_0_M00_AXI_AWPROT;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_mem_interconnect_0_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_0_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_mem_interconnect_0_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_0_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]axi_mem_interconnect_0_M00_AXI_BID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_0_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_mem_interconnect_0_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_0_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]axi_mem_interconnect_0_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]axi_mem_interconnect_0_M00_AXI_RID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_0_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_0_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_mem_interconnect_0_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_0_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]axi_mem_interconnect_0_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_mem_interconnect_0_M00_AXI_WID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_0_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_0_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_mem_interconnect_0_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "axi_mem_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_0_M00_AXI_WVALID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_mem_interconnect_1_M00_AXI_ARADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_mem_interconnect_1_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_mem_interconnect_1_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_mem_interconnect_1_M00_AXI_ARID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_mem_interconnect_1_M00_AXI_ARLEN;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_mem_interconnect_1_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_mem_interconnect_1_M00_AXI_ARPROT;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_mem_interconnect_1_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_1_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_mem_interconnect_1_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_1_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_mem_interconnect_1_M00_AXI_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_mem_interconnect_1_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_mem_interconnect_1_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_mem_interconnect_1_M00_AXI_AWID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_mem_interconnect_1_M00_AXI_AWLEN;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_mem_interconnect_1_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_mem_interconnect_1_M00_AXI_AWPROT;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_mem_interconnect_1_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_1_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_mem_interconnect_1_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_1_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]axi_mem_interconnect_1_M00_AXI_BID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_1_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_mem_interconnect_1_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_1_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]axi_mem_interconnect_1_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]axi_mem_interconnect_1_M00_AXI_RID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_1_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_1_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_mem_interconnect_1_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_1_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]axi_mem_interconnect_1_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_mem_interconnect_1_M00_AXI_WID;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_1_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_1_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_mem_interconnect_1_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "axi_mem_interconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_mem_interconnect_1_M00_AXI_WVALID;
  (* CONN_BUS_INFO = "axi_vdma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]axi_vdma_0_M_AXIS_MM2S_TDATA;
  (* CONN_BUS_INFO = "axi_vdma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TKEEP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_vdma_0_M_AXIS_MM2S_TKEEP;
  (* CONN_BUS_INFO = "axi_vdma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_0_M_AXIS_MM2S_TLAST;
  (* CONN_BUS_INFO = "axi_vdma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_0_M_AXIS_MM2S_TREADY;
  (* CONN_BUS_INFO = "axi_vdma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_0_M_AXIS_MM2S_TUSER;
  (* CONN_BUS_INFO = "axi_vdma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_0_M_AXIS_MM2S_TVALID;
  wire axi_vdma_0_mm2s_introut;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_1_M_AXI_S2MM_ARREADY;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_vdma_1_M_AXI_S2MM_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_vdma_1_M_AXI_S2MM_AWBURST;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_vdma_1_M_AXI_S2MM_AWCACHE;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_vdma_1_M_AXI_S2MM_AWLEN;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_vdma_1_M_AXI_S2MM_AWPROT;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_1_M_AXI_S2MM_AWREADY;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_vdma_1_M_AXI_S2MM_AWSIZE;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_1_M_AXI_S2MM_AWVALID;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_1_M_AXI_S2MM_BREADY;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_vdma_1_M_AXI_S2MM_BRESP;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_1_M_AXI_S2MM_BVALID;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]axi_vdma_1_M_AXI_S2MM_RDATA;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_1_M_AXI_S2MM_RLAST;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_1_M_AXI_S2MM_RVALID;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]axi_vdma_1_M_AXI_S2MM_WDATA;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_1_M_AXI_S2MM_WLAST;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_1_M_AXI_S2MM_WREADY;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_vdma_1_M_AXI_S2MM_WSTRB;
  (* CONN_BUS_INFO = "axi_vdma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_1_M_AXI_S2MM_WVALID;
  wire axi_vdma_1_s2mm_introut;
  (* CONN_BUS_INFO = "axi_vdma_2_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]axi_vdma_2_M_AXIS_MM2S_TDATA;
  (* CONN_BUS_INFO = "axi_vdma_2_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TKEEP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_vdma_2_M_AXIS_MM2S_TKEEP;
  (* CONN_BUS_INFO = "axi_vdma_2_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_2_M_AXIS_MM2S_TLAST;
  (* CONN_BUS_INFO = "axi_vdma_2_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_2_M_AXIS_MM2S_TREADY;
  (* CONN_BUS_INFO = "axi_vdma_2_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_2_M_AXIS_MM2S_TUSER;
  (* CONN_BUS_INFO = "axi_vdma_2_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_2_M_AXIS_MM2S_TVALID;
  wire axi_vdma_2_mm2s_introut;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_3_M_AXI_S2MM_ARREADY;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_vdma_3_M_AXI_S2MM_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_vdma_3_M_AXI_S2MM_AWBURST;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_vdma_3_M_AXI_S2MM_AWCACHE;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_vdma_3_M_AXI_S2MM_AWLEN;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_vdma_3_M_AXI_S2MM_AWPROT;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_3_M_AXI_S2MM_AWREADY;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_vdma_3_M_AXI_S2MM_AWSIZE;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_3_M_AXI_S2MM_AWVALID;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_3_M_AXI_S2MM_BREADY;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_vdma_3_M_AXI_S2MM_BRESP;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_3_M_AXI_S2MM_BVALID;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]axi_vdma_3_M_AXI_S2MM_RDATA;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_3_M_AXI_S2MM_RLAST;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_3_M_AXI_S2MM_RVALID;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]axi_vdma_3_M_AXI_S2MM_WDATA;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_3_M_AXI_S2MM_WLAST;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_3_M_AXI_S2MM_WREADY;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_vdma_3_M_AXI_S2MM_WSTRB;
  (* CONN_BUS_INFO = "axi_vdma_3_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_3_M_AXI_S2MM_WVALID;
  wire axi_vdma_3_s2mm_introut;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire clk_wiz_0_clk_out2;
  wire [7:0]cmos_data_i_0_1;
  wire [7:0]cmos_data_i_1_1;
  wire cmos_href_i_0_1;
  wire cmos_href_i_1_1;
  wire cmos_pclk_i_0_1;
  wire cmos_pclk_i_1_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire cmos_vsync_i_0_1;
  wire cmos_vsync_i_1_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [63:0]processing_system7_0_GPIO_0_TRI_I;
  wire [63:0]processing_system7_0_GPIO_0_TRI_O;
  wire [63:0]processing_system7_0_GPIO_0_TRI_T;
  (* CONN_BUS_INFO = "processing_system7_0_IIC_0 xilinx.com:interface:iic:1.0 None SCL_I" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire processing_system7_0_IIC_0_SCL_I;
  (* CONN_BUS_INFO = "processing_system7_0_IIC_0 xilinx.com:interface:iic:1.0 None SCL_O" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire processing_system7_0_IIC_0_SCL_O;
  (* CONN_BUS_INFO = "processing_system7_0_IIC_0 xilinx.com:interface:iic:1.0 None SCL_T" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire processing_system7_0_IIC_0_SCL_T;
  (* CONN_BUS_INFO = "processing_system7_0_IIC_0 xilinx.com:interface:iic:1.0 None SDA_I" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire processing_system7_0_IIC_0_SDA_I;
  (* CONN_BUS_INFO = "processing_system7_0_IIC_0 xilinx.com:interface:iic:1.0 None SDA_O" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire processing_system7_0_IIC_0_SDA_O;
  (* CONN_BUS_INFO = "processing_system7_0_IIC_0 xilinx.com:interface:iic:1.0 None SDA_T" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire processing_system7_0_IIC_0_SDA_T;
  (* CONN_BUS_INFO = "processing_system7_0_IIC_1 xilinx.com:interface:iic:1.0 None SCL_I" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire processing_system7_0_IIC_1_SCL_I;
  (* CONN_BUS_INFO = "processing_system7_0_IIC_1 xilinx.com:interface:iic:1.0 None SCL_O" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire processing_system7_0_IIC_1_SCL_O;
  (* CONN_BUS_INFO = "processing_system7_0_IIC_1 xilinx.com:interface:iic:1.0 None SCL_T" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire processing_system7_0_IIC_1_SCL_T;
  (* CONN_BUS_INFO = "processing_system7_0_IIC_1 xilinx.com:interface:iic:1.0 None SDA_I" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire processing_system7_0_IIC_1_SDA_I;
  (* CONN_BUS_INFO = "processing_system7_0_IIC_1 xilinx.com:interface:iic:1.0 None SDA_O" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire processing_system7_0_IIC_1_SDA_O;
  (* CONN_BUS_INFO = "processing_system7_0_IIC_1 xilinx.com:interface:iic:1.0 None SDA_T" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire processing_system7_0_IIC_1_SDA_T;
  wire processing_system7_0_SDIO_0_CDN;
  wire [1:0]processing_system7_0_USBIND_0_PORT_INDCTL;
  wire processing_system7_0_USBIND_0_VBUS_PWRFAULT;
  wire processing_system7_0_USBIND_0_VBUS_PWRSELECT;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire v_axi4s_vid_out_0_vid_active_video;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]v_axi4s_vid_out_0_vid_data;
  wire v_axi4s_vid_out_0_vid_hsync;
  wire v_axi4s_vid_out_0_vid_vsync;
  wire v_axi4s_vid_out_0_vtg_ce;
  wire v_mix_0_interrupt;
  (* CONN_BUS_INFO = "v_mix_0_m_axis_video xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]v_mix_0_m_axis_video_TDATA;
  (* CONN_BUS_INFO = "v_mix_0_m_axis_video xilinx.com:interface:axis:1.0 None TDEST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]v_mix_0_m_axis_video_TDEST;
  (* CONN_BUS_INFO = "v_mix_0_m_axis_video xilinx.com:interface:axis:1.0 None TID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]v_mix_0_m_axis_video_TID;
  (* CONN_BUS_INFO = "v_mix_0_m_axis_video xilinx.com:interface:axis:1.0 None TKEEP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]v_mix_0_m_axis_video_TKEEP;
  (* CONN_BUS_INFO = "v_mix_0_m_axis_video xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]v_mix_0_m_axis_video_TLAST;
  (* CONN_BUS_INFO = "v_mix_0_m_axis_video xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_mix_0_m_axis_video_TREADY;
  (* CONN_BUS_INFO = "v_mix_0_m_axis_video xilinx.com:interface:axis:1.0 None TSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]v_mix_0_m_axis_video_TSTRB;
  (* CONN_BUS_INFO = "v_mix_0_m_axis_video xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]v_mix_0_m_axis_video_TUSER;
  (* CONN_BUS_INFO = "v_mix_0_m_axis_video xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_mix_0_m_axis_video_TVALID;
  wire v_tc_0_irq;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HBLANK;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VBLANK;
  wire v_tc_0_vtiming_out_VSYNC;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_0_video_out xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]v_vid_in_axi4s_0_video_out_TDATA;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_0_video_out xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_vid_in_axi4s_0_video_out_TLAST;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_0_video_out xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_vid_in_axi4s_0_video_out_TREADY;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_0_video_out xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_vid_in_axi4s_0_video_out_TUSER;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_0_video_out xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_vid_in_axi4s_0_video_out_TVALID;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_1_video_out xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]v_vid_in_axi4s_1_video_out_TDATA;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_1_video_out xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_vid_in_axi4s_1_video_out_TLAST;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_1_video_out xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_vid_in_axi4s_1_video_out_TREADY;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_1_video_out xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_vid_in_axi4s_1_video_out_TUSER;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_1_video_out xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_vid_in_axi4s_1_video_out_TVALID;
  wire [5:0]xlconcat_0_dout;

  assign GPIO_0_0_tri_o[63:0] = processing_system7_0_GPIO_0_TRI_O;
  assign GPIO_0_0_tri_t[63:0] = processing_system7_0_GPIO_0_TRI_T;
  assign HDMI_CLK_N_0 = HDMI_tx_0_HDMI_CLK_N;
  assign HDMI_CLK_P_0 = HDMI_tx_0_HDMI_CLK_P;
  assign HDMI_D0_N_0 = HDMI_tx_0_HDMI_D0_N;
  assign HDMI_D0_P_0 = HDMI_tx_0_HDMI_D0_P;
  assign HDMI_D1_N_0 = HDMI_tx_0_HDMI_D1_N;
  assign HDMI_D1_P_0 = HDMI_tx_0_HDMI_D1_P;
  assign HDMI_D2_N_0 = HDMI_tx_0_HDMI_D2_N;
  assign HDMI_D2_P_0 = HDMI_tx_0_HDMI_D2_P;
  assign IIC_0_0_scl_o = processing_system7_0_IIC_0_SCL_O;
  assign IIC_0_0_scl_t = processing_system7_0_IIC_0_SCL_T;
  assign IIC_0_0_sda_o = processing_system7_0_IIC_0_SDA_O;
  assign IIC_0_0_sda_t = processing_system7_0_IIC_0_SDA_T;
  assign IIC_1_0_scl_o = processing_system7_0_IIC_1_SCL_O;
  assign IIC_1_0_scl_t = processing_system7_0_IIC_1_SCL_T;
  assign IIC_1_0_sda_o = processing_system7_0_IIC_1_SDA_O;
  assign IIC_1_0_sda_t = processing_system7_0_IIC_1_SDA_T;
  assign USBIND_0_0_port_indctl[1:0] = processing_system7_0_USBIND_0_PORT_INDCTL;
  assign USBIND_0_0_vbus_pwrselect = processing_system7_0_USBIND_0_VBUS_PWRSELECT;
  assign cmos_data_i_0_1 = cmos_data_i_0[7:0];
  assign cmos_data_i_1_1 = cmos_data_i_1[7:0];
  assign cmos_href_i_0_1 = cmos_href_i_0;
  assign cmos_href_i_1_1 = cmos_href_i_1;
  assign cmos_pclk_i_0_1 = cmos_pclk_i_0;
  assign cmos_pclk_i_1_1 = cmos_pclk_i_1;
  assign cmos_vsync_i_0_1 = cmos_vsync_i_0;
  assign cmos_vsync_i_1_1 = cmos_vsync_i_1;
  assign cmos_xclk_o_0 = OVSensor_1_cmos_xclk_o;
  assign cmos_xclk_o_1 = OVSensor_0_cmos_xclk_o;
  assign processing_system7_0_GPIO_0_TRI_I = GPIO_0_0_tri_i[63:0];
  assign processing_system7_0_IIC_0_SCL_I = IIC_0_0_scl_i;
  assign processing_system7_0_IIC_0_SDA_I = IIC_0_0_sda_i;
  assign processing_system7_0_IIC_1_SCL_I = IIC_1_0_scl_i;
  assign processing_system7_0_IIC_1_SDA_I = IIC_1_0_sda_i;
  assign processing_system7_0_SDIO_0_CDN = SDIO_0_0_cdn;
  assign processing_system7_0_USBIND_0_VBUS_PWRFAULT = USBIND_0_0_vbus_pwrfault;
  system_HDMI_tx_0_0 HDMI_tx_0
       (.HDMI_CLK_N(HDMI_tx_0_HDMI_CLK_N),
        .HDMI_CLK_P(HDMI_tx_0_HDMI_CLK_P),
        .HDMI_D0_N(HDMI_tx_0_HDMI_D0_N),
        .HDMI_D0_P(HDMI_tx_0_HDMI_D0_P),
        .HDMI_D1_N(HDMI_tx_0_HDMI_D1_N),
        .HDMI_D1_P(HDMI_tx_0_HDMI_D1_P),
        .HDMI_D2_N(HDMI_tx_0_HDMI_D2_N),
        .HDMI_D2_P(HDMI_tx_0_HDMI_D2_P),
        .LOCKED_I(Net2),
        .PXLCLK_5X_I(clk_wiz_0_clk_out2),
        .PXLCLK_I(Net3),
        .RST_N(Net2),
        .VGA_DE(v_axi4s_vid_out_0_vid_active_video),
        .VGA_HS(v_axi4s_vid_out_0_vid_hsync),
        .VGA_RGB(v_axi4s_vid_out_0_vid_data),
        .VGA_VS(v_axi4s_vid_out_0_vid_vsync));
  system_OVSensor_0_0 OVSensor_0
       (.clk_i(processing_system7_0_FCLK_CLK1),
        .cmos_data_i(cmos_data_i_0_1),
        .cmos_href_i(cmos_href_i_0_1),
        .cmos_pclk_i(cmos_pclk_i_0_1),
        .cmos_vsync_i(cmos_vsync_i_0_1),
        .cmos_xclk_o(OVSensor_0_cmos_xclk_o),
        .hs_o(OVSensor_0_hs_o),
        .rgb_o(OVSensor_0_rgb_o),
        .vid_clk_ce(OVSensor_0_vid_clk_ce),
        .vs_o(OVSensor_0_vs_o));
  system_OVSensor_1_0 OVSensor_1
       (.clk_i(processing_system7_0_FCLK_CLK1),
        .cmos_data_i(cmos_data_i_1_1),
        .cmos_href_i(cmos_href_i_1_1),
        .cmos_pclk_i(cmos_pclk_i_1_1),
        .cmos_vsync_i(cmos_vsync_i_1_1),
        .cmos_xclk_o(OVSensor_1_cmos_xclk_o),
        .hs_o(OVSensor_1_hs_o),
        .rgb_o(OVSensor_1_rgb_o),
        .vid_clk_ce(OVSensor_1_vid_clk_ce),
        .vs_o(OVSensor_1_vs_o));
  system_axi_interconnect_1_0 axi_interconnect_1
       (.ACLK(Net1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(Net1),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .M01_ACLK(Net1),
        .M01_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_1_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_1_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_1_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_1_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_1_M01_AXI_WREADY),
        .M01_AXI_wvalid(axi_interconnect_1_M01_AXI_WVALID),
        .M02_ACLK(Net1),
        .M02_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M02_AXI_araddr(axi_interconnect_1_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_1_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_1_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_1_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_1_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_1_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_1_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_1_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_1_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_1_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_1_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_1_M02_AXI_WVALID),
        .M03_ACLK(Net1),
        .M03_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M03_AXI_araddr(axi_interconnect_1_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_interconnect_1_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_1_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_1_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_interconnect_1_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_1_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_1_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_1_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_1_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_1_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_1_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_1_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_1_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_1_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_1_M03_AXI_WREADY),
        .M03_AXI_wvalid(axi_interconnect_1_M03_AXI_WVALID),
        .M04_ACLK(Net1),
        .M04_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M04_AXI_araddr(axi_interconnect_1_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_interconnect_1_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_interconnect_1_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_interconnect_1_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_interconnect_1_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_interconnect_1_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_interconnect_1_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_interconnect_1_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_interconnect_1_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_interconnect_1_M04_AXI_RDATA),
        .M04_AXI_rready(axi_interconnect_1_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_interconnect_1_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_interconnect_1_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_interconnect_1_M04_AXI_WDATA),
        .M04_AXI_wready(axi_interconnect_1_M04_AXI_WREADY),
        .M04_AXI_wvalid(axi_interconnect_1_M04_AXI_WVALID),
        .M05_ACLK(Net1),
        .M05_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M05_AXI_araddr(axi_interconnect_1_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_interconnect_1_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_interconnect_1_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_interconnect_1_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_interconnect_1_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_interconnect_1_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_interconnect_1_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_interconnect_1_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_interconnect_1_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_interconnect_1_M05_AXI_RDATA),
        .M05_AXI_rready(axi_interconnect_1_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_interconnect_1_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_interconnect_1_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_interconnect_1_M05_AXI_WDATA),
        .M05_AXI_wready(axi_interconnect_1_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_interconnect_1_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_interconnect_1_M05_AXI_WVALID),
        .S00_ACLK(Net1),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(S00_AXI_3_ARADDR),
        .S00_AXI_arburst(S00_AXI_3_ARBURST),
        .S00_AXI_arcache(S00_AXI_3_ARCACHE),
        .S00_AXI_arid(S00_AXI_3_ARID),
        .S00_AXI_arlen(S00_AXI_3_ARLEN),
        .S00_AXI_arlock(S00_AXI_3_ARLOCK),
        .S00_AXI_arprot(S00_AXI_3_ARPROT),
        .S00_AXI_arqos(S00_AXI_3_ARQOS),
        .S00_AXI_arready(S00_AXI_3_ARREADY),
        .S00_AXI_arsize(S00_AXI_3_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_3_ARVALID),
        .S00_AXI_awaddr(S00_AXI_3_AWADDR),
        .S00_AXI_awburst(S00_AXI_3_AWBURST),
        .S00_AXI_awcache(S00_AXI_3_AWCACHE),
        .S00_AXI_awid(S00_AXI_3_AWID),
        .S00_AXI_awlen(S00_AXI_3_AWLEN),
        .S00_AXI_awlock(S00_AXI_3_AWLOCK),
        .S00_AXI_awprot(S00_AXI_3_AWPROT),
        .S00_AXI_awqos(S00_AXI_3_AWQOS),
        .S00_AXI_awready(S00_AXI_3_AWREADY),
        .S00_AXI_awsize(S00_AXI_3_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_3_AWVALID),
        .S00_AXI_bid(S00_AXI_3_BID),
        .S00_AXI_bready(S00_AXI_3_BREADY),
        .S00_AXI_bresp(S00_AXI_3_BRESP),
        .S00_AXI_bvalid(S00_AXI_3_BVALID),
        .S00_AXI_rdata(S00_AXI_3_RDATA),
        .S00_AXI_rid(S00_AXI_3_RID),
        .S00_AXI_rlast(S00_AXI_3_RLAST),
        .S00_AXI_rready(S00_AXI_3_RREADY),
        .S00_AXI_rresp(S00_AXI_3_RRESP),
        .S00_AXI_rvalid(S00_AXI_3_RVALID),
        .S00_AXI_wdata(S00_AXI_3_WDATA),
        .S00_AXI_wid(S00_AXI_3_WID),
        .S00_AXI_wlast(S00_AXI_3_WLAST),
        .S00_AXI_wready(S00_AXI_3_WREADY),
        .S00_AXI_wstrb(S00_AXI_3_WSTRB),
        .S00_AXI_wvalid(S00_AXI_3_WVALID));
  system_axi_interconnect_0_0 axi_mem_interconnect_0
       (.ACLK(Net1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(Net1),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mem_interconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mem_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_interconnect_0_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_interconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_interconnect_0_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mem_interconnect_0_M00_AXI_RID),
        .M00_AXI_rlast(axi_mem_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wid(axi_mem_interconnect_0_M00_AXI_WID),
        .M00_AXI_wlast(axi_mem_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(Net1),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S01_ACLK(Net1),
        .S01_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S01_AXI_arready(axi_vdma_1_M_AXI_S2MM_ARREADY),
        .S01_AXI_awaddr(axi_vdma_1_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_vdma_1_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_vdma_1_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_vdma_1_M_AXI_S2MM_AWLEN),
        .S01_AXI_awprot(axi_vdma_1_M_AXI_S2MM_AWPROT),
        .S01_AXI_awready(axi_vdma_1_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_vdma_1_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_vdma_1_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_vdma_1_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_vdma_1_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_vdma_1_M_AXI_S2MM_BVALID),
        .S01_AXI_rdata(axi_vdma_1_M_AXI_S2MM_RDATA),
        .S01_AXI_rlast(axi_vdma_1_M_AXI_S2MM_RLAST),
        .S01_AXI_rvalid(axi_vdma_1_M_AXI_S2MM_RVALID),
        .S01_AXI_wdata(axi_vdma_1_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_vdma_1_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_vdma_1_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_vdma_1_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_vdma_1_M_AXI_S2MM_WVALID));
  system_axi_interconnect_2_0 axi_mem_interconnect_1
       (.ACLK(Net1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(Net1),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_interconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_interconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_interconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mem_interconnect_1_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mem_interconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_interconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_interconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_interconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_interconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_interconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_interconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_interconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_interconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_interconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_interconnect_1_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_interconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_interconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_interconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_interconnect_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_interconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_interconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_interconnect_1_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mem_interconnect_1_M00_AXI_RID),
        .M00_AXI_rlast(axi_mem_interconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wid(axi_mem_interconnect_1_M00_AXI_WID),
        .M00_AXI_wlast(axi_mem_interconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_interconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_interconnect_1_M00_AXI_WVALID),
        .S00_ACLK(Net1),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(S00_AXI_2_ARADDR),
        .S00_AXI_arburst(S00_AXI_2_ARBURST),
        .S00_AXI_arcache(S00_AXI_2_ARCACHE),
        .S00_AXI_arlen(S00_AXI_2_ARLEN),
        .S00_AXI_arprot(S00_AXI_2_ARPROT),
        .S00_AXI_arready(S00_AXI_2_ARREADY),
        .S00_AXI_arsize(S00_AXI_2_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_2_ARVALID),
        .S00_AXI_awready(S00_AXI_2_AWREADY),
        .S00_AXI_bvalid(S00_AXI_2_BVALID),
        .S00_AXI_rdata(S00_AXI_2_RDATA),
        .S00_AXI_rlast(S00_AXI_2_RLAST),
        .S00_AXI_rready(S00_AXI_2_RREADY),
        .S00_AXI_rresp(S00_AXI_2_RRESP),
        .S00_AXI_rvalid(S00_AXI_2_RVALID),
        .S00_AXI_wready(S00_AXI_2_WREADY),
        .S01_ACLK(Net1),
        .S01_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S01_AXI_arready(axi_vdma_3_M_AXI_S2MM_ARREADY),
        .S01_AXI_awaddr(axi_vdma_3_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_vdma_3_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_vdma_3_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_vdma_3_M_AXI_S2MM_AWLEN),
        .S01_AXI_awprot(axi_vdma_3_M_AXI_S2MM_AWPROT),
        .S01_AXI_awready(axi_vdma_3_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_vdma_3_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_vdma_3_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_vdma_3_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_vdma_3_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_vdma_3_M_AXI_S2MM_BVALID),
        .S01_AXI_rdata(axi_vdma_3_M_AXI_S2MM_RDATA),
        .S01_AXI_rlast(axi_vdma_3_M_AXI_S2MM_RLAST),
        .S01_AXI_rvalid(axi_vdma_3_M_AXI_S2MM_RVALID),
        .S01_AXI_wdata(axi_vdma_3_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_vdma_3_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_vdma_3_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_vdma_3_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_vdma_3_M_AXI_S2MM_WVALID));
  system_axi_vdma_0_1 axi_vdma_0
       (.axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_mm2s_aclk(Net1),
        .m_axi_mm2s_araddr(S00_AXI_1_ARADDR),
        .m_axi_mm2s_arburst(S00_AXI_1_ARBURST),
        .m_axi_mm2s_arcache(S00_AXI_1_ARCACHE),
        .m_axi_mm2s_arlen(S00_AXI_1_ARLEN),
        .m_axi_mm2s_arprot(S00_AXI_1_ARPROT),
        .m_axi_mm2s_arready(S00_AXI_1_ARREADY),
        .m_axi_mm2s_arsize(S00_AXI_1_ARSIZE),
        .m_axi_mm2s_arvalid(S00_AXI_1_ARVALID),
        .m_axi_mm2s_rdata(S00_AXI_1_RDATA),
        .m_axi_mm2s_rlast(S00_AXI_1_RLAST),
        .m_axi_mm2s_rready(S00_AXI_1_RREADY),
        .m_axi_mm2s_rresp(S00_AXI_1_RRESP),
        .m_axi_mm2s_rvalid(S00_AXI_1_RVALID),
        .m_axis_mm2s_aclk(Net1),
        .m_axis_mm2s_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_vdma_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .m_axis_mm2s_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .mm2s_frame_ptr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .mm2s_introut(axi_vdma_0_mm2s_introut),
        .s_axi_lite_aclk(Net1),
        .s_axi_lite_araddr(axi_interconnect_1_M00_AXI_ARADDR[8:0]),
        .s_axi_lite_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_1_M00_AXI_AWADDR[8:0]),
        .s_axi_lite_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_1_M00_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_1_M00_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_1_M00_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_1_M00_AXI_WVALID));
  system_axi_vdma_1_0 axi_vdma_1
       (.axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_s2mm_aclk(Net1),
        .m_axi_s2mm_awaddr(axi_vdma_1_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_vdma_1_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_vdma_1_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_vdma_1_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_vdma_1_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_vdma_1_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_vdma_1_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_vdma_1_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_vdma_1_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_vdma_1_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_vdma_1_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_vdma_1_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_vdma_1_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_vdma_1_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_vdma_1_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_vdma_1_M_AXI_S2MM_WVALID),
        .s2mm_introut(axi_vdma_1_s2mm_introut),
        .s_axi_lite_aclk(Net1),
        .s_axi_lite_araddr(axi_interconnect_1_M04_AXI_ARADDR[8:0]),
        .s_axi_lite_arready(axi_interconnect_1_M04_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_1_M04_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_1_M04_AXI_AWADDR[8:0]),
        .s_axi_lite_awready(axi_interconnect_1_M04_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_1_M04_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_1_M04_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_1_M04_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_1_M04_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_1_M04_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_1_M04_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_1_M04_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_1_M04_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_1_M04_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_1_M04_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_1_M04_AXI_WVALID),
        .s_axis_s2mm_aclk(Net1),
        .s_axis_s2mm_tdata(v_vid_in_axi4s_0_video_out_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(v_vid_in_axi4s_0_video_out_TLAST),
        .s_axis_s2mm_tready(v_vid_in_axi4s_0_video_out_TREADY),
        .s_axis_s2mm_tuser(v_vid_in_axi4s_0_video_out_TUSER),
        .s_axis_s2mm_tvalid(v_vid_in_axi4s_0_video_out_TVALID));
  system_axi_vdma_2_0 axi_vdma_2
       (.axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_mm2s_aclk(Net1),
        .m_axi_mm2s_araddr(S00_AXI_2_ARADDR),
        .m_axi_mm2s_arburst(S00_AXI_2_ARBURST),
        .m_axi_mm2s_arcache(S00_AXI_2_ARCACHE),
        .m_axi_mm2s_arlen(S00_AXI_2_ARLEN),
        .m_axi_mm2s_arprot(S00_AXI_2_ARPROT),
        .m_axi_mm2s_arready(S00_AXI_2_ARREADY),
        .m_axi_mm2s_arsize(S00_AXI_2_ARSIZE),
        .m_axi_mm2s_arvalid(S00_AXI_2_ARVALID),
        .m_axi_mm2s_rdata(S00_AXI_2_RDATA),
        .m_axi_mm2s_rlast(S00_AXI_2_RLAST),
        .m_axi_mm2s_rready(S00_AXI_2_RREADY),
        .m_axi_mm2s_rresp(S00_AXI_2_RRESP),
        .m_axi_mm2s_rvalid(S00_AXI_2_RVALID),
        .m_axis_mm2s_aclk(Net1),
        .m_axis_mm2s_tdata(axi_vdma_2_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_vdma_2_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_vdma_2_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_vdma_2_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tuser(axi_vdma_2_M_AXIS_MM2S_TUSER),
        .m_axis_mm2s_tvalid(axi_vdma_2_M_AXIS_MM2S_TVALID),
        .mm2s_frame_ptr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .mm2s_introut(axi_vdma_2_mm2s_introut),
        .s_axi_lite_aclk(Net1),
        .s_axi_lite_araddr(axi_interconnect_1_M03_AXI_ARADDR[8:0]),
        .s_axi_lite_arready(axi_interconnect_1_M03_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_1_M03_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_1_M03_AXI_AWADDR[8:0]),
        .s_axi_lite_awready(axi_interconnect_1_M03_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_1_M03_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_1_M03_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_1_M03_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_1_M03_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_1_M03_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_1_M03_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_1_M03_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_1_M03_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_1_M03_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_1_M03_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_1_M03_AXI_WVALID));
  system_axi_vdma_0_0 axi_vdma_3
       (.axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_s2mm_aclk(Net1),
        .m_axi_s2mm_awaddr(axi_vdma_3_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_vdma_3_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_vdma_3_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_vdma_3_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_vdma_3_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_vdma_3_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_vdma_3_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_vdma_3_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_vdma_3_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_vdma_3_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_vdma_3_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_vdma_3_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_vdma_3_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_vdma_3_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_vdma_3_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_vdma_3_M_AXI_S2MM_WVALID),
        .s2mm_introut(axi_vdma_3_s2mm_introut),
        .s_axi_lite_aclk(Net1),
        .s_axi_lite_araddr(axi_interconnect_1_M01_AXI_ARADDR[8:0]),
        .s_axi_lite_arready(axi_interconnect_1_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_1_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_1_M01_AXI_AWADDR[8:0]),
        .s_axi_lite_awready(axi_interconnect_1_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_1_M01_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_1_M01_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_1_M01_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_1_M01_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_1_M01_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_1_M01_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_1_M01_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_1_M01_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_1_M01_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_1_M01_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_1_M01_AXI_WVALID),
        .s_axis_s2mm_aclk(Net1),
        .s_axis_s2mm_tdata(v_vid_in_axi4s_1_video_out_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(v_vid_in_axi4s_1_video_out_TLAST),
        .s_axis_s2mm_tready(v_vid_in_axi4s_1_video_out_TREADY),
        .s_axis_s2mm_tuser(v_vid_in_axi4s_1_video_out_TUSER),
        .s_axis_s2mm_tvalid(v_vid_in_axi4s_1_video_out_TVALID));
  system_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(Net1),
        .clk_out1(Net3),
        .clk_out2(clk_wiz_0_clk_out2),
        .locked(Net2),
        .reset(util_vector_logic_1_Res));
  system_ila_0_0 ila_0
       (.clk(Net1),
        .probe0(OVSensor_0_vid_clk_ce),
        .probe1(OVSensor_0_hs_o),
        .probe2(OVSensor_0_vs_o),
        .probe3(OVSensor_0_rgb_o));
  system_ila_1_0 ila_1
       (.clk(Net1),
        .probe0(OVSensor_1_vid_clk_ce),
        .probe1(OVSensor_1_hs_o),
        .probe2(OVSensor_1_vs_o),
        .probe3(OVSensor_1_rgb_o));
  system_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(ARESETN_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(Net1));
  system_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_0_addr[14:0]),
        .DDR_BankAddr(DDR_0_ba[2:0]),
        .DDR_CAS_n(DDR_0_cas_n),
        .DDR_CKE(DDR_0_cke),
        .DDR_CS_n(DDR_0_cs_n),
        .DDR_Clk(DDR_0_ck_p),
        .DDR_Clk_n(DDR_0_ck_n),
        .DDR_DM(DDR_0_dm[3:0]),
        .DDR_DQ(DDR_0_dq[31:0]),
        .DDR_DQS(DDR_0_dqs_p[3:0]),
        .DDR_DQS_n(DDR_0_dqs_n[3:0]),
        .DDR_DRSTB(DDR_0_reset_n),
        .DDR_ODT(DDR_0_odt),
        .DDR_RAS_n(DDR_0_ras_n),
        .DDR_VRN(FIXED_IO_0_ddr_vrn),
        .DDR_VRP(FIXED_IO_0_ddr_vrp),
        .DDR_WEB(DDR_0_we_n),
        .FCLK_CLK0(Net1),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I(processing_system7_0_GPIO_0_TRI_I),
        .GPIO_O(processing_system7_0_GPIO_0_TRI_O),
        .GPIO_T(processing_system7_0_GPIO_0_TRI_T),
        .I2C0_SCL_I(processing_system7_0_IIC_0_SCL_I),
        .I2C0_SCL_O(processing_system7_0_IIC_0_SCL_O),
        .I2C0_SCL_T(processing_system7_0_IIC_0_SCL_T),
        .I2C0_SDA_I(processing_system7_0_IIC_0_SDA_I),
        .I2C0_SDA_O(processing_system7_0_IIC_0_SDA_O),
        .I2C0_SDA_T(processing_system7_0_IIC_0_SDA_T),
        .I2C1_SCL_I(processing_system7_0_IIC_1_SCL_I),
        .I2C1_SCL_O(processing_system7_0_IIC_1_SCL_O),
        .I2C1_SCL_T(processing_system7_0_IIC_1_SCL_T),
        .I2C1_SDA_I(processing_system7_0_IIC_1_SDA_I),
        .I2C1_SDA_O(processing_system7_0_IIC_1_SDA_O),
        .I2C1_SDA_T(processing_system7_0_IIC_1_SDA_T),
        .IRQ_F2P(xlconcat_0_dout),
        .MIO(FIXED_IO_0_mio[53:0]),
        .M_AXI_GP0_ACLK(Net1),
        .M_AXI_GP0_ARADDR(S00_AXI_3_ARADDR),
        .M_AXI_GP0_ARBURST(S00_AXI_3_ARBURST),
        .M_AXI_GP0_ARCACHE(S00_AXI_3_ARCACHE),
        .M_AXI_GP0_ARID(S00_AXI_3_ARID),
        .M_AXI_GP0_ARLEN(S00_AXI_3_ARLEN),
        .M_AXI_GP0_ARLOCK(S00_AXI_3_ARLOCK),
        .M_AXI_GP0_ARPROT(S00_AXI_3_ARPROT),
        .M_AXI_GP0_ARQOS(S00_AXI_3_ARQOS),
        .M_AXI_GP0_ARREADY(S00_AXI_3_ARREADY),
        .M_AXI_GP0_ARSIZE(S00_AXI_3_ARSIZE),
        .M_AXI_GP0_ARVALID(S00_AXI_3_ARVALID),
        .M_AXI_GP0_AWADDR(S00_AXI_3_AWADDR),
        .M_AXI_GP0_AWBURST(S00_AXI_3_AWBURST),
        .M_AXI_GP0_AWCACHE(S00_AXI_3_AWCACHE),
        .M_AXI_GP0_AWID(S00_AXI_3_AWID),
        .M_AXI_GP0_AWLEN(S00_AXI_3_AWLEN),
        .M_AXI_GP0_AWLOCK(S00_AXI_3_AWLOCK),
        .M_AXI_GP0_AWPROT(S00_AXI_3_AWPROT),
        .M_AXI_GP0_AWQOS(S00_AXI_3_AWQOS),
        .M_AXI_GP0_AWREADY(S00_AXI_3_AWREADY),
        .M_AXI_GP0_AWSIZE(S00_AXI_3_AWSIZE),
        .M_AXI_GP0_AWVALID(S00_AXI_3_AWVALID),
        .M_AXI_GP0_BID(S00_AXI_3_BID),
        .M_AXI_GP0_BREADY(S00_AXI_3_BREADY),
        .M_AXI_GP0_BRESP(S00_AXI_3_BRESP),
        .M_AXI_GP0_BVALID(S00_AXI_3_BVALID),
        .M_AXI_GP0_RDATA(S00_AXI_3_RDATA),
        .M_AXI_GP0_RID(S00_AXI_3_RID),
        .M_AXI_GP0_RLAST(S00_AXI_3_RLAST),
        .M_AXI_GP0_RREADY(S00_AXI_3_RREADY),
        .M_AXI_GP0_RRESP(S00_AXI_3_RRESP),
        .M_AXI_GP0_RVALID(S00_AXI_3_RVALID),
        .M_AXI_GP0_WDATA(S00_AXI_3_WDATA),
        .M_AXI_GP0_WID(S00_AXI_3_WID),
        .M_AXI_GP0_WLAST(S00_AXI_3_WLAST),
        .M_AXI_GP0_WREADY(S00_AXI_3_WREADY),
        .M_AXI_GP0_WSTRB(S00_AXI_3_WSTRB),
        .M_AXI_GP0_WVALID(S00_AXI_3_WVALID),
        .PS_CLK(FIXED_IO_0_ps_clk),
        .PS_PORB(FIXED_IO_0_ps_porb),
        .PS_SRSTB(FIXED_IO_0_ps_srstb),
        .SDIO0_CDN(processing_system7_0_SDIO_0_CDN),
        .S_AXI_HP0_ACLK(Net1),
        .S_AXI_HP0_ARADDR(axi_mem_interconnect_0_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(axi_mem_interconnect_0_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_mem_interconnect_0_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_interconnect_0_M00_AXI_ARID}),
        .S_AXI_HP0_ARLEN(axi_mem_interconnect_0_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_mem_interconnect_0_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_mem_interconnect_0_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(axi_mem_interconnect_0_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(axi_mem_interconnect_0_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_mem_interconnect_0_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_mem_interconnect_0_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(axi_mem_interconnect_0_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_mem_interconnect_0_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_mem_interconnect_0_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_interconnect_0_M00_AXI_AWID}),
        .S_AXI_HP0_AWLEN(axi_mem_interconnect_0_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_mem_interconnect_0_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_mem_interconnect_0_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_mem_interconnect_0_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_mem_interconnect_0_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_mem_interconnect_0_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_mem_interconnect_0_M00_AXI_AWVALID),
        .S_AXI_HP0_BID(axi_mem_interconnect_0_M00_AXI_BID),
        .S_AXI_HP0_BREADY(axi_mem_interconnect_0_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_mem_interconnect_0_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_mem_interconnect_0_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(axi_mem_interconnect_0_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(axi_mem_interconnect_0_M00_AXI_RID),
        .S_AXI_HP0_RLAST(axi_mem_interconnect_0_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(axi_mem_interconnect_0_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(axi_mem_interconnect_0_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(axi_mem_interconnect_0_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(axi_mem_interconnect_0_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_interconnect_0_M00_AXI_WID}),
        .S_AXI_HP0_WLAST(axi_mem_interconnect_0_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_mem_interconnect_0_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_mem_interconnect_0_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_mem_interconnect_0_M00_AXI_WVALID),
        .S_AXI_HP1_ACLK(Net1),
        .S_AXI_HP1_ARADDR(axi_mem_interconnect_1_M00_AXI_ARADDR),
        .S_AXI_HP1_ARBURST(axi_mem_interconnect_1_M00_AXI_ARBURST),
        .S_AXI_HP1_ARCACHE(axi_mem_interconnect_1_M00_AXI_ARCACHE),
        .S_AXI_HP1_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_interconnect_1_M00_AXI_ARID}),
        .S_AXI_HP1_ARLEN(axi_mem_interconnect_1_M00_AXI_ARLEN),
        .S_AXI_HP1_ARLOCK(axi_mem_interconnect_1_M00_AXI_ARLOCK),
        .S_AXI_HP1_ARPROT(axi_mem_interconnect_1_M00_AXI_ARPROT),
        .S_AXI_HP1_ARQOS(axi_mem_interconnect_1_M00_AXI_ARQOS),
        .S_AXI_HP1_ARREADY(axi_mem_interconnect_1_M00_AXI_ARREADY),
        .S_AXI_HP1_ARSIZE(axi_mem_interconnect_1_M00_AXI_ARSIZE),
        .S_AXI_HP1_ARVALID(axi_mem_interconnect_1_M00_AXI_ARVALID),
        .S_AXI_HP1_AWADDR(axi_mem_interconnect_1_M00_AXI_AWADDR),
        .S_AXI_HP1_AWBURST(axi_mem_interconnect_1_M00_AXI_AWBURST),
        .S_AXI_HP1_AWCACHE(axi_mem_interconnect_1_M00_AXI_AWCACHE),
        .S_AXI_HP1_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_interconnect_1_M00_AXI_AWID}),
        .S_AXI_HP1_AWLEN(axi_mem_interconnect_1_M00_AXI_AWLEN),
        .S_AXI_HP1_AWLOCK(axi_mem_interconnect_1_M00_AXI_AWLOCK),
        .S_AXI_HP1_AWPROT(axi_mem_interconnect_1_M00_AXI_AWPROT),
        .S_AXI_HP1_AWQOS(axi_mem_interconnect_1_M00_AXI_AWQOS),
        .S_AXI_HP1_AWREADY(axi_mem_interconnect_1_M00_AXI_AWREADY),
        .S_AXI_HP1_AWSIZE(axi_mem_interconnect_1_M00_AXI_AWSIZE),
        .S_AXI_HP1_AWVALID(axi_mem_interconnect_1_M00_AXI_AWVALID),
        .S_AXI_HP1_BID(axi_mem_interconnect_1_M00_AXI_BID),
        .S_AXI_HP1_BREADY(axi_mem_interconnect_1_M00_AXI_BREADY),
        .S_AXI_HP1_BRESP(axi_mem_interconnect_1_M00_AXI_BRESP),
        .S_AXI_HP1_BVALID(axi_mem_interconnect_1_M00_AXI_BVALID),
        .S_AXI_HP1_RDATA(axi_mem_interconnect_1_M00_AXI_RDATA),
        .S_AXI_HP1_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP1_RID(axi_mem_interconnect_1_M00_AXI_RID),
        .S_AXI_HP1_RLAST(axi_mem_interconnect_1_M00_AXI_RLAST),
        .S_AXI_HP1_RREADY(axi_mem_interconnect_1_M00_AXI_RREADY),
        .S_AXI_HP1_RRESP(axi_mem_interconnect_1_M00_AXI_RRESP),
        .S_AXI_HP1_RVALID(axi_mem_interconnect_1_M00_AXI_RVALID),
        .S_AXI_HP1_WDATA(axi_mem_interconnect_1_M00_AXI_WDATA),
        .S_AXI_HP1_WID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_interconnect_1_M00_AXI_WID}),
        .S_AXI_HP1_WLAST(axi_mem_interconnect_1_M00_AXI_WLAST),
        .S_AXI_HP1_WREADY(axi_mem_interconnect_1_M00_AXI_WREADY),
        .S_AXI_HP1_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP1_WSTRB(axi_mem_interconnect_1_M00_AXI_WSTRB),
        .S_AXI_HP1_WVALID(axi_mem_interconnect_1_M00_AXI_WVALID),
        .USB0_PORT_INDCTL(processing_system7_0_USBIND_0_PORT_INDCTL),
        .USB0_VBUS_PWRFAULT(processing_system7_0_USBIND_0_VBUS_PWRFAULT),
        .USB0_VBUS_PWRSELECT(processing_system7_0_USBIND_0_VBUS_PWRSELECT));
  system_system_ila_0_1 system_ila_0
       (.SLOT_0_AXI_araddr(axi_mem_interconnect_0_M00_AXI_ARADDR),
        .SLOT_0_AXI_arcache(axi_mem_interconnect_0_M00_AXI_ARCACHE),
        .SLOT_0_AXI_arid(axi_mem_interconnect_0_M00_AXI_ARID),
        .SLOT_0_AXI_arlen(axi_mem_interconnect_0_M00_AXI_ARLEN),
        .SLOT_0_AXI_arprot(axi_mem_interconnect_0_M00_AXI_ARPROT),
        .SLOT_0_AXI_arready(axi_mem_interconnect_0_M00_AXI_ARREADY),
        .SLOT_0_AXI_arsize(axi_mem_interconnect_0_M00_AXI_ARSIZE),
        .SLOT_0_AXI_arvalid(axi_mem_interconnect_0_M00_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(axi_mem_interconnect_0_M00_AXI_AWADDR),
        .SLOT_0_AXI_awcache(axi_mem_interconnect_0_M00_AXI_AWCACHE),
        .SLOT_0_AXI_awid(axi_mem_interconnect_0_M00_AXI_AWID),
        .SLOT_0_AXI_awlen(axi_mem_interconnect_0_M00_AXI_AWLEN),
        .SLOT_0_AXI_awprot(axi_mem_interconnect_0_M00_AXI_AWPROT),
        .SLOT_0_AXI_awready(axi_mem_interconnect_0_M00_AXI_AWREADY),
        .SLOT_0_AXI_awsize(axi_mem_interconnect_0_M00_AXI_AWSIZE),
        .SLOT_0_AXI_awvalid(axi_mem_interconnect_0_M00_AXI_AWVALID),
        .SLOT_0_AXI_bid(axi_mem_interconnect_0_M00_AXI_BID[0]),
        .SLOT_0_AXI_bready(axi_mem_interconnect_0_M00_AXI_BREADY),
        .SLOT_0_AXI_bresp(axi_mem_interconnect_0_M00_AXI_BRESP),
        .SLOT_0_AXI_bvalid(axi_mem_interconnect_0_M00_AXI_BVALID),
        .SLOT_0_AXI_rdata(axi_mem_interconnect_0_M00_AXI_RDATA),
        .SLOT_0_AXI_rid(axi_mem_interconnect_0_M00_AXI_RID[0]),
        .SLOT_0_AXI_rlast(axi_mem_interconnect_0_M00_AXI_RLAST),
        .SLOT_0_AXI_rready(axi_mem_interconnect_0_M00_AXI_RREADY),
        .SLOT_0_AXI_rresp(axi_mem_interconnect_0_M00_AXI_RRESP),
        .SLOT_0_AXI_rvalid(axi_mem_interconnect_0_M00_AXI_RVALID),
        .SLOT_0_AXI_wdata(axi_mem_interconnect_0_M00_AXI_WDATA),
        .SLOT_0_AXI_wid(axi_mem_interconnect_0_M00_AXI_WID),
        .SLOT_0_AXI_wlast(axi_mem_interconnect_0_M00_AXI_WLAST),
        .SLOT_0_AXI_wready(axi_mem_interconnect_0_M00_AXI_WREADY),
        .SLOT_0_AXI_wstrb(axi_mem_interconnect_0_M00_AXI_WSTRB),
        .SLOT_0_AXI_wvalid(axi_mem_interconnect_0_M00_AXI_WVALID),
        .SLOT_10_AXIS_tdata(v_vid_in_axi4s_1_video_out_TDATA),
        .SLOT_10_AXIS_tlast(v_vid_in_axi4s_1_video_out_TLAST),
        .SLOT_10_AXIS_tready(v_vid_in_axi4s_1_video_out_TREADY),
        .SLOT_10_AXIS_tuser(v_vid_in_axi4s_1_video_out_TUSER),
        .SLOT_10_AXIS_tvalid(v_vid_in_axi4s_1_video_out_TVALID),
        .SLOT_1_AXI_araddr(axi_mem_interconnect_1_M00_AXI_ARADDR),
        .SLOT_1_AXI_arcache(axi_mem_interconnect_1_M00_AXI_ARCACHE),
        .SLOT_1_AXI_arid(axi_mem_interconnect_1_M00_AXI_ARID),
        .SLOT_1_AXI_arlen(axi_mem_interconnect_1_M00_AXI_ARLEN),
        .SLOT_1_AXI_arprot(axi_mem_interconnect_1_M00_AXI_ARPROT),
        .SLOT_1_AXI_arready(axi_mem_interconnect_1_M00_AXI_ARREADY),
        .SLOT_1_AXI_arsize(axi_mem_interconnect_1_M00_AXI_ARSIZE),
        .SLOT_1_AXI_arvalid(axi_mem_interconnect_1_M00_AXI_ARVALID),
        .SLOT_1_AXI_awaddr(axi_mem_interconnect_1_M00_AXI_AWADDR),
        .SLOT_1_AXI_awcache(axi_mem_interconnect_1_M00_AXI_AWCACHE),
        .SLOT_1_AXI_awid(axi_mem_interconnect_1_M00_AXI_AWID),
        .SLOT_1_AXI_awlen(axi_mem_interconnect_1_M00_AXI_AWLEN),
        .SLOT_1_AXI_awprot(axi_mem_interconnect_1_M00_AXI_AWPROT),
        .SLOT_1_AXI_awready(axi_mem_interconnect_1_M00_AXI_AWREADY),
        .SLOT_1_AXI_awsize(axi_mem_interconnect_1_M00_AXI_AWSIZE),
        .SLOT_1_AXI_awvalid(axi_mem_interconnect_1_M00_AXI_AWVALID),
        .SLOT_1_AXI_bid(axi_mem_interconnect_1_M00_AXI_BID[0]),
        .SLOT_1_AXI_bready(axi_mem_interconnect_1_M00_AXI_BREADY),
        .SLOT_1_AXI_bresp(axi_mem_interconnect_1_M00_AXI_BRESP),
        .SLOT_1_AXI_bvalid(axi_mem_interconnect_1_M00_AXI_BVALID),
        .SLOT_1_AXI_rdata(axi_mem_interconnect_1_M00_AXI_RDATA),
        .SLOT_1_AXI_rid(axi_mem_interconnect_1_M00_AXI_RID[0]),
        .SLOT_1_AXI_rlast(axi_mem_interconnect_1_M00_AXI_RLAST),
        .SLOT_1_AXI_rready(axi_mem_interconnect_1_M00_AXI_RREADY),
        .SLOT_1_AXI_rresp(axi_mem_interconnect_1_M00_AXI_RRESP),
        .SLOT_1_AXI_rvalid(axi_mem_interconnect_1_M00_AXI_RVALID),
        .SLOT_1_AXI_wdata(axi_mem_interconnect_1_M00_AXI_WDATA),
        .SLOT_1_AXI_wid(axi_mem_interconnect_1_M00_AXI_WID),
        .SLOT_1_AXI_wlast(axi_mem_interconnect_1_M00_AXI_WLAST),
        .SLOT_1_AXI_wready(axi_mem_interconnect_1_M00_AXI_WREADY),
        .SLOT_1_AXI_wstrb(axi_mem_interconnect_1_M00_AXI_WSTRB),
        .SLOT_1_AXI_wvalid(axi_mem_interconnect_1_M00_AXI_WVALID),
        .SLOT_2_AXIS_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .SLOT_2_AXIS_tkeep(axi_vdma_0_M_AXIS_MM2S_TKEEP),
        .SLOT_2_AXIS_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .SLOT_2_AXIS_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .SLOT_2_AXIS_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .SLOT_2_AXIS_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .SLOT_3_AXI_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_3_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .SLOT_3_AXI_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_3_AXI_arprot({1'b0,1'b0,1'b0}),
        .SLOT_3_AXI_arready(axi_vdma_1_M_AXI_S2MM_ARREADY),
        .SLOT_3_AXI_arsize({1'b0,1'b1,1'b1}),
        .SLOT_3_AXI_arvalid(1'b0),
        .SLOT_3_AXI_awaddr(axi_vdma_1_M_AXI_S2MM_AWADDR),
        .SLOT_3_AXI_awcache(axi_vdma_1_M_AXI_S2MM_AWCACHE),
        .SLOT_3_AXI_awlen(axi_vdma_1_M_AXI_S2MM_AWLEN),
        .SLOT_3_AXI_awprot(axi_vdma_1_M_AXI_S2MM_AWPROT),
        .SLOT_3_AXI_awready(axi_vdma_1_M_AXI_S2MM_AWREADY),
        .SLOT_3_AXI_awsize(axi_vdma_1_M_AXI_S2MM_AWSIZE),
        .SLOT_3_AXI_awvalid(axi_vdma_1_M_AXI_S2MM_AWVALID),
        .SLOT_3_AXI_bready(axi_vdma_1_M_AXI_S2MM_BREADY),
        .SLOT_3_AXI_bresp(axi_vdma_1_M_AXI_S2MM_BRESP),
        .SLOT_3_AXI_bvalid(axi_vdma_1_M_AXI_S2MM_BVALID),
        .SLOT_3_AXI_rdata(axi_vdma_1_M_AXI_S2MM_RDATA),
        .SLOT_3_AXI_rlast(axi_vdma_1_M_AXI_S2MM_RLAST),
        .SLOT_3_AXI_rready(1'b0),
        .SLOT_3_AXI_rvalid(axi_vdma_1_M_AXI_S2MM_RVALID),
        .SLOT_3_AXI_wdata(axi_vdma_1_M_AXI_S2MM_WDATA),
        .SLOT_3_AXI_wlast(axi_vdma_1_M_AXI_S2MM_WLAST),
        .SLOT_3_AXI_wready(axi_vdma_1_M_AXI_S2MM_WREADY),
        .SLOT_3_AXI_wstrb(axi_vdma_1_M_AXI_S2MM_WSTRB),
        .SLOT_3_AXI_wvalid(axi_vdma_1_M_AXI_S2MM_WVALID),
        .SLOT_4_AXIS_tdata(axi_vdma_2_M_AXIS_MM2S_TDATA),
        .SLOT_4_AXIS_tkeep(axi_vdma_2_M_AXIS_MM2S_TKEEP),
        .SLOT_4_AXIS_tlast(axi_vdma_2_M_AXIS_MM2S_TLAST),
        .SLOT_4_AXIS_tready(axi_vdma_2_M_AXIS_MM2S_TREADY),
        .SLOT_4_AXIS_tuser(axi_vdma_2_M_AXIS_MM2S_TUSER),
        .SLOT_4_AXIS_tvalid(axi_vdma_2_M_AXIS_MM2S_TVALID),
        .SLOT_5_AXI_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_5_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .SLOT_5_AXI_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_5_AXI_arprot({1'b0,1'b0,1'b0}),
        .SLOT_5_AXI_arready(axi_vdma_3_M_AXI_S2MM_ARREADY),
        .SLOT_5_AXI_arsize({1'b0,1'b1,1'b1}),
        .SLOT_5_AXI_arvalid(1'b0),
        .SLOT_5_AXI_awaddr(axi_vdma_3_M_AXI_S2MM_AWADDR),
        .SLOT_5_AXI_awcache(axi_vdma_3_M_AXI_S2MM_AWCACHE),
        .SLOT_5_AXI_awlen(axi_vdma_3_M_AXI_S2MM_AWLEN),
        .SLOT_5_AXI_awprot(axi_vdma_3_M_AXI_S2MM_AWPROT),
        .SLOT_5_AXI_awready(axi_vdma_3_M_AXI_S2MM_AWREADY),
        .SLOT_5_AXI_awsize(axi_vdma_3_M_AXI_S2MM_AWSIZE),
        .SLOT_5_AXI_awvalid(axi_vdma_3_M_AXI_S2MM_AWVALID),
        .SLOT_5_AXI_bready(axi_vdma_3_M_AXI_S2MM_BREADY),
        .SLOT_5_AXI_bresp(axi_vdma_3_M_AXI_S2MM_BRESP),
        .SLOT_5_AXI_bvalid(axi_vdma_3_M_AXI_S2MM_BVALID),
        .SLOT_5_AXI_rdata(axi_vdma_3_M_AXI_S2MM_RDATA),
        .SLOT_5_AXI_rlast(axi_vdma_3_M_AXI_S2MM_RLAST),
        .SLOT_5_AXI_rready(1'b0),
        .SLOT_5_AXI_rvalid(axi_vdma_3_M_AXI_S2MM_RVALID),
        .SLOT_5_AXI_wdata(axi_vdma_3_M_AXI_S2MM_WDATA),
        .SLOT_5_AXI_wlast(axi_vdma_3_M_AXI_S2MM_WLAST),
        .SLOT_5_AXI_wready(axi_vdma_3_M_AXI_S2MM_WREADY),
        .SLOT_5_AXI_wstrb(axi_vdma_3_M_AXI_S2MM_WSTRB),
        .SLOT_5_AXI_wvalid(axi_vdma_3_M_AXI_S2MM_WVALID),
        .SLOT_6_AXI_araddr(S00_AXI_1_ARADDR),
        .SLOT_6_AXI_arcache(S00_AXI_1_ARCACHE),
        .SLOT_6_AXI_arlen(S00_AXI_1_ARLEN),
        .SLOT_6_AXI_arprot(S00_AXI_1_ARPROT),
        .SLOT_6_AXI_arready(S00_AXI_1_ARREADY),
        .SLOT_6_AXI_arsize(S00_AXI_1_ARSIZE),
        .SLOT_6_AXI_arvalid(S00_AXI_1_ARVALID),
        .SLOT_6_AXI_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_6_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .SLOT_6_AXI_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_6_AXI_awprot({1'b0,1'b0,1'b0}),
        .SLOT_6_AXI_awready(S00_AXI_1_AWREADY),
        .SLOT_6_AXI_awsize({1'b0,1'b1,1'b1}),
        .SLOT_6_AXI_awvalid(1'b0),
        .SLOT_6_AXI_bready(1'b0),
        .SLOT_6_AXI_bvalid(S00_AXI_1_BVALID),
        .SLOT_6_AXI_rdata(S00_AXI_1_RDATA),
        .SLOT_6_AXI_rlast(S00_AXI_1_RLAST),
        .SLOT_6_AXI_rready(S00_AXI_1_RREADY),
        .SLOT_6_AXI_rresp(S00_AXI_1_RRESP),
        .SLOT_6_AXI_rvalid(S00_AXI_1_RVALID),
        .SLOT_6_AXI_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_6_AXI_wlast(1'b0),
        .SLOT_6_AXI_wready(S00_AXI_1_WREADY),
        .SLOT_6_AXI_wvalid(1'b0),
        .SLOT_7_AXI_araddr(S00_AXI_2_ARADDR),
        .SLOT_7_AXI_arcache(S00_AXI_2_ARCACHE[1:0]),
        .SLOT_7_AXI_arlen(S00_AXI_2_ARLEN),
        .SLOT_7_AXI_arprot(S00_AXI_2_ARPROT),
        .SLOT_7_AXI_arready(S00_AXI_2_ARREADY),
        .SLOT_7_AXI_arsize(S00_AXI_2_ARSIZE),
        .SLOT_7_AXI_arvalid(S00_AXI_2_ARVALID),
        .SLOT_7_AXI_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_7_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .SLOT_7_AXI_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_7_AXI_awprot({1'b0,1'b0,1'b0}),
        .SLOT_7_AXI_awready(S00_AXI_2_AWREADY),
        .SLOT_7_AXI_awsize({1'b0,1'b1,1'b1}),
        .SLOT_7_AXI_awvalid(1'b0),
        .SLOT_7_AXI_bready(1'b0),
        .SLOT_7_AXI_bvalid(S00_AXI_2_BVALID),
        .SLOT_7_AXI_rdata(S00_AXI_2_RDATA),
        .SLOT_7_AXI_rlast(S00_AXI_2_RLAST),
        .SLOT_7_AXI_rready(S00_AXI_2_RREADY),
        .SLOT_7_AXI_rresp(S00_AXI_2_RRESP),
        .SLOT_7_AXI_rvalid(S00_AXI_2_RVALID),
        .SLOT_7_AXI_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_7_AXI_wlast(1'b0),
        .SLOT_7_AXI_wready(S00_AXI_2_WREADY),
        .SLOT_7_AXI_wvalid(1'b0),
        .SLOT_8_AXIS_tdata(v_mix_0_m_axis_video_TDATA),
        .SLOT_8_AXIS_tdest(v_mix_0_m_axis_video_TDEST),
        .SLOT_8_AXIS_tid(v_mix_0_m_axis_video_TID),
        .SLOT_8_AXIS_tkeep(v_mix_0_m_axis_video_TKEEP),
        .SLOT_8_AXIS_tlast(v_mix_0_m_axis_video_TLAST),
        .SLOT_8_AXIS_tready(v_mix_0_m_axis_video_TREADY),
        .SLOT_8_AXIS_tstrb(v_mix_0_m_axis_video_TSTRB),
        .SLOT_8_AXIS_tuser(v_mix_0_m_axis_video_TUSER),
        .SLOT_8_AXIS_tvalid(v_mix_0_m_axis_video_TVALID),
        .SLOT_9_AXIS_tdata(v_vid_in_axi4s_0_video_out_TDATA),
        .SLOT_9_AXIS_tlast(v_vid_in_axi4s_0_video_out_TLAST),
        .SLOT_9_AXIS_tready(v_vid_in_axi4s_0_video_out_TREADY),
        .SLOT_9_AXIS_tuser(v_vid_in_axi4s_0_video_out_TUSER),
        .SLOT_9_AXIS_tvalid(v_vid_in_axi4s_0_video_out_TVALID),
        .clk(Net1),
        .probe0(ARESETN_1),
        .probe1(proc_sys_reset_0_peripheral_aresetn),
        .resetn(proc_sys_reset_0_peripheral_aresetn));
  system_system_ila_1_1 system_ila_1
       (.SLOT_0_IIC_scl_i(processing_system7_0_IIC_0_SCL_I),
        .SLOT_0_IIC_scl_o(processing_system7_0_IIC_0_SCL_O),
        .SLOT_0_IIC_scl_t(processing_system7_0_IIC_0_SCL_T),
        .SLOT_0_IIC_sda_i(processing_system7_0_IIC_0_SDA_I),
        .SLOT_0_IIC_sda_o(processing_system7_0_IIC_0_SDA_O),
        .SLOT_0_IIC_sda_t(processing_system7_0_IIC_0_SDA_T),
        .clk(Net1));
  system_system_ila_2_1 system_ila_2
       (.SLOT_0_IIC_scl_i(processing_system7_0_IIC_1_SCL_I),
        .SLOT_0_IIC_scl_o(processing_system7_0_IIC_1_SCL_O),
        .SLOT_0_IIC_scl_t(processing_system7_0_IIC_1_SCL_T),
        .SLOT_0_IIC_sda_i(processing_system7_0_IIC_1_SDA_I),
        .SLOT_0_IIC_sda_o(processing_system7_0_IIC_1_SDA_O),
        .SLOT_0_IIC_sda_t(processing_system7_0_IIC_1_SDA_T),
        .clk(Net1));
  system_system_ila_4_3 system_ila_4
       (.clk(Net1),
        .probe0(cmos_vsync_i_0_1));
  system_system_ila_7_2 system_ila_7
       (.clk(Net1),
        .probe0(v_axi4s_vid_out_0_vid_data),
        .probe1(Net3),
        .probe2(clk_wiz_0_clk_out2));
  system_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(Net2),
        .Res(util_vector_logic_0_Res));
  system_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(proc_sys_reset_0_peripheral_aresetn),
        .Res(util_vector_logic_1_Res));
  system_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(Net1),
        .aclken(Net2),
        .aresetn(Net2),
        .fid(1'b0),
        .s_axis_video_tdata(v_mix_0_m_axis_video_TDATA),
        .s_axis_video_tlast(v_mix_0_m_axis_video_TLAST),
        .s_axis_video_tready(v_mix_0_m_axis_video_TREADY),
        .s_axis_video_tuser(v_mix_0_m_axis_video_TUSER),
        .s_axis_video_tvalid(v_mix_0_m_axis_video_TVALID),
        .vid_active_video(v_axi4s_vid_out_0_vid_active_video),
        .vid_data(v_axi4s_vid_out_0_vid_data),
        .vid_hsync(v_axi4s_vid_out_0_vid_hsync),
        .vid_io_out_ce(Net2),
        .vid_io_out_clk(Net3),
        .vid_io_out_reset(1'b0),
        .vid_vsync(v_axi4s_vid_out_0_vid_vsync),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(v_axi4s_vid_out_0_vtg_ce),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_0_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_0_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  system_v_mix_0_0 v_mix_0
       (.ap_clk(Net1),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .interrupt(v_mix_0_interrupt),
        .m_axis_video_TDATA(v_mix_0_m_axis_video_TDATA),
        .m_axis_video_TDEST(v_mix_0_m_axis_video_TDEST),
        .m_axis_video_TID(v_mix_0_m_axis_video_TID),
        .m_axis_video_TKEEP(v_mix_0_m_axis_video_TKEEP),
        .m_axis_video_TLAST(v_mix_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_mix_0_m_axis_video_TREADY),
        .m_axis_video_TSTRB(v_mix_0_m_axis_video_TSTRB),
        .m_axis_video_TUSER(v_mix_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_mix_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(axi_interconnect_1_M05_AXI_ARADDR[12:0]),
        .s_axi_CTRL_ARREADY(axi_interconnect_1_M05_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(axi_interconnect_1_M05_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(axi_interconnect_1_M05_AXI_AWADDR[12:0]),
        .s_axi_CTRL_AWREADY(axi_interconnect_1_M05_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(axi_interconnect_1_M05_AXI_AWVALID),
        .s_axi_CTRL_BREADY(axi_interconnect_1_M05_AXI_BREADY),
        .s_axi_CTRL_BRESP(axi_interconnect_1_M05_AXI_BRESP),
        .s_axi_CTRL_BVALID(axi_interconnect_1_M05_AXI_BVALID),
        .s_axi_CTRL_RDATA(axi_interconnect_1_M05_AXI_RDATA),
        .s_axi_CTRL_RREADY(axi_interconnect_1_M05_AXI_RREADY),
        .s_axi_CTRL_RRESP(axi_interconnect_1_M05_AXI_RRESP),
        .s_axi_CTRL_RVALID(axi_interconnect_1_M05_AXI_RVALID),
        .s_axi_CTRL_WDATA(axi_interconnect_1_M05_AXI_WDATA),
        .s_axi_CTRL_WREADY(axi_interconnect_1_M05_AXI_WREADY),
        .s_axi_CTRL_WSTRB(axi_interconnect_1_M05_AXI_WSTRB),
        .s_axi_CTRL_WVALID(axi_interconnect_1_M05_AXI_WVALID),
        .s_axis_video1_TDATA(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .s_axis_video1_TDEST(1'b0),
        .s_axis_video1_TID(1'b0),
        .s_axis_video1_TKEEP(axi_vdma_0_M_AXIS_MM2S_TKEEP),
        .s_axis_video1_TLAST(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .s_axis_video1_TREADY(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .s_axis_video1_TSTRB({1'b1,1'b1,1'b1}),
        .s_axis_video1_TUSER(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .s_axis_video1_TVALID(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .s_axis_video_TDATA(axi_vdma_2_M_AXIS_MM2S_TDATA),
        .s_axis_video_TDEST(1'b0),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP(axi_vdma_2_M_AXIS_MM2S_TKEEP),
        .s_axis_video_TLAST(axi_vdma_2_M_AXIS_MM2S_TLAST),
        .s_axis_video_TREADY(axi_vdma_2_M_AXIS_MM2S_TREADY),
        .s_axis_video_TSTRB({1'b1,1'b1,1'b1}),
        .s_axis_video_TUSER(axi_vdma_2_M_AXIS_MM2S_TUSER),
        .s_axis_video_TVALID(axi_vdma_2_M_AXIS_MM2S_TVALID));
  system_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(Net3),
        .clken(Net2),
        .fsync_in(1'b0),
        .gen_clken(v_axi4s_vid_out_0_vtg_ce),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .irq(v_tc_0_irq),
        .resetn(Net2),
        .s_axi_aclk(Net1),
        .s_axi_aclken(1'b1),
        .s_axi_araddr(axi_interconnect_1_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_1_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_1_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_1_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_1_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_1_M02_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_1_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_1_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_1_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_1_M02_AXI_RDATA),
        .s_axi_rready(axi_interconnect_1_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_1_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_1_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_1_M02_AXI_WDATA),
        .s_axi_wready(axi_interconnect_1_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_1_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_1_M02_AXI_WVALID),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
  system_v_vid_in_axi4s_0_0 v_vid_in_axi4s_0
       (.aclk(Net1),
        .aclken(Net2),
        .aresetn(Net2),
        .axis_enable(Net2),
        .m_axis_video_tdata(v_vid_in_axi4s_0_video_out_TDATA),
        .m_axis_video_tlast(v_vid_in_axi4s_0_video_out_TLAST),
        .m_axis_video_tready(v_vid_in_axi4s_0_video_out_TREADY),
        .m_axis_video_tuser(v_vid_in_axi4s_0_video_out_TUSER),
        .m_axis_video_tvalid(v_vid_in_axi4s_0_video_out_TVALID),
        .vid_active_video(OVSensor_0_hs_o),
        .vid_data(OVSensor_0_rgb_o),
        .vid_field_id(1'b0),
        .vid_hblank(1'b0),
        .vid_hsync(OVSensor_0_hs_o),
        .vid_io_in_ce(OVSensor_0_vid_clk_ce),
        .vid_io_in_clk(cmos_pclk_i_0_1),
        .vid_io_in_reset(util_vector_logic_0_Res),
        .vid_vblank(1'b0),
        .vid_vsync(OVSensor_0_vs_o));
  system_v_vid_in_axi4s_1_0 v_vid_in_axi4s_1
       (.aclk(Net1),
        .aclken(Net2),
        .aresetn(Net2),
        .axis_enable(Net2),
        .m_axis_video_tdata(v_vid_in_axi4s_1_video_out_TDATA),
        .m_axis_video_tlast(v_vid_in_axi4s_1_video_out_TLAST),
        .m_axis_video_tready(v_vid_in_axi4s_1_video_out_TREADY),
        .m_axis_video_tuser(v_vid_in_axi4s_1_video_out_TUSER),
        .m_axis_video_tvalid(v_vid_in_axi4s_1_video_out_TVALID),
        .vid_active_video(OVSensor_1_hs_o),
        .vid_data(OVSensor_1_rgb_o),
        .vid_field_id(1'b0),
        .vid_hblank(1'b0),
        .vid_hsync(OVSensor_1_hs_o),
        .vid_io_in_ce(OVSensor_1_vid_clk_ce),
        .vid_io_in_clk(cmos_pclk_i_1_1),
        .vid_io_in_reset(util_vector_logic_0_Res),
        .vid_vblank(1'b0),
        .vid_vsync(OVSensor_1_vs_o));
  system_xlconcat_0_0 xlconcat_0
       (.In0(v_tc_0_irq),
        .In1(axi_vdma_2_mm2s_introut),
        .In2(axi_vdma_0_mm2s_introut),
        .In3(axi_vdma_3_s2mm_introut),
        .In4(axi_vdma_1_s2mm_introut),
        .In5(v_mix_0_interrupt),
        .dout(xlconcat_0_dout));
endmodule

module system_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awready,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wready,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_arready,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  output [0:0]S00_AXI_awready;
  output [0:0]S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  output [0:0]S00_AXI_wready;
  input S01_ACLK;
  input S01_ARESETN;
  output [0:0]S01_AXI_arready;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awprot;
  output [0:0]S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [0:0]S01_AXI_awvalid;
  input [0:0]S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  output [63:0]S01_AXI_rdata;
  output [0:0]S01_AXI_rlast;
  output [0:0]S01_AXI_rvalid;
  input [63:0]S01_AXI_wdata;
  input [0:0]S01_AXI_wlast;
  output [0:0]S01_AXI_wready;
  input [7:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire axi_mem_interconnect_0_ACLK_net;
  wire axi_mem_interconnect_0_ARESETN_net;
  wire [31:0]axi_mem_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_mem_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_mem_interconnect_0_to_s00_couplers_ARCACHE;
  wire [7:0]axi_mem_interconnect_0_to_s00_couplers_ARLEN;
  wire [2:0]axi_mem_interconnect_0_to_s00_couplers_ARPROT;
  wire [0:0]axi_mem_interconnect_0_to_s00_couplers_ARREADY;
  wire [2:0]axi_mem_interconnect_0_to_s00_couplers_ARSIZE;
  wire [0:0]axi_mem_interconnect_0_to_s00_couplers_ARVALID;
  wire [0:0]axi_mem_interconnect_0_to_s00_couplers_AWREADY;
  wire [0:0]axi_mem_interconnect_0_to_s00_couplers_BVALID;
  wire [63:0]axi_mem_interconnect_0_to_s00_couplers_RDATA;
  wire [0:0]axi_mem_interconnect_0_to_s00_couplers_RLAST;
  wire [0:0]axi_mem_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_interconnect_0_to_s00_couplers_RRESP;
  wire [0:0]axi_mem_interconnect_0_to_s00_couplers_RVALID;
  wire [0:0]axi_mem_interconnect_0_to_s00_couplers_WREADY;
  wire [0:0]axi_mem_interconnect_0_to_s01_couplers_ARREADY;
  wire [31:0]axi_mem_interconnect_0_to_s01_couplers_AWADDR;
  wire [1:0]axi_mem_interconnect_0_to_s01_couplers_AWBURST;
  wire [3:0]axi_mem_interconnect_0_to_s01_couplers_AWCACHE;
  wire [7:0]axi_mem_interconnect_0_to_s01_couplers_AWLEN;
  wire [2:0]axi_mem_interconnect_0_to_s01_couplers_AWPROT;
  wire [0:0]axi_mem_interconnect_0_to_s01_couplers_AWREADY;
  wire [2:0]axi_mem_interconnect_0_to_s01_couplers_AWSIZE;
  wire [0:0]axi_mem_interconnect_0_to_s01_couplers_AWVALID;
  wire [0:0]axi_mem_interconnect_0_to_s01_couplers_BREADY;
  wire [1:0]axi_mem_interconnect_0_to_s01_couplers_BRESP;
  wire [0:0]axi_mem_interconnect_0_to_s01_couplers_BVALID;
  wire [63:0]axi_mem_interconnect_0_to_s01_couplers_RDATA;
  wire [0:0]axi_mem_interconnect_0_to_s01_couplers_RLAST;
  wire [0:0]axi_mem_interconnect_0_to_s01_couplers_RVALID;
  wire [63:0]axi_mem_interconnect_0_to_s01_couplers_WDATA;
  wire [0:0]axi_mem_interconnect_0_to_s01_couplers_WLAST;
  wire [0:0]axi_mem_interconnect_0_to_s01_couplers_WREADY;
  wire [7:0]axi_mem_interconnect_0_to_s01_couplers_WSTRB;
  wire [0:0]axi_mem_interconnect_0_to_s01_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_mem_interconnect_0_ARADDR;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_0_ARBURST;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_0_ARCACHE;
  wire [0:0]m00_couplers_to_axi_mem_interconnect_0_ARID;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_0_ARLEN;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_0_ARLOCK;
  wire [2:0]m00_couplers_to_axi_mem_interconnect_0_ARPROT;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_0_ARQOS;
  wire m00_couplers_to_axi_mem_interconnect_0_ARREADY;
  wire [2:0]m00_couplers_to_axi_mem_interconnect_0_ARSIZE;
  wire m00_couplers_to_axi_mem_interconnect_0_ARVALID;
  wire [31:0]m00_couplers_to_axi_mem_interconnect_0_AWADDR;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_0_AWBURST;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_0_AWCACHE;
  wire [0:0]m00_couplers_to_axi_mem_interconnect_0_AWID;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_0_AWLEN;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_0_AWLOCK;
  wire [2:0]m00_couplers_to_axi_mem_interconnect_0_AWPROT;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_0_AWQOS;
  wire m00_couplers_to_axi_mem_interconnect_0_AWREADY;
  wire [2:0]m00_couplers_to_axi_mem_interconnect_0_AWSIZE;
  wire m00_couplers_to_axi_mem_interconnect_0_AWVALID;
  wire [5:0]m00_couplers_to_axi_mem_interconnect_0_BID;
  wire m00_couplers_to_axi_mem_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_0_BRESP;
  wire m00_couplers_to_axi_mem_interconnect_0_BVALID;
  wire [63:0]m00_couplers_to_axi_mem_interconnect_0_RDATA;
  wire [5:0]m00_couplers_to_axi_mem_interconnect_0_RID;
  wire m00_couplers_to_axi_mem_interconnect_0_RLAST;
  wire m00_couplers_to_axi_mem_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_0_RRESP;
  wire m00_couplers_to_axi_mem_interconnect_0_RVALID;
  wire [63:0]m00_couplers_to_axi_mem_interconnect_0_WDATA;
  wire [0:0]m00_couplers_to_axi_mem_interconnect_0_WID;
  wire m00_couplers_to_axi_mem_interconnect_0_WLAST;
  wire m00_couplers_to_axi_mem_interconnect_0_WREADY;
  wire [7:0]m00_couplers_to_axi_mem_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_mem_interconnect_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire [0:0]s01_couplers_to_xbar_AWVALID;
  wire [0:0]s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [63:0]s01_couplers_to_xbar_WDATA;
  wire [0:0]s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [7:0]s01_couplers_to_xbar_WSTRB;
  wire [0:0]s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [0:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [0:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [3:0]NLW_xbar_s_axi_bresp_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_mem_interconnect_0_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_mem_interconnect_0_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_mem_interconnect_0_ARCACHE;
  assign M00_AXI_arid[0] = m00_couplers_to_axi_mem_interconnect_0_ARID;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_axi_mem_interconnect_0_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_axi_mem_interconnect_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_mem_interconnect_0_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_mem_interconnect_0_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_mem_interconnect_0_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_mem_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_mem_interconnect_0_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_mem_interconnect_0_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_mem_interconnect_0_AWCACHE;
  assign M00_AXI_awid[0] = m00_couplers_to_axi_mem_interconnect_0_AWID;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_axi_mem_interconnect_0_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_axi_mem_interconnect_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_mem_interconnect_0_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_mem_interconnect_0_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_mem_interconnect_0_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_mem_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_mem_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_mem_interconnect_0_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_mem_interconnect_0_WDATA;
  assign M00_AXI_wid[0] = m00_couplers_to_axi_mem_interconnect_0_WID;
  assign M00_AXI_wlast = m00_couplers_to_axi_mem_interconnect_0_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_mem_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_mem_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axi_mem_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_mem_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bvalid[0] = axi_mem_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_mem_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rlast[0] = axi_mem_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mem_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_mem_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_mem_interconnect_0_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready[0] = axi_mem_interconnect_0_to_s01_couplers_ARREADY;
  assign S01_AXI_awready[0] = axi_mem_interconnect_0_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_mem_interconnect_0_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid[0] = axi_mem_interconnect_0_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[63:0] = axi_mem_interconnect_0_to_s01_couplers_RDATA;
  assign S01_AXI_rlast[0] = axi_mem_interconnect_0_to_s01_couplers_RLAST;
  assign S01_AXI_rvalid[0] = axi_mem_interconnect_0_to_s01_couplers_RVALID;
  assign S01_AXI_wready[0] = axi_mem_interconnect_0_to_s01_couplers_WREADY;
  assign axi_mem_interconnect_0_ACLK_net = ACLK;
  assign axi_mem_interconnect_0_ARESETN_net = ARESETN;
  assign axi_mem_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mem_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mem_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_mem_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mem_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_mem_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_mem_interconnect_0_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_mem_interconnect_0_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_mem_interconnect_0_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_mem_interconnect_0_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_mem_interconnect_0_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_mem_interconnect_0_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_mem_interconnect_0_to_s01_couplers_AWVALID = S01_AXI_awvalid[0];
  assign axi_mem_interconnect_0_to_s01_couplers_BREADY = S01_AXI_bready[0];
  assign axi_mem_interconnect_0_to_s01_couplers_WDATA = S01_AXI_wdata[63:0];
  assign axi_mem_interconnect_0_to_s01_couplers_WLAST = S01_AXI_wlast[0];
  assign axi_mem_interconnect_0_to_s01_couplers_WSTRB = S01_AXI_wstrb[7:0];
  assign axi_mem_interconnect_0_to_s01_couplers_WVALID = S01_AXI_wvalid[0];
  assign m00_couplers_to_axi_mem_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_mem_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_mem_interconnect_0_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_mem_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_mem_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_mem_interconnect_0_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_mem_interconnect_0_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_mem_interconnect_0_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_mem_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_mem_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_mem_interconnect_0_WREADY = M00_AXI_wready;
  m00_couplers_imp_1GAV7EC m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_mem_interconnect_0_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_mem_interconnect_0_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_mem_interconnect_0_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_mem_interconnect_0_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_mem_interconnect_0_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_mem_interconnect_0_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_mem_interconnect_0_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_mem_interconnect_0_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_mem_interconnect_0_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_mem_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_mem_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_mem_interconnect_0_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_mem_interconnect_0_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_mem_interconnect_0_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_mem_interconnect_0_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_mem_interconnect_0_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_mem_interconnect_0_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_mem_interconnect_0_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_mem_interconnect_0_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_mem_interconnect_0_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_mem_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_mem_interconnect_0_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_mem_interconnect_0_BID),
        .M_AXI_bready(m00_couplers_to_axi_mem_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_mem_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_mem_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_mem_interconnect_0_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_mem_interconnect_0_RID),
        .M_AXI_rlast(m00_couplers_to_axi_mem_interconnect_0_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_mem_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_mem_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_mem_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_mem_interconnect_0_WDATA),
        .M_AXI_wid(m00_couplers_to_axi_mem_interconnect_0_WID),
        .M_AXI_wlast(m00_couplers_to_axi_mem_interconnect_0_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_mem_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_mem_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_mem_interconnect_0_WVALID),
        .S_ACLK(axi_mem_interconnect_0_ACLK_net),
        .S_ARESETN(axi_mem_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_12TUYLH s00_couplers
       (.M_ACLK(axi_mem_interconnect_0_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_mem_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awready(axi_mem_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_bvalid(axi_mem_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_mem_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mem_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wready(axi_mem_interconnect_0_to_s00_couplers_WREADY));
  s01_couplers_imp_AFJYUS s01_couplers
       (.M_ACLK(axi_mem_interconnect_0_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_0_ARESETN_net),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_arready(axi_mem_interconnect_0_to_s01_couplers_ARREADY),
        .S_AXI_awaddr(axi_mem_interconnect_0_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_interconnect_0_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_interconnect_0_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_interconnect_0_to_s01_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_interconnect_0_to_s01_couplers_AWPROT),
        .S_AXI_awready(axi_mem_interconnect_0_to_s01_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_interconnect_0_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_interconnect_0_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_mem_interconnect_0_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_mem_interconnect_0_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_interconnect_0_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_mem_interconnect_0_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_mem_interconnect_0_to_s01_couplers_RLAST),
        .S_AXI_rvalid(axi_mem_interconnect_0_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_mem_interconnect_0_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_mem_interconnect_0_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_mem_interconnect_0_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_interconnect_0_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_interconnect_0_to_s01_couplers_WVALID));
  system_xbar_0 xbar
       (.aclk(axi_mem_interconnect_0_ACLK_net),
        .aresetn(axi_mem_interconnect_0_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({1'b0,1'b0,1'b1,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({1'b0,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,1'b0,1'b1}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,1'b0,1'b1,1'b1}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,1'b0}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,1'b0}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({1'b0,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,1'b0}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,1'b0}));
endmodule

module system_axi_interconnect_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_1_ACLK_net;
  wire axi_interconnect_1_ARESETN_net;
  wire [31:0]axi_interconnect_1_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARCACHE;
  wire [11:0]axi_interconnect_1_to_s00_couplers_ARID;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_1_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARQOS;
  wire axi_interconnect_1_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARSIZE;
  wire axi_interconnect_1_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWCACHE;
  wire [11:0]axi_interconnect_1_to_s00_couplers_AWID;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_1_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWQOS;
  wire axi_interconnect_1_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWSIZE;
  wire axi_interconnect_1_to_s00_couplers_AWVALID;
  wire [11:0]axi_interconnect_1_to_s00_couplers_BID;
  wire axi_interconnect_1_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_BRESP;
  wire axi_interconnect_1_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_RDATA;
  wire [11:0]axi_interconnect_1_to_s00_couplers_RID;
  wire axi_interconnect_1_to_s00_couplers_RLAST;
  wire axi_interconnect_1_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_RRESP;
  wire axi_interconnect_1_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_WDATA;
  wire [11:0]axi_interconnect_1_to_s00_couplers_WID;
  wire axi_interconnect_1_to_s00_couplers_WLAST;
  wire axi_interconnect_1_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_1_to_s00_couplers_WSTRB;
  wire axi_interconnect_1_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_ARADDR;
  wire [0:0]m00_couplers_to_axi_interconnect_1_ARREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_AWADDR;
  wire [0:0]m00_couplers_to_axi_interconnect_1_AWREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_1_AWVALID;
  wire [0:0]m00_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_BRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_RDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_RRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_1_WREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_ARADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_1_ARREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_AWADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_1_AWREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_1_AWVALID;
  wire [0:0]m01_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_1_BRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_RDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_1_RRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_WDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_1_WREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_1_ARADDR;
  wire [0:0]m02_couplers_to_axi_interconnect_1_ARREADY;
  wire [0:0]m02_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_1_AWADDR;
  wire [0:0]m02_couplers_to_axi_interconnect_1_AWREADY;
  wire [0:0]m02_couplers_to_axi_interconnect_1_AWVALID;
  wire [0:0]m02_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_1_BRESP;
  wire [0:0]m02_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_1_RDATA;
  wire [0:0]m02_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_1_RRESP;
  wire [0:0]m02_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_1_WDATA;
  wire [0:0]m02_couplers_to_axi_interconnect_1_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_1_WSTRB;
  wire [0:0]m02_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_1_ARADDR;
  wire [0:0]m03_couplers_to_axi_interconnect_1_ARREADY;
  wire [0:0]m03_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_1_AWADDR;
  wire [0:0]m03_couplers_to_axi_interconnect_1_AWREADY;
  wire [0:0]m03_couplers_to_axi_interconnect_1_AWVALID;
  wire [0:0]m03_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_1_BRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_1_RDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_1_RRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_1_WDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_1_WREADY;
  wire [0:0]m03_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_1_ARADDR;
  wire [0:0]m04_couplers_to_axi_interconnect_1_ARREADY;
  wire [0:0]m04_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_1_AWADDR;
  wire [0:0]m04_couplers_to_axi_interconnect_1_AWREADY;
  wire [0:0]m04_couplers_to_axi_interconnect_1_AWVALID;
  wire [0:0]m04_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_1_BRESP;
  wire [0:0]m04_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_1_RDATA;
  wire [0:0]m04_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_1_RRESP;
  wire [0:0]m04_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_1_WDATA;
  wire [0:0]m04_couplers_to_axi_interconnect_1_WREADY;
  wire [0:0]m04_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_1_ARADDR;
  wire m05_couplers_to_axi_interconnect_1_ARREADY;
  wire m05_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_1_AWADDR;
  wire m05_couplers_to_axi_interconnect_1_AWREADY;
  wire m05_couplers_to_axi_interconnect_1_AWVALID;
  wire m05_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_1_BRESP;
  wire m05_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_1_RDATA;
  wire m05_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_1_RRESP;
  wire m05_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_1_WDATA;
  wire m05_couplers_to_axi_interconnect_1_WREADY;
  wire [3:0]m05_couplers_to_axi_interconnect_1_WSTRB;
  wire m05_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [23:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_1_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_interconnect_1_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_1_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_interconnect_1_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_interconnect_1_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_interconnect_1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_1_WDATA;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_interconnect_1_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_1_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_interconnect_1_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_1_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_interconnect_1_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_interconnect_1_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_interconnect_1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_1_WDATA;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_interconnect_1_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_interconnect_1_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_axi_interconnect_1_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_interconnect_1_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_axi_interconnect_1_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_axi_interconnect_1_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_axi_interconnect_1_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_1_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_1_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_axi_interconnect_1_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_interconnect_1_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_interconnect_1_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_interconnect_1_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_interconnect_1_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_interconnect_1_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_interconnect_1_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_1_WDATA;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_interconnect_1_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_interconnect_1_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_axi_interconnect_1_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_interconnect_1_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_axi_interconnect_1_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_axi_interconnect_1_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_axi_interconnect_1_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_interconnect_1_WDATA;
  assign M04_AXI_wvalid[0] = m04_couplers_to_axi_interconnect_1_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_interconnect_1_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_axi_interconnect_1_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_interconnect_1_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_axi_interconnect_1_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_interconnect_1_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_interconnect_1_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_interconnect_1_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_interconnect_1_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_interconnect_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_interconnect_1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_1_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_interconnect_1_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_1_to_s00_couplers_WREADY;
  assign axi_interconnect_1_ACLK_net = ACLK;
  assign axi_interconnect_1_ARESETN_net = ARESETN;
  assign axi_interconnect_1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_interconnect_1_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_interconnect_1_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_1_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_interconnect_1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_1_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_interconnect_1_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_interconnect_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_interconnect_1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_interconnect_1_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_interconnect_1_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_interconnect_1_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_interconnect_1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_1_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_interconnect_1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_1_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_interconnect_1_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_axi_interconnect_1_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_axi_interconnect_1_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_axi_interconnect_1_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_1_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_axi_interconnect_1_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_1_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_1_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_axi_interconnect_1_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_axi_interconnect_1_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_interconnect_1_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_interconnect_1_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_1_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_interconnect_1_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_1_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_1_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_interconnect_1_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi_interconnect_1_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_axi_interconnect_1_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_axi_interconnect_1_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_interconnect_1_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_axi_interconnect_1_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_interconnect_1_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_interconnect_1_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_axi_interconnect_1_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_axi_interconnect_1_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_interconnect_1_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_interconnect_1_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_interconnect_1_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_interconnect_1_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_interconnect_1_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_interconnect_1_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_interconnect_1_WREADY = M05_AXI_wready;
  m00_couplers_imp_BJFRAJ m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_11QGAKA m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1CC6POO m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_3Q5ND m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_1YDN4A4 m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wvalid(m04_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_N94YD9 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  s00_couplers_imp_8CNLH6 s00_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_1_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_1_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_1_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_1_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_1_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_1_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_1_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_1_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_1_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_interconnect_1_to_s00_couplers_WID),
        .S_AXI_wlast(axi_interconnect_1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_to_s00_couplers_WVALID));
  system_xbar_1 xbar
       (.aclk(axi_interconnect_1_ACLK_net),
        .aresetn(axi_interconnect_1_ARESETN_net),
        .m_axi_araddr({xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m05_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[19:12],xbar_to_m02_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[7:0]}),
        .m_axi_wvalid({xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module system_axi_interconnect_2_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awready,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wready,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_arready,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  output [0:0]S00_AXI_awready;
  output [0:0]S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  output [0:0]S00_AXI_wready;
  input S01_ACLK;
  input S01_ARESETN;
  output [0:0]S01_AXI_arready;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awprot;
  output [0:0]S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [0:0]S01_AXI_awvalid;
  input [0:0]S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  output [63:0]S01_AXI_rdata;
  output [0:0]S01_AXI_rlast;
  output [0:0]S01_AXI_rvalid;
  input [63:0]S01_AXI_wdata;
  input [0:0]S01_AXI_wlast;
  output [0:0]S01_AXI_wready;
  input [7:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire axi_mem_interconnect_1_ACLK_net;
  wire axi_mem_interconnect_1_ARESETN_net;
  wire [31:0]axi_mem_interconnect_1_to_s00_couplers_ARADDR;
  wire [1:0]axi_mem_interconnect_1_to_s00_couplers_ARBURST;
  wire [3:0]axi_mem_interconnect_1_to_s00_couplers_ARCACHE;
  wire [7:0]axi_mem_interconnect_1_to_s00_couplers_ARLEN;
  wire [2:0]axi_mem_interconnect_1_to_s00_couplers_ARPROT;
  wire [0:0]axi_mem_interconnect_1_to_s00_couplers_ARREADY;
  wire [2:0]axi_mem_interconnect_1_to_s00_couplers_ARSIZE;
  wire [0:0]axi_mem_interconnect_1_to_s00_couplers_ARVALID;
  wire [0:0]axi_mem_interconnect_1_to_s00_couplers_AWREADY;
  wire [0:0]axi_mem_interconnect_1_to_s00_couplers_BVALID;
  wire [63:0]axi_mem_interconnect_1_to_s00_couplers_RDATA;
  wire [0:0]axi_mem_interconnect_1_to_s00_couplers_RLAST;
  wire [0:0]axi_mem_interconnect_1_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_interconnect_1_to_s00_couplers_RRESP;
  wire [0:0]axi_mem_interconnect_1_to_s00_couplers_RVALID;
  wire [0:0]axi_mem_interconnect_1_to_s00_couplers_WREADY;
  wire [0:0]axi_mem_interconnect_1_to_s01_couplers_ARREADY;
  wire [31:0]axi_mem_interconnect_1_to_s01_couplers_AWADDR;
  wire [1:0]axi_mem_interconnect_1_to_s01_couplers_AWBURST;
  wire [3:0]axi_mem_interconnect_1_to_s01_couplers_AWCACHE;
  wire [7:0]axi_mem_interconnect_1_to_s01_couplers_AWLEN;
  wire [2:0]axi_mem_interconnect_1_to_s01_couplers_AWPROT;
  wire [0:0]axi_mem_interconnect_1_to_s01_couplers_AWREADY;
  wire [2:0]axi_mem_interconnect_1_to_s01_couplers_AWSIZE;
  wire [0:0]axi_mem_interconnect_1_to_s01_couplers_AWVALID;
  wire [0:0]axi_mem_interconnect_1_to_s01_couplers_BREADY;
  wire [1:0]axi_mem_interconnect_1_to_s01_couplers_BRESP;
  wire [0:0]axi_mem_interconnect_1_to_s01_couplers_BVALID;
  wire [63:0]axi_mem_interconnect_1_to_s01_couplers_RDATA;
  wire [0:0]axi_mem_interconnect_1_to_s01_couplers_RLAST;
  wire [0:0]axi_mem_interconnect_1_to_s01_couplers_RVALID;
  wire [63:0]axi_mem_interconnect_1_to_s01_couplers_WDATA;
  wire [0:0]axi_mem_interconnect_1_to_s01_couplers_WLAST;
  wire [0:0]axi_mem_interconnect_1_to_s01_couplers_WREADY;
  wire [7:0]axi_mem_interconnect_1_to_s01_couplers_WSTRB;
  wire [0:0]axi_mem_interconnect_1_to_s01_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_mem_interconnect_1_ARADDR;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_1_ARBURST;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_1_ARCACHE;
  wire [0:0]m00_couplers_to_axi_mem_interconnect_1_ARID;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_1_ARLEN;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_1_ARLOCK;
  wire [2:0]m00_couplers_to_axi_mem_interconnect_1_ARPROT;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_1_ARQOS;
  wire m00_couplers_to_axi_mem_interconnect_1_ARREADY;
  wire [2:0]m00_couplers_to_axi_mem_interconnect_1_ARSIZE;
  wire m00_couplers_to_axi_mem_interconnect_1_ARVALID;
  wire [31:0]m00_couplers_to_axi_mem_interconnect_1_AWADDR;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_1_AWBURST;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_1_AWCACHE;
  wire [0:0]m00_couplers_to_axi_mem_interconnect_1_AWID;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_1_AWLEN;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_1_AWLOCK;
  wire [2:0]m00_couplers_to_axi_mem_interconnect_1_AWPROT;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_1_AWQOS;
  wire m00_couplers_to_axi_mem_interconnect_1_AWREADY;
  wire [2:0]m00_couplers_to_axi_mem_interconnect_1_AWSIZE;
  wire m00_couplers_to_axi_mem_interconnect_1_AWVALID;
  wire [5:0]m00_couplers_to_axi_mem_interconnect_1_BID;
  wire m00_couplers_to_axi_mem_interconnect_1_BREADY;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_1_BRESP;
  wire m00_couplers_to_axi_mem_interconnect_1_BVALID;
  wire [63:0]m00_couplers_to_axi_mem_interconnect_1_RDATA;
  wire [5:0]m00_couplers_to_axi_mem_interconnect_1_RID;
  wire m00_couplers_to_axi_mem_interconnect_1_RLAST;
  wire m00_couplers_to_axi_mem_interconnect_1_RREADY;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_1_RRESP;
  wire m00_couplers_to_axi_mem_interconnect_1_RVALID;
  wire [63:0]m00_couplers_to_axi_mem_interconnect_1_WDATA;
  wire [0:0]m00_couplers_to_axi_mem_interconnect_1_WID;
  wire m00_couplers_to_axi_mem_interconnect_1_WLAST;
  wire m00_couplers_to_axi_mem_interconnect_1_WREADY;
  wire [7:0]m00_couplers_to_axi_mem_interconnect_1_WSTRB;
  wire m00_couplers_to_axi_mem_interconnect_1_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire [0:0]s01_couplers_to_xbar_AWVALID;
  wire [0:0]s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [63:0]s01_couplers_to_xbar_WDATA;
  wire [0:0]s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [7:0]s01_couplers_to_xbar_WSTRB;
  wire [0:0]s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [0:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [0:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [3:0]NLW_xbar_s_axi_bresp_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_mem_interconnect_1_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_mem_interconnect_1_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_mem_interconnect_1_ARCACHE;
  assign M00_AXI_arid[0] = m00_couplers_to_axi_mem_interconnect_1_ARID;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_axi_mem_interconnect_1_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_axi_mem_interconnect_1_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_mem_interconnect_1_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_mem_interconnect_1_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_mem_interconnect_1_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_mem_interconnect_1_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_mem_interconnect_1_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_mem_interconnect_1_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_mem_interconnect_1_AWCACHE;
  assign M00_AXI_awid[0] = m00_couplers_to_axi_mem_interconnect_1_AWID;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_axi_mem_interconnect_1_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_axi_mem_interconnect_1_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_mem_interconnect_1_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_mem_interconnect_1_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_mem_interconnect_1_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_mem_interconnect_1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_mem_interconnect_1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_mem_interconnect_1_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_mem_interconnect_1_WDATA;
  assign M00_AXI_wid[0] = m00_couplers_to_axi_mem_interconnect_1_WID;
  assign M00_AXI_wlast = m00_couplers_to_axi_mem_interconnect_1_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_mem_interconnect_1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_mem_interconnect_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axi_mem_interconnect_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_mem_interconnect_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bvalid[0] = axi_mem_interconnect_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_mem_interconnect_1_to_s00_couplers_RDATA;
  assign S00_AXI_rlast[0] = axi_mem_interconnect_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mem_interconnect_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_mem_interconnect_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_mem_interconnect_1_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready[0] = axi_mem_interconnect_1_to_s01_couplers_ARREADY;
  assign S01_AXI_awready[0] = axi_mem_interconnect_1_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_mem_interconnect_1_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid[0] = axi_mem_interconnect_1_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[63:0] = axi_mem_interconnect_1_to_s01_couplers_RDATA;
  assign S01_AXI_rlast[0] = axi_mem_interconnect_1_to_s01_couplers_RLAST;
  assign S01_AXI_rvalid[0] = axi_mem_interconnect_1_to_s01_couplers_RVALID;
  assign S01_AXI_wready[0] = axi_mem_interconnect_1_to_s01_couplers_WREADY;
  assign axi_mem_interconnect_1_ACLK_net = ACLK;
  assign axi_mem_interconnect_1_ARESETN_net = ARESETN;
  assign axi_mem_interconnect_1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_interconnect_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mem_interconnect_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mem_interconnect_1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_mem_interconnect_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_interconnect_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mem_interconnect_1_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_mem_interconnect_1_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_mem_interconnect_1_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_mem_interconnect_1_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_mem_interconnect_1_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_mem_interconnect_1_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_mem_interconnect_1_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_mem_interconnect_1_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_mem_interconnect_1_to_s01_couplers_AWVALID = S01_AXI_awvalid[0];
  assign axi_mem_interconnect_1_to_s01_couplers_BREADY = S01_AXI_bready[0];
  assign axi_mem_interconnect_1_to_s01_couplers_WDATA = S01_AXI_wdata[63:0];
  assign axi_mem_interconnect_1_to_s01_couplers_WLAST = S01_AXI_wlast[0];
  assign axi_mem_interconnect_1_to_s01_couplers_WSTRB = S01_AXI_wstrb[7:0];
  assign axi_mem_interconnect_1_to_s01_couplers_WVALID = S01_AXI_wvalid[0];
  assign m00_couplers_to_axi_mem_interconnect_1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_mem_interconnect_1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_mem_interconnect_1_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_mem_interconnect_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_mem_interconnect_1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_mem_interconnect_1_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_mem_interconnect_1_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_mem_interconnect_1_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_mem_interconnect_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_mem_interconnect_1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_mem_interconnect_1_WREADY = M00_AXI_wready;
  m00_couplers_imp_1O8IVZM m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_mem_interconnect_1_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_mem_interconnect_1_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_mem_interconnect_1_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_mem_interconnect_1_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_mem_interconnect_1_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_mem_interconnect_1_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_mem_interconnect_1_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_mem_interconnect_1_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_mem_interconnect_1_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_mem_interconnect_1_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_mem_interconnect_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_mem_interconnect_1_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_mem_interconnect_1_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_mem_interconnect_1_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_mem_interconnect_1_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_mem_interconnect_1_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_mem_interconnect_1_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_mem_interconnect_1_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_mem_interconnect_1_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_mem_interconnect_1_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_mem_interconnect_1_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_mem_interconnect_1_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_mem_interconnect_1_BID),
        .M_AXI_bready(m00_couplers_to_axi_mem_interconnect_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_mem_interconnect_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_mem_interconnect_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_mem_interconnect_1_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_mem_interconnect_1_RID),
        .M_AXI_rlast(m00_couplers_to_axi_mem_interconnect_1_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_mem_interconnect_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_mem_interconnect_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_mem_interconnect_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_mem_interconnect_1_WDATA),
        .M_AXI_wid(m00_couplers_to_axi_mem_interconnect_1_WID),
        .M_AXI_wlast(m00_couplers_to_axi_mem_interconnect_1_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_mem_interconnect_1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_mem_interconnect_1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_mem_interconnect_1_WVALID),
        .S_ACLK(axi_mem_interconnect_1_ACLK_net),
        .S_ARESETN(axi_mem_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1U76YUB s00_couplers
       (.M_ACLK(axi_mem_interconnect_1_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_interconnect_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_interconnect_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_interconnect_1_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_interconnect_1_to_s00_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_interconnect_1_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_mem_interconnect_1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_interconnect_1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_interconnect_1_to_s00_couplers_ARVALID),
        .S_AXI_awready(axi_mem_interconnect_1_to_s00_couplers_AWREADY),
        .S_AXI_bvalid(axi_mem_interconnect_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_interconnect_1_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_mem_interconnect_1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mem_interconnect_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_interconnect_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_interconnect_1_to_s00_couplers_RVALID),
        .S_AXI_wready(axi_mem_interconnect_1_to_s00_couplers_WREADY));
  s01_couplers_imp_I173AQ s01_couplers
       (.M_ACLK(axi_mem_interconnect_1_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_1_ARESETN_net),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_arready(axi_mem_interconnect_1_to_s01_couplers_ARREADY),
        .S_AXI_awaddr(axi_mem_interconnect_1_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_interconnect_1_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_interconnect_1_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_interconnect_1_to_s01_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_interconnect_1_to_s01_couplers_AWPROT),
        .S_AXI_awready(axi_mem_interconnect_1_to_s01_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_interconnect_1_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_interconnect_1_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_mem_interconnect_1_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_mem_interconnect_1_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_interconnect_1_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_mem_interconnect_1_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_mem_interconnect_1_to_s01_couplers_RLAST),
        .S_AXI_rvalid(axi_mem_interconnect_1_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_mem_interconnect_1_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_mem_interconnect_1_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_mem_interconnect_1_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_interconnect_1_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_interconnect_1_to_s01_couplers_WVALID));
  system_xbar_2 xbar
       (.aclk(axi_mem_interconnect_1_ACLK_net),
        .aresetn(axi_mem_interconnect_1_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({1'b0,1'b0,1'b1,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({1'b0,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,1'b0,1'b1}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,1'b0,1'b1,1'b1}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,1'b0}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,1'b0}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({1'b0,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,1'b0}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,1'b0}));
endmodule
