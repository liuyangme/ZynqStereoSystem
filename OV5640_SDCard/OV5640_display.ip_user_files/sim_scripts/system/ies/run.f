-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ipshared/037e/src/DVITransmitter.vhd" \
  "../../../bd/system/ipshared/037e/src/SerializerN_1.vhd" \
  "../../../bd/system/ipshared/037e/src/TMDSEncoder.vhd" \
  "../../../bd/system/ipshared/037e/src/hdmi_tx.vhd" \
  "../../../bd/system/ip/system_HDMI_TX_0_0/sim/system_HDMI_TX_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ipshared/8b55/src/cmos_decoder.v" \
  "../../../bd/system/ipshared/8b55/src/counter_reset.v" \
  "../../../bd/system/ipshared/8b55/src/OV5640_Sensor.v" \
  "../../../bd/system/ip/system_OV5640_Sensor_0_0/sim/system_OV5640_Sensor_0_0.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_4 -sv \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/v_vid_in_axi4s_v4_0_9 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_v_vid_in_axi4s_0_0/sim/system_v_vid_in_axi4s_0_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/v_tc_v6_1_13 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/a92c/hdl/v_tc_v6_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/v_axi4s_vid_out_v4_0_10 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_v_axi4s_vid_out_0_0/sim/system_v_axi4s_vid_out_0_0.v" \
  "../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/util_vector_logic_v2_0_1 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_util_vector_logic_0_0/sim/system_util_vector_logic_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_12 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_2 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/lib_bmg_v1_0_11 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_datamover_v5_1_20 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_vdma_v6_3_6 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.v" \
-endlib
-makelib ies_lib/axi_vdma_v6_3_6 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_vdma_0_0/sim/system_axi_vdma_0_0.vhd" \
-endlib
-makelib ies_lib/xlconstant_v1_1_5 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xlconstant_0_0/sim/system_xlconstant_0_0.v" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_proc_sys_reset_0_0/sim/system_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_18 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_17 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_19 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_v_tc_0_0/sim/system_v_tc_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_util_vector_logic_1_0/sim/system_util_vector_logic_1_0.v" \
  "../../../bd/system/ip/system_xbar_1/sim/system_xbar_1.v" \
-endlib
-makelib ies_lib/axis_infrastructure_v1_1_0 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_register_slice_v1_1_18 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/af00/hdl/axis_register_slice_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tdata_system_axis_subset_converter_0_0.v" \
  "../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tuser_system_axis_subset_converter_0_0.v" \
  "../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tstrb_system_axis_subset_converter_0_0.v" \
  "../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tkeep_system_axis_subset_converter_0_0.v" \
  "../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tid_system_axis_subset_converter_0_0.v" \
  "../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tdest_system_axis_subset_converter_0_0.v" \
  "../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tlast_system_axis_subset_converter_0_0.v" \
-endlib
-makelib ies_lib/axis_subset_converter_v1_1_18 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/33dd/hdl/axis_subset_converter_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/top_system_axis_subset_converter_0_0.v" \
  "../../../bd/system/ip/system_axis_subset_converter_0_0/sim/system_axis_subset_converter_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_vdma_1_0/sim/system_axi_vdma_1_0.vhd" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/sim/bd_d5b8_ila_lib_0.v" \
-endlib
-makelib ies_lib/gigantic_mux \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_1/bd_d5b8_g_inst_0_gigantic_mux.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_1/sim/bd_d5b8_g_inst_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_2/sim/bd_d5b8_slot_1_aw_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_3/sim/bd_d5b8_slot_1_w_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_4/sim/bd_d5b8_slot_1_b_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_5/sim/bd_d5b8_slot_1_ar_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_6/sim/bd_d5b8_slot_1_r_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_7/sim/bd_d5b8_slot_2_aw_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_8/sim/bd_d5b8_slot_2_w_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_9/sim/bd_d5b8_slot_2_b_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_10/sim/bd_d5b8_slot_2_ar_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_11/sim/bd_d5b8_slot_2_r_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_12/sim/bd_d5b8_slot_3_aw_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_13/sim/bd_d5b8_slot_3_w_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_14/sim/bd_d5b8_slot_3_b_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_15/sim/bd_d5b8_slot_3_ar_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_16/sim/bd_d5b8_slot_3_r_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_17/sim/bd_d5b8_slot_4_aw_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_18/sim/bd_d5b8_slot_4_w_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_19/sim/bd_d5b8_slot_4_b_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_20/sim/bd_d5b8_slot_4_ar_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_21/sim/bd_d5b8_slot_4_r_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_22/sim/bd_d5b8_slot_7_aw_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_23/sim/bd_d5b8_slot_7_w_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_24/sim/bd_d5b8_slot_7_b_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_25/sim/bd_d5b8_slot_7_ar_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_26/sim/bd_d5b8_slot_7_r_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/sim/bd_d5b8.v" \
  "../../../bd/system/ip/system_system_ila_0_0/sim/system_system_ila_0_0.v" \
  "../../../bd/system/ip/system_system_ila_1_0/bd_0/ip/ip_0/sim/bd_15e9_ila_lib_0.v" \
  "../../../bd/system/ip/system_system_ila_1_0/bd_0/sim/bd_15e9.v" \
  "../../../bd/system/ip/system_system_ila_1_0/sim/system_system_ila_1_0.v" \
  "../../../bd/system/ip/system_system_ila_2_0/bd_0/ip/ip_0/sim/bd_1519_ila_lib_0.v" \
  "../../../bd/system/ip/system_system_ila_2_0/bd_0/sim/bd_1519.v" \
  "../../../bd/system/ip/system_system_ila_2_0/sim/system_system_ila_2_0.v" \
  "../../../bd/system/ip/system_system_ila_3_0/bd_0/ip/ip_0/sim/bd_d548_ila_lib_0.v" \
  "../../../bd/system/ip/system_system_ila_3_0/bd_0/sim/bd_d548.v" \
  "../../../bd/system/ip/system_system_ila_3_0/sim/system_system_ila_3_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_18 \
  "../../../../OV5640_display.srcs/sources_1/bd/system/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_auto_pc_2/sim/system_auto_pc_2.v" \
  "../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
  "../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
  "../../../bd/system/ip/system_auto_pc_3/sim/system_auto_pc_3.v" \
  "../../../bd/system/sim/system.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

