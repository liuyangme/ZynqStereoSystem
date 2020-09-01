
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-2
}


# CHANGE DESIGN NAME HERE
variable design_name
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

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR_0 ]

  set FIXED_IO_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO_0 ]

  set GPIO_0_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 GPIO_0_0 ]

  set IIC_0_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_0_0 ]

  set IIC_1_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_1_0 ]

  set SDIO_0_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:sdio_rtl:1.0 SDIO_0_0 ]

  set USBIND_0_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:usbctrl_rtl:1.0 USBIND_0_0 ]


  # Create ports
  set HDMI_CLK_N_0 [ create_bd_port -dir O -type clk HDMI_CLK_N_0 ]
  set HDMI_CLK_P_0 [ create_bd_port -dir O -type clk HDMI_CLK_P_0 ]
  set HDMI_D0_N_0 [ create_bd_port -dir O HDMI_D0_N_0 ]
  set HDMI_D0_P_0 [ create_bd_port -dir O HDMI_D0_P_0 ]
  set HDMI_D1_N_0 [ create_bd_port -dir O HDMI_D1_N_0 ]
  set HDMI_D1_P_0 [ create_bd_port -dir O HDMI_D1_P_0 ]
  set HDMI_D2_N_0 [ create_bd_port -dir O HDMI_D2_N_0 ]
  set HDMI_D2_P_0 [ create_bd_port -dir O HDMI_D2_P_0 ]
  set cmos_data_i_0 [ create_bd_port -dir I -from 7 -to 0 cmos_data_i_0 ]
  set cmos_data_i_1 [ create_bd_port -dir I -from 7 -to 0 cmos_data_i_1 ]
  set cmos_href_i_0 [ create_bd_port -dir I cmos_href_i_0 ]
  set cmos_href_i_1 [ create_bd_port -dir I cmos_href_i_1 ]
  set cmos_pclk_i_0 [ create_bd_port -dir I cmos_pclk_i_0 ]
  set cmos_pclk_i_1 [ create_bd_port -dir I cmos_pclk_i_1 ]
  set cmos_vsync_i_0 [ create_bd_port -dir I cmos_vsync_i_0 ]
  set cmos_vsync_i_1 [ create_bd_port -dir I cmos_vsync_i_1 ]
  set cmos_xclk_o_0 [ create_bd_port -dir O cmos_xclk_o_0 ]
  set cmos_xclk_o_1 [ create_bd_port -dir O cmos_xclk_o_1 ]

  # Create instance: HDMI_tx_0, and set properties
  set HDMI_tx_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:HDMI_tx:1.0 HDMI_tx_0 ]

  # Create instance: OVSensor_0, and set properties
  set OVSensor_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:OVSensor:1.0 OVSensor_0 ]

  # Create instance: OVSensor_1, and set properties
  set OVSensor_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:OVSensor:1.0 OVSensor_1 ]

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {6} \
 ] $axi_interconnect_1

  # Create instance: axi_mem_interconnect_0, and set properties
  set axi_mem_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {2} \
 ] $axi_mem_interconnect_0

  # Create instance: axi_mem_interconnect_1, and set properties
  set axi_mem_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_interconnect_1 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {2} \
 ] $axi_mem_interconnect_1

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_0 ]
  set_property -dict [ list \
   CONFIG.c_include_s2mm {0} \
   CONFIG.c_m_axis_mm2s_tdata_width {24} \
   CONFIG.c_mm2s_max_burst_length {128} \
   CONFIG.c_s2mm_genlock_mode {0} \
 ] $axi_vdma_0

  # Create instance: axi_vdma_1, and set properties
  set axi_vdma_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_1 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {0} \
   CONFIG.c_include_s2mm_dre {1} \
   CONFIG.c_m_axi_s2mm_data_width {64} \
   CONFIG.c_mm2s_genlock_mode {0} \
   CONFIG.c_s2mm_genlock_mode {0} \
   CONFIG.c_s2mm_linebuffer_depth {4096} \
   CONFIG.c_s2mm_max_burst_length {128} \
 ] $axi_vdma_1

  # Create instance: axi_vdma_2, and set properties
  set axi_vdma_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_2 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s_dre {1} \
   CONFIG.c_include_s2mm {0} \
   CONFIG.c_m_axis_mm2s_tdata_width {24} \
   CONFIG.c_mm2s_genlock_mode {1} \
   CONFIG.c_mm2s_max_burst_length {128} \
   CONFIG.c_s2mm_genlock_mode {0} \
 ] $axi_vdma_2

  # Create instance: axi_vdma_3, and set properties
  set axi_vdma_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_3 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {0} \
   CONFIG.c_include_s2mm_dre {1} \
   CONFIG.c_m_axi_s2mm_data_width {64} \
   CONFIG.c_mm2s_genlock_mode {0} \
   CONFIG.c_s2mm_genlock_mode {0} \
   CONFIG.c_s2mm_linebuffer_depth {4096} \
   CONFIG.c_s2mm_max_burst_length {128} \
 ] $axi_vdma_3

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {337.616} \
   CONFIG.CLKOUT1_PHASE_ERROR {322.999} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {74.25} \
   CONFIG.CLKOUT2_JITTER {258.703} \
   CONFIG.CLKOUT2_PHASE_ERROR {322.999} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {371.25} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {37.125} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {2} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.NUM_OUT_CLKS {2} \
 ] $clk_wiz_0

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_INPUT_PIPE_STAGES {0} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {4} \
   CONFIG.C_PROBE3_WIDTH {24} \
 ] $ila_0

  # Create instance: ila_1, and set properties
  set ila_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_1 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {4} \
   CONFIG.C_PROBE3_WIDTH {24} \
 ] $ila_1

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {675.000000} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.096154} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {25.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {112.500000} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {112.500000} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {112.500000} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {112.500000} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {112.500000} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {112.500000} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {112.500000} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {27} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {25000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1350.000} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {52} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {21} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1050.000} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_CLK1_PORT {1} \
   CONFIG.PCW_EN_EMIO_CD_SDIO0 {1} \
   CONFIG.PCW_EN_EMIO_CD_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_ENET0 {0} \
   CONFIG.PCW_EN_EMIO_GPIO {1} \
   CONFIG.PCW_EN_EMIO_I2C0 {1} \
   CONFIG.PCW_EN_EMIO_I2C1 {1} \
   CONFIG.PCW_EN_EMIO_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO1 {0} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_I2C0 {1} \
   CONFIG.PCW_EN_I2C1 {1} \
   CONFIG.PCW_EN_QSPI {1} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_SDIO1 {1} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_EN_USB0 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {5} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_EMIO_GPIO_IO {64} \
   CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {64} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {1} \
   CONFIG.PCW_I2C0_GRP_INT_IO {EMIO} \
   CONFIG.PCW_I2C0_I2C0_IO {EMIO} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_GRP_INT_ENABLE {1} \
   CONFIG.PCW_I2C1_GRP_INT_IO {EMIO} \
   CONFIG.PCW_I2C1_I2C1_IO {EMIO} \
   CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {112.500000} \
   CONFIG.PCW_I2C_RESET_ENABLE {1} \
   CONFIG.PCW_I2C_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {20} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_MIO_0_DIRECTION {in} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {enabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {enabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {enabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {enabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {enabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {inout} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {enabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {inout} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {enabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {out} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {enabled} \
   CONFIG.PCW_MIO_16_SLEW {slow} \
   CONFIG.PCW_MIO_17_DIRECTION {out} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {enabled} \
   CONFIG.PCW_MIO_17_SLEW {slow} \
   CONFIG.PCW_MIO_18_DIRECTION {out} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {enabled} \
   CONFIG.PCW_MIO_18_SLEW {slow} \
   CONFIG.PCW_MIO_19_DIRECTION {out} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {enabled} \
   CONFIG.PCW_MIO_19_SLEW {slow} \
   CONFIG.PCW_MIO_1_DIRECTION {out} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {enabled} \
   CONFIG.PCW_MIO_1_SLEW {slow} \
   CONFIG.PCW_MIO_20_DIRECTION {out} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {enabled} \
   CONFIG.PCW_MIO_20_SLEW {slow} \
   CONFIG.PCW_MIO_21_DIRECTION {out} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {enabled} \
   CONFIG.PCW_MIO_21_SLEW {slow} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {enabled} \
   CONFIG.PCW_MIO_22_SLEW {slow} \
   CONFIG.PCW_MIO_23_DIRECTION {in} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {enabled} \
   CONFIG.PCW_MIO_23_SLEW {slow} \
   CONFIG.PCW_MIO_24_DIRECTION {in} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {enabled} \
   CONFIG.PCW_MIO_24_SLEW {slow} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {enabled} \
   CONFIG.PCW_MIO_25_SLEW {slow} \
   CONFIG.PCW_MIO_26_DIRECTION {in} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {enabled} \
   CONFIG.PCW_MIO_26_SLEW {slow} \
   CONFIG.PCW_MIO_27_DIRECTION {in} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {enabled} \
   CONFIG.PCW_MIO_27_SLEW {slow} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_28_PULLUP {enabled} \
   CONFIG.PCW_MIO_28_SLEW {slow} \
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {enabled} \
   CONFIG.PCW_MIO_29_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {enabled} \
   CONFIG.PCW_MIO_30_SLEW {slow} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_31_PULLUP {enabled} \
   CONFIG.PCW_MIO_31_SLEW {slow} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_32_PULLUP {enabled} \
   CONFIG.PCW_MIO_32_SLEW {slow} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_33_PULLUP {enabled} \
   CONFIG.PCW_MIO_33_SLEW {slow} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_34_PULLUP {enabled} \
   CONFIG.PCW_MIO_34_SLEW {slow} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_35_PULLUP {enabled} \
   CONFIG.PCW_MIO_35_SLEW {slow} \
   CONFIG.PCW_MIO_36_DIRECTION {in} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_36_PULLUP {enabled} \
   CONFIG.PCW_MIO_36_SLEW {slow} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_37_PULLUP {enabled} \
   CONFIG.PCW_MIO_37_SLEW {slow} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_38_PULLUP {enabled} \
   CONFIG.PCW_MIO_38_SLEW {slow} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_39_PULLUP {enabled} \
   CONFIG.PCW_MIO_39_SLEW {slow} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_40_PULLUP {enabled} \
   CONFIG.PCW_MIO_40_SLEW {slow} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_41_PULLUP {enabled} \
   CONFIG.PCW_MIO_41_SLEW {slow} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_42_PULLUP {enabled} \
   CONFIG.PCW_MIO_42_SLEW {slow} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_43_PULLUP {enabled} \
   CONFIG.PCW_MIO_43_SLEW {slow} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_44_PULLUP {enabled} \
   CONFIG.PCW_MIO_44_SLEW {slow} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_45_PULLUP {enabled} \
   CONFIG.PCW_MIO_45_SLEW {slow} \
   CONFIG.PCW_MIO_46_DIRECTION {out} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_46_PULLUP {enabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {inout} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_47_PULLUP {enabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {out} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {enabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {in} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {enabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {enabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_51_PULLUP {enabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {out} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {enabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {enabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {out} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {slow} \
   CONFIG.PCW_MIO_9_DIRECTION {in} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {enabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {SD 1#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#Quad SPI Flash#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#USB Reset#GPIO#UART 1#UART 1#GPIO#GPIO#Enet 0#Enet 0} \
   CONFIG.PCW_MIO_TREE_SIGNALS {wp#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#gpio[7]#qspi_fbclk#cd#data[0]#cmd#clk#data[1]#data[2]#data[3]#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#reset#gpio[47]#tx#rx#gpio[50]#gpio[51]#mdc#mdio} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_FBCLK_IO {MIO 8} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_CD_IO {EMIO} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SD1_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD1_GRP_CD_IO {MIO 9} \
   CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_WP_ENABLE {1} \
   CONFIG.PCW_SD1_GRP_WP_IO {MIO 0} \
   CONFIG.PCW_SD1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD1_SD1_IO {MIO 10 .. 15} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {10} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {10} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {525.000000} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J256M16 RE-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.91} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {1} \
   CONFIG.PCW_USB0_RESET_IO {MIO 46} \
   CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
   CONFIG.PCW_USE_S_AXI_HP1 {1} \
 ] $processing_system7_0

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]
  set_property -dict [ list \
   CONFIG.C_MON_TYPE {MIX} \
   CONFIG.C_NUM_MONITOR_SLOTS {11} \
   CONFIG.C_NUM_OF_PROBES {2} \
   CONFIG.C_PROBE0_TYPE {0} \
   CONFIG.C_PROBE1_TYPE {0} \
   CONFIG.C_SLOT_0_APC_EN {0} \
   CONFIG.C_SLOT_0_AXI_AR_SEL_DATA {1} \
   CONFIG.C_SLOT_0_AXI_AR_SEL_TRIG {1} \
   CONFIG.C_SLOT_0_AXI_AW_SEL_DATA {1} \
   CONFIG.C_SLOT_0_AXI_AW_SEL_TRIG {1} \
   CONFIG.C_SLOT_0_AXI_B_SEL_DATA {1} \
   CONFIG.C_SLOT_0_AXI_B_SEL_TRIG {1} \
   CONFIG.C_SLOT_0_AXI_R_SEL_DATA {1} \
   CONFIG.C_SLOT_0_AXI_R_SEL_TRIG {1} \
   CONFIG.C_SLOT_0_AXI_W_SEL_DATA {1} \
   CONFIG.C_SLOT_0_AXI_W_SEL_TRIG {1} \
   CONFIG.C_SLOT_0_INTF_TYPE {xilinx.com:interface:aximm_rtl:1.0} \
   CONFIG.C_SLOT_10_APC_EN {0} \
   CONFIG.C_SLOT_10_AXI_DATA_SEL {1} \
   CONFIG.C_SLOT_10_AXI_TRIG_SEL {1} \
   CONFIG.C_SLOT_10_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_1_APC_EN {0} \
   CONFIG.C_SLOT_1_AXI_AR_SEL_DATA {1} \
   CONFIG.C_SLOT_1_AXI_AR_SEL_TRIG {1} \
   CONFIG.C_SLOT_1_AXI_AW_SEL_DATA {1} \
   CONFIG.C_SLOT_1_AXI_AW_SEL_TRIG {1} \
   CONFIG.C_SLOT_1_AXI_B_SEL_DATA {1} \
   CONFIG.C_SLOT_1_AXI_B_SEL_TRIG {1} \
   CONFIG.C_SLOT_1_AXI_R_SEL_DATA {1} \
   CONFIG.C_SLOT_1_AXI_R_SEL_TRIG {1} \
   CONFIG.C_SLOT_1_AXI_W_SEL_DATA {1} \
   CONFIG.C_SLOT_1_AXI_W_SEL_TRIG {1} \
   CONFIG.C_SLOT_1_INTF_TYPE {xilinx.com:interface:aximm_rtl:1.0} \
   CONFIG.C_SLOT_2_APC_EN {0} \
   CONFIG.C_SLOT_2_AXI_DATA_SEL {1} \
   CONFIG.C_SLOT_2_AXI_TRIG_SEL {1} \
   CONFIG.C_SLOT_2_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_3_APC_EN {0} \
   CONFIG.C_SLOT_3_AXI_AR_SEL_DATA {1} \
   CONFIG.C_SLOT_3_AXI_AR_SEL_TRIG {1} \
   CONFIG.C_SLOT_3_AXI_AW_SEL_DATA {1} \
   CONFIG.C_SLOT_3_AXI_AW_SEL_TRIG {1} \
   CONFIG.C_SLOT_3_AXI_B_SEL_DATA {1} \
   CONFIG.C_SLOT_3_AXI_B_SEL_TRIG {1} \
   CONFIG.C_SLOT_3_AXI_R_SEL_DATA {1} \
   CONFIG.C_SLOT_3_AXI_R_SEL_TRIG {1} \
   CONFIG.C_SLOT_3_AXI_W_SEL_DATA {1} \
   CONFIG.C_SLOT_3_AXI_W_SEL_TRIG {1} \
   CONFIG.C_SLOT_3_INTF_TYPE {xilinx.com:interface:aximm_rtl:1.0} \
   CONFIG.C_SLOT_4_APC_EN {0} \
   CONFIG.C_SLOT_4_AXI_DATA_SEL {1} \
   CONFIG.C_SLOT_4_AXI_TRIG_SEL {1} \
   CONFIG.C_SLOT_4_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_5_APC_EN {0} \
   CONFIG.C_SLOT_5_AXI_AR_SEL_DATA {1} \
   CONFIG.C_SLOT_5_AXI_AR_SEL_TRIG {1} \
   CONFIG.C_SLOT_5_AXI_AW_SEL_DATA {1} \
   CONFIG.C_SLOT_5_AXI_AW_SEL_TRIG {1} \
   CONFIG.C_SLOT_5_AXI_B_SEL_DATA {1} \
   CONFIG.C_SLOT_5_AXI_B_SEL_TRIG {1} \
   CONFIG.C_SLOT_5_AXI_R_SEL_DATA {1} \
   CONFIG.C_SLOT_5_AXI_R_SEL_TRIG {1} \
   CONFIG.C_SLOT_5_AXI_W_SEL_DATA {1} \
   CONFIG.C_SLOT_5_AXI_W_SEL_TRIG {1} \
   CONFIG.C_SLOT_5_INTF_TYPE {xilinx.com:interface:aximm_rtl:1.0} \
   CONFIG.C_SLOT_6_APC_EN {0} \
   CONFIG.C_SLOT_6_AXI_AR_SEL_DATA {1} \
   CONFIG.C_SLOT_6_AXI_AR_SEL_TRIG {1} \
   CONFIG.C_SLOT_6_AXI_AW_SEL_DATA {1} \
   CONFIG.C_SLOT_6_AXI_AW_SEL_TRIG {1} \
   CONFIG.C_SLOT_6_AXI_B_SEL_DATA {1} \
   CONFIG.C_SLOT_6_AXI_B_SEL_TRIG {1} \
   CONFIG.C_SLOT_6_AXI_R_SEL_DATA {1} \
   CONFIG.C_SLOT_6_AXI_R_SEL_TRIG {1} \
   CONFIG.C_SLOT_6_AXI_W_SEL_DATA {1} \
   CONFIG.C_SLOT_6_AXI_W_SEL_TRIG {1} \
   CONFIG.C_SLOT_6_INTF_TYPE {xilinx.com:interface:aximm_rtl:1.0} \
   CONFIG.C_SLOT_7_APC_EN {0} \
   CONFIG.C_SLOT_7_AXI_AR_SEL_DATA {1} \
   CONFIG.C_SLOT_7_AXI_AR_SEL_TRIG {1} \
   CONFIG.C_SLOT_7_AXI_AW_SEL_DATA {1} \
   CONFIG.C_SLOT_7_AXI_AW_SEL_TRIG {1} \
   CONFIG.C_SLOT_7_AXI_B_SEL_DATA {1} \
   CONFIG.C_SLOT_7_AXI_B_SEL_TRIG {1} \
   CONFIG.C_SLOT_7_AXI_R_SEL_DATA {1} \
   CONFIG.C_SLOT_7_AXI_R_SEL_TRIG {1} \
   CONFIG.C_SLOT_7_AXI_W_SEL_DATA {1} \
   CONFIG.C_SLOT_7_AXI_W_SEL_TRIG {1} \
   CONFIG.C_SLOT_7_INTF_TYPE {xilinx.com:interface:aximm_rtl:1.0} \
   CONFIG.C_SLOT_8_APC_EN {0} \
   CONFIG.C_SLOT_8_AXI_DATA_SEL {1} \
   CONFIG.C_SLOT_8_AXI_TRIG_SEL {1} \
   CONFIG.C_SLOT_8_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_9_APC_EN {0} \
   CONFIG.C_SLOT_9_AXI_DATA_SEL {1} \
   CONFIG.C_SLOT_9_AXI_TRIG_SEL {1} \
   CONFIG.C_SLOT_9_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
 ] $system_ila_0

  # Create instance: system_ila_1, and set properties
  set system_ila_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_1 ]
  set_property -dict [ list \
   CONFIG.C_MON_TYPE {INTERFACE} \
   CONFIG.C_NUM_MONITOR_SLOTS {1} \
   CONFIG.C_SLOT_0_INTF_TYPE {xilinx.com:interface:iic_rtl:1.0} \
   CONFIG.C_SLOT_0_TYPE {0} \
 ] $system_ila_1

  # Create instance: system_ila_2, and set properties
  set system_ila_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_2 ]
  set_property -dict [ list \
   CONFIG.C_MON_TYPE {INTERFACE} \
   CONFIG.C_NUM_MONITOR_SLOTS {1} \
   CONFIG.C_SLOT_0_INTF_TYPE {xilinx.com:interface:iic_rtl:1.0} \
   CONFIG.C_SLOT_0_TYPE {0} \
 ] $system_ila_2

  # Create instance: system_ila_4, and set properties
  set system_ila_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_4 ]
  set_property -dict [ list \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_OF_PROBES {1} \
   CONFIG.C_PROBE0_TYPE {0} \
 ] $system_ila_4

  # Create instance: system_ila_7, and set properties
  set system_ila_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_7 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {1} \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_OF_PROBES {3} \
   CONFIG.C_PROBE0_TYPE {0} \
   CONFIG.C_PROBE0_WIDTH {24} \
   CONFIG.C_PROBE_WIDTH_PROPAGATION {MANUAL} \
 ] $system_ila_7

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
   CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_mix_0, and set properties
  set v_mix_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_mix:4.0 v_mix_0 ]
  set_property -dict [ list \
   CONFIG.LAYER1_ALPHA {true} \
   CONFIG.LAYER1_INTF_TYPE {1} \
   CONFIG.LAYER1_VIDEO_FORMAT {0} \
   CONFIG.LAYER2_ALPHA {true} \
   CONFIG.LAYER2_INTF_TYPE {1} \
   CONFIG.LAYER2_VIDEO_FORMAT {0} \
   CONFIG.NR_LAYERS {2} \
 ] $v_mix_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.2 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.HAS_AXI4_LITE {true} \
   CONFIG.enable_detection {false} \
 ] $v_tc_0

  # Create instance: v_vid_in_axi4s_0, and set properties
  set v_vid_in_axi4s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_0 ]
  set_property -dict [ list \
   CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_vid_in_axi4s_0

  # Create instance: v_vid_in_axi4s_1, and set properties
  set v_vid_in_axi4s_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_1 ]
  set_property -dict [ list \
   CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_vid_in_axi4s_1

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {6} \
 ] $xlconcat_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_mem_interconnect_0/S00_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
connect_bd_intf_net -intf_net [get_bd_intf_nets S00_AXI_1] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S] [get_bd_intf_pins system_ila_0/SLOT_6_AXI]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets S00_AXI_1]
  connect_bd_intf_net -intf_net S00_AXI_2 [get_bd_intf_pins axi_mem_interconnect_1/S00_AXI] [get_bd_intf_pins axi_vdma_2/M_AXI_MM2S]
connect_bd_intf_net -intf_net [get_bd_intf_nets S00_AXI_2] [get_bd_intf_pins axi_vdma_2/M_AXI_MM2S] [get_bd_intf_pins system_ila_0/SLOT_7_AXI]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets S00_AXI_2]
  connect_bd_intf_net -intf_net S00_AXI_3 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins axi_interconnect_1/M00_AXI] [get_bd_intf_pins axi_vdma_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_1_M01_AXI [get_bd_intf_pins axi_interconnect_1/M01_AXI] [get_bd_intf_pins axi_vdma_3/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_1_M02_AXI [get_bd_intf_pins axi_interconnect_1/M02_AXI] [get_bd_intf_pins v_tc_0/ctrl]
  connect_bd_intf_net -intf_net axi_interconnect_1_M03_AXI [get_bd_intf_pins axi_interconnect_1/M03_AXI] [get_bd_intf_pins axi_vdma_2/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_1_M04_AXI [get_bd_intf_pins axi_interconnect_1/M04_AXI] [get_bd_intf_pins axi_vdma_1/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_1_M05_AXI [get_bd_intf_pins axi_interconnect_1/M05_AXI] [get_bd_intf_pins v_mix_0/s_axi_CTRL]
  connect_bd_intf_net -intf_net axi_mem_interconnect_0_M00_AXI [get_bd_intf_pins axi_mem_interconnect_0/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_mem_interconnect_0_M00_AXI] [get_bd_intf_pins axi_mem_interconnect_0/M00_AXI] [get_bd_intf_pins system_ila_0/SLOT_0_AXI]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets axi_mem_interconnect_0_M00_AXI]
  connect_bd_intf_net -intf_net axi_mem_interconnect_1_M00_AXI [get_bd_intf_pins axi_mem_interconnect_1/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP1]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_mem_interconnect_1_M00_AXI] [get_bd_intf_pins axi_mem_interconnect_1/M00_AXI] [get_bd_intf_pins system_ila_0/SLOT_1_AXI]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets axi_mem_interconnect_1_M00_AXI]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins v_mix_0/s_axis_video1]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_vdma_0_M_AXIS_MM2S] [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins system_ila_0/SLOT_2_AXIS]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets axi_vdma_0_M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_1_M_AXI_S2MM [get_bd_intf_pins axi_mem_interconnect_0/S01_AXI] [get_bd_intf_pins axi_vdma_1/M_AXI_S2MM]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_vdma_1_M_AXI_S2MM] [get_bd_intf_pins axi_vdma_1/M_AXI_S2MM] [get_bd_intf_pins system_ila_0/SLOT_3_AXI]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets axi_vdma_1_M_AXI_S2MM]
  connect_bd_intf_net -intf_net axi_vdma_2_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_2/M_AXIS_MM2S] [get_bd_intf_pins v_mix_0/s_axis_video]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_vdma_2_M_AXIS_MM2S] [get_bd_intf_pins axi_vdma_2/M_AXIS_MM2S] [get_bd_intf_pins system_ila_0/SLOT_4_AXIS]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets axi_vdma_2_M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_3_M_AXI_S2MM [get_bd_intf_pins axi_mem_interconnect_1/S01_AXI] [get_bd_intf_pins axi_vdma_3/M_AXI_S2MM]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_vdma_3_M_AXI_S2MM] [get_bd_intf_pins axi_vdma_3/M_AXI_S2MM] [get_bd_intf_pins system_ila_0/SLOT_5_AXI]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets axi_vdma_3_M_AXI_S2MM]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR_0] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO_0] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_GPIO_0 [get_bd_intf_ports GPIO_0_0] [get_bd_intf_pins processing_system7_0/GPIO_0]
  connect_bd_intf_net -intf_net processing_system7_0_IIC_0 [get_bd_intf_ports IIC_0_0] [get_bd_intf_pins processing_system7_0/IIC_0]
