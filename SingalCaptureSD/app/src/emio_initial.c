#include"emio_initial.h"

static XGpioPs psGpioInstancePtr;
int OV_EMIO_init(void)
{
	XGpioPs_Config* GpioConfigPtr;
	int xStatus;
	//--MIO 的初始化
	GpioConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	if(GpioConfigPtr == NULL)
	return XST_FAILURE;

	xStatus = XGpioPs_CfgInitialize(&psGpioInstancePtr,GpioConfigPtr,GpioConfigPtr->BaseAddr);
	if(XST_SUCCESS != xStatus)
	print(" PS GPIO INIT FAILED \n\r");

	//--MIO 的输入输出操作
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, OVL_SCL_PIN,DIRECTION_OUTPUT);
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, OVL_SDA_PIN,DIRECTION_OUTPUT);

	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, OVL_SCL_PIN,1);
	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, OVL_SDA_PIN,1);

	XGpioPs_SetDirectionPin(&psGpioInstancePtr, OVR_SCL_PIN,DIRECTION_OUTPUT);
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, OVR_SDA_PIN,DIRECTION_OUTPUT);

	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, OVR_SCL_PIN,1);
	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, OVR_SDA_PIN,1);
	return xStatus;
}

void OVL_CLOCK_HIGH(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,OVL_SCL_PIN, 1);
}

void OVL_CLOCK_LOW(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,OVL_SCL_PIN, 0);
}

void OVL_DATA_HIGH(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,OVL_SDA_PIN, 1);
}

void OVL_DATA_LOW(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,OVL_SDA_PIN,0);
}

void OVR_CLOCK_HIGH(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,OVR_SCL_PIN, 1);
}

void OVR_CLOCK_LOW(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,OVR_SCL_PIN, 0);
}

void OVR_DATA_HIGH(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,OVR_SDA_PIN, 1);
}

void OVR_DATA_LOW(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,OVR_SDA_PIN,0);
}

