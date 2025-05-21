#include "illd\Libraries\iLLD\TC27D\Tricore\Scu\Std\IfxScuEru.h"
#include "illd\Libraries\iLLD\TC27D\Tricore\Src\Std\IfxSrc.h"
#include "illd\Libraries\iLLD\TC27D\Tricore\Cpu\Std/Ifx_Types.h"
#include "illd\src\ConfigurationIsr.h"
#include "illd\src\Configuration.h"
#include "hall_Driver.h"


volatile uint16 g_FRHallCnt;
volatile uint16 g_FLHallCnt;
volatile uint16 g_RRHallCnt;
volatile uint16 g_RLHallCnt;

// void initHall(void)
// {       
//         IfxPort_setPinMode(&MODULE_P02, 1, IfxPort_Mode_inputPullUp);
//         IfxPort_setPinMode(&MODULE_P10, 3, IfxPort_Mode_inputPullUp);
//         SCU_EICR1.U &= ~(0x7 << 4); // EXIS1_IDX
//         SCU_EICR1.U |= 0x1 << 4; // EXIS1_IDX

//         SCU_EICR1.U |= 1 << 9; // FEN1_IDX 24 or  REN1_IDX 25
//         SCU_EICR1.U |= 1 << 11; // EIEN1_IDX

//         SCU_EICR1.U &= ~(0x7 << 12); // INP1_IDX
// //        SCU_EICR1.U |= 1 << 12; // INP1_IDX, OGU 0 채널

//         // set IGCR
//         SCU_IGCR0.U &= ~(0x3 << 14); // IGP1_IDX
//         SCU_IGCR0.U |= 0x1 << 14; // IGP1_IDX

//         // set ERU
//         SRC_SCU_SCU_ERU0.U &= ~0xFF;
//         SRC_SCU_SCU_ERU0.U |= 0x20; // 우선 순위

//         SRC_SCU_SCU_ERU0.U |= 1 << 10;
//         SRC_SCU_SCU_ERU0.U &= ~(0x3 << 11);
// // ========================================================
//         SCU_EICR2.U &= ~(0x7 << 20); // EXIS1_IDX
//         SCU_EICR2.U |= 0x1 << 20; // EXIS1_IDX

//         SCU_EICR2.U |= 1 << 25; // FEN1_IDX 24 or  REN1_IDX 25
//         SCU_EICR2.U |= 1 << 27; // EIEN1_IDX

//         SCU_EICR2.U &= ~(0x7 << 28); // INP1_IDX
//         SCU_EICR2.U |= 0x1 << 28; // INP1_IDX, OGU 1 채널

//         // set IGCR
//         SCU_IGCR1.U &= ~(0x3 << 30); // IGP1_IDX
//         SCU_IGCR1.U |= 0x1 << 30; // IGP1_IDX

//         // set ERU
//         SRC_SCU_SCU_ERU1.U &= ~0xFF;
//         SRC_SCU_SCU_ERU1.U |= 0x30; // 우선 순위

//         SRC_SCU_SCU_ERU1.U |= 1 << 10;
//         SRC_SCU_SCU_ERU1.U &= ~(0x3 << 11);

// }




/* 매크로 정의 */
#define ISR_PRIORITY_SCUERU_INT0 10
#define ISR_PRIORITY_SCUERU_INT1 11
#define ISR_PRIORITY_SCUERU_INT2 12
#define ISR_PRIORITY_SCUERU_INT3 15

#define REQ_IN0   &IfxScu_REQ14_P02_1_IN   // 첫 번째 홀 센서 (P02.1)
#define REQ_IN1   &IfxScu_REQ3_P10_3_IN   // 두 번째 홀 센서 (P10.3)
#define REQ_IN2   &IfxScu_REQ13_P15_5_IN   // 세 번째 홀 센서 (P15.5)
#define REQ_IN3   &IfxScu_REQ0_P15_4_IN  // 네 번째 홀 센서 (P15.4)


#define TRIGGER_PIN0 &MODULE_P02, 1
#define TRIGGER_PIN1 &MODULE_P10, 3
#define TRIGGER_PIN2 &MODULE_P15, 5
#define TRIGGER_PIN3 &MODULE_P15, 4


/* 설정 구조체 */
static ERUconfig g_ERUconfig0;
static ERUconfig g_ERUconfig1;
static ERUconfig g_ERUconfig2;
static ERUconfig g_ERUconfig3;

