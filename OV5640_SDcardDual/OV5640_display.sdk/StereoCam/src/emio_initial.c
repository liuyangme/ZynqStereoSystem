/*
 * emio_initial.c
 *
 *  Created on: 2016年10月22日
 *      Author: Administrator
 */

#include"emio_initial.h"

static XGpioPs psGpioInstancePtr;
int Miz702_EMIO_init(void)
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
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, SCL0_PIN,DIRECTION_OUTPUT);
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, SDA0_PIN,DIRECTION_OUTPUT);
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, SCL1_PIN,DIRECTION_OUTPUT);
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, SDA1_PIN,DIRECTION_OUTPUT);

	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, SCL0_PIN,1);
	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, SDA0_PIN,1);
	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, SCL1_PIN,1);
	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, SDA1_PIN,1);
	return xStatus;
}

void CLOCK_HIGH(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,SCL0_PIN, 1);
	XGpioPs_WritePin(&psGpioInstancePtr,SCL1_PIN, 1);
}

void CLOCK_LOW(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,SCL0_PIN, 0);
	XGpioPs_WritePin(&psGpioInstancePtr,SCL1_PIN, 0);
}

void DATA_HIGH(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,SDA0_PIN, 1);
	XGpioPs_WritePin(&psGpioInstancePtr,SDA1_PIN, 1);
}

void DATA_LOW(void)
{
	XGpioPs_WritePin(&psGpioInstancePtr,SDA0_PIN,0);
	XGpioPs_WritePin(&psGpioInstancePtr,SDA1_PIN,0);
}

