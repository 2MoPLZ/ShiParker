	.file	"shiparker_App.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata,"a",@progbits
.LC0:
	.string	"restart ShiParker...\n"
.LC1:
	.string	"start ShiParker...\n"
.section .text,"ax",@progbits
	.align 1
	.global	startShiParkerApp
	.type	startShiParkerApp, @function
startShiParkerApp:
.LFB574:
	.file 1 "C:\\SHIPAR~1\\TC275\\shiparker_App.c"
	.loc 1 11 0
	.loc 1 12 0
	movh.a	%a15, hi:g_isAppRunning
	ld.bu	%d15, [%a15] lo:g_isAppRunning
	.loc 1 14 0
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	.loc 1 12 0
	jeq	%d15, 1, .L4
	.loc 1 17 0
	movh.a	%a4, hi:.LC1
	lea	%a4, [%a4] lo:.LC1
.L4:
	call	printfSerial
.LVL0:
	.loc 1 19 0
	mov	%d15, 1
	st.b	[%a15] lo:g_isAppRunning, %d15
	.loc 1 20 0
	mov	%d15, 0
	movh.a	%a15, hi:carStatus
	.loc 1 21 0
	mov	%e2, 0
	.loc 1 20 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 21 0
	movh.a	%a15, hi:currentPosition
	lea	%a15, [%a15] lo:currentPosition
	st.d	[%a15]0, %e2
	.loc 1 22 0
	st.d	[%a15] 8, %e2
	.loc 1 23 0
	movh.a	%a15, hi:targetPosition
	lea	%a15, [%a15] lo:targetPosition
	mov	%d2, 0
	movh	%d3, 49136
	st.d	[%a15]0, %e2
	.loc 1 24 0
	st.d	[%a15] 8, %e2
	.loc 1 26 0
	mov	%d4, 0
	.loc 1 25 0
	mov	%d15, 2
	movh.a	%a15, hi:carCommand
	st.b	[%a15] lo:carCommand, %d15
	.loc 1 26 0
	call	CancelAlarm
.LVL1:
	.loc 1 27 0
	mov	%d4, 0
	mov	%d5, 5
	mov	%d6, 1
	j	SetRelAlarm
.LVL2:
.LFE574:
	.size	startShiParkerApp, .-startShiParkerApp
	.align 1
	.global	makePacket
	.type	makePacket, @function
makePacket:
.LFB577:
	.loc 1 157 0
.LVL3:
	.loc 1 158 0
	movh.a	%a15, hi:carStatus
	ld.bu	%d15, [%a15] lo:carStatus
	.loc 1 159 0
	movh.a	%a15, hi:carCommand
	.loc 1 158 0
	st.b	[%a4] 1, %d15
	.loc 1 159 0
	ld.bu	%d15, [%a15] lo:carCommand
	.loc 1 160 0
	movh.a	%a2, hi:currentPosition
	.loc 1 159 0
	st.b	[%a4] 34, %d15
	.loc 1 160 0
	ld.w	%d15, [%a2] lo:currentPosition
	lea	%a15, [%a2] lo:currentPosition
	extr.u	%d2, %d15, 8, 8
	st.b	[%a4] 2, %d15
	st.b	[%a4] 3, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a4] 5, %d15
	ld.w	%d15, [%a15] 4
	st.b	[%a4] 4, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a4] 6, %d15
	st.b	[%a4] 7, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a4] 9, %d15
	.loc 1 161 0
	ld.w	%d15, [%a15] 8
	.loc 1 160 0
	st.b	[%a4] 8, %d2
	.loc 1 161 0
	extr.u	%d2, %d15, 8, 8
	st.b	[%a4] 10, %d15
	st.b	[%a4] 11, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a4] 13, %d15
	ld.w	%d15, [%a15] 12
	st.b	[%a4] 12, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a4] 14, %d15
	st.b	[%a4] 15, %d2
	.loc 1 162 0
	movh.a	%a2, hi:targetPosition
	.loc 1 161 0
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a4] 17, %d15
	.loc 1 162 0
	ld.w	%d15, [%a2] lo:targetPosition
	.loc 1 161 0
	st.b	[%a4] 16, %d2
	.loc 1 162 0
	extr.u	%d2, %d15, 8, 8
	lea	%a15, [%a2] lo:targetPosition
	st.b	[%a4] 18, %d15
	st.b	[%a4] 19, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a4] 21, %d15
	ld.w	%d15, [%a15] 4
	st.b	[%a4] 20, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a4] 22, %d15
	st.b	[%a4] 23, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a4] 24, %d2
	st.b	[%a4] 25, %d15
	.loc 1 163 0
	ld.w	%d15, [%a15] 8
	extr.u	%d2, %d15, 8, 8
	st.b	[%a4] 26, %d15
	st.b	[%a4] 27, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a4] 29, %d15
	ld.w	%d15, [%a15] 12
	st.b	[%a4] 28, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a4] 30, %d15
	st.b	[%a4] 31, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a4] 32, %d2
	st.b	[%a4] 33, %d15
	ret
