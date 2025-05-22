	.file	"shiparker_App.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	AppTimerISR
	.type	AppTimerISR, @function
AppTimerISR:
.LFB597:
	.file 1 "C:\\project\\SHIPAR~1\\TC275\\shiparker_App.c"
	.loc 1 10 0
	.loc 1 11 0
	mov.u	%d4, 50000
	call	osEE_tc_stm_set_sr1_next_match
.LVL0:
	.loc 1 12 0
	mov	%d4, 0
	j	IncrementCounter
.LVL1:
.LFE597:
	.size	AppTimerISR, .-AppTimerISR
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
.LFB598:
	.loc 1 16 0
	.loc 1 17 0
	movh.a	%a15, hi:g_isAppRunning
	ld.bu	%d15, [%a15] lo:g_isAppRunning
	jne	%d15, 1, .L3
	.loc 1 19 0
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	call	printfSerial
.LVL2:
	.loc 1 20 0
	mov	%d4, 1
	call	CancelAlarm
.LVL3:
	.loc 1 21 0
	mov	%d4, 0
	call	CancelAlarm
.LVL4:
	j	.L4
.L3:
	.loc 1 24 0
	movh.a	%a4, hi:.LC1
	lea	%a4, [%a4] lo:.LC1
	call	printfSerial
.LVL5:
.L4:
	.loc 1 26 0
	mov	%d15, 1
	st.b	[%a15] lo:g_isAppRunning, %d15
	.loc 1 27 0
	mov	%d15, 0
	movh.a	%a15, hi:carStatus
	.loc 1 28 0
	mov	%e2, 0
	.loc 1 27 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 28 0
	movh.a	%a15, hi:currentPosition
	lea	%a15, [%a15] lo:currentPosition
	st.d	[%a15]0, %e2
	.loc 1 29 0
	st.d	[%a15] 8, %e2
	.loc 1 30 0
	movh.a	%a15, hi:targetPosition
	lea	%a15, [%a15] lo:targetPosition
	mov	%d2, 0
	movh	%d3, 49136
	st.d	[%a15]0, %e2
	.loc 1 31 0
	st.d	[%a15] 8, %e2
	.loc 1 33 0
	mov	%d4, 0
	mov	%d5, 1
	mov	%d6, 10
	.loc 1 32 0
	mov	%d15, 2
	movh.a	%a15, hi:carCommand
	st.b	[%a15] lo:carCommand, %d15
	.loc 1 33 0
	call	SetRelAlarm
.LVL6:
	.loc 1 34 0
	mov	%d4, 1
	mov	%d5, 2
	mov	%d6, 50
	j	SetRelAlarm
.LVL7:
.LFE598:
	.size	startShiParkerApp, .-startShiParkerApp
	.align 1
	.global	makePacket
	.type	makePacket, @function
makePacket:
.LFB601:
	.loc 1 147 0
.LVL8:
	.loc 1 148 0
	mov	%d15, -86
	.loc 1 149 0
	movh.a	%a15, hi:carStatus
	.loc 1 148 0
	st.b	[%a4]0, %d15
	.loc 1 149 0
	ld.bu	%d15, [%a15] lo:carStatus
	.loc 1 150 0
	movh.a	%a15, hi:carCommand
	.loc 1 149 0
	st.b	[%a4] 1, %d15
	.loc 1 150 0
	ld.bu	%d15, [%a15] lo:carCommand
	.loc 1 151 0
	movh.a	%a2, hi:currentPosition
	.loc 1 150 0
	st.b	[%a4] 34, %d15
	.loc 1 151 0
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
	.loc 1 152 0
	ld.w	%d15, [%a15] 8
	.loc 1 151 0
	st.b	[%a4] 8, %d2
	.loc 1 152 0
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
	.loc 1 153 0
	movh.a	%a2, hi:targetPosition
	.loc 1 152 0
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a4] 17, %d15
	.loc 1 153 0
	ld.w	%d15, [%a2] lo:targetPosition
	.loc 1 152 0
	st.b	[%a4] 16, %d2
	.loc 1 153 0
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
	.loc 1 154 0
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
.LFE601:
	.size	makePacket, .-makePacket