connect_bd_intf_net -intf_net [get_bd_intf_nets processing_system7_0_IIC_0] [get_bd_intf_ports IIC_0_0] [get_bd_intf_pins system_ila_1/SLOT_0_IIC]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets processing_system7_0_IIC_0]
  connect_bd_intf_net -intf_net processing_system7_0_IIC_1 [get_bd_intf_ports IIC_1_0] [get_bd_intf_pins processing_system7_0/IIC_1]
connect_bd_intf_net -intf_net [get_bd_intf_nets processing_system7_0_IIC_1] [get_bd_intf_ports IIC_1_0] [get_bd_intf_pins system_ila_2/SLOT_0_IIC]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets processing_system7_0_IIC_1]
  connect_bd_intf_net -intf_net processing_system7_0_SDIO_0 [get_bd_intf_ports SDIO_0_0] [get_bd_intf_pins processing_system7_0/SDIO_0]
  connect_bd_intf_net -intf_net processing_system7_0_USBIND_0 [get_bd_intf_ports USBIND_0_0] [get_bd_intf_pins processing_system7_0/USBIND_0]
  connect_bd_intf_net -intf_net v_mix_0_m_axis_video [get_bd_intf_pins v_axi4s_vid_out_0/video_in] [get_bd_intf_pins v_mix_0/m_axis_video]