.LFE577:
	.size	makePacket, .-makePacket
	.align 1
	.global	FuncPacketSendTask
	.type	FuncPacketSendTask, @function
FuncPacketSendTask:
.LFB576:
	.loc 1 152 0
	.loc 1 153 0
	movh.a	%a15, hi:carStatusPacket
	lea	%a15, [%a15] lo:carStatusPacket
	mov.aa	%a4, %a15
	call	makePacket
.LVL4:
	.loc 1 154 0
	mov.aa	%a4, %a15
	j	sendPacket
.LVL5:
.LFE576:
	.size	FuncPacketSendTask, .-FuncPacketSendTask
	.align 1
	.global	updateStatus
	.type	updateStatus, @function
updateStatus:
.LFB578:
	.loc 1 166 0
.LVL6:
	.loc 1 167 0
	ld.bu	%d15, [%a4] 1
	movh.a	%a15, hi:carStatus
	.loc 1 169 0
	ld.bu	%d5, [%a4] 3
	.loc 1 167 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 169 0
	ld.bu	%d2, [%a4] 2
	.loc 1 168 0
	ld.bu	%d15, [%a4] 34
	movh.a	%a15, hi:carCommand
	.loc 1 169 0
	sh	%d5, %d5, 8
	.loc 1 168 0
	st.b	[%a15] lo:carCommand, %d15
	.loc 1 169 0
	or	%d15, %d5, %d2
	ld.bu	%d5, [%a4] 4
	ld.bu	%d3, [%a4] 6
	sh	%d5, %d5, 16
	or	%d5, %d15
	ld.bu	%d15, [%a4] 7
	ld.bu	%d4, [%a4] 9
	sh	%d15, %d15, 8
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a4] 8
	ld.bu	%d6, [%a4] 5
	sh	%d15, %d15, 16
	or	%d15, %d2
	sh	%d6, %d6, 24
	sh	%d4, %d4, 24
	movh.a	%a15, hi:currentPosition
	or	%d2, %d6, %d5
	or	%d3, %d4, %d15
	lea	%a15, [%a15] lo:currentPosition
	st.d	[%a15]0, %e2
	.loc 1 170 0
	ld.bu	%d5, [%a4] 11
	ld.bu	%d2, [%a4] 10
	sh	%d5, %d5, 8
	or	%d15, %d5, %d2
	ld.bu	%d5, [%a4] 12
	ld.bu	%d3, [%a4] 14
	sh	%d5, %d5, 16
	or	%d5, %d15
	ld.bu	%d15, [%a4] 15
	ld.bu	%d6, [%a4] 13
	sh	%d15, %d15, 8
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a4] 16
	ld.bu	%d4, [%a4] 17
	sh	%d15, %d15, 16
	or	%d15, %d2
	sh	%d6, %d6, 24
	sh	%d4, %d4, 24
	or	%d2, %d6, %d5
	or	%d3, %d4, %d15
	st.d	[%a15] 8, %e2
	.loc 1 171 0
	ld.bu	%d5, [%a4] 19
	ld.bu	%d2, [%a4] 18
	sh	%d5, %d5, 8
	or	%d15, %d5, %d2
	ld.bu	%d5, [%a4] 20
	ld.bu	%d3, [%a4] 22
	sh	%d5, %d5, 16
	or	%d5, %d15
	ld.bu	%d15, [%a4] 23
	ld.bu	%d6, [%a4] 21
	sh	%d15, %d15, 8
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a4] 24
	ld.bu	%d4, [%a4] 25
	sh	%d15, %d15, 16
	or	%d15, %d2
	sh	%d6, %d6, 24
	sh	%d4, %d4, 24
	movh.a	%a15, hi:targetPosition
	or	%d2, %d6, %d5
	or	%d3, %d4, %d15
	lea	%a15, [%a15] lo:targetPosition
	st.d	[%a15]0, %e2
	.loc 1 172 0
	ld.bu	%d5, [%a4] 27
	ld.bu	%d2, [%a4] 26
	sh	%d5, %d5, 8
	or	%d15, %d5, %d2
	ld.bu	%d5, [%a4] 28
	ld.bu	%d3, [%a4] 30
	sh	%d5, %d5, 16
	or	%d5, %d15
	ld.bu	%d15, [%a4] 31
	ld.bu	%d6, [%a4] 29
	sh	%d15, %d15, 8
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a4] 32
	ld.bu	%d4, [%a4] 33
	sh	%d15, %d15, 16
	or	%d15, %d2
	sh	%d6, %d6, 24
	sh	%d4, %d4, 24
	or	%d2, %d6, %d5
	or	%d3, %d4, %d15
	st.d	[%a15] 8, %e2
	ret
