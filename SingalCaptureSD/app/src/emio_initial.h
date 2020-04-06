#include"xgpiops.h"

#ifndef EMIO_INITIAL_H_
#define EMIO_INITIAL_H_


int OV_EMIO_init(void);

//I2C
#define OVL_SCL_PIN 54
#define OVL_SDA_PIN 55
#define OVR_SCL_PIN 56
#define OVR_SDA_PIN 57

#define DIRECTION_INPUT 5
#define DIRECTION_OUTPUT 1

void OVL_CLOCK_HIGH(void);
void OVL_CLOCK_LOW(void);
void OVL_DATA_HIGH(void);
void OVL_DATA_LOW(void);

void OVR_CLOCK_HIGH(void);
void OVR_CLOCK_LOW(void);
void OVR_DATA_HIGH(void);
void OVR_DATA_LOW(void);

#endif /* EMIO_INITIAL_H_ */