connect_bd_intf_net -intf_net [get_bd_intf_nets v_mix_0_m_axis_video] [get_bd_intf_pins system_ila_0/SLOT_8_AXIS] [get_bd_intf_pins v_mix_0/m_axis_video]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets v_mix_0_m_axis_video]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_0_video_out [get_bd_intf_pins axi_vdma_1/S_AXIS_S2MM] [get_bd_intf_pins v_vid_in_axi4s_0/video_out]
connect_bd_intf_net -intf_net [get_bd_intf_nets v_vid_in_axi4s_0_video_out] [get_bd_intf_pins axi_vdma_1/S_AXIS_S2MM] [get_bd_intf_pins system_ila_0/SLOT_9_AXIS]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets v_vid_in_axi4s_0_video_out]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_1_video_out [get_bd_intf_pins axi_vdma_3/S_AXIS_S2MM] [get_bd_intf_pins v_vid_in_axi4s_1/video_out]
connect_bd_intf_net -intf_net [get_bd_intf_nets v_vid_in_axi4s_1_video_out] [get_bd_intf_pins axi_vdma_3/S_AXIS_S2MM] [get_bd_intf_pins system_ila_0/SLOT_10_AXIS]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets v_vid_in_axi4s_1_video_out]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins axi_mem_interconnect_0/ARESETN] [get_bd_pins axi_mem_interconnect_1/ARESETN] [get_bd_pins proc_sys_reset_0/interconnect_aresetn] [get_bd_pins system_ila_0/probe0]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets ARESETN_1]
  connect_bd_net -net HDMI_tx_0_HDMI_CLK_N [get_bd_ports HDMI_CLK_N_0] [get_bd_pins HDMI_tx_0/HDMI_CLK_N]
  connect_bd_net -net HDMI_tx_0_HDMI_CLK_P [get_bd_ports HDMI_CLK_P_0] [get_bd_pins HDMI_tx_0/HDMI_CLK_P]
  connect_bd_net -net HDMI_tx_0_HDMI_D0_N [get_bd_ports HDMI_D0_N_0] [get_bd_pins HDMI_tx_0/HDMI_D0_N]
  connect_bd_net -net HDMI_tx_0_HDMI_D0_P [get_bd_ports HDMI_D0_P_0] [get_bd_pins HDMI_tx_0/HDMI_D0_P]
  connect_bd_net -net HDMI_tx_0_HDMI_D1_N [get_bd_ports HDMI_D1_N_0] [get_bd_pins HDMI_tx_0/HDMI_D1_N]
  connect_bd_net -net HDMI_tx_0_HDMI_D1_P [get_bd_ports HDMI_D1_P_0] [get_bd_pins HDMI_tx_0/HDMI_D1_P]
  connect_bd_net -net HDMI_tx_0_HDMI_D2_N [get_bd_ports HDMI_D2_N_0] [get_bd_pins HDMI_tx_0/HDMI_D2_N]
  connect_bd_net -net HDMI_tx_0_HDMI_D2_P [get_bd_ports HDMI_D2_P_0] [get_bd_pins HDMI_tx_0/HDMI_D2_P]
  connect_bd_net -net Net1 [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/M01_ACLK] [get_bd_pins axi_interconnect_1/M02_ACLK] [get_bd_pins axi_interconnect_1/M03_ACLK] [get_bd_pins axi_interconnect_1/M04_ACLK] [get_bd_pins axi_interconnect_1/M05_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins axi_mem_interconnect_0/ACLK] [get_bd_pins axi_mem_interconnect_0/M00_ACLK] [get_bd_pins axi_mem_interconnect_0/S00_ACLK] [get_bd_pins axi_mem_interconnect_0/S01_ACLK] [get_bd_pins axi_mem_interconnect_1/ACLK] [get_bd_pins axi_mem_interconnect_1/M00_ACLK] [get_bd_pins axi_mem_interconnect_1/S00_ACLK] [get_bd_pins axi_mem_interconnect_1/S01_ACLK] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins axi_vdma_1/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_1/s_axi_lite_aclk] [get_bd_pins axi_vdma_1/s_axis_s2mm_aclk] [get_bd_pins axi_vdma_2/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_2/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_2/s_axi_lite_aclk] [get_bd_pins axi_vdma_3/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_3/s_axi_lite_aclk] [get_bd_pins axi_vdma_3/s_axis_s2mm_aclk] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins ila_0/clk] [get_bd_pins ila_1/clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP1_ACLK] [get_bd_pins system_ila_0/clk] [get_bd_pins system_ila_1/clk] [get_bd_pins system_ila_2/clk] [get_bd_pins system_ila_4/clk] [get_bd_pins system_ila_7/clk] [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins v_mix_0/ap_clk] [get_bd_pins v_tc_0/s_axi_aclk] [get_bd_pins v_vid_in_axi4s_0/aclk] [get_bd_pins v_vid_in_axi4s_1/aclk]
  connect_bd_net -net Net2 [get_bd_pins HDMI_tx_0/LOCKED_I] [get_bd_pins HDMI_tx_0/RST_N] [get_bd_pins clk_wiz_0/locked] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_pins v_tc_0/clken] [get_bd_pins v_tc_0/resetn] [get_bd_pins v_vid_in_axi4s_0/aclken] [get_bd_pins v_vid_in_axi4s_0/aresetn] [get_bd_pins v_vid_in_axi4s_0/axis_enable] [get_bd_pins v_vid_in_axi4s_1/aclken] [get_bd_pins v_vid_in_axi4s_1/aresetn] [get_bd_pins v_vid_in_axi4s_1/axis_enable]
  connect_bd_net -net Net3 [get_bd_pins HDMI_tx_0/PXLCLK_I] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins system_ila_7/probe1] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets Net3]
  connect_bd_net -net OVSensor_0_cmos_xclk_o [get_bd_ports cmos_xclk_o_1] [get_bd_pins OVSensor_0/cmos_xclk_o]
  connect_bd_net -net OVSensor_0_hs_o [get_bd_pins OVSensor_0/hs_o] [get_bd_pins ila_0/probe1] [get_bd_pins v_vid_in_axi4s_0/vid_active_video] [get_bd_pins v_vid_in_axi4s_0/vid_hsync]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets OVSensor_0_hs_o]
  connect_bd_net -net OVSensor_0_rgb_o [get_bd_pins OVSensor_0/rgb_o] [get_bd_pins ila_0/probe3] [get_bd_pins v_vid_in_axi4s_0/vid_data]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets OVSensor_0_rgb_o]
  connect_bd_net -net OVSensor_0_vid_clk_ce [get_bd_pins OVSensor_0/vid_clk_ce] [get_bd_pins ila_0/probe0] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_ce]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets OVSensor_0_vid_clk_ce]
  connect_bd_net -net OVSensor_0_vs_o [get_bd_pins OVSensor_0/vs_o] [get_bd_pins ila_0/probe2] [get_bd_pins v_vid_in_axi4s_0/vid_vsync]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets OVSensor_0_vs_o]
  connect_bd_net -net OVSensor_1_cmos_xclk_o [get_bd_ports cmos_xclk_o_0] [get_bd_pins OVSensor_1/cmos_xclk_o]
  connect_bd_net -net OVSensor_1_hs_o [get_bd_pins OVSensor_1/hs_o] [get_bd_pins ila_1/probe1] [get_bd_pins v_vid_in_axi4s_1/vid_active_video] [get_bd_pins v_vid_in_axi4s_1/vid_hsync]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets OVSensor_1_hs_o]
  connect_bd_net -net OVSensor_1_rgb_o [get_bd_pins OVSensor_1/rgb_o] [get_bd_pins ila_1/probe3] [get_bd_pins v_vid_in_axi4s_1/vid_data]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets OVSensor_1_rgb_o]
  connect_bd_net -net OVSensor_1_vid_clk_ce [get_bd_pins OVSensor_1/vid_clk_ce] [get_bd_pins ila_1/probe0] [get_bd_pins v_vid_in_axi4s_1/vid_io_in_ce]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets OVSensor_1_vid_clk_ce]
  connect_bd_net -net OVSensor_1_vs_o [get_bd_pins OVSensor_1/vs_o] [get_bd_pins ila_1/probe2] [get_bd_pins v_vid_in_axi4s_1/vid_vsync]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets OVSensor_1_vs_o]
  connect_bd_net -net axi_vdma_0_mm2s_introut [get_bd_pins axi_vdma_0/mm2s_introut] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net axi_vdma_1_s2mm_introut [get_bd_pins axi_vdma_1/s2mm_introut] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net axi_vdma_2_mm2s_introut [get_bd_pins axi_vdma_2/mm2s_introut] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_vdma_3_s2mm_introut [get_bd_pins axi_vdma_3/s2mm_introut] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins HDMI_tx_0/PXLCLK_5X_I] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins system_ila_7/probe2]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets clk_wiz_0_clk_out2]
  connect_bd_net -net cmos_data_i_0_1 [get_bd_ports cmos_data_i_0] [get_bd_pins OVSensor_0/cmos_data_i]
  connect_bd_net -net cmos_data_i_1_1 [get_bd_ports cmos_data_i_1] [get_bd_pins OVSensor_1/cmos_data_i]
  connect_bd_net -net cmos_href_i_0_1 [get_bd_ports cmos_href_i_0] [get_bd_pins OVSensor_0/cmos_href_i]
  connect_bd_net -net cmos_href_i_1_1 [get_bd_ports cmos_href_i_1] [get_bd_pins OVSensor_1/cmos_href_i]
  connect_bd_net -net cmos_pclk_i_0_1 [get_bd_ports cmos_pclk_i_0] [get_bd_pins OVSensor_0/cmos_pclk_i] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_clk]
  connect_bd_net -net cmos_pclk_i_1_1 [get_bd_ports cmos_pclk_i_1] [get_bd_pins OVSensor_1/cmos_pclk_i] [get_bd_pins v_vid_in_axi4s_1/vid_io_in_clk]
  connect_bd_net -net cmos_vsync_i_0_1 [get_bd_ports cmos_vsync_i_0] [get_bd_pins OVSensor_0/cmos_vsync_i] [get_bd_pins system_ila_4/probe0]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets cmos_vsync_i_0_1]
  connect_bd_net -net cmos_vsync_i_1_1 [get_bd_ports cmos_vsync_i_1] [get_bd_pins OVSensor_1/cmos_vsync_i]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/M01_ARESETN] [get_bd_pins axi_interconnect_1/M02_ARESETN] [get_bd_pins axi_interconnect_1/M03_ARESETN] [get_bd_pins axi_interconnect_1/M04_ARESETN] [get_bd_pins axi_interconnect_1/M05_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins axi_mem_interconnect_0/M00_ARESETN] [get_bd_pins axi_mem_interconnect_0/S00_ARESETN] [get_bd_pins axi_mem_interconnect_0/S01_ARESETN] [get_bd_pins axi_mem_interconnect_1/M00_ARESETN] [get_bd_pins axi_mem_interconnect_1/S00_ARESETN] [get_bd_pins axi_mem_interconnect_1/S01_ARESETN] [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins axi_vdma_1/axi_resetn] [get_bd_pins axi_vdma_2/axi_resetn] [get_bd_pins axi_vdma_3/axi_resetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins system_ila_0/probe1] [get_bd_pins system_ila_0/resetn] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins v_mix_0/ap_rst_n] [get_bd_pins v_tc_0/s_axi_aresetn]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets proc_sys_reset_0_peripheral_aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins OVSensor_0/clk_i] [get_bd_pins OVSensor_1/clk_i] [get_bd_pins processing_system7_0/FCLK_CLK1]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_reset] [get_bd_pins v_vid_in_axi4s_1/vid_io_in_reset]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins clk_wiz_0/reset] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net v_axi4s_vid_out_0_vid_active_video [get_bd_pins HDMI_tx_0/VGA_DE] [get_bd_pins v_axi4s_vid_out_0/vid_active_video]
  connect_bd_net -net v_axi4s_vid_out_0_vid_data [get_bd_pins HDMI_tx_0/VGA_RGB] [get_bd_pins system_ila_7/probe0] [get_bd_pins v_axi4s_vid_out_0/vid_data]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets v_axi4s_vid_out_0_vid_data]
  connect_bd_net -net v_axi4s_vid_out_0_vid_hsync [get_bd_pins HDMI_tx_0/VGA_HS] [get_bd_pins v_axi4s_vid_out_0/vid_hsync]
  connect_bd_net -net v_axi4s_vid_out_0_vid_vsync [get_bd_pins HDMI_tx_0/VGA_VS] [get_bd_pins v_axi4s_vid_out_0/vid_vsync]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net v_mix_0_interrupt [get_bd_pins v_mix_0/interrupt] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net v_tc_0_irq [get_bd_pins v_tc_0/irq] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces axi_vdma_1/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces axi_vdma_2/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP1/HP1_DDR_LOWOCM] -force
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces axi_vdma_3/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP1/HP1_DDR_LOWOCM] -force
  assign_bd_address -offset 0x43000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x43010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_1/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x43020000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_2/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x43030000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_3/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x43C00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs v_mix_0/s_axi_CTRL/Reg] -force
  assign_bd_address -offset 0x43C10000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs v_tc_0/ctrl/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


