// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module system_v_mix_0_0_MultiPixStream2AXIvi (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        StrmMPix_V_val_0_V_dout,
        StrmMPix_V_val_0_V_empty_n,
        StrmMPix_V_val_0_V_read,
        StrmMPix_V_val_1_V_dout,
        StrmMPix_V_val_1_V_empty_n,
        StrmMPix_V_val_1_V_read,
        StrmMPix_V_val_2_V_dout,
        StrmMPix_V_val_2_V_empty_n,
        StrmMPix_V_val_2_V_read,
        m_axis_video_TDATA,
        m_axis_video_TVALID,
        m_axis_video_TREADY,
        m_axis_video_TKEEP,
        m_axis_video_TSTRB,
        m_axis_video_TUSER,
        m_axis_video_TLAST,
        m_axis_video_TID,
        m_axis_video_TDEST,
        Height,
        WidthOut
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_pp0_stage0 = 7'd32;
parameter    ap_ST_fsm_state9 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] StrmMPix_V_val_0_V_dout;
input   StrmMPix_V_val_0_V_empty_n;
output   StrmMPix_V_val_0_V_read;
input  [7:0] StrmMPix_V_val_1_V_dout;
input   StrmMPix_V_val_1_V_empty_n;
output   StrmMPix_V_val_1_V_read;
input  [7:0] StrmMPix_V_val_2_V_dout;
input   StrmMPix_V_val_2_V_empty_n;
output   StrmMPix_V_val_2_V_read;
output  [23:0] m_axis_video_TDATA;
output   m_axis_video_TVALID;
input   m_axis_video_TREADY;
output  [2:0] m_axis_video_TKEEP;
output  [2:0] m_axis_video_TSTRB;
output  [0:0] m_axis_video_TUSER;
output  [0:0] m_axis_video_TLAST;
output  [0:0] m_axis_video_TID;
output  [0:0] m_axis_video_TDEST;
input  [15:0] Height;
input  [15:0] WidthOut;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg StrmMPix_V_val_0_V_read;
reg StrmMPix_V_val_1_V_read;
reg StrmMPix_V_val_2_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] mapComp_0_address0;
reg    mapComp_0_ce0;
wire   [1:0] mapComp_0_q0;
reg    StrmMPix_V_val_0_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln2553_reg_483;
reg    StrmMPix_V_val_1_V_blk_n;
reg    StrmMPix_V_val_2_V_blk_n;
reg    m_axis_video_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln2553_reg_483_pp0_iter1_reg;
reg   [15:0] j_0_reg_201;
reg    ap_block_state1;
wire   [15:0] grp_reg_unsigned_short_s_fu_212_ap_return;
reg   [15:0] tmp_reg_419;
wire    ap_CS_fsm_state2;
wire    grp_reg_unsigned_short_s_fu_212_ap_ready;
wire    grp_reg_unsigned_short_s_fu_212_ap_done;
wire    grp_reg_unsigned_short_s_fu_218_ap_ready;
wire    grp_reg_unsigned_short_s_fu_218_ap_done;
reg    ap_block_state2_on_subcall_done;
wire   [15:0] grp_reg_unsigned_short_s_fu_218_ap_return;
reg   [15:0] tmp_s_reg_424;
wire   [16:0] zext_ln2503_fu_224_p1;
reg   [16:0] zext_ln2503_reg_429;
wire   [1:0] i_fu_234_p2;
reg   [1:0] i_reg_437;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln2545_fu_228_p2;
wire   [16:0] add_ln2563_fu_254_p2;
reg   [16:0] add_ln2563_reg_454;
wire   [1:0] trunc_ln215_fu_259_p1;
reg   [1:0] trunc_ln215_reg_459;
wire   [1:0] trunc_ln215_1_fu_263_p1;
reg   [1:0] trunc_ln215_1_reg_464;
wire   [1:0] trunc_ln215_2_fu_267_p1;
reg   [1:0] trunc_ln215_2_reg_469;
wire   [0:0] icmp_ln2551_fu_295_p2;
wire    ap_CS_fsm_state5;
wire    regslice_both_AXI_video_strm_V_data_V_U_apdone_blk;
wire   [15:0] i_1_fu_300_p2;
reg   [15:0] i_1_reg_478;
wire   [0:0] icmp_ln2553_fu_310_p2;
wire    ap_block_state6_pp0_stage0_iter0;
wire    io_acc_block_signal_op68;
reg    ap_block_state7_pp0_stage0_iter1;
reg    ap_block_state7_io;
wire    ap_block_state8_pp0_stage0_iter2;
reg    ap_block_state8_io;
reg    ap_block_pp0_stage0_11001;
wire   [15:0] j_fu_315_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_last_V_fu_321_p2;
reg   [0:0] tmp_last_V_reg_492;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state6;
wire    grp_reg_unsigned_short_s_fu_212_ap_start;
wire    grp_reg_unsigned_short_s_fu_212_ap_idle;
wire    grp_reg_unsigned_short_s_fu_218_ap_start;
wire    grp_reg_unsigned_short_s_fu_218_ap_idle;
reg   [1:0] i_0_reg_178;
wire    ap_CS_fsm_state4;
reg   [15:0] i1_0_reg_190;
wire    ap_CS_fsm_state9;
reg    grp_reg_unsigned_short_s_fu_212_ap_start_reg;
reg    ap_block_state1_ignore_call9;
reg    grp_reg_unsigned_short_s_fu_218_ap_start_reg;
reg    ap_block_state1_ignore_call10;
wire   [63:0] zext_ln2547_fu_240_p1;
reg   [4:0] map_V_0_03_fu_98;
wire   [4:0] zext_ln321_fu_276_p1;
reg   [4:0] map_V_1_04_fu_102;
reg   [4:0] map_V_2_05_fu_106;
reg   [0:0] tmp_user_V_fu_110;
reg    ap_block_pp0_stage0_01001;
wire   [16:0] zext_ln2553_fu_306_p1;
wire   [7:0] tmp_4_fu_364_p5;
wire   [7:0] tmp_3_fu_353_p5;
wire   [7:0] tmp_2_fu_342_p5;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [23:0] m_axis_video_TDATA_int;
reg    m_axis_video_TVALID_int;
wire    m_axis_video_TREADY_int;
wire    regslice_both_AXI_video_strm_V_data_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_keep_V_U_apdone_blk;
wire    regslice_both_AXI_video_strm_V_keep_V_U_ack_in_dummy;
wire    regslice_both_AXI_video_strm_V_keep_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_strb_V_U_apdone_blk;
wire    regslice_both_AXI_video_strm_V_strb_V_U_ack_in_dummy;
wire    regslice_both_AXI_video_strm_V_strb_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_user_V_U_apdone_blk;
wire    regslice_both_AXI_video_strm_V_user_V_U_ack_in_dummy;
wire    regslice_both_AXI_video_strm_V_user_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_last_V_U_apdone_blk;
wire    regslice_both_AXI_video_strm_V_last_V_U_ack_in_dummy;
wire    regslice_both_AXI_video_strm_V_last_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_id_V_U_apdone_blk;
wire    regslice_both_AXI_video_strm_V_id_V_U_ack_in_dummy;
wire    regslice_both_AXI_video_strm_V_id_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_dest_V_U_apdone_blk;
wire    regslice_both_AXI_video_strm_V_dest_V_U_ack_in_dummy;
wire    regslice_both_AXI_video_strm_V_dest_V_U_vld_out;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 grp_reg_unsigned_short_s_fu_212_ap_start_reg = 1'b0;
#0 grp_reg_unsigned_short_s_fu_218_ap_start_reg = 1'b0;
end

