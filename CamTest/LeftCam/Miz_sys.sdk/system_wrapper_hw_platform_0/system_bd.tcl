
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

  # Create ports
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

  # Create instance: HDMI_FPGA_ML_0, and set properties
  set HDMI_FPGA_ML_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:HDMI_FPGA_ML:1.0 HDMI_FPGA_ML_0 ]

  # Create instance: OV_Sensor_ML_0, and set properties
  set OV_Sensor_ML_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:OV_Sensor_ML:1.0 OV_Sensor_ML_0 ]

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
 ] $axi_mem_intercon

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_vdma_0 ]
  set_property -dict [ list \
CONFIG.c_include_mm2s {1} \
CONFIG.c_include_s2mm {1} \
CONFIG.c_m_axis_mm2s_tdata_width {24} \
CONFIG.c_mm2s_genlock_mode {0} \
CONFIG.c_s2mm_genlock_mode {1} \
 ] $axi_vdma_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {337.616} \
CONFIG.CLKOUT1_PHASE_ERROR {322.999} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {74.25} \
CONFIG.CLKOUT2_JITTER {258.703} \
CONFIG.CLKOUT2_PHASE_ERROR {322.999} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {371.25} \
CONFIG.CLKOUT2_REQUESTED_PHASE {0.000} \
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
CONFIG.PCW_ENET0_RESET_ENABLE {0} \
CONFIG.PCW_ENET_RESET_ENABLE {1} \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {25} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_EMIO_GPIO_IO {2} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
CONFIG.PCW_I2C_RESET_ENABLE {0} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
CONFIG.PCW_SD0_GRP_WP_IO {<Select>} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD1_GRP_CD_ENABLE {1} \
CONFIG.PCW_SD1_GRP_CD_IO {MIO 9} \
CONFIG.PCW_SD1_GRP_WP_ENABLE {1} \
CONFIG.PCW_SD1_GRP_WP_IO {MIO 0} \
CONFIG.PCW_SD1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD1_SD1_IO {MIO 10 .. 15} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K256M16 RE-125} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_USB0_RESET_ENABLE {1} \
CONFIG.PCW_USB0_RESET_IO {MIO 46} \
CONFIG.PCW_USB_RESET_ENABLE {1} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
 ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $processing_system7_0_axi_periph

  # Create instance: rst_processing_system7_0_50M, and set properties
  set rst_processing_system7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processing_system7_0_50M ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
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
CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_vid_in_axi4s_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {7} \
CONFIG.CONST_WIDTH {3} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_S2MM [get_bd_intf_pins axi_mem_intercon/S01_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_S2MM]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_GPIO_0 [get_bd_intf_ports GPIO_0] [get_bd_intf_pins processing_system7_0/GPIO_0]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_vdma_0/S_AXI_LITE] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_0_video_out [get_bd_intf_pins axi_vdma_0/S_AXIS_S2MM] [get_bd_intf_pins v_vid_in_axi4s_0/video_out]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_intf_nets v_vid_in_axi4s_0_video_out]

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
  connect_bd_net -net OV_Sensor_ML_0_de_o [get_bd_pins OV_Sensor_ML_0/vid_clk_ce] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_ce]
  connect_bd_net -net OV_Sensor_ML_0_hs_o [get_bd_pins OV_Sensor_ML_0/hs_o] [get_bd_pins v_vid_in_axi4s_0/vid_active_video] [get_bd_pins v_vid_in_axi4s_0/vid_hsync]
  connect_bd_net -net OV_Sensor_ML_0_rgb_o [get_bd_pins OV_Sensor_ML_0/rgb_o] [get_bd_pins v_vid_in_axi4s_0/vid_data]
  connect_bd_net -net OV_Sensor_ML_0_vs_o [get_bd_pins OV_Sensor_ML_0/vs_o] [get_bd_pins v_vid_in_axi4s_0/vid_vsync]
  connect_bd_net -net axi_vdma_0_mm2s_introut [get_bd_pins axi_vdma_0/mm2s_introut] [get_bd_pins processing_system7_0/IRQ_F2P]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins HDMI_FPGA_ML_0/PXLCLK_I] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net clk_wiz_0_clk_out3 [get_bd_pins HDMI_FPGA_ML_0/PXLCLK_5X_I] [get_bd_pins clk_wiz_0/clk_out2]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins HDMI_FPGA_ML_0/LOCKED_I] [get_bd_pins HDMI_FPGA_ML_0/RST_N] [get_bd_pins clk_wiz_0/locked] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_pins v_tc_0/clken] [get_bd_pins v_tc_0/resetn] [get_bd_pins v_vid_in_axi4s_0/aclken] [get_bd_pins v_vid_in_axi4s_0/aresetn] [get_bd_pins v_vid_in_axi4s_0/axis_enable]
  connect_bd_net -net cmos_data_i_1 [get_bd_ports cmos_data_i] [get_bd_pins OV_Sensor_ML_0/cmos_data_i]
  connect_bd_net -net cmos_href_i_1 [get_bd_ports cmos_href_i] [get_bd_pins OV_Sensor_ML_0/cmos_href_i]
  connect_bd_net -net cmos_pclk_i_1 [get_bd_ports cmos_pclk_i] [get_bd_pins OV_Sensor_ML_0/cmos_pclk_i] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_clk]
  connect_bd_net -net cmos_vsync_i_1 [get_bd_ports cmos_vsync_i] [get_bd_pins OV_Sensor_ML_0/cmos_vsync_i]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins axi_vdma_0/s_axis_s2mm_aclk] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins rst_processing_system7_0_50M/slowest_sync_clk] [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins v_vid_in_axi4s_0/aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins OV_Sensor_ML_0/CLK_i] [get_bd_pins processing_system7_0/FCLK_CLK1]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_processing_system7_0_50M/ext_reset_in]
  connect_bd_net -net rst_processing_system7_0_50M_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins processing_system7_0_axi_periph/ARESETN] [get_bd_pins rst_processing_system7_0_50M/interconnect_aresetn]
  connect_bd_net -net rst_processing_system7_0_50M_peripheral_aresetn [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_processing_system7_0_50M/peripheral_aresetn]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_reset] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_reset]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets util_vector_logic_0_Res]
  connect_bd_net -net v_axi4s_vid_out_0_vid_active_video [get_bd_pins HDMI_FPGA_ML_0/VGA_DE] [get_bd_pins v_axi4s_vid_out_0/vid_active_video]
  connect_bd_net -net v_axi4s_vid_out_0_vid_data [get_bd_pins HDMI_FPGA_ML_0/VGA_RGB] [get_bd_pins v_axi4s_vid_out_0/vid_data]
  connect_bd_net -net v_axi4s_vid_out_0_vid_hsync [get_bd_pins HDMI_FPGA_ML_0/VGA_HS] [get_bd_pins v_axi4s_vid_out_0/vid_hsync]
  connect_bd_net -net v_axi4s_vid_out_0_vid_vsync [get_bd_pins HDMI_FPGA_ML_0/VGA_VS] [get_bd_pins v_axi4s_vid_out_0/vid_vsync]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins axi_vdma_0/s_axis_s2mm_tkeep] [get_bd_pins xlconstant_1/dout]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_vdma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000 -offset 0x43000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port HDMI_CLK_P -pg 1 -y 720 -defaultsOSRD
