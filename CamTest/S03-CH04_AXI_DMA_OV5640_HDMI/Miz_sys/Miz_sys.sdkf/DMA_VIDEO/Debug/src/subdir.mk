################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/emio_initial.c \
../src/i2c_ctr.c \
../src/main.c \
../src/ov5640_config.c \
../src/sys_intr.c \
../src/vdma_api.c 

OBJS += \
./src/emio_initial.o \
./src/i2c_ctr.o \
./src/main.o \
./src/ov5640_config.o \
./src/sys_intr.o \
./src/vdma_api.o 

C_DEPS += \
./src/emio_initial.d \
./src/i2c_ctr.d \
./src/main.d \
./src/ov5640_config.d \
./src/sys_intr.d \
./src/vdma_api.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../DMA_VIDEO_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


