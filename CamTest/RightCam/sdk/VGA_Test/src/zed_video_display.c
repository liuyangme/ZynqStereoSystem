#include <stdio.h>
#include "xil_cache.h"
#include "xparameters.h"
#include "zed_video_display.h"


int main(void)
{
	zed_video_display_t Demo ;

	Xuint32 iterations = 0;

	xil_printf("\n\r");
	xil_printf("------------------------------------------------------\n\r");
	xil_printf("--       ZedBoard VGA/LCD Display Controller        --\n\r");
	xil_printf("------------------------------------------------------\n\r");
	xil_printf("\n\r");

	// Set IP base addresses
	Demo.uVdmaDeviceID = XPAR_AXI_VDMA_0_DEVICE_ID;
//	Demo.uMemAddr = XPAR_DDR_MEM_BASEADDR + 0x10000000;
	Demo.uMemAddr = XPAR_DDR_MEM_BASEADDR + 0x0FFFFFFF;
	Demo.uNumFrames = XPAR_AXIVDMA_0_NUM_FSTORES;

	// Set Video output to 640x480P60 resolution
	Demo.VideoResolution = VIDEO_RESOLUTION_VGA;
	Demo.video_width  = 1024;
	Demo.video_height = 768;
	// Set Video output to 800x600P60 resolution
//	Demo.VideoResolution = VIDEO_RESOLUTION_SVGA;
//	Demo.video_width  = 800;
//	Demo.video_height = 600;

	// Clear frame stores
	xil_printf( "Clear Frame Buffer\n\r" );
	zed_video_display_clear( &Demo );

	// Initialize Output Side of AXI VDMA
	xil_printf( "Video DMA (Output Side) Initialization ...\n\r" );
	vfb_common_init(Demo.uVdmaDeviceID,&(Demo.AxiVdma));
	vfb_tx_init(&(Demo.AxiVdma),&(Demo.ReadCfg),Demo.VideoResolution,
			Demo.VideoResolution,Demo.uMemAddr,Demo.uNumFrames);

	while (1)
	{
		if ( iterations > 0 )
		{
			xil_printf( "\n\rPress ENTER to re-start ...\n\r" );
			getchar();
		}
		iterations++;

		// Display Color Bars
		xil_printf( "Generate Color Bars\n\r" );
		vfb_tx_stop( &(Demo.AxiVdma) );
		zed_video_display_cbars( &Demo, (iterations-1) );
		vfb_tx_start( &(Demo.AxiVdma) );


#if 0 // Activate for debug
		sleep(1);
		// Status of AXI VDMA
		vfb_dump_registers( &(Demo.vdma) );
		if ( vfb_check_errors( &(Demo.vdma), 1/*clear errors, if any*/ ) )
		{
			vfb_dump_registers( &(Demo.vdma) );
		}
#endif

		xil_printf( "Done\n\r" );
	}

	return 0;
}

void zed_video_display_clear( zed_video_display_t *pDemo )
{
   // Clear frame stores
   xil_printf( "Video Frame Buffer Initialization ...\n\r" );
   Xuint32 frame, row, col;
   Xuint32 pixel;
   volatile Xuint32 *pStorageMem = (Xuint32 *)pDemo->uMemAddr;
   for ( frame = 0; frame < pDemo->uNumFrames; frame++ )
   {
      for ( row = 0; row < pDemo->video_height; row++ )
      {
         for ( col = 0; col < pDemo->video_width; col++ )
         {
            pixel = 0x00000000; // Black
            //pixel = 0x00FFFFFF; // White
            *pStorageMem++ = pixel;
         }
      }
   }
}

int zed_video_display_cbars( zed_video_display_t *pDemo, Xuint32 offset )
{
   Xuint32 frame, row, col;
   Xuint32 cbar, pixel;
   volatile Xuint32 *pStorageMem = (Xuint32 *)pDemo->uMemAddr;
   for ( frame = 0; frame < pDemo->uNumFrames; frame++ )
   {
      for ( row = 0; row < pDemo->video_height; row++ )
      {
         for ( col = 0; col < pDemo->video_width; col++ )
         {
            cbar = (col * 8) / pDemo->video_width; // color bar = 0..7
            cbar = (cbar + offset) % 8;
            switch ( cbar )
            {
            case 0: pixel = 0x00000000; break; // Black
            case 1: pixel = 0x00FF0000; break; // Red
            case 2: pixel = 0x0000FF00; break; // Green
            case 3: pixel = 0x000000FF; break; // Blue
            case 4: pixel = 0x0000FFFF; break; // Cyan
            case 5: pixel = 0x00FF00FF; break; // Purple
            case 6: pixel = 0x00FFFF00; break; // Yellow
            case 7: pixel = 0x00FFFFFF; break; // White
            }
            *pStorageMem++ = pixel;
         }
      }
   }

   // Wait for DMA to synchronize.
   Xil_DCacheFlush();

   return 0;
}
