
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
#    create_project project_1 myproj -part xc7z020clg484-1

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
  set cmos_data_i [ create_bd_port -dir I -from 7 -to 0 cmos_data_i ]
  set cmos_href_i [ create_bd_port -dir I cmos_href_i ]
  set cmos_pclk_i [ create_bd_port -dir I cmos_pclk_i ]
  set cmos_vsync_i [ create_bd_port -dir I cmos_vsync_i ]
  set cmos_xclk_o [ create_bd_port -dir O cmos_xclk_o ]
  set hdmi_clk [ create_bd_port -dir O -type clk hdmi_clk ]
  set hdmi_d [ create_bd_port -dir O -from 15 -to 0 hdmi_d ]
  set hdmi_de [ create_bd_port -dir O hdmi_de ]
  set hdmi_hsync [ create_bd_port -dir O hdmi_hsync ]
  set hdmi_scl [ create_bd_port -dir O hdmi_scl ]
  set hdmi_sda [ create_bd_port -dir IO hdmi_sda ]
  set hdmi_vsync [ create_bd_port -dir O hdmi_vsync ]
  set m_axis_mm2s_tvalid [ create_bd_port -dir O m_axis_mm2s_tvalid ]
  set m_axis_video_tlast [ create_bd_port -dir O m_axis_video_tlast ]
  set m_axis_video_tvalid [ create_bd_port -dir O m_axis_video_tvalid ]
  set s_axis_s2mm_tlast [ create_bd_port -dir I s_axis_s2mm_tlast ]
  set s_axis_s2mm_tready [ create_bd_port -dir O s_axis_s2mm_tready ]
  set s_axis_video_tlast [ create_bd_port -dir I s_axis_video_tlast ]
  set s_axis_video_tready [ create_bd_port -dir O s_axis_video_tready ]
  set s_axis_video_tuser [ create_bd_port -dir I s_axis_video_tuser ]
  set vga_data [ create_bd_port -dir O -from 23 -to 0 vga_data ]
  set vga_hs [ create_bd_port -dir O vga_hs ]
  set vga_vs [ create_bd_port -dir O vga_vs ]
  set vid_io_rst_i [ create_bd_port -dir I -type rst vid_io_rst_i ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $vid_io_rst_i

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
CONFIG.CLKOUT1_JITTER {343.754} \
CONFIG.CLKOUT1_PHASE_ERROR {387.174} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {74.25} \
CONFIG.CLKOUT2_JITTER {343.754} \
CONFIG.CLKOUT2_PHASE_ERROR {387.174} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {74.25} \
CONFIG.CLKOUT2_REQUESTED_PHASE {90} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.MMCM_CLKFBOUT_MULT_F {49.000} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {11.000} \
CONFIG.MMCM_CLKOUT1_DIVIDE {11} \
CONFIG.MMCM_CLKOUT1_PHASE {90.000} \
CONFIG.MMCM_DIVCLK_DIVIDE {6} \
CONFIG.NUM_OUT_CLKS {2} \
CONFIG.RESET_PORT {resetn} \
CONFIG.RESET_TYPE {ACTIVE_LOW} \
 ] $clk_wiz_0

  # Create instance: hdmi_display_0, and set properties
  set hdmi_display_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:hdmi_display:1.0 hdmi_display_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
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
CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K128M16 JT-125} \
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

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

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
  connect_bd_net -net Net [get_bd_ports hdmi_sda] [get_bd_pins hdmi_display_0/hdmi_sda]
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
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins hdmi_display_0/vga_clk] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net clk_wiz_0_clk_out3 [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins hdmi_display_0/vga_clk_90]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_pins v_tc_0/clken] [get_bd_pins v_tc_0/resetn] [get_bd_pins v_vid_in_axi4s_0/aclken] [get_bd_pins v_vid_in_axi4s_0/aresetn] [get_bd_pins v_vid_in_axi4s_0/axis_enable]
  connect_bd_net -net cmos_data_i_1 [get_bd_ports cmos_data_i] [get_bd_pins OV_Sensor_ML_0/cmos_data_i]
  connect_bd_net -net cmos_href_i_1 [get_bd_ports cmos_href_i] [get_bd_pins OV_Sensor_ML_0/cmos_href_i]
  connect_bd_net -net cmos_pclk_i_1 [get_bd_ports cmos_pclk_i] [get_bd_pins OV_Sensor_ML_0/cmos_pclk_i] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_clk]
  connect_bd_net -net cmos_vsync_i_1 [get_bd_ports cmos_vsync_i] [get_bd_pins OV_Sensor_ML_0/cmos_vsync_i]
  connect_bd_net -net hdmi_display_0_hdmi_clk [get_bd_ports hdmi_clk] [get_bd_pins hdmi_display_0/hdmi_clk]
  connect_bd_net -net hdmi_display_0_hdmi_d [get_bd_ports hdmi_d] [get_bd_pins hdmi_display_0/hdmi_d]
  connect_bd_net -net hdmi_display_0_hdmi_de [get_bd_ports hdmi_de] [get_bd_pins hdmi_display_0/hdmi_de]
  connect_bd_net -net hdmi_display_0_hdmi_hsync [get_bd_ports hdmi_hsync] [get_bd_pins hdmi_display_0/hdmi_hsync]
  connect_bd_net -net hdmi_display_0_hdmi_scl [get_bd_ports hdmi_scl] [get_bd_pins hdmi_display_0/hdmi_scl]
  connect_bd_net -net hdmi_display_0_hdmi_vsync [get_bd_ports hdmi_vsync] [get_bd_pins hdmi_display_0/hdmi_vsync]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_ports FCLK_CLK0] [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins hdmi_display_0/i2c_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins rst_processing_system7_0_50M/slowest_sync_clk] [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins v_vid_in_axi4s_0/aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins OV_Sensor_ML_0/CLK_i] [get_bd_pins processing_system7_0/FCLK_CLK1]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_processing_system7_0_50M/ext_reset_in]
  connect_bd_net -net rst_processing_system7_0_50M_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins processing_system7_0_axi_periph/ARESETN] [get_bd_pins rst_processing_system7_0_50M/interconnect_aresetn]
  connect_bd_net -net rst_processing_system7_0_50M_peripheral_aresetn [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_processing_system7_0_50M/peripheral_aresetn]
  connect_bd_net -net s_axis_s2mm_tlast_1 [get_bd_ports s_axis_s2mm_tlast] [get_bd_pins axi_dma_0/s_axis_s2mm_tlast]
  connect_bd_net -net s_axis_video_tlast_1 [get_bd_ports s_axis_video_tlast] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tlast]
  connect_bd_net -net s_axis_video_tuser_1 [get_bd_ports s_axis_video_tuser] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tuser]
  connect_bd_net -net v_axi4s_vid_out_0_s_axis_video_tready [get_bd_ports s_axis_video_tready] [get_bd_pins axi_dma_0/m_axis_mm2s_tready] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tready]
  connect_bd_net -net v_axi4s_vid_out_0_vid_active_video [get_bd_pins hdmi_display_0/de_in] [get_bd_pins v_axi4s_vid_out_0/vid_active_video]
  connect_bd_net -net v_axi4s_vid_out_0_vid_data [get_bd_ports vga_data] [get_bd_pins hdmi_display_0/rgb_in] [get_bd_pins v_axi4s_vid_out_0/vid_data]
  connect_bd_net -net v_axi4s_vid_out_0_vid_hsync [get_bd_ports vga_hs] [get_bd_pins hdmi_display_0/hsync_in] [get_bd_pins v_axi4s_vid_out_0/vid_hsync]
  connect_bd_net -net v_axi4s_vid_out_0_vid_vsync [get_bd_ports vga_vs] [get_bd_pins hdmi_display_0/vsync_in] [get_bd_pins v_axi4s_vid_out_0/vid_vsync]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net v_vid_in_axi4s_0_m_axis_video_tdata [get_bd_pins axi_dma_0/s_axis_s2mm_tdata] [get_bd_pins v_vid_in_axi4s_0/m_axis_video_tdata]
  connect_bd_net -net v_vid_in_axi4s_0_m_axis_video_tlast [get_bd_ports m_axis_video_tlast] [get_bd_pins v_vid_in_axi4s_0/m_axis_video_tlast]
  connect_bd_net -net v_vid_in_axi4s_0_m_axis_video_tvalid [get_bd_ports m_axis_video_tvalid] [get_bd_pins axi_dma_0/s_axis_s2mm_tvalid] [get_bd_pins v_vid_in_axi4s_0/m_axis_video_tvalid]
  connect_bd_net -net vid_io_in_reset_1 [get_bd_ports vid_io_rst_i] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_reset] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_reset]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axi_dma_0/s_axis_s2mm_tkeep] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins OV_Sensor_ML_0/mode] [get_bd_pins xlconstant_1/dout]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000 -offset 0x40400000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port DDR -pg 1 -y 370 -defaultsOSRD
