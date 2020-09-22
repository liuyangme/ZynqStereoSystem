

# "CMOS_SCL"
set_property PACKAGE_PIN L14 [get_ports {GPIO_0_tri_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_io[0]}]
set_property PULLUP true [get_ports {GPIO_0_tri_io[0]}]
# "CMOS_SDAT"
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_io[1]}]
set_property PACKAGE_PIN L15 [get_ports {GPIO_0_tri_io[1]}]
set_property PULLUP true [get_ports {GPIO_0_tri_io[1]}]
# "CMOS_VSYNC"
set_property PACKAGE_PIN B19 [get_ports cmos_vsync_i]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_vsync_i]
# "CMOS_HREF"
set_property PACKAGE_PIN A20 [get_ports cmos_href_i]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_href_i]
# "CMOS_PCLK"
set_property IOSTANDARD LVCMOS33 [get_ports cmos_pclk_i]
set_property PACKAGE_PIN F16 [get_ports cmos_pclk_i]
# "CMOS_XCLK"
set_property PACKAGE_PIN F17 [get_ports cmos_xclk_o]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_xclk_o]
# "CMOS_DB[0]"
set_property PACKAGE_PIN G18 [get_ports {cmos_data_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[0]}]
# "CMOS_DB[1]"
set_property PACKAGE_PIN G17 [get_ports {cmos_data_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[1]}]
# "CMOS_DB[2]"
set_property PACKAGE_PIN E19 [get_ports {cmos_data_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[2]}]
# "CMOS_DB[3]"
set_property PACKAGE_PIN E18 [get_ports {cmos_data_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[3]}]
# "CMOS_DB[4]"
set_property PACKAGE_PIN D20 [get_ports {cmos_data_i[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[4]}]
# "CMOS_DB[5]"
set_property PACKAGE_PIN D19 [get_ports {cmos_data_i[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[5]}]
# "CMOS_DB[6]"
set_property PACKAGE_PIN B20 [get_ports {cmos_data_i[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i[6]}]
# "CMOS_DB[7]"
set_property PACKAGE_PIN C20 [get_ports {cmos_data_i[7]}]
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


