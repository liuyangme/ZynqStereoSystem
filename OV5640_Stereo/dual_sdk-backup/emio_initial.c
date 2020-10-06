#include"emio_initial.h"

static XGpioPs psGpioInstancePtr;
int Miz702_EMIO_init(void)
{
	XGpioPs_Config* GpioConfigPtr;
	int xStatus;

	// MIO Initialization
	GpioConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	if(GpioConfigPtr == NULL)
		return XST_FAILURE;

	xStatus = XGpioPs_CfgInitialize(&psGpioInstancePtr,GpioConfigPtr,GpioConfigPtr->BaseAddr);
	if(XST_SUCCESS != xStatus)
		print(" PS GPIO INIT FAILED \n\r");

	//CAM1 SCL SDA
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, SCL_PIN_0,DIRECTION_OUTPUT);
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, SDA_PIN_0,DIRECTION_OUTPUT);

	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, SCL_PIN_0,1);
	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, SDA_PIN_0,1);

	//CAM2 SCL SDA
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, SCL_PIN_1,DIRECTION_OUTPUT);
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, SDA_PIN_1,DIRECTION_OUTPUT);

	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, SCL_PIN_1,1);
	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, SDA_PIN_1,1);

	return xStatus;
}

//IIC Operation
void CLOCK_HIGH(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,SCL_PIN_0, 1);
	XGpioPs_WritePin(&psGpioInstancePtr,SCL_PIN_1, 1);
}

void CLOCK_LOW(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,SCL_PIN_0, 0);
	XGpioPs_WritePin(&psGpioInstancePtr,SCL_PIN_1, 0);
}

void DATA_HIGH(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,SDA_PIN_0, 1);
	XGpioPs_WritePin(&psGpioInstancePtr,SDA_PIN_1, 1);
}

void DATA_LOW(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,SDA_PIN_0,0);
	XGpioPs_WritePin(&psGpioInstancePtr,SDA_PIN_1,0);
}

