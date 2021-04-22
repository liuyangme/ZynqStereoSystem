/************************************************************************/
/*																		*/
/*	display_demo.c	--	ALINX AX7010 HDMI Display demonstration 						*/
/*																		*/
/************************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "display_demo.h"
#include <stdio.h>
#include "math.h"
#include <ctype.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "vdma.h"
#include "sleep.h"
#include "xscugic.h"
#include "zynq_interrupt.h"
#include "xgpiops.h"
#include "ff.h"
#include "bmp.h"
#include "xil_cache.h"
#include "xtime_l.h"
#include "xil_exception.h"
#include "emio_initial.h"
#include "i2c_ctr.h"
#include "ov5640_config.h"

/*
 * XPAR redefines
 */
#define SCU_TIMER_ID 		XPAR_SCUTIMER_DEVICE_ID
#define UART_BASEADDR 		XPAR_PS7_UART_1_BASEADDR

#define DISPLAY_VDMA_ID_0 	XPAR_AXIVDMA_0_DEVICE_ID
#define CAME_VDMA_ID_0  	XPAR_AXIVDMA_1_DEVICE_ID
#define S2MM_INTID_0 		XPAR_FABRIC_AXI_VDMA_1_S2MM_INTROUT_INTR
#define MM2S_INTID_0 		XPAR_FABRIC_AXI_VDMA_0_MM2S_INTROUT_INTR

#define DISPLAY_VDMA_ID_1 	XPAR_AXIVDMA_2_DEVICE_ID
#define CAME_VDMA_ID_1  	XPAR_AXIVDMA_3_DEVICE_ID
#define S2MM_INTID_1 		XPAR_FABRIC_AXI_VDMA_3_S2MM_INTROUT_INTR
#define MM2S_INTID_1 		XPAR_FABRIC_AXI_VDMA_2_MM2S_INTROUT_INTR

#define KEY_INTR_ID			XPAR_XGPIOPS_0_INTR
#define MIO_0_ID			XPAR_PS7_GPIO_0_DEVICE_ID
#define GPIO_INPUT			0
#define GPIO_OUTPUT			1

/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

/*
 * Display Driver structs
 */
XAxiVdma 	display_vdma_0;
XAxiVdma 	camera_vdma_0;
XAxiVdma 	display_vdma_1;
XAxiVdma 	camera_vdma_1;

XScuGic 	XScuGicInstance;

/* File object */
static FIL fil;
static FATFS fatfs;
static int WriteError;
int wr_index = 0;
int rd_index = 0;

XGpioPs GpioInstance;
volatile int key_flag = 0;
int KeyFlagHold = 1;

/*
 * Framebuffers for video data
 */
#define DISPLAY_NUM_FRAMES 4
u8 photobuf_0[DEMO_MAX_FRAME] ;
u8 photobuf_1[DEMO_MAX_FRAME] ;
u8 frameBuf_0[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME] __attribute__ ((aligned(64)));
u8 *pFrames_0[DISPLAY_NUM_FRAMES]; //array of pointers to the frame buffers
u8 frameBuf_1[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME] __attribute__ ((aligned(64)));
u8 *pFrames_1[DISPLAY_NUM_FRAMES]; //array of pointers to the frame buffers
unsigned char PhotoBuf[DEMO_MAX_FRAME];

/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */
static void WriteCallBack(void *CallbackRef, u32 Mask);
static void WriteErrorCallBack(void *CallbackRef, u32 Mask);
static void ReadCallBack(void *CallbackRef, u32 Mask);
int GpioSetup(XScuGic *InstancePtr, u16 DeviceId, u16 IntrID, XGpioPs *GpioInstancePtr) ;
void GpioHandler(void *CallbackRef);
void IntcTypeSetup(XScuGic *InstancePtr, int intId, int intType);

//20201123 add
#define INT_CFG0_OFFSET 		0x00000C00
#define SW1_INT_ID              63
#define INTC_DEVICE_ID          XPAR_SCUGIC_0_DEVICE_ID
#define INT_TYPE_RISING_EDGE	0x03
#define INT_TYPE_HIGHLEVEL      0x01
#define INT_TYPE_MASK           0x03

static int IntcInitFunction(u16 DeviceId);
void IntcTypeSetup(XScuGic *InstancePtr, int intId, int intType);

