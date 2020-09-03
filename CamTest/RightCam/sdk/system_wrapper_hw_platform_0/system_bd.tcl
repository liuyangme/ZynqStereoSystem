
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

  # Create ports
  set hdmi_clk [ create_bd_port -dir O -type clk hdmi_clk ]
  set hdmi_d [ create_bd_port -dir O -from 15 -to 0 hdmi_d ]
  set hdmi_de [ create_bd_port -dir O hdmi_de ]
  set hdmi_hsync [ create_bd_port -dir O hdmi_hsync ]
  set hdmi_scl [ create_bd_port -dir O hdmi_scl ]
  set hdmi_sda [ create_bd_port -dir IO hdmi_sda ]
  set hdmi_vsync [ create_bd_port -dir O hdmi_vsync ]
  set vga_data [ create_bd_port -dir O -from 23 -to 0 vga_data ]
  set vga_hs [ create_bd_port -dir O vga_hs ]
  set vga_vs [ create_bd_port -dir O vga_vs ]

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $axi_mem_intercon

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_vdma_0 ]
  set_property -dict [ list \
CONFIG.c_include_mm2s {1} \
CONFIG.c_include_s2mm {0} \
CONFIG.c_mm2s_genlock_mode {0} \
CONFIG.c_s2mm_genlock_mode {0} \
 ] $axi_vdma_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {238.418} \