.LFE578:
	.size	updateStatus, .-updateStatus
.section .rodata,"a",@progbits
.LC2:
	.string	"ERROR: %s (%d)\n"
.LC3:
	.string	"ERROR: Unknown error code (%d).\n"
.section .text,"ax",@progbits
	.align 1
	.global	handleError
	.type	handleError, @function
handleError:
.LFB579:
	.loc 1 175 0
.LVL7:
	.loc 1 176 0
	mov	%d15, 4
	movh.a	%a15, hi:carStatus
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 177 0
	ge.u	%d15, %d4, 16
	.loc 1 175 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 177 0
	jnz	%d15, .L10
.LVL8:
.LBB4:
.LBB5:
	.loc 1 178 0
	movh.a	%a15, hi:errorMessages
	lea	%a15, [%a15] lo:errorMessages
	addsc.a	%a15, %a15, %d4, 2
	movh.a	%a4, hi:.LC2
	ld.w	%d15, [%a15]0
	st.w	[%SP] 4, %d4
	st.w	[%SP]0, %d15
	lea	%a4, [%a4] lo:.LC2
	j	printfSerial
.LVL9:
.L10:
.LBE5:
.LBE4:
	.loc 1 192 0
	movh.a	%a4, hi:.LC3
	st.w	[%SP]0, %d4
	lea	%a4, [%a4] lo:.LC3
	j	printfSerial
.LVL10:
.LFE579:
	.size	handleError, .-handleError
	.align 1
	.global	FuncShiParkerAppTask
	.type	FuncShiParkerAppTask, @function
FuncShiParkerAppTask:
.LFB575:
	.loc 1 31 0
	.loc 1 32 0
	movh.a	%a12, hi:g_isAppRunning
	ld.bu	%d15, [%a12] lo:g_isAppRunning
	jnz	%d15, .L13
	.loc 1 33 0
	call	TerminateTask
