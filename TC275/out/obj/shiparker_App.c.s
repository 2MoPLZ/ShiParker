	.file	"shiparker_App.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	AppTimerISR
	.type	AppTimerISR, @function
AppTimerISR:
.LFB597:
	.file 1 "C:\\project\\SHIPAR~1\\TC275\\shiparker_App.c"
	.loc 1 21 0
	.loc 1 22 0
	mov.u	%d4, 50000
	call	osEE_tc_stm_set_sr1_next_match
.LVL0:
	.loc 1 23 0
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
	.loc 1 27 0
	.loc 1 28 0
	movh.a	%a15, hi:g_isAppRunning
	ld.bu	%d15, [%a15] lo:g_isAppRunning
	jne	%d15, 1, .L3
	.loc 1 30 0
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	call	printfSerial
.LVL2:
	.loc 1 31 0
	mov	%d4, 1
	call	CancelAlarm
.LVL3:
	.loc 1 32 0
	mov	%d4, 0
	call	CancelAlarm
.LVL4:
	j	.L4
.L3:
	.loc 1 36 0
	movh.a	%a4, hi:.LC1
	lea	%a4, [%a4] lo:.LC1
	call	printfSerial
.LVL5:
.L4:
	.loc 1 38 0
	mov	%d15, 1
	st.b	[%a15] lo:g_isAppRunning, %d15
	.loc 1 39 0
	mov	%d15, 0
	movh.a	%a15, hi:carStatus
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 40 0
	movh.a	%a15, hi:currentDirection
	.loc 1 41 0
	mov	%e2, 0
	.loc 1 40 0
	st.b	[%a15] lo:currentDirection, %d15
	.loc 1 41 0
	movh.a	%a15, hi:currentPosition
	lea	%a15, [%a15] lo:currentPosition
	st.d	[%a15]0, %e2
	.loc 1 42 0
	st.d	[%a15] 8, %e2
	.loc 1 43 0
	movh.a	%a15, hi:targetPosition
	movh	%d3, 49614
	mov	%d2, 0
	addi	%d3, %d3, -12955
	lea	%a15, [%a15] lo:targetPosition
	st.d	[%a15]0, %e2
	.loc 1 44 0
	st.d	[%a15] 8, %e2
	.loc 1 45 0
	mov	%d15, 2
	movh.a	%a15, hi:carCommand
	st.b	[%a15] lo:carCommand, %d15
	.loc 1 46 0
	movh.a	%a15, hi:motor_power_normal
	lea	%a15, [%a15] lo:motor_power_normal
	ld.d	%e6, [%a15]0
	mov	%d4, 0
	call	set_motor_power
.LVL6:
	.loc 1 47 0
	ld.d	%e6, [%a15]0
	mov	%d4, 2
	call	set_motor_power
.LVL7:
	.loc 1 48 0
	ld.d	%e6, [%a15]0
	mov	%d4, 1
	call	set_motor_power
.LVL8:
	.loc 1 49 0
	ld.d	%e6, [%a15]0
	mov	%d4, 3
	call	set_motor_power
.LVL9:
	.loc 1 50 0
	mov	%d4, 0
	call	motor_stop
.LVL10:
	.loc 1 51 0
	mov	%d4, 1
	call	motor_stop
.LVL11:
	.loc 1 52 0
	mov	%d4, 2
	call	motor_stop
.LVL12:
	.loc 1 53 0
	mov	%d4, 3
	call	motor_stop
.LVL13:
	.loc 1 54 0
	mov	%d4, 0
	mov	%d5, 2
	mov	%d6, 4
	call	SetRelAlarm
.LVL14:
	.loc 1 55 0
	mov	%d4, 1
	mov	%d5, 1
	mov	%d6, 30
	j	SetRelAlarm
.LVL15:
.LFE598:
	.size	startShiParkerApp, .-startShiParkerApp
.section .rodata,"a",@progbits
.LC2:
	.string	"Exit ShiParker...\n"
.section .text,"ax",@progbits
	.align 1
	.global	exitShiParkerApp
	.type	exitShiParkerApp, @function
exitShiParkerApp:
.LFB599:
	.loc 1 58 0
	.loc 1 59 0
	movh.a	%a4, hi:.LC2
	lea	%a4, [%a4] lo:.LC2
	call	printfSerial
.LVL16:
	.loc 1 60 0
	mov	%d4, 0
	call	motor_stop
.LVL17:
	.loc 1 61 0
	mov	%d4, 1
	call	motor_stop
.LVL18:
	.loc 1 62 0
	mov	%d4, 2
	call	motor_stop
.LVL19:
	.loc 1 63 0
	mov	%d4, 3
	call	motor_stop
.LVL20:
	.loc 1 65 0
	mov	%d15, 3
	movh.a	%a15, hi:carStatus
	.loc 1 67 0
	mov	%d4, 11
	.loc 1 65 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 67 0
	call	ActivateTask
.LVL21:
	.loc 1 68 0
	mov	%d4, 3
	call	CancelAlarm
.LVL22:
	.loc 1 69 0
	mov	%d4, 1
	call	CancelAlarm
.LVL23:
	.loc 1 70 0
	mov	%d4, 2
	call	CancelAlarm
.LVL24:
	.loc 1 73 0
	mov	%d15, 0
	.loc 1 71 0
	mov	%d4, 0
	.loc 1 73 0
	movh.a	%a15, hi:g_isAppRunning
	.loc 1 71 0
	call	CancelAlarm
.LVL25:
	.loc 1 73 0
	st.b	[%a15] lo:g_isAppRunning, %d15
	ret
.LFE599:
	.size	exitShiParkerApp, .-exitShiParkerApp
	.global	__adddf3
.section .rodata,"a",@progbits
.LC3:
	.string	"asd:"
	.global	__ltdf2
.section .text,"ax",@progbits
	.align 1
	.global	turn90
	.type	turn90, @function
turn90:
.LFB602:
	.loc 1 220 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 221 0
	call	getHallCntAvg
.LVL26:
	st.d	[%SP]0, %e2
	.loc 1 222 0
	ld.d	%e4, [%SP]0
	mov	%d6, 0
	movh	%d7, 16402
	call	__adddf3
.LVL27:
	.loc 1 224 0
	mov	%d4, 3
	.loc 1 222 0
	st.d	[%SP] 8, %e2
	.loc 1 224 0
	call	CancelAlarm
.LVL28:
	.loc 1 226 0
	mov	%d4, 0
	call	motor_stop
.LVL29:
	.loc 1 227 0
	mov	%d4, 1
	call	motor_stop
.LVL30:
	.loc 1 228 0
	mov	%d4, 2
	call	motor_stop
.LVL31:
	.loc 1 229 0
	mov	%d4, 3
	call	motor_stop
.LVL32:
	.loc 1 231 0
	mov	%d4, 0
	call	motor_run_forward
.LVL33:
	.loc 1 232 0
	mov	%d4, 2
	call	motor_run_forward
.LVL34:
	.loc 1 233 0
	mov	%d4, 1
	call	motor_run_backward
.LVL35:
	.loc 1 234 0
	mov	%d4, 3
	call	motor_run_backward
.LVL36:
	.loc 1 236 0
	movh.a	%a15, hi:motor_power_turn
	lea	%a15, [%a15] lo:motor_power_turn
	ld.d	%e6, [%a15]0
	mov	%d4, 0
	call	set_motor_power
.LVL37:
	.loc 1 237 0
	ld.d	%e6, [%a15]0
	mov	%d4, 1
	call	set_motor_power
.LVL38:
	.loc 1 238 0
	ld.d	%e6, [%a15]0
	mov	%d4, 2
	call	set_motor_power
.LVL39:
	.loc 1 239 0
	ld.d	%e6, [%a15]0
	mov	%d4, 3
	call	set_motor_power
.LVL40:
	.loc 1 244 0
	movh.a	%a15, hi:.LC3
	.loc 1 241 0
	ld.d	%e2, [%SP]0
	.loc 1 244 0
	lea	%a15, [%a15] lo:.LC3
.L8:
	.loc 1 241 0 discriminator 1
	ld.d	%e4, [%SP]0
	ld.d	%e6, [%SP] 8
	call	__ltdf2
.LVL41:
	jgez	%d2, .L10
	.loc 1 243 0 discriminator 3
	mov	%d4, 10
	call	delay_ms
.LVL42:
	.loc 1 244 0 discriminator 3
	ld.d	%e4, [%SP]0
	mov.aa	%a4, %a15
	call	printDouble
.LVL43:
	.loc 1 241 0 discriminator 3
	call	getHallCntAvg
.LVL44:
	st.d	[%SP]0, %e2
	j	.L8
.L10:
	.loc 1 247 0
	movh.a	%a15, hi:currentDirection
	ld.bu	%d15, [%a15] lo:currentDirection
	.loc 1 254 0
	mov	%d4, 0
	.loc 1 247 0
	add	%d15, 1
	and	%d15, %d15, 3
	st.b	[%a15] lo:currentDirection, %d15
	.loc 1 249 0
	mov	%d15, 0
	movh.a	%a15, hi:g_FLHallCnt
	st.h	[%a15] lo:g_FLHallCnt, %d15
	.loc 1 250 0
	movh.a	%a15, hi:g_FRHallCnt
	st.h	[%a15] lo:g_FRHallCnt, %d15
	.loc 1 251 0
	movh.a	%a15, hi:g_RLHallCnt
	st.h	[%a15] lo:g_RLHallCnt, %d15
	.loc 1 252 0
	movh.a	%a15, hi:g_RRHallCnt
	st.h	[%a15] lo:g_RRHallCnt, %d15
	.loc 1 254 0
	movh.a	%a15, hi:motor_power_normal
	lea	%a15, [%a15] lo:motor_power_normal
	ld.d	%e6, [%a15]0
	call	set_motor_power
.LVL45:
	.loc 1 255 0
	ld.d	%e6, [%a15]0
	mov	%d4, 1
	call	set_motor_power
.LVL46:
	.loc 1 256 0
	ld.d	%e6, [%a15]0
	mov	%d4, 2
	call	set_motor_power
.LVL47:
	.loc 1 257 0
	ld.d	%e6, [%a15]0
	mov	%d4, 3
	call	set_motor_power
.LVL48:
	.loc 1 259 0
	mov	%d4, 3
	mov	%d5, 1
	mov	%d6, 4
	j	SetRelAlarm
.LVL49:
.LFE602:
	.size	turn90, .-turn90
	.global	__muldf3
	.align 1
	.global	calculateCurrentPos
	.type	calculateCurrentPos, @function
calculateCurrentPos:
.LFB603:
	.loc 1 262 0
	.loc 1 263 0
	movh.a	%a15, hi:currentDirection
	ld.bu	%d15, [%a15] lo:currentDirection
	jge.u	%d15, 4, .L11
	movh.a	%a2, hi:.L14
	lea	%a2, [%a2] lo:.L14
	addsc.a	%a2, %a2, %d15, 2
	movh.a	%a15, hi:currentPosition
	lea	%a15, [%a15] lo:currentPosition
	ji	%a2
	.align 2
	.align 2
.L14:
	.code32
	j	.L16
	.code32
	j	.L17
	.code32
	j	.L16
	.code32
	j	.L17
.L16:
	.loc 1 272 0
	call	getHallCntAvg
.LVL50:
	movh	%d7, 16401
	mov	%e4, %d3, %d2
	movh	%d6, 52429
	addi	%d7, %d7, -13108
	addi	%d6, %d6, -13107
	call	__muldf3
.LVL51:
	st.d	[%a15] 8, %e2
	.loc 1 273 0
	ret
.L17:
	.loc 1 275 0
	call	getHallCntAvg
.LVL52:
	movh	%d7, 16401
	mov	%e4, %d3, %d2
	movh	%d6, 52429
	addi	%d7, %d7, -13108
	addi	%d6, %d6, -13107
	call	__muldf3
.LVL53:
	st.d	[%a15]0, %e2
.L11:
	ret
.LFE603:
	.size	calculateCurrentPos, .-calculateCurrentPos
.section .rodata,"a",@progbits
.LC4:
	.string	"g_Ultrasonic_FL : "
.LC5:
	.string	"g_Ultrasonic_RL : "
.LC6:
	.string	"steering :"
	.global	__subdf3
	.global	__gedf2
.section .text,"ax",@progbits
	.align 1
	.global	FuncWallFollowTask
	.type	FuncWallFollowTask, @function
FuncWallFollowTask:
.LFB604:
	.loc 1 284 0
	.loc 1 285 0
	movh.a	%a15, hi:g_isAppRunning
	ld.bu	%d15, [%a15] lo:g_isAppRunning
	.loc 1 284 0
	sub.a	%SP, 16
.LCFI1:
	.loc 1 285 0
	jz	%d15, .L18
	.loc 1 285 0 is_stmt 0 discriminator 1
	movh.a	%a13, hi:carStatus
	ld.bu	%d15, [%a13] lo:carStatus
	jne	%d15, 1, .L18
.LBB4:
	.loc 1 289 0 is_stmt 1
	movh.a	%a4, hi:g_Ultrasonic_FL
	.loc 1 288 0
	mov	%d15, 20
	movh.a	%a15, hi:min_dist_left
	.loc 1 289 0
	lea	%a4, [%a4] lo:g_Ultrasonic_FL
	.loc 1 288 0
	st.h	[%a15] lo:min_dist_left, %d15
	.loc 1 289 0
	call	getUltrasonic
