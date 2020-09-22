/*
 * i2c_ctr.c
 *
 *  Created on: 2016年10月22日
 *      Author: Administrator
 */

#include "sleep.h"
#include "emio_initial.h"
#define CAM_OV5640    0x78
void sccb_start(void)
{
		CLOCK_HIGH();
		DATA_HIGH();
		usleep(10);
		DATA_LOW();
		usleep(10);
		CLOCK_LOW();
		usleep(10);
}

void sccb_end(void)
{
		DATA_LOW();
		usleep(10);
		CLOCK_HIGH();
		usleep(10);
		DATA_HIGH();
		usleep(10);
}

void sccb_sendbyte( unsigned char value )
{
		//并行数据转串行输出，串行数据输出的顺序为先高位再低位
		unsigned char  i=0;

		for(i=0; i<8; i++)
		{
				if(value & 0x80 )
						DATA_HIGH();
				else
						DATA_LOW();

				 usleep(10);
				 CLOCK_HIGH();
				 usleep(10);
				 CLOCK_LOW();
				 usleep(10);
				// DATA_LOW();
				 //usleep(10);

				 value<<=1;
		 }

		 //第9位，Don’t Care
		 DATA_LOW();
		 usleep(10);
		 CLOCK_HIGH();
		 usleep(10);
		 CLOCK_LOW();
		 usleep(10);
}

void sccb_senddata(unsigned char subaddr1,unsigned char subaddr2,unsigned char value)
{
			//3相写传输周期
			sccb_start();									//启动SCCB
			sccb_sendbyte(CAM_OV5640);    //OV6620设备从地址，写操作
			sccb_sendbyte(subaddr1);       //设备内存地址
			sccb_sendbyte(subaddr2);       //设备内存地址
			sccb_sendbyte(value);         //写数据字节
			sccb_end();                   //结束SCCB

			usleep(2000);
}