preplace port hdmi_de -pg 1 -y 1300 -defaultsOSRD
preplace port hdmi_scl -pg 1 -y 1320 -defaultsOSRD
preplace port hdmi_vsync -pg 1 -y 1260 -defaultsOSRD
preplace port hdmi_hsync -pg 1 -y 1240 -defaultsOSRD
preplace port s_axis_video_tready -pg 1 -y 1020 -defaultsOSRD
preplace port m_axis_video_tlast -pg 1 -y 830 -defaultsOSRD
preplace port cmos_xclk_o -pg 1 -y 780 -defaultsOSRD
preplace port s_axis_video_tlast -pg 1 -y 1110 -defaultsOSRD
preplace port gpio_rtl -pg 1 -y 610 -defaultsOSRD
preplace port vga_hs -pg 1 -y 1160 -defaultsOSRD
preplace port cmos_pclk_i -pg 1 -y 830 -defaultsOSRD
preplace port cmos_vsync_i -pg 1 -y 790 -defaultsOSRD
preplace port GPIO_0 -pg 1 -y 350 -defaultsOSRD
preplace port hdmi_clk -pg 1 -y 1220 -defaultsOSRD
preplace port m_axis_video_tvalid -pg 1 -y 850 -defaultsOSRD
preplace port s_axis_s2mm_tready -pg 1 -y 810 -defaultsOSRD
preplace port cmos_href_i -pg 1 -y 810 -defaultsOSRD
preplace port s_axis_s2mm_tlast -pg 1 -y 570 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 390 -defaultsOSRD
preplace port s_axis_video_tuser -pg 1 -y 1130 -defaultsOSRD
preplace port vid_io_rst_i -pg 1 -y 1150 -defaultsOSRD
preplace port m_axis_mm2s_tvalid -pg 1 -y 1040 -defaultsOSRD
preplace port vga_vs -pg 1 -y 1180 -defaultsOSRD
preplace port FCLK_CLK0 -pg 1 -y 430 -defaultsOSRD
preplace port hdmi_sda -pg 1 -y 1340 -defaultsOSRD
preplace portBus hdmi_d -pg 1 -y 1280 -defaultsOSRD
preplace portBus vga_data -pg 1 -y 1140 -defaultsOSRD
preplace portBus cmos_data_i -pg 1 -y 850 -defaultsOSRD
preplace inst v_axi4s_vid_out_0 -pg 1 -lvl 6 -y 1340 -defaultsOSRD
preplace inst v_tc_0 -pg 1 -lvl 5 -y 1220 -defaultsOSRD
preplace inst axi_dma_0 -pg 1 -lvl 3 -y 750 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 2 -y 520 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 3 -y 940 -defaultsOSRD
preplace inst OV_Sensor_ML_0 -pg 1 -lvl 5 -y 820 -defaultsOSRD
preplace inst axi_gpio_0 -pg 1 -lvl 6 -y 610 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 5 -y 680 -defaultsOSRD
preplace inst rst_processing_system7_0_50M -pg 1 -lvl 1 -y 370 -defaultsOSRD
preplace inst hdmi_display_0 -pg 1 -lvl 7 -y 1280 -defaultsOSRD
preplace inst v_vid_in_axi4s_0 -pg 1 -lvl 6 -y 890 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 3 -y 1050 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 5 -y 430 -defaultsOSRD
preplace inst processing_system7_0_axi_periph -pg 1 -lvl 2 -y 130 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 6 -y 410 -defaultsOSRD
preplace netloc processing_system7_0_DDR 1 6 2 NJ 370 NJ
preplace netloc cmos_href_i_1 1 0 5 NJ 810 NJ 810 NJ 1140 NJ 810 NJ
preplace netloc xlconstant_1_dout 1 3 2 1440 870 N
preplace netloc v_axi4s_vid_out_0_vid_data 1 6 2 NJ 1140 NJ
preplace netloc OV_Sensor_ML_0_vs_o 1 5 1 2110
preplace netloc clk_wiz_0_locked 1 3 3 N 1070 1720 1070 2110
preplace netloc processing_system7_0_axi_periph_M00_AXI 1 2 4 NJ 120 NJ 120 NJ 120 NJ
preplace netloc hdmi_display_0_hdmi_scl 1 7 1 N
preplace netloc v_vid_in_axi4s_0_m_axis_video_tvalid 1 2 6 950 1150 NJ 1100 NJ 1100 NJ 1100 2690 850 NJ
preplace netloc v_axi4s_vid_out_0_vid_hsync 1 6 2 NJ 1150 NJ
preplace netloc rst_processing_system7_0_50M_interconnect_aresetn 1 1 4 550 390 NJ 390 NJ 390 NJ
preplace netloc processing_system7_0_M_AXI_GP0 1 1 6 580 280 NJ 280 NJ 280 NJ 280 NJ 280 2640
preplace netloc axi_dma_0_m_axis_mm2s_tdata 1 3 3 NJ 600 N 600 2180
preplace netloc OV_Sensor_ML_0_hs_o 1 5 1 2210
preplace netloc hdmi_display_0_hdmi_de 1 7 1 N
preplace netloc hdmi_display_0_hdmi_hsync 1 7 1 N
preplace netloc processing_system7_0_FCLK_RESET0_N 1 0 7 NJ 270 NJ 270 NJ 270 NJ 270 NJ 270 NJ 270 2650
preplace netloc axi_mem_intercon_M00_AXI 1 5 1 2110
preplace netloc v_axi4s_vid_out_0_vid_active_video 1 6 1 2700
preplace netloc axi_dma_0_m_axis_mm2s_tvalid 1 3 5 NJ 610 N 610 2150 1070 NJ 1040 NJ
preplace netloc rst_processing_system7_0_50M_peripheral_aresetn 1 1 5 570 410 900 440 N 440 NJ 590 NJ
preplace netloc cmos_pclk_i_1 1 0 6 NJ 830 NJ 830 NJ 1120 NJ 920 1740 920 2160
preplace netloc OV_Sensor_ML_0_cmos_xclk_o 1 5 3 NJ 1050 NJ 780 NJ
preplace netloc hdmi_display_0_hdmi_clk 1 7 1 N
preplace netloc s_axis_s2mm_tlast_1 1 0 3 NJ 570 NJ 570 NJ
preplace netloc axi_dma_0_s_axis_s2mm_tready 1 2 6 940 1130 NJ 1130 NJ 1130 NJ 1130 2680 810 NJ
preplace netloc axi_dma_0_s2mm_introut 1 3 2 1420 690 N
preplace netloc axi_dma_0_M_AXI_MM2S 1 3 2 1360 340 N
preplace netloc v_vid_in_axi4s_0_m_axis_video_tlast 1 6 2 NJ 840 NJ
preplace netloc v_axi4s_vid_out_0_vtg_ce 1 4 3 NJ 1520 NJ 1520 2640
preplace netloc xlconstant_0_dout 1 2 1 NJ
preplace netloc xlconcat_0_dout 1 5 1 2110
preplace netloc processing_system7_0_FIXED_IO 1 6 2 NJ 390 NJ
preplace netloc OV_Sensor_ML_0_rgb_o 1 5 1 2120
preplace netloc vid_io_in_reset_1 1 0 6 NJ 1340 NJ 1340 NJ 1340 NJ 1340 N 1340 2200
preplace netloc axi_dma_0_mm2s_introut 1 3 2 1410 670 N
preplace netloc axi_gpio_0_GPIO 1 6 2 NJ 610 N
preplace netloc axi_dma_0_M_AXI_S2MM 1 3 2 1370 360 N
preplace netloc OV_Sensor_ML_0_vid_clk_ce 1 5 1 2100
preplace netloc cmos_vsync_i_1 1 0 5 NJ 1170 NJ 1170 NJ 1170 NJ 1170 NJ
preplace netloc v_axi4s_vid_out_0_s_axis_video_tready 1 3 5 NJ 620 N 620 2140 1080 NJ 1020 NJ
preplace netloc v_vid_in_axi4s_0_m_axis_video_tdata 1 2 5 930 1530 NJ 1530 NJ 1530 NJ 1530 2650
preplace netloc clk_wiz_0_clk_out2 1 3 4 N 1030 NJ 1330 NJ 1150 NJ
preplace netloc processing_system7_0_GPIO_0 1 6 2 NJ 350 NJ
preplace netloc cmos_data_i_1 1 0 5 NJ 850 NJ 850 NJ 1160 NJ 850 NJ
preplace netloc Net 1 7 1 N
preplace netloc clk_wiz_0_clk_out3 1 3 4 NJ 1310 NJ 1310 NJ 1160 2680
preplace netloc s_axis_video_tlast_1 1 0 6 NJ 1300 NJ 1300 NJ 1300 NJ 1300 NJ 1300 NJ
preplace netloc processing_system7_0_FCLK_CLK0 1 0 8 40 280 560 380 920 380 N 380 1750 580 2190 520 2720 430 NJ
preplace netloc v_tc_0_vtiming_out 1 5 1 2130
preplace netloc processing_system7_0_FCLK_CLK1 1 4 3 1750 1060 NJ 1060 2640
preplace netloc v_axi4s_vid_out_0_vid_vsync 1 6 2 NJ 1170 NJ
preplace netloc processing_system7_0_axi_periph_M01_AXI 1 2 1 930
preplace netloc hdmi_display_0_hdmi_d 1 7 1 N
preplace netloc hdmi_display_0_hdmi_vsync 1 7 1 N
preplace netloc s_axis_video_tuser_1 1 0 6 NJ 1130 NJ 1130 NJ 1320 NJ 1320 NJ 1320 NJ
levelinfo -pg 1 0 390 720 1160 1690 1960 2450 2860 2990 -top 0 -bot 1540
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