.LVL11:
.L13:
	.loc 1 34 0
	movh.a	%a15, hi:carStatus
	ld.bu	%d15, [%a15] lo:carStatus
	jge.u	%d15, 5, .L14
	movh.a	%a2, hi:.L16
	lea	%a2, [%a2] lo:.L16
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L16:
	.code32
	j	.L15
	.code32
	j	.L17
	.code32
	j	.L18
	.code32
	j	.L19
	.code32
	j	.L20
.L15:
	.loc 1 37 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L22
	jeq	%d15, 1, .L29
	ret
.L22:
	.loc 1 41 0
	mov	%d15, 3
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 43 0
	ret
.L17:
	.loc 1 61 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jnz	%d15, .L12
.L30:
	.loc 1 65 0
	mov	%d15, 3
.L29:
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 66 0
	movh.a	%a15, hi:carStatusPacket
	lea	%a15, [%a15] lo:carStatusPacket
	.loc 1 67 0
	mov.aa	%a4, %a15
	.loc 1 66 0
	st.b	[%a15] 1, %d15
	.loc 1 67 0
	call	makePacket
.LVL12:
	.loc 1 68 0
	mov.aa	%a4, %a15
	j	sendPacket
.LVL13:
.L18:
	.loc 1 82 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L30
	jeq	%d15, 1, .L26
	ret
.L26:
	.loc 1 94 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 95 0
	movh.a	%a15, hi:carStatusPacket
	lea	%a15, [%a15] lo:carStatusPacket
	.loc 1 96 0
	mov.aa	%a4, %a15
	.loc 1 95 0
	st.b	[%a15] 1, %d15
	.loc 1 96 0
	call	makePacket
.LVL14:
	.loc 1 97 0
	mov.aa	%a4, %a15
	call	sendPacket
.LVL15:
	.loc 1 98 0
	mov	%d4, 1
	call	CancelAlarm
.LVL16:
	.loc 1 99 0
	mov	%d5, 10
	mov	%d4, 1
	mov	%d6, %d5
	j	.L31
.L19:
	.loc 1 112 0
	mov	%d15, 0
	.loc 1 113 0
	mov	%d4, 1
	.loc 1 112 0
	st.b	[%a12] lo:g_isAppRunning, %d15
	.loc 1 113 0
	call	CancelAlarm
.LVL17:
	.loc 1 114 0
	mov	%d4, 0
	call	CancelAlarm
.LVL18:
	.loc 1 115 0
	j	TerminateTask
.LVL19:
.L20:
	.loc 1 118 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L30
	jeq	%d15, 1, .L28
	ret
.L28:
	.loc 1 130 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 131 0
	movh.a	%a15, hi:carStatusPacket
	lea	%a15, [%a15] lo:carStatusPacket
	.loc 1 132 0
	mov.aa	%a4, %a15
	.loc 1 131 0
	st.b	[%a15] 1, %d15
	.loc 1 132 0
	call	makePacket
.LVL20:
	.loc 1 133 0
	mov.aa	%a4, %a15
	call	sendPacket
.LVL21:
	.loc 1 134 0
	mov	%d4, 1
	call	CancelAlarm
.LVL22:
	.loc 1 135 0
	mov	%d4, 1
	mov	%d5, 10
	mov	%d6, 100
.L31:
	j	SetRelAlarm
.LVL23:
.L14:
	.loc 1 147 0
	mov	%d4, 3
	j	handleError
.LVL24:
.L12:
	ret
.LFE575:
	.size	FuncShiParkerAppTask, .-FuncShiParkerAppTask
	.local	targetPosition
.section .bss,"aw",@nobits
	.align 2
	.type		 targetPosition,@object
	.size		 targetPosition,16
targetPosition:
	.space	16
	.local	currentPosition
	.align 2
	.type		 currentPosition,@object
	.size		 currentPosition,16