.section .rodata,"a",@progbits
.LC2:
	.string	"sendpacket"
.section .text,"ax",@progbits
	.align 1
	.global	FuncPacketSendTask
	.type	FuncPacketSendTask, @function
FuncPacketSendTask:
.LFB600:
	.loc 1 141 0
	.loc 1 142 0
	movh.a	%a4, hi:.LC2
	lea	%a4, [%a4] lo:.LC2
	call	printfSerial
.LVL9:
	.loc 1 143 0
	movh.a	%a15, hi:carStatusPacket
	lea	%a15, [%a15] lo:carStatusPacket
	mov.aa	%a4, %a15
	call	makePacket
.LVL10:
	.loc 1 144 0
	mov.aa	%a4, %a15
	j	sendPacket
.LVL11:
.LFE600:
	.size	FuncPacketSendTask, .-FuncPacketSendTask
	.align 1
	.global	updateStatus
	.type	updateStatus, @function
updateStatus:
.LFB602:
	.loc 1 157 0
.LVL12:
	.loc 1 158 0
	ld.bu	%d15, [%a4] 1
	movh.a	%a15, hi:carStatus
	.loc 1 160 0
	ld.bu	%d5, [%a4] 3
	.loc 1 158 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 160 0
	ld.bu	%d2, [%a4] 2
	.loc 1 159 0
	ld.bu	%d15, [%a4] 34
	movh.a	%a15, hi:carCommand
	.loc 1 160 0
	sh	%d5, %d5, 8
	.loc 1 159 0
	st.b	[%a15] lo:carCommand, %d15
	.loc 1 160 0
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
	.loc 1 161 0
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
	.loc 1 162 0
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
	.loc 1 163 0
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
.LFE602:
	.size	updateStatus, .-updateStatus
.section .rodata,"a",@progbits
.LC3:
	.string	"ERROR: %s (%d)\n"
.LC4:
	.string	"ERROR: Unknown error code (%d).\n"
.section .text,"ax",@progbits
	.align 1
	.global	handleError
	.type	handleError, @function
handleError:
.LFB603:
	.loc 1 166 0
.LVL13:
	.loc 1 167 0
	mov	%d15, 4
	movh.a	%a15, hi:carStatus
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 168 0
	ge.u	%d15, %d4, 16
	.loc 1 166 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 168 0
	jnz	%d15, .L10
.LVL14:
.LBB4:
.LBB5:
	.loc 1 169 0
	movh.a	%a15, hi:errorMessages
	lea	%a15, [%a15] lo:errorMessages
	addsc.a	%a15, %a15, %d4, 2
	movh.a	%a4, hi:.LC3
	ld.w	%d15, [%a15]0
	st.w	[%SP] 4, %d4
	st.w	[%SP]0, %d15
	lea	%a4, [%a4] lo:.LC3
	j	printfSerial
.LVL15:
.L10:
.LBE5:
.LBE4:
	.loc 1 186 0
	movh.a	%a4, hi:.LC4
	st.w	[%SP]0, %d4
	lea	%a4, [%a4] lo:.LC4
	j	printfSerial
.LVL16:
.LFE603:
	.size	handleError, .-handleError
.section .rodata,"a",@progbits
.LC5:
	.string	"app"
.LC6:
	.string	"Terminate ShiParker...\n"
.section .text,"ax",@progbits
	.align 1
	.global	FuncShiParkerAppTask
	.type	FuncShiParkerAppTask, @function
FuncShiParkerAppTask:
.LFB599:
	.loc 1 38 0
	.loc 1 39 0
	movh.a	%a4, hi:.LC5
	lea	%a4, [%a4] lo:.LC5
	.loc 1 40 0
	movh.a	%a12, hi:g_isAppRunning
	.loc 1 39 0
	call	printfSerial
.LVL17:
	.loc 1 40 0
	ld.bu	%d15, [%a12] lo:g_isAppRunning
	jnz	%d15, .L13
	.loc 1 41 0
	call	TerminateTask