void initHall(void)
{
    /* 첫 번째 핀(P02.1)에 대한 설정 */
    IfxPort_setPinMode(TRIGGER_PIN0, IfxPort_Mode_inputPullUp);
    g_ERUconfig0.reqPin = REQ_IN0;

    IfxScuEru_initReqPin(g_ERUconfig0.reqPin, IfxPort_InputMode_pullUp);
    g_ERUconfig0.inputChannel = (IfxScuEru_InputChannel) g_ERUconfig0.reqPin->channelId;
    g_ERUconfig0.outputChannel = IfxScuEru_OutputChannel_0;
    g_ERUconfig0.triggerSelect = IfxScuEru_InputNodePointer_0;

    IfxScuEru_enableFallingEdgeDetection(g_ERUconfig0.inputChannel);
    IfxScuEru_enableTriggerPulse(g_ERUconfig0.inputChannel);
    IfxScuEru_connectTrigger(g_ERUconfig0.inputChannel, g_ERUconfig0.triggerSelect);
    IfxScuEru_setInterruptGatingPattern(g_ERUconfig0.outputChannel, IfxScuEru_InterruptGatingPattern_alwaysActive);

    g_ERUconfig0.src = &MODULE_SRC.SCU.SCU.ERU[(int)g_ERUconfig0.outputChannel];
    IfxSrc_init(g_ERUconfig0.src, IfxSrc_Tos_cpu0, ISR_PRIORITY_SCUERU_INT0);
    IfxSrc_enable(g_ERUconfig0.src);

    /* 두 번째 핀(P10.3)에 대한 설정 */
    IfxPort_setPinMode(TRIGGER_PIN1, IfxPort_Mode_inputPullUp);
    g_ERUconfig1.reqPin = REQ_IN1;

    IfxScuEru_initReqPin(g_ERUconfig1.reqPin, IfxPort_InputMode_pullUp);
    g_ERUconfig1.inputChannel = (IfxScuEru_InputChannel) g_ERUconfig1.reqPin->channelId;
    g_ERUconfig1.outputChannel = IfxScuEru_OutputChannel_1;
    g_ERUconfig1.triggerSelect = IfxScuEru_InputNodePointer_1;

    IfxScuEru_enableFallingEdgeDetection(g_ERUconfig1.inputChannel);
    IfxScuEru_enableTriggerPulse(g_ERUconfig1.inputChannel);
    IfxScuEru_connectTrigger(g_ERUconfig1.inputChannel, g_ERUconfig1.triggerSelect);
    IfxScuEru_setInterruptGatingPattern(g_ERUconfig1.outputChannel, IfxScuEru_InterruptGatingPattern_alwaysActive);

    g_ERUconfig1.src = &MODULE_SRC.SCU.SCU.ERU[(int)g_ERUconfig1.outputChannel];
    IfxSrc_init(g_ERUconfig1.src, IfxSrc_Tos_cpu0, ISR_PRIORITY_SCUERU_INT1);
    IfxSrc_enable(g_ERUconfig1.src);

        /* 세 번째 핀(P15.5)에 대한 설정 */
    IfxPort_setPinMode(TRIGGER_PIN2, IfxPort_Mode_inputPullUp);
    g_ERUconfig2.reqPin = REQ_IN2;

    IfxScuEru_initReqPin(g_ERUconfig2.reqPin, IfxPort_InputMode_pullUp);
    g_ERUconfig2.inputChannel = (IfxScuEru_InputChannel) g_ERUconfig2.reqPin->channelId;
    g_ERUconfig2.outputChannel = IfxScuEru_OutputChannel_2;
    g_ERUconfig2.triggerSelect = IfxScuEru_InputNodePointer_2;

    IfxScuEru_enableFallingEdgeDetection(g_ERUconfig2.inputChannel);
    IfxScuEru_enableTriggerPulse(g_ERUconfig2.inputChannel);
    IfxScuEru_connectTrigger(g_ERUconfig2.inputChannel, g_ERUconfig2.triggerSelect);
    IfxScuEru_setInterruptGatingPattern(g_ERUconfig2.outputChannel, IfxScuEru_InterruptGatingPattern_alwaysActive);

    g_ERUconfig2.src = &MODULE_SRC.SCU.SCU.ERU[(int)g_ERUconfig2.outputChannel];
    IfxSrc_init(g_ERUconfig2.src, IfxSrc_Tos_cpu0, ISR_PRIORITY_SCUERU_INT2);
    IfxSrc_enable(g_ERUconfig2.src);

    /* 네 번째 핀(P15.4)에 대한 설정 */
    IfxPort_setPinMode(TRIGGER_PIN3, IfxPort_Mode_inputPullUp);
    g_ERUconfig3.reqPin = REQ_IN3;

    IfxScuEru_initReqPin(g_ERUconfig3.reqPin, IfxPort_InputMode_pullUp);
    g_ERUconfig3.inputChannel = (IfxScuEru_InputChannel) g_ERUconfig3.reqPin->channelId;
    g_ERUconfig3.outputChannel = IfxScuEru_OutputChannel_3;
    g_ERUconfig3.triggerSelect = IfxScuEru_InputNodePointer_3;

    IfxScuEru_enableFallingEdgeDetection(g_ERUconfig3.inputChannel);
    IfxScuEru_enableTriggerPulse(g_ERUconfig3.inputChannel);
    IfxScuEru_connectTrigger(g_ERUconfig3.inputChannel, g_ERUconfig3.triggerSelect);
    IfxScuEru_setInterruptGatingPattern(g_ERUconfig3.outputChannel, IfxScuEru_InterruptGatingPattern_alwaysActive);

    g_ERUconfig3.src = &MODULE_SRC.SCU.SCU.ERU[(int)g_ERUconfig3.outputChannel];
    IfxSrc_init(g_ERUconfig3.src, IfxSrc_Tos_cpu0, ISR_PRIORITY_SCUERU_INT3);
    IfxSrc_enable(g_ERUconfig3.src);
}

uint16 getFRHallCnt(void)
{
    return g_FRHallCnt;
}

void resetFRHallCnt(void)
{
    g_FRHallCnt = 0;
}