.LVL54:
	movh.a	%a12, hi:FrontUltra
	.loc 1 290 0
	movh.a	%a4, hi:g_Ultrasonic_RL
	.loc 1 289 0
	lea	%a12, [%a12] lo:FrontUltra
	.loc 1 290 0
	lea	%a4, [%a4] lo:g_Ultrasonic_RL
	.loc 1 289 0
	st.d	[%a12]0, %e2
	.loc 1 290 0
	call	getUltrasonic
.LVL55:
	movh.a	%a15, hi:RearUltra
	lea	%a15, [%a15] lo:RearUltra
	st.d	[%a15]0, %e2
	.loc 1 291 0
	movh.a	%a4, hi:.LC4
	ld.d	%e4, [%a12]0
	lea	%a4, [%a4] lo:.LC4
	call	printDouble
.LVL56:
	.loc 1 292 0
	movh.a	%a4, hi:.LC5
	ld.d	%e4, [%a15]0
	lea	%a4, [%a4] lo:.LC5
	call	printDouble
.LVL57:
	.loc 1 308 0
	ld.d	%e4, [%a12]0
	mov.aa	%a4, %SP
	ld.d	%e6, [%a15]0
	call	wall_follow_control
.LVL58:
	ld.d	%e8, [%SP]0
.LVL59:
	.loc 1 309 0
	movh.a	%a4, hi:.LC6
	mov	%e4, %d9, %d8
	lea	%a4, [%a4] lo:.LC6
	call	printDouble
.LVL60:
	.loc 1 310 0
	movh.a	%a15, hi:Kp_rad_to_delta_power
	mov	%e4, %d9, %d8
	lea	%a15, [%a15] lo:Kp_rad_to_delta_power
	ld.d	%e6, [%a15]0
.LVL61:
	call	__muldf3
.LVL62:
	.loc 1 311 0
	imask	%e6, 0, 21, 9
	mov	%e4, %d3, %d2
	movh.a	%a15, hi:motor_power_normal
	call	__muldf3
.LVL63:
	lea	%a15, [%a15] lo:motor_power_normal
	ld.d	%e10, [%a15]0
	mov	%e6, %d3, %d2
	mov	%e4, %d11, %d10
	mov	%e8, %d3, %d2
.LVL64:
	call	__adddf3
.LVL65:
	mov	%e6, %d3, %d2
	mov	%d4, 0
	call	set_motor_power
.LVL66:
	.loc 1 312 0
	mov	%e6, %d9, %d8
	ld.d	%e4, [%a15]0
	call	__adddf3
.LVL67:
	mov	%e6, %d3, %d2
	mov	%d4, 2
	call	set_motor_power
.LVL68:
	.loc 1 313 0
	mov	%e6, %d9, %d8
	ld.d	%e4, [%a15]0
	call	__subdf3
.LVL69:
	mov	%e6, %d3, %d2
	mov	%d4, 1
	call	set_motor_power
.LVL70:
	.loc 1 314 0
	mov	%e6, %d9, %d8
	ld.d	%e4, [%a15]0
	call	__subdf3
.LVL71:
	mov	%e6, %d3, %d2
	mov	%d4, 3
	call	set_motor_power
.LVL72:
	.loc 1 315 0
	mov	%d4, 0
	call	motor_run_forward
.LVL73:
	.loc 1 316 0
	mov	%d4, 1
	call	motor_run_forward
.LVL74:
	.loc 1 317 0
	mov	%d4, 2
	call	motor_run_forward
.LVL75:
	.loc 1 322 0
	movh.a	%a15, hi:currentDirection
	.loc 1 318 0
	mov	%d4, 3
	call	motor_run_forward
.LVL76:
	.loc 1 320 0
	call	calculateCurrentPos
.LVL77:
	.loc 1 322 0
	ld.bu	%d15, [%a15] lo:currentDirection
	jnz	%d15, .L20
	.loc 1 322 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:currentPosition
	lea	%a15, [%a15] lo:currentPosition
	ld.d	%e4, [%a15] 8
	movh.a	%a15, hi:targetPosition
	lea	%a15, [%a15] lo:targetPosition
	ld.d	%e6, [%a15] 8
	call	__gedf2
.LVL78:
	jltz	%d2, .L18
	.loc 1 324 0 is_stmt 1
	mov	%d4, 0
	call	motor_stop
.LVL79:
	.loc 1 325 0
	mov	%d4, 1
	call	motor_stop
.LVL80:
	.loc 1 326 0
	mov	%d4, 2
	call	motor_stop
.LVL81:
	.loc 1 327 0
	mov	%d4, 3
	call	motor_stop
.LVL82:
.LBE4:
	.loc 1 342 0
	lea	%SP, [%SP] 16
.LVL83:
.LBB5:
	.loc 1 329 0
	j	turn90
.LVL84:
.L20:
	.loc 1 332 0
	jne	%d15, 1, .L18
	.loc 1 332 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:currentPosition
	lea	%a15, [%a15] lo:currentPosition
	ld.d	%e4, [%a15]0
	movh.a	%a15, hi:targetPosition
	lea	%a15, [%a15] lo:targetPosition
	ld.d	%e6, [%a15]0
	call	__gedf2
.LVL85:
	jltz	%d2, .L18
	.loc 1 334 0 is_stmt 1
	mov	%d4, 0
	call	motor_stop
.LVL86:
	.loc 1 335 0
	mov	%d4, 1
	call	motor_stop
.LVL87:
	.loc 1 336 0
	mov	%d4, 2
	call	motor_stop
.LVL88:
	.loc 1 339 0
	mov	%d15, 3
	.loc 1 337 0
	mov	%d4, 3
	call	motor_stop
.LVL89:
	.loc 1 339 0
	st.b	[%a13] lo:carStatus, %d15
.LVL90:
.L18:
	ret
.LBE5:
.LFE604:
	.size	FuncWallFollowTask, .-FuncWallFollowTask
	.global	__fixdfsi
	.align 1
	.global	makePacket
	.type	makePacket, @function
makePacket:
.LFB606:
	.loc 1 352 0
.LVL91:
	.loc 1 353 0
	mov	%d15, -86
	.loc 1 354 0
	movh.a	%a2, hi:carStatus
	.loc 1 353 0
	st.b	[%a4]0, %d15
	.loc 1 354 0
	ld.bu	%d15, [%a2] lo:carStatus
	.loc 1 355 0
	movh.a	%a2, hi:carCommand
	.loc 1 354 0
	st.b	[%a4] 1, %d15
	.loc 1 356 0
	movh.a	%a12, hi:currentPosition
	.loc 1 355 0
	ld.bu	%d15, [%a2] lo:carCommand
	.loc 1 356 0
	lea	%a12, [%a12] lo:currentPosition
	.loc 1 355 0
	st.b	[%a4] 18, %d15
	.loc 1 356 0
	ld.d	%e4, [%a12]0
	.loc 1 352 0
	mov.aa	%a15, %a4
	.loc 1 356 0
	call	__fixdfsi
.LVL92:
	extr.u	%d15, %d2, 8, 8
	st.b	[%a15] 2, %d2
	st.b	[%a15] 3, %d15
	extr.u	%d15, %d2, 16, 8
	sh	%d2, %d2, -24
	.loc 1 357 0
	ld.d	%e4, [%a12] 8
	.loc 1 356 0
	st.b	[%a15] 4, %d15
	st.b	[%a15] 5, %d2
	.loc 1 357 0
	call	__fixdfsi
.LVL93:
	extr.u	%d15, %d2, 8, 8
	.loc 1 358 0
	movh.a	%a12, hi:targetPosition
	.loc 1 357 0
	st.b	[%a15] 7, %d15
	extr.u	%d15, %d2, 16, 8
	st.b	[%a15] 6, %d2
	.loc 1 358 0
	lea	%a12, [%a12] lo:targetPosition
	.loc 1 357 0
	sh	%d2, %d2, -24
	st.b	[%a15] 8, %d15
	.loc 1 358 0
	ld.d	%e4, [%a12]0
	.loc 1 357 0
	st.b	[%a15] 9, %d2
	.loc 1 358 0
	call	__fixdfsi
.LVL94:
	extr.u	%d15, %d2, 8, 8
	st.b	[%a15] 10, %d2
	st.b	[%a15] 11, %d15
	extr.u	%d15, %d2, 16, 8
	sh	%d2, %d2, -24
	st.b	[%a15] 12, %d15
	st.b	[%a15] 13, %d2
	.loc 1 359 0
	ld.d	%e4, [%a12] 8
	call	__fixdfsi
.LVL95:
	extr.u	%d15, %d2, 8, 8
	st.b	[%a15] 14, %d2
	st.b	[%a15] 15, %d15
	extr.u	%d15, %d2, 16, 8
	sh	%d2, %d2, -24
	st.b	[%a15] 16, %d15
	st.b	[%a15] 17, %d2
	ret
.LFE606:
	.size	makePacket, .-makePacket
	.align 1
	.global	FuncPacketSendTask
	.type	FuncPacketSendTask, @function
FuncPacketSendTask:
.LFB605:
	.loc 1 346 0
	.loc 1 347 0
	movh.a	%a15, hi:carStatusPacket
	lea	%a15, [%a15] lo:carStatusPacket
	mov.aa	%a4, %a15
	call	makePacket
.LVL96:
	.loc 1 348 0
	mov.aa	%a4, %a15
	j	sendPacket
.LVL97:
.LFE605:
	.size	FuncPacketSendTask, .-FuncPacketSendTask
	.global	__floatsidf
	.align 1
	.global	updateStatus
	.type	updateStatus, @function
updateStatus:
.LFB607:
	.loc 1 362 0
.LVL98:
	.loc 1 363 0
	ld.bu	%d15, [%a4] 18
	movh.a	%a2, hi:carCommand
	st.b	[%a2] lo:carCommand, %d15
	.loc 1 364 0
	ld.bu	%d15, [%a4] 11
	ld.bu	%d3, [%a4] 10
	sh	%d15, %d15, 8
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a4] 12
	ld.bu	%d4, [%a4] 13
	sh	%d15, %d15, 16
	or	%d15, %d2
	sh	%d4, %d4, 24
	or	%d4, %d15
	.loc 1 362 0
	mov.aa	%a15, %a4
	.loc 1 364 0
	call	__floatsidf
.LVL99:
	movh.a	%a12, hi:targetPosition
	lea	%a12, [%a12] lo:targetPosition
	st.d	[%a12]0, %e2
	.loc 1 365 0
	ld.bu	%d15, [%a15] 15
	ld.bu	%d3, [%a15] 14
	sh	%d15, %d15, 8
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 16
	ld.bu	%d4, [%a15] 17
	sh	%d15, %d15, 16
	or	%d15, %d2
	sh	%d4, %d4, 24
	or	%d4, %d15
	call	__floatsidf
.LVL100:
	st.d	[%a12] 8, %e2
	ret
.LFE607:
	.size	updateStatus, .-updateStatus
.section .rodata,"a",@progbits
.LC7:
	.string	"ERROR: %s (%d)\n"
.LC8:
	.string	"ERROR: Unknown error code (%d).\n"
.section .text,"ax",@progbits
	.align 1
	.global	handleError
	.type	handleError, @function
handleError:
.LFB608:
	.loc 1 369 0
.LVL101:
	.loc 1 370 0
	movh.a	%a15, hi:g_RecievedParkingSystemPacket
	.loc 1 369 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 369 0
	mov	%d15, %d4
	.loc 1 370 0
	mov	%d2, 2
	.loc 1 371 0
	mov	%d4, 3
.LVL102:
	.loc 1 370 0
	lea	%a15, [%a15] lo:g_RecievedParkingSystemPacket
	st.b	[%a15] 18, %d2
	.loc 1 371 0
	call	CancelAlarm
.LVL103:
	.loc 1 372 0
	mov	%d4, 2
	call	CancelAlarm
.LVL104:
	.loc 1 373 0
	mov	%d4, 1
	call	CancelAlarm
.LVL105:
	.loc 1 374 0
	mov	%d4, 0
	call	motor_stop
.LVL106:
	.loc 1 375 0
	mov	%d4, 1
	call	motor_stop
.LVL107:
	.loc 1 376 0
	mov	%d4, 2
	call	motor_stop
.LVL108:
	.loc 1 377 0
	mov	%d4, 3
	call	motor_stop
.LVL109:
	.loc 1 378 0
	ge.u	%d2, %d15, 16
	jnz	%d2, .L33
	.loc 1 380 0
	movh.a	%a15, hi:errorMessages
	lea	%a15, [%a15] lo:errorMessages
	addsc.a	%a15, %a15, %d15, 2
	movh.a	%a4, hi:.LC7
	ld.w	%d2, [%a15]0
	st.w	[%SP] 4, %d15
	st.w	[%SP]0, %d2
	lea	%a4, [%a4] lo:.LC7
	call	printfSerial
.LVL110:
	.loc 1 381 0
	jeq	%d15, 1, .L35
	jz	%d15, .L36
	jne	%d15, 2, .L34
	.loc 1 392 0
	mov	%d15, 5
	j	.L39
.L36:
	.loc 1 384 0
	mov	%d15, 6
	movh.a	%a15, hi:carStatus
	.loc 1 385 0
	mov	%d4, 11
	.loc 1 384 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 385 0
	call	ActivateTask
.LVL111:
	j	.L38
.L35:
	.loc 1 389 0
	mov	%d15, 4
.L39:
	.loc 1 392 0
	movh.a	%a15, hi:carStatus
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 393 0
	j	.L34
