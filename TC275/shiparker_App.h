/*
 * app.h
 *
 *  Created on: May 19, 2025
 *  Last modify: 
 *      Author: 오동걸
 * 
 *      TODO:
 *          
 *
 */

#ifndef SHIPARKER_APP_H_
#define SHIPARKER_APP_H_

/************** MAKE CHANGES HERE ********************/
#include "illd\src\ConfigurationIsr.h"
#include "illd\src\Configuration.h"
#include "uart_Driver.h"
#include "bsw.h"
#include "stdlib.h"

#define ERROR_CODE_MAX 16

/*******************************************     NO CHANGES AFTER THIS LINE      ****************************************************/
typedef enum CAR_STATUS_TYPE_T{
    CAR_STATUS_READY,
    CAR_STATUS_RUNNING,
    CAR_STATUS_STOP,
    CAR_STATUS_TERMINATED,
    CAR_STATUS_ERROR,
    CAR_STATUS_RESERVED1,
    CAR_STATUS_RESERVED2
}CAR_STATUS_TYPE;
typedef enum CAR_COMMAND_TYPE_T{
    CAR_COMMAND_FORCESTOP,
    CAR_COMMAND_START,
    CAR_COMMAND_STOP,
    CAR_COMMAND_RESERVED1,
    CAR_COMMAND_RESERVED2
}CAR_COMMAND_TYPE;
typedef enum ERROR_CODE_TYPE_T{
    ERROR_CODE_FORCESTOP,
    ERROR_CODE_OBSTACLE,
    ERROR_CODE_2,
    ERROR_CODE_3,
    ERROR_CODE_4,
    ERROR_CODE_5,
    ERROR_CODE_6,
    ERROR_CODE_7,
    ERROR_CODE_8,
    ERROR_CODE_9,
    ERROR_CODE_10,
    ERROR_CODE_11,
    ERROR_CODE_12,
    ERROR_CODE_13,
    ERROR_CODE_14,
    ERROR_CODE_15
}ERROR_CODE_TYPE;
struct Position
{
    double x;
    double y;
};

static const char* errorMessages[ERROR_CODE_MAX] = {
    "Emergency force stop triggered.",
    "Obstacle detected.",
    "ERRORCODE 2",
    "ERRORCODE 3",
    "ERRORCODE 4",
    "ERRORCODE 5",
    "ERRORCODE 6",
    "ERRORCODE 7",
    "ERRORCODE 8",
    "ERRORCODE 9",
    "ERRORCODE 10",
    "ERRORCODE 11",
    "ERRORCODE 12",
    "ERRORCODE 13",
    "ERRORCODE 14",
    "ERRORCODE 15"
};

// void command(const struct ParkingSystemPacket);
void initShiParkerApp(void);
int shiParkerApp(void);
void handleError(ERROR_CODE_TYPE errorCode);

#endif /* SHIPARKER_APP_H_ */
