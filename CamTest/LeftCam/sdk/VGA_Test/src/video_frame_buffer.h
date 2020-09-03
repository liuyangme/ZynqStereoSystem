#ifndef __VIDEO_FRAME_BUFFER_H__
#define __VIDEO_FRAME_BUFFER_H__

#include "xaxivdma.h"

int vfb_common_init( u16 uDeviceId, XAxiVdma * InstancePtr );

int vfb_rx_init( XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pWriteCfg, Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr, Xuint32 uNumFrames );
int vfb_rx_setup( XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pWriteCfg, Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr, Xuint32 uNumFrames );
int vfb_rx_start( XAxiVdma *pAxiVdma );
int vfb_rx_stop ( XAxiVdma *pAxiVdma );

int vfb_tx_init( XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pReadCfg , Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr, Xuint32 uNumFrames );
int vfb_tx_setup( XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pReadCfg , Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr, Xuint32 uNumFrames );
int vfb_tx_start( XAxiVdma *pAxiVdma );
int vfb_tx_stop ( XAxiVdma *pAxiVdma );

int vfb_dump_registers( XAxiVdma *pAxiVdma);
int vfb_check_errors( XAxiVdma *pAxiVdma, u8 bClearErrors );

#endif // __VIDEO_FRAME_BUFFER_H__

