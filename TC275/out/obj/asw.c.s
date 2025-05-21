	.file	"asw.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata,"a",@progbits
.LC0:
	.string	"FRHall: %d FLHall: %d RRHall: %d RLHall: %d"
.section .text,"ax",@progbits
	.align 1
	.global	FuncTestTask
	.type	FuncTestTask, @function
FuncTestTask:
.LFB574:
	.file 1 "C:\\project\\SHIPAR~1\\TC275\\asw.c"
	.loc 1 25 0
	.loc 1 27 0
	movh.a	%a4, hi:testSendPacket
	lea	%a4, [%a4] lo:testSendPacket
	.loc 1 26 0
	ld.bu	%d15, [%a4] 1
	.loc 1 25 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 26 0
	add	%d15, 1
	.loc 1 27 0
	and	%d15, %d15, 3
	st.b	[%a4] 1, %d15
	.loc 1 28 0
	call	sendPacket
.LVL0:
	.loc 1 29 0
	movh.a	%a15, hi:g_FRHallCnt
	ld.hu	%d4, [%a15] lo:g_FRHallCnt
	movh.a	%a15, hi:g_FLHallCnt
	ld.hu	%d3, [%a15] lo:g_FLHallCnt
	movh.a	%a15, hi:g_RRHallCnt
	ld.hu	%d2, [%a15] lo:g_RRHallCnt
	movh.a	%a15, hi:g_RLHallCnt
	ld.hu	%d15, [%a15] lo:g_RLHallCnt
	movh.a	%a4, hi:.LC0
	st.w	[%SP]0, %d4
	st.w	[%SP] 4, %d3
	st.w	[%SP] 8, %d2
	st.w	[%SP] 12, %d15
	lea	%a4, [%a4] lo:.LC0
	j	printfSerial
.LVL1:
.LFE574:
	.size	FuncTestTask, .-FuncTestTask
	.align 1
	.global	FRHallISR
	.type	FRHallISR, @function
FRHallISR:
.LFB575:
	.loc 1 33 0
	.loc 1 34 0
	movh.a	%a15, hi:g_FRHallCnt
	ld.hu	%d15, [%a15] lo:g_FRHallCnt
	.loc 1 35 0
	mov	%d4, 2
	.loc 1 34 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:g_FRHallCnt, %d15
	.loc 1 35 0
	j	IfxScuEru_clearEventFlag
.LVL2:
.LFE575:
	.size	FRHallISR, .-FRHallISR
	.align 1
	.global	FLHallISR
	.type	FLHallISR, @function
FLHallISR:
.LFB576:
	.loc 1 38 0
	.loc 1 39 0
	movh.a	%a15, hi:g_FLHallCnt
	ld.hu	%d15, [%a15] lo:g_FLHallCnt
	.loc 1 40 0
	mov	%d4, 3
	.loc 1 39 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:g_FLHallCnt, %d15
	.loc 1 40 0
	j	IfxScuEru_clearEventFlag
.LVL3:
.LFE576:
	.size	FLHallISR, .-FLHallISR
	.align 1
	.global	RRHallISR
	.type	RRHallISR, @function
RRHallISR:
.LFB577:
	.loc 1 43 0
	.loc 1 44 0
	movh.a	%a15, hi:g_RRHallCnt
	ld.hu	%d15, [%a15] lo:g_RRHallCnt
	.loc 1 45 0
	mov	%d4, 4
	.loc 1 44 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:g_RRHallCnt, %d15
	.loc 1 45 0
	j	IfxScuEru_clearEventFlag
.LVL4:
.LFE577:
	.size	RRHallISR, .-RRHallISR
	.align 1
	.global	RLHallISR
	.type	RLHallISR, @function
RLHallISR:
.LFB578:
	.loc 1 48 0
	.loc 1 49 0
	movh.a	%a15, hi:g_RLHallCnt
	ld.hu	%d15, [%a15] lo:g_RLHallCnt
	.loc 1 50 0
	mov	%d4, 0
	.loc 1 49 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:g_RLHallCnt, %d15
	.loc 1 50 0
	j	IfxScuEru_clearEventFlag
.LVL5:
.LFE578:
	.size	RLHallISR, .-RLHallISR
.section .rodata,"a",@progbits
.LC1:
	.string	"\n%4ld: "
.section .text,"ax",@progbits
	.align 1
	.global	TimerISR
	.type	TimerISR, @function
