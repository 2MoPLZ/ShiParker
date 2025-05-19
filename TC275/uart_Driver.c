#include "uart_Driver.h"
#include "bsw.h"

App_AsclinAsc g_AsclinStm;
struct ActuatorPacket g_RecievedActuatorPacket = {};
struct SensorPacket g_RecievedSensorPacket = {};

void initUartDriver(void)
{
    IfxAsclin_Asc_Config ascConfig;
    IfxAsclin_Asc_initModuleConfig(&ascConfig, &MODULE_ASCLIN0);

    ascConfig.baudrate.prescaler = 1;
    ascConfig.baudrate.baudrate = 9600;
    ascConfig.baudrate.oversampling = IfxAsclin_OversamplingFactor_4;

    ascConfig.interrupt.rxPriority = ISR_PRIORITY_ASC_0_RX;
    ascConfig.interrupt.txPriority = ISR_PRIORITY_ASC_0_TX;
    ascConfig.interrupt.typeOfService = IfxSrc_Tos_cpu0;

    ascConfig.txBuffer = g_AsclinStm.ascBuffer.tx;
    ascConfig.txBufferSize = ASC_TX_BUFFER_SIZE;
    ascConfig.rxBuffer = g_AsclinStm.ascBuffer.rx;
    ascConfig.rxBufferSize = ASC_RX_BUFFER_SIZE;

    const IfxAsclin_Asc_Pins pins = {
        NULL_PTR, IfxPort_InputMode_pullUp,
        &IfxAsclin0_RXB_P15_3_IN, IfxPort_InputMode_pullUp,
        NULL_PTR, IfxPort_OutputMode_pushPull,
        &IfxAsclin0_TX_P15_2_OUT, IfxPort_OutputMode_pushPull,
        IfxPort_PadDriver_cmosAutomotiveSpeed1};
    ascConfig.pins = &pins;

    IfxAsclin_Asc_initModule(&g_AsclinStm.drivers.asc, &ascConfig);
}

void sendActuatorPacket(const struct ActuatorPacket *packet)
{
    EnableAllInterrupts();
    uint8 buf[ACTUATOR_PACKET_SIZE] = {};
    serialize_actuator_packet(packet, buf);
    g_AsclinStm.count = ACTUATOR_PACKET_SIZE;

    printfSerial("\nsendA:[ ");
    int i;
    for (i = 0; i < ACTUATOR_PACKET_SIZE; i++)
    {
        printfSerial("%02x/", buf[i]);
    }
    printfSerial(" ]");
    printfSerial("\n[A| start:%02x id:%02x rgb:%d fan:%d led:%d buzz:%d tunnel:%d chair:%d window:%d adas:%d ]",
                 packet->start_byte,
                 packet->packet_id,
                 packet->led_rgb,
                 packet->fan,
                 packet->led,
                 packet->buzzer,
                 packet->driving_mode,
                 packet->servo_chair,
                 packet->servo_window,
                 packet->servo_air);

    IfxAsclin_Asc_write(&g_AsclinStm.drivers.asc, &buf, &g_AsclinStm.count, TIME_INFINITE);
}

void sendSensorPacket(const struct SensorPacket *packet)
{
    EnableAllInterrupts();
    uint8 buf[SENSOR_PACKET_SIZE] = {};
    serialize_sensor_packet(packet, buf);
    g_AsclinStm.count = SENSOR_PACKET_SIZE;

    printfSerial("\nsendB:[ ");
    int i;
    for (i = 0; i < SENSOR_PACKET_SIZE; i++)
    {
        printfSerial("%02x/", buf[i]);
    }
    printfSerial(" ]");
    printfSerial("\n[S|start:%02x id:%02x photo:%d ultra1:%d ultra2:%d]",
                 packet->start_byte,
                 packet->packet_id,
                 packet->photo,
                 packet->ultra_sonic1,
                 packet->ultra_sonic2);

    IfxAsclin_Asc_write(&g_AsclinStm.drivers.asc, &buf, &g_AsclinStm.count, TIME_INFINITE);
}

void readActuatorPacket(struct ActuatorPacket *packet)
{
    if (IfxAsclin_Asc_blockingRead(&g_AsclinStm.drivers.asc) == UART_START_BYTE)
    {
        if (IfxAsclin_Asc_blockingRead(&g_AsclinStm.drivers.asc) == ACTUATOR_PACKET_ID)
        {
            uint8 buffer[ACTUATOR_PACKET_SIZE] = {};
            buffer[0] = UART_START_BYTE;
            buffer[1] = ACTUATOR_PACKET_ID;
            uint8 pos = 2;
            while (pos < ACTUATOR_PACKET_SIZE)
            {
                buffer[pos] = IfxAsclin_Asc_blockingRead(&g_AsclinStm.drivers.asc);
                pos++;
            }

            // printfSerial("[RA]");
            printfSerial("\nrecieveA:[ ");
            int i;
            for (i = 0; i < ACTUATOR_PACKET_SIZE; i++)
            {
                printfSerial("%02x/", buffer[i]);
            }
            printfSerial(" ]");

            deserialize_actuator_packet(buffer, packet);
            printfSerial("\nrecieved:[start:%02x id:%02x rgb:%d fan:%d led:%d buzz:%d tunnel:%d chair:%d window:%d adas:%d]",
                         packet->start_byte,
                         packet->packet_id,
                         packet->led_rgb,
                         packet->fan,
                         packet->led,
                         packet->buzzer,
                         packet->driving_mode,
                         packet->servo_chair,
                         packet->servo_window,
                         packet->servo_air);
            if (calculate_checksum(buffer, ACTUATOR_PACKET_SIZE - 1) == buffer[ACTUATOR_PACKET_SIZE - 1]){
                printfSerial("(valid recieve)");
                deserialize_actuator_packet(buffer, packet);
                updateStateByPacket(packet);
            }
        }
    }
}

