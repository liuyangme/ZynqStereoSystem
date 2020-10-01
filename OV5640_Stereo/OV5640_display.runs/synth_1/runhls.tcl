open_project system_v_mix_0_0
set_top v_mix
add_files -cflags " -I e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src " e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src/v_mix_config.h
add_files -cflags " -I e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src " e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src/v_mix.cpp
add_files -cflags " -I e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src " e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src/v_mix.h
add_files -cflags " -I e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src " e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src/v_dma.cpp
add_files -cflags " -I e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src " e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src/v_dma.h
add_files -cflags " -I e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src " e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src/v_csc.cpp
add_files -cflags " -I e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src " e:/Project/Personal/PoseEstimation/ZYNQ/ZYNQ-Stereo-System/OV5640_Stereo/OV5640_display.srcs/sources_1/bd/system/ip/system_v_mix_0_0/src/v_csc.h

open_solution "prj"
set_part {xc7z020clg400-2}
create_clock -period 10 -name ap_clk

                 
config_rtl -enable_axiFlushable

config_interface -input_reg_mode both -output_reg_mode both



config_rtl -prefix system_v_mix_0_0_
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library ip -version 3.0
exit
