	.file	"shiparker_App.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	AppTimerISR
	.type	AppTimerISR, @function
AppTimerISR:
.LFB597:
	.file 1 "C:\\SHIPAR~1\\TC275\\shiparker_App.c"
	.loc 1 23 0
	.loc 1 24 0
	mov.u	%d4, 50000
	call	osEE_tc_stm_set_sr1_next_match
.LVL0:
	.loc 1 25 0
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
	.loc 1 29 0
	.loc 1 30 0
	movh.a	%a15, hi:g_isAppRunning
	ld.bu	%d15, [%a15] lo:g_isAppRunning
	jne	%d15, 1, .L3
	.loc 1 32 0
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	call	printfSerial
.LVL2:
	.loc 1 33 0
	mov	%d4, 1
	call	CancelAlarm
.LVL3:
	.loc 1 34 0
	mov	%d4, 0
	call	CancelAlarm
.LVL4:
	j	.L4
.L3:
	.loc 1 38 0
	movh.a	%a4, hi:.LC1
	lea	%a4, [%a4] lo:.LC1
	call	printfSerial
.LVL5:
.L4:
	.loc 1 40 0
	mov	%d15, 1
	st.b	[%a15] lo:g_isAppRunning, %d15
	.loc 1 41 0
	mov	%d2, 0
	movh.a	%a15, hi:carStatus
	st.b	[%a15] lo:carStatus, %d2
	.loc 1 42 0
	mov	%e2, 0
	movh.a	%a15, hi:currentPosition
	lea	%a15, [%a15] lo:currentPosition
	st.d	[%a15]0, %e2
	.loc 1 43 0
	st.d	[%a15] 8, %e2
	.loc 1 44 0
	movh.a	%a15, hi:targetPosition
	movh	%d3, 49614
	lea	%a15, [%a15] lo:targetPosition
	mov	%d2, 0
	addi	%d3, %d3, -12955
	st.d	[%a15]0, %e2
	.loc 1 45 0
	st.d	[%a15] 8, %e2
	.loc 1 47 0
	mov	%e4, 0
	mov	%d6, 10
	.loc 1 46 0
	movh.a	%a15, hi:carCommand
	st.b	[%a15] lo:carCommand, %d15
	.loc 1 47 0
	call	SetRelAlarm
.LVL6:
	.loc 1 48 0
	mov	%e4, 1
	mov	%d6, 50
	j	SetRelAlarm
.LVL7:
.LFE598:
	.size	startShiParkerApp, .-startShiParkerApp
	.global	__adddf3
	.global	__ltdf2
	.align 1
	.global	turn90
	.type	turn90, @function
turn90:
.LFB601:
	.loc 1 191 0
	.loc 1 192 0
	call	getHallCntAvg
.LVL8:
	.loc 1 193 0
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16392
	call	__adddf3
.LVL9:
	.loc 1 195 0
	mov	%d4, 3
	.loc 1 193 0
	mov	%e8, %d3, %d2
.LVL10:
	.loc 1 195 0
	call	CancelAlarm
.LVL11:
	.loc 1 197 0
	mov	%d4, 0
	call	motor_stop
.LVL12:
	.loc 1 198 0
	mov	%d4, 1
	call	motor_stop
.LVL13:
	.loc 1 199 0
	mov	%d4, 2
	call	motor_stop
.LVL14:
	.loc 1 200 0
	mov	%d4, 3
	call	motor_stop
.LVL15:
	.loc 1 202 0
	movh.a	%a15, hi:motor_power_normal
	lea	%a15, [%a15] lo:motor_power_normal
	ld.d	%e6, [%a15]0
	mov	%d4, 0
	call	set_motor_power
.LVL16:
	.loc 1 203 0
	ld.d	%e6, [%a15]0
	mov	%d4, 1
	call	set_motor_power
.LVL17:
	.loc 1 204 0
	ld.d	%e6, [%a15]0
	mov	%d4, 2
	call	set_motor_power
.LVL18:
	.loc 1 205 0
	ld.d	%e6, [%a15]0
	mov	%d4, 3
	call	set_motor_power
.LVL19:
.L7:
	.loc 1 207 0
	call	getHallCntAvg
.LVL20:
	mov	%e6, %d9, %d8
	mov	%e4, %d3, %d2
	call	__ltdf2
.LVL21:
	jgez	%d2, .L9
	.loc 1 209 0
	mov	%d4, 10
	call	delay_ms
.LVL22:
	j	.L7
.L9:
	.loc 1 211 0
	mov	%e4, 1
	mov	%d6, 50
	j	SetRelAlarm
.LVL23:
.LFE601:
	.size	turn90, .-turn90
	.global	__muldf3
.section .rodata,"a",@progbits
.LC2:
	.string	"delta:"
	.global	__subdf3
.section .text,"ax",@progbits
	.align 1
	.global	FuncWallFollowTask
	.type	FuncWallFollowTask, @function
FuncWallFollowTask:
.LFB602:
	.loc 1 215 0
	.loc 1 216 0
	movh.a	%a15, hi:g_isAppRunning
	ld.bu	%d15, [%a15] lo:g_isAppRunning
	.loc 1 215 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 216 0
	jz	%d15, .L10
	.loc 1 216 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:carStatus
	ld.bu	%d15, [%a15] lo:carStatus
	jne	%d15, 1, .L10
.LBB2:
	.loc 1 218 0 is_stmt 1
	movh.a	%a4, hi:g_Ultrasonic_FL
	lea	%a4, [%a4] lo:g_Ultrasonic_FL
	call	getUltrasonic
.LVL24:
	.loc 1 219 0
	movh.a	%a4, hi:g_Ultrasonic_RL
	lea	%a4, [%a4] lo:g_Ultrasonic_RL
	.loc 1 218 0
	mov	%e8, %d3, %d2
.LVL25:
	.loc 1 219 0
	call	getUltrasonic
.LVL26:
	.loc 1 222 0
	mov	%e4, %d9, %d8
	mov	%e6, %d3, %d2
	mov.aa	%a4, %SP
	call	wall_follow_control
.LVL27:
	.loc 1 223 0
	movh.a	%a15, hi:Kp_rad_to_delta_power
	lea	%a15, [%a15] lo:Kp_rad_to_delta_power
	ld.d	%e4, [%a15]0
	ld.d	%e6, [%SP]0
	call	__muldf3
.LVL28:
	.loc 1 224 0
	movh.a	%a4, hi:.LC2
	mov	%e4, %d3, %d2
	lea	%a4, [%a4] lo:.LC2
	.loc 1 223 0
	mov	%e8, %d3, %d2
.LVL29:
	.loc 1 224 0
	call	printDouble
.LVL30:
	.loc 1 225 0
	mov	%e4, %d9, %d8
	imask	%e6, 0, 21, 9
	movh.a	%a15, hi:motor_power_normal
	call	__muldf3
.LVL31:
	lea	%a15, [%a15] lo:motor_power_normal
	ld.d	%e10, [%a15]0
	mov	%e6, %d3, %d2
	mov	%e4, %d11, %d10
	mov	%e8, %d3, %d2
.LVL32:
	call	__adddf3
.LVL33:
	mov	%e6, %d3, %d2
	mov	%d4, 0
	call	set_motor_power
.LVL34:
	.loc 1 226 0
	mov	%e6, %d9, %d8
	ld.d	%e4, [%a15]0
	call	__adddf3
.LVL35:
	mov	%e6, %d3, %d2
	mov	%d4, 2
	call	set_motor_power
.LVL36:
	.loc 1 227 0
	mov	%e6, %d9, %d8
	ld.d	%e4, [%a15]0
	call	__subdf3
.LVL37:
	mov	%e6, %d3, %d2
	mov	%d4, 1
	call	set_motor_power
.LVL38:
	.loc 1 228 0
	mov	%e6, %d9, %d8
	ld.d	%e4, [%a15]0
	call	__subdf3
.LVL39:
	mov	%e6, %d3, %d2
.LBE2:
	.loc 1 230 0
.LBB3:
	.loc 1 228 0
	mov	%d4, 3
.LBE3:
	.loc 1 230 0
	lea	%SP, [%SP] 16
.LBB4:
	.loc 1 228 0
	j	set_motor_power
.LVL40:
.L10:
	ret
.LBE4:
.LFE602:
	.size	FuncWallFollowTask, .-FuncWallFollowTask
	.align 1
	.global	makePacket
	.type	makePacket, @function
makePacket:
.LFB604:
	.loc 1 240 0
.LVL41:
	.loc 1 241 0
	mov	%d15, -86
	.loc 1 242 0
	movh.a	%a15, hi:carStatus
	.loc 1 241 0
	st.b	[%a4]0, %d15
	.loc 1 242 0
	ld.bu	%d15, [%a15] lo:carStatus
	.loc 1 243 0
	movh.a	%a15, hi:carCommand
	.loc 1 242 0
	st.b	[%a4] 1, %d15
	.loc 1 243 0
	ld.bu	%d15, [%a15] lo:carCommand
	.loc 1 244 0
	movh.a	%a2, hi:currentPosition
	.loc 1 243 0
	st.b	[%a4] 34, %d15
	.loc 1 244 0
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
	.loc 1 245 0
	ld.w	%d15, [%a15] 8
	.loc 1 244 0
	st.b	[%a4] 8, %d2
	.loc 1 245 0
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
	.loc 1 246 0
	movh.a	%a2, hi:targetPosition
	.loc 1 245 0
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a4] 17, %d15
	.loc 1 246 0
	ld.w	%d15, [%a2] lo:targetPosition
	.loc 1 245 0
	st.b	[%a4] 16, %d2
	.loc 1 246 0
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
	.loc 1 247 0
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
.LFE604:
	.size	makePacket, .-makePacket
.section .rodata,"a",@progbits
.LC3:
	.string	"sendpacket:status=%d,cmd=%d"
.section .text,"ax",@progbits
	.align 1
	.global	FuncPacketSendTask
	.type	FuncPacketSendTask, @function
FuncPacketSendTask:
.LFB603:
	.loc 1 233 0
	.loc 1 234 0
	movh.a	%a15, hi:carStatus
	ld.bu	%d15, [%a15] lo:carStatus
	.loc 1 233 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 234 0
	movh.a	%a15, hi:carCommand
	st.w	[%SP]0, %d15
	ld.bu	%d15, [%a15] lo:carCommand
	movh.a	%a4, hi:.LC3
	st.w	[%SP] 4, %d15
	lea	%a4, [%a4] lo:.LC3
	call	printfSerial
