
################################################################
# This is a generated script based on design: bd_d5b8
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
set scripts_vivado_version 2018.3
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
# source bd_d5b8_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_d5b8

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

   create_bd_design -bdsource SBD $design_name

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
  set SLOT_0_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_0_AXIS ]
  set SLOT_10_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_10_AXI ]
  set SLOT_11_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_11_AXI ]
  set SLOT_12_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_12_AXI ]
  set SLOT_13_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_13_AXI ]
  set SLOT_14_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_14_AXI ]
  set SLOT_1_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_1_AXI ]
  set SLOT_2_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_2_AXI ]
  set SLOT_3_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_3_AXI ]
  set SLOT_4_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_4_AXI ]
  set SLOT_5_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_5_AXIS ]
  set SLOT_6_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_6_AXIS ]
  set SLOT_7_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_7_AXI ]
  set SLOT_8_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_8_AXIS ]
  set SLOT_9_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_9_AXIS ]

  # Create ports
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {SLOT_0_AXIS:SLOT_10_AXI:SLOT_11_AXI:SLOT_12_AXI:SLOT_13_AXI:SLOT_14_AXI:SLOT_1_AXI:SLOT_2_AXI:SLOT_3_AXI:SLOT_4_AXI:SLOT_5_AXIS:SLOT_6_AXIS:SLOT_7_AXI:SLOT_8_AXIS:SLOT_9_AXIS} \
   CONFIG.ASSOCIATED_RESET {resetn} \
 ] $clk
  set resetn [ create_bd_port -dir I -type rst resetn ]

  # Create instance: g_inst, and set properties
  set g_inst [ create_bd_cell -type ip -vlnv xilinx.com:ip:gigantic_mux:1.0 g_inst ]
  set_property -dict [ list \
   CONFIG.C_EN_GIGAMUX {false} \
   CONFIG.C_NUM_MONITOR_SLOTS {15} \
   CONFIG.C_NUM_OF_PROBES {0} \
   CONFIG.C_SLOT_0_AXIS_TDATA_WIDTH {24} \
   CONFIG.C_SLOT_0_AXIS_TDEST_WIDTH {0} \
   CONFIG.C_SLOT_0_AXIS_TID_WIDTH {0} \
   CONFIG.C_SLOT_0_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_0_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_0_HAS_TKEEP {1} \
   CONFIG.C_SLOT_0_HAS_TREADY {1} \
   CONFIG.C_SLOT_0_HAS_TSTRB {0} \
   CONFIG.C_SLOT_0_MON_MODE {FT} \
   CONFIG.C_SLOT_10_AXI_ADDR_WIDTH {32} \
   CONFIG.C_SLOT_10_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_10_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_10_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_10_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_10_AXI_AXLEN_WIDTH {8} \
   CONFIG.C_SLOT_10_AXI_AXLOCK_WIDTH {1} \
   CONFIG.C_SLOT_10_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_10_AXI_B_SEL {1} \
   CONFIG.C_SLOT_10_AXI_DATA_WIDTH {64} \
   CONFIG.C_SLOT_10_AXI_ID_WIDTH {0} \
   CONFIG.C_SLOT_10_AXI_PROTOCOL {AXI4} \
   CONFIG.C_SLOT_10_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_10_AXI_R_SEL {1} \
   CONFIG.C_SLOT_10_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_10_AXI_W_SEL {1} \
   CONFIG.C_SLOT_10_HAS_BRESP {1} \
   CONFIG.C_SLOT_10_HAS_BURST {0} \
   CONFIG.C_SLOT_10_HAS_CACHE {0} \
   CONFIG.C_SLOT_10_HAS_LOCK {0} \
   CONFIG.C_SLOT_10_HAS_PROT {0} \
   CONFIG.C_SLOT_10_HAS_QOS {0} \
   CONFIG.C_SLOT_10_HAS_REGION {0} \
   CONFIG.C_SLOT_10_HAS_RRESP {0} \
   CONFIG.C_SLOT_10_HAS_WSTRB {1} \
   CONFIG.C_SLOT_10_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_10_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_10_MON_MODE {FT} \
   CONFIG.C_SLOT_10_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_11_AXI_ADDR_WIDTH {32} \
   CONFIG.C_SLOT_11_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_11_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_11_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_11_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_11_AXI_AXLEN_WIDTH {8} \
   CONFIG.C_SLOT_11_AXI_AXLOCK_WIDTH {1} \
   CONFIG.C_SLOT_11_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_11_AXI_B_SEL {1} \
   CONFIG.C_SLOT_11_AXI_DATA_WIDTH {64} \
   CONFIG.C_SLOT_11_AXI_ID_WIDTH {0} \
   CONFIG.C_SLOT_11_AXI_PROTOCOL {AXI4} \
   CONFIG.C_SLOT_11_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_11_AXI_R_SEL {1} \
   CONFIG.C_SLOT_11_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_11_AXI_W_SEL {1} \
   CONFIG.C_SLOT_11_HAS_BRESP {0} \
   CONFIG.C_SLOT_11_HAS_BURST {0} \
   CONFIG.C_SLOT_11_HAS_CACHE {0} \
   CONFIG.C_SLOT_11_HAS_LOCK {0} \
   CONFIG.C_SLOT_11_HAS_PROT {0} \
   CONFIG.C_SLOT_11_HAS_QOS {0} \
   CONFIG.C_SLOT_11_HAS_REGION {0} \
   CONFIG.C_SLOT_11_HAS_RRESP {1} \
   CONFIG.C_SLOT_11_HAS_WSTRB {0} \
   CONFIG.C_SLOT_11_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_11_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_11_MON_MODE {FT} \
   CONFIG.C_SLOT_11_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_12_AXI_ADDR_WIDTH {32} \
   CONFIG.C_SLOT_12_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_12_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_12_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_12_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_12_AXI_AXLEN_WIDTH {4} \
   CONFIG.C_SLOT_12_AXI_AXLOCK_WIDTH {2} \
   CONFIG.C_SLOT_12_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_12_AXI_B_SEL {1} \
   CONFIG.C_SLOT_12_AXI_DATA_WIDTH {64} \
   CONFIG.C_SLOT_12_AXI_ID_WIDTH {1} \
   CONFIG.C_SLOT_12_AXI_PROTOCOL {AXI3} \
   CONFIG.C_SLOT_12_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_12_AXI_R_SEL {1} \
   CONFIG.C_SLOT_12_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_12_AXI_W_SEL {1} \
   CONFIG.C_SLOT_12_HAS_BRESP {1} \
   CONFIG.C_SLOT_12_HAS_BURST {0} \
   CONFIG.C_SLOT_12_HAS_CACHE {0} \
   CONFIG.C_SLOT_12_HAS_LOCK {0} \
   CONFIG.C_SLOT_12_HAS_PROT {1} \
   CONFIG.C_SLOT_12_HAS_QOS {0} \
   CONFIG.C_SLOT_12_HAS_REGION {0} \
   CONFIG.C_SLOT_12_HAS_RRESP {1} \
   CONFIG.C_SLOT_12_HAS_WSTRB {1} \
   CONFIG.C_SLOT_12_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_12_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_12_MON_MODE {FT} \
   CONFIG.C_SLOT_12_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_13_AXI_ADDR_WIDTH {9} \
   CONFIG.C_SLOT_13_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_13_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_13_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_13_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_13_AXI_AXLEN_WIDTH {8} \
   CONFIG.C_SLOT_13_AXI_AXLOCK_WIDTH {1} \
   CONFIG.C_SLOT_13_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_13_AXI_B_SEL {1} \
   CONFIG.C_SLOT_13_AXI_DATA_WIDTH {32} \
   CONFIG.C_SLOT_13_AXI_ID_WIDTH {0} \
   CONFIG.C_SLOT_13_AXI_PROTOCOL {AXI4LITE} \
   CONFIG.C_SLOT_13_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_13_AXI_R_SEL {1} \
   CONFIG.C_SLOT_13_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_13_AXI_W_SEL {1} \
   CONFIG.C_SLOT_13_HAS_BRESP {1} \
   CONFIG.C_SLOT_13_HAS_BURST {0} \
   CONFIG.C_SLOT_13_HAS_CACHE {0} \
   CONFIG.C_SLOT_13_HAS_LOCK {0} \
   CONFIG.C_SLOT_13_HAS_PROT {1} \
   CONFIG.C_SLOT_13_HAS_QOS {0} \
   CONFIG.C_SLOT_13_HAS_REGION {0} \
   CONFIG.C_SLOT_13_HAS_RRESP {1} \
   CONFIG.C_SLOT_13_HAS_WSTRB {1} \
   CONFIG.C_SLOT_13_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_13_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_13_MON_MODE {FT} \
   CONFIG.C_SLOT_13_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_14_AXI_ADDR_WIDTH {9} \
   CONFIG.C_SLOT_14_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_14_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_14_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_14_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_14_AXI_AXLEN_WIDTH {8} \
   CONFIG.C_SLOT_14_AXI_AXLOCK_WIDTH {1} \
   CONFIG.C_SLOT_14_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_14_AXI_B_SEL {1} \
   CONFIG.C_SLOT_14_AXI_DATA_WIDTH {32} \
   CONFIG.C_SLOT_14_AXI_ID_WIDTH {0} \
   CONFIG.C_SLOT_14_AXI_PROTOCOL {AXI4LITE} \
   CONFIG.C_SLOT_14_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_14_AXI_R_SEL {1} \
   CONFIG.C_SLOT_14_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_14_AXI_W_SEL {1} \
   CONFIG.C_SLOT_14_HAS_BRESP {1} \
   CONFIG.C_SLOT_14_HAS_BURST {0} \
   CONFIG.C_SLOT_14_HAS_CACHE {0} \
   CONFIG.C_SLOT_14_HAS_LOCK {0} \
   CONFIG.C_SLOT_14_HAS_PROT {1} \
   CONFIG.C_SLOT_14_HAS_QOS {0} \
   CONFIG.C_SLOT_14_HAS_REGION {0} \
   CONFIG.C_SLOT_14_HAS_RRESP {1} \
   CONFIG.C_SLOT_14_HAS_WSTRB {1} \
   CONFIG.C_SLOT_14_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_14_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_14_MON_MODE {FT} \
   CONFIG.C_SLOT_14_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_1_AXI_ADDR_WIDTH {32} \
   CONFIG.C_SLOT_1_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_1_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_1_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_1_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_1_AXI_AXLEN_WIDTH {4} \
   CONFIG.C_SLOT_1_AXI_AXLOCK_WIDTH {2} \
   CONFIG.C_SLOT_1_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_1_AXI_B_SEL {1} \
   CONFIG.C_SLOT_1_AXI_DATA_WIDTH {64} \
   CONFIG.C_SLOT_1_AXI_ID_WIDTH {1} \
   CONFIG.C_SLOT_1_AXI_PROTOCOL {AXI3} \
   CONFIG.C_SLOT_1_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_1_AXI_R_SEL {1} \
   CONFIG.C_SLOT_1_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_1_AXI_W_SEL {1} \
   CONFIG.C_SLOT_1_HAS_BRESP {1} \
   CONFIG.C_SLOT_1_HAS_BURST {0} \
   CONFIG.C_SLOT_1_HAS_CACHE {0} \
   CONFIG.C_SLOT_1_HAS_LOCK {0} \
   CONFIG.C_SLOT_1_HAS_PROT {1} \
   CONFIG.C_SLOT_1_HAS_QOS {0} \
   CONFIG.C_SLOT_1_HAS_REGION {0} \
   CONFIG.C_SLOT_1_HAS_RRESP {1} \
   CONFIG.C_SLOT_1_HAS_WSTRB {1} \
   CONFIG.C_SLOT_1_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_1_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_1_MON_MODE {FT} \
   CONFIG.C_SLOT_1_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_2_AXI_ADDR_WIDTH {9} \
   CONFIG.C_SLOT_2_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_2_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_2_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_2_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_2_AXI_AXLEN_WIDTH {8} \
   CONFIG.C_SLOT_2_AXI_AXLOCK_WIDTH {1} \
   CONFIG.C_SLOT_2_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_2_AXI_B_SEL {1} \
   CONFIG.C_SLOT_2_AXI_DATA_WIDTH {32} \
   CONFIG.C_SLOT_2_AXI_ID_WIDTH {0} \
   CONFIG.C_SLOT_2_AXI_PROTOCOL {AXI4LITE} \
   CONFIG.C_SLOT_2_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_2_AXI_R_SEL {1} \
   CONFIG.C_SLOT_2_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_2_AXI_W_SEL {1} \
   CONFIG.C_SLOT_2_HAS_BRESP {1} \
   CONFIG.C_SLOT_2_HAS_BURST {1} \
   CONFIG.C_SLOT_2_HAS_CACHE {1} \
   CONFIG.C_SLOT_2_HAS_LOCK {1} \
   CONFIG.C_SLOT_2_HAS_PROT {1} \
   CONFIG.C_SLOT_2_HAS_QOS {1} \
   CONFIG.C_SLOT_2_HAS_REGION {0} \
   CONFIG.C_SLOT_2_HAS_RRESP {1} \
   CONFIG.C_SLOT_2_HAS_WSTRB {1} \
   CONFIG.C_SLOT_2_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_2_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_2_MON_MODE {FT} \
   CONFIG.C_SLOT_2_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_3_AXI_ADDR_WIDTH {32} \
   CONFIG.C_SLOT_3_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_3_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_3_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_3_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_3_AXI_AXLEN_WIDTH {8} \
   CONFIG.C_SLOT_3_AXI_AXLOCK_WIDTH {1} \
   CONFIG.C_SLOT_3_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_3_AXI_B_SEL {1} \
   CONFIG.C_SLOT_3_AXI_DATA_WIDTH {64} \
   CONFIG.C_SLOT_3_AXI_ID_WIDTH {0} \
   CONFIG.C_SLOT_3_AXI_PROTOCOL {AXI4} \
   CONFIG.C_SLOT_3_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_3_AXI_R_SEL {1} \
   CONFIG.C_SLOT_3_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_3_AXI_W_SEL {1} \
   CONFIG.C_SLOT_3_HAS_BRESP {0} \
   CONFIG.C_SLOT_3_HAS_BURST {0} \
   CONFIG.C_SLOT_3_HAS_CACHE {0} \
   CONFIG.C_SLOT_3_HAS_LOCK {0} \
   CONFIG.C_SLOT_3_HAS_PROT {0} \
   CONFIG.C_SLOT_3_HAS_QOS {0} \
   CONFIG.C_SLOT_3_HAS_REGION {0} \
   CONFIG.C_SLOT_3_HAS_RRESP {1} \
   CONFIG.C_SLOT_3_HAS_WSTRB {0} \
   CONFIG.C_SLOT_3_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_3_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_3_MON_MODE {FT} \
   CONFIG.C_SLOT_3_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_4_AXI_ADDR_WIDTH {32} \
   CONFIG.C_SLOT_4_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_4_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_4_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_4_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_4_AXI_AXLEN_WIDTH {8} \
   CONFIG.C_SLOT_4_AXI_AXLOCK_WIDTH {1} \
   CONFIG.C_SLOT_4_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_4_AXI_B_SEL {1} \
   CONFIG.C_SLOT_4_AXI_DATA_WIDTH {64} \
   CONFIG.C_SLOT_4_AXI_ID_WIDTH {0} \
   CONFIG.C_SLOT_4_AXI_PROTOCOL {AXI4} \
   CONFIG.C_SLOT_4_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_4_AXI_R_SEL {1} \
   CONFIG.C_SLOT_4_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_4_AXI_W_SEL {1} \
   CONFIG.C_SLOT_4_HAS_BRESP {1} \
   CONFIG.C_SLOT_4_HAS_BURST {0} \
   CONFIG.C_SLOT_4_HAS_CACHE {0} \
   CONFIG.C_SLOT_4_HAS_LOCK {0} \
   CONFIG.C_SLOT_4_HAS_PROT {0} \
   CONFIG.C_SLOT_4_HAS_QOS {0} \
   CONFIG.C_SLOT_4_HAS_REGION {0} \
   CONFIG.C_SLOT_4_HAS_RRESP {0} \
   CONFIG.C_SLOT_4_HAS_WSTRB {1} \
   CONFIG.C_SLOT_4_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_4_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_4_MON_MODE {FT} \
   CONFIG.C_SLOT_4_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_5_AXIS_TDATA_WIDTH {24} \
   CONFIG.C_SLOT_5_AXIS_TDEST_WIDTH {0} \
   CONFIG.C_SLOT_5_AXIS_TID_WIDTH {0} \
   CONFIG.C_SLOT_5_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_5_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_5_HAS_TKEEP {0} \
   CONFIG.C_SLOT_5_HAS_TREADY {1} \
   CONFIG.C_SLOT_5_HAS_TSTRB {0} \
   CONFIG.C_SLOT_5_MON_MODE {FT} \
   CONFIG.C_SLOT_6_AXIS_TDATA_WIDTH {24} \
   CONFIG.C_SLOT_6_AXIS_TDEST_WIDTH {0} \
   CONFIG.C_SLOT_6_AXIS_TID_WIDTH {0} \
   CONFIG.C_SLOT_6_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_6_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_6_HAS_TKEEP {0} \
   CONFIG.C_SLOT_6_HAS_TREADY {1} \
   CONFIG.C_SLOT_6_HAS_TSTRB {0} \
   CONFIG.C_SLOT_6_MON_MODE {FT} \
   CONFIG.C_SLOT_7_AXI_ADDR_WIDTH {9} \
   CONFIG.C_SLOT_7_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_7_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_7_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_7_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_7_AXI_AXLEN_WIDTH {8} \
   CONFIG.C_SLOT_7_AXI_AXLOCK_WIDTH {1} \
   CONFIG.C_SLOT_7_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_7_AXI_B_SEL {1} \
   CONFIG.C_SLOT_7_AXI_DATA_WIDTH {32} \
   CONFIG.C_SLOT_7_AXI_ID_WIDTH {0} \
   CONFIG.C_SLOT_7_AXI_PROTOCOL {AXI4LITE} \
   CONFIG.C_SLOT_7_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_7_AXI_R_SEL {1} \
   CONFIG.C_SLOT_7_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_7_AXI_W_SEL {1} \
   CONFIG.C_SLOT_7_HAS_BRESP {1} \
   CONFIG.C_SLOT_7_HAS_BURST {1} \
   CONFIG.C_SLOT_7_HAS_CACHE {1} \
   CONFIG.C_SLOT_7_HAS_LOCK {1} \
   CONFIG.C_SLOT_7_HAS_PROT {1} \
   CONFIG.C_SLOT_7_HAS_QOS {1} \
   CONFIG.C_SLOT_7_HAS_REGION {0} \
   CONFIG.C_SLOT_7_HAS_RRESP {1} \
   CONFIG.C_SLOT_7_HAS_WSTRB {1} \
   CONFIG.C_SLOT_7_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_7_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_7_MON_MODE {FT} \
   CONFIG.C_SLOT_7_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_8_AXIS_TDATA_WIDTH {24} \
   CONFIG.C_SLOT_8_AXIS_TDEST_WIDTH {0} \
   CONFIG.C_SLOT_8_AXIS_TID_WIDTH {0} \
   CONFIG.C_SLOT_8_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_8_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_8_HAS_TKEEP {0} \
   CONFIG.C_SLOT_8_HAS_TREADY {1} \
   CONFIG.C_SLOT_8_HAS_TSTRB {0} \
   CONFIG.C_SLOT_8_MON_MODE {FT} \
   CONFIG.C_SLOT_9_AXIS_TDATA_WIDTH {24} \
   CONFIG.C_SLOT_9_AXIS_TDEST_WIDTH {0} \
   CONFIG.C_SLOT_9_AXIS_TID_WIDTH {0} \
   CONFIG.C_SLOT_9_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_9_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_9_HAS_TKEEP {0} \
   CONFIG.C_SLOT_9_HAS_TREADY {1} \
   CONFIG.C_SLOT_9_HAS_TSTRB {0} \
   CONFIG.C_SLOT_9_MON_MODE {FT} \
 ] $g_inst

  # Create instance: ila_lib, and set properties
  set ila_lib [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_lib ]
  set_property -dict [ list \
   CONFIG.ALL_PROBE_SAME_MU {TRUE} \
   CONFIG.ALL_PROBE_SAME_MU_CNT {1} \
   CONFIG.C_ADV_TRIGGER {FALSE} \
   CONFIG.C_DATA_DEPTH {1024} \
   CONFIG.C_EN_STRG_QUAL {0} \
   CONFIG.C_EN_TIME_TAG {0} \
   CONFIG.C_ILA_CLK_FREQ {100000000} \
   CONFIG.C_INPUT_PIPE_STAGES {0} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {228} \
   CONFIG.C_PROBE0_TYPE {0} \
   CONFIG.C_PROBE0_WIDTH {24} \
   CONFIG.C_PROBE100_TYPE {0} \
   CONFIG.C_PROBE100_WIDTH {3} \
   CONFIG.C_PROBE101_TYPE {0} \
   CONFIG.C_PROBE101_WIDTH {2} \
   CONFIG.C_PROBE102_TYPE {0} \
   CONFIG.C_PROBE102_WIDTH {9} \
   CONFIG.C_PROBE103_TYPE {0} \
   CONFIG.C_PROBE103_WIDTH {3} \
   CONFIG.C_PROBE104_TYPE {0} \
   CONFIG.C_PROBE104_WIDTH {2} \
   CONFIG.C_PROBE105_TYPE {0} \
   CONFIG.C_PROBE105_WIDTH {2} \
   CONFIG.C_PROBE106_TYPE {0} \
   CONFIG.C_PROBE106_WIDTH {2} \
   CONFIG.C_PROBE107_TYPE {0} \
   CONFIG.C_PROBE107_WIDTH {32} \
   CONFIG.C_PROBE108_TYPE {0} \
   CONFIG.C_PROBE108_WIDTH {2} \
   CONFIG.C_PROBE109_TYPE {0} \
   CONFIG.C_PROBE109_WIDTH {32} \
   CONFIG.C_PROBE10_TYPE {0} \
   CONFIG.C_PROBE10_WIDTH {3} \
   CONFIG.C_PROBE110_TYPE {0} \
   CONFIG.C_PROBE110_WIDTH {4} \
   CONFIG.C_PROBE111_TYPE {0} \
   CONFIG.C_PROBE111_WIDTH {2} \
   CONFIG.C_PROBE112_TYPE {0} \
   CONFIG.C_PROBE112_WIDTH {2} \
   CONFIG.C_PROBE113_TYPE {0} \
   CONFIG.C_PROBE113_WIDTH {2} \
   CONFIG.C_PROBE114_TYPE {0} \
   CONFIG.C_PROBE114_WIDTH {2} \
   CONFIG.C_PROBE115_TYPE {0} \
   CONFIG.C_PROBE115_WIDTH {2} \
   CONFIG.C_PROBE116_TYPE {0} \
   CONFIG.C_PROBE116_WIDTH {24} \
   CONFIG.C_PROBE117_TYPE {0} \
   CONFIG.C_PROBE117_WIDTH {1} \
   CONFIG.C_PROBE118_TYPE {0} \
   CONFIG.C_PROBE118_WIDTH {1} \
   CONFIG.C_PROBE119_TYPE {0} \
   CONFIG.C_PROBE119_WIDTH {1} \
   CONFIG.C_PROBE11_TYPE {0} \
   CONFIG.C_PROBE11_WIDTH {3} \
   CONFIG.C_PROBE120_TYPE {0} \
   CONFIG.C_PROBE120_WIDTH {1} \
   CONFIG.C_PROBE121_TYPE {0} \
   CONFIG.C_PROBE121_WIDTH {24} \
   CONFIG.C_PROBE122_TYPE {0} \
   CONFIG.C_PROBE122_WIDTH {1} \
   CONFIG.C_PROBE123_TYPE {0} \
   CONFIG.C_PROBE123_WIDTH {1} \
   CONFIG.C_PROBE124_TYPE {0} \
   CONFIG.C_PROBE124_WIDTH {1} \
   CONFIG.C_PROBE125_TYPE {0} \
   CONFIG.C_PROBE125_WIDTH {1} \
   CONFIG.C_PROBE126_TYPE {0} \
   CONFIG.C_PROBE126_WIDTH {2} \
   CONFIG.C_PROBE127_TYPE {0} \
   CONFIG.C_PROBE127_WIDTH {32} \
   CONFIG.C_PROBE128_TYPE {0} \
   CONFIG.C_PROBE128_WIDTH {8} \
   CONFIG.C_PROBE129_TYPE {0} \
   CONFIG.C_PROBE129_WIDTH {3} \
   CONFIG.C_PROBE12_TYPE {0} \
   CONFIG.C_PROBE12_WIDTH {2} \
   CONFIG.C_PROBE130_TYPE {0} \
   CONFIG.C_PROBE130_WIDTH {2} \
   CONFIG.C_PROBE131_TYPE {0} \
   CONFIG.C_PROBE131_WIDTH {32} \
   CONFIG.C_PROBE132_TYPE {0} \
   CONFIG.C_PROBE132_WIDTH {8} \
   CONFIG.C_PROBE133_TYPE {0} \
   CONFIG.C_PROBE133_WIDTH {3} \
   CONFIG.C_PROBE134_TYPE {0} \
   CONFIG.C_PROBE134_WIDTH {2} \
   CONFIG.C_PROBE135_TYPE {0} \
   CONFIG.C_PROBE135_WIDTH {2} \
   CONFIG.C_PROBE136_TYPE {0} \
   CONFIG.C_PROBE136_WIDTH {2} \
   CONFIG.C_PROBE137_TYPE {0} \
   CONFIG.C_PROBE137_WIDTH {64} \
   CONFIG.C_PROBE138_TYPE {0} \
   CONFIG.C_PROBE138_WIDTH {64} \
   CONFIG.C_PROBE139_TYPE {0} \
   CONFIG.C_PROBE139_WIDTH {8} \
   CONFIG.C_PROBE13_TYPE {0} \
   CONFIG.C_PROBE13_WIDTH {32} \
   CONFIG.C_PROBE140_TYPE {0} \
   CONFIG.C_PROBE140_WIDTH {2} \
   CONFIG.C_PROBE141_TYPE {0} \
   CONFIG.C_PROBE141_WIDTH {3} \
   CONFIG.C_PROBE142_TYPE {0} \
   CONFIG.C_PROBE142_WIDTH {2} \
   CONFIG.C_PROBE143_TYPE {0} \
   CONFIG.C_PROBE143_WIDTH {2} \
   CONFIG.C_PROBE144_TYPE {0} \
   CONFIG.C_PROBE144_WIDTH {3} \
   CONFIG.C_PROBE145_TYPE {0} \
   CONFIG.C_PROBE145_WIDTH {2} \
   CONFIG.C_PROBE146_TYPE {0} \
   CONFIG.C_PROBE146_WIDTH {32} \
   CONFIG.C_PROBE147_TYPE {0} \
   CONFIG.C_PROBE147_WIDTH {8} \
   CONFIG.C_PROBE148_TYPE {0} \
   CONFIG.C_PROBE148_WIDTH {3} \
   CONFIG.C_PROBE149_TYPE {0} \
   CONFIG.C_PROBE149_WIDTH {2} \
   CONFIG.C_PROBE14_TYPE {0} \
   CONFIG.C_PROBE14_WIDTH {1} \
   CONFIG.C_PROBE150_TYPE {0} \
   CONFIG.C_PROBE150_WIDTH {32} \
   CONFIG.C_PROBE151_TYPE {0} \
   CONFIG.C_PROBE151_WIDTH {4} \
   CONFIG.C_PROBE152_TYPE {0} \
   CONFIG.C_PROBE152_WIDTH {8} \
   CONFIG.C_PROBE153_TYPE {0} \
   CONFIG.C_PROBE153_WIDTH {3} \
   CONFIG.C_PROBE154_TYPE {0} \
   CONFIG.C_PROBE154_WIDTH {2} \
   CONFIG.C_PROBE155_TYPE {0} \
   CONFIG.C_PROBE155_WIDTH {2} \
   CONFIG.C_PROBE156_TYPE {0} \
   CONFIG.C_PROBE156_WIDTH {64} \
   CONFIG.C_PROBE157_TYPE {0} \
   CONFIG.C_PROBE157_WIDTH {1} \
   CONFIG.C_PROBE158_TYPE {0} \
   CONFIG.C_PROBE158_WIDTH {2} \
   CONFIG.C_PROBE159_TYPE {0} \
   CONFIG.C_PROBE159_WIDTH {64} \
   CONFIG.C_PROBE15_TYPE {0} \
   CONFIG.C_PROBE15_WIDTH {4} \
   CONFIG.C_PROBE160_TYPE {0} \
   CONFIG.C_PROBE160_WIDTH {2} \
   CONFIG.C_PROBE161_TYPE {0} \
   CONFIG.C_PROBE161_WIDTH {3} \
   CONFIG.C_PROBE162_TYPE {0} \
   CONFIG.C_PROBE162_WIDTH {2} \
   CONFIG.C_PROBE163_TYPE {0} \
   CONFIG.C_PROBE163_WIDTH {2} \
   CONFIG.C_PROBE164_TYPE {0} \
   CONFIG.C_PROBE164_WIDTH {3} \
   CONFIG.C_PROBE165_TYPE {0} \
   CONFIG.C_PROBE165_WIDTH {2} \
   CONFIG.C_PROBE166_TYPE {0} \
   CONFIG.C_PROBE166_WIDTH {32} \
   CONFIG.C_PROBE167_TYPE {0} \
   CONFIG.C_PROBE167_WIDTH {1} \
   CONFIG.C_PROBE168_TYPE {0} \
   CONFIG.C_PROBE168_WIDTH {4} \
   CONFIG.C_PROBE169_TYPE {0} \
   CONFIG.C_PROBE169_WIDTH {3} \
   CONFIG.C_PROBE16_TYPE {0} \
   CONFIG.C_PROBE16_WIDTH {3} \
   CONFIG.C_PROBE170_TYPE {0} \
   CONFIG.C_PROBE170_WIDTH {3} \
   CONFIG.C_PROBE171_TYPE {0} \
   CONFIG.C_PROBE171_WIDTH {2} \
   CONFIG.C_PROBE172_TYPE {0} \
   CONFIG.C_PROBE172_WIDTH {32} \
   CONFIG.C_PROBE173_TYPE {0} \
   CONFIG.C_PROBE173_WIDTH {1} \
   CONFIG.C_PROBE174_TYPE {0} \
   CONFIG.C_PROBE174_WIDTH {4} \
   CONFIG.C_PROBE175_TYPE {0} \
   CONFIG.C_PROBE175_WIDTH {3} \
   CONFIG.C_PROBE176_TYPE {0} \
   CONFIG.C_PROBE176_WIDTH {3} \
   CONFIG.C_PROBE177_TYPE {0} \
   CONFIG.C_PROBE177_WIDTH {2} \
   CONFIG.C_PROBE178_TYPE {0} \
   CONFIG.C_PROBE178_WIDTH {1} \
   CONFIG.C_PROBE179_TYPE {0} \
   CONFIG.C_PROBE179_WIDTH {2} \
   CONFIG.C_PROBE17_TYPE {0} \
   CONFIG.C_PROBE17_WIDTH {3} \
   CONFIG.C_PROBE180_TYPE {0} \
   CONFIG.C_PROBE180_WIDTH {2} \
   CONFIG.C_PROBE181_TYPE {0} \
   CONFIG.C_PROBE181_WIDTH {64} \
   CONFIG.C_PROBE182_TYPE {0} \
   CONFIG.C_PROBE182_WIDTH {1} \
   CONFIG.C_PROBE183_TYPE {0} \
   CONFIG.C_PROBE183_WIDTH {2} \
   CONFIG.C_PROBE184_TYPE {0} \
   CONFIG.C_PROBE184_WIDTH {64} \
   CONFIG.C_PROBE185_TYPE {0} \
   CONFIG.C_PROBE185_WIDTH {1} \
   CONFIG.C_PROBE186_TYPE {0} \
   CONFIG.C_PROBE186_WIDTH {8} \
   CONFIG.C_PROBE187_TYPE {0} \
   CONFIG.C_PROBE187_WIDTH {2} \
   CONFIG.C_PROBE188_TYPE {0} \
   CONFIG.C_PROBE188_WIDTH {3} \
   CONFIG.C_PROBE189_TYPE {0} \
   CONFIG.C_PROBE189_WIDTH {2} \
   CONFIG.C_PROBE18_TYPE {0} \
   CONFIG.C_PROBE18_WIDTH {2} \
   CONFIG.C_PROBE190_TYPE {0} \
   CONFIG.C_PROBE190_WIDTH {2} \
   CONFIG.C_PROBE191_TYPE {0} \
   CONFIG.C_PROBE191_WIDTH {3} \
   CONFIG.C_PROBE192_TYPE {0} \
   CONFIG.C_PROBE192_WIDTH {2} \
   CONFIG.C_PROBE193_TYPE {0} \
   CONFIG.C_PROBE193_WIDTH {9} \
   CONFIG.C_PROBE194_TYPE {0} \
   CONFIG.C_PROBE194_WIDTH {3} \
   CONFIG.C_PROBE195_TYPE {0} \
   CONFIG.C_PROBE195_WIDTH {2} \
   CONFIG.C_PROBE196_TYPE {0} \
   CONFIG.C_PROBE196_WIDTH {9} \
   CONFIG.C_PROBE197_TYPE {0} \
   CONFIG.C_PROBE197_WIDTH {3} \
   CONFIG.C_PROBE198_TYPE {0} \
   CONFIG.C_PROBE198_WIDTH {2} \
   CONFIG.C_PROBE199_TYPE {0} \
   CONFIG.C_PROBE199_WIDTH {2} \
   CONFIG.C_PROBE19_TYPE {0} \
   CONFIG.C_PROBE19_WIDTH {1} \
   CONFIG.C_PROBE1_TYPE {0} \
   CONFIG.C_PROBE1_WIDTH {3} \
   CONFIG.C_PROBE200_TYPE {0} \
   CONFIG.C_PROBE200_WIDTH {2} \
   CONFIG.C_PROBE201_TYPE {0} \
   CONFIG.C_PROBE201_WIDTH {32} \
   CONFIG.C_PROBE202_TYPE {0} \
   CONFIG.C_PROBE202_WIDTH {2} \
   CONFIG.C_PROBE203_TYPE {0} \
   CONFIG.C_PROBE203_WIDTH {32} \
   CONFIG.C_PROBE204_TYPE {0} \
   CONFIG.C_PROBE204_WIDTH {4} \
   CONFIG.C_PROBE205_TYPE {0} \
   CONFIG.C_PROBE205_WIDTH {2} \
   CONFIG.C_PROBE206_TYPE {0} \
   CONFIG.C_PROBE206_WIDTH {2} \
   CONFIG.C_PROBE207_TYPE {0} \
   CONFIG.C_PROBE207_WIDTH {2} \
   CONFIG.C_PROBE208_TYPE {0} \
   CONFIG.C_PROBE208_WIDTH {2} \
   CONFIG.C_PROBE209_TYPE {0} \
   CONFIG.C_PROBE209_WIDTH {2} \
   CONFIG.C_PROBE20_TYPE {0} \
   CONFIG.C_PROBE20_WIDTH {2} \
   CONFIG.C_PROBE210_TYPE {0} \
   CONFIG.C_PROBE210_WIDTH {2} \
   CONFIG.C_PROBE211_TYPE {0} \
   CONFIG.C_PROBE211_WIDTH {9} \
   CONFIG.C_PROBE212_TYPE {0} \
   CONFIG.C_PROBE212_WIDTH {3} \
   CONFIG.C_PROBE213_TYPE {0} \
   CONFIG.C_PROBE213_WIDTH {2} \
   CONFIG.C_PROBE214_TYPE {0} \
   CONFIG.C_PROBE214_WIDTH {9} \
   CONFIG.C_PROBE215_TYPE {0} \
   CONFIG.C_PROBE215_WIDTH {3} \
   CONFIG.C_PROBE216_TYPE {0} \
   CONFIG.C_PROBE216_WIDTH {2} \
   CONFIG.C_PROBE217_TYPE {0} \
   CONFIG.C_PROBE217_WIDTH {2} \
   CONFIG.C_PROBE218_TYPE {0} \
   CONFIG.C_PROBE218_WIDTH {2} \
   CONFIG.C_PROBE219_TYPE {0} \
   CONFIG.C_PROBE219_WIDTH {32} \
   CONFIG.C_PROBE21_TYPE {0} \
   CONFIG.C_PROBE21_WIDTH {2} \
   CONFIG.C_PROBE220_TYPE {0} \
   CONFIG.C_PROBE220_WIDTH {2} \
   CONFIG.C_PROBE221_TYPE {0} \
   CONFIG.C_PROBE221_WIDTH {32} \
   CONFIG.C_PROBE222_TYPE {0} \
   CONFIG.C_PROBE222_WIDTH {4} \
   CONFIG.C_PROBE223_TYPE {0} \
   CONFIG.C_PROBE223_WIDTH {2} \
   CONFIG.C_PROBE224_TYPE {0} \
   CONFIG.C_PROBE224_WIDTH {2} \
   CONFIG.C_PROBE225_TYPE {0} \
   CONFIG.C_PROBE225_WIDTH {2} \
   CONFIG.C_PROBE226_TYPE {0} \
   CONFIG.C_PROBE226_WIDTH {2} \
   CONFIG.C_PROBE227_TYPE {0} \
   CONFIG.C_PROBE227_WIDTH {2} \
   CONFIG.C_PROBE22_TYPE {0} \
   CONFIG.C_PROBE22_WIDTH {64} \
   CONFIG.C_PROBE23_TYPE {0} \
   CONFIG.C_PROBE23_WIDTH {1} \
   CONFIG.C_PROBE24_TYPE {0} \
   CONFIG.C_PROBE24_WIDTH {2} \
   CONFIG.C_PROBE25_TYPE {0} \
   CONFIG.C_PROBE25_WIDTH {64} \
   CONFIG.C_PROBE26_TYPE {0} \
   CONFIG.C_PROBE26_WIDTH {1} \
   CONFIG.C_PROBE27_TYPE {0} \
   CONFIG.C_PROBE27_WIDTH {8} \
   CONFIG.C_PROBE28_TYPE {0} \
   CONFIG.C_PROBE28_WIDTH {2} \
   CONFIG.C_PROBE29_TYPE {0} \
   CONFIG.C_PROBE29_WIDTH {3} \
   CONFIG.C_PROBE2_TYPE {0} \
   CONFIG.C_PROBE2_WIDTH {1} \
   CONFIG.C_PROBE30_TYPE {0} \
   CONFIG.C_PROBE30_WIDTH {2} \
   CONFIG.C_PROBE31_TYPE {0} \
   CONFIG.C_PROBE31_WIDTH {2} \
   CONFIG.C_PROBE32_TYPE {0} \
   CONFIG.C_PROBE32_WIDTH {3} \
   CONFIG.C_PROBE33_TYPE {0} \
   CONFIG.C_PROBE33_WIDTH {2} \
   CONFIG.C_PROBE34_TYPE {0} \
   CONFIG.C_PROBE34_WIDTH {9} \
   CONFIG.C_PROBE35_TYPE {0} \
   CONFIG.C_PROBE35_WIDTH {3} \
   CONFIG.C_PROBE36_TYPE {0} \
   CONFIG.C_PROBE36_WIDTH {2} \
   CONFIG.C_PROBE37_TYPE {0} \
   CONFIG.C_PROBE37_WIDTH {9} \
   CONFIG.C_PROBE38_TYPE {0} \
   CONFIG.C_PROBE38_WIDTH {3} \
   CONFIG.C_PROBE39_TYPE {0} \
   CONFIG.C_PROBE39_WIDTH {2} \
   CONFIG.C_PROBE3_TYPE {0} \
   CONFIG.C_PROBE3_WIDTH {1} \
   CONFIG.C_PROBE40_TYPE {0} \
   CONFIG.C_PROBE40_WIDTH {2} \
   CONFIG.C_PROBE41_TYPE {0} \
   CONFIG.C_PROBE41_WIDTH {2} \
   CONFIG.C_PROBE42_TYPE {0} \
   CONFIG.C_PROBE42_WIDTH {32} \
   CONFIG.C_PROBE43_TYPE {0} \
   CONFIG.C_PROBE43_WIDTH {2} \
   CONFIG.C_PROBE44_TYPE {0} \
   CONFIG.C_PROBE44_WIDTH {32} \
   CONFIG.C_PROBE45_TYPE {0} \
   CONFIG.C_PROBE45_WIDTH {4} \
   CONFIG.C_PROBE46_TYPE {0} \
   CONFIG.C_PROBE46_WIDTH {2} \
   CONFIG.C_PROBE47_TYPE {0} \
   CONFIG.C_PROBE47_WIDTH {2} \
   CONFIG.C_PROBE48_TYPE {0} \
   CONFIG.C_PROBE48_WIDTH {2} \
   CONFIG.C_PROBE49_TYPE {0} \
   CONFIG.C_PROBE49_WIDTH {2} \
   CONFIG.C_PROBE4_TYPE {0} \
   CONFIG.C_PROBE4_WIDTH {1} \
   CONFIG.C_PROBE50_TYPE {0} \
   CONFIG.C_PROBE50_WIDTH {2} \
   CONFIG.C_PROBE51_TYPE {0} \
   CONFIG.C_PROBE51_WIDTH {2} \
   CONFIG.C_PROBE52_TYPE {0} \
   CONFIG.C_PROBE52_WIDTH {32} \
   CONFIG.C_PROBE53_TYPE {0} \
   CONFIG.C_PROBE53_WIDTH {8} \
   CONFIG.C_PROBE54_TYPE {0} \
   CONFIG.C_PROBE54_WIDTH {3} \
   CONFIG.C_PROBE55_TYPE {0} \
   CONFIG.C_PROBE55_WIDTH {2} \
   CONFIG.C_PROBE56_TYPE {0} \
   CONFIG.C_PROBE56_WIDTH {32} \
   CONFIG.C_PROBE57_TYPE {0} \
   CONFIG.C_PROBE57_WIDTH {8} \
   CONFIG.C_PROBE58_TYPE {0} \
   CONFIG.C_PROBE58_WIDTH {3} \
   CONFIG.C_PROBE59_TYPE {0} \
   CONFIG.C_PROBE59_WIDTH {2} \
   CONFIG.C_PROBE5_TYPE {0} \
   CONFIG.C_PROBE5_WIDTH {1} \
   CONFIG.C_PROBE60_TYPE {0} \
   CONFIG.C_PROBE60_WIDTH {2} \
   CONFIG.C_PROBE61_TYPE {0} \
   CONFIG.C_PROBE61_WIDTH {64} \
   CONFIG.C_PROBE62_TYPE {0} \
   CONFIG.C_PROBE62_WIDTH {2} \
   CONFIG.C_PROBE63_TYPE {0} \
   CONFIG.C_PROBE63_WIDTH {64} \
   CONFIG.C_PROBE64_TYPE {0} \
   CONFIG.C_PROBE64_WIDTH {2} \
   CONFIG.C_PROBE65_TYPE {0} \
   CONFIG.C_PROBE65_WIDTH {3} \
   CONFIG.C_PROBE66_TYPE {0} \
   CONFIG.C_PROBE66_WIDTH {2} \
   CONFIG.C_PROBE67_TYPE {0} \
   CONFIG.C_PROBE67_WIDTH {2} \
   CONFIG.C_PROBE68_TYPE {0} \
   CONFIG.C_PROBE68_WIDTH {3} \
   CONFIG.C_PROBE69_TYPE {0} \
   CONFIG.C_PROBE69_WIDTH {2} \
   CONFIG.C_PROBE6_TYPE {0} \
   CONFIG.C_PROBE6_WIDTH {2} \
   CONFIG.C_PROBE70_TYPE {0} \
   CONFIG.C_PROBE70_WIDTH {32} \
   CONFIG.C_PROBE71_TYPE {0} \
   CONFIG.C_PROBE71_WIDTH {8} \
   CONFIG.C_PROBE72_TYPE {0} \
   CONFIG.C_PROBE72_WIDTH {3} \
   CONFIG.C_PROBE73_TYPE {0} \
   CONFIG.C_PROBE73_WIDTH {2} \
   CONFIG.C_PROBE74_TYPE {0} \
   CONFIG.C_PROBE74_WIDTH {32} \
   CONFIG.C_PROBE75_TYPE {0} \
   CONFIG.C_PROBE75_WIDTH {8} \
   CONFIG.C_PROBE76_TYPE {0} \
   CONFIG.C_PROBE76_WIDTH {3} \
   CONFIG.C_PROBE77_TYPE {0} \
   CONFIG.C_PROBE77_WIDTH {2} \
   CONFIG.C_PROBE78_TYPE {0} \
   CONFIG.C_PROBE78_WIDTH {2} \
   CONFIG.C_PROBE79_TYPE {0} \
   CONFIG.C_PROBE79_WIDTH {2} \
   CONFIG.C_PROBE7_TYPE {0} \
   CONFIG.C_PROBE7_WIDTH {32} \
   CONFIG.C_PROBE80_TYPE {0} \
   CONFIG.C_PROBE80_WIDTH {64} \
   CONFIG.C_PROBE81_TYPE {0} \
   CONFIG.C_PROBE81_WIDTH {64} \
   CONFIG.C_PROBE82_TYPE {0} \
   CONFIG.C_PROBE82_WIDTH {8} \
   CONFIG.C_PROBE83_TYPE {0} \
   CONFIG.C_PROBE83_WIDTH {2} \
   CONFIG.C_PROBE84_TYPE {0} \
   CONFIG.C_PROBE84_WIDTH {3} \
   CONFIG.C_PROBE85_TYPE {0} \
   CONFIG.C_PROBE85_WIDTH {2} \
   CONFIG.C_PROBE86_TYPE {0} \
   CONFIG.C_PROBE86_WIDTH {2} \
   CONFIG.C_PROBE87_TYPE {0} \
   CONFIG.C_PROBE87_WIDTH {3} \
   CONFIG.C_PROBE88_TYPE {0} \
   CONFIG.C_PROBE88_WIDTH {24} \
   CONFIG.C_PROBE89_TYPE {0} \
   CONFIG.C_PROBE89_WIDTH {1} \
   CONFIG.C_PROBE8_TYPE {0} \
   CONFIG.C_PROBE8_WIDTH {1} \
   CONFIG.C_PROBE90_TYPE {0} \
   CONFIG.C_PROBE90_WIDTH {1} \
   CONFIG.C_PROBE91_TYPE {0} \
   CONFIG.C_PROBE91_WIDTH {1} \
   CONFIG.C_PROBE92_TYPE {0} \
   CONFIG.C_PROBE92_WIDTH {1} \
   CONFIG.C_PROBE93_TYPE {0} \
   CONFIG.C_PROBE93_WIDTH {24} \
   CONFIG.C_PROBE94_TYPE {0} \
   CONFIG.C_PROBE94_WIDTH {1} \
   CONFIG.C_PROBE95_TYPE {0} \
   CONFIG.C_PROBE95_WIDTH {1} \
   CONFIG.C_PROBE96_TYPE {0} \
   CONFIG.C_PROBE96_WIDTH {1} \
   CONFIG.C_PROBE97_TYPE {0} \
   CONFIG.C_PROBE97_WIDTH {1} \
   CONFIG.C_PROBE98_TYPE {0} \
   CONFIG.C_PROBE98_WIDTH {2} \
   CONFIG.C_PROBE99_TYPE {0} \
   CONFIG.C_PROBE99_WIDTH {9} \
   CONFIG.C_PROBE9_TYPE {0} \
   CONFIG.C_PROBE9_WIDTH {4} \
   CONFIG.C_TIME_TAG_WIDTH {32} \
   CONFIG.C_TRIGIN_EN {false} \
   CONFIG.C_TRIGOUT_EN {false} \
   CONFIG.C_XLNX_HW_PROBE_INFO {DEFAULT} \
 ] $ila_lib

  # Create instance: slot_10_ar, and set properties
  set slot_10_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_10_ar ]

  # Create instance: slot_10_aw, and set properties
  set slot_10_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_10_aw ]

  # Create instance: slot_10_b, and set properties
  set slot_10_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_10_b ]

  # Create instance: slot_10_r, and set properties
  set slot_10_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_10_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_10_r

  # Create instance: slot_10_w, and set properties
  set slot_10_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_10_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_10_w

  # Create instance: slot_11_ar, and set properties
  set slot_11_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_11_ar ]

  # Create instance: slot_11_aw, and set properties
  set slot_11_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_11_aw ]

  # Create instance: slot_11_b, and set properties
  set slot_11_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_11_b ]

  # Create instance: slot_11_r, and set properties
  set slot_11_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_11_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_11_r

  # Create instance: slot_11_w, and set properties
  set slot_11_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_11_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_11_w

  # Create instance: slot_12_ar, and set properties
  set slot_12_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_12_ar ]

  # Create instance: slot_12_aw, and set properties
  set slot_12_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_12_aw ]

  # Create instance: slot_12_b, and set properties
  set slot_12_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_12_b ]

  # Create instance: slot_12_r, and set properties
  set slot_12_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_12_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_12_r

  # Create instance: slot_12_w, and set properties
  set slot_12_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_12_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_12_w

  # Create instance: slot_13_ar, and set properties
  set slot_13_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_13_ar ]

  # Create instance: slot_13_aw, and set properties
  set slot_13_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_13_aw ]

  # Create instance: slot_13_b, and set properties
  set slot_13_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_13_b ]

  # Create instance: slot_13_r, and set properties
  set slot_13_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_13_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $slot_13_r

  # Create instance: slot_13_w, and set properties
  set slot_13_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_13_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $slot_13_w

  # Create instance: slot_14_ar, and set properties
  set slot_14_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_14_ar ]

  # Create instance: slot_14_aw, and set properties
  set slot_14_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_14_aw ]

  # Create instance: slot_14_b, and set properties
  set slot_14_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_14_b ]

  # Create instance: slot_14_r, and set properties
  set slot_14_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_14_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $slot_14_r

  # Create instance: slot_14_w, and set properties
  set slot_14_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_14_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $slot_14_w

  # Create instance: slot_1_ar, and set properties
  set slot_1_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_1_ar ]

  # Create instance: slot_1_aw, and set properties
  set slot_1_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_1_aw ]

  # Create instance: slot_1_b, and set properties
  set slot_1_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_1_b ]

  # Create instance: slot_1_r, and set properties
  set slot_1_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_1_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_1_r

  # Create instance: slot_1_w, and set properties
  set slot_1_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_1_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_1_w

  # Create instance: slot_2_ar, and set properties
  set slot_2_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_2_ar ]

  # Create instance: slot_2_aw, and set properties
  set slot_2_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_2_aw ]

  # Create instance: slot_2_b, and set properties
  set slot_2_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_2_b ]

  # Create instance: slot_2_r, and set properties
  set slot_2_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_2_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $slot_2_r

  # Create instance: slot_2_w, and set properties
  set slot_2_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_2_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $slot_2_w

  # Create instance: slot_3_ar, and set properties
  set slot_3_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_3_ar ]

  # Create instance: slot_3_aw, and set properties
  set slot_3_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_3_aw ]

  # Create instance: slot_3_b, and set properties
  set slot_3_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_3_b ]

  # Create instance: slot_3_r, and set properties
  set slot_3_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_3_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_3_r

  # Create instance: slot_3_w, and set properties
  set slot_3_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_3_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_3_w

  # Create instance: slot_4_ar, and set properties
  set slot_4_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_4_ar ]

  # Create instance: slot_4_aw, and set properties
  set slot_4_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_4_aw ]

  # Create instance: slot_4_b, and set properties
  set slot_4_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_4_b ]

  # Create instance: slot_4_r, and set properties
  set slot_4_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_4_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_4_r

  # Create instance: slot_4_w, and set properties
  set slot_4_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_4_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_4_w

  # Create instance: slot_7_ar, and set properties
  set slot_7_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_7_ar ]

  # Create instance: slot_7_aw, and set properties
  set slot_7_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_7_aw ]

  # Create instance: slot_7_b, and set properties
  set slot_7_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_7_b ]

  # Create instance: slot_7_r, and set properties
  set slot_7_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_7_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $slot_7_r

  # Create instance: slot_7_w, and set properties
  set slot_7_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_7_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $slot_7_w

  # Create interface connections