preplace port DDR -pg 1 -y 480 -defaultsOSRD
preplace port HDMI_D2_N -pg 1 -y 780 -defaultsOSRD
preplace port cmos_xclk_o -pg 1 -y 670 -defaultsOSRD
preplace port HDMI_D0_N -pg 1 -y 860 -defaultsOSRD
preplace port HDMI_D1_N -pg 1 -y 820 -defaultsOSRD
preplace port HDMI_D2_P -pg 1 -y 760 -defaultsOSRD
preplace port cmos_pclk_i -pg 1 -y 550 -defaultsOSRD
preplace port cmos_vsync_i -pg 1 -y 510 -defaultsOSRD
preplace port HDMI_D0_P -pg 1 -y 840 -defaultsOSRD
preplace port HDMI_D1_P -pg 1 -y 800 -defaultsOSRD
preplace port GPIO_0 -pg 1 -y 460 -defaultsOSRD
preplace port cmos_href_i -pg 1 -y 530 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 500 -defaultsOSRD
preplace port HDMI_CLK_N -pg 1 -y 740 -defaultsOSRD
preplace portBus cmos_data_i -pg 1 -y 570 -defaultsOSRD
preplace inst v_axi4s_vid_out_0 -pg 1 -lvl 7 -y 590 -defaultsOSRD
preplace inst v_tc_0 -pg 1 -lvl 6 -y 540 -defaultsOSRD
preplace inst axi_vdma_0 -pg 1 -lvl 6 -y 200 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 4 -y 280 -defaultsOSRD
preplace inst OV_Sensor_ML_0 -pg 1 -lvl 3 -y 540 -defaultsOSRD
preplace inst util_vector_logic_0 -pg 1 -lvl 3 -y 890 -defaultsOSRD
preplace inst rst_processing_system7_0_50M -pg 1 -lvl 1 -y 300 -defaultsOSRD
preplace inst v_vid_in_axi4s_0 -pg 1 -lvl 4 -y 670 -defaultsOSRD
preplace inst HDMI_FPGA_ML_0 -pg 1 -lvl 8 -y 790 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 2 -y 830 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 7 -y 230 -defaultsOSRD
preplace inst processing_system7_0_axi_periph -pg 1 -lvl 4 -y 130 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 8 -y 530 -defaultsOSRD
preplace netloc processing_system7_0_DDR 1 8 1 NJ
preplace netloc cmos_href_i_1 1 0 3 NJ 530 NJ 530 NJ
preplace netloc xlconstant_1_dout 1 4 2 NJ 160 N
preplace netloc v_axi4s_vid_out_0_vid_data 1 7 1 2220
preplace netloc v_vid_in_axi4s_0_video_out 1 4 2 1140 140 N
preplace netloc OV_Sensor_ML_0_vs_o 1 3 1 730
preplace netloc clk_wiz_0_locked 1 2 6 460 780 780 500 N 500 1220 620 1860 780 2280
preplace netloc processing_system7_0_axi_periph_M00_AXI 1 4 2 1110 120 N
preplace netloc OV_Sensor_ML_0_de_o 1 3 1 710
preplace netloc v_axi4s_vid_out_0_vid_hsync 1 7 1 2250
preplace netloc rst_processing_system7_0_50M_interconnect_aresetn 1 1 6 NJ 320 NJ 320 780 330 NJ 60 NJ 60 NJ
preplace netloc processing_system7_0_M_AXI_GP0 1 3 6 720 10 NJ 10 NJ 10 NJ 10 NJ 10 2690
preplace netloc axi_vdma_0_M_AXI_MM2S 1 6 1 N
preplace netloc HDMI_FPGA_ML_0_HDMI_D2_N 1 8 1 NJ
preplace netloc HDMI_FPGA_ML_0_HDMI_CLK_N 1 8 1 NJ
preplace netloc axi_vdma_0_M_AXIS_MM2S 1 6 1 1830
preplace netloc util_vector_logic_0_Res 1 3 4 770 510 NJ 510 1210 670 N
preplace netloc OV_Sensor_ML_0_hs_o 1 3 1 760
preplace netloc processing_system7_0_FCLK_RESET0_N 1 0 9 -40 390 NJ 390 NJ 390 NJ 390 NJ 390 NJ 390 NJ 390 NJ 390 2680
preplace netloc axi_mem_intercon_M00_AXI 1 7 1 2280
preplace netloc HDMI_FPGA_ML_0_HDMI_D1_N 1 8 1 NJ
preplace netloc HDMI_FPGA_ML_0_HDMI_D2_P 1 8 1 NJ
preplace netloc HDMI_FPGA_ML_0_HDMI_CLK_P 1 8 1 NJ
preplace netloc v_axi4s_vid_out_0_vid_active_video 1 7 1 2260
preplace netloc rst_processing_system7_0_50M_peripheral_aresetn 1 1 6 290 340 NJ 340 740 340 N 340 1210 330 1860
preplace netloc OV_Sensor_ML_0_cmos_xclk_o 1 3 6 NJ 470 NJ 470 NJ 640 NJ 730 NJ 670 NJ
preplace netloc cmos_pclk_i_1 1 0 4 NJ 570 NJ 570 460 660 NJ
preplace netloc HDMI_FPGA_ML_0_HDMI_D0_N 1 8 1 NJ
preplace netloc HDMI_FPGA_ML_0_HDMI_D1_P 1 8 1 NJ
preplace netloc v_axi4s_vid_out_0_vtg_ce 1 5 3 NJ 770 NJ 770 2190
preplace netloc processing_system7_0_FIXED_IO 1 8 1 NJ
preplace netloc OV_Sensor_ML_0_rgb_o 1 3 1 750
preplace netloc HDMI_FPGA_ML_0_HDMI_D0_P 1 8 1 NJ
preplace netloc axi_vdma_0_mm2s_introut 1 6 2 1850 380 NJ
preplace netloc cmos_vsync_i_1 1 0 3 NJ 510 NJ 510 NJ
preplace netloc clk_wiz_0_clk_out2 1 2 6 NJ 630 NJ 490 N 490 1230 630 1850 740 NJ
preplace netloc processing_system7_0_GPIO_0 1 8 1 NJ
preplace netloc cmos_data_i_1 1 0 3 NJ 560 NJ 560 NJ
preplace netloc clk_wiz_0_clk_out3 1 2 6 NJ 830 NJ 830 NJ 760 NJ 760 NJ 760 NJ
preplace netloc processing_system7_0_FCLK_CLK0 1 0 9 -50 720 280 720 NJ 720 720 350 1150 260 1210 70 1840 750 2230 650 2670
preplace netloc axi_vdma_0_M_AXI_S2MM 1 6 1 N
preplace netloc v_tc_0_vtiming_out 1 6 1 N
preplace netloc processing_system7_0_FCLK_CLK1 1 2 7 470 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 910 2660
preplace netloc v_axi4s_vid_out_0_vid_vsync 1 7 1 2210
levelinfo -pg 1 -90 120 370 590 970 1190 1648 2040 2470 2710 -top 0 -bot 940
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