.LVL42:
	.loc 1 235 0
	movh.a	%a15, hi:carStatusPacket
	lea	%a15, [%a15] lo:carStatusPacket
	mov.aa	%a4, %a15
	call	makePacket
.LVL43:
	.loc 1 237 0
	.loc 1 236 0
	mov.aa	%a4, %a15
	.loc 1 237 0
	lea	%SP, [%SP] 8
	.loc 1 236 0
	j	sendPacket
.LVL44:
.LFE603:
	.size	FuncPacketSendTask, .-FuncPacketSendTask
	.align 1
	.global	updateStatus
	.type	updateStatus, @function
updateStatus:
.LFB605:
	.loc 1 250 0
.LVL45:
	.loc 1 251 0
	ld.bu	%d15, [%a4] 1
	movh.a	%a15, hi:carStatus
	.loc 1 253 0
	ld.bu	%d5, [%a4] 3
	.loc 1 251 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 253 0
	ld.bu	%d2, [%a4] 2
	.loc 1 252 0
	ld.bu	%d15, [%a4] 34
	movh.a	%a15, hi:carCommand
	.loc 1 253 0
	sh	%d5, %d5, 8
	.loc 1 252 0
	st.b	[%a15] lo:carCommand, %d15
	.loc 1 253 0
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
	.loc 1 254 0
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
	.loc 1 255 0
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
	.loc 1 256 0
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
.LFE605:
	.size	updateStatus, .-updateStatus
.section .rodata,"a",@progbits
.LC4:
	.string	"ERROR: %s (%d)\n"
.LC5:
	.string	"ERROR: Unknown error code (%d).\n"
.section .text,"ax",@progbits
	.align 1
	.global	handleError
	.type	handleError, @function
handleError:
.LFB606:
	.loc 1 260 0
.LVL46:
	sub.a	%SP, 8
.LCFI2:
	.loc 1 260 0
	mov	%d15, %d4
	.loc 1 261 0
	mov	%d4, 3
.LVL47:
	call	CancelAlarm
.LVL48:
	.loc 1 262 0
	mov	%d4, 2
	call	CancelAlarm
.LVL49:
	.loc 1 263 0
	mov	%d4, 0
	call	motor_stop
.LVL50:
	.loc 1 264 0
	mov	%d4, 1
	call	motor_stop
.LVL51:
	.loc 1 265 0
	mov	%d4, 2
	call	motor_stop
.LVL52:
	.loc 1 266 0
	mov	%d4, 3
	call	motor_stop
.LVL53:
	.loc 1 267 0
	ge.u	%d2, %d15, 16
	jnz	%d2, .L19
	.loc 1 269 0
	movh.a	%a15, hi:errorMessages
	lea	%a15, [%a15] lo:errorMessages
	addsc.a	%a15, %a15, %d15, 2
	movh.a	%a4, hi:.LC4
	ld.w	%d2, [%a15]0
	st.w	[%SP] 4, %d15
	st.w	[%SP]0, %d2
	lea	%a4, [%a4] lo:.LC4
	call	printfSerial
.LVL54:
	.loc 1 270 0
	jeq	%d15, 1, .L21
	jz	%d15, .L22
	jne	%d15, 2, .L20
	.loc 1 281 0
	mov	%d15, 5
	j	.L25
.L22:
	.loc 1 273 0
	mov	%d15, 6
	movh.a	%a15, hi:carStatus
	.loc 1 274 0
	mov	%d4, 11
	.loc 1 273 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 274 0
	call	ActivateTask
.LVL55:
	.loc 1 275 0
	mov	%d15, 3
	j	.L24
.L21:
	.loc 1 278 0
	mov	%d15, 4
.L25:
	movh.a	%a15, hi:carStatus
.L24:
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 279 0
	j	.L20
.L19:
	.loc 1 289 0
	movh.a	%a4, hi:.LC5
	st.w	[%SP]0, %d15
	lea	%a4, [%a4] lo:.LC5
	call	printfSerial
.LVL56:
.L20:
	.loc 1 292 0
	.loc 1 291 0
	mov	%d4, 11
	.loc 1 292 0
	lea	%SP, [%SP] 8
	.loc 1 291 0
	j	ActivateTask
.LVL57:
.LFE606:
	.size	handleError, .-handleError
.section .rodata,"a",@progbits
.LC6:
	.string	"app"
.LC7:
	.string	"Terminate ShiParker...\n"
.section .text,"ax",@progbits
	.align 1
	.global	FuncShiParkerAppTask
	.type	FuncShiParkerAppTask, @function
FuncShiParkerAppTask:
.LFB599:
	.loc 1 52 0
	.loc 1 53 0
	movh.a	%a4, hi:.LC6
	lea	%a4, [%a4] lo:.LC6
	.loc 1 54 0
	movh.a	%a12, hi:g_isAppRunning
	.loc 1 53 0
	call	printfSerial
.LVL58:
	.loc 1 54 0
	ld.bu	%d15, [%a12] lo:g_isAppRunning
	jnz	%d15, .L27
	.loc 1 55 0
	call	TerminateTask
.LVL59:
.L27:
	.loc 1 57 0
	movh.a	%a15, hi:carStatus
	ld.bu	%d15, [%a15] lo:carStatus
	jge.u	%d15, 6, .L28
	movh.a	%a2, hi:.L30
	lea	%a2, [%a2] lo:.L30
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L30:
	.code32
	j	.L29
	.code32
	j	.L31
	.code32
	j	.L32
	.code32
	j	.L33
	.code32
	j	.L34
	.code32
	j	.L34
.L29:
	.loc 1 60 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L42
	jeq	%d15, 1, .L41
	ret
.L31:
	.loc 1 84 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L42
	jeq	%d15, 2, .L39
	ret
.L39:
	.loc 1 95 0
	mov	%d4, 1
	call	CancelAlarm
.LVL60:
	.loc 1 96 0
	mov	%d4, 3
	call	CancelAlarm
.LVL61:
	.loc 1 97 0
	mov	%d4, 2
	call	CancelAlarm
.LVL62:
	.loc 1 98 0
	mov	%e4, 1
	mov	%d6, 50
.L44:
	j	SetRelAlarm
.LVL63:
.L32:
	.loc 1 105 0
	mov	%d4, 0
	call	motor_stop
.LVL64:
	.loc 1 106 0
	mov	%d4, 1
	call	motor_stop
.LVL65:
	.loc 1 107 0
	mov	%d4, 2
	call	motor_stop
.LVL66:
	.loc 1 108 0
	mov	%d4, 3
	call	motor_stop
.LVL67:
	.loc 1 109 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L42
	jeq	%d15, 1, .L41
	ret
.L41:
	.loc 1 118 0
	mov	%d4, 1
	.loc 1 117 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 118 0
	call	CancelAlarm
.LVL68:
	.loc 1 119 0
	mov	%e4, 2
	mov	%d6, 2
	call	SetRelAlarm
.LVL69:
	.loc 1 120 0
	mov	%e4, 1
	mov	%d6, 10
	j	.L45
.L33:
	.loc 1 132 0
	mov	%d4, 0
	call	motor_stop
.LVL70:
	.loc 1 133 0
	mov	%d4, 1
	call	motor_stop
.LVL71:
	.loc 1 134 0
	mov	%d4, 2
	call	motor_stop
.LVL72:
	.loc 1 135 0
	mov	%d4, 3
	call	motor_stop
.LVL73:
	.loc 1 136 0
	movh.a	%a4, hi:.LC7
	lea	%a4, [%a4] lo:.LC7
	call	printfSerial
.LVL74:
	.loc 1 137 0
	mov	%d4, 11
	call	ActivateTask
.LVL75:
	.loc 1 138 0
	mov	%d15, 0
	.loc 1 139 0
	mov	%d4, 3
	.loc 1 138 0
	st.b	[%a12] lo:g_isAppRunning, %d15
	.loc 1 139 0
	call	CancelAlarm
.LVL76:
	.loc 1 140 0
	mov	%d4, 1
	call	CancelAlarm
.LVL77:
	.loc 1 141 0
	mov	%d4, 2
	call	CancelAlarm
.LVL78:
	.loc 1 142 0
	mov	%d4, 0
	call	CancelAlarm
.LVL79:
	.loc 1 143 0
	j	TerminateTask
.LVL80:
.L34:
	.loc 1 147 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L42
	jeq	%d15, 1, .L43
	ret
.L42:
	.loc 1 151 0
	mov	%d15, 3
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 152 0
	ret
.L43:
	.loc 1 156 0
	mov	%d4, 1
	.loc 1 155 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 156 0
	call	CancelAlarm
.LVL81:
	.loc 1 157 0
	mov	%e4, 2
	mov	%d6, 2
	call	SetRelAlarm
.LVL82:
	.loc 1 158 0
	mov	%e4, 1
	mov	%d6, 50
.L45:
	call	SetRelAlarm
.LVL83:
	.loc 1 161 0
	mov	%e4, 3
	mov	%d6, 2
	j	.L44
.L28:
	.loc 1 173 0
	mov	%d4, 3
	j	handleError
.LVL84:
.LFE599:
	.size	FuncShiParkerAppTask, .-FuncShiParkerAppTask
.section .rodata,"a",@progbits
.LC8:
	.string	"frontUltra:"
	.global	__gtdf2
.section .text,"ax",@progbits
	.align 1
	.global	FuncAvoidObstacleTask
	.type	FuncAvoidObstacleTask, @function
FuncAvoidObstacleTask:
.LFB600:
	.loc 1 179 0
	.loc 1 180 0
	movh.a	%a15, hi:g_isAppRunning
	ld.bu	%d15, [%a15] lo:g_isAppRunning
	jnz	%d15, .L47
	.loc 1 181 0
	call	TerminateTask
.LVL85:
.L47:
	.loc 1 182 0
	movh.a	%a4, hi:g_Ultrasonic_FRONT
	lea	%a4, [%a4] lo:g_Ultrasonic_FRONT
	call	getUltrasonic
.LVL86:
	.loc 1 183 0
	movh.a	%a4, hi:.LC8
	mov	%e4, %d3, %d2
	lea	%a4, [%a4] lo:.LC8
	.loc 1 182 0
	mov	%e8, %d3, %d2
.LVL87:
	.loc 1 183 0
	call	printDouble
.LVL88:
	.loc 1 184 0
	mov	%e4, %d9, %d8
	mov	%e6, 0
	call	__gtdf2
