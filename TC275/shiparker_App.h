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

#define APP_TIME 100000000 //500ms

#define DEBUG_MODE

/*******************************************     NO CHANGES AFTER THIS LINE      ****************************************************/

enum CAR_STATUS_TYPE{
    CAR_STATUS_READY,
    CAR_STATUS_RUNNING,
    CAR_STATUS_STOP,
    CAR_STATUS_TERMINATED,
    CAR_STATUS_ERROR,
    CAR_STATUS_RESERVED1,
    CAR_STATUS_RESERVED2
}
enum CAR_COMMAND_TYPE{
    CAR_COMMAND_FORCESTOP,
    CAR_COMMAND_START,
    CAR_COMMAND_STOP,
    CAR_COMMAND_RESERVED1,
    CAR_COMMAND_RESERVED2
}
enum ERROR_CODE_TYPE{
    ERROR_CODE_FORCESTOP,
    ERROR_CODE_1,
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
}
struct Position
{
    double x;
    double y;
};

int app(void);

#endif /* SHIPARKER_APP_H_ */
