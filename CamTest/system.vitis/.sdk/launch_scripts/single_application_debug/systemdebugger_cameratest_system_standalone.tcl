connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249855850" && level==0} -index 1
fpga -file E:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-SystemDebug/CamTest/system.vitis/CameraTest/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-SystemDebug/CamTest/system.vitis/CamTest/export/CamTest/hw/system_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source E:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-SystemDebug/CamTest/system.vitis/CameraTest/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow E:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-SystemDebug/CamTest/system.vitis/CameraTest/Debug/CameraTest.elf
configparams force-mem-access 0
bpadd -addr &main
