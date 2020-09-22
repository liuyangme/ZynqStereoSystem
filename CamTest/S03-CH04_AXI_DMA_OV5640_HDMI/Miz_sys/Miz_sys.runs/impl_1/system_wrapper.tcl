proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir F:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.cache/wt [current_project]
  set_property parent.project_path F:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.xpr [current_project]
  set_property ip_repo_paths {
  f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.cache/ip
  F:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_ip_lib/AXI_OLED
  F:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_ip_lib/HDMI_FPGA_ML
  F:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_ip_lib/OV_Sensor_ML
} [current_project]
  set_property ip_output_repo f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.cache/ip [current_project]
  add_files -quiet F:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.runs/synth_1/system_wrapper.dcp
  read_xdc -ref system_processing_system7_0_0 -cells inst f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref system_rst_processing_system7_0_50M_0 f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_50M_0/system_rst_processing_system7_0_50M_0_board.xdc
  set_property processing_order EARLY [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_50M_0/system_rst_processing_system7_0_50M_0_board.xdc]
  read_xdc -ref system_rst_processing_system7_0_50M_0 f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_50M_0/system_rst_processing_system7_0_50M_0.xdc
  set_property processing_order EARLY [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_50M_0/system_rst_processing_system7_0_50M_0.xdc]
  read_xdc -ref system_axi_dma_0_0 -cells U0 f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0.xdc
  set_property processing_order EARLY [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0.xdc]
  read_xdc -prop_thru_buffers -ref system_clk_wiz_0_0 -cells inst f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_board.xdc
  set_property processing_order EARLY [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_board.xdc]
  read_xdc -ref system_clk_wiz_0_0 -cells inst f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.xdc
  set_property processing_order EARLY [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_gpio_0_0 -cells U0 f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc]
  read_xdc -ref system_axi_gpio_0_0 -cells U0 f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc]
  read_xdc F:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/constrs_1/new/Miz_sys_pin.xdc
  read_xdc -ref system_axi_dma_0_0 -cells U0 f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0_clocks.xdc
  set_property processing_order LATE [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0_clocks.xdc]
  read_xdc -ref system_v_vid_in_axi4s_0_0 -cells inst f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_v_vid_in_axi4s_0_0/system_v_vid_in_axi4s_0_0_clocks.xdc
  set_property processing_order LATE [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_v_vid_in_axi4s_0_0/system_v_vid_in_axi4s_0_0_clocks.xdc]
  read_xdc -ref system_v_axi4s_vid_out_0_0 -cells inst f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0_clocks.xdc
  set_property processing_order LATE [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0_clocks.xdc]
  read_xdc -ref system_v_tc_0_0 -cells U0 f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_v_tc_0_0/system_v_tc_0_0_clocks.xdc
  set_property processing_order LATE [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_v_tc_0_0/system_v_tc_0_0_clocks.xdc]
  read_xdc -ref system_auto_us_0 -cells inst f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0_clocks.xdc
  set_property processing_order LATE [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0_clocks.xdc]
  read_xdc -ref system_auto_us_1 -cells inst f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_us_1/system_auto_us_1_clocks.xdc
  set_property processing_order LATE [get_files f:/miz701N/7020/s3/S03-CH04_AXI_DMA_OV5640_HDMI/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_us_1/system_auto_us_1_clocks.xdc]
  link_design -top system_wrapper -part xc7z020clg400-2
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force system_wrapper_opt.dcp
  report_drc -file system_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file system_wrapper.hwdef}
  place_design 
  write_checkpoint -force system_wrapper_placed.dcp
  report_io -file system_wrapper_io_placed.rpt
  report_utilization -file system_wrapper_utilization_placed.rpt -pb system_wrapper_utilization_placed.pb
  report_control_sets -verbose -file system_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force system_wrapper_routed.dcp
  report_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file system_wrapper_timing_summary_routed.rpt -rpx system_wrapper_timing_summary_routed.rpx
  report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb
  report_route_status -file system_wrapper_route_status.rpt -pb system_wrapper_route_status.pb
  report_clock_utilization -file system_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force system_wrapper.mmi }
  write_bitstream -force system_wrapper.bit 
  catch { write_sysdef -hwdef system_wrapper.hwdef -bitfile system_wrapper.bit -meminfo system_wrapper.mmi -file system_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