TimerISR:
.LFB579:
	.loc 1 54 0
	.loc 1 56 0
	movh	%d4, 15
	.loc 1 54 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 56 0
	addi	%d4, %d4, 16960
	call	osEE_tc_stm_set_sr0_next_match
.LVL6:
	.loc 1 65 0
	mov	%d4, 8
	call	ActivateTask
.LVL7:
	.loc 1 69 0
	movh.a	%a15, hi:c.16789
	ld.w	%d15, [%a15] lo:c.16789
	movh.a	%a4, hi:.LC1
	st.w	[%SP]0, %d15
	lea	%a4, [%a4] lo:.LC1
	add	%d15, 1
	st.w	[%a15] lo:c.16789, %d15
	j	printfSerial
.LVL8:
.LFE579:
	.size	TimerISR, .-TimerISR
.section .data,"aw",@progbits
	.align 2
	.type	c.16789, @object
	.size	c.16789, 4
c.16789:
	.word	-4
	.global	testSendPacket
	.type	testSendPacket, @object
	.size	testSendPacket, 36
testSendPacket:
	.byte	-86
	.byte	1
	.uaword	0
	.uaword	1073741824
	.uaword	0
	.uaword	1074266112
	.uaword	0
	.uaword	1074790400
	.uaword	0
	.uaword	1075052544
	.byte	6
	.byte	7
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB574
	.uaword	.LFE574-.LFB574
	.byte	0x4
	.uaword	.LCFI0-.LFB574
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB575
	.uaword	.LFE575-.LFB575
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB576
	.uaword	.LFE576-.LFB576
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB577
	.uaword	.LFE577-.LFB577
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB578
	.uaword	.LFE578-.LFB578
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB579
	.uaword	.LFE579-.LFB579
	.byte	0x4
	.uaword	.LCFI1-.LFB579
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "C:\\project\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\Cpu\\Std\\Platform_Types.h"
	.file 3 "C:\\project\\SHIPAR~1\\TC275\\illd\\Libraries\\iLLD\\TC27D\\Tricore\\Cpu\\Std/Ifx_Types.h"
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 5 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 6 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 7 "C:\\project\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\Scu\\Std\\IfxScuEru.h"
	.file 8 "C:\\project\\SHIPAR~1\\TC275\\illd\\src\\Configuration.h"
	.file 9 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h"
	.file 10 "C:\\project\\SHIPAR~1\\TC275\\steering_Pid.h"
	.file 11 "C:\\project\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\_Impl/IfxCpu_cfg.h"
	.file 12 "C:\\project\\SHIPAR~1\\TC275\\uart_Driver.h"
	.file 13 "C:\\project\\SHIPAR~1\\TC275\\bsw.h"
	.file 14 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_tc_system.h"
	.file 15 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_oo_api_osek.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xa1b
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -Os -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\project\\SHIPAR~1\\TC275\\asw.c"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x6c
	.uaword	0x16c
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x70
	.uaword	0x198
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x86
	.uaword	0x144
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21c
	.uleb128 0x5
	.uaword	0x221
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x22f
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x8c
	.uaword	0x256
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x8e
	.uaword	0x229
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x8f
	.uaword	0x1e4
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x90
	.uaword	0x230
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x4
	.byte	0x50
	.uaword	0x150
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x5
	.byte	0x5b
	.uaword	0x270
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x6
	.byte	0x78
	.uaword	0x290
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.uahalf	0x2b1
	.uaword	0x4d3
	.uleb128 0xa
	.string	"E_OK"
	.sleb128 0
	.uleb128 0xa
	.string	"E_OS_ACCESS"
	.sleb128 1
	.uleb128 0xa
	.string	"E_OS_CALLEVEL"
	.sleb128 2
	.uleb128 0xa
	.string	"E_OS_ID"
	.sleb128 3
	.uleb128 0xa
	.string	"E_OS_LIMIT"
	.sleb128 4
	.uleb128 0xa
	.string	"E_OS_NOFUNC"
	.sleb128 5
	.uleb128 0xa
	.string	"E_OS_RESOURCE"
	.sleb128 6
	.uleb128 0xa
	.string	"E_OS_STATE"
	.sleb128 7
	.uleb128 0xa
	.string	"E_OS_VALUE"
	.sleb128 8
	.uleb128 0xa
	.string	"E_OS_SERVICEID"
	.sleb128 9
	.uleb128 0xa
	.string	"E_OS_ILLEGAL_ADDRESS"
	.sleb128 10
	.uleb128 0xa
	.string	"E_OS_MISSINGEND"
	.sleb128 11
	.uleb128 0xa
	.string	"E_OS_DISABLEDINT"
	.sleb128 12
	.uleb128 0xa
	.string	"E_OS_STACKFAULT"
	.sleb128 13
	.uleb128 0xa
	.string	"E_OS_PARAM_POINTER"
	.sleb128 14
	.uleb128 0xa
	.string	"E_OS_PROTECTION_MEMORY"
	.sleb128 15
	.uleb128 0xa
	.string	"E_OS_PROTECTION_TIME"
	.sleb128 16
	.uleb128 0xa
	.string	"E_OS_PROTECTION_ARRIVAL"
	.sleb128 17
	.uleb128 0xa
	.string	"E_OS_PROTECTION_LOCKED"
	.sleb128 18
	.uleb128 0xa
	.string	"E_OS_PROTECTION_EXCEPTION"
	.sleb128 19
	.uleb128 0xa
	.string	"E_OS_SPINLOCK"
	.sleb128 20
	.uleb128 0xa
	.string	"E_OS_INTERFERENCE_DEADLOCK"
	.sleb128 21
	.uleb128 0xa
	.string	"E_OS_NESTING_DEADLOCK"
	.sleb128 22
	.uleb128 0xa
	.string	"E_OS_CORE"
	.sleb128 23
	.uleb128 0xa
	.string	"E_OS_SYS_INIT"
	.sleb128 24
	.uleb128 0xa
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
	.sleb128 25
	.uleb128 0xa
	.string	"E_OS_SYS_TASK"
	.sleb128 26
	.uleb128 0xa
	.string	"E_OS_SYS_STACK"
	.sleb128 27
	.uleb128 0xa
	.string	"E_OS_SYS_ACT"
	.sleb128 28
	.byte	0
	.uleb128 0xb
	.string	"OsEE_status_type"
	.byte	0x6
	.uahalf	0x2d4
	.uaword	0x2b0
	.uleb128 0xb
	.string	"StatusType"
	.byte	0x6
	.uahalf	0x2d9
	.uaword	0x4d3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xc
	.byte	0x1
	.byte	0x7
	.byte	0x5a
	.uaword	0x5ec
	.uleb128 0xa
	.string	"IfxScuEru_InputChannel_0"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxScuEru_InputChannel_1"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxScuEru_InputChannel_2"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxScuEru_InputChannel_3"
	.sleb128 3
	.uleb128 0xa
	.string	"IfxScuEru_InputChannel_4"
	.sleb128 4
	.uleb128 0xa
	.string	"IfxScuEru_InputChannel_5"
	.sleb128 5
	.uleb128 0xa
	.string	"IfxScuEru_InputChannel_6"
	.sleb128 6
	.uleb128 0xa
	.string	"IfxScuEru_InputChannel_7"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"IfxScuEru_InputChannel"
	.byte	0x7
	.byte	0x63
	.uaword	0x50b
	.uleb128 0xd
	.string	"Point"
	.byte	0x10
	.byte	0x8
	.byte	0x58
	.uaword	0x62d
	.uleb128 0x8
	.string	"x"
	.byte	0x8
	.byte	0x5a
	.uaword	0x20c
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x8
	.byte	0x5b
	.uaword	0x20c
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"ParkingSystemPacket"
	.byte	0x24
	.byte	0x8
	.byte	0x5e
	.uaword	0x6c9
	.uleb128 0x8
	.string	"start_byte"
	.byte	0x8
	.byte	0x60
	.uaword	0x17d
	.byte	0
	.uleb128 0x8
	.string	"car_status"
	.byte	0x8
	.byte	0x61
	.uaword	0x17d
	.byte	0x1
	.uleb128 0x8
	.string	"car_current_position"
	.byte	0x8
	.byte	0x62
	.uaword	0x60a
	.byte	0x2
	.uleb128 0x8
	.string	"car_target_position"
	.byte	0x8
	.byte	0x63
	.uaword	0x60a
	.byte	0x12
	.uleb128 0x8
	.string	"car_command"
	.byte	0x8
	.byte	0x64
	.uaword	0x17d
	.byte	0x22
	.uleb128 0x8
	.string	"crc"
	.byte	0x8
	.byte	0x65
	.uaword	0x17d
	.byte	0x23
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"long double"
	.uleb128 0x3
	.string	"clock_t"
	.byte	0x9
	.byte	0x68
	.uaword	0x150
	.uleb128 0xe
	.byte	0x1
	.string	"FuncTestTask"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.uaword	.LFB574
	.uaword	.LFE574
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x73b
	.uleb128 0xf
	.uaword	.LVL0
	.uaword	0x963
	.uaword	0x71f
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	testSendPacket
	.byte	0
	.uleb128 0x11
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x989
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x10
	.byte	0x2
	.byte	0x8a
	.sleb128 12
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"FRHallISR"
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.uaword	.LFB575
	.uaword	.LFE575
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x76a
	.uleb128 0x11
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x9a7
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"FLHallISR"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.uaword	.LFB576
	.uaword	.LFE576
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x799
	.uleb128 0x11
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x9a7
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"RRHallISR"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.uaword	.LFB577
	.uaword	.LFE577
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7c8
	.uleb128 0x11
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x9a7
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"RLHallISR"
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.uaword	.LFB578
	.uaword	.LFE578
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7f7
	.uleb128 0x11
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x9a7
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"TimerISR"
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.uaword	.LFB579
	.uaword	.LFE579
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x869
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x37
	.uaword	0x144
	.byte	0x5
	.byte	0x3
	.uaword	c.16789
	.uleb128 0xf
	.uaword	.LVL6
	.uaword	0x9d0
	.uaword	0x83a
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0xf4240
	.byte	0
	.uleb128 0xf
	.uaword	.LVL7
	.uaword	0xa00
	.uaword	0x84d
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x11
	.uaword	.LVL8
	.byte	0x1
	.uaword	0x989
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x13
	.string	"pid_prev_error"
	.byte	0xa
	.byte	0x14
	.uaword	0x20c
	.byte	0x8
	.uaword	0
	.uaword	0
	.uleb128 0x13
	.string	"pid_integral"
	.byte	0xa
	.byte	0x15
	.uaword	0x20c
	.byte	0x8
	.uaword	0
	.uaword	0
	.uleb128 0x14
	.string	"pid_last_time"
	.byte	0xa
	.byte	0x16
	.uaword	0x6d8
	.byte	0
	.uleb128 0x15
	.uaword	0x256
	.uaword	0x8cb
	.uleb128 0x16
	.uaword	0x4ff
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xb
	.byte	0xa7
	.uaword	0x8e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x8bb
	.uleb128 0x17
	.string	"g_FRHallCnt"
	.byte	0x1
	.byte	0x7
	.uaword	0x902
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.uaword	0x18a
	.uleb128 0x17
	.string	"g_FLHallCnt"
	.byte	0x1
	.byte	0x8
	.uaword	0x902
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"g_RRHallCnt"
	.byte	0x1
	.byte	0x9
	.uaword	0x902
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"g_RLHallCnt"
	.byte	0x1
	.byte	0xa
	.uaword	0x902
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"testSendPacket"
	.byte	0x1
	.byte	0xc
	.uaword	0x62d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testSendPacket
	.uleb128 0x1a
	.byte	0x1
	.string	"sendPacket"
	.byte	0xc
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.uaword	0x97e
	.uleb128 0x1b
	.uaword	0x97e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x984
	.uleb128 0x5
	.uaword	0x62d
	.uleb128 0x1a
	.byte	0x1
	.string	"printfSerial"
	.byte	0xd
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.uaword	0x9a7
	.uleb128 0x1b
	.uaword	0x216
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxScuEru_clearEventFlag"
	.byte	0x7
	.byte	0xba
	.byte	0x1
	.byte	0x1
	.uaword	0x9d0
	.uleb128 0x1b
	.uaword	0x5ec
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"osEE_tc_stm_set_sr0_next_match"
	.byte	0xe
	.uahalf	0x3d8
	.byte	0x1
	.byte	0x1
	.uaword	0xa00
	.uleb128 0x1b
	.uaword	0x290
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"ActivateTask"
	.byte	0xf
	.uahalf	0x178
	.byte	0x1
	.uaword	0x4ec
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x2a0
	.byte	0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	ActivateTask,STT_FUNC,0
	.extern	osEE_tc_stm_set_sr0_next_match,STT_FUNC,0
	.extern	IfxScuEru_clearEventFlag,STT_FUNC,0
	.extern	printfSerial,STT_FUNC,0
	.extern	g_RLHallCnt,STT_OBJECT,2
	.extern	g_RRHallCnt,STT_OBJECT,2
	.extern	g_FLHallCnt,STT_OBJECT,2
	.extern	g_FRHallCnt,STT_OBJECT,2
	.extern	sendPacket,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