.LVL18:
.L13:
	.loc 1 42 0
	movh.a	%a4, hi:g_RecievedParkingSystemPacket
	lea	%a4, [%a4] lo:g_RecievedParkingSystemPacket
	.loc 1 43 0
	movh.a	%a15, hi:carStatus
	.loc 1 42 0
	call	updateStatus
.LVL19:
	.loc 1 43 0
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
	.loc 1 46 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L28
	jeq	%d15, 1, .L27
	ret
.L17:
	.loc 1 66 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L28
	jeq	%d15, 2, .L25
	ret
.L29:
	.loc 1 122 0
	st.b	[%a15] lo:carStatus, %d15
.L25:
	.loc 1 77 0
	mov	%d4, 1
	call	CancelAlarm
.LVL20:
	.loc 1 78 0
	mov	%e4, 1
	mov	%d6, 50
.L30:
	j	SetRelAlarm
.LVL21:
.L18:
	.loc 1 85 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L28
	jeq	%d15, 1, .L27
	ret
.L27:
	.loc 1 94 0
	mov	%d4, 1
	.loc 1 93 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 94 0
	call	CancelAlarm
.LVL22:
	.loc 1 95 0
	mov	%e4, 1
	mov	%d6, 10
	j	.L30
.L19:
	.loc 1 106 0
	movh.a	%a4, hi:.LC6
	lea	%a4, [%a4] lo:.LC6
	call	printfSerial
.LVL23:
	.loc 1 107 0
	mov	%d4, 11
	call	ActivateTask
.LVL24:
	.loc 1 108 0
	mov	%d15, 0
	.loc 1 109 0
	mov	%d4, 1
	.loc 1 108 0
	st.b	[%a12] lo:g_isAppRunning, %d15
	.loc 1 109 0
	call	CancelAlarm
.LVL25:
	.loc 1 110 0
	mov	%d4, 0
	call	CancelAlarm
.LVL26:
	.loc 1 111 0
	j	TerminateTask
.LVL27:
.L20:
	.loc 1 114 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L28
	jeq	%d15, 1, .L29
	ret
.L28:
	.loc 1 118 0
	mov	%d15, 3
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 119 0
	ret
.L14:
	.loc 1 136 0
	mov	%d4, 3
	j	handleError
.LVL28:
.LFE599:
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
.LC7:
	.string	"User Control occured."
.LC8:
	.string	"Obstacle detected."
.LC9:
	.string	"Connection Lost"
.LC10:
	.string	"Undefined Status"
.LC11:
	.string	"Hall_FL Error"
.LC12:
	.string	"Hall_FR Error"
.LC13:
	.string	"Hall_RL Error"
.LC14:
	.string	"Hall_RR Error"
.LC15:
	.string	"ULTRASONIC_FL Error"
.LC16:
	.string	"ULTRASONIC_F Error"
.LC17:
	.string	"ULTRASONIC_FR Error"
.LC18:
	.string	"ULTRASONIC_SL Error"
.LC19:
	.string	"ULTRASONIC_SR Error"
.LC20:
	.string	"ULTRASONIC_RL Error"
.LC21:
	.string	"ULTRASONIC_R Error"
.LC22:
	.string	"ULTRASONIC_RR Error"
	.align 2
	.type	errorMessages, @object
	.size	errorMessages, 64