system_v_mix_0_0_MultiPixStream2AXcud #(
    .DataWidth( 2 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
mapComp_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(mapComp_0_address0),
    .ce0(mapComp_0_ce0),
    .q0(mapComp_0_q0)
);

system_v_mix_0_0_reg_unsigned_short_s grp_reg_unsigned_short_s_fu_212(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_reg_unsigned_short_s_fu_212_ap_start),
    .ap_done(grp_reg_unsigned_short_s_fu_212_ap_done),
    .ap_idle(grp_reg_unsigned_short_s_fu_212_ap_idle),
    .ap_ready(grp_reg_unsigned_short_s_fu_212_ap_ready),
    .in_r(Height),
    .ap_return(grp_reg_unsigned_short_s_fu_212_ap_return)
);

system_v_mix_0_0_reg_unsigned_short_s grp_reg_unsigned_short_s_fu_218(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_reg_unsigned_short_s_fu_218_ap_start),
    .ap_done(grp_reg_unsigned_short_s_fu_218_ap_done),
    .ap_idle(grp_reg_unsigned_short_s_fu_218_ap_idle),
    .ap_ready(grp_reg_unsigned_short_s_fu_218_ap_ready),
    .in_r(WidthOut),
    .ap_return(grp_reg_unsigned_short_s_fu_218_ap_return)
);

