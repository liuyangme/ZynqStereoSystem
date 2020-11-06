# "CMOS_SCL"
set_property PACKAGE_PIN N20 [get_ports {GPIO_0_0_tri_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_0_tri_io[0]}]
set_property PULLUP true [get_ports {GPIO_0_0_tri_io[0]}]
# "CMOS_SDAT"
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_0_tri_io[1]}]
set_property PACKAGE_PIN P20 [get_ports {GPIO_0_0_tri_io[1]}]
set_property PULLUP true [get_ports {GPIO_0_0_tri_io[1]}]
# "CMOS_VSYNC"
set_property PACKAGE_PIN T20 [get_ports cmos_vsync_i_0]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_vsync_i_0]
# "CMOS_HREF"
set_property PACKAGE_PIN U20 [get_ports cmos_href_i_0]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_href_i_0]
# "CMOS_PCLK"
set_property IOSTANDARD LVCMOS33 [get_ports cmos_pclk_i_0]
set_property PACKAGE_PIN T17 [get_ports cmos_pclk_i_0]
# "CMOS_XCLK"
set_property PACKAGE_PIN R18 [get_ports cmos_xclk_o_0]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_xclk_o_0]
# "CMOS_DB[0]"
set_property PACKAGE_PIN V20 [get_ports {cmos_data_i_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[0]}]
# "CMOS_DB[1]"
set_property PACKAGE_PIN W20 [get_ports {cmos_data_i_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[1]}]
# "CMOS_DB[2]"
set_property PACKAGE_PIN N17 [get_ports {cmos_data_i_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[2]}]
# "CMOS_DB[3]"
set_property PACKAGE_PIN P18 [get_ports {cmos_data_i_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[3]}]
# "CMOS_DB[4]"
set_property PACKAGE_PIN W18 [get_ports {cmos_data_i_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[4]}]
# "CMOS_DB[5]"
set_property PACKAGE_PIN W19 [get_ports {cmos_data_i_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[5]}]
# "CMOS_DB[6]"
set_property PACKAGE_PIN Y18 [get_ports {cmos_data_i_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[6]}]
# "CMOS_DB[7]"
set_property PACKAGE_PIN Y19 [get_ports {cmos_data_i_0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[7]}]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk_i_0_IBUF]

#####################################################################
# HDMI
#####################################################################
set_property IOSTANDARD TMDS_33 [get_ports HDMI_CLK_P_0]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D0_P_0]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D1_P_0]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D2_P_0]

set_property PACKAGE_PIN K17 [get_ports HDMI_CLK_P_0]
set_property PACKAGE_PIN L19 [get_ports HDMI_D0_P_0]
set_property PACKAGE_PIN M17 [get_ports HDMI_D1_P_0]
set_property PACKAGE_PIN L16 [get_ports HDMI_D2_P_0]



set_property IOSTANDARD LVCMOS33 [get_ports HDMI_HPD]
set_property PACKAGE_PIN R19 [get_ports HDMI_HPD]

#set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
#set_property SEVERITY {Warning} [get_drc_checks UCIO-1]