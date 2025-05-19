#ifndef CONFIGURATION_H
#define CONFIGURATION_H
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "illd\Configurations\Ifx_Cfg.h"
#include "ConfigurationIsr.h"
#include "illd\Libraries\iLLD\TC27D\Tricore\_Impl/IfxGlobal_cfg.h"
#include "illd\Libraries\iLLD\TC27D\Tricore\Cpu\Std/Ifx_Types.h"
#include <illd\Libraries\iLLD\TC27D\Tricore\Stm\Std/IfxStm.h>
#include <illd\Libraries\iLLD\TC27D\Tricore\Asclin\Asc/IfxAsclin_Asc.h>
#include "illd\Libraries\iLLD\TC27D\Tricore\Cpu\Std/Ifx_Types.h"
#include "illd\Libraries\iLLD\TC27D\Tricore\Src\Std\IfxSrc.h"
#include "illd\Libraries\iLLD\TC27D\Tricore\Scu\Std\IfxScuEru.h"
#include "illd\Libraries\iLLD\TC27D\Tricore\Vadc\Adc\IfxVadc_Adc.h"
#include "illd\Libraries\iLLD\TC27D\Tricore\Scu\Std\IfxScuWdt.h"
#include "illd\Libraries\iLLD\TC27D\Tricore\Port\Std\IfxPort.h"

#include <string.h>
#include <stdarg.h>
#include <stdint.h>
#include <stddef.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define ASC_TX_BUFFER_SIZE 258
#define ASC_RX_BUFFER_SIZE 258
#define ISR_PRIORITY_SCUERU_INT0 10  /* Define the SCU ERU interrupt priority                */
#define REQ_IN &IfxScu_REQ6_P02_0_IN /* External request pin                                 */
#define TRIGGER_PIN &MODULE_P40, 7   /* Pin that is toggled by pressing the board's button   */
#define CHN_36 0                     /* Position of channel 4 group 4 (AN36) on the array of ADC channels    */
#define CHN_37 1                     /* Position of channel 5 group 4 (AN37) on the array of ADC channels    */
#define CHN_38 2                     /* Position of channel 6 group 4 (AN38) on the array of ADC channels    */
#define CHN_39 3                     /* Position of channel 7 group 4 (AN39) on the array of ADC channels    */

#define UART_START_BYTE 0xAA
#define ACTUATOR_PACKET_ID 0x01
#define ACTUATOR_PACKET_SIZE 11
#define SENSOR_PACKET_ID 0x02
#define SENSOR_PACKET_SIZE 9 /* 1+1+2+2+2+1 = 9 bytes */

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

typedef struct
{
    Ifx_STM *stmSfr;                /**< \brief Pointer to Stm register base */
    IfxStm_CompareConfig stmConfig; /**< \brief Stm Configuration structure */
    volatile uint8 LedBlink;        /**< \brief LED state variable */
    volatile uint32 counter;        /**< \brief interrupt counter */
} App_Stm;

typedef struct
{
    uint8 tx[ASC_TX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
    uint8 rx[ASC_RX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
} AppAscBuffer;

typedef struct
{
    AppAscBuffer ascBuffer; /**< \brief ASC interface buffer */
    struct
    {
        IfxAsclin_Asc asc; /**< \brief ASC interface */
    } drivers;

    // uint8 txData[5];
    // uint8 rxData[5];
    Ifx_SizeT count;
} App_AsclinAsc;

/*********************************************************************************************************************/
/*-------------------------------------------------Data Structures---------------------------------------------------*/
/*********************************************************************************************************************/
typedef struct
{
    IfxScu_Req_In *reqPin;                    /* External request pin                                             */
    IfxScuEru_InputChannel inputChannel;      /* Input channel EICRm depending on input pin                       */
    IfxScuEru_InputNodePointer triggerSelect; /* Input node pointer                                               */
    IfxScuEru_OutputChannel outputChannel;    /* Output channel                                                   */
    volatile Ifx_SRC_SRCR *src;               /* Service request register                                         */
} ERUconfig;

/*********************************************************************************************************************/
/*-------------------------------------------------Data Structures---------------------------------------------------*/
/*********************************************************************************************************************/

struct __attribute__((__packed__)) ActuatorPacket
{
    uint8 start_byte; /* Start of packet (UART_START_BYTE) */
    uint8 packet_id;  /* Packet type ID (ACTUATOR_PACKET_ID) */

    /* RGB field only (3 bits), independent from other flags */
    union
    {
        struct
        {
            uint8 R : 1;
            uint8 G : 1;
            uint8 B : 1;
        };
        uint8 led_rgb : 3; /* Combined 3-bit RGB value */
        uint8 : 5;         /* Padding for one full byte */
    };

    /* Other actuator flags and modes (1 byte total) */
    uint8 fan : 2;          /* Fan speed (0–3) */
    uint8 led : 1;          /* Headlight on/off */
    uint8 buzzer : 1;       /* Buzzer on/off */
    uint8 driving_mode : 4; /* Driving mode (0–15) */

    /* Servo motors (12 bits each, using two 16-bit fields = 4 bytes) */
    uint16 servo_chair;  /* Chair tilt angle */
    uint16 servo_window; /* Window position */
    uint16 servo_air;    /* Air control */

    /* CRC (1 byte) */
    uint8 crc; /* Checksum or CRC */
};

/* Sensor packet structure (packed, 9 bytes total) */
struct __attribute__((__packed__)) SensorPacket
{
    uint8 start_byte; /* Start of packet (UART_START_BYTE) */
    uint8 packet_id;  /* Packet type ID (SENSOR_PACKET_ID) */

    uint16 photo;        /* Brightness sensor (0–4095) */
    uint16 ultra_sonic1; /* Ultrasonic sensor (0–65535) */
    uint16 ultra_sonic2; /* Ultrasonic sensor (0–65535) */

    uint8 crc; /* CRC or checksum */
};

#endif