void readSensorPacket(struct SensorPacket *packet)
{
    if (IfxAsclin_Asc_blockingRead(&g_AsclinStm.drivers.asc) == UART_START_BYTE)
    {
        if (IfxAsclin_Asc_blockingRead(&g_AsclinStm.drivers.asc) == SENSOR_PACKET_ID)
        {
            uint8 buffer[SENSOR_PACKET_SIZE] = {};
            buffer[0] = UART_START_BYTE;
            buffer[1] = SENSOR_PACKET_ID;
            uint8 pos = 2;
            while (pos < SENSOR_PACKET_SIZE)
            {
                buffer[pos] = IfxAsclin_Asc_blockingRead(&g_AsclinStm.drivers.asc);
                pos++;
            }
            if (calculate_checksum(buffer, SENSOR_PACKET_SIZE - 1) == buffer[SENSOR_PACKET_SIZE - 1]){
                deserialize_actuator_packet(buffer, packet);
            }
        }
    }
}

void myprintfSerial(const char *fmt, ...)
{
    EnableAllInterrupts();
    char buf[128];
    va_list args;
    va_start(args, fmt);
    vsnprintf(buf, 128, fmt, args);
    va_end(args);
    /* prepare data to transmit and receive */
    uint8 txData[100];
    g_AsclinStm.count = strlen(buf);
    unsigned int i = 0;
    for (; i < strlen(buf); i++)
    {
        txData[i] = buf[i];
    }
    /* Transmit data */
    IfxAsclin_Asc_write(&g_AsclinStm.drivers.asc, &txData, &g_AsclinStm.count, TIME_INFINITE);
}

ISR(asclin0RxISR)
{
    // printfSerial("onReceive(%d) ",++recieveStamp);
    IfxAsclin_Asc_isrReceive(&g_AsclinStm.drivers.asc);

#if defined(ACTUATOR_PACKET_RECIEVE_MODE)
    if (IfxAsclin_Asc_getReadCount(&g_AsclinStm.drivers.asc) >= ACTUATOR_PACKET_SIZE)
    {
        readActuatorPacket(&g_RecievedActuatorPacket);
    }
#elif defined(SENSOR_PACKET_RECIEVE_MODE)
    if (IfxAsclin_Asc_getReadCount(&g_AsclinStm.drivers.asc) >= SENSOR_PACKET_SIZE)
    {
        readSensorPacket(&g_RecievedSensorPacket);
    }
#endif
}

ISR(asclin0TxISR)
{
    // printfSerial("onTransmit(%d) ",++sendStamp);
    IfxAsclin_Asc_isrTransmit(&g_AsclinStm.drivers.asc);
}

// from uart_packet

/* Calculate 8-bit XOR checksum */
uint8 calculate_checksum(const uint8 *data, size_t length)
{
    uint8 checksumResult = 0;
    size_t i = 0;
    for (i = 0; i < length; ++i)
    {
        checksumResult ^= data[i];
    }
    return checksumResult;
}

/* Serialize ActuatorPacket into buffer (ACTUATOR_PACKET_SIZE bytes) */
void serialize_actuator_packet(const struct ActuatorPacket *packet, uint8 *buffer)
{
    /* Copy all fields except CRC */
    memcpy(buffer, packet, ACTUATOR_PACKET_SIZE - 1);
    /* Compute and append CRC */
    buffer[ACTUATOR_PACKET_SIZE - 1] = calculate_checksum(buffer, ACTUATOR_PACKET_SIZE - 1);
}

/* Deserialize buffer into ActuatorPacket */
void deserialize_actuator_packet(const uint8 *buffer, struct ActuatorPacket *packet)
{
    /* Copy entire packet */
    memcpy(packet, buffer, ACTUATOR_PACKET_SIZE);
    /* Optional CRC validation */
    /* if (calculate_checksum(buffer, ACTUATOR_PACKET_SIZE - 1) != packet->crc) {
         // handle CRC mismatch
       } */
}

/* Serialize SensorPacket into buffer (SENSOR_PACKET_SIZE bytes) */
void serialize_sensor_packet(const struct SensorPacket *packet, uint8 *buffer)
{
    memcpy(buffer, packet, SENSOR_PACKET_SIZE - 1);
    buffer[SENSOR_PACKET_SIZE - 1] = calculate_checksum(buffer, SENSOR_PACKET_SIZE - 1);
}

/* Deserialize buffer into SensorPacket */
void deserialize_sensor_packet(const uint8 *buffer, struct SensorPacket *packet)
{
    memcpy(packet, buffer, SENSOR_PACKET_SIZE);
    /* Optional CRC validation */
    /* if (calculate_checksum(buffer, SENSOR_PACKET_SIZE - 1) != packet->crc) {
         // handle CRC mismatch
       } */
}