int main(void)
{
	int Status;
	int i;
	FRESULT rc;
	XTime TimerStart, TimerEnd;
	float elapsed_time ;
	unsigned int PhotoCount_0 = 0 ;
	unsigned int PhotoCount_1 = 0 ;
	char PhotoName_0[9] ;
	char PhotoName_1[9] ;

	IntcInitFunction(INTC_DEVICE_ID); //20201123 add

	/*
	 * Initialize an array of pointers to the 3 frame buffers
	 */
	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
	{
		pFrames_0[i] = frameBuf_0[i];
		memset(pFrames_0[i], 0, DEMO_MAX_FRAME);
		Xil_DCacheFlushRange((INTPTR) pFrames_0[i], DEMO_MAX_FRAME) ;
	}
	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
	{
		pFrames_1[i] = frameBuf_1[i];
		memset(pFrames_1[i], 0, DEMO_MAX_FRAME);
		Xil_DCacheFlushRange((INTPTR) pFrames_1[i], DEMO_MAX_FRAME) ;
	}
	xil_printf("Initialize an array of pointers to the 3 frame buffers...ok\r\n");

	/*
	 * Initial GIC
	 */
	Status = InterruptInit(XPAR_SCUGIC_0_DEVICE_ID,&XScuGicInstance);
	if (Status != XST_SUCCESS) {
		xil_printf("Initial GIC failed %d\r\n", Status);
	}
	else {
		xil_printf("Initial GIC...ok\r\n");
	}

	/*
	 * Initialize Sensor
	 */
	Miz702_EMIO_init();
	ov5640_init_rgb();
	xil_printf("PL Sensor Init...ok\r\n");

	/*
	 * Setup PS KEY and PS LED
	 */
	GpioSetup(&XScuGicInstance, MIO_0_ID, KEY_INTR_ID, &GpioInstance) ;

	/* Initial Camera Vdma */
	vdma_write_init(CAME_VDMA_ID_0, &camera_vdma_0, 1280 * 3, 720, DEMO_STRIDE,	(unsigned int)pFrames_0[0], DISPLAY_NUM_FRAMES);
	/* Set General Callback for Sensor Vdma */
	XAxiVdma_SetCallBack(&camera_vdma_0, XAXIVDMA_HANDLER_GENERAL,WriteCallBack, (void *)&camera_vdma_0, XAXIVDMA_WRITE);
	/* Set Error Callback for Sensor Vdma */
	XAxiVdma_SetCallBack(&camera_vdma_0, XAXIVDMA_HANDLER_ERROR,WriteErrorCallBack, (void *)&camera_vdma_0, XAXIVDMA_WRITE);
	/* Connect interrupt to GIC */
	InterruptConnect(&XScuGicInstance,S2MM_INTID_0,XAxiVdma_WriteIntrHandler,(void *)&camera_vdma_0);
	/* enable vdma interrupt */
	XAxiVdma_IntrEnable(&camera_vdma_0, XAXIVDMA_IXR_ALL_MASK, XAXIVDMA_WRITE);
	xil_printf("Camera0 Vdma Init...ok\r\n");
	/* Initial Camera Vdma */
	vdma_write_init(CAME_VDMA_ID_1, &camera_vdma_1, 1280 * 3, 720, DEMO_STRIDE,	(unsigned int)pFrames_1[0], DISPLAY_NUM_FRAMES);
	/* Set General Callback for Sensor Vdma */
	XAxiVdma_SetCallBack(&camera_vdma_1, XAXIVDMA_HANDLER_GENERAL,WriteCallBack, (void *)&camera_vdma_1, XAXIVDMA_WRITE);
	/* Set Error Callback for Sensor Vdma */
	XAxiVdma_SetCallBack(&camera_vdma_1, XAXIVDMA_HANDLER_ERROR,WriteErrorCallBack, (void *)&camera_vdma_1, XAXIVDMA_WRITE);
	/* Connect interrupt to GIC */
	InterruptConnect(&XScuGicInstance,S2MM_INTID_1,XAxiVdma_WriteIntrHandler,(void *)&camera_vdma_1);
	/* enable vdma interrupt */
	XAxiVdma_IntrEnable(&camera_vdma_1, XAXIVDMA_IXR_ALL_MASK, XAXIVDMA_WRITE);
	xil_printf("Camera1 Vdma Init...ok\r\n");

	/*
	 * Initialize Display VDMA
	 */
	vdma_read_init(DISPLAY_VDMA_ID_0, &display_vdma_0, 1280 * 3, 720, DEMO_STRIDE, (unsigned int)frameBuf_0[0], (unsigned int)frameBuf_0[1], (unsigned int)frameBuf_0[2]);
	/* Set General Callback for dispaly Vdma */
	XAxiVdma_SetCallBack(&display_vdma_0, XAXIVDMA_HANDLER_GENERAL,ReadCallBack, (void *)&display_vdma_0, XAXIVDMA_READ);
	/* Connect interrupt to GIC */
	InterruptConnect(&XScuGicInstance,MM2S_INTID_0,XAxiVdma_ReadIntrHandler,(void *)&display_vdma_0);
	/* enable vdma interrupt */
	XAxiVdma_IntrEnable(&display_vdma_0, XAXIVDMA_IXR_ALL_MASK, XAXIVDMA_READ);
	xil_printf("Display0 Vdma Init...ok\r\n");

	vdma_read_init(DISPLAY_VDMA_ID_1, &display_vdma_1, 1280 * 3, 720, DEMO_STRIDE, (unsigned int)frameBuf_1[0], (unsigned int)frameBuf_1[1], (unsigned int)frameBuf_1[2]);
	/* Set General Callback for dispaly Vdma */
	XAxiVdma_SetCallBack(&display_vdma_1, XAXIVDMA_HANDLER_GENERAL,ReadCallBack, (void *)&display_vdma_1, XAXIVDMA_READ);
	/* Connect interrupt to GIC */
	InterruptConnect(&XScuGicInstance,MM2S_INTID_1,XAxiVdma_ReadIntrHandler,(void *)&display_vdma_1);
	/* enable vdma interrupt */
	XAxiVdma_IntrEnable(&display_vdma_1, XAXIVDMA_IXR_ALL_MASK, XAXIVDMA_READ);
	xil_printf("Display1 Vdma Init...ok\r\n");

	/* Set PS LED off */
	XGpioPs_WritePin(&GpioInstance, 7, 0) ;

	rc = f_mount(&fatfs, "0:/", 0);
	if (rc != FR_OK)
	{
		xil_printf("Mount logical drive...failed\r\n");
		return 0 ;
	}
	else{
		xil_printf("Mount logical drive...ok\r\n");
	}

	while(1)
	{
		if (key_flag == 2)
		{
			KeyFlagHold = 0;

			//increment of photo name
			PhotoCount_0 ++;
			sprintf(PhotoName_0, "L%04u.bmp", PhotoCount_0);
			PhotoCount_1 ++;
			sprintf(PhotoName_1, "R%04u.bmp", PhotoCount_1);

			/* Set PS LED on */
			XGpioPs_WritePin(&GpioInstance, 7, 1) ;
			printf("Successfully Take Photo, Photo Name is %s and %s\r\n", PhotoName_0, PhotoName_1) ;
			printf("Write to SD Card...\r\n") ;

			//Set timer
			XTime_SetTime(0) ;
			XTime_GetTime(&TimerStart) ;
			Xil_DCacheInvalidateRange((unsigned int) pFrames_0[(wr_index+1)%3], DEMO_MAX_FRAME) ;
			Xil_DCacheInvalidateRange((unsigned int) pFrames_1[(wr_index+1)%3], DEMO_MAX_FRAME) ;

			//Copy frame data to photo buffer
			memcpy(&photobuf_0, pFrames_0[(wr_index+1)%3],  DEMO_MAX_FRAME) ;
			memcpy(&photobuf_1, pFrames_1[(wr_index+1)%3],  DEMO_MAX_FRAME) ;

			//Clear key flag
			key_flag = 0 ;

			//Write to SD Card
			bmp_write(PhotoName_0, (char *)&BMODE_1280x720, (char *)&photobuf_0, DEMO_STRIDE, &fil) ;
			bmp_write(PhotoName_1, (char *)&BMODE_1280x720, (char *)&photobuf_1, DEMO_STRIDE, &fil) ;

			//Print Elapsed time
			XTime_GetTime(&TimerEnd) ;
			elapsed_time = ((float)(TimerEnd-TimerStart))/((float)COUNTS_PER_SECOND) ;
			printf("INFO:Elapsed time = %.2f sec\r\n", elapsed_time) ;
		}

		/*Flash LED*/
		XGpioPs_WritePin(&GpioInstance, 7, 0) ;
		usleep(30000);
		XGpioPs_WritePin(&GpioInstance, 7, 1) ;
		usleep(30000);
		KeyFlagHold = 1;
	}
	return 0;
}