connect_bd_intf_net -intf_net Conn [get_bd_intf_ports SLOT_0_AXIS] [get_bd_intf_pins g_inst/slot_0_axis]
connect_bd_intf_net -intf_net Conn1 [get_bd_intf_ports SLOT_1_AXI] [get_bd_intf_pins g_inst/slot_1_axi]
connect_bd_intf_net -intf_net Conn2 [get_bd_intf_ports SLOT_2_AXI] [get_bd_intf_pins g_inst/slot_2_axi]
connect_bd_intf_net -intf_net Conn3 [get_bd_intf_ports SLOT_3_AXI] [get_bd_intf_pins g_inst/slot_3_axi]
connect_bd_intf_net -intf_net Conn4 [get_bd_intf_ports SLOT_4_AXI] [get_bd_intf_pins g_inst/slot_4_axi]
connect_bd_intf_net -intf_net Conn5 [get_bd_intf_ports SLOT_5_AXIS] [get_bd_intf_pins g_inst/slot_5_axis]
connect_bd_intf_net -intf_net Conn6 [get_bd_intf_ports SLOT_6_AXIS] [get_bd_intf_pins g_inst/slot_6_axis]
connect_bd_intf_net -intf_net Conn7 [get_bd_intf_ports SLOT_7_AXI] [get_bd_intf_pins g_inst/slot_7_axi]
connect_bd_intf_net -intf_net Conn8 [get_bd_intf_ports SLOT_8_AXIS] [get_bd_intf_pins g_inst/slot_8_axis]
connect_bd_intf_net -intf_net Conn9 [get_bd_intf_ports SLOT_9_AXIS] [get_bd_intf_pins g_inst/slot_9_axis]
connect_bd_intf_net -intf_net Conn10 [get_bd_intf_ports SLOT_10_AXI] [get_bd_intf_pins g_inst/slot_10_axi]
connect_bd_intf_net -intf_net Conn11 [get_bd_intf_ports SLOT_11_AXI] [get_bd_intf_pins g_inst/slot_11_axi]
connect_bd_intf_net -intf_net Conn12 [get_bd_intf_ports SLOT_12_AXI] [get_bd_intf_pins g_inst/slot_12_axi]
connect_bd_intf_net -intf_net Conn13 [get_bd_intf_ports SLOT_13_AXI] [get_bd_intf_pins g_inst/slot_13_axi]
connect_bd_intf_net -intf_net Conn14 [get_bd_intf_ports SLOT_14_AXI] [get_bd_intf_pins g_inst/slot_14_axi]

  # Create port connections
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins g_inst/aclk] [get_bd_pins ila_lib/clk]
  connect_bd_net -net net_slot_0_axis_tdata [get_bd_pins g_inst/m_slot_0_axis_tdata] [get_bd_pins ila_lib/probe0]
  connect_bd_net -net net_slot_0_axis_tkeep [get_bd_pins g_inst/m_slot_0_axis_tkeep] [get_bd_pins ila_lib/probe1]
  connect_bd_net -net net_slot_0_axis_tlast [get_bd_pins g_inst/m_slot_0_axis_tlast] [get_bd_pins ila_lib/probe5]
  connect_bd_net -net net_slot_0_axis_tready [get_bd_pins g_inst/m_slot_0_axis_tready] [get_bd_pins ila_lib/probe4]
  connect_bd_net -net net_slot_0_axis_tuser [get_bd_pins g_inst/m_slot_0_axis_tuser] [get_bd_pins ila_lib/probe2]
  connect_bd_net -net net_slot_0_axis_tvalid [get_bd_pins g_inst/m_slot_0_axis_tvalid] [get_bd_pins ila_lib/probe3]
  connect_bd_net -net net_slot_10_axi_ar_cnt [get_bd_pins g_inst/m_slot_10_axi_ar_cnt] [get_bd_pins ila_lib/probe126]
  connect_bd_net -net net_slot_10_axi_ar_ctrl [get_bd_pins ila_lib/probe143] [get_bd_pins slot_10_ar/dout]
  connect_bd_net -net net_slot_10_axi_araddr [get_bd_pins g_inst/m_slot_10_axi_araddr] [get_bd_pins ila_lib/probe127]
  connect_bd_net -net net_slot_10_axi_arlen [get_bd_pins g_inst/m_slot_10_axi_arlen] [get_bd_pins ila_lib/probe128]
  connect_bd_net -net net_slot_10_axi_arready [get_bd_pins g_inst/m_slot_10_axi_arready] [get_bd_pins slot_10_ar/In1]
  connect_bd_net -net net_slot_10_axi_arsize [get_bd_pins g_inst/m_slot_10_axi_arsize] [get_bd_pins ila_lib/probe129]
  connect_bd_net -net net_slot_10_axi_arvalid [get_bd_pins g_inst/m_slot_10_axi_arvalid] [get_bd_pins slot_10_ar/In0]
  connect_bd_net -net net_slot_10_axi_aw_cnt [get_bd_pins g_inst/m_slot_10_axi_aw_cnt] [get_bd_pins ila_lib/probe130]
  connect_bd_net -net net_slot_10_axi_aw_ctrl [get_bd_pins ila_lib/probe140] [get_bd_pins slot_10_aw/dout]
  connect_bd_net -net net_slot_10_axi_awaddr [get_bd_pins g_inst/m_slot_10_axi_awaddr] [get_bd_pins ila_lib/probe131]
  connect_bd_net -net net_slot_10_axi_awlen [get_bd_pins g_inst/m_slot_10_axi_awlen] [get_bd_pins ila_lib/probe132]
  connect_bd_net -net net_slot_10_axi_awready [get_bd_pins g_inst/m_slot_10_axi_awready] [get_bd_pins slot_10_aw/In1]
  connect_bd_net -net net_slot_10_axi_awsize [get_bd_pins g_inst/m_slot_10_axi_awsize] [get_bd_pins ila_lib/probe133]
  connect_bd_net -net net_slot_10_axi_awvalid [get_bd_pins g_inst/m_slot_10_axi_awvalid] [get_bd_pins slot_10_aw/In0]
  connect_bd_net -net net_slot_10_axi_b_cnt [get_bd_pins g_inst/m_slot_10_axi_b_cnt] [get_bd_pins ila_lib/probe134]
  connect_bd_net -net net_slot_10_axi_b_ctrl [get_bd_pins ila_lib/probe142] [get_bd_pins slot_10_b/dout]
  connect_bd_net -net net_slot_10_axi_bready [get_bd_pins g_inst/m_slot_10_axi_bready] [get_bd_pins slot_10_b/In1]
  connect_bd_net -net net_slot_10_axi_bresp [get_bd_pins g_inst/m_slot_10_axi_bresp] [get_bd_pins ila_lib/probe135]
  connect_bd_net -net net_slot_10_axi_bvalid [get_bd_pins g_inst/m_slot_10_axi_bvalid] [get_bd_pins slot_10_b/In0]
  connect_bd_net -net net_slot_10_axi_r_cnt [get_bd_pins g_inst/m_slot_10_axi_r_cnt] [get_bd_pins ila_lib/probe136]
  connect_bd_net -net net_slot_10_axi_r_ctrl [get_bd_pins ila_lib/probe144] [get_bd_pins slot_10_r/dout]
  connect_bd_net -net net_slot_10_axi_rdata [get_bd_pins g_inst/m_slot_10_axi_rdata] [get_bd_pins ila_lib/probe137]
  connect_bd_net -net net_slot_10_axi_rlast [get_bd_pins g_inst/m_slot_10_axi_rlast] [get_bd_pins slot_10_r/In2]
  connect_bd_net -net net_slot_10_axi_rready [get_bd_pins g_inst/m_slot_10_axi_rready] [get_bd_pins slot_10_r/In1]
  connect_bd_net -net net_slot_10_axi_rvalid [get_bd_pins g_inst/m_slot_10_axi_rvalid] [get_bd_pins slot_10_r/In0]
  connect_bd_net -net net_slot_10_axi_w_ctrl [get_bd_pins ila_lib/probe141] [get_bd_pins slot_10_w/dout]
  connect_bd_net -net net_slot_10_axi_wdata [get_bd_pins g_inst/m_slot_10_axi_wdata] [get_bd_pins ila_lib/probe138]
  connect_bd_net -net net_slot_10_axi_wlast [get_bd_pins g_inst/m_slot_10_axi_wlast] [get_bd_pins slot_10_w/In2]
  connect_bd_net -net net_slot_10_axi_wready [get_bd_pins g_inst/m_slot_10_axi_wready] [get_bd_pins slot_10_w/In1]
  connect_bd_net -net net_slot_10_axi_wstrb [get_bd_pins g_inst/m_slot_10_axi_wstrb] [get_bd_pins ila_lib/probe139]
  connect_bd_net -net net_slot_10_axi_wvalid [get_bd_pins g_inst/m_slot_10_axi_wvalid] [get_bd_pins slot_10_w/In0]
  connect_bd_net -net net_slot_11_axi_ar_cnt [get_bd_pins g_inst/m_slot_11_axi_ar_cnt] [get_bd_pins ila_lib/probe145]
  connect_bd_net -net net_slot_11_axi_ar_ctrl [get_bd_pins ila_lib/probe163] [get_bd_pins slot_11_ar/dout]
  connect_bd_net -net net_slot_11_axi_araddr [get_bd_pins g_inst/m_slot_11_axi_araddr] [get_bd_pins ila_lib/probe146]
  connect_bd_net -net net_slot_11_axi_arlen [get_bd_pins g_inst/m_slot_11_axi_arlen] [get_bd_pins ila_lib/probe147]
  connect_bd_net -net net_slot_11_axi_arready [get_bd_pins g_inst/m_slot_11_axi_arready] [get_bd_pins slot_11_ar/In1]
  connect_bd_net -net net_slot_11_axi_arsize [get_bd_pins g_inst/m_slot_11_axi_arsize] [get_bd_pins ila_lib/probe148]
  connect_bd_net -net net_slot_11_axi_arvalid [get_bd_pins g_inst/m_slot_11_axi_arvalid] [get_bd_pins slot_11_ar/In0]
  connect_bd_net -net net_slot_11_axi_aw_cnt [get_bd_pins g_inst/m_slot_11_axi_aw_cnt] [get_bd_pins ila_lib/probe149]
  connect_bd_net -net net_slot_11_axi_aw_ctrl [get_bd_pins ila_lib/probe160] [get_bd_pins slot_11_aw/dout]
  connect_bd_net -net net_slot_11_axi_awaddr [get_bd_pins g_inst/m_slot_11_axi_awaddr] [get_bd_pins ila_lib/probe150]
  connect_bd_net -net net_slot_11_axi_awcache [get_bd_pins g_inst/m_slot_11_axi_awcache] [get_bd_pins ila_lib/probe151]
  connect_bd_net -net net_slot_11_axi_awlen [get_bd_pins g_inst/m_slot_11_axi_awlen] [get_bd_pins ila_lib/probe152]
  connect_bd_net -net net_slot_11_axi_awready [get_bd_pins g_inst/m_slot_11_axi_awready] [get_bd_pins slot_11_aw/In1]
  connect_bd_net -net net_slot_11_axi_awsize [get_bd_pins g_inst/m_slot_11_axi_awsize] [get_bd_pins ila_lib/probe153]
  connect_bd_net -net net_slot_11_axi_awvalid [get_bd_pins g_inst/m_slot_11_axi_awvalid] [get_bd_pins slot_11_aw/In0]
  connect_bd_net -net net_slot_11_axi_b_cnt [get_bd_pins g_inst/m_slot_11_axi_b_cnt] [get_bd_pins ila_lib/probe154]
  connect_bd_net -net net_slot_11_axi_b_ctrl [get_bd_pins ila_lib/probe162] [get_bd_pins slot_11_b/dout]
  connect_bd_net -net net_slot_11_axi_bready [get_bd_pins g_inst/m_slot_11_axi_bready] [get_bd_pins slot_11_b/In1]
  connect_bd_net -net net_slot_11_axi_bvalid [get_bd_pins g_inst/m_slot_11_axi_bvalid] [get_bd_pins slot_11_b/In0]
  connect_bd_net -net net_slot_11_axi_r_cnt [get_bd_pins g_inst/m_slot_11_axi_r_cnt] [get_bd_pins ila_lib/probe155]
  connect_bd_net -net net_slot_11_axi_r_ctrl [get_bd_pins ila_lib/probe164] [get_bd_pins slot_11_r/dout]
  connect_bd_net -net net_slot_11_axi_rdata [get_bd_pins g_inst/m_slot_11_axi_rdata] [get_bd_pins ila_lib/probe156]
  connect_bd_net -net net_slot_11_axi_rid [get_bd_pins g_inst/m_slot_11_axi_rid] [get_bd_pins ila_lib/probe157]
  connect_bd_net -net net_slot_11_axi_rlast [get_bd_pins g_inst/m_slot_11_axi_rlast] [get_bd_pins slot_11_r/In2]
  connect_bd_net -net net_slot_11_axi_rready [get_bd_pins g_inst/m_slot_11_axi_rready] [get_bd_pins slot_11_r/In1]
  connect_bd_net -net net_slot_11_axi_rresp [get_bd_pins g_inst/m_slot_11_axi_rresp] [get_bd_pins ila_lib/probe158]
  connect_bd_net -net net_slot_11_axi_rvalid [get_bd_pins g_inst/m_slot_11_axi_rvalid] [get_bd_pins slot_11_r/In0]
  connect_bd_net -net net_slot_11_axi_w_ctrl [get_bd_pins ila_lib/probe161] [get_bd_pins slot_11_w/dout]
  connect_bd_net -net net_slot_11_axi_wdata [get_bd_pins g_inst/m_slot_11_axi_wdata] [get_bd_pins ila_lib/probe159]
  connect_bd_net -net net_slot_11_axi_wlast [get_bd_pins g_inst/m_slot_11_axi_wlast] [get_bd_pins slot_11_w/In2]
  connect_bd_net -net net_slot_11_axi_wready [get_bd_pins g_inst/m_slot_11_axi_wready] [get_bd_pins slot_11_w/In1]
  connect_bd_net -net net_slot_11_axi_wvalid [get_bd_pins g_inst/m_slot_11_axi_wvalid] [get_bd_pins slot_11_w/In0]
  connect_bd_net -net net_slot_12_axi_ar_cnt [get_bd_pins g_inst/m_slot_12_axi_ar_cnt] [get_bd_pins ila_lib/probe165]
  connect_bd_net -net net_slot_12_axi_ar_ctrl [get_bd_pins ila_lib/probe190] [get_bd_pins slot_12_ar/dout]
  connect_bd_net -net net_slot_12_axi_araddr [get_bd_pins g_inst/m_slot_12_axi_araddr] [get_bd_pins ila_lib/probe166]
  connect_bd_net -net net_slot_12_axi_arid [get_bd_pins g_inst/m_slot_12_axi_arid] [get_bd_pins ila_lib/probe167]
  connect_bd_net -net net_slot_12_axi_arlen [get_bd_pins g_inst/m_slot_12_axi_arlen] [get_bd_pins ila_lib/probe168]
  connect_bd_net -net net_slot_12_axi_arprot [get_bd_pins g_inst/m_slot_12_axi_arprot] [get_bd_pins ila_lib/probe169]
  connect_bd_net -net net_slot_12_axi_arready [get_bd_pins g_inst/m_slot_12_axi_arready] [get_bd_pins slot_12_ar/In1]
  connect_bd_net -net net_slot_12_axi_arsize [get_bd_pins g_inst/m_slot_12_axi_arsize] [get_bd_pins ila_lib/probe170]
  connect_bd_net -net net_slot_12_axi_arvalid [get_bd_pins g_inst/m_slot_12_axi_arvalid] [get_bd_pins slot_12_ar/In0]
  connect_bd_net -net net_slot_12_axi_aw_cnt [get_bd_pins g_inst/m_slot_12_axi_aw_cnt] [get_bd_pins ila_lib/probe171]
  connect_bd_net -net net_slot_12_axi_aw_ctrl [get_bd_pins ila_lib/probe187] [get_bd_pins slot_12_aw/dout]
  connect_bd_net -net net_slot_12_axi_awaddr [get_bd_pins g_inst/m_slot_12_axi_awaddr] [get_bd_pins ila_lib/probe172]
  connect_bd_net -net net_slot_12_axi_awid [get_bd_pins g_inst/m_slot_12_axi_awid] [get_bd_pins ila_lib/probe173]
  connect_bd_net -net net_slot_12_axi_awlen [get_bd_pins g_inst/m_slot_12_axi_awlen] [get_bd_pins ila_lib/probe174]
  connect_bd_net -net net_slot_12_axi_awprot [get_bd_pins g_inst/m_slot_12_axi_awprot] [get_bd_pins ila_lib/probe175]
  connect_bd_net -net net_slot_12_axi_awready [get_bd_pins g_inst/m_slot_12_axi_awready] [get_bd_pins slot_12_aw/In1]
  connect_bd_net -net net_slot_12_axi_awsize [get_bd_pins g_inst/m_slot_12_axi_awsize] [get_bd_pins ila_lib/probe176]
  connect_bd_net -net net_slot_12_axi_awvalid [get_bd_pins g_inst/m_slot_12_axi_awvalid] [get_bd_pins slot_12_aw/In0]
  connect_bd_net -net net_slot_12_axi_b_cnt [get_bd_pins g_inst/m_slot_12_axi_b_cnt] [get_bd_pins ila_lib/probe177]
  connect_bd_net -net net_slot_12_axi_b_ctrl [get_bd_pins ila_lib/probe189] [get_bd_pins slot_12_b/dout]
  connect_bd_net -net net_slot_12_axi_bid [get_bd_pins g_inst/m_slot_12_axi_bid] [get_bd_pins ila_lib/probe178]
  connect_bd_net -net net_slot_12_axi_bready [get_bd_pins g_inst/m_slot_12_axi_bready] [get_bd_pins slot_12_b/In1]
  connect_bd_net -net net_slot_12_axi_bresp [get_bd_pins g_inst/m_slot_12_axi_bresp] [get_bd_pins ila_lib/probe179]
  connect_bd_net -net net_slot_12_axi_bvalid [get_bd_pins g_inst/m_slot_12_axi_bvalid] [get_bd_pins slot_12_b/In0]
  connect_bd_net -net net_slot_12_axi_r_cnt [get_bd_pins g_inst/m_slot_12_axi_r_cnt] [get_bd_pins ila_lib/probe180]
  connect_bd_net -net net_slot_12_axi_r_ctrl [get_bd_pins ila_lib/probe191] [get_bd_pins slot_12_r/dout]
  connect_bd_net -net net_slot_12_axi_rdata [get_bd_pins g_inst/m_slot_12_axi_rdata] [get_bd_pins ila_lib/probe181]
  connect_bd_net -net net_slot_12_axi_rid [get_bd_pins g_inst/m_slot_12_axi_rid] [get_bd_pins ila_lib/probe182]
  connect_bd_net -net net_slot_12_axi_rlast [get_bd_pins g_inst/m_slot_12_axi_rlast] [get_bd_pins slot_12_r/In2]
  connect_bd_net -net net_slot_12_axi_rready [get_bd_pins g_inst/m_slot_12_axi_rready] [get_bd_pins slot_12_r/In1]
  connect_bd_net -net net_slot_12_axi_rresp [get_bd_pins g_inst/m_slot_12_axi_rresp] [get_bd_pins ila_lib/probe183]
  connect_bd_net -net net_slot_12_axi_rvalid [get_bd_pins g_inst/m_slot_12_axi_rvalid] [get_bd_pins slot_12_r/In0]
  connect_bd_net -net net_slot_12_axi_w_ctrl [get_bd_pins ila_lib/probe188] [get_bd_pins slot_12_w/dout]
  connect_bd_net -net net_slot_12_axi_wdata [get_bd_pins g_inst/m_slot_12_axi_wdata] [get_bd_pins ila_lib/probe184]
  connect_bd_net -net net_slot_12_axi_wid [get_bd_pins g_inst/m_slot_12_axi_wid] [get_bd_pins ila_lib/probe185]
  connect_bd_net -net net_slot_12_axi_wlast [get_bd_pins g_inst/m_slot_12_axi_wlast] [get_bd_pins slot_12_w/In2]
  connect_bd_net -net net_slot_12_axi_wready [get_bd_pins g_inst/m_slot_12_axi_wready] [get_bd_pins slot_12_w/In1]
  connect_bd_net -net net_slot_12_axi_wstrb [get_bd_pins g_inst/m_slot_12_axi_wstrb] [get_bd_pins ila_lib/probe186]
  connect_bd_net -net net_slot_12_axi_wvalid [get_bd_pins g_inst/m_slot_12_axi_wvalid] [get_bd_pins slot_12_w/In0]
  connect_bd_net -net net_slot_13_axi_ar_cnt [get_bd_pins g_inst/m_slot_13_axi_ar_cnt] [get_bd_pins ila_lib/probe192]
  connect_bd_net -net net_slot_13_axi_ar_ctrl [get_bd_pins ila_lib/probe208] [get_bd_pins slot_13_ar/dout]
  connect_bd_net -net net_slot_13_axi_araddr [get_bd_pins g_inst/m_slot_13_axi_araddr] [get_bd_pins ila_lib/probe193]
  connect_bd_net -net net_slot_13_axi_arprot [get_bd_pins g_inst/m_slot_13_axi_arprot] [get_bd_pins ila_lib/probe194]
  connect_bd_net -net net_slot_13_axi_arready [get_bd_pins g_inst/m_slot_13_axi_arready] [get_bd_pins slot_13_ar/In1]
  connect_bd_net -net net_slot_13_axi_arvalid [get_bd_pins g_inst/m_slot_13_axi_arvalid] [get_bd_pins slot_13_ar/In0]
  connect_bd_net -net net_slot_13_axi_aw_cnt [get_bd_pins g_inst/m_slot_13_axi_aw_cnt] [get_bd_pins ila_lib/probe195]
  connect_bd_net -net net_slot_13_axi_aw_ctrl [get_bd_pins ila_lib/probe205] [get_bd_pins slot_13_aw/dout]
  connect_bd_net -net net_slot_13_axi_awaddr [get_bd_pins g_inst/m_slot_13_axi_awaddr] [get_bd_pins ila_lib/probe196]
  connect_bd_net -net net_slot_13_axi_awprot [get_bd_pins g_inst/m_slot_13_axi_awprot] [get_bd_pins ila_lib/probe197]
  connect_bd_net -net net_slot_13_axi_awready [get_bd_pins g_inst/m_slot_13_axi_awready] [get_bd_pins slot_13_aw/In1]
  connect_bd_net -net net_slot_13_axi_awvalid [get_bd_pins g_inst/m_slot_13_axi_awvalid] [get_bd_pins slot_13_aw/In0]
  connect_bd_net -net net_slot_13_axi_b_cnt [get_bd_pins g_inst/m_slot_13_axi_b_cnt] [get_bd_pins ila_lib/probe198]
  connect_bd_net -net net_slot_13_axi_b_ctrl [get_bd_pins ila_lib/probe207] [get_bd_pins slot_13_b/dout]
  connect_bd_net -net net_slot_13_axi_bready [get_bd_pins g_inst/m_slot_13_axi_bready] [get_bd_pins slot_13_b/In1]
  connect_bd_net -net net_slot_13_axi_bresp [get_bd_pins g_inst/m_slot_13_axi_bresp] [get_bd_pins ila_lib/probe199]
  connect_bd_net -net net_slot_13_axi_bvalid [get_bd_pins g_inst/m_slot_13_axi_bvalid] [get_bd_pins slot_13_b/In0]
  connect_bd_net -net net_slot_13_axi_r_cnt [get_bd_pins g_inst/m_slot_13_axi_r_cnt] [get_bd_pins ila_lib/probe200]
  connect_bd_net -net net_slot_13_axi_r_ctrl [get_bd_pins ila_lib/probe209] [get_bd_pins slot_13_r/dout]
  connect_bd_net -net net_slot_13_axi_rdata [get_bd_pins g_inst/m_slot_13_axi_rdata] [get_bd_pins ila_lib/probe201]
  connect_bd_net -net net_slot_13_axi_rready [get_bd_pins g_inst/m_slot_13_axi_rready] [get_bd_pins slot_13_r/In1]
  connect_bd_net -net net_slot_13_axi_rresp [get_bd_pins g_inst/m_slot_13_axi_rresp] [get_bd_pins ila_lib/probe202]
  connect_bd_net -net net_slot_13_axi_rvalid [get_bd_pins g_inst/m_slot_13_axi_rvalid] [get_bd_pins slot_13_r/In0]
  connect_bd_net -net net_slot_13_axi_w_ctrl [get_bd_pins ila_lib/probe206] [get_bd_pins slot_13_w/dout]
  connect_bd_net -net net_slot_13_axi_wdata [get_bd_pins g_inst/m_slot_13_axi_wdata] [get_bd_pins ila_lib/probe203]
  connect_bd_net -net net_slot_13_axi_wready [get_bd_pins g_inst/m_slot_13_axi_wready] [get_bd_pins slot_13_w/In1]
  connect_bd_net -net net_slot_13_axi_wstrb [get_bd_pins g_inst/m_slot_13_axi_wstrb] [get_bd_pins ila_lib/probe204]
  connect_bd_net -net net_slot_13_axi_wvalid [get_bd_pins g_inst/m_slot_13_axi_wvalid] [get_bd_pins slot_13_w/In0]
  connect_bd_net -net net_slot_14_axi_ar_cnt [get_bd_pins g_inst/m_slot_14_axi_ar_cnt] [get_bd_pins ila_lib/probe210]
  connect_bd_net -net net_slot_14_axi_ar_ctrl [get_bd_pins ila_lib/probe226] [get_bd_pins slot_14_ar/dout]
  connect_bd_net -net net_slot_14_axi_araddr [get_bd_pins g_inst/m_slot_14_axi_araddr] [get_bd_pins ila_lib/probe211]
  connect_bd_net -net net_slot_14_axi_arprot [get_bd_pins g_inst/m_slot_14_axi_arprot] [get_bd_pins ila_lib/probe212]
  connect_bd_net -net net_slot_14_axi_arready [get_bd_pins g_inst/m_slot_14_axi_arready] [get_bd_pins slot_14_ar/In1]
  connect_bd_net -net net_slot_14_axi_arvalid [get_bd_pins g_inst/m_slot_14_axi_arvalid] [get_bd_pins slot_14_ar/In0]
  connect_bd_net -net net_slot_14_axi_aw_cnt [get_bd_pins g_inst/m_slot_14_axi_aw_cnt] [get_bd_pins ila_lib/probe213]
  connect_bd_net -net net_slot_14_axi_aw_ctrl [get_bd_pins ila_lib/probe223] [get_bd_pins slot_14_aw/dout]
  connect_bd_net -net net_slot_14_axi_awaddr [get_bd_pins g_inst/m_slot_14_axi_awaddr] [get_bd_pins ila_lib/probe214]
  connect_bd_net -net net_slot_14_axi_awprot [get_bd_pins g_inst/m_slot_14_axi_awprot] [get_bd_pins ila_lib/probe215]
  connect_bd_net -net net_slot_14_axi_awready [get_bd_pins g_inst/m_slot_14_axi_awready] [get_bd_pins slot_14_aw/In1]
  connect_bd_net -net net_slot_14_axi_awvalid [get_bd_pins g_inst/m_slot_14_axi_awvalid] [get_bd_pins slot_14_aw/In0]
  connect_bd_net -net net_slot_14_axi_b_cnt [get_bd_pins g_inst/m_slot_14_axi_b_cnt] [get_bd_pins ila_lib/probe216]
  connect_bd_net -net net_slot_14_axi_b_ctrl [get_bd_pins ila_lib/probe225] [get_bd_pins slot_14_b/dout]
  connect_bd_net -net net_slot_14_axi_bready [get_bd_pins g_inst/m_slot_14_axi_bready] [get_bd_pins slot_14_b/In1]
  connect_bd_net -net net_slot_14_axi_bresp [get_bd_pins g_inst/m_slot_14_axi_bresp] [get_bd_pins ila_lib/probe217]
  connect_bd_net -net net_slot_14_axi_bvalid [get_bd_pins g_inst/m_slot_14_axi_bvalid] [get_bd_pins slot_14_b/In0]
  connect_bd_net -net net_slot_14_axi_r_cnt [get_bd_pins g_inst/m_slot_14_axi_r_cnt] [get_bd_pins ila_lib/probe218]
  connect_bd_net -net net_slot_14_axi_r_ctrl [get_bd_pins ila_lib/probe227] [get_bd_pins slot_14_r/dout]
  connect_bd_net -net net_slot_14_axi_rdata [get_bd_pins g_inst/m_slot_14_axi_rdata] [get_bd_pins ila_lib/probe219]
  connect_bd_net -net net_slot_14_axi_rready [get_bd_pins g_inst/m_slot_14_axi_rready] [get_bd_pins slot_14_r/In1]
  connect_bd_net -net net_slot_14_axi_rresp [get_bd_pins g_inst/m_slot_14_axi_rresp] [get_bd_pins ila_lib/probe220]
  connect_bd_net -net net_slot_14_axi_rvalid [get_bd_pins g_inst/m_slot_14_axi_rvalid] [get_bd_pins slot_14_r/In0]
  connect_bd_net -net net_slot_14_axi_w_ctrl [get_bd_pins ila_lib/probe224] [get_bd_pins slot_14_w/dout]
  connect_bd_net -net net_slot_14_axi_wdata [get_bd_pins g_inst/m_slot_14_axi_wdata] [get_bd_pins ila_lib/probe221]
  connect_bd_net -net net_slot_14_axi_wready [get_bd_pins g_inst/m_slot_14_axi_wready] [get_bd_pins slot_14_w/In1]
  connect_bd_net -net net_slot_14_axi_wstrb [get_bd_pins g_inst/m_slot_14_axi_wstrb] [get_bd_pins ila_lib/probe222]
  connect_bd_net -net net_slot_14_axi_wvalid [get_bd_pins g_inst/m_slot_14_axi_wvalid] [get_bd_pins slot_14_w/In0]
  connect_bd_net -net net_slot_1_axi_ar_cnt [get_bd_pins g_inst/m_slot_1_axi_ar_cnt] [get_bd_pins ila_lib/probe6]
  connect_bd_net -net net_slot_1_axi_ar_ctrl [get_bd_pins ila_lib/probe31] [get_bd_pins slot_1_ar/dout]
  connect_bd_net -net net_slot_1_axi_araddr [get_bd_pins g_inst/m_slot_1_axi_araddr] [get_bd_pins ila_lib/probe7]
  connect_bd_net -net net_slot_1_axi_arid [get_bd_pins g_inst/m_slot_1_axi_arid] [get_bd_pins ila_lib/probe8]
  connect_bd_net -net net_slot_1_axi_arlen [get_bd_pins g_inst/m_slot_1_axi_arlen] [get_bd_pins ila_lib/probe9]
  connect_bd_net -net net_slot_1_axi_arprot [get_bd_pins g_inst/m_slot_1_axi_arprot] [get_bd_pins ila_lib/probe10]
  connect_bd_net -net net_slot_1_axi_arready [get_bd_pins g_inst/m_slot_1_axi_arready] [get_bd_pins slot_1_ar/In1]
  connect_bd_net -net net_slot_1_axi_arsize [get_bd_pins g_inst/m_slot_1_axi_arsize] [get_bd_pins ila_lib/probe11]
  connect_bd_net -net net_slot_1_axi_arvalid [get_bd_pins g_inst/m_slot_1_axi_arvalid] [get_bd_pins slot_1_ar/In0]
  connect_bd_net -net net_slot_1_axi_aw_cnt [get_bd_pins g_inst/m_slot_1_axi_aw_cnt] [get_bd_pins ila_lib/probe12]
  connect_bd_net -net net_slot_1_axi_aw_ctrl [get_bd_pins ila_lib/probe28] [get_bd_pins slot_1_aw/dout]
  connect_bd_net -net net_slot_1_axi_awaddr [get_bd_pins g_inst/m_slot_1_axi_awaddr] [get_bd_pins ila_lib/probe13]
  connect_bd_net -net net_slot_1_axi_awid [get_bd_pins g_inst/m_slot_1_axi_awid] [get_bd_pins ila_lib/probe14]
  connect_bd_net -net net_slot_1_axi_awlen [get_bd_pins g_inst/m_slot_1_axi_awlen] [get_bd_pins ila_lib/probe15]
  connect_bd_net -net net_slot_1_axi_awprot [get_bd_pins g_inst/m_slot_1_axi_awprot] [get_bd_pins ila_lib/probe16]
  connect_bd_net -net net_slot_1_axi_awready [get_bd_pins g_inst/m_slot_1_axi_awready] [get_bd_pins slot_1_aw/In1]
  connect_bd_net -net net_slot_1_axi_awsize [get_bd_pins g_inst/m_slot_1_axi_awsize] [get_bd_pins ila_lib/probe17]
  connect_bd_net -net net_slot_1_axi_awvalid [get_bd_pins g_inst/m_slot_1_axi_awvalid] [get_bd_pins slot_1_aw/In0]
  connect_bd_net -net net_slot_1_axi_b_cnt [get_bd_pins g_inst/m_slot_1_axi_b_cnt] [get_bd_pins ila_lib/probe18]
  connect_bd_net -net net_slot_1_axi_b_ctrl [get_bd_pins ila_lib/probe30] [get_bd_pins slot_1_b/dout]
  connect_bd_net -net net_slot_1_axi_bid [get_bd_pins g_inst/m_slot_1_axi_bid] [get_bd_pins ila_lib/probe19]
  connect_bd_net -net net_slot_1_axi_bready [get_bd_pins g_inst/m_slot_1_axi_bready] [get_bd_pins slot_1_b/In1]
  connect_bd_net -net net_slot_1_axi_bresp [get_bd_pins g_inst/m_slot_1_axi_bresp] [get_bd_pins ila_lib/probe20]
  connect_bd_net -net net_slot_1_axi_bvalid [get_bd_pins g_inst/m_slot_1_axi_bvalid] [get_bd_pins slot_1_b/In0]
  connect_bd_net -net net_slot_1_axi_r_cnt [get_bd_pins g_inst/m_slot_1_axi_r_cnt] [get_bd_pins ila_lib/probe21]
  connect_bd_net -net net_slot_1_axi_r_ctrl [get_bd_pins ila_lib/probe32] [get_bd_pins slot_1_r/dout]
  connect_bd_net -net net_slot_1_axi_rdata [get_bd_pins g_inst/m_slot_1_axi_rdata] [get_bd_pins ila_lib/probe22]
  connect_bd_net -net net_slot_1_axi_rid [get_bd_pins g_inst/m_slot_1_axi_rid] [get_bd_pins ila_lib/probe23]
  connect_bd_net -net net_slot_1_axi_rlast [get_bd_pins g_inst/m_slot_1_axi_rlast] [get_bd_pins slot_1_r/In2]
  connect_bd_net -net net_slot_1_axi_rready [get_bd_pins g_inst/m_slot_1_axi_rready] [get_bd_pins slot_1_r/In1]
  connect_bd_net -net net_slot_1_axi_rresp [get_bd_pins g_inst/m_slot_1_axi_rresp] [get_bd_pins ila_lib/probe24]
  connect_bd_net -net net_slot_1_axi_rvalid [get_bd_pins g_inst/m_slot_1_axi_rvalid] [get_bd_pins slot_1_r/In0]
  connect_bd_net -net net_slot_1_axi_w_ctrl [get_bd_pins ila_lib/probe29] [get_bd_pins slot_1_w/dout]
  connect_bd_net -net net_slot_1_axi_wdata [get_bd_pins g_inst/m_slot_1_axi_wdata] [get_bd_pins ila_lib/probe25]
  connect_bd_net -net net_slot_1_axi_wid [get_bd_pins g_inst/m_slot_1_axi_wid] [get_bd_pins ila_lib/probe26]
  connect_bd_net -net net_slot_1_axi_wlast [get_bd_pins g_inst/m_slot_1_axi_wlast] [get_bd_pins slot_1_w/In2]
  connect_bd_net -net net_slot_1_axi_wready [get_bd_pins g_inst/m_slot_1_axi_wready] [get_bd_pins slot_1_w/In1]
  connect_bd_net -net net_slot_1_axi_wstrb [get_bd_pins g_inst/m_slot_1_axi_wstrb] [get_bd_pins ila_lib/probe27]
  connect_bd_net -net net_slot_1_axi_wvalid [get_bd_pins g_inst/m_slot_1_axi_wvalid] [get_bd_pins slot_1_w/In0]
  connect_bd_net -net net_slot_2_axi_ar_cnt [get_bd_pins g_inst/m_slot_2_axi_ar_cnt] [get_bd_pins ila_lib/probe33]
  connect_bd_net -net net_slot_2_axi_ar_ctrl [get_bd_pins ila_lib/probe49] [get_bd_pins slot_2_ar/dout]
  connect_bd_net -net net_slot_2_axi_araddr [get_bd_pins g_inst/m_slot_2_axi_araddr] [get_bd_pins ila_lib/probe34]
  connect_bd_net -net net_slot_2_axi_arprot [get_bd_pins g_inst/m_slot_2_axi_arprot] [get_bd_pins ila_lib/probe35]
  connect_bd_net -net net_slot_2_axi_arready [get_bd_pins g_inst/m_slot_2_axi_arready] [get_bd_pins slot_2_ar/In1]
  connect_bd_net -net net_slot_2_axi_arvalid [get_bd_pins g_inst/m_slot_2_axi_arvalid] [get_bd_pins slot_2_ar/In0]
  connect_bd_net -net net_slot_2_axi_aw_cnt [get_bd_pins g_inst/m_slot_2_axi_aw_cnt] [get_bd_pins ila_lib/probe36]
  connect_bd_net -net net_slot_2_axi_aw_ctrl [get_bd_pins ila_lib/probe46] [get_bd_pins slot_2_aw/dout]
  connect_bd_net -net net_slot_2_axi_awaddr [get_bd_pins g_inst/m_slot_2_axi_awaddr] [get_bd_pins ila_lib/probe37]
  connect_bd_net -net net_slot_2_axi_awprot [get_bd_pins g_inst/m_slot_2_axi_awprot] [get_bd_pins ila_lib/probe38]
  connect_bd_net -net net_slot_2_axi_awready [get_bd_pins g_inst/m_slot_2_axi_awready] [get_bd_pins slot_2_aw/In1]
  connect_bd_net -net net_slot_2_axi_awvalid [get_bd_pins g_inst/m_slot_2_axi_awvalid] [get_bd_pins slot_2_aw/In0]
  connect_bd_net -net net_slot_2_axi_b_cnt [get_bd_pins g_inst/m_slot_2_axi_b_cnt] [get_bd_pins ila_lib/probe39]
  connect_bd_net -net net_slot_2_axi_b_ctrl [get_bd_pins ila_lib/probe48] [get_bd_pins slot_2_b/dout]
  connect_bd_net -net net_slot_2_axi_bready [get_bd_pins g_inst/m_slot_2_axi_bready] [get_bd_pins slot_2_b/In1]
  connect_bd_net -net net_slot_2_axi_bresp [get_bd_pins g_inst/m_slot_2_axi_bresp] [get_bd_pins ila_lib/probe40]
  connect_bd_net -net net_slot_2_axi_bvalid [get_bd_pins g_inst/m_slot_2_axi_bvalid] [get_bd_pins slot_2_b/In0]
  connect_bd_net -net net_slot_2_axi_r_cnt [get_bd_pins g_inst/m_slot_2_axi_r_cnt] [get_bd_pins ila_lib/probe41]
  connect_bd_net -net net_slot_2_axi_r_ctrl [get_bd_pins ila_lib/probe50] [get_bd_pins slot_2_r/dout]
  connect_bd_net -net net_slot_2_axi_rdata [get_bd_pins g_inst/m_slot_2_axi_rdata] [get_bd_pins ila_lib/probe42]
  connect_bd_net -net net_slot_2_axi_rready [get_bd_pins g_inst/m_slot_2_axi_rready] [get_bd_pins slot_2_r/In1]
  connect_bd_net -net net_slot_2_axi_rresp [get_bd_pins g_inst/m_slot_2_axi_rresp] [get_bd_pins ila_lib/probe43]
  connect_bd_net -net net_slot_2_axi_rvalid [get_bd_pins g_inst/m_slot_2_axi_rvalid] [get_bd_pins slot_2_r/In0]
  connect_bd_net -net net_slot_2_axi_w_ctrl [get_bd_pins ila_lib/probe47] [get_bd_pins slot_2_w/dout]
  connect_bd_net -net net_slot_2_axi_wdata [get_bd_pins g_inst/m_slot_2_axi_wdata] [get_bd_pins ila_lib/probe44]
  connect_bd_net -net net_slot_2_axi_wready [get_bd_pins g_inst/m_slot_2_axi_wready] [get_bd_pins slot_2_w/In1]
  connect_bd_net -net net_slot_2_axi_wstrb [get_bd_pins g_inst/m_slot_2_axi_wstrb] [get_bd_pins ila_lib/probe45]
  connect_bd_net -net net_slot_2_axi_wvalid [get_bd_pins g_inst/m_slot_2_axi_wvalid] [get_bd_pins slot_2_w/In0]
  connect_bd_net -net net_slot_3_axi_ar_cnt [get_bd_pins g_inst/m_slot_3_axi_ar_cnt] [get_bd_pins ila_lib/probe51]
  connect_bd_net -net net_slot_3_axi_ar_ctrl [get_bd_pins ila_lib/probe67] [get_bd_pins slot_3_ar/dout]
  connect_bd_net -net net_slot_3_axi_araddr [get_bd_pins g_inst/m_slot_3_axi_araddr] [get_bd_pins ila_lib/probe52]
  connect_bd_net -net net_slot_3_axi_arlen [get_bd_pins g_inst/m_slot_3_axi_arlen] [get_bd_pins ila_lib/probe53]
  connect_bd_net -net net_slot_3_axi_arready [get_bd_pins g_inst/m_slot_3_axi_arready] [get_bd_pins slot_3_ar/In1]
  connect_bd_net -net net_slot_3_axi_arsize [get_bd_pins g_inst/m_slot_3_axi_arsize] [get_bd_pins ila_lib/probe54]
  connect_bd_net -net net_slot_3_axi_arvalid [get_bd_pins g_inst/m_slot_3_axi_arvalid] [get_bd_pins slot_3_ar/In0]
  connect_bd_net -net net_slot_3_axi_aw_cnt [get_bd_pins g_inst/m_slot_3_axi_aw_cnt] [get_bd_pins ila_lib/probe55]
  connect_bd_net -net net_slot_3_axi_aw_ctrl [get_bd_pins ila_lib/probe64] [get_bd_pins slot_3_aw/dout]
  connect_bd_net -net net_slot_3_axi_awaddr [get_bd_pins g_inst/m_slot_3_axi_awaddr] [get_bd_pins ila_lib/probe56]
  connect_bd_net -net net_slot_3_axi_awlen [get_bd_pins g_inst/m_slot_3_axi_awlen] [get_bd_pins ila_lib/probe57]
  connect_bd_net -net net_slot_3_axi_awready [get_bd_pins g_inst/m_slot_3_axi_awready] [get_bd_pins slot_3_aw/In1]
  connect_bd_net -net net_slot_3_axi_awsize [get_bd_pins g_inst/m_slot_3_axi_awsize] [get_bd_pins ila_lib/probe58]
  connect_bd_net -net net_slot_3_axi_awvalid [get_bd_pins g_inst/m_slot_3_axi_awvalid] [get_bd_pins slot_3_aw/In0]
  connect_bd_net -net net_slot_3_axi_b_cnt [get_bd_pins g_inst/m_slot_3_axi_b_cnt] [get_bd_pins ila_lib/probe59]
  connect_bd_net -net net_slot_3_axi_b_ctrl [get_bd_pins ila_lib/probe66] [get_bd_pins slot_3_b/dout]
  connect_bd_net -net net_slot_3_axi_bready [get_bd_pins g_inst/m_slot_3_axi_bready] [get_bd_pins slot_3_b/In1]
  connect_bd_net -net net_slot_3_axi_bvalid [get_bd_pins g_inst/m_slot_3_axi_bvalid] [get_bd_pins slot_3_b/In0]
  connect_bd_net -net net_slot_3_axi_r_cnt [get_bd_pins g_inst/m_slot_3_axi_r_cnt] [get_bd_pins ila_lib/probe60]
  connect_bd_net -net net_slot_3_axi_r_ctrl [get_bd_pins ila_lib/probe68] [get_bd_pins slot_3_r/dout]
  connect_bd_net -net net_slot_3_axi_rdata [get_bd_pins g_inst/m_slot_3_axi_rdata] [get_bd_pins ila_lib/probe61]
  connect_bd_net -net net_slot_3_axi_rlast [get_bd_pins g_inst/m_slot_3_axi_rlast] [get_bd_pins slot_3_r/In2]
  connect_bd_net -net net_slot_3_axi_rready [get_bd_pins g_inst/m_slot_3_axi_rready] [get_bd_pins slot_3_r/In1]
  connect_bd_net -net net_slot_3_axi_rresp [get_bd_pins g_inst/m_slot_3_axi_rresp] [get_bd_pins ila_lib/probe62]
  connect_bd_net -net net_slot_3_axi_rvalid [get_bd_pins g_inst/m_slot_3_axi_rvalid] [get_bd_pins slot_3_r/In0]
  connect_bd_net -net net_slot_3_axi_w_ctrl [get_bd_pins ila_lib/probe65] [get_bd_pins slot_3_w/dout]
  connect_bd_net -net net_slot_3_axi_wdata [get_bd_pins g_inst/m_slot_3_axi_wdata] [get_bd_pins ila_lib/probe63]
  connect_bd_net -net net_slot_3_axi_wlast [get_bd_pins g_inst/m_slot_3_axi_wlast] [get_bd_pins slot_3_w/In2]
  connect_bd_net -net net_slot_3_axi_wready [get_bd_pins g_inst/m_slot_3_axi_wready] [get_bd_pins slot_3_w/In1]
  connect_bd_net -net net_slot_3_axi_wvalid [get_bd_pins g_inst/m_slot_3_axi_wvalid] [get_bd_pins slot_3_w/In0]
  connect_bd_net -net net_slot_4_axi_ar_cnt [get_bd_pins g_inst/m_slot_4_axi_ar_cnt] [get_bd_pins ila_lib/probe69]
  connect_bd_net -net net_slot_4_axi_ar_ctrl [get_bd_pins ila_lib/probe86] [get_bd_pins slot_4_ar/dout]
  connect_bd_net -net net_slot_4_axi_araddr [get_bd_pins g_inst/m_slot_4_axi_araddr] [get_bd_pins ila_lib/probe70]
  connect_bd_net -net net_slot_4_axi_arlen [get_bd_pins g_inst/m_slot_4_axi_arlen] [get_bd_pins ila_lib/probe71]
  connect_bd_net -net net_slot_4_axi_arready [get_bd_pins g_inst/m_slot_4_axi_arready] [get_bd_pins slot_4_ar/In1]
  connect_bd_net -net net_slot_4_axi_arsize [get_bd_pins g_inst/m_slot_4_axi_arsize] [get_bd_pins ila_lib/probe72]
  connect_bd_net -net net_slot_4_axi_arvalid [get_bd_pins g_inst/m_slot_4_axi_arvalid] [get_bd_pins slot_4_ar/In0]
  connect_bd_net -net net_slot_4_axi_aw_cnt [get_bd_pins g_inst/m_slot_4_axi_aw_cnt] [get_bd_pins ila_lib/probe73]
  connect_bd_net -net net_slot_4_axi_aw_ctrl [get_bd_pins ila_lib/probe83] [get_bd_pins slot_4_aw/dout]
  connect_bd_net -net net_slot_4_axi_awaddr [get_bd_pins g_inst/m_slot_4_axi_awaddr] [get_bd_pins ila_lib/probe74]
  connect_bd_net -net net_slot_4_axi_awlen [get_bd_pins g_inst/m_slot_4_axi_awlen] [get_bd_pins ila_lib/probe75]
  connect_bd_net -net net_slot_4_axi_awready [get_bd_pins g_inst/m_slot_4_axi_awready] [get_bd_pins slot_4_aw/In1]
  connect_bd_net -net net_slot_4_axi_awsize [get_bd_pins g_inst/m_slot_4_axi_awsize] [get_bd_pins ila_lib/probe76]
  connect_bd_net -net net_slot_4_axi_awvalid [get_bd_pins g_inst/m_slot_4_axi_awvalid] [get_bd_pins slot_4_aw/In0]
  connect_bd_net -net net_slot_4_axi_b_cnt [get_bd_pins g_inst/m_slot_4_axi_b_cnt] [get_bd_pins ila_lib/probe77]
  connect_bd_net -net net_slot_4_axi_b_ctrl [get_bd_pins ila_lib/probe85] [get_bd_pins slot_4_b/dout]
  connect_bd_net -net net_slot_4_axi_bready [get_bd_pins g_inst/m_slot_4_axi_bready] [get_bd_pins slot_4_b/In1]
  connect_bd_net -net net_slot_4_axi_bresp [get_bd_pins g_inst/m_slot_4_axi_bresp] [get_bd_pins ila_lib/probe78]
  connect_bd_net -net net_slot_4_axi_bvalid [get_bd_pins g_inst/m_slot_4_axi_bvalid] [get_bd_pins slot_4_b/In0]
  connect_bd_net -net net_slot_4_axi_r_cnt [get_bd_pins g_inst/m_slot_4_axi_r_cnt] [get_bd_pins ila_lib/probe79]
  connect_bd_net -net net_slot_4_axi_r_ctrl [get_bd_pins ila_lib/probe87] [get_bd_pins slot_4_r/dout]
  connect_bd_net -net net_slot_4_axi_rdata [get_bd_pins g_inst/m_slot_4_axi_rdata] [get_bd_pins ila_lib/probe80]
  connect_bd_net -net net_slot_4_axi_rlast [get_bd_pins g_inst/m_slot_4_axi_rlast] [get_bd_pins slot_4_r/In2]
  connect_bd_net -net net_slot_4_axi_rready [get_bd_pins g_inst/m_slot_4_axi_rready] [get_bd_pins slot_4_r/In1]
  connect_bd_net -net net_slot_4_axi_rvalid [get_bd_pins g_inst/m_slot_4_axi_rvalid] [get_bd_pins slot_4_r/In0]
  connect_bd_net -net net_slot_4_axi_w_ctrl [get_bd_pins ila_lib/probe84] [get_bd_pins slot_4_w/dout]
  connect_bd_net -net net_slot_4_axi_wdata [get_bd_pins g_inst/m_slot_4_axi_wdata] [get_bd_pins ila_lib/probe81]
  connect_bd_net -net net_slot_4_axi_wlast [get_bd_pins g_inst/m_slot_4_axi_wlast] [get_bd_pins slot_4_w/In2]
  connect_bd_net -net net_slot_4_axi_wready [get_bd_pins g_inst/m_slot_4_axi_wready] [get_bd_pins slot_4_w/In1]
  connect_bd_net -net net_slot_4_axi_wstrb [get_bd_pins g_inst/m_slot_4_axi_wstrb] [get_bd_pins ila_lib/probe82]
  connect_bd_net -net net_slot_4_axi_wvalid [get_bd_pins g_inst/m_slot_4_axi_wvalid] [get_bd_pins slot_4_w/In0]
  connect_bd_net -net net_slot_5_axis_tdata [get_bd_pins g_inst/m_slot_5_axis_tdata] [get_bd_pins ila_lib/probe88]
  connect_bd_net -net net_slot_5_axis_tlast [get_bd_pins g_inst/m_slot_5_axis_tlast] [get_bd_pins ila_lib/probe92]
  connect_bd_net -net net_slot_5_axis_tready [get_bd_pins g_inst/m_slot_5_axis_tready] [get_bd_pins ila_lib/probe91]
  connect_bd_net -net net_slot_5_axis_tuser [get_bd_pins g_inst/m_slot_5_axis_tuser] [get_bd_pins ila_lib/probe89]
  connect_bd_net -net net_slot_5_axis_tvalid [get_bd_pins g_inst/m_slot_5_axis_tvalid] [get_bd_pins ila_lib/probe90]
  connect_bd_net -net net_slot_6_axis_tdata [get_bd_pins g_inst/m_slot_6_axis_tdata] [get_bd_pins ila_lib/probe93]
  connect_bd_net -net net_slot_6_axis_tlast [get_bd_pins g_inst/m_slot_6_axis_tlast] [get_bd_pins ila_lib/probe97]
  connect_bd_net -net net_slot_6_axis_tready [get_bd_pins g_inst/m_slot_6_axis_tready] [get_bd_pins ila_lib/probe96]
  connect_bd_net -net net_slot_6_axis_tuser [get_bd_pins g_inst/m_slot_6_axis_tuser] [get_bd_pins ila_lib/probe94]
  connect_bd_net -net net_slot_6_axis_tvalid [get_bd_pins g_inst/m_slot_6_axis_tvalid] [get_bd_pins ila_lib/probe95]
  connect_bd_net -net net_slot_7_axi_ar_cnt [get_bd_pins g_inst/m_slot_7_axi_ar_cnt] [get_bd_pins ila_lib/probe98]
  connect_bd_net -net net_slot_7_axi_ar_ctrl [get_bd_pins ila_lib/probe114] [get_bd_pins slot_7_ar/dout]
  connect_bd_net -net net_slot_7_axi_araddr [get_bd_pins g_inst/m_slot_7_axi_araddr] [get_bd_pins ila_lib/probe99]
  connect_bd_net -net net_slot_7_axi_arprot [get_bd_pins g_inst/m_slot_7_axi_arprot] [get_bd_pins ila_lib/probe100]
  connect_bd_net -net net_slot_7_axi_arready [get_bd_pins g_inst/m_slot_7_axi_arready] [get_bd_pins slot_7_ar/In1]
  connect_bd_net -net net_slot_7_axi_arvalid [get_bd_pins g_inst/m_slot_7_axi_arvalid] [get_bd_pins slot_7_ar/In0]
  connect_bd_net -net net_slot_7_axi_aw_cnt [get_bd_pins g_inst/m_slot_7_axi_aw_cnt] [get_bd_pins ila_lib/probe101]
  connect_bd_net -net net_slot_7_axi_aw_ctrl [get_bd_pins ila_lib/probe111] [get_bd_pins slot_7_aw/dout]
  connect_bd_net -net net_slot_7_axi_awaddr [get_bd_pins g_inst/m_slot_7_axi_awaddr] [get_bd_pins ila_lib/probe102]
  connect_bd_net -net net_slot_7_axi_awprot [get_bd_pins g_inst/m_slot_7_axi_awprot] [get_bd_pins ila_lib/probe103]
  connect_bd_net -net net_slot_7_axi_awready [get_bd_pins g_inst/m_slot_7_axi_awready] [get_bd_pins slot_7_aw/In1]
  connect_bd_net -net net_slot_7_axi_awvalid [get_bd_pins g_inst/m_slot_7_axi_awvalid] [get_bd_pins slot_7_aw/In0]
  connect_bd_net -net net_slot_7_axi_b_cnt [get_bd_pins g_inst/m_slot_7_axi_b_cnt] [get_bd_pins ila_lib/probe104]
  connect_bd_net -net net_slot_7_axi_b_ctrl [get_bd_pins ila_lib/probe113] [get_bd_pins slot_7_b/dout]
  connect_bd_net -net net_slot_7_axi_bready [get_bd_pins g_inst/m_slot_7_axi_bready] [get_bd_pins slot_7_b/In1]
  connect_bd_net -net net_slot_7_axi_bresp [get_bd_pins g_inst/m_slot_7_axi_bresp] [get_bd_pins ila_lib/probe105]
  connect_bd_net -net net_slot_7_axi_bvalid [get_bd_pins g_inst/m_slot_7_axi_bvalid] [get_bd_pins slot_7_b/In0]
  connect_bd_net -net net_slot_7_axi_r_cnt [get_bd_pins g_inst/m_slot_7_axi_r_cnt] [get_bd_pins ila_lib/probe106]
  connect_bd_net -net net_slot_7_axi_r_ctrl [get_bd_pins ila_lib/probe115] [get_bd_pins slot_7_r/dout]
  connect_bd_net -net net_slot_7_axi_rdata [get_bd_pins g_inst/m_slot_7_axi_rdata] [get_bd_pins ila_lib/probe107]
  connect_bd_net -net net_slot_7_axi_rready [get_bd_pins g_inst/m_slot_7_axi_rready] [get_bd_pins slot_7_r/In1]
  connect_bd_net -net net_slot_7_axi_rresp [get_bd_pins g_inst/m_slot_7_axi_rresp] [get_bd_pins ila_lib/probe108]
  connect_bd_net -net net_slot_7_axi_rvalid [get_bd_pins g_inst/m_slot_7_axi_rvalid] [get_bd_pins slot_7_r/In0]
  connect_bd_net -net net_slot_7_axi_w_ctrl [get_bd_pins ila_lib/probe112] [get_bd_pins slot_7_w/dout]
  connect_bd_net -net net_slot_7_axi_wdata [get_bd_pins g_inst/m_slot_7_axi_wdata] [get_bd_pins ila_lib/probe109]
  connect_bd_net -net net_slot_7_axi_wready [get_bd_pins g_inst/m_slot_7_axi_wready] [get_bd_pins slot_7_w/In1]
  connect_bd_net -net net_slot_7_axi_wstrb [get_bd_pins g_inst/m_slot_7_axi_wstrb] [get_bd_pins ila_lib/probe110]
  connect_bd_net -net net_slot_7_axi_wvalid [get_bd_pins g_inst/m_slot_7_axi_wvalid] [get_bd_pins slot_7_w/In0]
  connect_bd_net -net net_slot_8_axis_tdata [get_bd_pins g_inst/m_slot_8_axis_tdata] [get_bd_pins ila_lib/probe116]
  connect_bd_net -net net_slot_8_axis_tlast [get_bd_pins g_inst/m_slot_8_axis_tlast] [get_bd_pins ila_lib/probe120]
  connect_bd_net -net net_slot_8_axis_tready [get_bd_pins g_inst/m_slot_8_axis_tready] [get_bd_pins ila_lib/probe119]
  connect_bd_net -net net_slot_8_axis_tuser [get_bd_pins g_inst/m_slot_8_axis_tuser] [get_bd_pins ila_lib/probe117]
  connect_bd_net -net net_slot_8_axis_tvalid [get_bd_pins g_inst/m_slot_8_axis_tvalid] [get_bd_pins ila_lib/probe118]
  connect_bd_net -net net_slot_9_axis_tdata [get_bd_pins g_inst/m_slot_9_axis_tdata] [get_bd_pins ila_lib/probe121]
  connect_bd_net -net net_slot_9_axis_tlast [get_bd_pins g_inst/m_slot_9_axis_tlast] [get_bd_pins ila_lib/probe125]
  connect_bd_net -net net_slot_9_axis_tready [get_bd_pins g_inst/m_slot_9_axis_tready] [get_bd_pins ila_lib/probe124]
  connect_bd_net -net net_slot_9_axis_tuser [get_bd_pins g_inst/m_slot_9_axis_tuser] [get_bd_pins ila_lib/probe122]
  connect_bd_net -net net_slot_9_axis_tvalid [get_bd_pins g_inst/m_slot_9_axis_tvalid] [get_bd_pins ila_lib/probe123]
  connect_bd_net -net resetn_1 [get_bd_ports resetn] [get_bd_pins g_inst/aresetn]

  # Create address segments


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


