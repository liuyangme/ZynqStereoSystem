#include "sleep.h"
#include "emio_initial.h"

#define CAM_OV5640    0x78

void OVL_sccb_start(void)
{
	OVL_CLOCK_HIGH();
	OVL_DATA_HIGH();
	usleep(10);
	OVL_DATA_LOW();
	usleep(10);
	OVL_CLOCK_LOW();
	usleep(10);
}

void OVL_sccb_end(void)
{
	OVL_DATA_LOW();
	usleep(10);
	OVL_CLOCK_HIGH();
	usleep(10);
	OVL_DATA_HIGH();
	usleep(10);
}

void OVL_sccb_sendbyte( unsigned char value )
{
	//并行数据转串行输出，串行数据输出的顺序为先高位再低位
	unsigned char  i=0;

	for(i=0; i<8; i++)
	{
		if(value & 0x80 )
			OVL_DATA_HIGH();
		else
			OVL_DATA_LOW();
		usleep(10);
		OVL_CLOCK_HIGH();
		usleep(10);
		OVL_CLOCK_LOW();
		usleep(10);
		// DATA_LOW();
		//usleep(10);
		value<<=1;
	}
	//第9位，Don’t Care
	OVL_DATA_LOW();
	usleep(10);
	OVL_CLOCK_HIGH();
	usleep(10);
	OVL_CLOCK_LOW();
	usleep(10);
}

void OVL_sccb_senddata(unsigned char subaddr1,unsigned char subaddr2,unsigned char value)
{
	//3相写传输周期
	OVL_sccb_start();				//启动SCCB
	OVL_sccb_sendbyte(CAM_OV5640);	//设备从地址，写操作
	OVL_sccb_sendbyte(subaddr1);	//设备内存地址
	OVL_sccb_sendbyte(subaddr2);	//设备内存地址
	OVL_sccb_sendbyte(value);		//写数据字节
	OVL_sccb_end();					//结束SCCB
	usleep(2000);
}

void OVR_sccb_start(void)
{
	OVR_CLOCK_HIGH();
	OVR_DATA_HIGH();
	usleep(10);
	OVR_DATA_LOW();
	usleep(10);
	OVR_CLOCK_LOW();
	usleep(10);
}

void OVR_sccb_end(void)
{
	OVR_DATA_LOW();
	usleep(10);
	OVR_CLOCK_HIGH();
	usleep(10);
	OVR_DATA_HIGH();
	usleep(10);
}

void OVR_sccb_sendbyte( unsigned char value )
{
	//并行数据转串行输出，串行数据输出的顺序为先高位再低位
	unsigned char  i=0;

	for(i=0; i<8; i++)
	{
		if(value & 0x80 )
			OVR_DATA_HIGH();
		else
			OVR_DATA_LOW();
		usleep(10);
		OVR_CLOCK_HIGH();
		usleep(10);
		OVR_CLOCK_LOW();
		usleep(10);
		// DATA_LOW();
		//usleep(10);
		value<<=1;
	}
	//第9位，Don’t Care
	OVR_DATA_LOW();
	usleep(10);
	OVR_CLOCK_HIGH();
	usleep(10);
	OVR_CLOCK_LOW();
	usleep(10);
}

void OVR_sccb_senddata(unsigned char subaddr1,unsigned char subaddr2,unsigned char value)
{
	//3相写传输周期
	OVR_sccb_start();				//启动SCCB
	OVR_sccb_sendbyte(CAM_OV5640);	//设备从地址，写操作
	OVR_sccb_sendbyte(subaddr1);	//设备内存地址
	OVR_sccb_sendbyte(subaddr2);	//设备内存地址
	OVR_sccb_sendbyte(value);		//写数据字节
	OVR_sccb_end();					//结束SCCB
	usleep(2000);
}