/*****************************************************************************/
/*
 * Call back function for write channel
 *
 * This callback only clears the interrupts and updates the transfer status.
 *
 * @param	CallbackRef is the call back reference pointer
 * @param	Mask is the interrupt mask passed in from the driver
 *
 * @return	None
 *
 ******************************************************************************/
static void WriteCallBack(void *CallbackRef, u32 Mask)
{
	if (Mask & XAXIVDMA_IXR_FRMCNT_MASK)
	{

		if(key_flag == 1)
		{
			key_flag = 2 ;
			return;
		}
		else if(key_flag == 2)
		{
			return ;
		}

		if(wr_index==2)
		{
			wr_index=0;
			rd_index=2;
		}
		else
		{
			rd_index = wr_index;
			wr_index++;
		}
		/* Set park pointer */
		XAxiVdma_StartParking((XAxiVdma*)CallbackRef, wr_index, XAXIVDMA_WRITE);
	}
}


/*****************************************************************************/
/*
 * Call back function for write channel error interrupt
 *
 * @param	CallbackRef is the call back reference pointer
 * @param	Mask is the interrupt mask passed in from the driver
 *
 * @return	None
 *
 ******************************************************************************/
static void WriteErrorCallBack(void *CallbackRef, u32 Mask)
{

	if (Mask & XAXIVDMA_IXR_ERROR_MASK) {
		WriteError += 1;
	}
}


