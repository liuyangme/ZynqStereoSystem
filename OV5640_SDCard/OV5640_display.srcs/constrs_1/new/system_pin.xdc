#####################################################################
# Camera
#####################################################################
# "CMOS_SCL"
set_property PACKAGE_PIN L14 [get_ports IIC_0_0_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_0_scl_io]
set_property PULLUP true [get_ports IIC_0_0_scl_io]
# "CMOS_SDAT"
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_0_sda_io]
set_property PACKAGE_PIN L15 [get_ports IIC_0_0_sda_io]
set_property PULLUP true [get_ports IIC_0_0_sda_io]
# "CMOS_VSYNC"
set_property PACKAGE_PIN B19 [get_ports cmos_vsync_i_0]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_vsync_i_0]
# "CMOS_HREF"
set_property PACKAGE_PIN A20 [get_ports cmos_href_i_0]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_href_i_0]
# "CMOS_PCLK"
set_property IOSTANDARD LVCMOS33 [get_ports cmos_pclk_i_0]
set_property PACKAGE_PIN F16 [get_ports cmos_pclk_i_0]
# "CMOS_XCLK"
set_property PACKAGE_PIN F17 [get_ports cmos_xclk_o_0]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_xclk_o_0]
# "CMOS_DB[0]"
set_property PACKAGE_PIN G18 [get_ports {cmos_data_i_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[0]}]
# "CMOS_DB[1]"
set_property PACKAGE_PIN G17 [get_ports {cmos_data_i_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[1]}]
# "CMOS_DB[2]"
set_property PACKAGE_PIN E19 [get_ports {cmos_data_i_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[2]}]
# "CMOS_DB[3]"
set_property PACKAGE_PIN E18 [get_ports {cmos_data_i_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[3]}]
# "CMOS_DB[4]"
set_property PACKAGE_PIN D20 [get_ports {cmos_data_i_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[4]}]
# "CMOS_DB[5]"
set_property PACKAGE_PIN D19 [get_ports {cmos_data_i_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[5]}]
# "CMOS_DB[6]"
set_property PACKAGE_PIN B20 [get_ports {cmos_data_i_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[6]}]
# "CMOS_DB[7]"
set_property PACKAGE_PIN C20 [get_ports {cmos_data_i_0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[7]}]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk_i_0_IBUF]

create_clock -period 10.000 -name cmos_xclk_o_0 [get_ports cmos_xclk_o_0]
set_property SLEW FAST [get_ports cmos_xclk_o_0]

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

#####################################################################
# PL Interrupt
#####################################################################
set_property PACKAGE_PIN M15 [get_ports {sw1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw1[0]}]

#####################################################################
# Constraints
#####################################################################
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