.LVL89:
	jlez	%d2, .L46
	.loc 1 184 0 is_stmt 0 discriminator 1
	mov	%e4, %d9, %d8
	mov	%d6, 0
	movh	%d7, 16412
	call	__ltdf2
.LVL90:
	jgez	%d2, .L46
	.loc 1 186 0 is_stmt 1
	mov	%d4, 1
	j	handleError
.LVL91:
.L46:
	ret
.LFE600:
	.size	FuncAvoidObstacleTask, .-FuncAvoidObstacleTask
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
	.global	Kp_rad_to_delta_power
.section .rodata,"a",@progbits
	.align 2
	.type	Kp_rad_to_delta_power, @object
	.size	Kp_rad_to_delta_power, 8
Kp_rad_to_delta_power:
	.word	0
	.word	1079902208
	.global	motor_power_normal
	.align 2
	.type	motor_power_normal, @object
	.size	motor_power_normal, 8
motor_power_normal:
	.word	0
	.word	1078525952
.LC9:
	.string	"User Control occured."
.LC10:
	.string	"Obstacle detected."
.LC11:
	.string	"Connection Lost"
.LC12:
	.string	"Undefined Status"
.LC13:
	.string	"Hall_FL Error"
.LC14:
	.string	"Hall_FR Error"
.LC15:
	.string	"Hall_RL Error"
.LC16:
	.string	"Hall_RR Error"
.LC17:
	.string	"ULTRASONIC_FL Error"
.LC18:
	.string	"ULTRASONIC_F Error"
.LC19:
	.string	"ULTRASONIC_FR Error"
.LC20:
	.string	"ULTRASONIC_SL Error"
.LC21:
	.string	"ULTRASONIC_SR Error"
.LC22:
	.string	"ULTRASONIC_RL Error"
.LC23:
	.string	"ULTRASONIC_R Error"
.LC24:
	.string	"ULTRASONIC_RR Error"
	.align 2
	.type	errorMessages, @object
	.size	errorMessages, 64
