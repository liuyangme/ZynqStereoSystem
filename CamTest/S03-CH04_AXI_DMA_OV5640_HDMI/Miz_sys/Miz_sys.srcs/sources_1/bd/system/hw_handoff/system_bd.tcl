
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg400-2

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set GPIO_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 GPIO_0 ]
  set gpio_rtl [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 gpio_rtl ]

  # Create ports
  set FCLK_CLK0 [ create_bd_port -dir O -type clk FCLK_CLK0 ]
  set HDMI_CLK_N [ create_bd_port -dir O -type clk HDMI_CLK_N ]
  set HDMI_CLK_P [ create_bd_port -dir O -type clk HDMI_CLK_P ]
  set HDMI_D0_N [ create_bd_port -dir O HDMI_D0_N ]
  set HDMI_D0_P [ create_bd_port -dir O HDMI_D0_P ]
  set HDMI_D1_N [ create_bd_port -dir O HDMI_D1_N ]
  set HDMI_D1_P [ create_bd_port -dir O HDMI_D1_P ]
  set HDMI_D2_N [ create_bd_port -dir O HDMI_D2_N ]
  set HDMI_D2_P [ create_bd_port -dir O HDMI_D2_P ]
  set cmos_data_i [ create_bd_port -dir I -from 7 -to 0 cmos_data_i ]
  set cmos_href_i [ create_bd_port -dir I cmos_href_i ]
  set cmos_pclk_i [ create_bd_port -dir I cmos_pclk_i ]
  set cmos_vsync_i [ create_bd_port -dir I cmos_vsync_i ]
  set cmos_xclk_o [ create_bd_port -dir O cmos_xclk_o ]
  set m_axis_mm2s_tvalid [ create_bd_port -dir O m_axis_mm2s_tvalid ]
  set m_axis_video_tlast [ create_bd_port -dir O m_axis_video_tlast ]
  set m_axis_video_tvalid [ create_bd_port -dir O m_axis_video_tvalid ]
  set s_axis_s2mm_tlast [ create_bd_port -dir I s_axis_s2mm_tlast ]
  set s_axis_s2mm_tready [ create_bd_port -dir O s_axis_s2mm_tready ]
  set s_axis_video_tlast [ create_bd_port -dir I s_axis_video_tlast ]
  set s_axis_video_tready [ create_bd_port -dir O s_axis_video_tready ]
  set s_axis_video_tuser [ create_bd_port -dir I s_axis_video_tuser ]
  set vid_io_rst_i [ create_bd_port -dir I -type rst vid_io_rst_i ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $vid_io_rst_i

  # Create instance: HDMI_FPGA_ML_0, and set properties
  set HDMI_FPGA_ML_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:HDMI_FPGA_ML:1.0 HDMI_FPGA_ML_0 ]

  # Create instance: OV_Sensor_ML_0, and set properties
  set OV_Sensor_ML_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:OV_Sensor_ML:1.0 OV_Sensor_ML_0 ]

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list \
CONFIG.c_include_sg {0} \
CONFIG.c_m_axis_mm2s_tdata_width {32} \
CONFIG.c_mm2s_burst_size {16} \
CONFIG.c_s2mm_burst_size {16} \
CONFIG.c_sg_include_stscntrl_strm {0} \
CONFIG.c_sg_length_width {23} \
 ] $axi_dma_0

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_GPIO_WIDTH {1} \
 ] $axi_gpio_0

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
 ] $axi_mem_intercon

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {337.616} \
CONFIG.CLKOUT1_PHASE_ERROR {322.999} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {74.25} \
CONFIG.CLKOUT2_JITTER {258.703} \
CONFIG.CLKOUT2_PHASE_ERROR {322.999} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {371.25} \
CONFIG.CLKOUT2_REQUESTED_PHASE {0} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.MMCM_CLKFBOUT_MULT_F {37.125} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
CONFIG.MMCM_CLKOUT1_DIVIDE {2} \
CONFIG.MMCM_CLKOUT1_PHASE {0.000} \
CONFIG.MMCM_DIVCLK_DIVIDE {5} \
CONFIG.NUM_OUT_CLKS {2} \
CONFIG.RESET_PORT {resetn} \
CONFIG.RESET_TYPE {ACTIVE_LOW} \
 ] $clk_wiz_0

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_ENET_RESET_ENABLE {1} \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {25} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_EMIO_GPIO_IO {2} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
CONFIG.PCW_I2C_RESET_ENABLE {1} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K256M16 RE-125} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USB_RESET_ENABLE {1} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
 ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {2} \
 ] $processing_system7_0_axi_periph

  # Create instance: rst_processing_system7_0_50M, and set properties
  set rst_processing_system7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processing_system7_0_50M ]

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
CONFIG.C_ADDR_WIDTH {10} \
CONFIG.C_HAS_ASYNC_CLK {1} \
CONFIG.C_VTG_MASTER_SLAVE {0} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0 ]
  set_property -dict [ list \
CONFIG.GEN_F0_VBLANK_HEND {1280} \
CONFIG.GEN_F0_VBLANK_HSTART {1280} \
CONFIG.GEN_F0_VFRAME_SIZE {750} \
CONFIG.GEN_F0_VSYNC_HEND {1280} \
CONFIG.GEN_F0_VSYNC_HSTART {1280} \
CONFIG.GEN_F0_VSYNC_VEND {729} \
CONFIG.GEN_F0_VSYNC_VSTART {724} \
CONFIG.GEN_F1_VBLANK_HEND {1280} \
CONFIG.GEN_F1_VBLANK_HSTART {1280} \
CONFIG.GEN_F1_VFRAME_SIZE {750} \
CONFIG.GEN_F1_VSYNC_HEND {1280} \
CONFIG.GEN_F1_VSYNC_HSTART {1280} \
CONFIG.GEN_F1_VSYNC_VEND {729} \
CONFIG.GEN_F1_VSYNC_VSTART {724} \
CONFIG.GEN_HACTIVE_SIZE {1280} \
CONFIG.GEN_HFRAME_SIZE {1650} \
CONFIG.GEN_HSYNC_END {1430} \
CONFIG.GEN_HSYNC_START {1390} \
CONFIG.GEN_VACTIVE_SIZE {720} \
CONFIG.HAS_AXI4_LITE {false} \
CONFIG.VIDEO_MODE {720p} \
CONFIG.enable_detection {false} \
 ] $v_tc_0

  # Create instance: v_vid_in_axi4s_0, and set properties
  set v_vid_in_axi4s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_0 ]
  set_property -dict [ list \
CONFIG.C_ADDR_WIDTH {11} \
CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_vid_in_axi4s_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {2} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {15} \
CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_MM2S [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins axi_mem_intercon/S00_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon/S01_AXI]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports gpio_rtl] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_GPIO_0 [get_bd_intf_ports GPIO_0] [get_bd_intf_pins processing_system7_0/GPIO_0]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M01_AXI [get_bd_intf_pins axi_dma_0/S_AXI_LITE] [get_bd_intf_pins processing_system7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]

  # Create port connections
  connect_bd_net -net HDMI_FPGA_ML_0_HDMI_CLK_N [get_bd_ports HDMI_CLK_N] [get_bd_pins HDMI_FPGA_ML_0/HDMI_CLK_N]
  connect_bd_net -net HDMI_FPGA_ML_0_HDMI_CLK_P [get_bd_ports HDMI_CLK_P] [get_bd_pins HDMI_FPGA_ML_0/HDMI_CLK_P]
  connect_bd_net -net HDMI_FPGA_ML_0_HDMI_D0_N [get_bd_ports HDMI_D0_N] [get_bd_pins HDMI_FPGA_ML_0/HDMI_D0_N]
  connect_bd_net -net HDMI_FPGA_ML_0_HDMI_D0_P [get_bd_ports HDMI_D0_P] [get_bd_pins HDMI_FPGA_ML_0/HDMI_D0_P]
  connect_bd_net -net HDMI_FPGA_ML_0_HDMI_D1_N [get_bd_ports HDMI_D1_N] [get_bd_pins HDMI_FPGA_ML_0/HDMI_D1_N]
  connect_bd_net -net HDMI_FPGA_ML_0_HDMI_D1_P [get_bd_ports HDMI_D1_P] [get_bd_pins HDMI_FPGA_ML_0/HDMI_D1_P]
  connect_bd_net -net HDMI_FPGA_ML_0_HDMI_D2_N [get_bd_ports HDMI_D2_N] [get_bd_pins HDMI_FPGA_ML_0/HDMI_D2_N]
  connect_bd_net -net HDMI_FPGA_ML_0_HDMI_D2_P [get_bd_ports HDMI_D2_P] [get_bd_pins HDMI_FPGA_ML_0/HDMI_D2_P]
  connect_bd_net -net OV_Sensor_ML_0_cmos_xclk_o [get_bd_ports cmos_xclk_o] [get_bd_pins OV_Sensor_ML_0/cmos_xclk_o]
  connect_bd_net -net OV_Sensor_ML_0_hs_o [get_bd_pins OV_Sensor_ML_0/hs_o] [get_bd_pins v_vid_in_axi4s_0/vid_active_video] [get_bd_pins v_vid_in_axi4s_0/vid_hsync]
  connect_bd_net -net OV_Sensor_ML_0_rgb_o [get_bd_pins OV_Sensor_ML_0/rgb_o] [get_bd_pins v_vid_in_axi4s_0/vid_data]
  connect_bd_net -net OV_Sensor_ML_0_vid_clk_ce [get_bd_pins OV_Sensor_ML_0/vid_clk_ce] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_ce]
  connect_bd_net -net OV_Sensor_ML_0_vs_o [get_bd_pins OV_Sensor_ML_0/vs_o] [get_bd_pins v_vid_in_axi4s_0/vid_vsync]
  connect_bd_net -net axi_dma_0_m_axis_mm2s_tdata [get_bd_pins axi_dma_0/m_axis_mm2s_tdata] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tdata]
  connect_bd_net -net axi_dma_0_m_axis_mm2s_tvalid [get_bd_ports m_axis_mm2s_tvalid] [get_bd_pins axi_dma_0/m_axis_mm2s_tvalid] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tvalid]
  connect_bd_net -net axi_dma_0_mm2s_introut [get_bd_pins axi_dma_0/mm2s_introut] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net axi_dma_0_s2mm_introut [get_bd_pins axi_dma_0/s2mm_introut] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_dma_0_s_axis_s2mm_tready [get_bd_ports s_axis_s2mm_tready] [get_bd_pins axi_dma_0/s_axis_s2mm_tready] [get_bd_pins v_vid_in_axi4s_0/m_axis_video_tready]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins HDMI_FPGA_ML_0/PXLCLK_I] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net clk_wiz_0_clk_out3 [get_bd_pins HDMI_FPGA_ML_0/PXLCLK_5X_I] [get_bd_pins clk_wiz_0/clk_out2]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins HDMI_FPGA_ML_0/LOCKED_I] [get_bd_pins HDMI_FPGA_ML_0/RST_N] [get_bd_pins clk_wiz_0/locked] [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_pins v_tc_0/clken] [get_bd_pins v_tc_0/resetn] [get_bd_pins v_vid_in_axi4s_0/aclken] [get_bd_pins v_vid_in_axi4s_0/aresetn] [get_bd_pins v_vid_in_axi4s_0/axis_enable]
  connect_bd_net -net cmos_data_i_1 [get_bd_ports cmos_data_i] [get_bd_pins OV_Sensor_ML_0/cmos_data_i]
  connect_bd_net -net cmos_href_i_1 [get_bd_ports cmos_href_i] [get_bd_pins OV_Sensor_ML_0/cmos_href_i]
  connect_bd_net -net cmos_pclk_i_1 [get_bd_ports cmos_pclk_i] [get_bd_pins OV_Sensor_ML_0/cmos_pclk_i] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_clk]
  connect_bd_net -net cmos_vsync_i_1 [get_bd_ports cmos_vsync_i] [get_bd_pins OV_Sensor_ML_0/cmos_vsync_i]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_ports FCLK_CLK0] [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins rst_processing_system7_0_50M/slowest_sync_clk] [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins v_vid_in_axi4s_0/aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins OV_Sensor_ML_0/CLK_i] [get_bd_pins processing_system7_0/FCLK_CLK1]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_processing_system7_0_50M/ext_reset_in]
  connect_bd_net -net rst_processing_system7_0_50M_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins processing_system7_0_axi_periph/ARESETN] [get_bd_pins rst_processing_system7_0_50M/interconnect_aresetn]
  connect_bd_net -net rst_processing_system7_0_50M_peripheral_aresetn [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_processing_system7_0_50M/peripheral_aresetn]
  connect_bd_net -net s_axis_s2mm_tlast_1 [get_bd_ports s_axis_s2mm_tlast] [get_bd_pins axi_dma_0/s_axis_s2mm_tlast]
  connect_bd_net -net s_axis_video_tlast_1 [get_bd_ports s_axis_video_tlast] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tlast]
  connect_bd_net -net s_axis_video_tuser_1 [get_bd_ports s_axis_video_tuser] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tuser]
  connect_bd_net -net v_axi4s_vid_out_0_s_axis_video_tready [get_bd_ports s_axis_video_tready] [get_bd_pins axi_dma_0/m_axis_mm2s_tready] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tready]
  connect_bd_net -net v_axi4s_vid_out_0_vid_active_video [get_bd_pins HDMI_FPGA_ML_0/VGA_DE] [get_bd_pins v_axi4s_vid_out_0/vid_active_video]
  connect_bd_net -net v_axi4s_vid_out_0_vid_data [get_bd_pins HDMI_FPGA_ML_0/VGA_RGB] [get_bd_pins v_axi4s_vid_out_0/vid_data]
  connect_bd_net -net v_axi4s_vid_out_0_vid_hsync [get_bd_pins HDMI_FPGA_ML_0/VGA_HS] [get_bd_pins v_axi4s_vid_out_0/vid_hsync]
  connect_bd_net -net v_axi4s_vid_out_0_vid_vsync [get_bd_pins HDMI_FPGA_ML_0/VGA_VS] [get_bd_pins v_axi4s_vid_out_0/vid_vsync]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net v_vid_in_axi4s_0_m_axis_video_tdata [get_bd_pins axi_dma_0/s_axis_s2mm_tdata] [get_bd_pins v_vid_in_axi4s_0/m_axis_video_tdata]
  connect_bd_net -net v_vid_in_axi4s_0_m_axis_video_tlast [get_bd_ports m_axis_video_tlast] [get_bd_pins v_vid_in_axi4s_0/m_axis_video_tlast]
  connect_bd_net -net v_vid_in_axi4s_0_m_axis_video_tvalid [get_bd_ports m_axis_video_tvalid] [get_bd_pins axi_dma_0/s_axis_s2mm_tvalid] [get_bd_pins v_vid_in_axi4s_0/m_axis_video_tvalid]
  connect_bd_net -net vid_io_in_reset_1 [get_bd_ports vid_io_rst_i] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_reset] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_reset]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axi_dma_0/s_axis_s2mm_tkeep] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000 -offset 0x40400000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port HDMI_CLK_P -pg 1 -y 1140 -defaultsOSRD
