#include <stdio.h>
#include "math.h"
#include <ctype.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "xaxivdma.h"
#include "xiicps.h"
#include "ps_i2c.h"
#include "xgpiops.h"
#include "sleep.h"
#include "ov5640_config.h"

#define DDR_BASEADDR        0x00100000
#define VDMA_ID 			XPAR_AXIVDMA_0_DEVICE_ID
#define VDMA_BASEADDR       XPAR_AXI_VDMA_0_BASEADDR
#define H_STRIDE            1280
#define H_ACTIVE            1280
#define V_ACTIVE            720
#define pi					3.14159265358
#define COUNTS_PER_SECOND	(XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ)/64

#define VIDEO_LENGTH  (H_STRIDE*V_ACTIVE)
#define VIDEO_BASEADDR0 DDR_BASEADDR + 0x2000000
#define VIDEO_BASEADDR1 DDR_BASEADDR + 0x3000000
#define VIDEO_BASEADDR2 DDR_BASEADDR + 0x4000000

u32 *BufferPtr[3];
unsigned int srcBuffer = (XPAR_PS7_DDR_0_S_AXI_BASEADDR  + 0x1000000);

int run_triple_frame_buffer(XAxiVdma* InstancePtr, int DeviceId, int hsize,
		int vsize, int buf_base_addr, int number_frame_count,
		int enable_frm_cnt_intr);

XIicPs ps_i2c0;

int main(void)
{
	u32 Status;

	i2c_init(&ps_i2c0, XPAR_XIICPS_0_DEVICE_ID,40000);
	sensor_init(&ps_i2c0);

	XAxiVdma InstancePtr;
	//XAxiVdma_Config *vdmaConfig;

	xil_printf("Starting the first VDMA \n\r");
	Status = run_triple_frame_buffer(&InstancePtr, 0, 1280, 720,
							srcBuffer, 2, 0);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Transfer of frames failed with error = %d\r\n",Status);
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Transfer of frames started \r\n");
	}

	while (1){};
	return XST_SUCCESS;
}