system_v_mix_0_0_v_mix_mux_32_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
v_mix_mux_32_8_1_1_U163(
    .din0(StrmMPix_V_val_0_V_dout),
    .din1(StrmMPix_V_val_1_V_dout),
    .din2(StrmMPix_V_val_2_V_dout),
    .din3(trunc_ln215_reg_459),
    .dout(tmp_2_fu_342_p5)
);

system_v_mix_0_0_v_mix_mux_32_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
v_mix_mux_32_8_1_1_U164(
    .din0(StrmMPix_V_val_0_V_dout),
    .din1(StrmMPix_V_val_1_V_dout),
    .din2(StrmMPix_V_val_2_V_dout),
    .din3(trunc_ln215_1_reg_464),
    .dout(tmp_3_fu_353_p5)
);

system_v_mix_0_0_v_mix_mux_32_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
v_mix_mux_32_8_1_1_U165(
    .din0(StrmMPix_V_val_0_V_dout),
    .din1(StrmMPix_V_val_1_V_dout),
    .din2(StrmMPix_V_val_2_V_dout),
    .din3(trunc_ln215_2_reg_469),
    .dout(tmp_4_fu_364_p5)
);

regslice_both #(
    .DataWidth( 24 ))
regslice_both_AXI_video_strm_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(m_axis_video_TDATA_int),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(m_axis_video_TREADY_int),
    .data_out(m_axis_video_TDATA),
    .vld_out(regslice_both_AXI_video_strm_V_data_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 3 ))
regslice_both_AXI_video_strm_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(3'd7),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(regslice_both_AXI_video_strm_V_keep_V_U_ack_in_dummy),
    .data_out(m_axis_video_TKEEP),
    .vld_out(regslice_both_AXI_video_strm_V_keep_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_keep_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 3 ))