preplace port DDR -pg 1 -y 510 -defaultsOSRD
preplace port HDMI_D2_N -pg 1 -y 1200 -defaultsOSRD
preplace port s_axis_video_tready -pg 1 -y 1120 -defaultsOSRD
preplace port m_axis_video_tlast -pg 1 -y 170 -defaultsOSRD
preplace port HDMI_D2_P -pg 1 -y 1180 -defaultsOSRD
preplace port HDMI_D0_N -pg 1 -y 1280 -defaultsOSRD
preplace port HDMI_D1_N -pg 1 -y 1240 -defaultsOSRD
preplace port cmos_xclk_o -pg 1 -y 20 -defaultsOSRD
preplace port s_axis_video_tlast -pg 1 -y 1100 -defaultsOSRD
preplace port gpio_rtl -pg 1 -y 750 -defaultsOSRD
preplace port HDMI_D0_P -pg 1 -y 1260 -defaultsOSRD
preplace port HDMI_D1_P -pg 1 -y 1220 -defaultsOSRD
preplace port cmos_vsync_i -pg 1 -y 120 -defaultsOSRD
preplace port cmos_pclk_i -pg 1 -y 160 -defaultsOSRD
preplace port GPIO_0 -pg 1 -y 490 -defaultsOSRD
preplace port m_axis_video_tvalid -pg 1 -y 210 -defaultsOSRD
preplace port s_axis_s2mm_tready -pg 1 -y 190 -defaultsOSRD
preplace port cmos_href_i -pg 1 -y 140 -defaultsOSRD
preplace port s_axis_s2mm_tlast -pg 1 -y 910 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 530 -defaultsOSRD
preplace port s_axis_video_tuser -pg 1 -y 1270 -defaultsOSRD
preplace port vid_io_rst_i -pg 1 -y 1290 -defaultsOSRD
preplace port m_axis_mm2s_tvalid -pg 1 -y 890 -defaultsOSRD
preplace port FCLK_CLK0 -pg 1 -y 570 -defaultsOSRD
preplace port HDMI_CLK_N -pg 1 -y 1160 -defaultsOSRD
preplace portBus cmos_data_i -pg 1 -y 180 -defaultsOSRD
preplace inst v_axi4s_vid_out_0 -pg 1 -lvl 4 -y 1190 -defaultsOSRD
preplace inst v_tc_0 -pg 1 -lvl 3 -y 1190 -defaultsOSRD
preplace inst axi_dma_0 -pg 1 -lvl 3 -y 830 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 2 -y 860 -defaultsOSRD
preplace inst OV_Sensor_ML_0 -pg 1 -lvl 4 -y 140 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 4 -y 830 -defaultsOSRD
preplace inst axi_gpio_0 -pg 1 -lvl 5 -y 750 -defaultsOSRD
preplace inst rst_processing_system7_0_50M -pg 1 -lvl 1 -y 820 -defaultsOSRD
preplace inst v_vid_in_axi4s_0 -pg 1 -lvl 5 -y 210 -defaultsOSRD
preplace inst HDMI_FPGA_ML_0 -pg 1 -lvl 5 -y 1210 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 2 -y 1030 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 4 -y 560 -defaultsOSRD
preplace inst processing_system7_0_axi_periph -pg 1 -lvl 2 -y 670 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 5 -y 550 -defaultsOSRD
preplace netloc processing_system7_0_DDR 1 5 1 NJ
preplace netloc v_axi4s_vid_out_0_vid_data 1 4 1 1880
preplace netloc cmos_href_i_1 1 0 4 NJ 140 NJ 140 NJ 140 NJ
preplace netloc OV_Sensor_ML_0_vs_o 1 4 1 1880
preplace netloc clk_wiz_0_locked 1 2 3 680 1050 1230 1000 1930
preplace netloc processing_system7_0_axi_periph_M00_AXI 1 2 3 NJ 410 NJ 410 1880
preplace netloc v_axi4s_vid_out_0_vid_hsync 1 4 1 1890
preplace netloc v_vid_in_axi4s_0_m_axis_video_tvalid 1 2 4 670 10 NJ 10 NJ 10 2360
preplace netloc rst_processing_system7_0_50M_interconnect_aresetn 1 1 3 350 530 NJ 530 NJ
preplace netloc processing_system7_0_M_AXI_GP0 1 1 5 380 390 NJ 390 NJ 390 NJ 390 2320
preplace netloc HDMI_FPGA_ML_0_HDMI_CLK_N 1 5 1 NJ
preplace netloc HDMI_FPGA_ML_0_HDMI_D2_N 1 5 1 NJ
preplace netloc axi_dma_0_m_axis_mm2s_tdata 1 3 1 1210
preplace netloc OV_Sensor_ML_0_hs_o 1 4 1 1940
preplace netloc processing_system7_0_FCLK_RESET0_N 1 0 6 30 950 NJ 950 NJ 990 NJ 950 NJ 950 2320
preplace netloc axi_mem_intercon_M00_AXI 1 4 1 1870
preplace netloc HDMI_FPGA_ML_0_HDMI_D2_P 1 5 1 NJ
preplace netloc HDMI_FPGA_ML_0_HDMI_CLK_P 1 5 1 NJ
preplace netloc HDMI_FPGA_ML_0_HDMI_D1_N 1 5 1 NJ
preplace netloc v_axi4s_vid_out_0_vid_active_video 1 4 1 1900
preplace netloc axi_dma_0_m_axis_mm2s_tvalid 1 3 3 1150 890 NJ 890 NJ
preplace netloc rst_processing_system7_0_50M_peripheral_aresetn 1 1 4 380 960 680 1000 1180 770 NJ
preplace netloc HDMI_FPGA_ML_0_HDMI_D0_N 1 5 1 NJ
preplace netloc OV_Sensor_ML_0_cmos_xclk_o 1 4 2 NJ 20 NJ
preplace netloc cmos_pclk_i_1 1 0 5 NJ 160 NJ 160 NJ 160 1170 50 NJ
preplace netloc s_axis_s2mm_tlast_1 1 0 3 NJ 730 NJ 810 NJ
preplace netloc axi_dma_0_s_axis_s2mm_tready 1 2 4 700 30 NJ 30 NJ 30 2350
preplace netloc axi_dma_0_s2mm_introut 1 3 1 1160
preplace netloc axi_dma_0_M_AXI_MM2S 1 3 1 1130
preplace netloc HDMI_FPGA_ML_0_HDMI_D1_P 1 5 1 NJ
preplace netloc v_vid_in_axi4s_0_m_axis_video_tlast 1 5 1 NJ
preplace netloc v_axi4s_vid_out_0_vtg_ce 1 2 3 700 1380 NJ 1380 1860
preplace netloc xlconstant_0_dout 1 2 1 NJ
preplace netloc xlconcat_0_dout 1 4 1 1910
preplace netloc processing_system7_0_FIXED_IO 1 5 1 NJ
preplace netloc HDMI_FPGA_ML_0_HDMI_D0_P 1 5 1 NJ
preplace netloc OV_Sensor_ML_0_rgb_o 1 4 1 1910
preplace netloc vid_io_in_reset_1 1 0 5 NJ 1290 NJ 1290 NJ 1290 1170 240 NJ
preplace netloc axi_dma_0_mm2s_introut 1 3 1 1140
preplace netloc axi_gpio_0_GPIO 1 5 1 NJ
preplace netloc axi_dma_0_M_AXI_S2MM 1 3 1 1140
preplace netloc cmos_vsync_i_1 1 0 4 NJ 120 NJ 120 NJ 120 NJ
preplace netloc OV_Sensor_ML_0_vid_clk_ce 1 4 1 1870
preplace netloc v_axi4s_vid_out_0_s_axis_video_tready 1 3 3 1130 990 NJ 990 NJ
preplace netloc v_vid_in_axi4s_0_m_axis_video_tdata 1 2 4 690 980 NJ 970 NJ 970 2340
preplace netloc clk_wiz_0_clk_out2 1 2 3 660 1080 1120 1370 1920
preplace netloc processing_system7_0_GPIO_0 1 5 1 NJ
preplace netloc clk_wiz_0_clk_out3 1 2 3 NJ 1030 NJ 1010 1910
preplace netloc cmos_data_i_1 1 0 4 NJ 180 NJ 180 NJ 180 NJ
preplace netloc s_axis_video_tlast_1 1 0 4 NJ 1100 NJ 1100 NJ 1100 NJ
preplace netloc processing_system7_0_FCLK_CLK0 1 0 6 30 720 370 910 670 1010 1200 400 1940 660 2360
preplace netloc v_tc_0_vtiming_out 1 3 1 N
preplace netloc v_axi4s_vid_out_0_vid_vsync 1 4 1 1870
preplace netloc processing_system7_0_FCLK_CLK1 1 3 3 NJ 370 NJ 370 2330
preplace netloc processing_system7_0_axi_periph_M01_AXI 1 2 1 660
preplace netloc s_axis_video_tuser_1 1 0 4 NJ 1110 NJ 1110 NJ 1110 NJ
levelinfo -pg 1 0 190 520 920 1680 2130 2380 -top 0 -bot 1390
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