currentPosition:
	.space	16
	.local	carCommand
	.align 0
	.type		 carCommand,@object
	.size		 carCommand,1
carCommand:
	.space	1
	.local	carStatus
	.align 0
	.type		 carStatus,@object
	.size		 carStatus,1
carStatus:
	.space	1
	.local	carStatusPacket
	.align 0
	.type		 carStatusPacket,@object
	.size		 carStatusPacket,36
carStatusPacket:
	.space	36
	.global	g_isAppRunning
	.type	g_isAppRunning, @object
	.size	g_isAppRunning, 1
g_isAppRunning:
	.zero	1
.section .rodata,"a",@progbits
.LC4:
	.string	"User Control occured."
.LC5:
	.string	"Obstacle detected."
.LC6:
	.string	"Connection Lost"
.LC7:
	.string	"Undefined Status"
.LC8:
	.string	"Hall_FL Error"
.LC9:
	.string	"Hall_FR Error"
.LC10:
	.string	"Hall_RL Error"
.LC11:
	.string	"Hall_RR Error"
.LC12:
	.string	"ULTRASONIC_FL Error"
.LC13:
	.string	"ULTRASONIC_F Error"
.LC14:
	.string	"ULTRASONIC_FR Error"
.LC15:
	.string	"ULTRASONIC_SL Error"
.LC16:
	.string	"ULTRASONIC_SR Error"
.LC17:
	.string	"ULTRASONIC_RL Error"
.LC18:
	.string	"ULTRASONIC_R Error"
.LC19:
	.string	"ULTRASONIC_RR Error"
	.align 2
	.type	errorMessages, @object
	.size	errorMessages, 64