regslice_both_AXI_video_strm_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(3'd0),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(regslice_both_AXI_video_strm_V_strb_V_U_ack_in_dummy),
    .data_out(m_axis_video_TSTRB),
    .vld_out(regslice_both_AXI_video_strm_V_strb_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_strb_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_AXI_video_strm_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(tmp_user_V_fu_110),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(regslice_both_AXI_video_strm_V_user_V_U_ack_in_dummy),
    .data_out(m_axis_video_TUSER),
    .vld_out(regslice_both_AXI_video_strm_V_user_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_user_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_AXI_video_strm_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(tmp_last_V_reg_492),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(regslice_both_AXI_video_strm_V_last_V_U_ack_in_dummy),
    .data_out(m_axis_video_TLAST),
    .vld_out(regslice_both_AXI_video_strm_V_last_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_last_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_AXI_video_strm_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(1'd0),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(regslice_both_AXI_video_strm_V_id_V_U_ack_in_dummy),
    .data_out(m_axis_video_TID),
    .vld_out(regslice_both_AXI_video_strm_V_id_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_id_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_AXI_video_strm_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(1'd0),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(regslice_both_AXI_video_strm_V_dest_V_U_ack_in_dummy),
    .data_out(m_axis_video_TDEST),
    .vld_out(regslice_both_AXI_video_strm_V_dest_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_dest_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state5) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (icmp_ln2551_fu_295_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state6) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln2551_fu_295_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state6)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state6);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((icmp_ln2551_fu_295_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_reg_unsigned_short_s_fu_212_ap_start_reg <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_reg_unsigned_short_s_fu_212_ap_start_reg <= 1'b1;
        end else if ((grp_reg_unsigned_short_s_fu_212_ap_ready == 1'b1)) begin
            grp_reg_unsigned_short_s_fu_212_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_reg_unsigned_short_s_fu_218_ap_start_reg <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_reg_unsigned_short_s_fu_218_ap_start_reg <= 1'b1;
        end else if ((grp_reg_unsigned_short_s_fu_218_ap_ready == 1'b1)) begin
            grp_reg_unsigned_short_s_fu_218_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i1_0_reg_190 <= i_1_reg_478;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln2545_fu_228_p2 == 1'd1))) begin
        i1_0_reg_190 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_0_reg_178 <= i_reg_437;
    end else if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        i_0_reg_178 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln2551_fu_295_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0))) begin
        j_0_reg_201 <= 16'd0;
    end else if (((icmp_ln2553_fu_310_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        j_0_reg_201 <= j_fu_315_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln2553_reg_483 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_user_V_fu_110 <= 1'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln2545_fu_228_p2 == 1'd1))) begin
        tmp_user_V_fu_110 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln2545_fu_228_p2 == 1'd1))) begin
        add_ln2563_reg_454 <= add_ln2563_fu_254_p2;
        trunc_ln215_1_reg_464 <= trunc_ln215_1_fu_263_p1;
        trunc_ln215_2_reg_469 <= trunc_ln215_2_fu_267_p1;
        trunc_ln215_reg_459 <= trunc_ln215_fu_259_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0))) begin
        i_1_reg_478 <= i_1_fu_300_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_437 <= i_fu_234_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln2553_reg_483 <= icmp_ln2553_fu_310_p2;
        icmp_ln2553_reg_483_pp0_iter1_reg <= icmp_ln2553_reg_483;
    end
end

always @ (posedge ap_clk) begin
    if (((i_0_reg_178 == 2'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        map_V_0_03_fu_98[1 : 0] <= zext_ln321_fu_276_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((i_0_reg_178 == 2'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        map_V_1_04_fu_102[1 : 0] <= zext_ln321_fu_276_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((~(i_0_reg_178 == 2'd1) & ~(i_0_reg_178 == 2'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        map_V_2_05_fu_106[1 : 0] <= zext_ln321_fu_276_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln2553_fu_310_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_last_V_reg_492 <= tmp_last_V_fu_321_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        tmp_reg_419 <= grp_reg_unsigned_short_s_fu_212_ap_return;
        tmp_s_reg_424 <= grp_reg_unsigned_short_s_fu_218_ap_return;
        zext_ln2503_reg_429[15 : 0] <= zext_ln2503_fu_224_p1[15 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln2553_reg_483 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        StrmMPix_V_val_0_V_blk_n = StrmMPix_V_val_0_V_empty_n;
    end else begin
        StrmMPix_V_val_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln2553_reg_483 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        StrmMPix_V_val_0_V_read = 1'b1;
    end else begin
        StrmMPix_V_val_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln2553_reg_483 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        StrmMPix_V_val_1_V_blk_n = StrmMPix_V_val_1_V_empty_n;
    end else begin
        StrmMPix_V_val_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln2553_reg_483 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        StrmMPix_V_val_1_V_read = 1'b1;
    end else begin
        StrmMPix_V_val_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln2553_reg_483 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        StrmMPix_V_val_2_V_blk_n = StrmMPix_V_val_2_V_empty_n;
    end else begin
        StrmMPix_V_val_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln2553_reg_483 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        StrmMPix_V_val_2_V_read = 1'b1;
    end else begin
        StrmMPix_V_val_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln2553_fu_310_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state6 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (icmp_ln2551_fu_295_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (icmp_ln2551_fu_295_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln2553_reg_483_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln2553_reg_483 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m_axis_video_TDATA_blk_n = m_axis_video_TREADY_int;
    end else begin
        m_axis_video_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln2553_reg_483 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axis_video_TVALID_int = 1'b1;
    end else begin
        m_axis_video_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mapComp_0_ce0 = 1'b1;
    end else begin
        mapComp_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln2545_fu_228_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (icmp_ln2551_fu_295_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln2551_fu_295_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln2553_fu_310_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln2553_fu_310_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln2563_fu_254_p2 = ($signed(17'd131071) + $signed(zext_ln2503_reg_429));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((icmp_ln2553_reg_483 == 1'd0) & (io_acc_block_signal_op68 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state8_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state7_io) | ((icmp_ln2553_reg_483 == 1'd0) & (io_acc_block_signal_op68 == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state8_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state7_io) | ((icmp_ln2553_reg_483 == 1'd0) & (io_acc_block_signal_op68 == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call10 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call9 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_reg_unsigned_short_s_fu_218_ap_done == 1'b0) | (grp_reg_unsigned_short_s_fu_212_ap_done == 1'b0));
end

assign ap_block_state6_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state7_io = ((icmp_ln2553_reg_483 == 1'd0) & (m_axis_video_TREADY_int == 1'b0));
end

always @ (*) begin
    ap_block_state7_pp0_stage0_iter1 = ((icmp_ln2553_reg_483 == 1'd0) & (io_acc_block_signal_op68 == 1'b0));
end

always @ (*) begin
    ap_block_state8_io = ((icmp_ln2553_reg_483_pp0_iter1_reg == 1'd0) & (m_axis_video_TREADY_int == 1'b0));
end

assign ap_block_state8_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_reg_unsigned_short_s_fu_212_ap_start = grp_reg_unsigned_short_s_fu_212_ap_start_reg;

assign grp_reg_unsigned_short_s_fu_218_ap_start = grp_reg_unsigned_short_s_fu_218_ap_start_reg;

assign i_1_fu_300_p2 = (i1_0_reg_190 + 16'd1);

assign i_fu_234_p2 = (i_0_reg_178 + 2'd1);

assign icmp_ln2545_fu_228_p2 = ((i_0_reg_178 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln2551_fu_295_p2 = ((i1_0_reg_190 == tmp_reg_419) ? 1'b1 : 1'b0);

assign icmp_ln2553_fu_310_p2 = ((j_0_reg_201 == tmp_s_reg_424) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op68 = (StrmMPix_V_val_2_V_empty_n & StrmMPix_V_val_1_V_empty_n & StrmMPix_V_val_0_V_empty_n);

assign j_fu_315_p2 = (j_0_reg_201 + 16'd1);

assign m_axis_video_TDATA_int = {{{tmp_4_fu_364_p5}, {tmp_3_fu_353_p5}}, {tmp_2_fu_342_p5}};

assign m_axis_video_TVALID = regslice_both_AXI_video_strm_V_data_V_U_vld_out;

assign mapComp_0_address0 = zext_ln2547_fu_240_p1;

assign tmp_last_V_fu_321_p2 = ((zext_ln2553_fu_306_p1 == add_ln2563_reg_454) ? 1'b1 : 1'b0);

assign trunc_ln215_1_fu_263_p1 = map_V_1_04_fu_102[1:0];

assign trunc_ln215_2_fu_267_p1 = map_V_2_05_fu_106[1:0];

assign trunc_ln215_fu_259_p1 = map_V_0_03_fu_98[1:0];

assign zext_ln2503_fu_224_p1 = grp_reg_unsigned_short_s_fu_218_ap_return;

assign zext_ln2547_fu_240_p1 = i_0_reg_178;

assign zext_ln2553_fu_306_p1 = j_0_reg_201;

assign zext_ln321_fu_276_p1 = mapComp_0_q0;

always @ (posedge ap_clk) begin
    zext_ln2503_reg_429[16] <= 1'b0;
    map_V_0_03_fu_98[4:2] <= 3'b000;
    map_V_1_04_fu_102[4:2] <= 3'b000;
    map_V_2_05_fu_106[4:2] <= 3'b000;
end

endmodule //system_v_mix_0_0_MultiPixStream2AXIvi
