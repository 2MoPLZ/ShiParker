/*
 * uart_Driver.h
 *
 *  Created on: May 7, 2025
 *      Author: 오동걸
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

// #define SENSOR_PACKET_RECIEVE_MODE
#define ACTUATOR_PACKET_RECIEVE_MODE

/*******************************************     NO CHANGES AFTER THIS LINE      ****************************************************/

extern struct ActuatorPacket g_RecievedActuatorPacket;
extern struct SensorPacket g_RecievedSensorPacket;

void initUartDriver(void);
void myprintfSerial(const char *fmt, ...);

void sendActuatorPacket(const struct ActuatorPacket *packet);
void sendSensorPacket(const struct SensorPacket *packet);
void readActuatorPacket(struct ActuatorPacket *packet);
void readSensorPacket(struct SensorPacket *packet);

uint8 calculate_checksum(const uint8 *data, size_t length);
void serialize_actuator_packet(const struct ActuatorPacket *packet, uint8 *buffer);
void deserialize_actuator_packet(const uint8 *buffer, struct ActuatorPacket *packet);
void serialize_sensor_packet(const struct SensorPacket *packet, uint8 *buffer);
void deserialize_sensor_packet(const uint8 *buffer, struct SensorPacket *packet);

#endif /* UART_DRIVER_H_ */
