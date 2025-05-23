#include "uart_Driver.h"
#include "bsw.h"

App_AsclinAsc              g_AsclinStm;
struct ParkingSystemPacket g_RecievedParkingSystemPacket = {};

void initUartDriver(void)
{
    IfxAsclin_Asc_Config ascConfig;
    IfxAsclin_Asc_initModuleConfig(&ascConfig, &MODULE_ASCLIN0);

    ascConfig.baudrate.prescaler    = 1;
    ascConfig.baudrate.baudrate     = 9600;
    ascConfig.baudrate.oversampling = IfxAsclin_OversamplingFactor_4;

    ascConfig.interrupt.rxPriority    = ISR_PRIORITY_ASC_0_RX;
    ascConfig.interrupt.txPriority    = ISR_PRIORITY_ASC_0_TX;
    ascConfig.interrupt.typeOfService = IfxSrc_Tos_cpu0;

    ascConfig.txBuffer     = g_AsclinStm.ascBuffer.tx;
    ascConfig.txBufferSize = ASC_TX_BUFFER_SIZE;
    ascConfig.rxBuffer     = g_AsclinStm.ascBuffer.rx;
    ascConfig.rxBufferSize = ASC_RX_BUFFER_SIZE;

    const IfxAsclin_Asc_Pins pins = {NULL_PTR,
                                     IfxPort_InputMode_pullUp,
                                     &IfxAsclin0_RXB_P15_3_IN,
                                     IfxPort_InputMode_pullUp,
                                     NULL_PTR,
                                     IfxPort_OutputMode_pushPull,
                                     &IfxAsclin0_TX_P15_2_OUT,
                                     IfxPort_OutputMode_pushPull,
                                     IfxPort_PadDriver_cmosAutomotiveSpeed1};
    ascConfig.pins                = &pins;

    IfxAsclin_Asc_initModule(&g_AsclinStm.drivers.asc, &ascConfig);
}

void sendPacket(const struct ParkingSystemPacket *packet)
{
    // EnableAllInterrupts();
    // uint8 buf[PARKING_SYSTEM_PACKET_SIZE] = {};
    // serializePacket(packet, buf);
    // g_AsclinStm.count = PARKING_SYSTEM_PACKET_SIZE;

    // printfSerial("\nsend:[ ");
    // int i;
    // for (i = 0; i < PARKING_SYSTEM_PACKET_SIZE; i++)
    // {
    //     printfSerial("%02x/", buf[i]);
    // }
    // printfSerial(" ]");
    // printfSerial("\n[send| start:%02x status:%02x command:%d crc:%d ]",
    //              packet->start_byte,
    //              packet->car_status,
    //              packet->car_command,
    //              packet->crc);
    // printDouble("current_position_X: ", packet->car_current_position.x);
    // printDouble("current_position_Y: ", packet->car_current_position.y);
    // printDouble("target_position_X: ", packet->car_target_position.x);
    // printDouble("target_position_Y: ", packet->car_target_position.y);
    // printfSerial("\n");
    // IfxAsclin_Asc_write(&g_AsclinStm.drivers.asc,
    //                     &buf,
    //                     &g_AsclinStm.count,
    //                     TIME_INFINITE);
}

void readPacket(struct ParkingSystemPacket *packet)
{
    if (IfxAsclin_Asc_blockingRead(&g_AsclinStm.drivers.asc) == UART_START_BYTE)
    {
        uint8 buffer[PARKING_SYSTEM_PACKET_SIZE] = {};
        buffer[0]                                = UART_START_BYTE;
        uint8 pos                                = 1;
        while (pos < PARKING_SYSTEM_PACKET_SIZE)
        {
            buffer[pos] = IfxAsclin_Asc_blockingRead(&g_AsclinStm.drivers.asc);
            pos++;
        }
        printfSerial("\nrecieve:[ ");
        int i;
        for (i = 0; i < PARKING_SYSTEM_PACKET_SIZE; i++)
        {
            printfSerial("%02x/", buffer[i]);
        }
        printfSerial(" ]");
        if (calculateChecksum(buffer, PARKING_SYSTEM_PACKET_SIZE - 1)
            == buffer[PARKING_SYSTEM_PACKET_SIZE - 1])
        {
            printfSerial("(valid recieve)");
            deserializePacket(buffer, packet);
            printfSerial(
                "\n[recieve| start:%02x status:%02x command:%d crc:%d ]",
                packet->start_byte,
                packet->car_status,
                packet->car_command,
                packet->crc);
            printDouble("current_position_X: ", packet->car_current_position.x);
            printDouble("current_position_Y: ", packet->car_current_position.y);
            printDouble("target_position_X: ", packet->car_target_position.x);
            printDouble("target_position_Y: ", packet->car_target_position.y);
            printfSerial("\n");
        }
    }
}

void myprintfSerial(const char *fmt, ...)
{
    EnableAllInterrupts();
    char    buf[128];
    va_list args;
    va_start(args, fmt);
    vsnprintf(buf, 128, fmt, args);
    va_end(args);
    /* prepare data to transmit and receive */
    uint8 txData[100];
    g_AsclinStm.count = strlen(buf);
    unsigned int i    = 0;
    for (; i < strlen(buf); i++)
    {
        txData[i] = buf[i];
    }
    /* Transmit data */
    IfxAsclin_Asc_write(&g_AsclinStm.drivers.asc,
                        &txData,
                        &g_AsclinStm.count,
                        TIME_INFINITE);
}

ISR(asclin0RxISR)
{
    // printfSerial("onReceive(%d) ",++recieveStamp);
    IfxAsclin_Asc_isrReceive(&g_AsclinStm.drivers.asc);
    if (IfxAsclin_Asc_getReadCount(&g_AsclinStm.drivers.asc)
        >= PARKING_SYSTEM_PACKET_SIZE)
    {
        readPacket(&g_RecievedParkingSystemPacket);
    }
}

ISR(asclin0TxISR)
{
    // printfSerial("onTransmit(%d) ",++sendStamp);
    IfxAsclin_Asc_isrTransmit(&g_AsclinStm.drivers.asc);
}

// from uart_packet

/* Calculate 8-bit XOR checksum */
uint8 calculateChecksum(const uint8 *data, size_t length)
{
    uint8  checksumResult = 0;
    size_t i              = 0;
    for (i = 0; i < length; ++i)
    {
        checksumResult ^= data[i];
    }
    return checksumResult;
}

/* Serialize ActuatorPacket into buffer (ACTUATOR_PACKET_SIZE bytes) */
void serializePacket(const struct ParkingSystemPacket *packet, uint8 *buffer)
{
    /* Copy all fields except CRC */
    memcpy(buffer, packet, PARKING_SYSTEM_PACKET_SIZE - 1);
    /* Compute and append CRC */
    buffer[PARKING_SYSTEM_PACKET_SIZE - 1] =
        calculateChecksum(buffer, PARKING_SYSTEM_PACKET_SIZE - 1);
}

/* Deserialize buffer into ActuatorPacket */
void deserializePacket(const uint8 *buffer, struct ParkingSystemPacket *packet)
{
    /* Copy entire packet */
    memcpy(packet, buffer, PARKING_SYSTEM_PACKET_SIZE);
    /* Optional CRC validation */
    /* if (calculate_checksum(buffer, ACTUATOR_PACKET_SIZE - 1) != packet->crc)
       {
         // handle CRC mismatch
       } */
}