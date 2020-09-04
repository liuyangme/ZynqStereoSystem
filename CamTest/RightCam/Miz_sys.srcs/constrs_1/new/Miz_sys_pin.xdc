

# "CMOS_SCL"
set_property PACKAGE_PIN K14 [get_ports {gpio_0_tri_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_0_tri_io[0]}]
set_property PULLUP true [get_ports {gpio_0_tri_io[0]}]
# "CMOS_SDAT"
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_0_tri_io[1]}]
set_property PACKAGE_PIN J14 [get_ports {gpio_0_tri_io[1]}]
set_property PULLUP true [get_ports {gpio_0_tri_io[1]}]
# "CMOS_VSYNC"
set_property PACKAGE_PIN H15 [get_ports cmos_vsync_i]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_vsync_i]
# "CMOS_HREF"
set_property PACKAGE_PIN G15 [get_ports cmos_href_i]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_href_i]
# "CMOS_PCLK"
set_property IOSTANDARD LVCMOS33 [get_ports cmos_pclk_i]
set_property PACKAGE_PIN K19 [get_ports cmos_pclk_i]
# "CMOS_XCLK"
set_property PACKAGE_PIN J19 [get_ports cmos_xclk_o]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_xclk_o]
# "CMOS_DB[0]"
set_property PACKAGE_PIN F20 [get_ports {cmos_data_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[0]}]
# "CMOS_DB[1]"
set_property PACKAGE_PIN F19 [get_ports {cmos_data_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[1]}]
# "CMOS_DB[2]"
set_property PACKAGE_PIN G20 [get_ports {cmos_data_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[2]}]
# "CMOS_DB[3]"
set_property PACKAGE_PIN G19 [get_ports {cmos_data_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[3]}]
# "CMOS_DB[4]"
set_property PACKAGE_PIN H20 [get_ports {cmos_data_i[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[4]}]
# "CMOS_DB[5]"
set_property PACKAGE_PIN J20 [get_ports {cmos_data_i[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[5]}]
# "CMOS_DB[6]"
set_property PACKAGE_PIN H18 [get_ports {cmos_data_i[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[6]}]
# "CMOS_DB[7]"
set_property PACKAGE_PIN J18 [get_ports {cmos_data_i[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[7]}]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk_i_IBUF]

#####################################################################
# HDMI
#####################################################################
set_property IOSTANDARD TMDS_33 [get_ports HDMI_CLK_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D0_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D1_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D2_P]

set_property PACKAGE_PIN K17 [get_ports HDMI_CLK_P]
set_property PACKAGE_PIN L19 [get_ports HDMI_D0_P]
set_property PACKAGE_PIN M17 [get_ports HDMI_D1_P]
set_property PACKAGE_PIN L16 [get_ports HDMI_D2_P]



set_property IOSTANDARD LVCMOS33 [get_ports HDMI_HPD]
set_property PACKAGE_PIN R19 [get_ports HDMI_HPD]

#set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
#set_property SEVERITY {Warning} [get_drc_checks UCIO-1]



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list system_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 24 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {system_i/v_vid_in_axi4s_0_video_out_TDATA[0]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[1]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[2]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[3]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[4]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[5]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[6]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[7]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[8]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[9]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[10]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[11]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[12]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[13]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[14]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[15]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[16]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[17]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[18]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[19]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[20]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[21]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[22]} {system_i/v_vid_in_axi4s_0_video_out_TDATA[23]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list system_i/util_vector_logic_0_Res]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list system_i/v_vid_in_axi4s_0_video_out_TLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list system_i/v_vid_in_axi4s_0_video_out_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list system_i/v_vid_in_axi4s_0_video_out_TUSER]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list system_i/v_vid_in_axi4s_0_video_out_TVALID]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