CONFIG.CLKOUT1_PHASE_ERROR {240.486} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {65} \
CONFIG.CLKOUT2_JITTER {238.418} \
CONFIG.CLKOUT2_PHASE_ERROR {240.486} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {65} \
CONFIG.CLKOUT2_REQUESTED_PHASE {90} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.MMCM_CLKFBOUT_MULT_F {39.000} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {15.000} \
CONFIG.MMCM_CLKOUT1_DIVIDE {15} \
CONFIG.MMCM_CLKOUT1_PHASE {90.000} \
CONFIG.MMCM_DIVCLK_DIVIDE {4} \
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
CONFIG.PCW_ENET_RESET_ENABLE {0} \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {25} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
CONFIG.PCW_GPIO_EMIO_GPIO_IO {<Select>} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {0} \
CONFIG.PCW_I2C_RESET_ENABLE {0} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
CONFIG.PCW_SD0_GRP_WP_IO {MIO 46} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD1_GRP_CD_ENABLE {1} \
CONFIG.PCW_SD1_GRP_CD_IO {MIO 9} \
CONFIG.PCW_SD1_GRP_WP_ENABLE {1} \
CONFIG.PCW_SD1_GRP_WP_IO {MIO 0} \
CONFIG.PCW_SD1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD1_SD1_IO {MIO 10 .. 15} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K128M16 JT-125} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USB_RESET_ENABLE {0} \
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
CONFIG.GEN_F0_VBLANK_HEND {1024} \
CONFIG.GEN_F0_VBLANK_HSTART {1024} \
CONFIG.GEN_F0_VFRAME_SIZE {806} \
CONFIG.GEN_F0_VSYNC_HEND {1024} \
CONFIG.GEN_F0_VSYNC_HSTART {1024} \
CONFIG.GEN_F0_VSYNC_VEND {776} \
CONFIG.GEN_F0_VSYNC_VSTART {770} \
CONFIG.GEN_F1_VBLANK_HEND {1024} \
CONFIG.GEN_F1_VBLANK_HSTART {1024} \
CONFIG.GEN_F1_VFRAME_SIZE {806} \
CONFIG.GEN_F1_VSYNC_HEND {1024} \
CONFIG.GEN_F1_VSYNC_HSTART {1024} \
CONFIG.GEN_F1_VSYNC_VEND {776} \
CONFIG.GEN_F1_VSYNC_VSTART {770} \
CONFIG.GEN_HACTIVE_SIZE {1024} \
CONFIG.GEN_HFRAME_SIZE {1344} \
CONFIG.GEN_HSYNC_END {1184} \
CONFIG.GEN_HSYNC_START {1048} \
CONFIG.GEN_VACTIVE_SIZE {768} \
CONFIG.HAS_AXI4_LITE {false} \
CONFIG.VIDEO_MODE {1024x768p} \
CONFIG.enable_detection {false} \
 ] $v_tc_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_vdma_0/S_AXI_LITE] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]

  # Create port connections
  connect_bd_net -net Net [get_bd_ports hdmi_sda] [get_bd_pins hdmi_display_0/hdmi_sda]
  connect_bd_net -net axi_vdma_0_mm2s_introut [get_bd_pins axi_vdma_0/mm2s_introut] [get_bd_pins processing_system7_0/IRQ_F2P]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins hdmi_display_0/vga_clk] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net clk_wiz_0_clk_out3 [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins hdmi_display_0/vga_clk_90]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_pins v_tc_0/clken] [get_bd_pins v_tc_0/resetn]
  connect_bd_net -net hdmi_display_0_hdmi_clk [get_bd_ports hdmi_clk] [get_bd_pins hdmi_display_0/hdmi_clk]
  connect_bd_net -net hdmi_display_0_hdmi_d [get_bd_ports hdmi_d] [get_bd_pins hdmi_display_0/hdmi_d]
  connect_bd_net -net hdmi_display_0_hdmi_de [get_bd_ports hdmi_de] [get_bd_pins hdmi_display_0/hdmi_de]
  connect_bd_net -net hdmi_display_0_hdmi_hsync [get_bd_ports hdmi_hsync] [get_bd_pins hdmi_display_0/hdmi_hsync]
  connect_bd_net -net hdmi_display_0_hdmi_scl [get_bd_ports hdmi_scl] [get_bd_pins hdmi_display_0/hdmi_scl]
  connect_bd_net -net hdmi_display_0_hdmi_vsync [get_bd_ports hdmi_vsync] [get_bd_pins hdmi_display_0/hdmi_vsync]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins hdmi_display_0/i2c_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins rst_processing_system7_0_50M/slowest_sync_clk] [get_bd_pins v_axi4s_vid_out_0/aclk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_processing_system7_0_50M/ext_reset_in]
  connect_bd_net -net rst_processing_system7_0_50M_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins processing_system7_0_axi_periph/ARESETN] [get_bd_pins rst_processing_system7_0_50M/interconnect_aresetn]
  connect_bd_net -net rst_processing_system7_0_50M_peripheral_aresetn [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_processing_system7_0_50M/peripheral_aresetn]
  connect_bd_net -net v_axi4s_vid_out_0_vid_active_video [get_bd_pins hdmi_display_0/de_in] [get_bd_pins v_axi4s_vid_out_0/vid_active_video]
  connect_bd_net -net v_axi4s_vid_out_0_vid_data [get_bd_ports vga_data] [get_bd_pins hdmi_display_0/rgb_in] [get_bd_pins v_axi4s_vid_out_0/vid_data]
  connect_bd_net -net v_axi4s_vid_out_0_vid_hsync [get_bd_ports vga_hs] [get_bd_pins hdmi_display_0/hsync_in] [get_bd_pins v_axi4s_vid_out_0/vid_hsync]
  connect_bd_net -net v_axi4s_vid_out_0_vid_vsync [get_bd_ports vga_vs] [get_bd_pins hdmi_display_0/vsync_in] [get_bd_pins v_axi4s_vid_out_0/vid_vsync]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net vid_io_in_reset_1 [get_bd_pins util_vector_logic_0/Res] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_reset]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000 -offset 0x43000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port DDR -pg 1 -y 100 -defaultsOSRD
