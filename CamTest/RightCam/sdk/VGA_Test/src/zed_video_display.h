#ifndef __ZED_HDMI_DISPLAY_H__
#define __ZED_HDMI_DISPLAY_H__

#include "xparameters.h"
#include "sleep.h"

#include "xaxivdma.h"

#include "video_resolution.h"
#include "video_frame_buffer.h"


struct struct_zed_video_display_t
{
   // IP base addresses
   Xuint32 uVtcDeviceID;
   Xuint32 uVdmaDeviceID;
   Xuint32 uMemAddr;					// address of FB in memory
   Xuint32 uNumFrames;

   //
   XAxiVdma AxiVdma;
   XAxiVdma_DmaSetup ReadCfg;
   XAxiVdma_DmaSetup vdmacfg_write;

   // Video Output settings
   Xuint32 VideoResolution;
   Xuint32 video_width;
   Xuint32 video_height;
};
typedef struct struct_zed_video_display_t zed_video_display_t;

void zed_video_display_clear( zed_video_display_t *pDemo );
int zed_video_display_cbars( zed_video_display_t *pDemo, Xuint32 offset );

#endif // __ZED_HDMI_DISPLAY_H__