.L33:
	.loc 1 400 0
	movh.a	%a4, hi:.LC8
	st.w	[%SP]0, %d15
	lea	%a4, [%a4] lo:.LC8
	call	printfSerial
.LVL112:
.L38:
	.loc 1 401 0
	call	exitShiParkerApp
.LVL113:
.L34:
	.loc 1 404 0
	.loc 1 403 0
	mov	%d4, 11
	.loc 1 404 0
	lea	%SP, [%SP] 8
	.loc 1 403 0
	j	ActivateTask
.LVL114:
.LFE608:
	.size	handleError, .-handleError
.section .rodata,"a",@progbits
.LC9:
	.string	"[%d]"
.section .text,"ax",@progbits
	.align 1
	.global	FuncShiParkerAppTask
	.type	FuncShiParkerAppTask, @function
FuncShiParkerAppTask:
.LFB600:
	.loc 1 77 0
	.loc 1 78 0
	movh.a	%a15, hi:carStatus
	ld.bu	%d15, [%a15] lo:carStatus
	.loc 1 77 0
	sub.a	%SP, 8
.LCFI3:
	.loc 1 78 0
	movh.a	%a4, hi:.LC9
	st.w	[%SP]0, %d15
	lea	%a4, [%a4] lo:.LC9
	call	printfSerial
.LVL115:
	.loc 1 79 0
	movh.a	%a2, hi:g_isAppRunning
	ld.bu	%d15, [%a2] lo:g_isAppRunning
	movh.a	%a12, hi:g_isRecieved
	jz	%d15, .L41
	.loc 1 79 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a12] lo:g_isRecieved
	jnz	%d15, .L42
.L41:
	.loc 1 80 0 is_stmt 1
	call	TerminateTask
.LVL116:
.L42:
	.loc 1 82 0
	movh.a	%a4, hi:g_RecievedParkingSystemPacket
	.loc 1 81 0
	mov	%d15, 0
	.loc 1 82 0
	lea	%a4, [%a4] lo:g_RecievedParkingSystemPacket
	.loc 1 81 0
	st.b	[%a12] lo:g_isRecieved, %d15
	.loc 1 82 0
	call	updateStatus
.LVL117:
	.loc 1 83 0
	ld.bu	%d15, [%a15] lo:carStatus
	jge.u	%d15, 6, .L43
	movh.a	%a2, hi:.L45
	lea	%a2, [%a2] lo:.L45
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L45:
	.code32
	j	.L44
	.code32
	j	.L46
	.code32
	j	.L47
	.code32
	j	.L57
	.code32
	j	.L49
	.code32
	j	.L49
.L44:
	.loc 1 86 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L57
	jeq	%d15, 1, .L58
	ret
.L46:
	.loc 1 110 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L57
	jeq	%d15, 2, .L54
	ret
.L54:
	.loc 1 122 0
	mov	%d4, 0
	.loc 1 121 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 122 0
	call	motor_stop
.LVL118:
	.loc 1 123 0
	mov	%d4, 1
	call	motor_stop
.LVL119:
	.loc 1 124 0
	mov	%d4, 2
	call	motor_stop
.LVL120:
	.loc 1 125 0
	mov	%d4, 3
	call	motor_stop
.LVL121:
	.loc 1 126 0
	mov	%d4, 1
	call	CancelAlarm
.LVL122:
	.loc 1 127 0
	mov	%d4, 3
	call	CancelAlarm
.LVL123:
	.loc 1 128 0
	mov	%d4, 2
	call	CancelAlarm
.LVL124:
	.loc 1 129 0
	mov	%d4, 1
	mov	%d5, 1
	mov	%d6, 30
.L62:
	.loc 1 192 0
	lea	%SP, [%SP] 8
	.loc 1 129 0
	j	SetRelAlarm
.LVL125:
.L47:
	.loc 1 136 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L57
	jeq	%d15, 1, .L58
	ret
.L49:
	.loc 1 163 0
	movh.a	%a2, hi:carCommand
	ld.bu	%d15, [%a2] lo:carCommand
	jz	%d15, .L57
	jeq	%d15, 1, .L58
	ret
.L57:
	.loc 1 192 0
	lea	%SP, [%SP] 8
	.loc 1 167 0
	j	exitShiParkerApp
.LVL126:
.L58:
	.loc 1 172 0
	mov	%d4, 1
	.loc 1 171 0
	st.b	[%a15] lo:carStatus, %d15
	.loc 1 172 0
	call	CancelAlarm
.LVL127:
	.loc 1 173 0
	mov	%d4, 2
	mov	%d5, 3
	mov	%d6, 3
	call	SetRelAlarm
.LVL128:
	.loc 1 174 0
	mov	%d4, 1
	mov	%d5, 1
	mov	%d6, 30
	call	SetRelAlarm
.LVL129:
	.loc 1 177 0
	mov	%d4, 3
	mov	%d5, 2
	mov	%d6, 4
	j	.L62
.L43:
	.loc 1 192 0
	.loc 1 189 0
	mov	%d4, 3
	.loc 1 192 0
	lea	%SP, [%SP] 8
	.loc 1 189 0
	j	handleError
.LVL130:
.LFE600:
	.size	FuncShiParkerAppTask, .-FuncShiParkerAppTask
	.global	__gtdf2
	.align 1
	.global	FuncAvoidObstacleTask
	.type	FuncAvoidObstacleTask, @function
FuncAvoidObstacleTask:
.LFB601:
	.loc 1 195 0
	.loc 1 196 0
	mov	%e2, 0
	.loc 1 199 0
	movh.a	%a12, hi:targetPosition
	movh.a	%a15, hi:currentPosition
	.loc 1 195 0
	sub.a	%SP, 16
.LCFI4:
	.loc 1 199 0
	lea	%a15, [%a15] lo:currentPosition
	lea	%a12, [%a12] lo:targetPosition
	ld.d	%e4, [%a12]0
	ld.d	%e6, [%a15]0
	.loc 1 196 0
	st.d	[%SP]0, %e2
	.loc 1 197 0
	st.d	[%SP] 8, %e2
	.loc 1 199 0
	call	__subdf3
.LVL131:
	insert	%d5, %d3, 0, 31, 1
	mov	%d4, %d2
	st.d	[%SP]0, %e4
	.loc 1 200 0
	ld.d	%e6, [%a15] 8
	ld.d	%e4, [%a12] 8
	call	__subdf3
.LVL132:
	.loc 1 202 0
	movh.a	%a15, hi:g_isAppRunning
	.loc 1 200 0
	insert	%d5, %d3, 0, 31, 1
	mov	%d4, %d2
	.loc 1 202 0
	ld.bu	%d15, [%a15] lo:g_isAppRunning
	.loc 1 200 0
	st.d	[%SP] 8, %e4
	.loc 1 202 0
	jnz	%d15, .L64
	.loc 1 203 0
	call	TerminateTask
.LVL133:
.L64:
	.loc 1 204 0
	movh.a	%a4, hi:g_Ultrasonic_FRONT
	lea	%a4, [%a4] lo:g_Ultrasonic_FRONT
	call	getUltrasonic
.LVL134:
	.loc 1 206 0
	mov	%e6, 0
	mov	%e4, %d3, %d2
	.loc 1 204 0
	mov	%e8, %d3, %d2
.LVL135:
	.loc 1 206 0
	call	__gtdf2
.LVL136:
	jlez	%d2, .L63
	.loc 1 206 0 is_stmt 0 discriminator 1
	mov	%e4, %d9, %d8
	mov	%d6, 0
	movh	%d7, 16404
	call	__ltdf2
.LVL137:
	jgez	%d2, .L63
	.loc 1 208 0 is_stmt 1
	movh.a	%a15, hi:currentDirection
	ld.bu	%d15, [%a15] lo:currentDirection
	jnz	%d15, .L68
	.loc 1 208 0 is_stmt 0 discriminator 1
	ld.d	%e4, [%SP] 8
.L73:
	movh.a	%a15, hi:error_target_position
	lea	%a15, [%a15] lo:error_target_position
	ld.d	%e6, [%a15]0
	call	__gtdf2
.LVL138:
	jlez	%d2, .L63
	.loc 1 210 0 is_stmt 1
	mov	%d4, 1
	j	handleError
.LVL139:
.L68:
	.loc 1 212 0
	jne	%d15, 1, .L63
	.loc 1 212 0 is_stmt 0 discriminator 1
	ld.d	%e4, [%SP]0
	j	.L73
.L63:
	ret
.LFE601:
	.size	FuncAvoidObstacleTask, .-FuncAvoidObstacleTask
	.global	RearUltra
.section .bss,"aw",@nobits
	.align 2
	.type	RearUltra, @object
	.size	RearUltra, 8
RearUltra:
	.zero	8
	.global	FrontUltra
	.align 2
	.type	FrontUltra, @object
	.size	FrontUltra, 8
FrontUltra:
	.zero	8
	.local	currentDirection
	.align 0
	.type		 currentDirection,@object
	.size		 currentDirection,1
currentDirection:
	.space	1
	.local	targetPosition
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
	.size		 carStatusPacket,20
carStatusPacket:
	.space	20
	.global	g_isAppRunning
	.type	g_isAppRunning, @object
	.size	g_isAppRunning, 1
g_isAppRunning:
	.zero	1
	.global	error_target_position
.section .rodata,"a",@progbits
	.align 2
	.type	error_target_position, @object
	.size	error_target_position, 8
error_target_position:
	.word	0
	.word	1075052544
	.global	Kp_rad_to_delta_power
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
	.global	motor_power_turn
	.align 2
	.type	motor_power_turn, @object
	.size	motor_power_turn, 8
motor_power_turn:
	.word	0
	.word	1079574528
.LC10:
	.string	"User Control occured."
.LC11:
	.string	"Obstacle detected."
.LC12:
	.string	"Connection Lost"
.LC13:
	.string	"Undefined Status"
.LC14:
	.string	"Hall_FL Error"
.LC15:
	.string	"Hall_FR Error"
.LC16:
	.string	"Hall_RL Error"
.LC17:
	.string	"Hall_RR Error"
.LC18:
	.string	"ULTRASONIC_FL Error"
.LC19:
	.string	"ULTRASONIC_F Error"
.LC20:
	.string	"ULTRASONIC_FR Error"
.LC21:
	.string	"ULTRASONIC_SL Error"
.LC22:
	.string	"ULTRASONIC_SR Error"
.LC23:
	.string	"ULTRASONIC_RL Error"
.LC24:
	.string	"ULTRASONIC_R Error"
.LC25:
	.string	"ULTRASONIC_RR Error"
	.align 2
	.type	errorMessages, @object
	.size	errorMessages, 64