errorMessages:
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
	.word	.LC20
	.word	.LC21
	.word	.LC22
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
	.uaword	.LFB597
	.uaword	.LFE597-.LFB597
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB598
	.uaword	.LFE598-.LFB598
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB601
	.uaword	.LFE601-.LFB601
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB600
	.uaword	.LFE600-.LFB600
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB602
	.uaword	.LFE602-.LFB602
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB603
	.uaword	.LFE603-.LFB603
	.byte	0x4
	.uaword	.LCFI0-.LFB603
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB599
	.uaword	.LFE599-.LFB599
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "C:\\project\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\Cpu\\Std\\Platform_Types.h"
	.file 3 "C:\\project\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\Cpu\\Std/Ifx_Types.h"
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 5 "C:\\project\\SHIPAR~1\\TC275\\illd\\src\\Configuration.h"
	.file 6 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 7 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 8 "C:\\project\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\_Impl/IfxCpu_cfg.h"
	.file 9 "C:\\project\\SHIPAR~1\\TC275\\shiparker_App.h"
	.file 10 "C:\\project\\SHIPAR~1\\TC275\\uart_Driver.h"
	.file 11 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_tc_system.h"
	.file 12 "C:\\project\\SHIPAR~1\\TC275\\bsw.h"
	.file 13 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_oo_api_osek.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xec5
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -Os -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\project\\SHIPAR~1\\TC275\\shiparker_App.c"
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
	.uaword	0x185
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x6c
	.uaword	0x185
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
	.uaword	0x14e
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
	.uaword	0x227
	.uleb128 0x5
	.uaword	0x22c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x23a
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x8c
	.uaword	0x261
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x8e
	.uaword	0x234
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x8f
	.uaword	0x1ef
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x90
	.uaword	0x23b
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
	.uaword	0x2e7
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
	.uaword	0x15a
	.uleb128 0xb
	.string	"Point"
	.byte	0x10
	.byte	0x5
	.byte	0x63
	.uaword	0x31a
	.uleb128 0x8
	.string	"x"
	.byte	0x5
	.byte	0x65
	.uaword	0x217
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x5
	.byte	0x66
	.uaword	0x217
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"ParkingSystemPacket"
	.byte	0x24
	.byte	0x5
	.byte	0x69
	.uaword	0x3b6
	.uleb128 0x8
	.string	"start_byte"
	.byte	0x5
	.byte	0x6b
	.uaword	0x196
	.byte	0
	.uleb128 0x8
	.string	"car_status"
	.byte	0x5
	.byte	0x6c
	.uaword	0x196
	.byte	0x1
	.uleb128 0x8
	.string	"car_current_position"
	.byte	0x5
	.byte	0x6d
	.uaword	0x2f7
	.byte	0x2
	.uleb128 0x8
	.string	"car_target_position"
	.byte	0x5
	.byte	0x6e
	.uaword	0x2f7
	.byte	0x12
	.uleb128 0x8
	.string	"car_command"
	.byte	0x5
	.byte	0x6f
	.uaword	0x196
	.byte	0x22
	.uleb128 0x8
	.string	"crc"
	.byte	0x5
	.byte	0x70
	.uaword	0x196
	.byte	0x23
	.byte	0
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x6
	.byte	0x5b
	.uaword	0x2e7
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x7
	.byte	0x78
	.uaword	0x3b6
	.uleb128 0xc
	.string	"CounterType"
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x3b6
	.uleb128 0xc
	.string	"TickType"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x3b6
	.uleb128 0xc
	.string	"AlarmType"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x3b6
	.uleb128 0xd
	.byte	0x1
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x630
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
	.uaword	0x40d
	.uleb128 0xc
	.string	"StatusType"
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x630
	.uleb128 0xe
	.string	"CAR_STATUS_TYPE_T"
	.byte	0x1
	.byte	0x9
	.byte	0x23
	.uaword	0x70a
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
	.uaword	0x65c
	.uleb128 0xe
	.string	"CAR_COMMAND_TYPE_T"
	.byte	0x1
	.byte	0x9
	.byte	0x2c
	.uaword	0x7ac
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
	.uaword	0x721
	.uleb128 0xe
	.string	"ERROR_CODE_TYPE_T"
	.byte	0x1
	.byte	0x9
	.byte	0x33
	.uaword	0x904
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
	.uaword	0x7c4
	.uleb128 0xb
	.string	"Position"
	.byte	0x10
	.byte	0x9
	.byte	0x45
	.uaword	0x941
	.uleb128 0x8
	.string	"x"
	.byte	0x9
	.byte	0x47
	.uaword	0x217
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x9
	.byte	0x48
	.uaword	0x217
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"handleError"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.byte	0x1
	.uaword	0x969
	.uleb128 0x10
	.string	"errorCode"
	.byte	0x1
	.byte	0xa6
	.uaword	0x904
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"AppTimerISR"
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.uaword	.LFB597
	.uaword	.LFE597
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9af
	.uleb128 0x12
	.uaword	.LVL0
	.uaword	0xdb6
	.uaword	0x99e
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xc350
	.byte	0
	.uleb128 0x14
	.uaword	.LVL1
	.byte	0x1
	.uaword	0xde6
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"startShiParkerApp"
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.uaword	.LFB598
	.uaword	.LFE598
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa62
	.uleb128 0x12
	.uaword	.LVL2
	.uaword	0xe0c
	.uaword	0x9ec
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL3
	.uaword	0xe2a
	.uaword	0x9ff
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.uaword	.LVL4
	.uaword	0xe2a
	.uaword	0xa12
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.uaword	.LVL5
	.uaword	0xe0c
	.uaword	0xa29
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.uleb128 0x12
	.uaword	.LVL6
	.uaword	0xe4b
	.uaword	0xa46
	.uleb128 0x13
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3a
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.uaword	.LVL7
	.byte	0x1
	.uaword	0xe4b
	.uleb128 0x13
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"makePacket"
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.uaword	.LFB601
	.uaword	.LFE601
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa8f
	.uleb128 0x15
	.string	"dst"
	.byte	0x1
	.byte	0x93
	.uaword	0xa8f
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x31a
	.uleb128 0x11
	.byte	0x1
	.string	"FuncPacketSendTask"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.uaword	.LFB600
	.uaword	.LFE600
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xaf9
	.uleb128 0x12
	.uaword	.LVL9
	.uaword	0xe0c
	.uaword	0xad3
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.byte	0
	.uleb128 0x12
	.uaword	.LVL10
	.uaword	0xa62
	.uaword	0xae7
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL11
	.byte	0x1
	.uaword	0xe76
	.uleb128 0x13
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
	.byte	0x9c
	.byte	0x1
	.uaword	.LFB602
	.uaword	.LFE602
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb2b
	.uleb128 0x15
	.string	"packet"
	.byte	0x1
	.byte	0x9c
	.uaword	0xb2b
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xb31
	.uleb128 0x5
	.uaword	0x31a
	.uleb128 0x16
	.uaword	0x941
	.uaword	.LFB603
	.uaword	.LFE603
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb9e
	.uleb128 0x17
	.uaword	0x957
	.uaword	.LLST0
	.uleb128 0x18
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	0xb6a
	.uleb128 0x17
	.uaword	0x957
	.uaword	.LLST1
	.byte	0
	.uleb128 0x19
	.uaword	.LVL15
	.byte	0x1
	.uaword	0xe0c
	.uaword	0xb89
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL16
	.byte	0x1
	.uaword	0xe0c
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"FuncShiParkerAppTask"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.uaword	.LFB599
	.uaword	.LFE599
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc8b
	.uleb128 0x12
	.uaword	.LVL17
	.uaword	0xe0c
	.uaword	0xbde
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC5
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL18
	.uaword	0xe91
	.uleb128 0x1a
	.uaword	.LVL19
	.uaword	0xaf9
	.uleb128 0x12
	.uaword	.LVL20
	.uaword	0xe2a
	.uaword	0xc03
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL21
	.byte	0x1
	.uaword	0xe4b
	.uleb128 0x12
	.uaword	.LVL22
	.uaword	0xe2a
	.uaword	0xc20
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.uaword	.LVL23
	.uaword	0xe0c
	.uaword	0xc37
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC6
	.byte	0
	.uleb128 0x12
	.uaword	.LVL24
	.uaword	0xeaa
	.uaword	0xc4a
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x12
	.uaword	.LVL25
	.uaword	0xe2a
	.uaword	0xc5d
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.uaword	.LVL26
	.uaword	0xe2a
	.uaword	0xc70
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL27
	.byte	0x1
	.uaword	0xe91
	.uleb128 0x14
	.uaword	.LVL28
	.byte	0x1
	.uaword	0x941
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x221
	.uaword	0xc9b
	.uleb128 0x1d
	.uaword	0x28b
	.byte	0xf
	.byte	0
	.uleb128 0x1e
	.string	"errorMessages"
	.byte	0x9
	.byte	0x4b
	.uaword	0xcb6
	.byte	0x5
	.byte	0x3
	.uaword	errorMessages
	.uleb128 0x5
	.uaword	0xc8b
	.uleb128 0x1e
	.string	"carStatusPacket"
	.byte	0x1
	.byte	0x4
	.uaword	0x31a
	.byte	0x5
	.byte	0x3
	.uaword	carStatusPacket
	.uleb128 0x1e
	.string	"carStatus"
	.byte	0x1
	.byte	0x5
	.uaword	0x70a
	.byte	0x5
	.byte	0x3
	.uaword	carStatus
	.uleb128 0x1e
	.string	"carCommand"
	.byte	0x1
	.byte	0x6
	.uaword	0x7ac
	.byte	0x5
	.byte	0x3
	.uaword	carCommand
	.uleb128 0x1e
	.string	"currentPosition"
	.byte	0x1
	.byte	0x7
	.uaword	0x91b
	.byte	0x5
	.byte	0x3
	.uaword	currentPosition
	.uleb128 0x1e
	.string	"targetPosition"
	.byte	0x1
	.byte	0x8
	.uaword	0x91b
	.byte	0x5
	.byte	0x3
	.uaword	targetPosition
	.uleb128 0x1c
	.uaword	0x261
	.uaword	0xd50
	.uleb128 0x1d
	.uaword	0x28b
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xa7
	.uaword	0xd6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0xd40
	.uleb128 0x1f
	.string	"g_RecievedParkingSystemPacket"
	.byte	0xa
	.byte	0x19
	.uaword	0x31a
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"g_isAppRunning"
	.byte	0x1
	.byte	0x3
	.uaword	0x176
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_isAppRunning
	.uleb128 0x21
	.byte	0x1
	.string	"osEE_tc_stm_set_sr1_next_match"
	.byte	0xb
	.uahalf	0x3eb
	.byte	0x1
	.byte	0x1
	.uaword	0xde6
	.uleb128 0x22
	.uaword	0x3b6
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"IncrementCounter"
	.byte	0xd
	.uahalf	0x45c
	.byte	0x1
	.uaword	0x649
	.byte	0x1
	.uaword	0xe0c
	.uleb128 0x22
	.uaword	0x3d6
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"printfSerial"
	.byte	0xc
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.uaword	0xe2a
	.uleb128 0x22
	.uaword	0x221
	.uleb128 0x25
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"CancelAlarm"
	.byte	0xd
	.uahalf	0x313
	.byte	0x1
	.uaword	0x649
	.byte	0x1
	.uaword	0xe4b
	.uleb128 0x22
	.uaword	0x3fb
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"SetRelAlarm"
	.byte	0xd
	.uahalf	0x294
	.byte	0x1
	.uaword	0x649
	.byte	0x1
	.uaword	0xe76
	.uleb128 0x22
	.uaword	0x3fb
	.uleb128 0x22
	.uaword	0x3ea
	.uleb128 0x22
	.uaword	0x3ea
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"sendPacket"
	.byte	0xa
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.uaword	0xe91
	.uleb128 0x22
	.uaword	0xb2b
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"TerminateTask"
	.byte	0xd
	.uahalf	0x1c9
	.byte	0x1
	.uaword	0x649
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"ActivateTask"
	.byte	0xd
	.uahalf	0x178
	.byte	0x1
	.uaword	0x649
	.byte	0x1
	.uleb128 0x22
	.uaword	0x3c6
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL15-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15-1-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16-1-.Ltext0
	.uaword	.LFE603-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-1-.Ltext0
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
	.extern	ActivateTask,STT_FUNC,0
	.extern	g_RecievedParkingSystemPacket,STT_OBJECT,36
	.extern	TerminateTask,STT_FUNC,0
	.extern	sendPacket,STT_FUNC,0
	.extern	SetRelAlarm,STT_FUNC,0
	.extern	CancelAlarm,STT_FUNC,0
	.extern	printfSerial,STT_FUNC,0
	.extern	IncrementCounter,STT_FUNC,0
	.extern	osEE_tc_stm_set_sr1_next_match,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
