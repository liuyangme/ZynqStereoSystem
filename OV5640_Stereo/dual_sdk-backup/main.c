#include "sys_intr.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"

unsigned int srcBuffer0 = (XPAR_PS7_DDR_0_S_AXI_BASEADDR  + 0x1000000);
unsigned int srcBuffer1 = (XPAR_PS7_DDR_0_S_AXI_BASEADDR  + 0x2000000);

int run_triple_frame_buffer(XAxiVdma* InstancePtr, int DeviceId, int hsize,
		int vsize, int buf_base_addr, int number_frame_count,
		int enable_frm_cnt_intr);

void ov5640_init_rgb(void);
int Miz702_EMIO_init(void);

int main(void)
{
	u32 Status_VDMA0;
	u32 Status_VDMA1;

	Miz702_EMIO_init();
	ov5640_init_rgb();

	XAxiVdma InstancePtr;

	xil_printf("Setup Video Mixer\n");
	// Enable Mixer
	int * mixer_width = (int *) 0x44A50010;  *mixer_width = 1280;
	int * mixer_height = (int *) 0x44A50018;  *mixer_height = 720;
	int * mixer_layer_enable =  (int *) 0x44A50040;  *mixer_layer_enable = 0x3;

	// Mixer Layer configure
	int * mixer_layer_alpha = (int *) 0x44A50200; *mixer_layer_alpha = 150;
	int * mixer_layer_startX = (int *) 0x44A50208; *mixer_layer_startX = 0;
	int * mixer_layer_startY = (int *) 0x44A50210; *mixer_layer_startY = 0;
	int * mixer_layer_width= (int *) 0x44A50218; *mixer_layer_width = 1280;
	int * mixer_layer_stride = (int *) 0x44A50220; *mixer_layer_stride = 1280*3;
	int * mixer_layer_height = (int *) 0x44A50228; *mixer_layer_height = 720;
	int * mixer_layer_scale = (int *) 0x44A50230; *mixer_layer_scale = 0;

	// Mixer start and auto start
	int * mixer_start = (int *) 0x44A50000; *mixer_start = 0x00000081;

	xil_printf("Starting the first VDMA \n\r");

	Status_VDMA0 = run_triple_frame_buffer(&InstancePtr, 0, 1280, 720,
			srcBuffer0, 2, 0);
	Status_VDMA1 = run_triple_frame_buffer(&InstancePtr, 1, 1280, 720,
			srcBuffer1, 2, 0);

	if (Status_VDMA0 != XST_SUCCESS) {
		xil_printf("VDMA0:Transfer of frames failed with error = %d\r\n",Status_VDMA0);
		return XST_FAILURE;
	} else {
		xil_printf("VDMA0:Transfer of frames started \r\n");
	}

	if (Status_VDMA1 != XST_SUCCESS) {
		xil_printf("VDMA1:Transfer of frames failed with error = %d\r\n",Status_VDMA1);
		return XST_FAILURE;
	} else {
		xil_printf("VDMA1:Transfer of frames started \r\n");
	}

	print("TEST PASS\r\n");

	while(1);

	return XST_SUCCESS;
}