errorMessages:
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
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
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB577
	.uaword	.LFE577-.LFB577
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
	.uaword	.LFB578
	.uaword	.LFE578-.LFB578
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB579
	.uaword	.LFE579-.LFB579
	.byte	0x4
	.uaword	.LCFI0-.LFB579
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB575
	.uaword	.LFE575-.LFB575
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "C:\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\Cpu\\Std\\Platform_Types.h"
	.file 3 "C:\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\Cpu\\Std/Ifx_Types.h"
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 5 "C:\\SHIPAR~1\\TC275\\illd\\src\\Configuration.h"
	.file 6 "C:\\SHIPAR~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 7 "C:\\SHIPAR~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 8 "C:\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\_Impl/IfxCpu_cfg.h"
	.file 9 "C:\\SHIPAR~1\\TC275\\shiparker_App.h"
	.file 10 "C:\\SHIPAR~1\\TC275\\bsw.h"
	.file 11 "C:\\SHIPAR~1\\TC275\\erika\\inc/ee_oo_api_osek.h"
	.file 12 "C:\\SHIPAR~1\\TC275\\uart_Driver.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xd7a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -Os -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\SHIPAR~1\\TC275\\shiparker_App.c"
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x17d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x6c
	.uaword	0x17d
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
	.uaword	0x146
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
	.uaword	0x21f
	.uleb128 0x5
	.uaword	0x224
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x232
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x8c
	.uaword	0x259
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x8e
	.uaword	0x22c
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x8f
	.uaword	0x1e7
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x90
	.uaword	0x233
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x87
	.uaword	0x2df
	.uleb128 0xa
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x4
	.byte	0x50
	.uaword	0x152
	.uleb128 0xb
	.string	"Point"
	.byte	0x10
	.byte	0x5
	.byte	0x58
	.uaword	0x312
	.uleb128 0x8
	.string	"x"
	.byte	0x5
	.byte	0x5a
	.uaword	0x20f
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x5
	.byte	0x5b
	.uaword	0x20f
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"ParkingSystemPacket"
	.byte	0x24
	.byte	0x5
	.byte	0x5e
	.uaword	0x3ae
	.uleb128 0x8
	.string	"start_byte"
	.byte	0x5
	.byte	0x60
	.uaword	0x18e
	.byte	0
	.uleb128 0x8
	.string	"car_status"
	.byte	0x5
	.byte	0x61
	.uaword	0x18e
	.byte	0x1
	.uleb128 0x8
	.string	"car_current_position"
	.byte	0x5
	.byte	0x62
	.uaword	0x2ef
	.byte	0x2
	.uleb128 0x8
	.string	"car_target_position"
	.byte	0x5
	.byte	0x63
	.uaword	0x2ef
	.byte	0x12
	.uleb128 0x8
	.string	"car_command"
	.byte	0x5
	.byte	0x64
	.uaword	0x18e
	.byte	0x22
	.uleb128 0x8
	.string	"crc"
	.byte	0x5
	.byte	0x65
	.uaword	0x18e
	.byte	0x23
	.byte	0
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x6
	.byte	0x5b
	.uaword	0x2df
	.uleb128 0xc
	.string	"TickType"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x3ae
	.uleb128 0xc
	.string	"AlarmType"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x3ae
	.uleb128 0xd
	.byte	0x1
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x604
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
	.uleb128 0xc
	.string	"OsEE_status_type"
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x3e1
	.uleb128 0xc
	.string	"StatusType"
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x604
	.uleb128 0xe
	.string	"CAR_STATUS_TYPE_T"
	.byte	0x1
	.byte	0x9
	.byte	0x23
	.uaword	0x6de
	.uleb128 0xa
	.string	"CAR_STATUS_READY"
	.sleb128 0
	.uleb128 0xa
	.string	"CAR_STATUS_RUNNING"
	.sleb128 1
	.uleb128 0xa
	.string	"CAR_STATUS_STOP"
	.sleb128 2
	.uleb128 0xa
	.string	"CAR_STATUS_TERMINATED"
	.sleb128 3
	.uleb128 0xa
	.string	"CAR_STATUS_ERROR"
	.sleb128 4
	.uleb128 0xa
	.string	"CAR_STATUS_RESERVED1"
	.sleb128 5
	.uleb128 0xa
	.string	"CAR_STATUS_RESERVED2"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CAR_STATUS_TYPE"
	.byte	0x9
	.byte	0x2b
	.uaword	0x630
	.uleb128 0xe
	.string	"CAR_COMMAND_TYPE_T"
	.byte	0x1
	.byte	0x9
	.byte	0x2c
	.uaword	0x780
	.uleb128 0xa
	.string	"CAR_COMMAND_FORCESTOP"
	.sleb128 0
	.uleb128 0xa
	.string	"CAR_COMMAND_START"
	.sleb128 1
	.uleb128 0xa
	.string	"CAR_COMMAND_STOP"
	.sleb128 2
	.uleb128 0xa
	.string	"CAR_COMMAND_RESERVED1"
	.sleb128 3
	.uleb128 0xa
	.string	"CAR_COMMAND_RESERVED2"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"CAR_COMMAND_TYPE"
	.byte	0x9
	.byte	0x32
	.uaword	0x6f5
	.uleb128 0xe
	.string	"ERROR_CODE_TYPE_T"
	.byte	0x1
	.byte	0x9
	.byte	0x33
	.uaword	0x8d8
	.uleb128 0xa
	.string	"ERROR_CODE_USER_CONTROL"
	.sleb128 0
	.uleb128 0xa
	.string	"ERROR_CODE_OBSTACLE"
	.sleb128 1
	.uleb128 0xa
	.string	"ERROR_CODE_CONNECTION_LOST"
	.sleb128 2
	.uleb128 0xa
	.string	"ERROR_CODE_UNDEFINED_STATUS"
	.sleb128 3
	.uleb128 0xa
	.string	"ERROR_CODE_4"
	.sleb128 4
	.uleb128 0xa
	.string	"ERROR_CODE_5"
	.sleb128 5
	.uleb128 0xa
	.string	"ERROR_CODE_6"
	.sleb128 6
	.uleb128 0xa
	.string	"ERROR_CODE_7"
	.sleb128 7
	.uleb128 0xa
	.string	"ERROR_CODE_8"
	.sleb128 8
	.uleb128 0xa
	.string	"ERROR_CODE_9"
	.sleb128 9
	.uleb128 0xa
	.string	"ERROR_CODE_10"
	.sleb128 10
	.uleb128 0xa
	.string	"ERROR_CODE_11"
	.sleb128 11
	.uleb128 0xa
	.string	"ERROR_CODE_12"
	.sleb128 12
	.uleb128 0xa
	.string	"ERROR_CODE_13"
	.sleb128 13
	.uleb128 0xa
	.string	"ERROR_CODE_14"
	.sleb128 14
	.uleb128 0xa
	.string	"ERROR_CODE_15"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"ERROR_CODE_TYPE"
	.byte	0x9
	.byte	0x44
	.uaword	0x798
	.uleb128 0xb
	.string	"Position"
	.byte	0x10
	.byte	0x9
	.byte	0x45
	.uaword	0x915
	.uleb128 0x8
	.string	"x"
	.byte	0x9
	.byte	0x47
	.uaword	0x20f
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x9
	.byte	0x48
	.uaword	0x20f
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"handleError"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.byte	0x1
	.uaword	0x93d
	.uleb128 0x10
	.string	"errorCode"
	.byte	0x1
	.byte	0xaf
	.uaword	0x8d8
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"startShiParkerApp"
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.uaword	.LFB574
	.uaword	.LFE574
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x99a
	.uleb128 0x12
	.uaword	.LVL0
	.uaword	0xcdf
	.uleb128 0x13
	.uaword	.LVL1
	.uaword	0xcfd
	.uaword	0x97f
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.uaword	.LVL2
	.byte	0x1
	.uaword	0xd1e
	.uleb128 0x14
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"makePacket"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.uaword	.LFB577
	.uaword	.LFE577
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9c7
	.uleb128 0x16
	.string	"dst"
	.byte	0x1
	.byte	0x9d
	.uaword	0x9c7
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x312
	.uleb128 0x11
	.byte	0x1
	.string	"FuncPacketSendTask"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.uaword	.LFB576
	.uaword	.LFE576
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa1a
	.uleb128 0x13
	.uaword	.LVL4
	.uaword	0x99a
	.uaword	0xa08
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL5
	.byte	0x1
	.uaword	0xd49
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"updateStatus"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.uaword	.LFB578
	.uaword	.LFE578
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa4c
	.uleb128 0x16
	.string	"packet"
	.byte	0x1
	.byte	0xa5
	.uaword	0xa4c
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa52
	.uleb128 0x5
	.uaword	0x312
	.uleb128 0x17
	.uaword	0x915
	.uaword	.LFB579
	.uaword	.LFE579
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xabf
	.uleb128 0x18
	.uaword	0x92b
	.uaword	.LLST0
	.uleb128 0x19
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	0xa8b
	.uleb128 0x18
	.uaword	0x92b
	.uaword	.LLST1
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL9
	.byte	0x1
	.uaword	0xcdf
	.uaword	0xaaa
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x14
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL10
	.byte	0x1
	.uaword	0xcdf
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"FuncShiParkerAppTask"
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.uaword	.LFB575
	.uaword	.LFE575
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbdb
	.uleb128 0x12
	.uaword	.LVL11
	.uaword	0xd64
	.uleb128 0x13
	.uaword	.LVL12
	.uaword	0x99a
	.uaword	0xb05
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL13
	.byte	0x1
	.uaword	0xd49
	.uaword	0xb1a
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL14
	.uaword	0x99a
	.uaword	0xb2e
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL15
	.uaword	0xd49
	.uaword	0xb42
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL16
	.uaword	0xcfd
	.uaword	0xb55
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.uaword	.LVL17
	.uaword	0xcfd
	.uaword	0xb68
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.uaword	.LVL18
	.uaword	0xcfd
	.uaword	0xb7b
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL19
	.byte	0x1
	.uaword	0xd64
	.uleb128 0x13
	.uaword	.LVL20
	.uaword	0x99a
	.uaword	0xb99
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL21
	.uaword	0xd49
	.uaword	0xbad
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL22
	.uaword	0xcfd
	.uaword	0xbc0
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL23
	.byte	0x1
	.uaword	0xd1e
	.uleb128 0x15
	.uaword	.LVL24
	.byte	0x1
	.uaword	0x915
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x219
	.uaword	0xbeb
	.uleb128 0x1d
	.uaword	0x283
	.byte	0xf
	.byte	0
	.uleb128 0x1e
	.string	"errorMessages"
	.byte	0x9
	.byte	0x4b
	.uaword	0xc06
	.byte	0x5
	.byte	0x3
	.uaword	errorMessages
	.uleb128 0x5
	.uaword	0xbdb
	.uleb128 0x1e
	.string	"carStatusPacket"
	.byte	0x1
	.byte	0x4
	.uaword	0x312
	.byte	0x5
	.byte	0x3
	.uaword	carStatusPacket
	.uleb128 0x1e
	.string	"carStatus"
	.byte	0x1
	.byte	0x5
	.uaword	0x6de
	.byte	0x5
	.byte	0x3
	.uaword	carStatus
	.uleb128 0x1e
	.string	"carCommand"
	.byte	0x1
	.byte	0x6
	.uaword	0x780
	.byte	0x5
	.byte	0x3
	.uaword	carCommand
	.uleb128 0x1e
	.string	"currentPosition"
	.byte	0x1
	.byte	0x7
	.uaword	0x8ef
	.byte	0x5
	.byte	0x3
	.uaword	currentPosition
	.uleb128 0x1e
	.string	"targetPosition"
	.byte	0x1
	.byte	0x8
	.uaword	0x8ef
	.byte	0x5
	.byte	0x3
	.uaword	targetPosition
	.uleb128 0x1c
	.uaword	0x259
	.uaword	0xca0
	.uleb128 0x1d
	.uaword	0x283
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xa7
	.uaword	0xcbd
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0xc90
	.uleb128 0x20
	.string	"g_isAppRunning"
	.byte	0x1
	.byte	0x3
	.uaword	0x16e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_isAppRunning
	.uleb128 0x21
	.byte	0x1
	.string	"printfSerial"
	.byte	0xa
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.uaword	0xcfd
	.uleb128 0x22
	.uaword	0x219
	.uleb128 0x23
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"CancelAlarm"
	.byte	0xb
	.uahalf	0x313
	.byte	0x1
	.uaword	0x61d
	.byte	0x1
	.uaword	0xd1e
	.uleb128 0x22
	.uaword	0x3cf
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"SetRelAlarm"
	.byte	0xb
	.uahalf	0x294
	.byte	0x1
	.uaword	0x61d
	.byte	0x1
	.uaword	0xd49
	.uleb128 0x22
	.uaword	0x3cf
	.uleb128 0x22
	.uaword	0x3be
	.uleb128 0x22
	.uaword	0x3be
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"sendPacket"
	.byte	0xc
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.uaword	0xd64
	.uleb128 0x22
	.uaword	0xa4c
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"TerminateTask"
	.byte	0xb
	.uahalf	0x1c9
	.byte	0x1
	.uaword	0x61d
	.byte	0x1
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4
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
	.uleb128 0xf
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
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
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9-1-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL10-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-1-.Ltext0
	.uaword	.LFE579-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
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
	.extern	TerminateTask,STT_FUNC,0
	.extern	sendPacket,STT_FUNC,0
	.extern	SetRelAlarm,STT_FUNC,0
	.extern	CancelAlarm,STT_FUNC,0
	.extern	printfSerial,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