preplace port hdmi_de -pg 1 -y 480 -defaultsOSRD
preplace port hdmi_scl -pg 1 -y 500 -defaultsOSRD
preplace port hdmi_vsync -pg 1 -y 440 -defaultsOSRD
preplace port hdmi_hsync -pg 1 -y 420 -defaultsOSRD
preplace port vga_hs -pg 1 -y 340 -defaultsOSRD
preplace port GPIO_0 -pg 1 -y 80 -defaultsOSRD
preplace port hdmi_clk -pg 1 -y 400 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 120 -defaultsOSRD
preplace port vga_vs -pg 1 -y 360 -defaultsOSRD
preplace port hdmi_sda -pg 1 -y 520 -defaultsOSRD
preplace portBus hdmi_d -pg 1 -y 460 -defaultsOSRD
preplace portBus vga_data -pg 1 -y 320 -defaultsOSRD
preplace inst v_axi4s_vid_out_0 -pg 1 -lvl 4 -y 480 -defaultsOSRD
preplace inst axi_vdma_0 -pg 1 -lvl 4 -y -120 -defaultsOSRD
preplace inst v_tc_0 -pg 1 -lvl 3 -y 360 -defaultsOSRD
preplace inst util_vector_logic_0 -pg 1 -lvl 3 -y 520 -defaultsOSRD
preplace inst rst_processing_system7_0_50M -pg 1 -lvl 1 -y 450 -defaultsOSRD
preplace inst hdmi_display_0 -pg 1 -lvl 5 -y 640 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 2 -y 450 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 5 -y 150 -defaultsOSRD
preplace inst processing_system7_0_axi_periph -pg 1 -lvl 5 -y 410 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 4 -y 140 -defaultsOSRD
preplace netloc processing_system7_0_DDR 1 4 2 NJ 30 NJ
preplace netloc v_axi4s_vid_out_0_vid_data 1 4 2 NJ 280 NJ
preplace netloc clk_wiz_0_locked 1 2 2 660 570 1030
preplace netloc processing_system7_0_axi_periph_M00_AXI 1 3 3 NJ 270 NJ 270 1920
preplace netloc rst_processing_system7_0_50M_interconnect_aresetn 1 1 4 NJ 280 NJ 280 NJ 280 1590
preplace netloc hdmi_display_0_hdmi_scl 1 5 1 1990
preplace netloc v_axi4s_vid_out_0_vid_hsync 1 4 2 NJ 290 NJ
preplace netloc processing_system7_0_M_AXI_GP0 1 4 1 1580
preplace netloc axi_vdma_0_M_AXI_MM2S 1 4 1 NJ
preplace netloc axi_vdma_0_M_AXIS_MM2S 1 3 2 1090 -30 1560
preplace netloc hdmi_display_0_hdmi_de 1 5 1 1980
preplace netloc hdmi_display_0_hdmi_hsync 1 5 1 1950
preplace netloc processing_system7_0_FCLK_RESET0_N 1 0 5 20 250 NJ 250 NJ 250 NJ 250 1560
preplace netloc axi_mem_intercon_M00_AXI 1 3 3 1110 0 NJ 0 1920
preplace netloc v_axi4s_vid_out_0_vid_active_video 1 4 1 1550
preplace netloc rst_processing_system7_0_50M_peripheral_aresetn 1 1 4 370 240 NJ 240 NJ 240 1620
preplace netloc hdmi_display_0_hdmi_clk 1 5 1 1940
preplace netloc v_axi4s_vid_out_0_vtg_ce 1 2 3 NJ 670 NJ 670 1530
preplace netloc processing_system7_0_FIXED_IO 1 4 2 NJ 10 NJ
preplace netloc axi_vdma_0_mm2s_introut 1 3 2 1100 -20 1550
preplace netloc vid_io_in_reset_1 1 3 1 1020
preplace netloc clk_wiz_0_clk_out2 1 2 3 650 440 1040 660 1570
preplace netloc Net 1 5 1 2000
preplace netloc clk_wiz_0_clk_out3 1 2 3 NJ 450 NJ 300 1560
preplace netloc processing_system7_0_FCLK_CLK0 1 0 5 30 360 390 270 N 270 1070 40 1570
preplace netloc v_tc_0_vtiming_out 1 3 1 1060
preplace netloc v_axi4s_vid_out_0_vid_vsync 1 4 2 NJ 530 NJ
preplace netloc hdmi_display_0_hdmi_d 1 5 1 1970
preplace netloc hdmi_display_0_hdmi_vsync 1 5 1 1960
levelinfo -pg 1 0 200 570 910 1320 1770 2020 -top -210 -bot 750
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