errorMessages:
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
	.word	.LC25
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
	.uaword	.LFB599
	.uaword	.LFE599-.LFB599
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
	.uaword	.LFB603
	.uaword	.LFE603-.LFB603
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB604
	.uaword	.LFE604-.LFB604
	.byte	0x4
	.uaword	.LCFI1-.LFB604
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB606
	.uaword	.LFE606-.LFB606
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB605
	.uaword	.LFE605-.LFB605
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB607
	.uaword	.LFE607-.LFB607
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB608
	.uaword	.LFE608-.LFB608
	.byte	0x4
	.uaword	.LCFI2-.LFB608
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB600
	.uaword	.LFE600-.LFB600
	.byte	0x4
	.uaword	.LCFI3-.LFB600
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB601
	.uaword	.LFE601-.LFB601
	.byte	0x4
	.uaword	.LCFI4-.LFB601
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE22:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "C:\\project\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\Cpu\\Std\\Platform_Types.h"
	.file 3 "C:\\project\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\Cpu\\Std/Ifx_Types.h"
	.file 4 "C:\\project\\SHIPAR~1\\TC275/illd\\Libraries\\Infra\\Sfr\\TC27D\\_Reg\\IfxPort_regdef.h"
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 6 "C:\\project\\SHIPAR~1\\TC275\\illd\\src\\Configuration.h"
	.file 7 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 8 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 9 "C:\\project\\SHIPAR~1\\TC275\\motor_driver.h"
	.file 10 "C:\\project\\SHIPAR~1\\TC275\\ultrasonic_Driver.h"
	.file 11 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h"
	.file 12 "C:\\project\\SHIPAR~1\\TC275\\steering_Pid.h"
	.file 13 "C:\\project\\SHIPAR~1\\TC275\\shiparker_App.h"
	.file 14 "C:\\project\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\_Impl/IfxCpu_cfg.h"
	.file 15 "C:\\project\\SHIPAR~1\\TC275\\hall_Driver.h"
	.file 16 "C:\\project\\SHIPAR~1\\TC275\\uart_Driver.h"
	.file 17 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_tc_system.h"
	.file 18 "C:\\project\\SHIPAR~1\\TC275\\bsw.h"
	.file 19 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_oo_api_osek.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3d1e
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
	.uaword	0x18f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x6c
	.uaword	0x18f
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x70
	.uaword	0x1bb
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
	.uaword	0x158
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
	.uaword	0x235
	.uleb128 0x5
	.uaword	0x23a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x248
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x8c
	.uaword	0x26f
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x8e
	.uaword	0x242
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x8f
	.uaword	0x207
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x90
	.uaword	0x249
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x9
	.uaword	0x18f
	.uaword	0x2a9
	.uleb128 0xa
	.uaword	0x2a9
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.uaword	0x18f
	.uaword	0x2c5
	.uleb128 0xa
	.uaword	0x2a9
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.uaword	0x18f
	.uaword	0x2d5
	.uleb128 0xa
	.uaword	0x2a9
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.uaword	0x18f
	.uaword	0x2e5
	.uleb128 0xa
	.uaword	0x2a9
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x3f
	.uaword	0x4f7
	.uleb128 0xc
	.string	"EN0"
	.byte	0x4
	.byte	0x41
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"EN1"
	.byte	0x4
	.byte	0x42
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"EN2"
	.byte	0x4
	.byte	0x43
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EN3"
	.byte	0x4
	.byte	0x44
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EN4"
	.byte	0x4
	.byte	0x45
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"EN5"
	.byte	0x4
	.byte	0x46
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"EN6"
	.byte	0x4
	.byte	0x47
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"EN7"
	.byte	0x4
	.byte	0x48
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"EN8"
	.byte	0x4
	.byte	0x49
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"EN9"
	.byte	0x4
	.byte	0x4a
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EN10"
	.byte	0x4
	.byte	0x4b
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"EN11"
	.byte	0x4
	.byte	0x4c
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"EN12"
	.byte	0x4
	.byte	0x4d
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"EN13"
	.byte	0x4
	.byte	0x4e
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"EN14"
	.byte	0x4
	.byte	0x4f
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"EN15"
	.byte	0x4
	.byte	0x50
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"EN16"
	.byte	0x4
	.byte	0x51
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"EN17"
	.byte	0x4
	.byte	0x52
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"EN18"
	.byte	0x4
	.byte	0x53
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"EN19"
	.byte	0x4
	.byte	0x54
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"EN20"
	.byte	0x4
	.byte	0x55
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"EN21"
	.byte	0x4
	.byte	0x56
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"EN22"
	.byte	0x4
	.byte	0x57
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"EN23"
	.byte	0x4
	.byte	0x58
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"EN24"
	.byte	0x4
	.byte	0x59
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"EN25"
	.byte	0x4
	.byte	0x5a
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"EN26"
	.byte	0x4
	.byte	0x5b
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"EN27"
	.byte	0x4
	.byte	0x5c
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"EN28"
	.byte	0x4
	.byte	0x5d
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"EN29"
	.byte	0x4
	.byte	0x5e
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"EN30"
	.byte	0x4
	.byte	0x5f
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"EN31"
	.byte	0x4
	.byte	0x60
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x61
	.uaword	0x2e5
	.uleb128 0xb
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x64
	.uaword	0x53b
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.byte	0x66
	.uaword	0x289
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x67
	.uaword	0x510
	.uleb128 0xb
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x6a
	.uaword	0x672
	.uleb128 0xc
	.string	"EN0"
	.byte	0x4
	.byte	0x6c
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"EN1"
	.byte	0x4
	.byte	0x6d
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"EN2"
	.byte	0x4
	.byte	0x6e
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EN3"
	.byte	0x4
	.byte	0x6f
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EN4"
	.byte	0x4
	.byte	0x70
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"EN5"
	.byte	0x4
	.byte	0x71
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"EN6"
	.byte	0x4
	.byte	0x72
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"EN7"
	.byte	0x4
	.byte	0x73
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"EN8"
	.byte	0x4
	.byte	0x74
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"EN9"
	.byte	0x4
	.byte	0x75
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EN10"
	.byte	0x4
	.byte	0x76
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"EN11"
	.byte	0x4
	.byte	0x77
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"EN12"
	.byte	0x4
	.byte	0x78
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"EN13"
	.byte	0x4
	.byte	0x79
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"EN14"
	.byte	0x4
	.byte	0x7a
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"EN15"
	.byte	0x4
	.byte	0x7b
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.byte	0x7c
	.uaword	0x289
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x7d
	.uaword	0x554
	.uleb128 0xb
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x80
	.uaword	0x6da
	.uleb128 0xc
	.string	"MODREV"
	.byte	0x4
	.byte	0x82
	.uaword	0x289
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"MODTYPE"
	.byte	0x4
	.byte	0x83
	.uaword	0x289
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"MODNUMBER"
	.byte	0x4
	.byte	0x84
	.uaword	0x289
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x85
	.uaword	0x688
	.uleb128 0xb
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x88
	.uaword	0x7fc
	.uleb128 0xc
	.string	"P0"
	.byte	0x4
	.byte	0x8a
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"P1"
	.byte	0x4
	.byte	0x8b
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"P2"
	.byte	0x4
	.byte	0x8c
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"P3"
	.byte	0x4
	.byte	0x8d
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"P4"
	.byte	0x4
	.byte	0x8e
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"P5"
	.byte	0x4
	.byte	0x8f
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"P6"
	.byte	0x4
	.byte	0x90
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"P7"
	.byte	0x4
	.byte	0x91
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"P8"
	.byte	0x4
	.byte	0x92
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"P9"
	.byte	0x4
	.byte	0x93
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"P10"
	.byte	0x4
	.byte	0x94
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"P11"
	.byte	0x4
	.byte	0x95
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"P12"
	.byte	0x4
	.byte	0x96
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"P13"
	.byte	0x4
	.byte	0x97
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"P14"
	.byte	0x4
	.byte	0x98
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"P15"
	.byte	0x4
	.byte	0x99
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.byte	0x9a
	.uaword	0x289
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x9b
	.uaword	0x6ef
	.uleb128 0xb
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x9e
	.uaword	0x8a4
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.byte	0xa0
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"PC0"
	.byte	0x4
	.byte	0xa1
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x4
	.byte	0xa2
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PC1"
	.byte	0x4
	.byte	0xa3
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.byte	0xa4
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PC2"
	.byte	0x4
	.byte	0xa5
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x4
	.byte	0xa6
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"PC3"
	.byte	0x4
	.byte	0xa7
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0xa8
	.uaword	0x811
	.uleb128 0xb
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xab
	.uaword	0x954
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.byte	0xad
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"PC12"
	.byte	0x4
	.byte	0xae
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x4
	.byte	0xaf
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PC13"
	.byte	0x4
	.byte	0xb0
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.byte	0xb1
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PC14"
	.byte	0x4
	.byte	0xb2
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x4
	.byte	0xb3
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"PC15"
	.byte	0x4
	.byte	0xb4
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0xb5
	.uaword	0x8bc
	.uleb128 0xb
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xb8
	.uaword	0xa00
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.byte	0xba
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"PC4"
	.byte	0x4
	.byte	0xbb
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x4
	.byte	0xbc
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PC5"
	.byte	0x4
	.byte	0xbd
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.byte	0xbe
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PC6"
	.byte	0x4
	.byte	0xbf
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x4
	.byte	0xc0
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"PC7"
	.byte	0x4
	.byte	0xc1
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0xc2
	.uaword	0x96d
	.uleb128 0xb
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xc5
	.uaword	0xaad
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.byte	0xc7
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"PC8"
	.byte	0x4
	.byte	0xc8
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x4
	.byte	0xc9
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PC9"
	.byte	0x4
	.byte	0xca
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.byte	0xcb
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PC10"
	.byte	0x4
	.byte	0xcc
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x4
	.byte	0xcd
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"PC11"
	.byte	0x4
	.byte	0xce
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0xcf
	.uaword	0xa18
	.uleb128 0xb
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xd2
	.uaword	0xb0d
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.byte	0xd4
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"PS1"
	.byte	0x4
	.byte	0xd5
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x4
	.byte	0xd6
	.uaword	0x289
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0xd7
	.uaword	0xac5
	.uleb128 0xb
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xda
	.uaword	0xb6d
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.byte	0xdc
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"PS1"
	.byte	0x4
	.byte	0xdd
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x4
	.byte	0xde
	.uaword	0x289
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0xdf
	.uaword	0xb25
	.uleb128 0xb
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xe2
	.uaword	0xbfd
	.uleb128 0xc
	.string	"RDIS_CTRL"
	.byte	0x4
	.byte	0xe4
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"RX_DIS"
	.byte	0x4
	.byte	0xe5
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"TERM"
	.byte	0x4
	.byte	0xe6
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"LRXTERM"
	.byte	0x4
	.byte	0xe7
	.uaword	0x289
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x4
	.byte	0xe8
	.uaword	0x289
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0xe9
	.uaword	0xb85
	.uleb128 0xb
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xec
	.uaword	0xcd8
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.byte	0xee
	.uaword	0x289
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"LVDSR"
	.byte	0x4
	.byte	0xef
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"LVDSRL"
	.byte	0x4
	.byte	0xf0
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"reserved_10"
	.byte	0x4
	.byte	0xf1
	.uaword	0x289
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"TDIS_CTRL"
	.byte	0x4
	.byte	0xf2
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"TX_DIS"
	.byte	0x4
	.byte	0xf3
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"TX_PD"
	.byte	0x4
	.byte	0xf4
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"TX_PWDPD"
	.byte	0x4
	.byte	0xf5
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.byte	0xf6
	.uaword	0x289
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0xf7
	.uaword	0xc19
	.uleb128 0xb
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xfa
	.uaword	0xd6b
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.byte	0xfc
	.uaword	0x289
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"PCL0"
	.byte	0x4
	.byte	0xfd
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"PCL1"
	.byte	0x4
	.byte	0xfe
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"PCL2"
	.byte	0x4
	.byte	0xff
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PCL3"
	.byte	0x4
	.uahalf	0x100
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x101
	.uaword	0x289
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x4
	.uahalf	0x102
	.uaword	0xcf0
	.uleb128 0x11
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x105
	.uaword	0xdf9
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x107
	.uaword	0x289
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PCL12"
	.byte	0x4
	.uahalf	0x108
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"PCL13"
	.byte	0x4
	.uahalf	0x109
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"PCL14"
	.byte	0x4
	.uahalf	0x10a
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PCL15"
	.byte	0x4
	.uahalf	0x10b
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x4
	.uahalf	0x10c
	.uaword	0xd84
	.uleb128 0x11
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x10f
	.uaword	0xe93
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x111
	.uaword	0x289
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"PCL4"
	.byte	0x4
	.uahalf	0x112
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"PCL5"
	.byte	0x4
	.uahalf	0x113
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"PCL6"
	.byte	0x4
	.uahalf	0x114
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"PCL7"
	.byte	0x4
	.uahalf	0x115
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x116
	.uaword	0x289
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x4
	.uahalf	0x117
	.uaword	0xe13
	.uleb128 0x11
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x11a
	.uaword	0xf2e
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x11c
	.uaword	0x289
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PCL8"
	.byte	0x4
	.uahalf	0x11d
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"PCL9"
	.byte	0x4
	.uahalf	0x11e
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"PCL10"
	.byte	0x4
	.uahalf	0x11f
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PCL11"
	.byte	0x4
	.uahalf	0x120
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x121
	.uaword	0x289
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x4
	.uahalf	0x122
	.uaword	0xeac
	.uleb128 0x11
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x125
	.uaword	0x1088
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x127
	.uaword	0x289
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PCL0"
	.byte	0x4
	.uahalf	0x128
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"PCL1"
	.byte	0x4
	.uahalf	0x129
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"PCL2"
	.byte	0x4
	.uahalf	0x12a
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PCL3"
	.byte	0x4
	.uahalf	0x12b
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"PCL4"
	.byte	0x4
	.uahalf	0x12c
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"PCL5"
	.byte	0x4
	.uahalf	0x12d
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"PCL6"
	.byte	0x4
	.uahalf	0x12e
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"PCL7"
	.byte	0x4
	.uahalf	0x12f
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PCL8"
	.byte	0x4
	.uahalf	0x130
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"PCL9"
	.byte	0x4
	.uahalf	0x131
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"PCL10"
	.byte	0x4
	.uahalf	0x132
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PCL11"
	.byte	0x4
	.uahalf	0x133
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PCL12"
	.byte	0x4
	.uahalf	0x134
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"PCL13"
	.byte	0x4
	.uahalf	0x135
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"PCL14"
	.byte	0x4
	.uahalf	0x136
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PCL15"
	.byte	0x4
	.uahalf	0x137
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x4
	.uahalf	0x138
	.uaword	0xf47
	.uleb128 0x11
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x13b
	.uaword	0x12d6
	.uleb128 0xe
	.string	"PS0"
	.byte	0x4
	.uahalf	0x13d
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x4
	.uahalf	0x13e
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"PS2"
	.byte	0x4
	.uahalf	0x13f
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PS3"
	.byte	0x4
	.uahalf	0x140
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PS4"
	.byte	0x4
	.uahalf	0x141
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"PS5"
	.byte	0x4
	.uahalf	0x142
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"PS6"
	.byte	0x4
	.uahalf	0x143
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PS7"
	.byte	0x4
	.uahalf	0x144
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PS8"
	.byte	0x4
	.uahalf	0x145
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"PS9"
	.byte	0x4
	.uahalf	0x146
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"PS10"
	.byte	0x4
	.uahalf	0x147
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PS11"
	.byte	0x4
	.uahalf	0x148
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PS12"
	.byte	0x4
	.uahalf	0x149
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"PS13"
	.byte	0x4
	.uahalf	0x14a
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"PS14"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PS15"
	.byte	0x4
	.uahalf	0x14c
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PCL0"
	.byte	0x4
	.uahalf	0x14d
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"PCL1"
	.byte	0x4
	.uahalf	0x14e
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"PCL2"
	.byte	0x4
	.uahalf	0x14f
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PCL3"
	.byte	0x4
	.uahalf	0x150
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"PCL4"
	.byte	0x4
	.uahalf	0x151
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"PCL5"
	.byte	0x4
	.uahalf	0x152
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"PCL6"
	.byte	0x4
	.uahalf	0x153
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"PCL7"
	.byte	0x4
	.uahalf	0x154
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PCL8"
	.byte	0x4
	.uahalf	0x155
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"PCL9"
	.byte	0x4
	.uahalf	0x156
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"PCL10"
	.byte	0x4
	.uahalf	0x157
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PCL11"
	.byte	0x4
	.uahalf	0x158
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PCL12"
	.byte	0x4
	.uahalf	0x159
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"PCL13"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"PCL14"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PCL15"
	.byte	0x4
	.uahalf	0x15c
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMR_Bits"
	.byte	0x4
	.uahalf	0x15d
	.uaword	0x10a0
	.uleb128 0x11
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x160
	.uaword	0x1360
	.uleb128 0xe
	.string	"PS0"
	.byte	0x4
	.uahalf	0x162
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x4
	.uahalf	0x163
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"PS2"
	.byte	0x4
	.uahalf	0x164
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PS3"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"reserved_4"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x289
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x4
	.uahalf	0x167
	.uaword	0x12ed
	.uleb128 0x11
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x13fa
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x16c
	.uaword	0x289
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PS12"
	.byte	0x4
	.uahalf	0x16d
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"PS13"
	.byte	0x4
	.uahalf	0x16e
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"PS14"
	.byte	0x4
	.uahalf	0x16f
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PS15"
	.byte	0x4
	.uahalf	0x170
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x171
	.uaword	0x289
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x4
	.uahalf	0x172
	.uaword	0x1379
	.uleb128 0x11
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x175
	.uaword	0x1490
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x177
	.uaword	0x289
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PS4"
	.byte	0x4
	.uahalf	0x178
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"PS5"
	.byte	0x4
	.uahalf	0x179
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"PS6"
	.byte	0x4
	.uahalf	0x17a
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PS7"
	.byte	0x4
	.uahalf	0x17b
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x17c
	.uaword	0x289
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x4
	.uahalf	0x17d
	.uaword	0x1414
	.uleb128 0x11
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x180
	.uaword	0x1527
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x182
	.uaword	0x289
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PS8"
	.byte	0x4
	.uahalf	0x183
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"PS9"
	.byte	0x4
	.uahalf	0x184
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"PS10"
	.byte	0x4
	.uahalf	0x185
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PS11"
	.byte	0x4
	.uahalf	0x186
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x187
	.uaword	0x289
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x4
	.uahalf	0x188
	.uaword	0x14a9
	.uleb128 0x11
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x18b
	.uaword	0x1671
	.uleb128 0xe
	.string	"PS0"
	.byte	0x4
	.uahalf	0x18d
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x4
	.uahalf	0x18e
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"PS2"
	.byte	0x4
	.uahalf	0x18f
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PS3"
	.byte	0x4
	.uahalf	0x190
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PS4"
	.byte	0x4
	.uahalf	0x191
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"PS5"
	.byte	0x4
	.uahalf	0x192
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"PS6"
	.byte	0x4
	.uahalf	0x193
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PS7"
	.byte	0x4
	.uahalf	0x194
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PS8"
	.byte	0x4
	.uahalf	0x195
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"PS9"
	.byte	0x4
	.uahalf	0x196
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"PS10"
	.byte	0x4
	.uahalf	0x197
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PS11"
	.byte	0x4
	.uahalf	0x198
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PS12"
	.byte	0x4
	.uahalf	0x199
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"PS13"
	.byte	0x4
	.uahalf	0x19a
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"PS14"
	.byte	0x4
	.uahalf	0x19b
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PS15"
	.byte	0x4
	.uahalf	0x19c
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x19d
	.uaword	0x289
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x1540
	.uleb128 0x11
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1a1
	.uaword	0x17a9
	.uleb128 0xe
	.string	"P0"
	.byte	0x4
	.uahalf	0x1a3
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"P1"
	.byte	0x4
	.uahalf	0x1a4
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"P2"
	.byte	0x4
	.uahalf	0x1a5
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"P3"
	.byte	0x4
	.uahalf	0x1a6
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"P4"
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"P5"
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"P6"
	.byte	0x4
	.uahalf	0x1a9
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"P7"
	.byte	0x4
	.uahalf	0x1aa
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"P8"
	.byte	0x4
	.uahalf	0x1ab
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"P9"
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"P10"
	.byte	0x4
	.uahalf	0x1ad
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"P11"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"P12"
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"P13"
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"P14"
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"P15"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1b3
	.uaword	0x289
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OUT_Bits"
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0x1689
	.uleb128 0x11
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1b7
	.uaword	0x18ad
	.uleb128 0xe
	.string	"SEL0"
	.byte	0x4
	.uahalf	0x1b9
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"SEL1"
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"SEL2"
	.byte	0x4
	.uahalf	0x1bb
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"SEL3"
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"SEL4"
	.byte	0x4
	.uahalf	0x1bd
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"SEL5"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"SEL6"
	.byte	0x4
	.uahalf	0x1bf
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"reserved_7"
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"SEL10"
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"SEL11"
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x289
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x17c0
	.uleb128 0x11
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1c8
	.uaword	0x1a17
	.uleb128 0xe
	.string	"PDIS0"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PDIS1"
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"PDIS2"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PDIS3"
	.byte	0x4
	.uahalf	0x1cd
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PDIS4"
	.byte	0x4
	.uahalf	0x1ce
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"PDIS5"
	.byte	0x4
	.uahalf	0x1cf
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"PDIS6"
	.byte	0x4
	.uahalf	0x1d0
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PDIS7"
	.byte	0x4
	.uahalf	0x1d1
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PDIS8"
	.byte	0x4
	.uahalf	0x1d2
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"PDIS9"
	.byte	0x4
	.uahalf	0x1d3
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"PDIS10"
	.byte	0x4
	.uahalf	0x1d4
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PDIS11"
	.byte	0x4
	.uahalf	0x1d5
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PDIS12"
	.byte	0x4
	.uahalf	0x1d6
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"PDIS13"
	.byte	0x4
	.uahalf	0x1d7
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"PDIS14"
	.byte	0x4
	.uahalf	0x1d8
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PDIS15"
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1da
	.uaword	0x289
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x4
	.uahalf	0x1db
	.uaword	0x18c5
	.uleb128 0x11
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1de
	.uaword	0x1b4b
	.uleb128 0xe
	.string	"PD0"
	.byte	0x4
	.uahalf	0x1e0
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PL0"
	.byte	0x4
	.uahalf	0x1e1
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PD1"
	.byte	0x4
	.uahalf	0x1e2
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PL1"
	.byte	0x4
	.uahalf	0x1e3
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PD2"
	.byte	0x4
	.uahalf	0x1e4
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PL2"
	.byte	0x4
	.uahalf	0x1e5
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PD3"
	.byte	0x4
	.uahalf	0x1e6
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PL3"
	.byte	0x4
	.uahalf	0x1e7
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PD4"
	.byte	0x4
	.uahalf	0x1e8
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PL4"
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"PD5"
	.byte	0x4
	.uahalf	0x1ea
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"PL5"
	.byte	0x4
	.uahalf	0x1eb
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PD6"
	.byte	0x4
	.uahalf	0x1ec
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PL6"
	.byte	0x4
	.uahalf	0x1ed
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PD7"
	.byte	0x4
	.uahalf	0x1ee
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PL7"
	.byte	0x4
	.uahalf	0x1ef
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x4
	.uahalf	0x1f0
	.uaword	0x1a30
	.uleb128 0x11
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1f3
	.uaword	0x1c8a
	.uleb128 0xe
	.string	"PD8"
	.byte	0x4
	.uahalf	0x1f5
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PL8"
	.byte	0x4
	.uahalf	0x1f6
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PD9"
	.byte	0x4
	.uahalf	0x1f7
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PL9"
	.byte	0x4
	.uahalf	0x1f8
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PD10"
	.byte	0x4
	.uahalf	0x1f9
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PL10"
	.byte	0x4
	.uahalf	0x1fa
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PD11"
	.byte	0x4
	.uahalf	0x1fb
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PL11"
	.byte	0x4
	.uahalf	0x1fc
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PD12"
	.byte	0x4
	.uahalf	0x1fd
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PL12"
	.byte	0x4
	.uahalf	0x1fe
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"PD13"
	.byte	0x4
	.uahalf	0x1ff
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"PL13"
	.byte	0x4
	.uahalf	0x200
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PD14"
	.byte	0x4
	.uahalf	0x201
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PL14"
	.byte	0x4
	.uahalf	0x202
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PD15"
	.byte	0x4
	.uahalf	0x203
	.uaword	0x289
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PL15"
	.byte	0x4
	.uahalf	0x204
	.uaword	0x289
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x4
	.uahalf	0x205
	.uaword	0x1b63
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x20d
	.uaword	0x1cca
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x210
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x211
	.uaword	0x4f7
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_ACCEN0"
	.byte	0x4
	.uahalf	0x212
	.uaword	0x1ca2
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x215
	.uaword	0x1d07
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x217
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x218
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x219
	.uaword	0x53b
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_ACCEN1"
	.byte	0x4
	.uahalf	0x21a
	.uaword	0x1cdf
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x21d
	.uaword	0x1d44
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x21f
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x220
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x221
	.uaword	0x672
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_ESR"
	.byte	0x4
	.uahalf	0x222
	.uaword	0x1d1c
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x225
	.uaword	0x1d7e
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x227
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x228
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x229
	.uaword	0x6da
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_ID"
	.byte	0x4
	.uahalf	0x22a
	.uaword	0x1d56
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x22d
	.uaword	0x1db7
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x22f
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x230
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x231
	.uaword	0x7fc
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_IN"
	.byte	0x4
	.uahalf	0x232
	.uaword	0x1d8f
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x235
	.uaword	0x1df0
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x237
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x238
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x239
	.uaword	0x8a4
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_IOCR0"
	.byte	0x4
	.uahalf	0x23a
	.uaword	0x1dc8
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x23d
	.uaword	0x1e2c
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x23f
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x240
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x241
	.uaword	0x954
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_IOCR12"
	.byte	0x4
	.uahalf	0x242
	.uaword	0x1e04
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x245
	.uaword	0x1e69
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x247
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x248
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x249
	.uaword	0xa00
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_IOCR4"
	.byte	0x4
	.uahalf	0x24a
	.uaword	0x1e41
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x24d
	.uaword	0x1ea5
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x24f
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x250
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x251
	.uaword	0xaad
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_IOCR8"
	.byte	0x4
	.uahalf	0x252
	.uaword	0x1e7d
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x255
	.uaword	0x1ee1
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x257
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x258
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x259
	.uaword	0xb0d
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_LPCR0"
	.byte	0x4
	.uahalf	0x25a
	.uaword	0x1eb9
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x25d
	.uaword	0x1f2b
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x25f
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x260
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x261
	.uaword	0xb6d
	.uleb128 0x13
	.string	"B_P21"
	.byte	0x4
	.uahalf	0x262
	.uaword	0xbfd
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_LPCR1"
	.byte	0x4
	.uahalf	0x263
	.uaword	0x1ef5
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x266
	.uaword	0x1f67
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x268
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x269
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x26a
	.uaword	0xcd8
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_LPCR2"
	.byte	0x4
	.uahalf	0x26b
	.uaword	0x1f3f
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x26e
	.uaword	0x1fa3
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x270
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x271
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x272
	.uaword	0x1088
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMCR"
	.byte	0x4
	.uahalf	0x273
	.uaword	0x1f7b
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x276
	.uaword	0x1fde
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x278
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x279
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x27a
	.uaword	0xd6b
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMCR0"
	.byte	0x4
	.uahalf	0x27b
	.uaword	0x1fb6
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x27e
	.uaword	0x201a
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x280
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x281
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x282
	.uaword	0xdf9
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMCR12"
	.byte	0x4
	.uahalf	0x283
	.uaword	0x1ff2
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x286
	.uaword	0x2057
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x288
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x289
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x28a
	.uaword	0xe93
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMCR4"
	.byte	0x4
	.uahalf	0x28b
	.uaword	0x202f
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x28e
	.uaword	0x2093
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x290
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x291
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x292
	.uaword	0xf2e
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMCR8"
	.byte	0x4
	.uahalf	0x293
	.uaword	0x206b
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x296
	.uaword	0x20cf
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x298
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x299
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x29a
	.uaword	0x12d6
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMR"
	.byte	0x4
	.uahalf	0x29b
	.uaword	0x20a7
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x29e
	.uaword	0x2109
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x2a0
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x2a1
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x2a2
	.uaword	0x1671
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMSR"
	.byte	0x4
	.uahalf	0x2a3
	.uaword	0x20e1
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x2a6
	.uaword	0x2144
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x2a8
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x2a9
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x2aa
	.uaword	0x1360
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMSR0"
	.byte	0x4
	.uahalf	0x2ab
	.uaword	0x211c
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x2ae
	.uaword	0x2180
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x2b0
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x2b1
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x2b2
	.uaword	0x13fa
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMSR12"
	.byte	0x4
	.uahalf	0x2b3
	.uaword	0x2158
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x2b6
	.uaword	0x21bd
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x2b8
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x2b9
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x2ba
	.uaword	0x1490
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMSR4"
	.byte	0x4
	.uahalf	0x2bb
	.uaword	0x2195
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x2be
	.uaword	0x21f9
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x2c0
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x2c1
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x2c2
	.uaword	0x1527
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OMSR8"
	.byte	0x4
	.uahalf	0x2c3
	.uaword	0x21d1
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x2c6
	.uaword	0x2235
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x2c8
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x2c9
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x2ca
	.uaword	0x17a9
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_OUT"
	.byte	0x4
	.uahalf	0x2cb
	.uaword	0x220d
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x2ce
	.uaword	0x226f
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x2d0
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x2d1
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x2d2
	.uaword	0x18ad
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_PCSR"
	.byte	0x4
	.uahalf	0x2d3
	.uaword	0x2247
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x2d6
	.uaword	0x22aa
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x2d8
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x2d9
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x2da
	.uaword	0x1a17
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_PDISC"
	.byte	0x4
	.uahalf	0x2db
	.uaword	0x2282
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x2de
	.uaword	0x22e6
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x2e0
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x2e1
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x2e2
	.uaword	0x1b4b
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_PDR0"
	.byte	0x4
	.uahalf	0x2e3
	.uaword	0x22be
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x2e6
	.uaword	0x2321
	.uleb128 0x13
	.string	"U"
	.byte	0x4
	.uahalf	0x2e8
	.uaword	0x289
	.uleb128 0x13
	.string	"I"
	.byte	0x4
	.uahalf	0x2e9
	.uaword	0x179
	.uleb128 0x13
	.string	"B"
	.byte	0x4
	.uahalf	0x2ea
	.uaword	0x1c8a
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P_PDR1"
	.byte	0x4
	.uahalf	0x2eb
	.uaword	0x22f9
	.uleb128 0x14
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x4
	.uahalf	0x2f6
	.uaword	0x2575
	.uleb128 0x15
	.string	"OUT"
	.byte	0x4
	.uahalf	0x2f8
	.uaword	0x2235
	.byte	0
	.uleb128 0x15
	.string	"OMR"
	.byte	0x4
	.uahalf	0x2f9
	.uaword	0x20cf
	.byte	0x4
	.uleb128 0x15
	.string	"ID"
	.byte	0x4
	.uahalf	0x2fa
	.uaword	0x1d7e
	.byte	0x8
	.uleb128 0x15
	.string	"reserved_C"
	.byte	0x4
	.uahalf	0x2fb
	.uaword	0x299
	.byte	0xc
	.uleb128 0x15
	.string	"IOCR0"
	.byte	0x4
	.uahalf	0x2fc
	.uaword	0x1df0
	.byte	0x10
	.uleb128 0x15
	.string	"IOCR4"
	.byte	0x4
	.uahalf	0x2fd
	.uaword	0x1e69
	.byte	0x14
	.uleb128 0x15
	.string	"IOCR8"
	.byte	0x4
	.uahalf	0x2fe
	.uaword	0x1ea5
	.byte	0x18
	.uleb128 0x15
	.string	"IOCR12"
	.byte	0x4
	.uahalf	0x2ff
	.uaword	0x1e2c
	.byte	0x1c
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x300
	.uaword	0x299
	.byte	0x20
	.uleb128 0x15
	.string	"IN"
	.byte	0x4
	.uahalf	0x301
	.uaword	0x1db7
	.byte	0x24
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x302
	.uaword	0x2d5
	.byte	0x28
	.uleb128 0x15
	.string	"PDR0"
	.byte	0x4
	.uahalf	0x303
	.uaword	0x22e6
	.byte	0x40
	.uleb128 0x15
	.string	"PDR1"
	.byte	0x4
	.uahalf	0x304
	.uaword	0x2321
	.byte	0x44
	.uleb128 0x15
	.string	"reserved_48"
	.byte	0x4
	.uahalf	0x305
	.uaword	0x2c5
	.byte	0x48
	.uleb128 0x15
	.string	"ESR"
	.byte	0x4
	.uahalf	0x306
	.uaword	0x1d44
	.byte	0x50
	.uleb128 0x15
	.string	"reserved_54"
	.byte	0x4
	.uahalf	0x307
	.uaword	0x2b5
	.byte	0x54
	.uleb128 0x15
	.string	"PDISC"
	.byte	0x4
	.uahalf	0x308
	.uaword	0x22aa
	.byte	0x60
	.uleb128 0x15
	.string	"PCSR"
	.byte	0x4
	.uahalf	0x309
	.uaword	0x226f
	.byte	0x64
	.uleb128 0x15
	.string	"reserved_68"
	.byte	0x4
	.uahalf	0x30a
	.uaword	0x2c5
	.byte	0x68
	.uleb128 0x15
	.string	"OMSR0"
	.byte	0x4
	.uahalf	0x30b
	.uaword	0x2144
	.byte	0x70
	.uleb128 0x15
	.string	"OMSR4"
	.byte	0x4
	.uahalf	0x30c
	.uaword	0x21bd
	.byte	0x74
	.uleb128 0x15
	.string	"OMSR8"
	.byte	0x4
	.uahalf	0x30d
	.uaword	0x21f9
	.byte	0x78
	.uleb128 0x15
	.string	"OMSR12"
	.byte	0x4
	.uahalf	0x30e
	.uaword	0x2180
	.byte	0x7c
	.uleb128 0x15
	.string	"OMCR0"
	.byte	0x4
	.uahalf	0x30f
	.uaword	0x1fde
	.byte	0x80
	.uleb128 0x15
	.string	"OMCR4"
	.byte	0x4
	.uahalf	0x310
	.uaword	0x2057
	.byte	0x84
	.uleb128 0x15
	.string	"OMCR8"
	.byte	0x4
	.uahalf	0x311
	.uaword	0x2093
	.byte	0x88
	.uleb128 0x15
	.string	"OMCR12"
	.byte	0x4
	.uahalf	0x312
	.uaword	0x201a
	.byte	0x8c
	.uleb128 0x15
	.string	"OMSR"
	.byte	0x4
	.uahalf	0x313
	.uaword	0x2109
	.byte	0x90
	.uleb128 0x15
	.string	"OMCR"
	.byte	0x4
	.uahalf	0x314
	.uaword	0x1fa3
	.byte	0x94
	.uleb128 0x15
	.string	"reserved_98"
	.byte	0x4
	.uahalf	0x315
	.uaword	0x2c5
	.byte	0x98
	.uleb128 0x15
	.string	"LPCR0"
	.byte	0x4
	.uahalf	0x316
	.uaword	0x1ee1
	.byte	0xa0
	.uleb128 0x15
	.string	"LPCR1"
	.byte	0x4
	.uahalf	0x317
	.uaword	0x1f2b
	.byte	0xa4
	.uleb128 0x15
	.string	"LPCR2"
	.byte	0x4
	.uahalf	0x318
	.uaword	0x1f67
	.byte	0xa8
	.uleb128 0x15
	.string	"reserved_A4"
	.byte	0x4
	.uahalf	0x319
	.uaword	0x2575
	.byte	0xac
	.uleb128 0x15
	.string	"ACCEN1"
	.byte	0x4
	.uahalf	0x31a
	.uaword	0x1d07
	.byte	0xf8
	.uleb128 0x15
	.string	"ACCEN0"
	.byte	0x4
	.uahalf	0x31b
	.uaword	0x1cca
	.byte	0xfc
	.byte	0
	.uleb128 0x9
	.uaword	0x18f
	.uaword	0x2585
	.uleb128 0xa
	.uaword	0x2a9
	.byte	0x4b
	.byte	0
	.uleb128 0x10
	.string	"Ifx_P"
	.byte	0x4
	.uahalf	0x31c
	.uaword	0x2593
	.uleb128 0x17
	.uaword	0x2334
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2585
	.uleb128 0x17
	.uaword	0x180
	.uleb128 0x3
	.string	"uint16_t"
	.byte	0x5
	.byte	0x36
	.uaword	0x1bb
	.uleb128 0x3
	.string	"int32_t"
	.byte	0x5
	.byte	0x4f
	.uaword	0x158
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x5
	.byte	0x50
	.uaword	0x164
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"long double"
	.uleb128 0xb
	.string	"Point"
	.byte	0x8
	.byte	0x6
	.byte	0x64
	.uaword	0x2604
	.uleb128 0x8
	.string	"x"
	.byte	0x6
	.byte	0x66
	.uaword	0x25b3
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x6
	.byte	0x67
	.uaword	0x25b3
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"ParkingSystemPacket"
	.byte	0x14
	.byte	0x6
	.byte	0x6a
	.uaword	0x26a0
	.uleb128 0x8
	.string	"start_byte"
	.byte	0x6
	.byte	0x6c
	.uaword	0x1a0
	.byte	0
	.uleb128 0x8
	.string	"car_status"
	.byte	0x6
	.byte	0x6d
	.uaword	0x1a0
	.byte	0x1
	.uleb128 0x8
	.string	"car_current_position"
	.byte	0x6
	.byte	0x6e
	.uaword	0x25e1
	.byte	0x2
	.uleb128 0x8
	.string	"car_target_position"
	.byte	0x6
	.byte	0x6f
	.uaword	0x25e1
	.byte	0xa
	.uleb128 0x8
	.string	"car_command"
	.byte	0x6
	.byte	0x70
	.uaword	0x1a0
	.byte	0x12
	.uleb128 0x8
	.string	"crc"
	.byte	0x6
	.byte	0x71
	.uaword	0x1a0
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x7
	.byte	0x5b
	.uaword	0x25c2
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x8
	.byte	0x78
	.uaword	0x26a0
	.uleb128 0x10
	.string	"CounterType"
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x26a0
	.uleb128 0x10
	.string	"TickType"
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x26a0
	.uleb128 0x10
	.string	"AlarmType"
	.byte	0x8
	.uahalf	0x1d6
	.uaword	0x26a0
	.uleb128 0x18
	.byte	0x1
	.byte	0x8
	.uahalf	0x2b1
	.uaword	0x291a
	.uleb128 0x19
	.string	"E_OK"
	.sleb128 0
	.uleb128 0x19
	.string	"E_OS_ACCESS"
	.sleb128 1
	.uleb128 0x19
	.string	"E_OS_CALLEVEL"
	.sleb128 2
	.uleb128 0x19
	.string	"E_OS_ID"
	.sleb128 3
	.uleb128 0x19
	.string	"E_OS_LIMIT"
	.sleb128 4
	.uleb128 0x19
	.string	"E_OS_NOFUNC"
	.sleb128 5
	.uleb128 0x19
	.string	"E_OS_RESOURCE"
	.sleb128 6
	.uleb128 0x19
	.string	"E_OS_STATE"
	.sleb128 7
	.uleb128 0x19
	.string	"E_OS_VALUE"
	.sleb128 8
	.uleb128 0x19
	.string	"E_OS_SERVICEID"
	.sleb128 9
	.uleb128 0x19
	.string	"E_OS_ILLEGAL_ADDRESS"
	.sleb128 10
	.uleb128 0x19
	.string	"E_OS_MISSINGEND"
	.sleb128 11
	.uleb128 0x19
	.string	"E_OS_DISABLEDINT"
	.sleb128 12
	.uleb128 0x19
	.string	"E_OS_STACKFAULT"
	.sleb128 13
	.uleb128 0x19
	.string	"E_OS_PARAM_POINTER"
	.sleb128 14
	.uleb128 0x19
	.string	"E_OS_PROTECTION_MEMORY"
	.sleb128 15
	.uleb128 0x19
	.string	"E_OS_PROTECTION_TIME"
	.sleb128 16
	.uleb128 0x19
	.string	"E_OS_PROTECTION_ARRIVAL"
	.sleb128 17
	.uleb128 0x19
	.string	"E_OS_PROTECTION_LOCKED"
	.sleb128 18
	.uleb128 0x19
	.string	"E_OS_PROTECTION_EXCEPTION"
	.sleb128 19
	.uleb128 0x19
	.string	"E_OS_SPINLOCK"
	.sleb128 20
	.uleb128 0x19
	.string	"E_OS_INTERFERENCE_DEADLOCK"
	.sleb128 21
	.uleb128 0x19
	.string	"E_OS_NESTING_DEADLOCK"
	.sleb128 22
	.uleb128 0x19
	.string	"E_OS_CORE"
	.sleb128 23
	.uleb128 0x19
	.string	"E_OS_SYS_INIT"
	.sleb128 24
	.uleb128 0x19
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
	.sleb128 25
	.uleb128 0x19
	.string	"E_OS_SYS_TASK"
	.sleb128 26
	.uleb128 0x19
	.string	"E_OS_SYS_STACK"
	.sleb128 27
	.uleb128 0x19
	.string	"E_OS_SYS_ACT"
	.sleb128 28
	.byte	0
	.uleb128 0x10
	.string	"OsEE_status_type"
	.byte	0x8
	.uahalf	0x2d4
	.uaword	0x26f7
	.uleb128 0x10
	.string	"StatusType"
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x291a
	.uleb128 0x1a
	.string	"motor_index"
	.byte	0x1
	.byte	0x9
	.byte	0x34
	.uaword	0x2987
	.uleb128 0x19
	.string	"INDEX_FL"
	.sleb128 0
	.uleb128 0x19
	.string	"INDEX_FR"
	.sleb128 1
	.uleb128 0x19
	.string	"INDEX_RL"
	.sleb128 2
	.uleb128 0x19
	.string	"INDEX_RR"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"motor_index_t"
	.byte	0x9
	.byte	0x39
	.uaword	0x2946
	.uleb128 0xb
	.string	"Ultrasonic"
	.byte	0xa
	.byte	0xa
	.byte	0x1e
	.uaword	0x29f6
	.uleb128 0x8
	.string	"TRIG_PORT"
	.byte	0xa
	.byte	0x20
	.uaword	0x2598
	.byte	0
	.uleb128 0x8
	.string	"TRIG_PIN"
	.byte	0xa
	.byte	0x21
	.uaword	0x1a0
	.byte	0x4
	.uleb128 0x8
	.string	"ECHO_PORT"
	.byte	0xa
	.byte	0x22
	.uaword	0x2598
	.byte	0x5
	.uleb128 0x8
	.string	"ECHO_PIN"
	.byte	0xa
	.byte	0x23
	.uaword	0x1a0
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"clock_t"
	.byte	0xb
	.byte	0x68
	.uaword	0x164
	.uleb128 0x7
	.byte	0x10
	.byte	0xc
	.byte	0x27
	.uaword	0x2a33
	.uleb128 0x8
	.string	"steering_angle"
	.byte	0xc
	.byte	0x28
	.uaword	0x14e
	.byte	0
	.uleb128 0x8
	.string	"speed"
	.byte	0xc
	.byte	0x29
	.uaword	0x14e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"DriveCommand"
	.byte	0xc
	.byte	0x2a
	.uaword	0x2a05
	.uleb128 0x1a
	.string	"CAR_STATUS_TYPE_T"
	.byte	0x1
	.byte	0xd
	.byte	0x2c
	.uaword	0x2b0e
	.uleb128 0x19
	.string	"CAR_STATUS_READY"
	.sleb128 0
	.uleb128 0x19
	.string	"CAR_STATUS_RUNNING"
	.sleb128 1
	.uleb128 0x19
	.string	"CAR_STATUS_STOP"
	.sleb128 2
	.uleb128 0x19
	.string	"CAR_STATUS_TERMINATED"
	.sleb128 3
	.uleb128 0x19
	.string	"CAR_STATUS_ERROR_OBSTACLE"
	.sleb128 4
	.uleb128 0x19
	.string	"CAR_STATUS_ERROR_BAD_CONNECTION"
	.sleb128 5
	.uleb128 0x19
	.string	"CAR_STATUS_ERROR_HARDWARE"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CAR_STATUS_TYPE"
	.byte	0xd
	.byte	0x34
	.uaword	0x2a47
	.uleb128 0x1a
	.string	"CAR_COMMAND_TYPE_T"
	.byte	0x1
	.byte	0xd
	.byte	0x35
	.uaword	0x2bb0
	.uleb128 0x19
	.string	"CAR_COMMAND_FORCESTOP"
	.sleb128 0
	.uleb128 0x19
	.string	"CAR_COMMAND_START"
	.sleb128 1
	.uleb128 0x19
	.string	"CAR_COMMAND_STOP"
	.sleb128 2
	.uleb128 0x19
	.string	"CAR_COMMAND_RESERVED1"
	.sleb128 3
	.uleb128 0x19
	.string	"CAR_COMMAND_RESERVED2"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"CAR_COMMAND_TYPE"
	.byte	0xd
	.byte	0x3b
	.uaword	0x2b25
	.uleb128 0x1a
	.string	"ERROR_CODE_TYPE_T"
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uaword	0x2d08
	.uleb128 0x19
	.string	"ERROR_CODE_USER_CONTROL"
	.sleb128 0
	.uleb128 0x19
	.string	"ERROR_CODE_OBSTACLE"
	.sleb128 1
	.uleb128 0x19
	.string	"ERROR_CODE_CONNECTION_LOST"
	.sleb128 2
	.uleb128 0x19
	.string	"ERROR_CODE_UNDEFINED_STATUS"
	.sleb128 3
	.uleb128 0x19
	.string	"ERROR_CODE_4"
	.sleb128 4
	.uleb128 0x19
	.string	"ERROR_CODE_5"
	.sleb128 5
	.uleb128 0x19
	.string	"ERROR_CODE_6"
	.sleb128 6
	.uleb128 0x19
	.string	"ERROR_CODE_7"
	.sleb128 7
	.uleb128 0x19
	.string	"ERROR_CODE_8"
	.sleb128 8
	.uleb128 0x19
	.string	"ERROR_CODE_9"
	.sleb128 9
	.uleb128 0x19
	.string	"ERROR_CODE_10"
	.sleb128 10
	.uleb128 0x19
	.string	"ERROR_CODE_11"
	.sleb128 11
	.uleb128 0x19
	.string	"ERROR_CODE_12"
	.sleb128 12
	.uleb128 0x19
	.string	"ERROR_CODE_13"
	.sleb128 13
	.uleb128 0x19
	.string	"ERROR_CODE_14"
	.sleb128 14
	.uleb128 0x19
	.string	"ERROR_CODE_15"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"ERROR_CODE_TYPE"
	.byte	0xd
	.byte	0x4d
	.uaword	0x2bc8
	.uleb128 0xb
	.string	"Position"
	.byte	0x10
	.byte	0xd
	.byte	0x4e
	.uaword	0x2d45
	.uleb128 0x8
	.string	"x"
	.byte	0xd
	.byte	0x50
	.uaword	0x14e
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0xd
	.byte	0x51
	.uaword	0x14e
	.byte	0x8
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"calculateCurrentPos"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"AppTimerISR"
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.uaword	.LFB597
	.uaword	.LFE597
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2da5
	.uleb128 0x1d
	.uaword	.LVL0
	.uaword	0x3adf
	.uaword	0x2d94
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
	.uaword	0x3b0f
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
	.byte	0x1a
	.byte	0x1
	.uaword	.LFB598
	.uaword	.LFE598
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2eef
	.uleb128 0x1d
	.uaword	.LVL2
	.uaword	0x3b35
	.uaword	0x2de2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL3
	.uaword	0x3b53
	.uaword	0x2df5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL4
	.uaword	0x3b53
	.uaword	0x2e08
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL5
	.uaword	0x3b35
	.uaword	0x2e1f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL6
	.uaword	0x3b74
	.uaword	0x2e32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL7
	.uaword	0x3b74
	.uaword	0x2e45
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL8
	.uaword	0x3b74
	.uaword	0x2e58
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL9
	.uaword	0x3b74
	.uaword	0x2e6b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL10
	.uaword	0x3b99
	.uaword	0x2e7e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL11
	.uaword	0x3b99
	.uaword	0x2e91
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL12
	.uaword	0x3b99
	.uaword	0x2ea4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL13
	.uaword	0x3b99
	.uaword	0x2eb7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL14
	.uaword	0x3bb4
	.uaword	0x2ed4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL15
	.byte	0x1
	.uaword	0x3bb4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"exitShiParkerApp"
	.byte	0x1
	.byte	0x3a
	.uaword	.LFB599
	.uaword	.LFE599
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2fd2
	.uleb128 0x1d
	.uaword	.LVL16
	.uaword	0x3b35
	.uaword	0x2f2a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL17
	.uaword	0x3b99
	.uaword	0x2f3d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL18
	.uaword	0x3b99
	.uaword	0x2f50
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL19
	.uaword	0x3b99
	.uaword	0x2f63
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL20
	.uaword	0x3b99
	.uaword	0x2f76
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL21
	.uaword	0x3bdf
	.uaword	0x2f89
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL22
	.uaword	0x3b53
	.uaword	0x2f9c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL23
	.uaword	0x3b53
	.uaword	0x2faf
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL24
	.uaword	0x3b53
	.uaword	0x2fc2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x21
	.uaword	.LVL25
	.uaword	0x3b53
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"turn90"
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.uaword	.LFB602
	.uaword	.LFE602
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x31bb
	.uleb128 0x23
	.string	"currentHallCntAvg"
	.byte	0x1
	.byte	0xdd
	.uaword	0x31bb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.string	"targetHallCntAvg"
	.byte	0x1
	.byte	0xde
	.uaword	0x31bb
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x24
	.uaword	.LVL26
	.uaword	0x3c01
	.uleb128 0x1d
	.uaword	.LVL28
	.uaword	0x3b53
	.uaword	0x3040
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL29
	.uaword	0x3b99
	.uaword	0x3053
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL30
	.uaword	0x3b99
	.uaword	0x3066
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL31
	.uaword	0x3b99
	.uaword	0x3079
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL32
	.uaword	0x3b99
	.uaword	0x308c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL33
	.uaword	0x3c19
	.uaword	0x309f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL34
	.uaword	0x3c19
	.uaword	0x30b2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL35
	.uaword	0x3c3b
	.uaword	0x30c5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL36
	.uaword	0x3c3b
	.uaword	0x30d8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL37
	.uaword	0x3b74
	.uaword	0x30eb
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL38
	.uaword	0x3b74
	.uaword	0x30fe
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL39
	.uaword	0x3b74
	.uaword	0x3111
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL40
	.uaword	0x3b74
	.uaword	0x3124
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL42
	.uaword	0x3c5e
	.uaword	0x3137
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL43
	.uaword	0x3c77
	.uaword	0x314b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL44
	.uaword	0x3c01
	.uleb128 0x1d
	.uaword	.LVL45
	.uaword	0x3b74
	.uaword	0x3167
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL46
	.uaword	0x3b74
	.uaword	0x317a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL47
	.uaword	0x3b74
	.uaword	0x318d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL48
	.uaword	0x3b74
	.uaword	0x31a0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL49
	.byte	0x1
	.uaword	0x3bb4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x14e
	.uleb128 0x25
	.uaword	0x2d45
	.uaword	.LFB603
	.uaword	.LFE603
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x31e7
	.uleb128 0x24
	.uaword	.LVL50
	.uaword	0x3c01
	.uleb128 0x24
	.uaword	.LVL52
	.uaword	0x3c01
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"FuncWallFollowTask"
	.byte	0x1
	.uahalf	0x11b
	.byte	0x1
	.uaword	.LFB604
	.uaword	.LFE604
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x33f1
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x28
	.string	"cmd"
	.byte	0x1
	.uahalf	0x134
	.uaword	0x2a33
	.uaword	.LLST0
	.uleb128 0x28
	.string	"delta_p"
	.byte	0x1
	.uahalf	0x136
	.uaword	0x14e
	.uaword	.LLST1
	.uleb128 0x24
	.uaword	.LVL54
	.uaword	0x3c98
	.uleb128 0x24
	.uaword	.LVL55
	.uaword	0x3c98
	.uleb128 0x1d
	.uaword	.LVL56
	.uaword	0x3c77
	.uaword	0x3261
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL57
	.uaword	0x3c77
	.uaword	0x3278
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC5
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL58
	.uaword	0x3cc0
	.uaword	0x328c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL60
	.uaword	0x3c77
	.uaword	0x32b0
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
	.uleb128 0x14e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC6
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL66
	.uaword	0x3b74
	.uaword	0x32c3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL68
	.uaword	0x3b74
	.uaword	0x32d6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL70
	.uaword	0x3b74
	.uaword	0x32e9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL72
	.uaword	0x3b74
	.uaword	0x32fc
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL73
	.uaword	0x3c19
	.uaword	0x330f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL74
	.uaword	0x3c19
	.uaword	0x3322
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL75
	.uaword	0x3c19
	.uaword	0x3335
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL76
	.uaword	0x3c19
	.uaword	0x3348
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x24
	.uaword	.LVL77
	.uaword	0x2d45
	.uleb128 0x1d
	.uaword	.LVL79
	.uaword	0x3b99
	.uaword	0x3364
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL80
	.uaword	0x3b99
	.uaword	0x3377
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL81
	.uaword	0x3b99
	.uaword	0x338a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL82
	.uaword	0x3b99
	.uaword	0x339d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x29
	.uaword	.LVL84
	.byte	0x1
	.uaword	0x2fd2
	.uleb128 0x1d
	.uaword	.LVL86
	.uaword	0x3b99
	.uaword	0x33ba
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL87
	.uaword	0x3b99
	.uaword	0x33cd
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL88
	.uaword	0x3b99
	.uaword	0x33e0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x21
	.uaword	.LVL89
	.uaword	0x3b99
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"makePacket"
	.byte	0x1
	.uahalf	0x15f
	.byte	0x1
	.uaword	.LFB606
	.uaword	.LFE606
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3422
	.uleb128 0x2a
	.string	"dst"
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x3422
	.uaword	.LLST2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2604
	.uleb128 0x2b
	.byte	0x1
	.string	"FuncPacketSendTask"
	.byte	0x1
	.uahalf	0x159
	.byte	0x1
	.uaword	.LFB605
	.uaword	.LFE605
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3476
	.uleb128 0x1d
	.uaword	.LVL96
	.uaword	0x33f1
	.uaword	0x3464
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL97
	.byte	0x1
	.uaword	0x3ced
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"updateStatus"
	.byte	0x1
	.uahalf	0x169
	.byte	0x1
	.uaword	.LFB607
	.uaword	.LFE607
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x34ac
	.uleb128 0x2a
	.string	"packet"
	.byte	0x1
	.uahalf	0x169
	.uaword	0x34ac
	.uaword	.LLST3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x34b2
	.uleb128 0x5
	.uaword	0x2604
	.uleb128 0x2b
	.byte	0x1
	.string	"handleError"
	.byte	0x1
	.uahalf	0x170
	.byte	0x1
	.uaword	.LFB608
	.uaword	.LFE608
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x35e4
	.uleb128 0x2a
	.string	"errorCode"
	.byte	0x1
	.uahalf	0x170
	.uaword	0x2d08
	.uaword	.LLST4
	.uleb128 0x1d
	.uaword	.LVL103
	.uaword	0x3b53
	.uaword	0x3501
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL104
	.uaword	0x3b53
	.uaword	0x3514
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL105
	.uaword	0x3b53
	.uaword	0x3527
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL106
	.uaword	0x3b99
	.uaword	0x353a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL107
	.uaword	0x3b99
	.uaword	0x354d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL108
	.uaword	0x3b99
	.uaword	0x3560
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL109
	.uaword	0x3b99
	.uaword	0x3573
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL110
	.uaword	0x3b35
	.uaword	0x3599
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC7
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
	.uaword	.LVL111
	.uaword	0x3bdf
	.uaword	0x35ac
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL112
	.uaword	0x3b35
	.uaword	0x35ca
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC8
	.uleb128 0x1e
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL113
	.uaword	0x2eef
	.uleb128 0x1f
	.uaword	.LVL114
	.byte	0x1
	.uaword	0x3bdf
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
	.byte	0x4c
	.byte	0x1
	.uaword	.LFB600
	.uaword	.LFE600
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3734
	.uleb128 0x1d
	.uaword	.LVL115
	.uaword	0x3b35
	.uaword	0x362b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC9
	.uleb128 0x1e
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL116
	.uaword	0x3d08
	.uleb128 0x24
	.uaword	.LVL117
	.uaword	0x3476
	.uleb128 0x1d
	.uaword	.LVL118
	.uaword	0x3b99
	.uaword	0x3650
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL119
	.uaword	0x3b99
	.uaword	0x3663
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL120
	.uaword	0x3b99
	.uaword	0x3676
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL121
	.uaword	0x3b99
	.uaword	0x3689
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL122
	.uaword	0x3b53
	.uaword	0x369c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL123
	.uaword	0x3b53
	.uaword	0x36af
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL124
	.uaword	0x3b53
	.uaword	0x36c2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x29
	.uaword	.LVL125
	.byte	0x1
	.uaword	0x3bb4
	.uleb128 0x29
	.uaword	.LVL126
	.byte	0x1
	.uaword	0x2eef
	.uleb128 0x1d
	.uaword	.LVL127
	.uaword	0x3b53
	.uaword	0x36e9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL128
	.uaword	0x3bb4
	.uaword	0x3706
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL129
	.uaword	0x3bb4
	.uaword	0x3723
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL130
	.byte	0x1
	.uaword	0x34b7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"FuncAvoidObstacleTask"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.uaword	.LFB601
	.uaword	.LFE601
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x37ab
	.uleb128 0x23
	.string	"dx"
	.byte	0x1
	.byte	0xc4
	.uaword	0x31bb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.string	"dy"
	.byte	0x1
	.byte	0xc5
	.uaword	0x31bb
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2c
	.string	"dist"
	.byte	0x1
	.byte	0xcc
	.uaword	0x14e
	.uaword	.LLST5
	.uleb128 0x24
	.uaword	.LVL133
	.uaword	0x3d08
	.uleb128 0x24
	.uaword	.LVL134
	.uaword	0x3c98
	.uleb128 0x1f
	.uaword	.LVL139
	.byte	0x1
	.uaword	0x34b7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2d
	.string	"pid_prev_error"
	.byte	0xc
	.byte	0x22
	.uaword	0x14e
	.byte	0x8
	.uaword	0
	.uaword	0
	.uleb128 0x2d
	.string	"pid_integral"
	.byte	0xc
	.byte	0x23
	.uaword	0x14e
	.byte	0x8
	.uaword	0
	.uaword	0
	.uleb128 0x2e
	.string	"pid_last_time"
	.byte	0xc
	.byte	0x24
	.uaword	0x29f6
	.byte	0
	.uleb128 0x9
	.uaword	0x22f
	.uaword	0x380d
	.uleb128 0xa
	.uaword	0x2a9
	.byte	0xf
	.byte	0
	.uleb128 0x23
	.string	"errorMessages"
	.byte	0xd
	.byte	0x54
	.uaword	0x3828
	.byte	0x5
	.byte	0x3
	.uaword	errorMessages
	.uleb128 0x5
	.uaword	0x37fd
	.uleb128 0x23
	.string	"carStatusPacket"
	.byte	0x1
	.byte	0xd
	.uaword	0x2604
	.byte	0x5
	.byte	0x3
	.uaword	carStatusPacket
	.uleb128 0x23
	.string	"carStatus"
	.byte	0x1
	.byte	0xe
	.uaword	0x2b0e
	.byte	0x5
	.byte	0x3
	.uaword	carStatus
	.uleb128 0x23
	.string	"carCommand"
	.byte	0x1
	.byte	0xf
	.uaword	0x2bb0
	.byte	0x5
	.byte	0x3
	.uaword	carCommand
	.uleb128 0x23
	.string	"currentPosition"
	.byte	0x1
	.byte	0x10
	.uaword	0x2d1f
	.byte	0x5
	.byte	0x3
	.uaword	currentPosition
	.uleb128 0x23
	.string	"targetPosition"
	.byte	0x1
	.byte	0x11
	.uaword	0x2d1f
	.byte	0x5
	.byte	0x3
	.uaword	targetPosition
	.uleb128 0x23
	.string	"currentDirection"
	.byte	0x1
	.byte	0x12
	.uaword	0x1a0
	.byte	0x5
	.byte	0x3
	.uaword	currentDirection
	.uleb128 0x9
	.uaword	0x26f
	.uaword	0x38e0
	.uleb128 0xa
	.uaword	0x2a9
	.byte	0x2
	.byte	0
	.uleb128 0x2f
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xe
	.byte	0xa7
	.uaword	0x38fd
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x38d0
	.uleb128 0x2f
	.string	"g_FRHallCnt"
	.byte	0xf
	.byte	0x1a
	.uaword	0x3917
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.uaword	0x1ad
	.uleb128 0x2f
	.string	"g_FLHallCnt"
	.byte	0xf
	.byte	0x1b
	.uaword	0x3917
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"g_RRHallCnt"
	.byte	0xf
	.byte	0x1c
	.uaword	0x3917
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"g_RLHallCnt"
	.byte	0xf
	.byte	0x1d
	.uaword	0x3917
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"g_isRecieved"
	.byte	0x10
	.byte	0x19
	.uaword	0x259e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"g_RecievedParkingSystemPacket"
	.byte	0x10
	.byte	0x1a
	.uaword	0x2604
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"g_Ultrasonic_FL"
	.byte	0xa
	.byte	0x26
	.uaword	0x299c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"g_Ultrasonic_FRONT"
	.byte	0xa
	.byte	0x27
	.uaword	0x299c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"g_Ultrasonic_RL"
	.byte	0xa
	.byte	0x28
	.uaword	0x299c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"min_dist_left"
	.byte	0xc
	.byte	0x20
	.uaword	0x39fd
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.uaword	0x25a3
	.uleb128 0x30
	.string	"g_isAppRunning"
	.byte	0x1
	.byte	0xc
	.uaword	0x180
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_isAppRunning
	.uleb128 0x30
	.string	"motor_power_turn"
	.byte	0x1
	.byte	0x5
	.uaword	0x3a3e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	motor_power_turn
	.uleb128 0x5
	.uaword	0x31bb
	.uleb128 0x30
	.string	"motor_power_normal"
	.byte	0x1
	.byte	0x6
	.uaword	0x3a3e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	motor_power_normal
	.uleb128 0x30
	.string	"Kp_rad_to_delta_power"
	.byte	0x1
	.byte	0x7
	.uaword	0x3a3e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Kp_rad_to_delta_power
	.uleb128 0x30
	.string	"error_target_position"
	.byte	0x1
	.byte	0xa
	.uaword	0x3a3e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	error_target_position
	.uleb128 0x31
	.string	"FrontUltra"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x31bb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FrontUltra
	.uleb128 0x31
	.string	"RearUltra"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x31bb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RearUltra
	.uleb128 0x32
	.byte	0x1
	.string	"osEE_tc_stm_set_sr1_next_match"
	.byte	0x11
	.uahalf	0x3eb
	.byte	0x1
	.byte	0x1
	.uaword	0x3b0f
	.uleb128 0x33
	.uaword	0x26a0
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"IncrementCounter"
	.byte	0x13
	.uahalf	0x45c
	.byte	0x1
	.uaword	0x2933
	.byte	0x1
	.uaword	0x3b35
	.uleb128 0x33
	.uaword	0x26c0
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"printfSerial"
	.byte	0x12
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.uaword	0x3b53
	.uleb128 0x33
	.uaword	0x22f
	.uleb128 0x36
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"CancelAlarm"
	.byte	0x13
	.uahalf	0x313
	.byte	0x1
	.uaword	0x2933
	.byte	0x1
	.uaword	0x3b74
	.uleb128 0x33
	.uaword	0x26e5
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"set_motor_power"
	.byte	0x9
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uaword	0x3b99
	.uleb128 0x33
	.uaword	0x2987
	.uleb128 0x33
	.uaword	0x14e
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"motor_stop"
	.byte	0x9
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uaword	0x3bb4
	.uleb128 0x33
	.uaword	0x2987
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"SetRelAlarm"
	.byte	0x13
	.uahalf	0x294
	.byte	0x1
	.uaword	0x2933
	.byte	0x1
	.uaword	0x3bdf
	.uleb128 0x33
	.uaword	0x26e5
	.uleb128 0x33
	.uaword	0x26d4
	.uleb128 0x33
	.uaword	0x26d4
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"ActivateTask"
	.byte	0x13
	.uahalf	0x178
	.byte	0x1
	.uaword	0x2933
	.byte	0x1
	.uaword	0x3c01
	.uleb128 0x33
	.uaword	0x26b0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"getHallCntAvg"
	.byte	0xf
	.byte	0x22
	.byte	0x1
	.uaword	0x14e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"motor_run_forward"
	.byte	0x9
	.byte	0x40
	.byte	0x1
	.byte	0x1
	.uaword	0x3c3b
	.uleb128 0x33
	.uaword	0x2987
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"motor_run_backward"
	.byte	0x9
	.byte	0x41
	.byte	0x1
	.byte	0x1
	.uaword	0x3c5e
	.uleb128 0x33
	.uaword	0x2987
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"delay_ms"
	.byte	0x12
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.uaword	0x3c77
	.uleb128 0x33
	.uaword	0x164
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"printDouble"
	.byte	0x12
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.uaword	0x3c98
	.uleb128 0x33
	.uaword	0x22f
	.uleb128 0x33
	.uaword	0x14e
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"getUltrasonic"
	.byte	0xa
	.byte	0x2e
	.byte	0x1
	.uaword	0x14e
	.byte	0x1
	.uaword	0x3cba
	.uleb128 0x33
	.uaword	0x3cba
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x299c
	.uleb128 0x38
	.byte	0x1
	.string	"wall_follow_control"
	.byte	0xc
	.byte	0x2e
	.byte	0x1
	.uaword	0x2a33
	.byte	0x1
	.uaword	0x3ced
	.uleb128 0x33
	.uaword	0x14e
	.uleb128 0x33
	.uaword	0x14e
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"sendPacket"
	.byte	0x10
	.byte	0x1f
	.byte	0x1
	.byte	0x1
	.uaword	0x3d08
	.uleb128 0x33
	.uaword	0x34ac
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"TerminateTask"
	.byte	0x13
	.uahalf	0x1c9
	.byte	0x1
	.uaword	0x2933
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
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
	.uleb128 0x2b
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL64-.Ltext0
	.uahalf	0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x6
	.byte	0x8a
	.sleb128 0
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL83-.Ltext0
	.uaword	.LVL84-.Ltext0
	.uahalf	0x6
	.byte	0x8a
	.sleb128 -16
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL84-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x6
	.byte	0x8a
	.sleb128 0
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL62-1-.Ltext0
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x14e
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x14e
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL92-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL92-1-.Ltext0
	.uaword	.LFE606-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL98-.Ltext0
	.uaword	.LVL99-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL99-1-.Ltext0
	.uaword	.LFE607-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL101-.Ltext0
	.uaword	.LVL102-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL102-.Ltext0
	.uaword	.LFE608-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-1-.Ltext0
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL136-1-.Ltext0
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
	.uaword	.LBB4-.Ltext0
	.uaword	.LBE4-.Ltext0
	.uaword	.LBB5-.Ltext0
	.uaword	.LBE5-.Ltext0
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
	.extern	g_isRecieved,STT_OBJECT,1
	.extern	g_RecievedParkingSystemPacket,STT_OBJECT,20
	.extern	sendPacket,STT_FUNC,0
	.extern	wall_follow_control,STT_FUNC,0
	.extern	g_Ultrasonic_RL,STT_OBJECT,10
	.extern	getUltrasonic,STT_FUNC,0
	.extern	min_dist_left,STT_OBJECT,2
	.extern	g_Ultrasonic_FL,STT_OBJECT,10
	.extern	g_RRHallCnt,STT_OBJECT,2
	.extern	g_RLHallCnt,STT_OBJECT,2
	.extern	g_FRHallCnt,STT_OBJECT,2
	.extern	g_FLHallCnt,STT_OBJECT,2
	.extern	printDouble,STT_FUNC,0
	.extern	delay_ms,STT_FUNC,0
	.extern	motor_run_backward,STT_FUNC,0
	.extern	motor_run_forward,STT_FUNC,0
	.extern	getHallCntAvg,STT_FUNC,0
	.extern	ActivateTask,STT_FUNC,0
	.extern	SetRelAlarm,STT_FUNC,0
	.extern	motor_stop,STT_FUNC,0
	.extern	set_motor_power,STT_FUNC,0
	.extern	CancelAlarm,STT_FUNC,0
	.extern	printfSerial,STT_FUNC,0
	.extern	IncrementCounter,STT_FUNC,0
	.extern	osEE_tc_stm_set_sr1_next_match,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
