#系统IO
set_property PACKAGE_PIN H16 [get_ports {clk_i}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk_i}]

set_property PACKAGE_PIN M14 [get_ports {rst_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]

#控制板输出指示
set_property PACKAGE_PIN W20 [get_ports {led_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_o[0]}]

set_property PACKAGE_PIN V20 [get_ports {led_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_o[1]}]

set_property PACKAGE_PIN R18 [get_ports {beep_o}]
set_property IOSTANDARD LVCMOS33 [get_ports {beep_o}]

#控制板输入信号
set_property PACKAGE_PIN W18 [get_ports {switchkey_i_n[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switchkey_i_n[0]}]

set_property PACKAGE_PIN W19 [get_ports {switchkey_i_n[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switchkey_i_n[1]}]

set_property PACKAGE_PIN Y18 [get_ports {switchkey_i_n[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switchkey_i_n[2]}]

set_property PACKAGE_PIN Y19 [get_ports {switchkey_i_n[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switchkey_i_n[3]}]

set_property PACKAGE_PIN P20 [get_ports {key_i_n[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_i_n[0]}]

set_property PACKAGE_PIN T20 [get_ports {key_i_n[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_i_n[1]}]

set_property PACKAGE_PIN T17 [get_ports {key_i_n[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_i_n[2]}]

set_property PACKAGE_PIN N20 [get_ports {key_i_n[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_i_n[3]}]

set_property PACKAGE_PIN U20 [get_ports {key_i_n[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_i_n[4]}]

set_property PACKAGE_PIN N17 [get_ports {key_i_n[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_i_n[5]}]

set_property PACKAGE_PIN P18 [get_ports {key_i_n[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_i_n[6]}]

set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
set_property SEVERITY {Warning} [get_drc_checks RTSTAT-1]
set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