errorMessages:
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
	.word	.LC23
	.word	.LC24
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
	.uaword	.LFB602
	.uaword	.LFE602-.LFB602
	.byte	0x4
	.uaword	.LCFI0-.LFB602
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB604
	.uaword	.LFE604-.LFB604
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB603
	.uaword	.LFE603-.LFB603
	.byte	0x4
	.uaword	.LCFI1-.LFB603
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB605
	.uaword	.LFE605-.LFB605
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB606
	.uaword	.LFE606-.LFB606
	.byte	0x4
	.uaword	.LCFI2-.LFB606
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB599
	.uaword	.LFE599-.LFB599
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB600
	.uaword	.LFE600-.LFB600
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "C:\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\Cpu\\Std\\Platform_Types.h"
	.file 3 "C:\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\Cpu\\Std/Ifx_Types.h"
	.file 4 "C:\\SHIPAR~1\\TC275/illd\\Libraries\\Infra\\Sfr\\TC27D\\_Reg\\IfxPort_regdef.h"
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 6 "C:\\SHIPAR~1\\TC275\\illd\\src\\Configuration.h"
	.file 7 "C:\\SHIPAR~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 8 "C:\\SHIPAR~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 9 "C:\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\_Impl/IfxCpu_cfg.h"
	.file 10 "C:\\SHIPAR~1\\TC275\\motor_Driver.h"
	.file 11 "C:\\SHIPAR~1\\TC275\\shiparker_App.h"
	.file 12 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h"
	.file 13 "C:\\SHIPAR~1\\TC275\\steering_Pid.h"
	.file 14 "C:\\SHIPAR~1\\TC275\\ultrasonic_Driver.h"
	.file 15 "C:\\SHIPAR~1\\TC275\\erika\\inc/ee_tc_system.h"
	.file 16 "C:\\SHIPAR~1\\TC275\\bsw.h"
	.file 17 "C:\\SHIPAR~1\\TC275\\erika\\inc/ee_oo_api_osek.h"
	.file 18 "C:\\SHIPAR~1\\TC275\\uart_Driver.h"
	.file 19 "C:\\SHIPAR~1\\TC275\\hall_Driver.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x392d
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
	.byte	0x8
	.byte	0x4
	.string	"double"
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
	.uaword	0x187
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x6c
	.uaword	0x187
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
	.uaword	0x150
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
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
	.uaword	0x1f1
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
	.uleb128 0x9
	.uaword	0x187
	.uaword	0x293
	.uleb128 0xa
	.uaword	0x293
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.uaword	0x187
	.uaword	0x2af
	.uleb128 0xa
	.uaword	0x293
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.uaword	0x187
	.uaword	0x2bf
	.uleb128 0xa
	.uaword	0x293
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.uaword	0x187
	.uaword	0x2cf
	.uleb128 0xa
	.uaword	0x293
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x9
	.byte	0x87
	.uaword	0x31f
	.uleb128 0xc
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0xd
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x3f
	.uaword	0x531
	.uleb128 0xe
	.string	"EN0"
	.byte	0x4
	.byte	0x41
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x4
	.byte	0x42
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0x4
	.byte	0x43
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0x4
	.byte	0x44
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0x4
	.byte	0x45
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0x4
	.byte	0x46
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0x4
	.byte	0x47
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0x4
	.byte	0x48
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0x4
	.byte	0x49
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0x4
	.byte	0x4a
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0x4
	.byte	0x4b
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0x4
	.byte	0x4c
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0x4
	.byte	0x4d
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0x4
	.byte	0x4e
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0x4
	.byte	0x4f
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0x4
	.byte	0x50
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"EN16"
	.byte	0x4
	.byte	0x51
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"EN17"
	.byte	0x4
	.byte	0x52
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"EN18"
	.byte	0x4
	.byte	0x53
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"EN19"
	.byte	0x4
	.byte	0x54
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"EN20"
	.byte	0x4
	.byte	0x55
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"EN21"
	.byte	0x4
	.byte	0x56
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"EN22"
	.byte	0x4
	.byte	0x57
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"EN23"
	.byte	0x4
	.byte	0x58
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"EN24"
	.byte	0x4
	.byte	0x59
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EN25"
	.byte	0x4
	.byte	0x5a
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"EN26"
	.byte	0x4
	.byte	0x5b
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"EN27"
	.byte	0x4
	.byte	0x5c
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"EN28"
	.byte	0x4
	.byte	0x5d
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"EN29"
	.byte	0x4
	.byte	0x5e
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"EN30"
	.byte	0x4
	.byte	0x5f
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"EN31"
	.byte	0x4
	.byte	0x60
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x61
	.uaword	0x31f
	.uleb128 0xd
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x64
	.uaword	0x575
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.byte	0x66
	.uaword	0x273
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x67
	.uaword	0x54a
	.uleb128 0xd
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x6a
	.uaword	0x6ac
	.uleb128 0xe
	.string	"EN0"
	.byte	0x4
	.byte	0x6c
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x4
	.byte	0x6d
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0x4
	.byte	0x6e
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0x4
	.byte	0x6f
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0x4
	.byte	0x70
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0x4
	.byte	0x71
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0x4
	.byte	0x72
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0x4
	.byte	0x73
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0x4
	.byte	0x74
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0x4
	.byte	0x75
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0x4
	.byte	0x76
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0x4
	.byte	0x77
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0x4
	.byte	0x78
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0x4
	.byte	0x79
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0x4
	.byte	0x7a
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0x4
	.byte	0x7b
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x4
	.byte	0x7c
	.uaword	0x273
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x7d
	.uaword	0x58e
	.uleb128 0xd
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x80
	.uaword	0x714
	.uleb128 0xe
	.string	"MODREV"
	.byte	0x4
	.byte	0x82
	.uaword	0x273
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"MODTYPE"
	.byte	0x4
	.byte	0x83
	.uaword	0x273
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"MODNUMBER"
	.byte	0x4
	.byte	0x84
	.uaword	0x273
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x85
	.uaword	0x6c2
	.uleb128 0xd
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x88
	.uaword	0x836
	.uleb128 0xe
	.string	"P0"
	.byte	0x4
	.byte	0x8a
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"P1"
	.byte	0x4
	.byte	0x8b
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"P2"
	.byte	0x4
	.byte	0x8c
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"P3"
	.byte	0x4
	.byte	0x8d
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"P4"
	.byte	0x4
	.byte	0x8e
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"P5"
	.byte	0x4
	.byte	0x8f
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"P6"
	.byte	0x4
	.byte	0x90
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"P7"
	.byte	0x4
	.byte	0x91
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"P8"
	.byte	0x4
	.byte	0x92
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"P9"
	.byte	0x4
	.byte	0x93
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"P10"
	.byte	0x4
	.byte	0x94
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"P11"
	.byte	0x4
	.byte	0x95
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"P12"
	.byte	0x4
	.byte	0x96
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"P13"
	.byte	0x4
	.byte	0x97
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"P14"
	.byte	0x4
	.byte	0x98
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"P15"
	.byte	0x4
	.byte	0x99
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x4
	.byte	0x9a
	.uaword	0x273
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x9b
	.uaword	0x729
	.uleb128 0xd
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x9e
	.uaword	0x8de
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.byte	0xa0
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC0"
	.byte	0x4
	.byte	0xa1
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x4
	.byte	0xa2
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC1"
	.byte	0x4
	.byte	0xa3
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x4
	.byte	0xa4
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC2"
	.byte	0x4
	.byte	0xa5
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x4
	.byte	0xa6
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC3"
	.byte	0x4
	.byte	0xa7
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0xa8
	.uaword	0x84b
	.uleb128 0xd
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xab
	.uaword	0x98e
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.byte	0xad
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC12"
	.byte	0x4
	.byte	0xae
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x4
	.byte	0xaf
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC13"
	.byte	0x4
	.byte	0xb0
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x4
	.byte	0xb1
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC14"
	.byte	0x4
	.byte	0xb2
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x4
	.byte	0xb3
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC15"
	.byte	0x4
	.byte	0xb4
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0xb5
	.uaword	0x8f6
	.uleb128 0xd
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xb8
	.uaword	0xa3a
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.byte	0xba
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC4"
	.byte	0x4
	.byte	0xbb
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x4
	.byte	0xbc
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC5"
	.byte	0x4
	.byte	0xbd
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x4
	.byte	0xbe
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC6"
	.byte	0x4
	.byte	0xbf
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x4
	.byte	0xc0
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC7"
	.byte	0x4
	.byte	0xc1
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0xc2
	.uaword	0x9a7
	.uleb128 0xd
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xc5
	.uaword	0xae7
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.byte	0xc7
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC8"
	.byte	0x4
	.byte	0xc8
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x4
	.byte	0xc9
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC9"
	.byte	0x4
	.byte	0xca
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x4
	.byte	0xcb
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC10"
	.byte	0x4
	.byte	0xcc
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x4
	.byte	0xcd
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC11"
	.byte	0x4
	.byte	0xce
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0xcf
	.uaword	0xa52
	.uleb128 0xd
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xd2
	.uaword	0xb47
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.byte	0xd4
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x4
	.byte	0xd5
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x4
	.byte	0xd6
	.uaword	0x273
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0xd7
	.uaword	0xaff
	.uleb128 0xd
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xda
	.uaword	0xba7
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.byte	0xdc
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x4
	.byte	0xdd
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x4
	.byte	0xde
	.uaword	0x273
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0xdf
	.uaword	0xb5f
	.uleb128 0xd
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xe2
	.uaword	0xc37
	.uleb128 0xe
	.string	"RDIS_CTRL"
	.byte	0x4
	.byte	0xe4
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"RX_DIS"
	.byte	0x4
	.byte	0xe5
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"TERM"
	.byte	0x4
	.byte	0xe6
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"LRXTERM"
	.byte	0x4
	.byte	0xe7
	.uaword	0x273
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x4
	.byte	0xe8
	.uaword	0x273
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0xe9
	.uaword	0xbbf
	.uleb128 0xd
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xec
	.uaword	0xd12
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.byte	0xee
	.uaword	0x273
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"LVDSR"
	.byte	0x4
	.byte	0xef
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"LVDSRL"
	.byte	0x4
	.byte	0xf0
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"reserved_10"
	.byte	0x4
	.byte	0xf1
	.uaword	0x273
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"TDIS_CTRL"
	.byte	0x4
	.byte	0xf2
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"TX_DIS"
	.byte	0x4
	.byte	0xf3
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"TX_PD"
	.byte	0x4
	.byte	0xf4
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"TX_PWDPD"
	.byte	0x4
	.byte	0xf5
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x4
	.byte	0xf6
	.uaword	0x273
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0xf7
	.uaword	0xc53
	.uleb128 0xd
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xfa
	.uaword	0xda5
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.byte	0xfc
	.uaword	0x273
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PCL0"
	.byte	0x4
	.byte	0xfd
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"PCL1"
	.byte	0x4
	.byte	0xfe
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"PCL2"
	.byte	0x4
	.byte	0xff
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x4
	.uahalf	0x100
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x101
	.uaword	0x273
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x4
	.uahalf	0x102
	.uaword	0xd2a
	.uleb128 0x13
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x105
	.uaword	0xe33
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x107
	.uaword	0x273
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x4
	.uahalf	0x108
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x4
	.uahalf	0x109
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x4
	.uahalf	0x10a
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x4
	.uahalf	0x10b
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x4
	.uahalf	0x10c
	.uaword	0xdbe
	.uleb128 0x13
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x10f
	.uaword	0xecd
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x111
	.uaword	0x273
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x4
	.uahalf	0x112
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x4
	.uahalf	0x113
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x4
	.uahalf	0x114
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x4
	.uahalf	0x115
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x116
	.uaword	0x273
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x4
	.uahalf	0x117
	.uaword	0xe4d
	.uleb128 0x13
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x11a
	.uaword	0xf68
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x11c
	.uaword	0x273
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x4
	.uahalf	0x11d
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x4
	.uahalf	0x11e
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x4
	.uahalf	0x11f
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x4
	.uahalf	0x120
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x121
	.uaword	0x273
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x4
	.uahalf	0x122
	.uaword	0xee6
	.uleb128 0x13
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x125
	.uaword	0x10c2
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x127
	.uaword	0x273
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x4
	.uahalf	0x128
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x4
	.uahalf	0x129
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x4
	.uahalf	0x12a
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x4
	.uahalf	0x12b
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x4
	.uahalf	0x12c
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x4
	.uahalf	0x12d
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x4
	.uahalf	0x12e
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x4
	.uahalf	0x12f
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x4
	.uahalf	0x130
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x4
	.uahalf	0x131
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x4
	.uahalf	0x132
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x4
	.uahalf	0x133
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x4
	.uahalf	0x134
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x4
	.uahalf	0x135
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x4
	.uahalf	0x136
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x4
	.uahalf	0x137
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x4
	.uahalf	0x138
	.uaword	0xf81
	.uleb128 0x13
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x13b
	.uaword	0x1310
	.uleb128 0x10
	.string	"PS0"
	.byte	0x4
	.uahalf	0x13d
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x4
	.uahalf	0x13e
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x4
	.uahalf	0x13f
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x4
	.uahalf	0x140
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x4
	.uahalf	0x141
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x4
	.uahalf	0x142
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x4
	.uahalf	0x143
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x4
	.uahalf	0x144
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x4
	.uahalf	0x145
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x4
	.uahalf	0x146
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x4
	.uahalf	0x147
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x4
	.uahalf	0x148
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x4
	.uahalf	0x149
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x4
	.uahalf	0x14a
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x4
	.uahalf	0x14c
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x4
	.uahalf	0x14d
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x4
	.uahalf	0x14e
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x4
	.uahalf	0x14f
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x4
	.uahalf	0x150
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x4
	.uahalf	0x151
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x4
	.uahalf	0x152
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x4
	.uahalf	0x153
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x4
	.uahalf	0x154
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x4
	.uahalf	0x155
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x4
	.uahalf	0x156
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x4
	.uahalf	0x157
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x4
	.uahalf	0x158
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x4
	.uahalf	0x159
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x4
	.uahalf	0x15c
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMR_Bits"
	.byte	0x4
	.uahalf	0x15d
	.uaword	0x10da
	.uleb128 0x13
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x160
	.uaword	0x139a
	.uleb128 0x10
	.string	"PS0"
	.byte	0x4
	.uahalf	0x162
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x4
	.uahalf	0x163
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x4
	.uahalf	0x164
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"reserved_4"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x273
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x4
	.uahalf	0x167
	.uaword	0x1327
	.uleb128 0x13
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x1434
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x16c
	.uaword	0x273
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x4
	.uahalf	0x16d
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x4
	.uahalf	0x16e
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x4
	.uahalf	0x16f
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x4
	.uahalf	0x170
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x171
	.uaword	0x273
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x4
	.uahalf	0x172
	.uaword	0x13b3
	.uleb128 0x13
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x175
	.uaword	0x14ca
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x177
	.uaword	0x273
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x4
	.uahalf	0x178
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x4
	.uahalf	0x179
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x4
	.uahalf	0x17a
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x4
	.uahalf	0x17b
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x17c
	.uaword	0x273
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x4
	.uahalf	0x17d
	.uaword	0x144e
	.uleb128 0x13
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x180
	.uaword	0x1561
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x182
	.uaword	0x273
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x4
	.uahalf	0x183
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x4
	.uahalf	0x184
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x4
	.uahalf	0x185
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x4
	.uahalf	0x186
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x187
	.uaword	0x273
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x4
	.uahalf	0x188
	.uaword	0x14e3
	.uleb128 0x13
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x18b
	.uaword	0x16ab
	.uleb128 0x10
	.string	"PS0"
	.byte	0x4
	.uahalf	0x18d
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x4
	.uahalf	0x18e
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x4
	.uahalf	0x18f
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x4
	.uahalf	0x190
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x4
	.uahalf	0x191
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x4
	.uahalf	0x192
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x4
	.uahalf	0x193
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x4
	.uahalf	0x194
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x4
	.uahalf	0x195
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x4
	.uahalf	0x196
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x4
	.uahalf	0x197
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x4
	.uahalf	0x198
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x4
	.uahalf	0x199
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x4
	.uahalf	0x19a
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x4
	.uahalf	0x19b
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x4
	.uahalf	0x19c
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x19d
	.uaword	0x273
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x157a
	.uleb128 0x13
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1a1
	.uaword	0x17e3
	.uleb128 0x10
	.string	"P0"
	.byte	0x4
	.uahalf	0x1a3
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"P1"
	.byte	0x4
	.uahalf	0x1a4
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"P2"
	.byte	0x4
	.uahalf	0x1a5
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"P3"
	.byte	0x4
	.uahalf	0x1a6
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"P4"
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"P5"
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"P6"
	.byte	0x4
	.uahalf	0x1a9
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"P7"
	.byte	0x4
	.uahalf	0x1aa
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"P8"
	.byte	0x4
	.uahalf	0x1ab
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"P9"
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"P10"
	.byte	0x4
	.uahalf	0x1ad
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"P11"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"P12"
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"P13"
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"P14"
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"P15"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1b3
	.uaword	0x273
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OUT_Bits"
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0x16c3
	.uleb128 0x13
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1b7
	.uaword	0x18e7
	.uleb128 0x10
	.string	"SEL0"
	.byte	0x4
	.uahalf	0x1b9
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"SEL1"
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"SEL2"
	.byte	0x4
	.uahalf	0x1bb
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"SEL3"
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"SEL4"
	.byte	0x4
	.uahalf	0x1bd
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"SEL5"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"SEL6"
	.byte	0x4
	.uahalf	0x1bf
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"reserved_7"
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"SEL10"
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"SEL11"
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x273
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"LCK"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x17fa
	.uleb128 0x13
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1c8
	.uaword	0x1a51
	.uleb128 0x10
	.string	"PDIS0"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PDIS1"
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PDIS2"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PDIS3"
	.byte	0x4
	.uahalf	0x1cd
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PDIS4"
	.byte	0x4
	.uahalf	0x1ce
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PDIS5"
	.byte	0x4
	.uahalf	0x1cf
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PDIS6"
	.byte	0x4
	.uahalf	0x1d0
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PDIS7"
	.byte	0x4
	.uahalf	0x1d1
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PDIS8"
	.byte	0x4
	.uahalf	0x1d2
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PDIS9"
	.byte	0x4
	.uahalf	0x1d3
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PDIS10"
	.byte	0x4
	.uahalf	0x1d4
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PDIS11"
	.byte	0x4
	.uahalf	0x1d5
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PDIS12"
	.byte	0x4
	.uahalf	0x1d6
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PDIS13"
	.byte	0x4
	.uahalf	0x1d7
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PDIS14"
	.byte	0x4
	.uahalf	0x1d8
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PDIS15"
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1da
	.uaword	0x273
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x4
	.uahalf	0x1db
	.uaword	0x18ff
	.uleb128 0x13
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1de
	.uaword	0x1b85
	.uleb128 0x10
	.string	"PD0"
	.byte	0x4
	.uahalf	0x1e0
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PL0"
	.byte	0x4
	.uahalf	0x1e1
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PD1"
	.byte	0x4
	.uahalf	0x1e2
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PL1"
	.byte	0x4
	.uahalf	0x1e3
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PD2"
	.byte	0x4
	.uahalf	0x1e4
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PL2"
	.byte	0x4
	.uahalf	0x1e5
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PD3"
	.byte	0x4
	.uahalf	0x1e6
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PL3"
	.byte	0x4
	.uahalf	0x1e7
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PD4"
	.byte	0x4
	.uahalf	0x1e8
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PL4"
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PD5"
	.byte	0x4
	.uahalf	0x1ea
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PL5"
	.byte	0x4
	.uahalf	0x1eb
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PD6"
	.byte	0x4
	.uahalf	0x1ec
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PL6"
	.byte	0x4
	.uahalf	0x1ed
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PD7"
	.byte	0x4
	.uahalf	0x1ee
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PL7"
	.byte	0x4
	.uahalf	0x1ef
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x4
	.uahalf	0x1f0
	.uaword	0x1a6a
	.uleb128 0x13
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1f3
	.uaword	0x1cc4
	.uleb128 0x10
	.string	"PD8"
	.byte	0x4
	.uahalf	0x1f5
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PL8"
	.byte	0x4
	.uahalf	0x1f6
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PD9"
	.byte	0x4
	.uahalf	0x1f7
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PL9"
	.byte	0x4
	.uahalf	0x1f8
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PD10"
	.byte	0x4
	.uahalf	0x1f9
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PL10"
	.byte	0x4
	.uahalf	0x1fa
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PD11"
	.byte	0x4
	.uahalf	0x1fb
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PL11"
	.byte	0x4
	.uahalf	0x1fc
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PD12"
	.byte	0x4
	.uahalf	0x1fd
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PL12"
	.byte	0x4
	.uahalf	0x1fe
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PD13"
	.byte	0x4
	.uahalf	0x1ff
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PL13"
	.byte	0x4
	.uahalf	0x200
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PD14"
	.byte	0x4
	.uahalf	0x201
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PL14"
	.byte	0x4
	.uahalf	0x202
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PD15"
	.byte	0x4
	.uahalf	0x203
	.uaword	0x273
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PL15"
	.byte	0x4
	.uahalf	0x204
	.uaword	0x273
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x4
	.uahalf	0x205
	.uaword	0x1b9d
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x20d
	.uaword	0x1d04
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x210
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x211
	.uaword	0x531
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ACCEN0"
	.byte	0x4
	.uahalf	0x212
	.uaword	0x1cdc
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x215
	.uaword	0x1d41
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x217
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x218
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x219
	.uaword	0x575
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ACCEN1"
	.byte	0x4
	.uahalf	0x21a
	.uaword	0x1d19
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x21d
	.uaword	0x1d7e
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x21f
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x220
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x221
	.uaword	0x6ac
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ESR"
	.byte	0x4
	.uahalf	0x222
	.uaword	0x1d56
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x225
	.uaword	0x1db8
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x227
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x228
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x229
	.uaword	0x714
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ID"
	.byte	0x4
	.uahalf	0x22a
	.uaword	0x1d90
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x22d
	.uaword	0x1df1
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x22f
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x230
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x231
	.uaword	0x836
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IN"
	.byte	0x4
	.uahalf	0x232
	.uaword	0x1dc9
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x235
	.uaword	0x1e2a
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x237
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x238
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x239
	.uaword	0x8de
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR0"
	.byte	0x4
	.uahalf	0x23a
	.uaword	0x1e02
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x23d
	.uaword	0x1e66
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x23f
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x240
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x241
	.uaword	0x98e
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR12"
	.byte	0x4
	.uahalf	0x242
	.uaword	0x1e3e
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x245
	.uaword	0x1ea3
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x247
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x248
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x249
	.uaword	0xa3a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR4"
	.byte	0x4
	.uahalf	0x24a
	.uaword	0x1e7b
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x24d
	.uaword	0x1edf
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x24f
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x250
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x251
	.uaword	0xae7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR8"
	.byte	0x4
	.uahalf	0x252
	.uaword	0x1eb7
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x255
	.uaword	0x1f1b
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x257
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x258
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x259
	.uaword	0xb47
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR0"
	.byte	0x4
	.uahalf	0x25a
	.uaword	0x1ef3
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x25d
	.uaword	0x1f65
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x25f
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x260
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x261
	.uaword	0xba7
	.uleb128 0x15
	.string	"B_P21"
	.byte	0x4
	.uahalf	0x262
	.uaword	0xc37
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR1"
	.byte	0x4
	.uahalf	0x263
	.uaword	0x1f2f
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x266
	.uaword	0x1fa1
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x268
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x269
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x26a
	.uaword	0xd12
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR2"
	.byte	0x4
	.uahalf	0x26b
	.uaword	0x1f79
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x26e
	.uaword	0x1fdd
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x270
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x271
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x272
	.uaword	0x10c2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR"
	.byte	0x4
	.uahalf	0x273
	.uaword	0x1fb5
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x276
	.uaword	0x2018
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x278
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x279
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x27a
	.uaword	0xda5
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR0"
	.byte	0x4
	.uahalf	0x27b
	.uaword	0x1ff0
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x27e
	.uaword	0x2054
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x280
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x281
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x282
	.uaword	0xe33
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR12"
	.byte	0x4
	.uahalf	0x283
	.uaword	0x202c
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x286
	.uaword	0x2091
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x288
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x289
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x28a
	.uaword	0xecd
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR4"
	.byte	0x4
	.uahalf	0x28b
	.uaword	0x2069
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x28e
	.uaword	0x20cd
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x290
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x291
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x292
	.uaword	0xf68
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR8"
	.byte	0x4
	.uahalf	0x293
	.uaword	0x20a5
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x296
	.uaword	0x2109
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x298
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x299
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x29a
	.uaword	0x1310
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMR"
	.byte	0x4
	.uahalf	0x29b
	.uaword	0x20e1
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x29e
	.uaword	0x2143
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x2a0
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x2a1
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x2a2
	.uaword	0x16ab
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR"
	.byte	0x4
	.uahalf	0x2a3
	.uaword	0x211b
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x2a6
	.uaword	0x217e
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x2a8
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x2a9
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x2aa
	.uaword	0x139a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR0"
	.byte	0x4
	.uahalf	0x2ab
	.uaword	0x2156
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x2ae
	.uaword	0x21ba
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x2b0
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x2b1
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x2b2
	.uaword	0x1434
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR12"
	.byte	0x4
	.uahalf	0x2b3
	.uaword	0x2192
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x2b6
	.uaword	0x21f7
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x2b8
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x2b9
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x2ba
	.uaword	0x14ca
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR4"
	.byte	0x4
	.uahalf	0x2bb
	.uaword	0x21cf
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x2be
	.uaword	0x2233
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x2c0
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x2c1
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x2c2
	.uaword	0x1561
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR8"
	.byte	0x4
	.uahalf	0x2c3
	.uaword	0x220b
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x2c6
	.uaword	0x226f
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x2c8
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x2c9
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x2ca
	.uaword	0x17e3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OUT"
	.byte	0x4
	.uahalf	0x2cb
	.uaword	0x2247
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x2ce
	.uaword	0x22a9
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x2d0
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x2d1
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x2d2
	.uaword	0x18e7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PCSR"
	.byte	0x4
	.uahalf	0x2d3
	.uaword	0x2281
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x2d6
	.uaword	0x22e4
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x2d8
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x2d9
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x2da
	.uaword	0x1a51
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDISC"
	.byte	0x4
	.uahalf	0x2db
	.uaword	0x22bc
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x2de
	.uaword	0x2320
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x2e0
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x2e1
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x2e2
	.uaword	0x1b85
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR0"
	.byte	0x4
	.uahalf	0x2e3
	.uaword	0x22f8
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.uahalf	0x2e6
	.uaword	0x235b
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.uahalf	0x2e8
	.uaword	0x273
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.uahalf	0x2e9
	.uaword	0x171
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.uahalf	0x2ea
	.uaword	0x1cc4
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR1"
	.byte	0x4
	.uahalf	0x2eb
	.uaword	0x2333
	.uleb128 0x16
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x4
	.uahalf	0x2f6
	.uaword	0x25af
	.uleb128 0x17
	.string	"OUT"
	.byte	0x4
	.uahalf	0x2f8
	.uaword	0x226f
	.byte	0
	.uleb128 0x17
	.string	"OMR"
	.byte	0x4
	.uahalf	0x2f9
	.uaword	0x2109
	.byte	0x4
	.uleb128 0x17
	.string	"ID"
	.byte	0x4
	.uahalf	0x2fa
	.uaword	0x1db8
	.byte	0x8
	.uleb128 0x17
	.string	"reserved_C"
	.byte	0x4
	.uahalf	0x2fb
	.uaword	0x283
	.byte	0xc
	.uleb128 0x17
	.string	"IOCR0"
	.byte	0x4
	.uahalf	0x2fc
	.uaword	0x1e2a
	.byte	0x10
	.uleb128 0x17
	.string	"IOCR4"
	.byte	0x4
	.uahalf	0x2fd
	.uaword	0x1ea3
	.byte	0x14
	.uleb128 0x17
	.string	"IOCR8"
	.byte	0x4
	.uahalf	0x2fe
	.uaword	0x1edf
	.byte	0x18
	.uleb128 0x17
	.string	"IOCR12"
	.byte	0x4
	.uahalf	0x2ff
	.uaword	0x1e66
	.byte	0x1c
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x300
	.uaword	0x283
	.byte	0x20
	.uleb128 0x17
	.string	"IN"
	.byte	0x4
	.uahalf	0x301
	.uaword	0x1df1
	.byte	0x24
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x302
	.uaword	0x2bf
	.byte	0x28
	.uleb128 0x17
	.string	"PDR0"
	.byte	0x4
	.uahalf	0x303
	.uaword	0x2320
	.byte	0x40
	.uleb128 0x17
	.string	"PDR1"
	.byte	0x4
	.uahalf	0x304
	.uaword	0x235b
	.byte	0x44
	.uleb128 0x17
	.string	"reserved_48"
	.byte	0x4
	.uahalf	0x305
	.uaword	0x2af
	.byte	0x48
	.uleb128 0x17
	.string	"ESR"
	.byte	0x4
	.uahalf	0x306
	.uaword	0x1d7e
	.byte	0x50
	.uleb128 0x17
	.string	"reserved_54"
	.byte	0x4
	.uahalf	0x307
	.uaword	0x29f
	.byte	0x54
	.uleb128 0x17
	.string	"PDISC"
	.byte	0x4
	.uahalf	0x308
	.uaword	0x22e4
	.byte	0x60
	.uleb128 0x17
	.string	"PCSR"
	.byte	0x4
	.uahalf	0x309
	.uaword	0x22a9
	.byte	0x64
	.uleb128 0x17
	.string	"reserved_68"
	.byte	0x4
	.uahalf	0x30a
	.uaword	0x2af
	.byte	0x68
	.uleb128 0x17
	.string	"OMSR0"
	.byte	0x4
	.uahalf	0x30b
	.uaword	0x217e
	.byte	0x70
	.uleb128 0x17
	.string	"OMSR4"
	.byte	0x4
	.uahalf	0x30c
	.uaword	0x21f7
	.byte	0x74
	.uleb128 0x17
	.string	"OMSR8"
	.byte	0x4
	.uahalf	0x30d
	.uaword	0x2233
	.byte	0x78
	.uleb128 0x17
	.string	"OMSR12"
	.byte	0x4
	.uahalf	0x30e
	.uaword	0x21ba
	.byte	0x7c
	.uleb128 0x17
	.string	"OMCR0"
	.byte	0x4
	.uahalf	0x30f
	.uaword	0x2018
	.byte	0x80
	.uleb128 0x17
	.string	"OMCR4"
	.byte	0x4
	.uahalf	0x310
	.uaword	0x2091
	.byte	0x84
	.uleb128 0x17
	.string	"OMCR8"
	.byte	0x4
	.uahalf	0x311
	.uaword	0x20cd
	.byte	0x88
	.uleb128 0x17
	.string	"OMCR12"
	.byte	0x4
	.uahalf	0x312
	.uaword	0x2054
	.byte	0x8c
	.uleb128 0x17
	.string	"OMSR"
	.byte	0x4
	.uahalf	0x313
	.uaword	0x2143
	.byte	0x90
	.uleb128 0x17
	.string	"OMCR"
	.byte	0x4
	.uahalf	0x314
	.uaword	0x1fdd
	.byte	0x94
	.uleb128 0x17
	.string	"reserved_98"
	.byte	0x4
	.uahalf	0x315
	.uaword	0x2af
	.byte	0x98
	.uleb128 0x17
	.string	"LPCR0"
	.byte	0x4
	.uahalf	0x316
	.uaword	0x1f1b
	.byte	0xa0
	.uleb128 0x17
	.string	"LPCR1"
	.byte	0x4
	.uahalf	0x317
	.uaword	0x1f65
	.byte	0xa4
	.uleb128 0x17
	.string	"LPCR2"
	.byte	0x4
	.uahalf	0x318
	.uaword	0x1fa1
	.byte	0xa8
	.uleb128 0x17
	.string	"reserved_A4"
	.byte	0x4
	.uahalf	0x319
	.uaword	0x25af
	.byte	0xac
	.uleb128 0x17
	.string	"ACCEN1"
	.byte	0x4
	.uahalf	0x31a
	.uaword	0x1d41
	.byte	0xf8
	.uleb128 0x17
	.string	"ACCEN0"
	.byte	0x4
	.uahalf	0x31b
	.uaword	0x1d04
	.byte	0xfc
	.byte	0
	.uleb128 0x9
	.uaword	0x187
	.uaword	0x25bf
	.uleb128 0xa
	.uaword	0x293
	.byte	0x4b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P"
	.byte	0x4
	.uahalf	0x31c
	.uaword	0x25cd
	.uleb128 0x19
	.uaword	0x236e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x25bf
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x5
	.byte	0x50
	.uaword	0x15c
	.uleb128 0xd
	.string	"Point"
	.byte	0x10
	.byte	0x6
	.byte	0x63
	.uaword	0x260b
	.uleb128 0x8
	.string	"x"
	.byte	0x6
	.byte	0x65
	.uaword	0x146
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x6
	.byte	0x66
	.uaword	0x146
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"ParkingSystemPacket"
	.byte	0x24
	.byte	0x6
	.byte	0x69
	.uaword	0x26a7
	.uleb128 0x8
	.string	"start_byte"
	.byte	0x6
	.byte	0x6b
	.uaword	0x198
	.byte	0
	.uleb128 0x8
	.string	"car_status"
	.byte	0x6
	.byte	0x6c
	.uaword	0x198
	.byte	0x1
	.uleb128 0x8
	.string	"car_current_position"
	.byte	0x6
	.byte	0x6d
	.uaword	0x25e8
	.byte	0x2
	.uleb128 0x8
	.string	"car_target_position"
	.byte	0x6
	.byte	0x6e
	.uaword	0x25e8
	.byte	0x12
	.uleb128 0x8
	.string	"car_command"
	.byte	0x6
	.byte	0x6f
	.uaword	0x198
	.byte	0x22
	.uleb128 0x8
	.string	"crc"
	.byte	0x6
	.byte	0x70
	.uaword	0x198
	.byte	0x23
	.byte	0
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x7
	.byte	0x5b
	.uaword	0x25d8
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x8
	.byte	0x78
	.uaword	0x26a7
	.uleb128 0x12
	.string	"CounterType"
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x26a7
	.uleb128 0x12
	.string	"TickType"
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x26a7
	.uleb128 0x12
	.string	"AlarmType"
	.byte	0x8
	.uahalf	0x1d6
	.uaword	0x26a7
	.uleb128 0x1a
	.byte	0x1
	.byte	0x8
	.uahalf	0x2b1
	.uaword	0x2921
	.uleb128 0xc
	.string	"E_OK"
	.sleb128 0
	.uleb128 0xc
	.string	"E_OS_ACCESS"
	.sleb128 1
	.uleb128 0xc
	.string	"E_OS_CALLEVEL"
	.sleb128 2
	.uleb128 0xc
	.string	"E_OS_ID"
	.sleb128 3
	.uleb128 0xc
	.string	"E_OS_LIMIT"
	.sleb128 4
	.uleb128 0xc
	.string	"E_OS_NOFUNC"
	.sleb128 5
	.uleb128 0xc
	.string	"E_OS_RESOURCE"
	.sleb128 6
	.uleb128 0xc
	.string	"E_OS_STATE"
	.sleb128 7
	.uleb128 0xc
	.string	"E_OS_VALUE"
	.sleb128 8
	.uleb128 0xc
	.string	"E_OS_SERVICEID"
	.sleb128 9
	.uleb128 0xc
	.string	"E_OS_ILLEGAL_ADDRESS"
	.sleb128 10
	.uleb128 0xc
	.string	"E_OS_MISSINGEND"
	.sleb128 11
	.uleb128 0xc
	.string	"E_OS_DISABLEDINT"
	.sleb128 12
	.uleb128 0xc
	.string	"E_OS_STACKFAULT"
	.sleb128 13
	.uleb128 0xc
	.string	"E_OS_PARAM_POINTER"
	.sleb128 14
	.uleb128 0xc
	.string	"E_OS_PROTECTION_MEMORY"
	.sleb128 15
	.uleb128 0xc
	.string	"E_OS_PROTECTION_TIME"
	.sleb128 16
	.uleb128 0xc
	.string	"E_OS_PROTECTION_ARRIVAL"
	.sleb128 17
	.uleb128 0xc
	.string	"E_OS_PROTECTION_LOCKED"
	.sleb128 18
	.uleb128 0xc
	.string	"E_OS_PROTECTION_EXCEPTION"
	.sleb128 19
	.uleb128 0xc
	.string	"E_OS_SPINLOCK"
	.sleb128 20
	.uleb128 0xc
	.string	"E_OS_INTERFERENCE_DEADLOCK"
	.sleb128 21
	.uleb128 0xc
	.string	"E_OS_NESTING_DEADLOCK"
	.sleb128 22
	.uleb128 0xc
	.string	"E_OS_CORE"
	.sleb128 23
	.uleb128 0xc
	.string	"E_OS_SYS_INIT"
	.sleb128 24
	.uleb128 0xc
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
	.sleb128 25
	.uleb128 0xc
	.string	"E_OS_SYS_TASK"
	.sleb128 26
	.uleb128 0xc
	.string	"E_OS_SYS_STACK"
	.sleb128 27
	.uleb128 0xc
	.string	"E_OS_SYS_ACT"
	.sleb128 28
	.byte	0
	.uleb128 0x12
	.string	"OsEE_status_type"
	.byte	0x8
	.uahalf	0x2d4
	.uaword	0x26fe
	.uleb128 0x12
	.string	"StatusType"
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x2921
	.uleb128 0x1b
	.string	"motor_index"
	.byte	0x1
	.byte	0xa
	.byte	0x34
	.uaword	0x298e
	.uleb128 0xc
	.string	"INDEX_FL"
	.sleb128 0
	.uleb128 0xc
	.string	"INDEX_FR"
	.sleb128 1
	.uleb128 0xc
	.string	"INDEX_RL"
	.sleb128 2
	.uleb128 0xc
	.string	"INDEX_RR"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"motor_index_t"
	.byte	0xa
	.byte	0x39
	.uaword	0x294d
	.uleb128 0x1b
	.string	"CAR_STATUS_TYPE_T"
	.byte	0x1
	.byte	0xb
	.byte	0x2e
	.uaword	0x2a6a
	.uleb128 0xc
	.string	"CAR_STATUS_READY"
	.sleb128 0
	.uleb128 0xc
	.string	"CAR_STATUS_RUNNING"
	.sleb128 1
	.uleb128 0xc
	.string	"CAR_STATUS_STOP"
	.sleb128 2
	.uleb128 0xc
	.string	"CAR_STATUS_TERMINATED"
	.sleb128 3
	.uleb128 0xc
	.string	"CAR_STATUS_ERROR_OBSTACLE"
	.sleb128 4
	.uleb128 0xc
	.string	"CAR_STATUS_ERROR_BAD_CONNECTION"
	.sleb128 5
	.uleb128 0xc
	.string	"CAR_STATUS_ERROR_HARDWARE"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CAR_STATUS_TYPE"
	.byte	0xb
	.byte	0x36
	.uaword	0x29a3
	.uleb128 0x1b
	.string	"CAR_COMMAND_TYPE_T"
	.byte	0x1
	.byte	0xb
	.byte	0x37
	.uaword	0x2b0c
	.uleb128 0xc
	.string	"CAR_COMMAND_FORCESTOP"
	.sleb128 0
	.uleb128 0xc
	.string	"CAR_COMMAND_START"
	.sleb128 1
	.uleb128 0xc
	.string	"CAR_COMMAND_STOP"
	.sleb128 2
	.uleb128 0xc
	.string	"CAR_COMMAND_RESERVED1"
	.sleb128 3
	.uleb128 0xc
	.string	"CAR_COMMAND_RESERVED2"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"CAR_COMMAND_TYPE"
	.byte	0xb
	.byte	0x3d
	.uaword	0x2a81
	.uleb128 0x1b
	.string	"ERROR_CODE_TYPE_T"
	.byte	0x1
	.byte	0xb
	.byte	0x3e
	.uaword	0x2c64
	.uleb128 0xc
	.string	"ERROR_CODE_USER_CONTROL"
	.sleb128 0
	.uleb128 0xc
	.string	"ERROR_CODE_OBSTACLE"
	.sleb128 1
	.uleb128 0xc
	.string	"ERROR_CODE_CONNECTION_LOST"
	.sleb128 2
	.uleb128 0xc
	.string	"ERROR_CODE_UNDEFINED_STATUS"
	.sleb128 3
	.uleb128 0xc
	.string	"ERROR_CODE_4"
	.sleb128 4
	.uleb128 0xc
	.string	"ERROR_CODE_5"
	.sleb128 5
	.uleb128 0xc
	.string	"ERROR_CODE_6"
	.sleb128 6
	.uleb128 0xc
	.string	"ERROR_CODE_7"
	.sleb128 7
	.uleb128 0xc
	.string	"ERROR_CODE_8"
	.sleb128 8
	.uleb128 0xc
	.string	"ERROR_CODE_9"
	.sleb128 9
	.uleb128 0xc
	.string	"ERROR_CODE_10"
	.sleb128 10
	.uleb128 0xc
	.string	"ERROR_CODE_11"
	.sleb128 11
	.uleb128 0xc
	.string	"ERROR_CODE_12"
	.sleb128 12
	.uleb128 0xc
	.string	"ERROR_CODE_13"
	.sleb128 13
	.uleb128 0xc
	.string	"ERROR_CODE_14"
	.sleb128 14
	.uleb128 0xc
	.string	"ERROR_CODE_15"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"ERROR_CODE_TYPE"
	.byte	0xb
	.byte	0x4f
	.uaword	0x2b24
	.uleb128 0xd
	.string	"Position"
	.byte	0x10
	.byte	0xb
	.byte	0x50
	.uaword	0x2ca1
	.uleb128 0x8
	.string	"x"
	.byte	0xb
	.byte	0x52
	.uaword	0x146
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0xb
	.byte	0x53
	.uaword	0x146
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"long double"
	.uleb128 0x3
	.string	"clock_t"
	.byte	0xc
	.byte	0x68
	.uaword	0x15c
	.uleb128 0x7
	.byte	0x10
	.byte	0xd
	.byte	0x25
	.uaword	0x2ced
	.uleb128 0x8
	.string	"steering_angle"
	.byte	0xd
	.byte	0x26
	.uaword	0x146
	.byte	0
	.uleb128 0x8
	.string	"speed"
	.byte	0xd
	.byte	0x27
	.uaword	0x146
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"DriveCommand"
	.byte	0xd
	.byte	0x28
	.uaword	0x2cbf
	.uleb128 0xd
	.string	"Ultrasonic"
	.byte	0xa
	.byte	0xe
	.byte	0x1e
	.uaword	0x2d5b
	.uleb128 0x8
	.string	"TRIG_PORT"
	.byte	0xe
	.byte	0x20
	.uaword	0x25d2
	.byte	0
	.uleb128 0x8
	.string	"TRIG_PIN"
	.byte	0xe
	.byte	0x21
	.uaword	0x198
	.byte	0x4
	.uleb128 0x8
	.string	"ECHO_PORT"
	.byte	0xe
	.byte	0x22
	.uaword	0x25d2
	.byte	0x5
	.uleb128 0x8
	.string	"ECHO_PIN"
	.byte	0xe
	.byte	0x23
	.uaword	0x198
	.byte	0x9
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"AppTimerISR"
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.uaword	.LFB597
	.uaword	.LFE597
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2da1
	.uleb128 0x1d
	.uaword	.LVL0
	.uaword	0x3733
	.uaword	0x2d90
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xc350
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x3763
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"startShiParkerApp"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.uaword	.LFB598
	.uaword	.LFE598
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e54
	.uleb128 0x1d
	.uaword	.LVL2
	.uaword	0x3789
	.uaword	0x2dde
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL3
	.uaword	0x37a7
	.uaword	0x2df1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL4
	.uaword	0x37a7
	.uaword	0x2e04
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL5
	.uaword	0x3789
	.uaword	0x2e1b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL6
	.uaword	0x37c8
	.uaword	0x2e38
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x37c8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"turn90"
	.byte	0x1
	.byte	0xbe
	.uaword	.LFB601
	.uaword	.LFE601
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f93
	.uleb128 0x21
	.string	"currentHallCntAvg"
	.byte	0x1
	.byte	0xc0
	.uaword	0x146
	.uaword	.LLST0
	.uleb128 0x21
	.string	"targetHallCntAvg"
	.byte	0x1
	.byte	0xc1
	.uaword	0x146
	.uaword	.LLST1
	.uleb128 0x22
	.uaword	.LVL8
	.uaword	0x37f3
	.uleb128 0x1d
	.uaword	.LVL11
	.uaword	0x37a7
	.uaword	0x2ec3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL12
	.uaword	0x380b
	.uaword	0x2ed6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL13
	.uaword	0x380b
	.uaword	0x2ee9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL14
	.uaword	0x380b
	.uaword	0x2efc
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL15
	.uaword	0x380b
	.uaword	0x2f0f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL16
	.uaword	0x3826
	.uaword	0x2f22
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL17
	.uaword	0x3826
	.uaword	0x2f35
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL18
	.uaword	0x3826
	.uaword	0x2f48
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL19
	.uaword	0x3826
	.uaword	0x2f5b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.uaword	.LVL20
	.uaword	0x37f3
	.uleb128 0x1d
	.uaword	.LVL22
	.uaword	0x384b
	.uaword	0x2f77
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL23
	.byte	0x1
	.uaword	0x37c8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"FuncWallFollowTask"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.uaword	.LFB602
	.uaword	.LFE602
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x30b5
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x21
	.string	"FrontLeftUltra"
	.byte	0x1
	.byte	0xda
	.uaword	0x146
	.uaword	.LLST2
	.uleb128 0x21
	.string	"RearLeftUltra"
	.byte	0x1
	.byte	0xdb
	.uaword	0x146
	.uaword	.LLST3
	.uleb128 0x25
	.string	"cmd"
	.byte	0x1
	.byte	0xde
	.uaword	0x2ced
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.string	"delta_p"
	.byte	0x1
	.byte	0xdf
	.uaword	0x146
	.uaword	.LLST4
	.uleb128 0x22
	.uaword	.LVL24
	.uaword	0x3864
	.uleb128 0x22
	.uaword	.LVL26
	.uaword	0x3864
	.uleb128 0x1d
	.uaword	.LVL27
	.uaword	0x388c
	.uaword	0x3046
	.uleb128 0x1e
	.byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x146
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL30
	.uaword	0x38b9
	.uaword	0x306a
	.uleb128 0x1e
	.byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x146
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL34
	.uaword	0x3826
	.uaword	0x307d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL36
	.uaword	0x3826
	.uaword	0x3090
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL38
	.uaword	0x3826
	.uaword	0x30a3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL40
	.byte	0x1
	.uaword	0x3826
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"makePacket"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.uaword	.LFB604
	.uaword	.LFE604
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x30e2
	.uleb128 0x26
	.string	"dst"
	.byte	0x1
	.byte	0xef
	.uaword	0x30e2
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x260b
	.uleb128 0x1c
	.byte	0x1
	.string	"FuncPacketSendTask"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.uaword	.LFB603
	.uaword	.LFE603
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3153
	.uleb128 0x1d
	.uaword	.LVL42
	.uaword	0x3789
	.uaword	0x312d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.uleb128 0x1e
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL43
	.uaword	0x30b5
	.uaword	0x3141
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL44
	.byte	0x1
	.uaword	0x38da
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"updateStatus"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.uaword	.LFB605
	.uaword	.LFE605
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3185
	.uleb128 0x26
	.string	"packet"
	.byte	0x1
	.byte	0xf9
	.uaword	0x3185
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x318b
	.uleb128 0x5
	.uaword	0x260b
	.uleb128 0x27
	.byte	0x1
	.string	"handleError"
	.byte	0x1
	.uahalf	0x103
	.byte	0x1
	.uaword	.LFB606
	.uaword	.LFE606
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x32a1
	.uleb128 0x28
	.string	"errorCode"
	.byte	0x1
	.uahalf	0x103
	.uaword	0x2c64
	.uaword	.LLST5
	.uleb128 0x1d
	.uaword	.LVL48
	.uaword	0x37a7
	.uaword	0x31da
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL49
	.uaword	0x37a7
	.uaword	0x31ed
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL50
	.uaword	0x380b
	.uaword	0x3200
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL51
	.uaword	0x380b
	.uaword	0x3213
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL52
	.uaword	0x380b
	.uaword	0x3226
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL53
	.uaword	0x380b
	.uaword	0x3239
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL54
	.uaword	0x3789
	.uaword	0x325f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.uleb128 0x1e
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1e
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL55
	.uaword	0x38f5
	.uaword	0x3272
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL56
	.uaword	0x3789
	.uaword	0x3290
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC5
	.uleb128 0x1e
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL57
	.byte	0x1
	.uaword	0x38f5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"FuncShiParkerAppTask"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB599
	.uaword	.LFE599
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x34bf
	.uleb128 0x1d
	.uaword	.LVL58
	.uaword	0x3789
	.uaword	0x32e1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC6
	.byte	0
	.uleb128 0x22
	.uaword	.LVL59
	.uaword	0x3917
	.uleb128 0x1d
	.uaword	.LVL60
	.uaword	0x37a7
	.uaword	0x32fd
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL61
	.uaword	0x37a7
	.uaword	0x3310
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL62
	.uaword	0x37a7
	.uaword	0x3323
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x29
	.uaword	.LVL63
	.byte	0x1
	.uaword	0x37c8
	.uleb128 0x1d
	.uaword	.LVL64
	.uaword	0x380b
	.uaword	0x3340
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL65
	.uaword	0x380b
	.uaword	0x3353
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL66
	.uaword	0x380b
	.uaword	0x3366
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL67
	.uaword	0x380b
	.uaword	0x3379
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL68
	.uaword	0x37a7
	.uaword	0x338c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL69
	.uaword	0x37c8
	.uaword	0x33a9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL70
	.uaword	0x380b
	.uaword	0x33bc
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL71
	.uaword	0x380b
	.uaword	0x33cf
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL72
	.uaword	0x380b
	.uaword	0x33e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL73
	.uaword	0x380b
	.uaword	0x33f5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL74
	.uaword	0x3789
	.uaword	0x340c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC7
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL75
	.uaword	0x38f5
	.uaword	0x341f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL76
	.uaword	0x37a7
	.uaword	0x3432
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL77
	.uaword	0x37a7
	.uaword	0x3445
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL78
	.uaword	0x37a7
	.uaword	0x3458
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL79
	.uaword	0x37a7
	.uaword	0x346b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.uaword	.LVL80
	.byte	0x1
	.uaword	0x3917
	.uleb128 0x1d
	.uaword	.LVL81
	.uaword	0x37a7
	.uaword	0x3488
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL82
	.uaword	0x37c8
	.uaword	0x34a5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x22
	.uaword	.LVL83
	.uaword	0x37c8
	.uleb128 0x1f
	.uaword	.LVL84
	.byte	0x1
	.uaword	0x3190
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"FuncAvoidObstacleTask"
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.uaword	.LFB600
	.uaword	.LFE600
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3540
	.uleb128 0x21
	.string	"dist"
	.byte	0x1
	.byte	0xb6
	.uaword	0x146
	.uaword	.LLST6
	.uleb128 0x22
	.uaword	.LVL85
	.uaword	0x3917
	.uleb128 0x22
	.uaword	.LVL86
	.uaword	0x3864
	.uleb128 0x1d
	.uaword	.LVL88
	.uaword	0x38b9
	.uaword	0x352f
	.uleb128 0x1e
	.byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x146
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC8
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL91
	.byte	0x1
	.uaword	0x3190
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.uaword	0x219
	.uaword	0x3550
	.uleb128 0xa
	.uaword	0x293
	.byte	0xf
	.byte	0
	.uleb128 0x25
	.string	"errorMessages"
	.byte	0xb
	.byte	0x56
	.uaword	0x356b
	.byte	0x5
	.byte	0x3
	.uaword	errorMessages
	.uleb128 0x5
	.uaword	0x3540
	.uleb128 0x2a
	.string	"pid_prev_error"
	.byte	0xd
	.byte	0x20
	.uaword	0x146
	.byte	0x8
	.uaword	0
	.uaword	0
	.uleb128 0x2a
	.string	"pid_integral"
	.byte	0xd
	.byte	0x21
	.uaword	0x146
	.byte	0x8
	.uaword	0
	.uaword	0
	.uleb128 0x2b
	.string	"pid_last_time"
	.byte	0xd
	.byte	0x22
	.uaword	0x2cb0
	.byte	0
	.uleb128 0x25
	.string	"carStatusPacket"
	.byte	0x1
	.byte	0x10
	.uaword	0x260b
	.byte	0x5
	.byte	0x3
	.uaword	carStatusPacket
	.uleb128 0x25
	.string	"carStatus"
	.byte	0x1
	.byte	0x11
	.uaword	0x2a6a
	.byte	0x5
	.byte	0x3
	.uaword	carStatus
	.uleb128 0x25
	.string	"carCommand"
	.byte	0x1
	.byte	0x12
	.uaword	0x2b0c
	.byte	0x5
	.byte	0x3
	.uaword	carCommand
	.uleb128 0x25
	.string	"currentPosition"
	.byte	0x1
	.byte	0x13
	.uaword	0x2c7b
	.byte	0x5
	.byte	0x3
	.uaword	currentPosition
	.uleb128 0x25
	.string	"targetPosition"
	.byte	0x1
	.byte	0x14
	.uaword	0x2c7b
	.byte	0x5
	.byte	0x3
	.uaword	targetPosition
	.uleb128 0x9
	.uaword	0x259
	.uaword	0x3657
	.uleb128 0xa
	.uaword	0x293
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0xa7
	.uaword	0x3674
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x3647
	.uleb128 0x2d
	.string	"g_isAppRunning"
	.byte	0x1
	.byte	0xf
	.uaword	0x178
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_isAppRunning
	.uleb128 0x2c
	.string	"g_Ultrasonic_FL"
	.byte	0xe
	.byte	0x26
	.uaword	0x2d01
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"g_Ultrasonic_FRONT"
	.byte	0xe
	.byte	0x27
	.uaword	0x2d01
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"g_Ultrasonic_RL"
	.byte	0xe
	.byte	0x28
	.uaword	0x2d01
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"motor_power_normal"
	.byte	0x1
	.byte	0xb
	.uaword	0x3705
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	motor_power_normal
	.uleb128 0x19
	.uaword	0x370a
	.uleb128 0x5
	.uaword	0x146
	.uleb128 0x2d
	.string	"Kp_rad_to_delta_power"
	.byte	0x1
	.byte	0xc
	.uaword	0x3705
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Kp_rad_to_delta_power
	.uleb128 0x2e
	.byte	0x1
	.string	"osEE_tc_stm_set_sr1_next_match"
	.byte	0xf
	.uahalf	0x3eb
	.byte	0x1
	.byte	0x1
	.uaword	0x3763
	.uleb128 0x2f
	.uaword	0x26a7
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IncrementCounter"
	.byte	0x11
	.uahalf	0x45c
	.byte	0x1
	.uaword	0x293a
	.byte	0x1
	.uaword	0x3789
	.uleb128 0x2f
	.uaword	0x26c7
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"printfSerial"
	.byte	0x10
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.uaword	0x37a7
	.uleb128 0x2f
	.uaword	0x219
	.uleb128 0x32
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"CancelAlarm"
	.byte	0x11
	.uahalf	0x313
	.byte	0x1
	.uaword	0x293a
	.byte	0x1
	.uaword	0x37c8
	.uleb128 0x2f
	.uaword	0x26ec
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"SetRelAlarm"
	.byte	0x11
	.uahalf	0x294
	.byte	0x1
	.uaword	0x293a
	.byte	0x1
	.uaword	0x37f3
	.uleb128 0x2f
	.uaword	0x26ec
	.uleb128 0x2f
	.uaword	0x26db
	.uleb128 0x2f
	.uaword	0x26db
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"getHallCntAvg"
	.byte	0x13
	.byte	0x21
	.byte	0x1
	.uaword	0x146
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"motor_stop"
	.byte	0xa
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uaword	0x3826
	.uleb128 0x2f
	.uaword	0x298e
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"set_motor_power"
	.byte	0xa
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uaword	0x384b
	.uleb128 0x2f
	.uaword	0x298e
	.uleb128 0x2f
	.uaword	0x146
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"delay_ms"
	.byte	0x10
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.uaword	0x3864
	.uleb128 0x2f
	.uaword	0x15c
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"getUltrasonic"
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.uaword	0x146
	.byte	0x1
	.uaword	0x3886
	.uleb128 0x2f
	.uaword	0x3886
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d01
	.uleb128 0x34
	.byte	0x1
	.string	"wall_follow_control"
	.byte	0xd
	.byte	0x2c
	.byte	0x1
	.uaword	0x2ced
	.byte	0x1
	.uaword	0x38b9
	.uleb128 0x2f
	.uaword	0x146
	.uleb128 0x2f
	.uaword	0x146
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"printDouble"
	.byte	0x10
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.uaword	0x38da
	.uleb128 0x2f
	.uaword	0x219
	.uleb128 0x2f
	.uaword	0x146
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"sendPacket"
	.byte	0x12
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.uaword	0x38f5
	.uleb128 0x2f
	.uaword	0x3185
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"ActivateTask"
	.byte	0x11
	.uahalf	0x178
	.byte	0x1
	.uaword	0x293a
	.byte	0x1
	.uaword	0x3917
	.uleb128 0x2f
	.uaword	0x26b7
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"TerminateTask"
	.byte	0x11
	.uahalf	0x1c9
	.byte	0x1
	.uaword	0x293a
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x14
	.uleb128 0x17
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
	.uleb128 0x15
	.uleb128 0xd
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-1-.Ltext0
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-1-.Ltext0
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL11-1-.Ltext0
	.uaword	.LFE601-.Ltext0
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL26-1-.Ltext0
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL26-1-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-1-.Ltext0
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL30-1-.Ltext0
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL30-1-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL47-.Ltext0
	.uaword	.LFE606-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL87-.Ltext0
	.uaword	.LVL88-1-.Ltext0
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL88-1-.Ltext0
	.uaword	.LFE600-.Ltext0
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB2-.Ltext0
	.uaword	.LBE2-.Ltext0
	.uaword	.LBB3-.Ltext0
	.uaword	.LBE3-.Ltext0
	.uaword	.LBB4-.Ltext0
	.uaword	.LBE4-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_0"
