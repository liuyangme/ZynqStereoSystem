/*
 * emio_initial.h
 *
 *  Created on: 2016Äê10ÔÂ22ÈÕ
 *      Author: Administrator
 */
#include"xgpiops.h"

#ifndef EMIO_INITIAL_H_
#define EMIO_INITIAL_H_


int Miz702_EMIO_init(void);
//I2C
#define SCL0_PIN 54
#define SDA0_PIN 55

#define SCL1_PIN 56
#define SDA1_PIN 57

#define DIRECTION_INPUT 5
#define DIRECTION_OUTPUT 1

void CLOCK_HIGH(void);

void CLOCK_LOW(void);

void DATA_HIGH(void);

void DATA_LOW(void);

#endif /* EMIO_INITIAL_H_ */