static void ReadCallBack(void *CallbackRef, u32 Mask)
{
	if (Mask & XAXIVDMA_IXR_FRMCNT_MASK)
	{
		/* Set park pointer */
		XAxiVdma_StartParking((XAxiVdma*)CallbackRef, rd_index, XAXIVDMA_READ);
	}
}


/*
 * Set up GPIO and enable GPIO interrupt
 */
int GpioSetup(XScuGic *InstancePtr, u16 DeviceId, u16 IntrID, XGpioPs *GpioInstancePtr)
{
	XGpioPs_Config *GpioCfg ;
	int Status ;

	/* Initialize the Gpio driver. */
	GpioCfg = XGpioPs_LookupConfig(DeviceId) ;
	Status = XGpioPs_CfgInitialize(GpioInstancePtr, GpioCfg, GpioCfg->BaseAddr) ;
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE ;
	}
	else{
		xil_printf("Initialize the Gpio driver...ok\r\n");
	}

	/* Run a self-test on the GPIO device. */
	Status = XGpioPs_SelfTest(GpioInstancePtr);
	if (Status != XST_SUCCESS) {
		xil_printf("GPIO SelfTest...fail\r\n");
		return XST_FAILURE;
	}
	else{
		xil_printf("GPIO SelfTest...pass\r\n");
	}

	/* set MIO 7 as output */
	XGpioPs_SetDirectionPin(GpioInstancePtr, 7, GPIO_OUTPUT) ;
	/* enable MIO 7 output */
	XGpioPs_SetOutputEnablePin(GpioInstancePtr, 7, GPIO_OUTPUT) ;
	XGpioPs_WritePin(GpioInstancePtr, 7, 0) ;

	xil_printf("GPIO Setup...ok\r\n");

	return XST_SUCCESS ;
}


/*
 * GPIO interrupt handler
 */
void GpioHandler(void *CallbackRef)
{
	int IntVal;
	IntVal = 1;

	xil_printf("GPIO interrupt handler...\r\n");
	if (IntVal & KeyFlagHold){
		key_flag = 1;
		xil_printf("Key flag turn to 1...\r\n");
	}
}

//20201123add
void IntcTypeSetup(XScuGic *InstancePtr, int intId, int intType)
{
    int mask;

    intType &= INT_TYPE_MASK;
    mask = XScuGic_DistReadReg(InstancePtr, INT_CFG0_OFFSET + (intId/16)*4);
    mask &= ~(INT_TYPE_MASK << (intId%16)*2);
    mask |= intType << ((intId%16)*2);
    XScuGic_DistWriteReg(InstancePtr, INT_CFG0_OFFSET + (intId/16)*4, mask);
}

int IntcInitFunction(u16 DeviceId)  //PL Interrupt Initilization
{
    XScuGic_Config *IntcConfig;
    int status;

    // Interrupt controller initialisation
    IntcConfig = XScuGic_LookupConfig(DeviceId);
    status = XScuGic_CfgInitialize(&XScuGicInstance, IntcConfig, IntcConfig->CpuBaseAddress);
    if(status != XST_SUCCESS) return XST_FAILURE;

    // Call to interrupt setup
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
                                 &XScuGicInstance);
    Xil_ExceptionEnable();

    // Connect SW1 interrupt to handler
    status = XScuGic_Connect(&XScuGicInstance,
                             SW1_INT_ID,
                             (Xil_ExceptionHandler)GpioHandler,
                             (void *)1);
    if(status != XST_SUCCESS) return XST_FAILURE;

    // Set interrupt type of SW1 to rising edge
    IntcTypeSetup(&XScuGicInstance, SW1_INT_ID, INT_TYPE_RISING_EDGE);

    // Enable SW1 interrupts in the controller
    XScuGic_Enable(&XScuGicInstance, SW1_INT_ID);

    return XST_SUCCESS;
}
