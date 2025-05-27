/*
 * uart_Driver.h
 *
 *  Created on: May 19, 2025
 *      Author: 오동걸
 *      for shiParker Project, 1.0
 *      
 *  TODO :
 *
 */

#ifndef UART_DRIVER_H_
#define UART_DRIVER_H_

/************** MAKE CHANGES HERE ********************/
#include "illd\src\ConfigurationIsr.h"
#include "illd\src\Configuration.h"

#define RX_PIN &MODULE_P15, 3 // D0
#define TX_PIN &MODULE_P15, 2 // D1
//  #define UART_TIMEOUT_TICK 20000000 // 100ms

/*******************************************     NO CHANGES AFTER THIS LINE      ****************************************************/

extern volatile boolean g_isRecieved;
extern struct ParkingSystemPacket g_RecievedParkingSystemPacket;

void initUartDriver(void);
void myprintfSerial(const char *fmt, ...);

void sendPacket(const struct ParkingSystemPacket *packet);
void readPacket(struct ParkingSystemPacket *packet);

uint8 calculateChecksum(const uint8 *data, size_t length);
void serializePacket(const struct ParkingSystemPacket *packet, uint8 *buffer);
void deserializePacket(const uint8 *buffer, struct ParkingSystemPacket *packet);

#endif /* UART_DRIVER_H_ */
