set_property SRC_FILE_INFO {cfile:d:/GitCode/ZYNQ-SystemDebug/FIFO_test/FIFO_test.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc rfile:../../../FIFO_test.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:fifo_pll/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:2 order:LATE scoped_inst:fifo_ip_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:3 order:LATE scoped_inst:fifo_ip_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst unmanaged:yes} [current_design]
current_instance fifo_pll/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
current_instance
current_instance fifo_ip_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:2 line:23 export:INPUT save:NONE read:READ} [current_design]
create_waiver -internal -type CDC -id {CDC-6} -user "xpm_cdc" -desc "The CDC-6 warning is waived as it is safe in the context of XPM_CDC_GRAY." -from [get_pins -quiet {src_gray_ff_reg*/C}] -to [get_pins -quiet {dest_graysync_ff_reg*/D}]
current_instance
current_instance fifo_ip_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:3 line:23 export:INPUT save:NONE read:READ} [current_design]
create_waiver -internal -type CDC -id {CDC-6} -user "xpm_cdc" -desc "The CDC-6 warning is waived as it is safe in the context of XPM_CDC_GRAY." -from [get_pins -quiet {src_gray_ff_reg*/C}] -to [get_pins -quiet {dest_graysync_ff_reg*/D}]