.LASF4:
	.string	"reserved_2"
.LASF2:
	.string	"reserved_8"
.LASF7:
	.string	"reserved_12"
.LASF1:
	.string	"reserved_16"
.LASF5:
	.string	"reserved_20"
.LASF3:
	.string	"reserved_24"
.LASF6:
	.string	"reserved_28"
	.extern	g_Ultrasonic_FRONT,STT_OBJECT,10
	.extern	TerminateTask,STT_FUNC,0
	.extern	ActivateTask,STT_FUNC,0
	.extern	sendPacket,STT_FUNC,0
	.extern	printDouble,STT_FUNC,0
	.extern	wall_follow_control,STT_FUNC,0
	.extern	g_Ultrasonic_RL,STT_OBJECT,10
	.extern	getUltrasonic,STT_FUNC,0
	.extern	g_Ultrasonic_FL,STT_OBJECT,10
	.extern	delay_ms,STT_FUNC,0
	.extern	set_motor_power,STT_FUNC,0
	.extern	motor_stop,STT_FUNC,0
	.extern	getHallCntAvg,STT_FUNC,0
	.extern	SetRelAlarm,STT_FUNC,0
	.extern	CancelAlarm,STT_FUNC,0
	.extern	printfSerial,STT_FUNC,0
	.extern	IncrementCounter,STT_FUNC,0
	.extern	osEE_tc_stm_set_sr1_next_match,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
