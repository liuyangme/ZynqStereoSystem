#include "xparameters.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "sleep.h"

#include "emio_initial.h"
#include "sys_intr.h"
#include "i2c_ctr.h"
#include "ov5640_config.h"

#define DDR_BASEADDR 	0x00000000
#define VDMA0_BASEADDR	XPAR_AXI_VDMA_0_BASEADDR
#define VDMA1_BASEADDR	XPAR_AXI_VDMA_1_BASEADDR

#define H_STRIDE            1280
#define H_ACTIVE            1280
#define V_ACTIVE            720
#define pi					3.14159265358
#define COUNTS_PER_SECOND	(XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ)/64

#define VIDEO_LENGTH  (H_STRIDE*V_ACTIVE)
#define VIDEO0_BASEADDR0 DDR_BASEADDR + 0x2000000
#define VIDEO0_BASEADDR1 DDR_BASEADDR + 0x3000000
#define VIDEO0_BASEADDR2 DDR_BASEADDR + 0x4000000
#define VIDEO1_BASEADDR0 DDR_BASEADDR + 0x5000000
#define VIDEO1_BASEADDR1 DDR_BASEADDR + 0x6000000
#define VIDEO1_BASEADDR2 DDR_BASEADDR + 0x7000000

u32 *BufferPtr[3];

unsigned int srcBuffer = (XPAR_PS7_DDR_0_S_AXI_BASEADDR  + 0x1000000);
int run_triple_frame_buffer(XAxiVdma* InstancePtr, int DeviceId, int hsize,
		int vsize, int buf_base_addr, int number_frame_count,
		int enable_frm_cnt_intr);

int XVMix_SetLayerAlpha(XV_Mix_l2 *InstancePtr,
                        XVMix_LayerId LayerId,
                        u16 Alpha);

int main(void)
{
	u32 Status;

	OV_EMIO_init();
	ov5640L_init_rgb();
	ov5640R_init_rgb();

	XAxiVdma InstancePtr;
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
	print("TEST PASS\r\n");

	XVMix_SetLayerAlpha(InstancePtr,XVMIX_LAYER_1,256);

	Xil_Out32((VDMA0_BASEADDR + 0x030), 0x108B);// enable circular mode
	Xil_Out32((VDMA0_BASEADDR + 0x0AC), VIDEO0_BASEADDR0);	// start address
	Xil_Out32((VDMA0_BASEADDR + 0x0B0), VIDEO0_BASEADDR1);	// start address
	Xil_Out32((VDMA0_BASEADDR + 0x0B4), VIDEO0_BASEADDR2);	// start address
	Xil_Out32((VDMA0_BASEADDR + 0x0A8), (H_STRIDE*3));		// h offset (640 * 4) bytes
	Xil_Out32((VDMA0_BASEADDR + 0x0A4), (H_ACTIVE*3));		// h size (640 * 4) bytes
	Xil_Out32((VDMA0_BASEADDR + 0x0A0), V_ACTIVE);			// v size (480)

	Xil_Out32((VDMA0_BASEADDR + 0x000), 0x8B); 		// enable circular mode
	Xil_Out32((VDMA0_BASEADDR + 0x05c), VIDEO0_BASEADDR0); 	// start address
	Xil_Out32((VDMA0_BASEADDR + 0x060), VIDEO0_BASEADDR1); 	// start address
	Xil_Out32((VDMA0_BASEADDR + 0x064), VIDEO0_BASEADDR2); 	// start address
	Xil_Out32((VDMA0_BASEADDR + 0x058), (H_STRIDE*3)); 		// h offset (640 * 4) bytes
	Xil_Out32((VDMA0_BASEADDR + 0x054), (H_ACTIVE*3)); 		// h size (640 * 4) bytes
	Xil_Out32((VDMA0_BASEADDR + 0x050), V_ACTIVE); 			// v size (480)

	Xil_Out32((VDMA1_BASEADDR + 0x030), 0x108B);// enable circular mode
	Xil_Out32((VDMA1_BASEADDR + 0x0AC), VIDEO1_BASEADDR0);	// start address
	Xil_Out32((VDMA1_BASEADDR + 0x0B0), VIDEO1_BASEADDR1);	// start address
	Xil_Out32((VDMA1_BASEADDR + 0x0B4), VIDEO1_BASEADDR2);	// start address
	Xil_Out32((VDMA1_BASEADDR + 0x0A8), (H_STRIDE*3));		// h offset (640 * 4) bytes
	Xil_Out32((VDMA1_BASEADDR + 0x0A4), (H_ACTIVE*3));		// h size (640 * 4) bytes
	Xil_Out32((VDMA1_BASEADDR + 0x0A0), V_ACTIVE);			// v size (480)

	Xil_Out32((VDMA1_BASEADDR + 0x000), 0x8B); 		// enable circular mode
	Xil_Out32((VDMA1_BASEADDR + 0x05c), VIDEO1_BASEADDR0); 	// start address
	Xil_Out32((VDMA1_BASEADDR + 0x060), VIDEO1_BASEADDR1); 	// start address
	Xil_Out32((VDMA1_BASEADDR + 0x064), VIDEO1_BASEADDR2); 	// start address
	Xil_Out32((VDMA1_BASEADDR + 0x058), (H_STRIDE*3)); 		// h offset (640 * 4) bytes
	Xil_Out32((VDMA1_BASEADDR + 0x054), (H_ACTIVE*3)); 		// h size (640 * 4) bytes
	Xil_Out32((VDMA1_BASEADDR + 0x050), V_ACTIVE); 			// v size (480)

	while (1) ;
}





