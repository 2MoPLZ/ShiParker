	.file	"ee_oo_api_osek.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
<<<<<<< Updated upstream
	.type	osEE_shutdown_os, @function
osEE_shutdown_os:
.LFB100:
	.file 1 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_kernel.h"
	.loc 1 714 0
=======
	.type	osEE_begin_primitive, @function
osEE_begin_primitive:
.LFB83:
	.file 1 "C:\\SHIPAR~1\\TC275\\erika\\src\\ee_kernel.h"
	.loc 1 253 0
.LBB457:
.LBB458:
.LBB459:
.LBB460:
.LBB461:
	.file 2 "C:\\SHIPAR~1\\TC275\\erika\\src\\ee_hal_internal.h"
	.loc 2 259 0
#APP
	# 259 "C:\SHIPAR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d2, LO:65068
	# 0 "" 2
>>>>>>> Stashed changes
.LVL0:
#NO_APP
.LBE461:
.LBE460:
.LBE459:
	.loc 2 365 0
	and	%d15, %d2, 255
.LVL1:
	ge.u	%d15, %d15, 17
.LVL2:
	jnz	%d15, .L2
.LBB462:
	.loc 2 366 0
	mov	%d15, %d2
.LVL3:
	mov	%d3, 17
	insert	%d15, %d15, %d3, 0, 8
.LVL4:
.LBB463:
.LBB464:
	.loc 2 265 0
#APP
	# 265 "C:\SHIPAR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL5:
#NO_APP
.L2:
.LBE464:
.LBE463:
.LBE462:
.LBE458:
.LBE457:
	.loc 1 255 0
	ret
.LFE83:
	.size	osEE_begin_primitive, .-osEE_begin_primitive
	.align 1
	.type	osEE_end_primitive, @function
osEE_end_primitive:
.LFB84:
	.loc 1 262 0
.LVL6:
.LBB465:
.LBB466:
.LBB467:
.LBB468:
.LBB469:
	.loc 2 259 0
#APP
	# 259 "C:\SHIPAR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d2, LO:65068
	# 0 "" 2
.LVL7:
#NO_APP
	and	%d3, %d2, 255
.LVL8:
.LBE469:
.LBE468:
.LBE467:
	.loc 2 383 0
	and	%d15, %d4, 255
	jeq	%d3, %d15, .L4
.LVL9:
	insert	%d2, %d2, %d15, 0, 8
.LVL10:
.LBB470:
.LBB471:
	.loc 2 265 0
#APP
	# 265 "C:\SHIPAR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d2
	isync
	# 0 "" 2
.LVL11:
#NO_APP
.L4:
	ret
.LBE471:
.LBE470:
.LBE466:
.LBE465:
.LFE84:
	.size	osEE_end_primitive, .-osEE_end_primitive
	.align 1
	.type	osEE_shutdown_os.constprop.15, @function
osEE_shutdown_os.constprop.15:
.LFB154:
	.loc 1 709 0
.LVL12:
	.loc 1 715 0
	movh.a	%a15, hi:osEE_cdb_var
	lea	%a2, [%a15] lo:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL13:
	.loc 1 718 0
	mov	%d2, 3
	.loc 1 716 0
	ld.bu	%d15, [%a15] 16
.LVL14:
	.loc 1 720 0
	st.b	[%a15] 18, %d4
	.loc 1 718 0
	st.b	[%a15] 16, %d2
	.loc 1 722 0
	jne	%d15, 2, .L7
	.loc 1 723 0
	ld.a	%a4, [%a2] 4
	call	osEE_idle_task_terminate
.LVL15:
.L7:
.L8:
	j	.L8
.LFE154:
	.size	osEE_shutdown_os.constprop.15, .-osEE_shutdown_os.constprop.15
	.align 1
	.global	DisableAllInterrupts
	.type	DisableAllInterrupts, @function
DisableAllInterrupts:
.LFB109:
<<<<<<< Updated upstream
	.file 2 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_oo_api_osek.c"
	.loc 2 64 0
	mov.aa	%a14, %SP
.LCFI1:
	.loc 2 66 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL5:
.LBB742:
.LBB743:
	.file 3 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_hal_internal.h"
	.loc 3 276 0
=======
	.file 3 "C:\\SHIPAR~1\\TC275\\erika\\src\\ee_oo_api_osek.c"
	.loc 3 64 0
	.loc 3 66 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL16:
.LBB472:
.LBB473:
	.loc 2 276 0
>>>>>>> Stashed changes
#APP
	# 276 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	disable
	# 0 "" 2
.LVL17:
#NO_APP
.LBE473:
.LBE472:
	.loc 3 73 0
	mov	%d15, 1
	st.b	[%a15] 30, %d15
.LVL18:
	ret
.LFE109:
	.size	DisableAllInterrupts, .-DisableAllInterrupts
	.align 1
	.global	EnableAllInterrupts
	.type	EnableAllInterrupts, @function
EnableAllInterrupts:
.LFB110:
	.loc 3 83 0
	.loc 3 90 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL19:
	.loc 3 96 0
	ld.bu	%d15, [%a15] 30
	jz	%d15, .L10
	.loc 3 97 0
	mov	%d15, 0
	st.b	[%a15] 30, %d15
.LBB474:
.LBB475:
	.loc 2 282 0
#APP
	# 282 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	enable
	# 0 "" 2
.LVL20:
#NO_APP
.L10:
	ret
.LBE475:
.LBE474:
.LFE110:
	.size	EnableAllInterrupts, .-EnableAllInterrupts
	.align 1
	.global	SuspendAllInterrupts
	.type	SuspendAllInterrupts, @function
SuspendAllInterrupts:
.LFB112:
	.loc 3 133 0
	.loc 3 135 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL21:
.LBB487:
.LBB488:
	.loc 3 113 0
	ld.bu	%d15, [%a15] 28
	jnz	%d15, .L16
.LBB489:
.LBB490:
.LBB491:
.LBB492:
.LBB493:
.LBB494:
	.loc 2 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL22:
#NO_APP
.LBE494:
.LBE493:
.LBE492:
.LBB495:
.LBB496:
	.loc 2 276 0
#APP
	# 276 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE496:
.LBE495:
.LBE491:
.LBE490:
	.loc 3 115 0
	st.w	[%a15] 20, %d15
	.loc 3 116 0
	ld.bu	%d15, [%a15] 28
.LVL23:
	j	.L19
.LVL24:
.L16:
.LBE489:
	.loc 3 117 0
	eq	%d2, %d15, 255
	jnz	%d2, .L18
.L19:
	.loc 3 118 0
	add	%d15, 1
	st.b	[%a15] 28, %d15
	ret
.L18:
	.loc 3 123 0
	mov	%d4, 25
	j	osEE_shutdown_os.constprop.15
.LVL25:
.LBE488:
.LBE487:
.LFE112:
	.size	SuspendAllInterrupts, .-SuspendAllInterrupts
	.align 1
	.global	ResumeAllInterrupts
	.type	ResumeAllInterrupts, @function
ResumeAllInterrupts:
.LFB113:
	.loc 3 153 0
	.loc 3 155 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL26:
	.loc 3 161 0
	ld.bu	%d15, [%a15] 28
	jz	%d15, .L20
	.loc 3 162 0
	add	%d15, -1
	and	%d15, 255
	st.b	[%a15] 28, %d15
	.loc 3 164 0
	jnz	%d15, .L20
.LVL27:
.LBB497:
.LBB498:
.LBB499:
.LBB500:
	.loc 2 265 0
	ld.w	%d15, [%a15] 20
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL28:
#NO_APP
.L20:
	ret
.LBE500:
.LBE499:
.LBE498:
.LBE497:
.LFE113:
	.size	ResumeAllInterrupts, .-ResumeAllInterrupts
	.align 1
	.global	SuspendOSInterrupts
	.type	SuspendOSInterrupts, @function
SuspendOSInterrupts:
.LFB114:
	.loc 3 179 0
	.loc 3 181 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL29:
	.loc 3 187 0
	ld.bu	%d15, [%a15] 29
	jnz	%d15, .L25
.LBB501:
.LBB502:
.LBB503:
.LBB504:
.LBB505:
.LBB506:
	.loc 2 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d2, LO:65068
	# 0 "" 2
.LVL30:
#NO_APP
.LBE506:
.LBE505:
.LBE504:
	.loc 2 365 0
	and	%d15, %d2, 255
<<<<<<< Updated upstream
.LVL20:
	ge.u	%d15, %d15, 100
.LVL21:
	jnz	%d15, .L15
.LBB777:
	.loc 3 366 0
	mov	%d15, %d2
.LVL22:
	mov	%d3, 100
=======
.LVL31:
	ge.u	%d15, %d15, 17
.LVL32:
	jnz	%d15, .L26
.LBB507:
	.loc 2 366 0
	mov	%d15, %d2
.LVL33:
	mov	%d3, 17
>>>>>>> Stashed changes
	insert	%d15, %d15, %d3, 0, 8
.LVL34:
.LBB508:
.LBB509:
	.loc 2 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL35:
#NO_APP
.L26:
.LBE509:
.LBE508:
.LBE507:
.LBE503:
.LBE502:
	.loc 3 189 0
	st.w	[%a15] 24, %d2
	.loc 3 190 0
	ld.bu	%d15, [%a15] 29
.LVL36:
	j	.L29
.LVL37:
.L25:
.LBE501:
	.loc 3 191 0
	eq	%d2, %d15, 255
	jnz	%d2, .L28
.L29:
	.loc 3 192 0
	add	%d15, 1
	st.b	[%a15] 29, %d15
	ret
.L28:
	.loc 3 197 0
	mov	%d4, 25
	j	osEE_shutdown_os.constprop.15
.LVL38:
.LFE114:
	.size	SuspendOSInterrupts, .-SuspendOSInterrupts
	.align 1
	.global	ResumeOSInterrupts
	.type	ResumeOSInterrupts, @function
ResumeOSInterrupts:
.LFB115:
	.loc 3 211 0
	.loc 3 213 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL39:
	.loc 3 219 0
	ld.bu	%d15, [%a15] 29
	jz	%d15, .L30
	.loc 3 220 0
	add	%d15, -1
	and	%d15, 255
	st.b	[%a15] 29, %d15
	.loc 3 222 0
	jnz	%d15, .L30
	.loc 3 223 0
	ld.w	%d2, [%a15] 24
.LVL40:
.LBB510:
.LBB511:
.LBB512:
.LBB513:
.LBB514:
	.loc 2 259 0
#APP
<<<<<<< Updated upstream
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
=======
	# 259 "C:\SHIPAR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d15, LO:65068
>>>>>>> Stashed changes
	# 0 "" 2
.LVL41:
#NO_APP
	and	%d3, %d15, 255
.LVL42:
.LBE514:
.LBE513:
.LBE512:
	.loc 2 383 0
	and	%d2, %d2, 255
.LVL43:
	jeq	%d3, %d2, .L30
.LVL44:
	insert	%d15, %d15, %d2, 0, 8
.LVL45:
.LBB515:
.LBB516:
	.loc 2 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL46:
#NO_APP
.L30:
	ret
.LBE516:
.LBE515:
.LBE511:
.LBE510:
.LFE115:
	.size	ResumeOSInterrupts, .-ResumeOSInterrupts
	.align 1
	.global	StartOS
	.type	StartOS, @function
StartOS:
.LFB116:
<<<<<<< Updated upstream
	.loc 2 237 0
.LVL37:
	mov.aa	%a14, %SP
.LCFI7:
	mov	%d9, %d4
.LVL38:
	.loc 2 246 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL39:
.LBB787:
.LBB788:
.LBB789:
.LBB790:
.LBB791:
.LBB792:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL40:
#NO_APP
.LBE792:
.LBE791:
.LBE790:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL41:
	ge.u	%d15, %d15, 100
.LVL42:
	jnz	%d15, .L22
.LBB793:
	.loc 3 366 0
	mov	%d15, %d8
.LVL43:
	mov	%d2, 100
	insert	%d15, %d15, %d2, 0, 8
.LVL44:
.LBB794:
.LBB795:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL45:
#NO_APP
.L22:
.LBE795:
.LBE794:
.LBE793:
.LBE789:
.LBE788:
.LBE787:
	.loc 2 254 0
	ld.bu	%d15, [%a15] 16
.LVL46:
	.loc 2 258 0
	mov	%d5, 1
	.loc 2 254 0
	jnz	%d15, .L23
	.loc 2 264 0
	call	osEE_cpu_startos
=======
	.loc 3 237 0
>>>>>>> Stashed changes
.LVL47:
	.loc 3 246 0
	movh.a	%a15, hi:osEE_cdb_var
	.loc 3 237 0
	mov	%d8, %d4
.LVL48:
	.loc 3 246 0
	lea	%a12, [%a15] lo:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL49:
	.loc 3 247 0
	call	osEE_begin_primitive
.LVL50:
	mov	%d15, %d2
.LVL51:
	.loc 3 254 0
	ld.bu	%d2, [%a15] 16
.LVL52:
	.loc 3 258 0
	mov	%d9, 1
	.loc 3 254 0
	jnz	%d2, .L36
	.loc 3 264 0
	call	osEE_cpu_startos
.LVL53:
	.loc 3 268 0
	mov	%d9, 24
	.loc 3 264 0
	jz	%d2, .L36
.LBB522:
	.loc 3 300 0
	mov	%d15, 1
.LVL54:
	st.b	[%a15] 16, %d15
	.loc 3 527 0
	ld.bu	%d15, [%a15] 16
	.loc 3 301 0
	st.b	[%a15] 17, %d8
	.loc 3 280 0
	ld.a	%a12, [%a12] 4
.LVL55:
	.loc 3 527 0
	jne	%d15, 1, .L41
	.loc 3 528 0
	mov	%d15, 2
	st.b	[%a15] 16, %d15
.L41:
.LVL56:
	.loc 3 537 0
	ld.bu	%d15, [%a15] 16
<<<<<<< Updated upstream
	jne	%d15, 2, .L25
.LVL50:
.LBB797:
.LBB798:
	.file 4 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_std_change_context.h"
=======
	jne	%d15, 2, .L38
.LVL57:
.LBB523:
.LBB524:
	.file 4 "C:\\SHIPAR~1\\TC275\\erika\\src\\ee_std_change_context.h"
>>>>>>> Stashed changes
	.loc 4 150 0
	ld.a	%a5, [%a12] 4
	mov.aa	%a4, %a12
	mov.aa	%a6, %a5
	call	osEE_hal_save_ctx_and_ready2stacked
.LVL58:
.LBE524:
.LBE523:
	.loc 3 539 0
	mov.aa	%a4, %a12
	call	osEE_task_end
.LVL59:
.L38:
.LBB525:
.LBB526:
	.loc 2 276 0
#APP
	# 276 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	disable
	# 0 "" 2
<<<<<<< Updated upstream
.LVL53:
#NO_APP
.L26:
.LBE800:
.LBE799:
	.loc 2 545 0 discriminator 1
	j	.L26
.LVL54:
.L27:
	insert	%d15, %d15, %d3, 0, 8
.LVL55:
.LBE796:
.LBB801:
.LBB802:
.LBB803:
.LBB804:
.LBB805:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
#NO_APP
	j	.L34
.LVL56:
.L23:
.LBE805:
.LBE804:
.LBB806:
.LBB807:
.LBB808:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d4, LO:65068
	# 0 "" 2
.LVL57:
#NO_APP
	mov	%d15, %d4
.LVL58:
	and	%d4, %d4, 255
.LVL59:
.LBE808:
.LBE807:
.LBE806:
	.loc 3 383 0
	and	%d3, %d8, 255
	jne	%d4, %d3, .L27
	j	.L34
=======
>>>>>>> Stashed changes
.LVL60:
#NO_APP
.L39:
.LBE526:
.LBE525:
	.loc 3 545 0 discriminator 1
	j	.L39
.LVL61:
.L36:
.LBE522:
	.loc 3 578 0
	mov	%d4, %d15
	call	osEE_end_primitive
.LVL62:
	.loc 3 582 0
	mov	%d2, %d9
	ret
.LFE116:
	.size	StartOS, .-StartOS
	.align 1
	.global	GetActiveApplicationMode
	.type	GetActiveApplicationMode, @function
GetActiveApplicationMode:
.LFB117:
	.loc 3 589 0
	.loc 3 598 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL63:
	.loc 3 607 0
	mov	%d2, 255
	.loc 3 604 0
	ld.bu	%d15, [%a15] 16
	jz	%d15, .L48
	.loc 3 605 0
	ld.bu	%d2, [%a15] 17
.LVL64:
.L48:
	.loc 3 613 0
	ret
.LFE117:
	.size	GetActiveApplicationMode, .-GetActiveApplicationMode
	.align 1
	.global	ActivateTask
	.type	ActivateTask, @function
ActivateTask:
.LFB118:
	.loc 3 620 0
.LVL65:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 655 0
	ld.w	%d2, [%a15] 8
	.loc 3 656 0
	mov	%d15, 3
	.loc 3 655 0
	jge.u	%d4, %d2, .L52
.LBB527:
	.loc 3 660 0
	ld.a	%a2, [%a15] 4
	addsc.a	%a2, %a2, %d4, 2
	ld.a	%a12, [%a2]0
.LVL66:
	.loc 3 662 0
	ld.bu	%d2, [%a12] 20
	jge.u	%d2, 2, .L52
.LBB528:
	.loc 3 663 0
	call	osEE_begin_primitive
.LVL67:
<<<<<<< Updated upstream
.LBB810:
.LBB811:
	.loc 1 276 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 8
.LBE811:
.LBE810:
	.loc 2 656 0
	mov	%d8, 3
	.loc 2 655 0
	jge.u	%d4, %d15, .L39
.LBB812:
	.loc 2 660 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d4, 2
	ld.a	%a15, [%a15]0
.LVL68:
	.loc 2 662 0
	ld.bu	%d15, [%a15] 20
	jge.u	%d15, 2, .L39
.LBB813:
.LBB814:
.LBB815:
.LBB816:
.LBB817:
.LBB818:
.LBB819:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d9, LO:65068
	# 0 "" 2
.LVL69:
#NO_APP
.LBE819:
.LBE818:
.LBE817:
	.loc 3 365 0
	and	%d15, %d9, 255
.LVL70:
	ge.u	%d15, %d15, 100
.LVL71:
	jnz	%d15, .L40
.LBB820:
	.loc 3 366 0
	mov	%d15, %d9
.LVL72:
	mov	%d2, 100
	insert	%d15, %d15, %d2, 0, 8
.LVL73:
.LBB821:
.LBB822:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL74:
#NO_APP
.L40:
.LBE822:
.LBE821:
.LBE820:
.LBE816:
.LBE815:
.LBE814:
	.loc 2 665 0
	mov.aa	%a4, %a15
	call	osEE_task_activated
.LVL75:
=======
	.loc 3 665 0
	mov.aa	%a4, %a12
	.loc 3 663 0
>>>>>>> Stashed changes
	mov	%d8, %d2
.LVL68:
	.loc 3 665 0
	call	osEE_task_activated
.LVL69:
	mov	%d15, %d2
.LVL70:
	.loc 3 667 0
	jnz	%d2, .L53
	.loc 3 668 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	call	osEE_scheduler_task_activated
<<<<<<< Updated upstream
.LVL77:
.L41:
.LBB823:
.LBB824:
.LBB825:
.LBB826:
.LBB827:
.LBB828:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL78:
#NO_APP
	mov	%d15, %d3
.LVL79:
	and	%d3, %d3, 255
.LVL80:
.LBE828:
.LBE827:
.LBE826:
	.loc 3 383 0
	and	%d2, %d9, 255
	jeq	%d3, %d2, .L39
.LVL81:
	insert	%d15, %d15, %d2, 0, 8
.LVL82:
.LBB829:
.LBB830:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL83:
#NO_APP
.L39:
.LBE830:
.LBE829:
.LBE825:
.LBE824:
.LBE823:
.LBE813:
.LBE812:
	.loc 2 692 0
	mov	%d2, %d8
=======
.LVL71:
.L53:
	.loc 3 671 0
	mov	%d4, %d8
	call	osEE_end_primitive
.LVL72:
.L52:
.LBE528:
.LBE527:
	.loc 3 692 0
	mov	%d2, %d15
>>>>>>> Stashed changes
	ret
.LFE118:
	.size	ActivateTask, .-ActivateTask
	.align 1
	.global	ChainTask
	.type	ChainTask, @function
ChainTask:
.LFB119:
	.loc 3 699 0
.LVL73:
	.loc 3 711 0
	movh.a	%a14, hi:osEE_cdb_var
	movh.a	%a13, hi:osEE_kdb_var
	ld.a	%a15, [%a14] lo:osEE_cdb_var
.LVL74:
	lea	%a13, [%a13] lo:osEE_kdb_var
	.loc 3 745 0
	ld.w	%d2, [%a13] 8
	.loc 3 713 0
	ld.w	%d9, [%a15]0
.LVL75:
	.loc 3 746 0
	mov	%d15, 3
	.loc 3 745 0
	jge.u	%d4, %d2, .L69
.LBB529:
	.loc 3 749 0
	ld.a	%a2, [%a13] 4
	addsc.a	%a2, %a2, %d4, 2
	ld.a	%a12, [%a2]0
.LVL76:
	.loc 3 771 0
	ld.bu	%d2, [%a12] 20
	jge.u	%d2, 2, .L69
.LBB530:
	.loc 3 775 0
	ld.bu	%d15, [%a15] 28
	jz	%d15, .L58
	.loc 3 776 0
	mov	%d15, 0
	st.b	[%a15] 28, %d15
.LVL77:
.LBB531:
.LBB532:
.LBB533:
.LBB534:
	.loc 2 265 0
	ld.w	%d15, [%a15] 20
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL78:
#NO_APP
.L58:
.LBE534:
.LBE533:
.LBE532:
.LBE531:
	.loc 3 779 0
	ld.bu	%d15, [%a15] 30
	jz	%d15, .L59
	.loc 3 780 0
	mov	%d15, 0
	st.b	[%a15] 30, %d15
.LBB535:
.LBB536:
	.loc 2 282 0
#APP
	# 282 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	enable
	# 0 "" 2
#NO_APP
<<<<<<< Updated upstream
.L48:
.LBE872:
.LBE871:
.LBB873:
.LBB874:
.LBB875:
.LBB876:
.LBB877:
.LBB878:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL90:
#NO_APP
.LBE878:
.LBE877:
.LBE876:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL91:
	ge.u	%d15, %d15, 100
.LVL92:
	jnz	%d15, .L49
.LBB879:
	.loc 3 366 0
	mov	%d15, %d8
.LVL93:
	mov	%d2, 100
	insert	%d15, %d15, %d2, 0, 8
.LVL94:
.LBB880:
.LBB881:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL95:
#NO_APP
.L49:
.LBE881:
.LBE880:
.LBE879:
.LBE875:
.LBE874:
.LBE873:
	.loc 2 787 0
=======
.L59:
.LBE536:
.LBE535:
	.loc 3 785 0
	call	osEE_begin_primitive
.LVL79:
	.loc 3 787 0
>>>>>>> Stashed changes
	mov.d	%d15, %a12
	.loc 3 785 0
	mov	%d8, %d2
.LVL80:
	.loc 3 787 0
	jne	%d15, %d9, .L60
.LVL81:
	.loc 3 789 0
	ld.a	%a15, [%a12] 12
.LVL82:
	mov	%d15, 5
.LVL83:
	st.b	[%a15] 2, %d15
.LVL84:
	j	.L61
.LVL85:
.L60:
	.loc 3 792 0
	mov.aa	%a4, %a12
	call	osEE_task_activated
.LVL86:
	mov	%d15, %d2
.LVL87:
	.loc 3 793 0
	jnz	%d2, .L62
	.loc 3 794 0
	mov.aa	%a4, %a13
	mov.aa	%a5, %a12
	call	osEE_scheduler_task_insert
<<<<<<< Updated upstream
.LVL103:
	j	.L51
.LVL104:
.L53:
	insert	%d15, %d15, %d8, 0, 8
.LVL105:
.LBB882:
.LBB883:
.LBB884:
.LBB885:
.LBB886:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
#NO_APP
	ret
.LVL106:
.L51:
.LBE886:
.LBE885:
.LBE884:
.LBE883:
.LBE882:
.LBB892:
.LBB893:
=======
.LVL88:
	j	.L61
.LVL89:
.L62:
	.loc 3 802 0
	mov	%d4, %d8
	call	osEE_end_primitive
.LVL90:
.LBE530:
	j	.L69
.LVL91:
.L61:
.LBB541:
.LBB537:
.LBB538:
>>>>>>> Stashed changes
	.loc 1 172 0
	ld.a	%a15, [%a14] lo:osEE_cdb_var
	ld.a	%a15, [%a15]0
.LBE538:
.LBE537:
.LBB539:
.LBB540:
	.loc 4 141 0
	ld.a	%a4, [%a15] 4
	mov.a	%a5, 0
	j	osEE_hal_terminate_ctx
<<<<<<< Updated upstream
.LVL109:
.L52:
.LBE895:
.LBE894:
.LBB896:
.LBB891:
.LBB890:
.LBB887:
.LBB888:
.LBB889:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL110:
#NO_APP
	mov	%d15, %d3
.LVL111:
	and	%d3, %d3, 255
.LVL112:
.LBE889:
.LBE888:
.LBE887:
	.loc 3 383 0
	and	%d8, %d8, 255
.LVL113:
	jne	%d3, %d8, .L53
.LVL114:
.L57:
.LBE890:
.LBE891:
.LBE896:
.LBE866:
.LBE865:
	.loc 2 822 0
=======
.LVL92:
.L69:
.LBE540:
.LBE539:
.LBE541:
.LBE529:
	.loc 3 822 0
	mov	%d2, %d15
>>>>>>> Stashed changes
	ret
.LFE119:
	.size	ChainTask, .-ChainTask
	.align 1
	.global	TerminateTask
	.type	TerminateTask, @function
TerminateTask:
.LFB120:
	.loc 3 829 0
	.loc 3 840 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL93:
	.loc 3 842 0
	ld.a	%a12, [%a15]0
.LVL94:
.LBB542:
	.loc 3 902 0
	ld.bu	%d15, [%a15] 28
	jz	%d15, .L73
	.loc 3 903 0
	mov	%d15, 0
	st.b	[%a15] 28, %d15
.LVL95:
.LBB543:
.LBB544:
.LBB545:
.LBB546:
	.loc 2 265 0
	ld.w	%d15, [%a15] 20
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL96:
#NO_APP
.L73:
.LBE546:
.LBE545:
.LBE544:
.LBE543:
	.loc 3 906 0
	ld.bu	%d15, [%a15] 30
	jz	%d15, .L74
	.loc 3 907 0
	mov	%d15, 0
	st.b	[%a15] 30, %d15
.LBB547:
.LBB548:
	.loc 2 282 0
#APP
	# 282 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	enable
	# 0 "" 2
#NO_APP
<<<<<<< Updated upstream
.L60:
.LBE921:
.LBE920:
.LBB922:
.LBB923:
.LBB924:
.LBB925:
.LBB926:
.LBB927:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL119:
#NO_APP
.LBE927:
.LBE926:
.LBE925:
	.loc 3 365 0
	and	%d2, %d15, 255
.LVL120:
	ge.u	%d2, %d2, 100
.LVL121:
	jnz	%d2, .L61
.LVL122:
	mov	%d2, 100
	insert	%d15, %d15, %d2, 0, 8
.LVL123:
.LBB928:
.LBB929:
.LBB930:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL124:
#NO_APP
.L61:
.LBE930:
.LBE929:
.LBE928:
.LBE924:
.LBE923:
.LBE922:
.LBB931:
.LBB932:
=======
.L74:
.LBE548:
.LBE547:
	.loc 3 912 0
	call	osEE_begin_primitive
.LVL97:
.LBB549:
.LBB550:
>>>>>>> Stashed changes
	.loc 4 141 0
	ld.a	%a4, [%a12] 4
	mov.a	%a5, 0
	j	osEE_hal_terminate_ctx
.LVL98:
.LBE550:
.LBE549:
.LBE542:
.LFE120:
	.size	TerminateTask, .-TerminateTask
	.align 1
	.global	Schedule
	.type	Schedule, @function
Schedule:
.LFB121:
	.loc 3 944 0
.LVL99:
	.loc 3 952 0
	movh.a	%a15, hi:osEE_cdb_var
	.loc 3 953 0
	ld.a	%a15, [%a15] lo:osEE_cdb_var
	ld.a	%a15, [%a15]0
.LVL100:
	.loc 3 954 0
	ld.a	%a12, [%a15] 12
.LVL101:
	.loc 3 1003 0
	ld.bu	%d15, [%a15] 29
<<<<<<< Updated upstream
	jne	%d2, %d15, .L63
.LBB933:
.LBB934:
.LBB935:
.LBB936:
.LBB937:
.LBB938:
.LBB939:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL129:
#NO_APP
.LBE939:
.LBE938:
.LBE937:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL130:
	ge.u	%d15, %d15, 100
.LVL131:
	jnz	%d15, .L64
.LBB940:
	.loc 3 366 0
	mov	%d15, %d8
.LVL132:
	mov	%d2, 100
	insert	%d15, %d15, %d2, 0, 8
.LVL133:
.LBB941:
.LBB942:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL134:
#NO_APP
.L64:
.LBE942:
.LBE941:
.LBE940:
.LBE936:
.LBE935:
.LBE934:
	.loc 2 1009 0
	ld.bu	%d15, [%a15] 28
.LVL135:
	st.b	[%a12] 1, %d15
	.loc 2 1011 0
=======
	ld.bu	%d2, [%a12] 1
	jne	%d2, %d15, .L82
.LBB551:
	.loc 3 1006 0
	call	osEE_begin_primitive
.LVL102:
	mov	%d15, %d2
.LVL103:
	.loc 3 1009 0
	ld.bu	%d2, [%a15] 28
.LVL104:
	.loc 3 1011 0
>>>>>>> Stashed changes
	movh.a	%a4, hi:osEE_kdb_var
	.loc 3 1009 0
	st.b	[%a12] 1, %d2
	.loc 3 1011 0
	lea	%a4, [%a4] lo:osEE_kdb_var
	call	osEE_scheduler_task_preemption_point
<<<<<<< Updated upstream
.LVL136:
	.loc 2 1013 0
	ld.bu	%d15, [%a15] 29
	st.b	[%a12] 1, %d15
.LVL137:
.LBB943:
.LBB944:
.LBB945:
.LBB946:
.LBB947:
.LBB948:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL138:
#NO_APP
	mov	%d15, %d3
.LVL139:
	and	%d3, %d3, 255
.LVL140:
.LBE948:
.LBE947:
.LBE946:
	.loc 3 383 0
	and	%d2, %d8, 255
	jeq	%d3, %d2, .L63
.LVL141:
	insert	%d15, %d15, %d2, 0, 8
.LVL142:
.LBB949:
.LBB950:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL143:
#NO_APP
.L63:
.LBE950:
.LBE949:
.LBE945:
.LBE944:
.LBE943:
.LBE933:
	.loc 2 1037 0
=======
.LVL105:
	.loc 3 1013 0
	ld.bu	%d2, [%a15] 29
	.loc 3 1016 0
	mov	%d4, %d15
	.loc 3 1013 0
	st.b	[%a12] 1, %d2
	.loc 3 1016 0
	call	osEE_end_primitive
.LVL106:
.L82:
.LBE551:
	.loc 3 1037 0
>>>>>>> Stashed changes
	mov	%d2, 0
	ret
.LFE121:
	.size	Schedule, .-Schedule
	.align 1
	.global	GetResource
	.type	GetResource, @function
GetResource:
.LFB122:
	.loc 3 1045 0
.LVL107:
	.loc 3 1055 0
	movh.a	%a15, hi:osEE_cdb_var
	.loc 3 1057 0
	ld.a	%a15, [%a15] lo:osEE_cdb_var
	ld.a	%a14, [%a15]0
.LVL108:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 1083 0
	ld.w	%d15, [%a15] 16
	.loc 3 1084 0
	mov	%d2, 3
	.loc 3 1083 0
	jge.u	%d4, %d15, .L84
.LBB552:
	.loc 3 1088 0
	ld.a	%a15, [%a15] 12
	addsc.a	%a15, %a15, %d4, 2
<<<<<<< Updated upstream
	ld.a	%a3, [%a15]0
.LVL147:
	.loc 2 1090 0
	ld.a	%a2, [%a3]0
.LVL148:
	.loc 2 1092 0
	ld.a	%a15, [%a4] 12
.LVL149:
	.loc 2 1094 0
	ld.bu	%d15, [%a3] 4
.LVL150:
	.loc 2 1096 0
	ld.bu	%d4, [%a15] 1
.LVL151:
.LBB954:
.LBB955:
.LBB956:
.LBB957:
.LBB958:
.LBB959:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d2, LO:65068
	# 0 "" 2
.LVL152:
#NO_APP
.LBE959:
.LBE958:
.LBE957:
	.loc 3 365 0
	and	%d3, %d2, 255
.LVL153:
	ge.u	%d3, %d3, 100
.LVL154:
	jnz	%d3, .L68
.LBB960:
	.loc 3 366 0
	mov	%d3, %d2
.LVL155:
	mov	%d5, 100
	insert	%d3, %d3, %d5, 0, 8
.LVL156:
.LBB961:
.LBB962:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d3
	isync
	# 0 "" 2
.LVL157:
#NO_APP
.L68:
.LBE962:
.LBE961:
.LBE960:
	.loc 3 372 0
	mov	%d3, %d2
.LVL158:
.LBE956:
.LBE955:
.LBE954:
	.loc 2 1118 0
	jge.u	%d4, %d15, .L69
	.loc 2 1119 0
=======
	ld.a	%a12, [%a15]0
.LVL109:
	.loc 3 1092 0
	ld.a	%a15, [%a14] 12
	.loc 3 1090 0
	ld.a	%a13, [%a12]0
.LVL110:
	.loc 3 1094 0
	ld.bu	%d15, [%a12] 4
.LVL111:
	.loc 3 1096 0
	ld.bu	%d8, [%a15] 1
.LVL112:
	.loc 3 1098 0
	call	osEE_begin_primitive
.LVL113:
	.loc 3 1118 0
	jge.u	%d8, %d15, .L85
.LBB553:
.LBB554:
	.loc 2 326 0
	extr	%d3, %d15, 0, 8
.LBE554:
.LBE553:
	.loc 3 1119 0
>>>>>>> Stashed changes
	st.b	[%a15] 1, %d15
.LVL114:
.LBB558:
.LBB557:
	.loc 2 326 0
	jltz	%d3, .L86
	.loc 2 327 0
	andn	%d2, %d2, ~(-256)
<<<<<<< Updated upstream
.LVL162:
	sel	%d3, %d7, %d3, %d6
	lt	%d5, %d5, 0
	sel	%d3, %d5, %d3, %d2
.L69:
.LVL163:
.LBE964:
.LBE963:
	.loc 2 1123 0
	st.a	[%a2] 8, %a4
.LVL164:
.LBB965:
.LBB966:
.LBB967:
.LBB968:
.LBB969:
.LBB970:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d5, LO:65068
	# 0 "" 2
.LVL165:
#NO_APP
	mov	%d15, %d5
.LVL166:
	and	%d5, %d5, 255
.LVL167:
.LBE970:
.LBE969:
.LBE968:
	.loc 3 383 0
	and	%d2, %d3, 255
	jeq	%d5, %d2, .L72
.LVL168:
	insert	%d15, %d15, %d2, 0, 8
.LVL169:
.LBB971:
.LBB972:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL170:
#NO_APP
.L72:
.LBE972:
.LBE971:
.LBE967:
.LBE966:
.LBE965:
	.loc 2 1127 0
=======
.LVL115:
	j	.L85
.LVL116:
.L86:
	.loc 2 328 0
	ne	%d3, %d15, 255
	jnz	%d3, .L87
	.loc 2 330 0
	andn	%d2, %d2, ~(-257)
.LVL117:
	j	.L85
.LVL118:
.L87:
.LBB555:
.LBB556:
	.loc 2 303 0
	and	%d15, %d15, 127
.LVL119:
.LBE556:
.LBE555:
	.loc 2 333 0
	andn	%d2, %d2, ~(-256)
.LVL120:
	add	%d15, 1
	.loc 2 332 0
	or	%d2, %d15
.LVL121:
.L85:
.LBE557:
.LBE558:
	.loc 3 1125 0
	mov	%d4, %d2
	.loc 3 1123 0
	st.a	[%a13] 8, %a14
	.loc 3 1125 0
	call	osEE_end_primitive
.LVL122:
	.loc 3 1127 0
>>>>>>> Stashed changes
	ld.w	%d15, [%a15] 4
	.loc 3 1128 0
	st.b	[%a13] 4, %d8
	.loc 3 1127 0
	st.w	[%a13]0, %d15
	.loc 3 1129 0
	st.a	[%a15] 4, %a12
.LVL123:
	.loc 3 1131 0
	mov	%d2, 0
.LVL124:
.L84:
.LBE552:
	.loc 3 1149 0
	ret
.LFE122:
	.size	GetResource, .-GetResource
	.align 1
	.global	ReleaseResource
	.type	ReleaseResource, @function
ReleaseResource:
.LFB123:
	.loc 3 1156 0
.LVL125:
	movh.a	%a12, hi:osEE_kdb_var
	lea	%a12, [%a12] lo:osEE_kdb_var
	.loc 3 1165 0
	movh.a	%a15, hi:osEE_cdb_var
	.loc 3 1191 0
	ld.w	%d15, [%a12] 16
	.loc 3 1166 0
	ld.a	%a15, [%a15] lo:osEE_cdb_var
	ld.a	%a14, [%a15]0
.LVL126:
	.loc 3 1192 0
	mov	%d2, 3
	.loc 3 1191 0
	jge.u	%d4, %d15, .L90
.LBB559:
	.loc 3 1198 0
	ld.a	%a2, [%a12] 12
	.loc 3 1196 0
	ld.a	%a15, [%a14] 12
.LVL127:
	.loc 3 1198 0
	addsc.a	%a2, %a2, %d4, 2
	.loc 3 1200 0
	ld.a	%a2, [%a2]0
	ld.a	%a13, [%a2]0
.LVL128:
.LBB560:
	.loc 3 1215 0
	call	osEE_begin_primitive
.LVL129:
	.loc 3 1218 0
	ld.a	%a2, [%a15] 4
	ld.a	%a2, [%a2]0
<<<<<<< Updated upstream
.LVL178:
.LBB976:
.LBB977:
.LBB978:
.LBB979:
.LBB980:
.LBB981:
.LBB982:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL179:
#NO_APP
.LBE982:
.LBE981:
.LBE980:
	.loc 3 365 0
	and	%d2, %d15, 255
.LVL180:
	ge.u	%d2, %d2, 100
.LVL181:
	jnz	%d2, .L76
.LBB983:
	.loc 3 366 0
	mov	%d2, %d15
.LVL182:
	mov	%d3, 100
	insert	%d2, %d2, %d3, 0, 8
.LVL183:
.LBB984:
.LBB985:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d2
	isync
	# 0 "" 2
.LVL184:
#NO_APP
.L76:
.LBE985:
.LBE984:
.LBE983:
.LBE979:
.LBE978:
.LBE977:
	.loc 2 1218 0
	ld.a	%a4, [%a15] 4
	ld.a	%a4, [%a4]0
	ld.w	%d2, [%a4]0
.LVL185:
	st.w	[%a15] 4, %d2
.LVL186:
	.loc 2 1220 0
	jz	%d2, .L77
.LBB986:
	.loc 2 1222 0
	ld.bu	%d3, [%a2] 4
.LVL187:
	.loc 2 1224 0
=======
	ld.w	%d15, [%a2]0
	st.w	[%a15] 4, %d15
	.loc 3 1220 0
	jz	%d15, .L91
.LBB561:
	.loc 3 1222 0
	ld.bu	%d3, [%a13] 4
.LVL130:
	j	.L102
.LVL131:
.L91:
.LBE561:
.LBB562:
	.loc 3 1228 0
	ld.bu	%d3, [%a14] 29
.L102:
.LVL132:
.LBB563:
.LBB564:
	.loc 2 326 0
	extr	%d15, %d3, 0, 8
.LBE564:
.LBE563:
	.loc 3 1230 0
>>>>>>> Stashed changes
	st.b	[%a15] 1, %d3
.LVL133:
.LBB568:
.LBB567:
	.loc 2 326 0
	jltz	%d15, .L95
	.loc 2 327 0
	andn	%d15, %d2, ~(-256)
.LVL134:
	j	.L93
.LVL135:
.L95:
	.loc 2 328 0
	ne	%d15, %d3, 255
	jnz	%d15, .L96
	.loc 2 330 0
	andn	%d15, %d2, ~(-257)
.LVL136:
	j	.L93
.LVL137:
.L96:
.LBB565:
.LBB566:
	.loc 2 303 0
	and	%d15, %d3, 127
.LBE566:
.LBE565:
	.loc 2 333 0
	andn	%d2, %d2, ~(-256)
.LVL138:
	add	%d15, 1
	.loc 2 332 0
	or	%d15, %d2
.LVL139:
.L93:
.LBE567:
.LBE568:
.LBE562:
	.loc 3 1234 0
	mov	%d2, 0
	.loc 3 1237 0
	mov.aa	%a4, %a12
	.loc 3 1234 0
	st.w	[%a13] 8, %d2
	.loc 3 1237 0
	call	osEE_scheduler_task_preemption_point
<<<<<<< Updated upstream
.LVL199:
.LBB992:
.LBB993:
.LBB994:
.LBB995:
.LBB996:
.LBB997:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d5, LO:65068
	# 0 "" 2
.LVL200:
#NO_APP
	mov	%d3, %d5
.LVL201:
	and	%d5, %d5, 255
.LVL202:
.LBE997:
.LBE996:
.LBE995:
	.loc 3 383 0
	and	%d15, 255
.LVL203:
	jeq	%d5, %d15, .L83
.LVL204:
	insert	%d3, %d3, %d15, 0, 8
.LVL205:
.LBB998:
.LBB999:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d3
	isync
	# 0 "" 2
.LVL206:
#NO_APP
.L83:
.LBE999:
.LBE998:
.LBE994:
.LBE993:
.LBE992:
	.loc 2 1241 0
=======
.LVL140:
	.loc 3 1239 0
	mov	%d4, %d15
	call	osEE_end_primitive
.LVL141:
	.loc 3 1241 0
>>>>>>> Stashed changes
	mov	%d2, 0
.LVL142:
.L90:
.LBE560:
.LBE559:
	.loc 3 1259 0
	ret
.LFE123:
	.size	ReleaseResource, .-ReleaseResource
	.align 1
	.global	ShutdownOS
	.type	ShutdownOS, @function
ShutdownOS:
.LFB124:
	.loc 3 1267 0
.LVL143:
	.loc 3 1267 0
	mov	%d15, %d4
	.loc 3 1276 0
	call	osEE_begin_primitive
.LVL144:
	.loc 3 1277 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
<<<<<<< Updated upstream
.LVL209:
.LBB1000:
.LBB1001:
.LBB1002:
.LBB1003:
.LBB1004:
.LBB1005:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d2, LO:65068
	# 0 "" 2
.LVL210:
#NO_APP
.LBE1005:
.LBE1004:
.LBE1003:
	.loc 3 365 0
	and	%d15, %d2, 255
.LVL211:
	ge.u	%d15, %d15, 100
.LVL212:
	jnz	%d15, .L86
.LBB1006:
	.loc 3 366 0
	mov	%d15, %d2
.LVL213:
	mov	%d3, 100
	insert	%d15, %d15, %d3, 0, 8
.LVL214:
.LBB1007:
.LBB1008:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL215:
#NO_APP
.L86:
.LBE1008:
.LBE1007:
.LBE1006:
.LBE1002:
.LBE1001:
.LBE1000:
	.loc 2 1277 0
	ld.bu	%d15, [%a15] 16
.LVL216:
	.loc 2 1305 0
	add	%d15, -1
.LVL217:
	and	%d15, 255
.LVL218:
	jge.u	%d15, 2, .L87
	.loc 2 1308 0
	movh.a	%a4, hi:osEE_cdb_var
	lea	%a4, [%a4] lo:osEE_cdb_var
	j	osEE_shutdown_os
.LVL219:
.L87:
.LBB1009:
.LBB1010:
.LBB1011:
.LBB1012:
.LBB1013:
.LBB1014:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL220:
#NO_APP
	mov	%d15, %d3
.LVL221:
	and	%d3, %d3, 255
.LVL222:
.LBE1014:
.LBE1013:
.LBE1012:
	.loc 3 383 0
	and	%d2, %d2, 255
.LVL223:
	jeq	%d3, %d2, .L88
.LVL224:
	insert	%d15, %d15, %d2, 0, 8
.LVL225:
.LBB1015:
.LBB1016:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL226:
#NO_APP
.L88:
.LBE1016:
.LBE1015:
.LBE1011:
.LBE1010:
.LBE1009:
	.loc 2 1327 0
=======
	ld.bu	%d3, [%a15] 16
.LVL145:
	.loc 3 1305 0
	add	%d3, -1
.LVL146:
	jge.u	%d3, 2, .L104
	.loc 3 1308 0
	mov	%d4, %d15
	j	osEE_shutdown_os.constprop.15
.LVL147:
.L104:
	.loc 3 1324 0
	mov	%d4, %d2
	call	osEE_end_primitive
.LVL148:
	.loc 3 1327 0
>>>>>>> Stashed changes
	mov	%d2, 7
	ret
.LFE124:
	.size	ShutdownOS, .-ShutdownOS
	.align 1
	.global	GetTaskID
	.type	GetTaskID, @function
GetTaskID:
.LFB125:
	.loc 3 1334 0
.LVL149:
	.loc 3 1343 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a2, [%a15] lo:osEE_cdb_var
.LVL150:
	.loc 3 1374 0
	mov	%d2, 14
	.loc 3 1373 0
	jz.a	%a4, .L106
.LVL151:
.LBB569:
	.loc 3 1379 0
	ld.a	%a15, [%a2]0
.LVL152:
	.loc 3 1389 0
	ld.bu	%d2, [%a15] 20
	jge.u	%d2, 2, .L107
	.loc 3 1391 0
	ld.w	%d15, [%a15] 16
.LVL153:
	j	.L108
.LVL154:
.L107:
	.loc 3 1377 0
	mov	%d15, -1
	.loc 3 1392 0
	jne	%d2, 2, .L108
.LBB570:
	.loc 3 1396 0
	ld.a	%a15, [%a2] 12
.LVL155:
.L110:
.LBB571:
	.loc 3 1405 0
	ld.a	%a15, [%a15]0
.LVL156:
.LBE571:
	.loc 3 1398 0
	jz.a	%a15, .L115
.LBB572:
	.loc 3 1400 0
	ld.a	%a2, [%a15] 4
.LVL157:
	.loc 3 1401 0
	ld.bu	%d15, [%a2] 20
	jge.u	%d15, 2, .L110
	.loc 3 1402 0
	ld.w	%d15, [%a2] 16
.LVL158:
	.loc 3 1403 0
	j	.L108
.LVL159:
.L115:
.LBE572:
.LBE570:
	.loc 3 1377 0
	mov	%d15, -1
.LVL160:
.L108:
	.loc 3 1413 0
	st.w	[%a4]0, %d15
.LVL161:
	.loc 3 1414 0
	mov	%d2, 0
.LVL162:
.L106:
.LBE569:
	.loc 3 1431 0
	ret
.LFE125:
	.size	GetTaskID, .-GetTaskID
	.align 1
	.global	GetTaskState
	.type	GetTaskState, @function
GetTaskState:
.LFB126:
	.loc 3 1439 0
.LVL163:
	.loc 3 1480 0
	mov	%d2, 14
	.loc 3 1479 0
	jz.a	%a4, .L117
.LVL164:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 1482 0
	ld.w	%d15, [%a15] 8
	.loc 3 1483 0
	mov	%d2, 3
	.loc 3 1482 0
	jge.u	%d4, %d15, .L117
.LVL165:
.LBB573:
	.loc 3 1487 0
	ld.a	%a15, [%a15] 4
	.loc 3 1511 0
	mov	%d2, 0
	.loc 3 1487 0
	addsc.a	%a15, %a15, %d4, 2
	.loc 3 1490 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 12
	.loc 3 1491 0
	ld.bu	%d15, [%a15] 2
	jge.u	%d15, 6, .L117
	movh.a	%a15, hi:.L119
	lea	%a15, [%a15] lo:.L119
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L119:
	.code32
	j	.L118
	.code32
	j	.L120
	.code32
	j	.L120
	.code32
	j	.L121
	.code32
	j	.L122
	.code32
	j	.L122
.L118:
	.loc 3 1493 0
	mov	%d15, 0
	j	.L127
.L120:
	.loc 3 1497 0
	mov	%d15, 1
	j	.L127
.L121:
	.loc 3 1500 0
	mov	%d15, 3
	j	.L127
.L122:
	.loc 3 1504 0
	mov	%d15, 4
.L127:
	st.b	[%a4]0, %d15
.LVL166:
	.loc 3 1511 0
	mov	%d2, 0
.LVL167:
.L117:
.LBE573:
	.loc 3 1529 0
	ret
.LFE126:
	.size	GetTaskState, .-GetTaskState
	.align 1
	.global	SetRelAlarm
	.type	SetRelAlarm, @function
SetRelAlarm:
.LFB127:
	.loc 3 1539 0
.LVL168:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 1575 0
	ld.w	%d2, [%a15] 32
	.loc 3 1576 0
	mov	%d8, 3
	.loc 3 1575 0
	jge.u	%d4, %d2, .L129
.LBB574:
	.loc 3 1580 0
	ld.a	%a15, [%a15] 28
	mov	%e8, %d5, %d6
	addsc.a	%a15, %a15, %d4, 2
<<<<<<< Updated upstream
	ld.a	%a5, [%a15]0
.LVL258:
	.loc 2 1582 0
	ld.a	%a4, [%a5] 4
.LVL259:
.LBB1026:
.LBB1027:
.LBB1028:
.LBB1029:
.LBB1030:
.LBB1031:
.LBB1032:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL260:
#NO_APP
.LBE1032:
.LBE1031:
.LBE1030:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL261:
	ge.u	%d15, %d15, 100
.LVL262:
	jnz	%d15, .L112
.LBB1033:
	.loc 3 366 0
	mov	%d15, %d8
.LVL263:
	mov	%d2, 100
	insert	%d15, %d15, %d2, 0, 8
.LVL264:
.LBB1034:
.LBB1035:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL265:
#NO_APP
.L112:
	mov	%d4, %d5
.LVL266:
.LBE1035:
.LBE1034:
.LBE1033:
.LBE1029:
.LBE1028:
.LBE1027:
	.loc 2 1599 0
	mov	%d5, %d6
.LVL267:
	call	osEE_alarm_set_rel
.LVL268:
.LBB1036:
.LBB1037:
.LBB1038:
.LBB1039:
.LBB1040:
.LBB1041:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d4, LO:65068
	# 0 "" 2
.LVL269:
#NO_APP
	mov	%d15, %d4
.LVL270:
	and	%d4, %d4, 255
.LVL271:
.LBE1041:
.LBE1040:
.LBE1039:
	.loc 3 383 0
	and	%d3, %d8, 255
	jeq	%d4, %d3, .L111
.LVL272:
	insert	%d15, %d15, %d3, 0, 8
.LVL273:
.LBB1042:
.LBB1043:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL274:
#NO_APP
.L111:
.LBE1043:
.LBE1042:
.LBE1038:
.LBE1037:
.LBE1036:
.LBE1026:
.LBE1025:
	.loc 2 1621 0
=======
	ld.a	%a15, [%a15]0
.LVL169:
	.loc 3 1582 0
	ld.a	%a12, [%a15] 4
.LVL170:
.LBB575:
	.loc 3 1597 0
	call	osEE_begin_primitive
.LVL171:
	.loc 3 1599 0
	mov	%e4, %d8, %d9
	mov.aa	%a4, %a12
	mov.aa	%a5, %a15
	.loc 3 1597 0
	mov	%d15, %d2
.LVL172:
	.loc 3 1599 0
	call	osEE_alarm_set_rel
.LVL173:
	.loc 3 1601 0
	mov	%d4, %d15
	.loc 3 1599 0
	mov	%d8, %d2
.LVL174:
	.loc 3 1601 0
	call	osEE_end_primitive
.LVL175:
.L129:
.LBE575:
.LBE574:
	.loc 3 1621 0
	mov	%d2, %d8
>>>>>>> Stashed changes
	ret
.LFE127:
	.size	SetRelAlarm, .-SetRelAlarm
	.align 1
	.global	SetAbsAlarm
	.type	SetAbsAlarm, @function
SetAbsAlarm:
.LFB128:
	.loc 3 1630 0
.LVL176:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 1666 0
	ld.w	%d2, [%a15] 32
	.loc 3 1667 0
	mov	%d8, 3
	.loc 3 1666 0
	jge.u	%d4, %d2, .L132
.LBB576:
	.loc 3 1671 0
	ld.a	%a15, [%a15] 28
	mov	%e8, %d5, %d6
	addsc.a	%a15, %a15, %d4, 2
<<<<<<< Updated upstream
	ld.a	%a5, [%a15]0
.LVL277:
	.loc 2 1673 0
	ld.a	%a4, [%a5] 4
.LVL278:
.LBB1047:
.LBB1048:
.LBB1049:
.LBB1050:
.LBB1051:
.LBB1052:
.LBB1053:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL279:
#NO_APP
.LBE1053:
.LBE1052:
.LBE1051:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL280:
	ge.u	%d15, %d15, 100
.LVL281:
	jnz	%d15, .L117
.LBB1054:
	.loc 3 366 0
	mov	%d15, %d8
.LVL282:
	mov	%d2, 100
	insert	%d15, %d15, %d2, 0, 8
.LVL283:
.LBB1055:
.LBB1056:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL284:
#NO_APP
.L117:
	mov	%d4, %d5
.LVL285:
.LBE1056:
.LBE1055:
.LBE1054:
.LBE1050:
.LBE1049:
.LBE1048:
	.loc 2 1689 0
	mov	%d5, %d6
.LVL286:
	call	osEE_alarm_set_abs
.LVL287:
.LBB1057:
.LBB1058:
.LBB1059:
.LBB1060:
.LBB1061:
.LBB1062:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d4, LO:65068
	# 0 "" 2
.LVL288:
#NO_APP
	mov	%d15, %d4
.LVL289:
	and	%d4, %d4, 255
.LVL290:
.LBE1062:
.LBE1061:
.LBE1060:
	.loc 3 383 0
	and	%d3, %d8, 255
	jeq	%d4, %d3, .L116
.LVL291:
	insert	%d15, %d15, %d3, 0, 8
.LVL292:
.LBB1063:
.LBB1064:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL293:
#NO_APP
.L116:
.LBE1064:
.LBE1063:
.LBE1059:
.LBE1058:
.LBE1057:
.LBE1047:
.LBE1046:
	.loc 2 1711 0
=======
	ld.a	%a15, [%a15]0
.LVL177:
	.loc 3 1673 0
	ld.a	%a12, [%a15] 4
.LVL178:
.LBB577:
	.loc 3 1687 0
	call	osEE_begin_primitive
.LVL179:
	.loc 3 1689 0
	mov	%e4, %d8, %d9
	mov.aa	%a4, %a12
	mov.aa	%a5, %a15
	.loc 3 1687 0
	mov	%d15, %d2
.LVL180:
	.loc 3 1689 0
	call	osEE_alarm_set_abs
.LVL181:
	.loc 3 1691 0
	mov	%d4, %d15
	.loc 3 1689 0
	mov	%d8, %d2
.LVL182:
	.loc 3 1691 0
	call	osEE_end_primitive
.LVL183:
.L132:
.LBE577:
.LBE576:
	.loc 3 1711 0
	mov	%d2, %d8
>>>>>>> Stashed changes
	ret
.LFE128:
	.size	SetAbsAlarm, .-SetAbsAlarm
	.align 1
	.global	CancelAlarm
	.type	CancelAlarm, @function
CancelAlarm:
.LFB129:
	.loc 3 1718 0
.LVL184:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 1754 0
	ld.w	%d15, [%a15] 32
	.loc 3 1755 0
	mov	%d8, 3
	.loc 3 1754 0
	jge.u	%d4, %d15, .L135
.LBB578:
	.loc 3 1758 0
	ld.a	%a15, [%a15] 28
	addsc.a	%a15, %a15, %d4, 2
<<<<<<< Updated upstream
	ld.a	%a4, [%a15]0
.LVL296:
.LBB1068:
.LBB1069:
.LBB1070:
.LBB1071:
.LBB1072:
.LBB1073:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL297:
#NO_APP
.LBE1073:
.LBE1072:
.LBE1071:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL298:
	ge.u	%d15, %d15, 100
.LVL299:
	jnz	%d15, .L122
.LBB1074:
	.loc 3 366 0
	mov	%d15, %d8
.LVL300:
	mov	%d2, 100
	insert	%d15, %d15, %d2, 0, 8
.LVL301:
.LBB1075:
.LBB1076:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL302:
#NO_APP
.L122:
.LBE1076:
.LBE1075:
.LBE1074:
.LBE1070:
.LBE1069:
.LBE1068:
	.loc 2 1762 0
	call	osEE_alarm_cancel
.LVL303:
.LBB1077:
.LBB1078:
.LBB1079:
.LBB1080:
.LBB1081:
.LBB1082:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d4, LO:65068
	# 0 "" 2
.LVL304:
#NO_APP
	mov	%d15, %d4
.LVL305:
	and	%d4, %d4, 255
.LVL306:
.LBE1082:
.LBE1081:
.LBE1080:
	.loc 3 383 0
	and	%d3, %d8, 255
	jeq	%d4, %d3, .L121
.LVL307:
	insert	%d15, %d15, %d3, 0, 8
.LVL308:
.LBB1083:
.LBB1084:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL309:
#NO_APP
.L121:
.LBE1084:
.LBE1083:
.LBE1079:
.LBE1078:
.LBE1077:
.LBE1067:
	.loc 2 1781 0
=======
	ld.a	%a15, [%a15]0
.LVL185:
	.loc 3 1760 0
	call	osEE_begin_primitive
.LVL186:
	.loc 3 1762 0
	mov.aa	%a4, %a15
	.loc 3 1760 0
	mov	%d15, %d2
.LVL187:
	.loc 3 1762 0
	call	osEE_alarm_cancel
.LVL188:
	.loc 3 1764 0
	mov	%d4, %d15
	.loc 3 1762 0
	mov	%d8, %d2
.LVL189:
	.loc 3 1764 0
	call	osEE_end_primitive
.LVL190:
.L135:
.LBE578:
	.loc 3 1781 0
	mov	%d2, %d8
>>>>>>> Stashed changes
	ret
.LFE129:
	.size	CancelAlarm, .-CancelAlarm
	.align 1
	.global	GetAlarm
	.type	GetAlarm, @function
GetAlarm:
.LFB130:
	.loc 3 1789 0
.LVL191:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 1825 0
	ld.w	%d2, [%a15] 32
	.loc 3 1826 0
	mov	%d15, 3
	.loc 3 1825 0
	jge.u	%d4, %d2, .L138
	.loc 3 1829 0
	mov	%d15, 14
	.loc 3 1828 0
	jz.a	%a4, .L138
.LBB579:
	.loc 3 1833 0
	ld.a	%a15, [%a15] 28
	mov.aa	%a12, %a4
	addsc.a	%a15, %a15, %d4, 2
	ld.a	%a15, [%a15]0
<<<<<<< Updated upstream
.LVL312:
.LBB1088:
.LBB1089:
.LBB1090:
.LBB1091:
.LBB1092:
.LBB1093:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL313:
#NO_APP
.LBE1093:
.LBE1092:
.LBE1091:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL314:
	ge.u	%d15, %d15, 100
.LVL315:
	jnz	%d15, .L127
.LBB1094:
	.loc 3 366 0
	mov	%d15, %d8
.LVL316:
	mov	%d2, 100
	insert	%d15, %d15, %d2, 0, 8
.LVL317:
.LBB1095:
.LBB1096:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL318:
#NO_APP
.L127:
	mov.aa	%a5, %a4
.LBE1096:
.LBE1095:
.LBE1094:
.LBE1090:
.LBE1089:
.LBE1088:
	.loc 2 1837 0
=======
.LVL192:
	.loc 3 1835 0
	call	osEE_begin_primitive
.LVL193:
	.loc 3 1837 0
>>>>>>> Stashed changes
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	.loc 3 1835 0
	mov	%d8, %d2
.LVL194:
	.loc 3 1837 0
	call	osEE_alarm_get
<<<<<<< Updated upstream
.LVL320:
.LBB1097:
.LBB1098:
.LBB1099:
.LBB1100:
.LBB1101:
.LBB1102:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d4, LO:65068
	# 0 "" 2
.LVL321:
#NO_APP
	mov	%d15, %d4
.LVL322:
	and	%d4, %d4, 255
.LVL323:
.LBE1102:
.LBE1101:
.LBE1100:
	.loc 3 383 0
	and	%d3, %d8, 255
	jeq	%d4, %d3, .L126
.LVL324:
	insert	%d15, %d15, %d3, 0, 8
.LVL325:
.LBB1103:
.LBB1104:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL326:
#NO_APP
.L126:
.LBE1104:
.LBE1103:
.LBE1099:
.LBE1098:
.LBE1097:
.LBE1087:
	.loc 2 1857 0
=======
.LVL195:
	.loc 3 1839 0
	mov	%d4, %d8
	.loc 3 1837 0
	mov	%d15, %d2
.LVL196:
	.loc 3 1839 0
	call	osEE_end_primitive
.LVL197:
.L138:
.LBE579:
	.loc 3 1857 0
	mov	%d2, %d15
>>>>>>> Stashed changes
	ret
.LFE130:
	.size	GetAlarm, .-GetAlarm
	.align 1
	.global	GetAlarmBase
	.type	GetAlarmBase, @function
GetAlarmBase:
.LFB131:
	.loc 3 1865 0
.LVL198:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 1901 0
	ld.w	%d15, [%a15] 32
	.loc 3 1902 0
	mov	%d2, 3
	.loc 3 1901 0
	jge.u	%d4, %d15, .L143
	.loc 3 1905 0
	mov	%d2, 14
	.loc 3 1904 0
	jz.a	%a4, .L143
.LVL199:
.LBB580:
	.loc 3 1909 0
	ld.a	%a15, [%a15] 28
	addsc.a	%a15, %a15, %d4, 2
	.loc 3 1913 0
	ld.a	%a15, [%a15]0
	.loc 3 1915 0
	ld.a	%a15, [%a15] 4
	ld.d	%e2, [%a15] 4
	st.d	[%a4]0, %e2
.LVL200:
	.loc 3 1917 0
	mov	%d2, 0
.LVL201:
.L143:
.LBE580:
	.loc 3 1935 0
	ret
.LFE131:
	.size	GetAlarmBase, .-GetAlarmBase
	.align 1
	.global	WaitEvent
	.type	WaitEvent, @function
WaitEvent:
.LFB132:
	.loc 3 1945 0
.LVL202:
	.loc 3 1950 0
	movh.a	%a15, hi:osEE_cdb_var
<<<<<<< Updated upstream
	ld.a	%a12, [%a15] lo:osEE_cdb_var
.LVL334:
	.loc 2 1952 0
	ld.a	%a13, [%a12]0
.LVL335:
	.loc 2 1954 0
	ld.a	%a15, [%a13] 12
.LVL336:
.LBB1108:
.LBB1109:
.LBB1110:
.LBB1111:
.LBB1112:
.LBB1113:
.LBB1114:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL337:
#NO_APP
.LBE1114:
.LBE1113:
.LBE1112:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL338:
	ge.u	%d15, %d15, 100
.LVL339:
	jnz	%d15, .L136
.LBB1115:
	.loc 3 366 0
	mov	%d15, %d8
.LVL340:
	mov	%d2, 100
	insert	%d15, %d15, %d2, 0, 8
.LVL341:
.LBB1116:
.LBB1117:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL342:
#NO_APP
.L136:
.LBE1117:
.LBE1116:
.LBE1115:
.LBE1111:
.LBE1110:
.LBE1109:
	.loc 2 2008 0
=======
	ld.a	%a13, [%a15] lo:osEE_cdb_var
	lea	%a14, [%a15] lo:osEE_cdb_var
.LVL203:
	.loc 3 1952 0
	ld.a	%a12, [%a13]0
.LVL204:
	.loc 3 1945 0
	mov	%d8, %d4
	.loc 3 1954 0
	ld.a	%a15, [%a12] 12
.LVL205:
.LBB581:
	.loc 3 2004 0
	call	osEE_begin_primitive
.LVL206:
	.loc 3 2008 0
>>>>>>> Stashed changes
	ld.w	%d15, [%a15] 12
	.loc 3 2004 0
	mov	%d9, %d2
.LVL207:
	.loc 3 2008 0
	and	%d15, %d8
	jnz	%d15, .L148
	.loc 3 2013 0
	mov.aa	%a4, %a14
	lea	%a5, [%a13] 4
	.loc 3 2010 0
	st.w	[%a15] 8, %d8
	.loc 3 2013 0
	call	osEE_scheduler_core_pop_running
.LVL208:
	.loc 3 2019 0
	ld.a	%a5, [%a13]0
	.loc 3 2015 0
	mov	%d2, 3
	.loc 3 2012 0
	st.a	[%a15] 16, %a2
	.loc 3 2015 0
	st.b	[%a15] 2, %d2
.LVL209:
	.loc 3 2019 0
	mov.aa	%a4, %a12
	call	osEE_change_context_from_running
.LVL210:
	.loc 3 2022 0
	st.w	[%a15] 8, %d15
<<<<<<< Updated upstream
.LVL347:
.L137:
.LBB1118:
.LBB1119:
.LBB1120:
.LBB1121:
.LBB1122:
.LBB1123:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL348:
#NO_APP
	mov	%d15, %d3
.LVL349:
	and	%d3, %d3, 255
.LVL350:
.LBE1123:
.LBE1122:
.LBE1121:
	.loc 3 383 0
	and	%d2, %d8, 255
	jeq	%d3, %d2, .L138
.LVL351:
	insert	%d15, %d15, %d2, 0, 8
.LVL352:
.LBB1124:
.LBB1125:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL353:
#NO_APP
.L138:
.LBE1125:
.LBE1124:
.LBE1120:
.LBE1119:
.LBE1118:
.LBE1108:
	.loc 2 2047 0
=======
.LVL211:
.L148:
	.loc 3 2030 0
	mov	%d4, %d9
	call	osEE_end_primitive
.LVL212:
.LBE581:
	.loc 3 2047 0
>>>>>>> Stashed changes
	mov	%d2, 0
	ret
.LFE132:
	.size	WaitEvent, .-WaitEvent
	.align 1
	.global	SetEvent
	.type	SetEvent, @function
SetEvent:
.LFB133:
	.loc 3 2055 0
.LVL213:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 2103 0
	ld.w	%d2, [%a15] 8
	.loc 3 2055 0
	sub.a	%SP, 8
.LCFI0:
	.loc 3 2103 0
	jlt.u	%d4, %d2, .L150
	.loc 3 2104 0
	mov	%d15, 3
<<<<<<< Updated upstream
	st.b	[%a14] -1, %d15
	j	.L141
.L140:
.LBB1128:
	.loc 2 2109 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d4, 2
	ld.a	%a4, [%a15]0
.LVL356:
.LBB1129:
.LBB1130:
.LBB1131:
.LBB1132:
.LBB1133:
.LBB1134:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL357:
#NO_APP
.LBE1134:
.LBE1133:
.LBE1132:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL358:
	ge.u	%d15, %d15, 100
.LVL359:
	jnz	%d15, .L142
.LBB1135:
	.loc 3 366 0
	mov	%d15, %d8
.LVL360:
	mov	%d2, 100
	insert	%d15, %d15, %d2, 0, 8
.LVL361:
.LBB1136:
.LBB1137:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL362:
#NO_APP
.L142:
	mov	%d4, %d5
.LVL363:
.LBE1137:
.LBE1136:
.LBE1135:
.LBE1131:
.LBE1130:
.LBE1129:
	.loc 2 2113 0
	lea	%a5, [%a14] -1
=======
	st.b	[%SP] 7, %d15
	j	.L151
.L150:
.LBB582:
	.loc 3 2109 0
	ld.a	%a2, [%a15] 4
	mov	%d8, %d5
	addsc.a	%a2, %a2, %d4, 2
	ld.a	%a12, [%a2]0
.LVL214:
	.loc 3 2111 0
	call	osEE_begin_primitive
.LVL215:
	.loc 3 2113 0
	mov.aa	%a4, %a12
	mov	%d4, %d8
	lea	%a5, [%SP] 7
	.loc 3 2111 0
	mov	%d15, %d2
.LVL216:
	.loc 3 2113 0
>>>>>>> Stashed changes
	call	osEE_task_event_set_mask
.LVL217:
	.loc 3 2115 0
	jz.a	%a2, .L153
	.loc 3 2117 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a2
	call	osEE_scheduler_task_unblocked
.LVL218:
	jz	%d2, .L153
	.loc 3 2119 0
	mov.aa	%a4, %a15
	call	osEE_scheduler_task_preemption_point
<<<<<<< Updated upstream
.LVL366:
.L143:
.LBB1138:
.LBB1139:
.LBB1140:
.LBB1141:
.LBB1142:
.LBB1143:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL367:
#NO_APP
	mov	%d15, %d3
.LVL368:
	and	%d3, %d3, 255
.LVL369:
.LBE1143:
.LBE1142:
.LBE1141:
	.loc 3 383 0
	and	%d2, %d8, 255
	jeq	%d3, %d2, .L141
.LVL370:
	insert	%d15, %d15, %d2, 0, 8
.LVL371:
.LBB1144:
.LBB1145:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL372:
#NO_APP
.L141:
.LBE1145:
.LBE1144:
.LBE1140:
.LBE1139:
.LBE1138:
.LBE1128:
	.loc 2 2141 0
	ld.bu	%d2, [%a14] -1
=======
.LVL219:
.L153:
	.loc 3 2122 0
	mov	%d4, %d15
	call	osEE_end_primitive
.LVL220:
.L151:
.LBE582:
	.loc 3 2141 0
	ld.bu	%d2, [%SP] 7
>>>>>>> Stashed changes
	ret
.LFE133:
	.size	SetEvent, .-SetEvent
	.align 1
	.global	GetEvent
	.type	GetEvent, @function
GetEvent:
.LFB134:
	.loc 3 2149 0
.LVL221:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 2202 0
	ld.w	%d15, [%a15] 8
	.loc 3 2203 0
	mov	%d2, 3
	.loc 3 2202 0
	jge.u	%d4, %d15, .L159
.LVL222:
.LBB583:
	.loc 3 2207 0
	ld.a	%a15, [%a15] 4
	.loc 3 2221 0
	mov	%d2, 14
	.loc 3 2207 0
	addsc.a	%a15, %a15, %d4, 2
	.loc 3 2209 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 12
.LVL223:
	.loc 3 2220 0
	jz.a	%a4, .L159
.LVL224:
	.loc 3 2225 0
	ld.w	%d15, [%a15] 12
	.loc 3 2227 0
	mov	%d2, 0
	.loc 3 2225 0
	st.w	[%a4]0, %d15
.LVL225:
.L159:
.LBE583:
	.loc 3 2247 0
	ret
.LFE134:
	.size	GetEvent, .-GetEvent
	.align 1
	.global	ClearEvent
	.type	ClearEvent, @function
ClearEvent:
.LFB135:
	.loc 3 2254 0
.LVL226:
	.loc 3 2263 0
	movh.a	%a15, hi:osEE_cdb_var
	.loc 3 2265 0
	ld.a	%a15, [%a15] lo:osEE_cdb_var
	.loc 3 2267 0
	ld.a	%a15, [%a15]0
	.loc 3 2254 0
	mov	%d15, %d4
	.loc 3 2267 0
	ld.a	%a15, [%a15] 12
<<<<<<< Updated upstream
.LVL381:
.LBB1149:
.LBB1150:
.LBB1151:
.LBB1152:
.LBB1153:
.LBB1154:
.LBB1155:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d2, LO:65068
	# 0 "" 2
.LVL382:
#NO_APP
.LBE1155:
.LBE1154:
.LBE1153:
	.loc 3 365 0
	and	%d15, %d2, 255
.LVL383:
	ge.u	%d15, %d15, 100
.LVL384:
	jnz	%d15, .L150
.LBB1156:
	.loc 3 366 0
	mov	%d15, %d2
.LVL385:
	mov	%d3, 100
	insert	%d15, %d15, %d3, 0, 8
.LVL386:
.LBB1157:
.LBB1158:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL387:
#NO_APP
.L150:
.LBE1158:
.LBE1157:
.LBE1156:
.LBE1152:
.LBE1151:
.LBE1150:
	.loc 2 2305 0
	ld.w	%d15, [%a15] 12
.LVL388:
	andn	%d4, %d15, %d4
.LVL389:
	st.w	[%a15] 12, %d4
.LVL390:
.LBB1159:
.LBB1160:
.LBB1161:
.LBB1162:
.LBB1163:
.LBB1164:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL391:
#NO_APP
	mov	%d15, %d3
.LVL392:
	and	%d3, %d3, 255
.LVL393:
.LBE1164:
.LBE1163:
.LBE1162:
	.loc 3 383 0
	and	%d2, %d2, 255
.LVL394:
	jeq	%d3, %d2, .L151
.LVL395:
	insert	%d15, %d15, %d2, 0, 8
.LVL396:
.LBB1165:
.LBB1166:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL397:
#NO_APP
.L151:
.LBE1166:
.LBE1165:
.LBE1161:
.LBE1160:
.LBE1159:
.LBE1149:
	.loc 2 2326 0
=======
.LVL227:
.LBB584:
	.loc 3 2301 0
	call	osEE_begin_primitive
.LVL228:
	.loc 3 2305 0
	ld.w	%d4, [%a15] 12
	andn	%d4, %d4, %d15
	st.w	[%a15] 12, %d4
.LVL229:
	.loc 3 2308 0
	mov	%d4, %d2
	call	osEE_end_primitive
.LVL230:
.LBE584:
	.loc 3 2326 0
>>>>>>> Stashed changes
	mov	%d2, 0
	ret
.LFE135:
	.size	ClearEvent, .-ClearEvent
	.align 1
	.global	GetCounterValue
	.type	GetCounterValue, @function
GetCounterValue:
.LFB136:
	.loc 3 2336 0
.LVL231:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 2374 0
	ld.w	%d15, [%a15] 24
	.loc 3 2375 0
	mov	%d2, 3
	.loc 3 2374 0
	jge.u	%d4, %d15, .L165
	.loc 3 2378 0
	mov	%d2, 14
	.loc 3 2377 0
	jz.a	%a4, .L165
.LVL232:
.LBB585:
	.loc 3 2382 0
	ld.a	%a15, [%a15] 20
	.loc 3 2409 0
	mov	%d2, 0
	.loc 3 2382 0
	addsc.a	%a15, %a15, %d4, 2
	.loc 3 2407 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15]0
	ld.w	%d15, [%a15] 4
	st.w	[%a4]0, %d15
.LVL233:
.L165:
.LBE585:
	.loc 3 2428 0
	ret
.LFE136:
	.size	GetCounterValue, .-GetCounterValue
	.align 1
	.global	GetElapsedValue
	.type	GetElapsedValue, @function
GetElapsedValue:
.LFB137:
	.loc 3 2437 0
.LVL234:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 2474 0
	ld.w	%d15, [%a15] 24
	.loc 3 2475 0
	mov	%d2, 3
	.loc 3 2474 0
	jge.u	%d4, %d15, .L170
	.loc 3 2477 0
	mov.d	%d3, %a4
	mov.d	%d5, %a5
	eq	%d15, %d3, 0
	or.eq	%d15, %d5, 0
	.loc 3 2478 0
	mov	%d2, 14
	.loc 3 2477 0
	jnz	%d15, .L170
.LBB586:
	.loc 3 2482 0
	ld.a	%a15, [%a15] 20
	.loc 3 2484 0
	ld.w	%d15, [%a4]0
	.loc 3 2482 0
	addsc.a	%a15, %a15, %d4, 2
	ld.a	%a15, [%a15]0
.LVL235:
.LBB587:
	.loc 3 2509 0
	ld.a	%a2, [%a15]0
	ld.w	%d2, [%a2] 4
.LVL236:
	.loc 3 2517 0
	jlt.u	%d2, %d15, .L171
	.loc 3 2517 0 is_stmt 0 discriminator 1
	sub	%d15, %d2, %d15
.LVL237:
	j	.L172
.LVL238:
.L171:
	ld.w	%d3, [%a15] 4
	add	%d3, %d2
	add	%d3, 1
	.loc 3 2517 0 discriminator 2
	sub	%d15, %d3, %d15
.LVL239:
.L172:
	.loc 3 2515 0 is_stmt 1
	st.w	[%a5]0, %d15
.LVL240:
	.loc 3 2524 0
	st.w	[%a4]0, %d2
.LVL241:
	.loc 3 2526 0
	mov	%d2, 0
.LVL242:
.L170:
.LBE587:
.LBE586:
	.loc 3 2546 0
	ret
.LFE137:
	.size	GetElapsedValue, .-GetElapsedValue
	.align 1
	.global	IncrementCounter
	.type	IncrementCounter, @function
IncrementCounter:
.LFB138:
	.loc 3 2553 0
.LVL243:
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	.loc 3 2592 0
	ld.w	%d15, [%a15] 24
	.loc 3 2593 0
	mov	%d2, 3
<<<<<<< Updated upstream
	.loc 2 2592 0
	jge.u	%d4, %d15, .L163
.LBB1176:
	.loc 2 2597 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 20
	addsc.a	%a15, %a15, %d4, 2
	ld.a	%a4, [%a15]0
.LVL416:
.LBB1177:
.LBB1178:
.LBB1179:
.LBB1180:
.LBB1181:
.LBB1182:
.LBB1183:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL417:
#NO_APP
.LBE1183:
.LBE1182:
.LBE1181:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL418:
	ge.u	%d15, %d15, 100
.LVL419:
	jnz	%d15, .L164
.LBB1184:
	.loc 3 366 0
	mov	%d15, %d8
.LVL420:
	mov	%d2, 100
	insert	%d15, %d15, %d2, 0, 8
.LVL421:
.LBB1185:
.LBB1186:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL422:
#NO_APP
.L164:
.LBE1186:
.LBE1185:
.LBE1184:
.LBE1180:
.LBE1179:
.LBE1178:
	.loc 2 2622 0
=======
	.loc 3 2592 0
	jge.u	%d4, %d15, .L176
.LBB588:
	.loc 3 2597 0
	ld.a	%a2, [%a15] 20
	addsc.a	%a2, %a2, %d4, 2
	ld.a	%a12, [%a2]0
.LVL244:
.LBB589:
	.loc 3 2617 0
	call	osEE_begin_primitive
.LVL245:
	.loc 3 2622 0
	mov.aa	%a4, %a12
	.loc 3 2617 0
	mov	%d15, %d2
.LVL246:
	.loc 3 2622 0
>>>>>>> Stashed changes
	call	osEE_counter_increment
.LVL247:
.LBB590:
.LBB591:
	.loc 1 172 0
	movh.a	%a2, hi:osEE_cdb_var
	ld.a	%a2, [%a2] lo:osEE_cdb_var
.LBE591:
.LBE590:
	.loc 3 2626 0
	ld.a	%a2, [%a2]0
	ld.bu	%d2, [%a2] 20
	jge.u	%d2, 2, .L177
	.loc 3 2627 0
	mov.aa	%a4, %a15
	call	osEE_scheduler_task_preemption_point
<<<<<<< Updated upstream
.LVL425:
.L165:
.LBB1189:
.LBB1190:
.LBB1191:
.LBB1192:
.LBB1193:
.LBB1194:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL426:
#NO_APP
	mov	%d15, %d3
.LVL427:
	and	%d3, %d3, 255
.LVL428:
.LBE1194:
.LBE1193:
.LBE1192:
	.loc 3 383 0
	and	%d2, %d8, 255
	jeq	%d3, %d2, .L166
.LVL429:
	insert	%d15, %d15, %d2, 0, 8
.LVL430:
.LBB1195:
.LBB1196:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL431:
#NO_APP
.L166:
.LBE1196:
.LBE1195:
.LBE1191:
.LBE1190:
.LBE1189:
	.loc 2 2632 0
=======
.LVL248:
.L177:
	.loc 3 2630 0
	mov	%d4, %d15
	call	osEE_end_primitive
.LVL249:
	.loc 3 2632 0
>>>>>>> Stashed changes
	mov	%d2, 0
.LVL250:
.L176:
.LBE589:
.LBE588:
	.loc 3 2650 0
	ret
.LFE138:
	.size	IncrementCounter, .-IncrementCounter
	.align 1
	.global	GetISRID
	.type	GetISRID, @function
GetISRID:
.LFB139:
	.loc 3 3316 0
.LBB592:
.LBB593:
	.loc 1 172 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
	ld.a	%a15, [%a15]0
.LBE593:
.LBE592:
	.loc 3 3324 0
	mov	%d2, -1
	.loc 3 3321 0
	ld.bu	%d15, [%a15] 20
	jne	%d15, 2, .L180
	.loc 3 3322 0
	ld.w	%d2, [%a15] 16
.LVL251:
.L180:
	.loc 3 3328 0
	ret
.LFE139:
	.size	GetISRID, .-GetISRID
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
	.uaword	.LFB83
	.uaword	.LFE83-.LFB83
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB84
	.uaword	.LFE84-.LFB84
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB154
	.uaword	.LFE154-.LFB154
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB116
	.uaword	.LFE116-.LFB116
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB117
	.uaword	.LFE117-.LFB117
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB118
	.uaword	.LFE118-.LFB118
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB119
	.uaword	.LFE119-.LFB119
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB120
	.uaword	.LFE120-.LFB120
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB121
	.uaword	.LFE121-.LFB121
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB122
	.uaword	.LFE122-.LFB122
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB123
	.uaword	.LFE123-.LFB123
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB124
	.uaword	.LFE124-.LFB124
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB125
	.uaword	.LFE125-.LFB125
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB126
	.uaword	.LFE126-.LFB126
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB127
	.uaword	.LFE127-.LFB127
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB128
	.uaword	.LFE128-.LFB128
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB129
	.uaword	.LFE129-.LFB129
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB130
	.uaword	.LFE130-.LFB130
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB131
	.uaword	.LFE131-.LFB131
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB132
	.uaword	.LFE132-.LFB132
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB133
	.uaword	.LFE133-.LFB133
	.byte	0x4
	.uaword	.LCFI0-.LFB133
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB134
	.uaword	.LFE134-.LFB134
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB135
	.uaword	.LFE135-.LFB135
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB136
	.uaword	.LFE136-.LFB136
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB137
	.uaword	.LFE137-.LFB137
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB138
	.uaword	.LFE138-.LFB138
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB139
	.uaword	.LFE139-.LFB139
	.align 2
.LEFDE64:
.section .text,"ax",@progbits
.Letext0:
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 6 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 7 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 8 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_hal_internal_types.h"
	.file 9 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 10 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_scheduler_types.h"
	.file 11 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_kernel_types.h"
	.file 12 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_get_kernel_and_core.h"
	.file 13 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_scheduler.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
<<<<<<< Updated upstream
	.uaword	0x4d97
=======
	.uaword	0x3bc9
>>>>>>> Stashed changes
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -Os -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_oo_api_osek.c"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"size_t"
	.byte	0x5
	.byte	0xd4
	.uaword	0x17e
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
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_t"
	.byte	0x6
	.byte	0x2a
	.uaword	0x1b8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_t"
	.byte	0x6
	.byte	0x36
	.uaword	0x1e6
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x6
	.byte	0x50
	.uaword	0x17e
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0x48
	.uaword	0x269
	.uleb128 0x5
	.string	"OSEE_FALSE"
	.sleb128 0
	.uleb128 0x5
	.string	"OSEE_TRUE"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"OsEE_bool"
	.byte	0x7
	.byte	0x4b
	.uaword	0x247
	.uleb128 0x3
	.string	"OsEE_addr"
	.byte	0x7
	.byte	0x5a
	.uaword	0x28b
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x7
	.byte	0x5b
	.uaword	0x1fc
	.uleb128 0x3
	.string	"OsEE_prio"
	.byte	0x7
	.byte	0x8d
	.uaword	0x1a9
	.uleb128 0x3
	.string	"OsEE_isr_src_id"
	.byte	0x7
	.byte	0x92
	.uaword	0x1d6
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0x74
	.uaword	0x31b
	.uleb128 0x8
	.string	"pcxo"
	.byte	0x8
	.byte	0x75
	.uaword	0x237
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"pcxs"
	.byte	0x8
	.byte	0x76
	.uaword	0x237
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"ul"
	.byte	0x8
	.byte	0x7b
	.uaword	0x237
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"pie"
	.byte	0x8
	.byte	0x7c
	.uaword	0x237
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"pcpn"
	.byte	0x8
	.byte	0x7d
	.uaword	0x237
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.byte	0x72
	.uaword	0x33b
	.uleb128 0xa
	.string	"reg"
	.byte	0x8
	.byte	0x73
	.uaword	0x28d
	.uleb128 0xa
	.string	"bits"
	.byte	0x8
	.byte	0x82
	.uaword	0x2c5
	.byte	0
	.uleb128 0x3
	.string	"OsEE_pcxi"
	.byte	0x8
	.byte	0x83
	.uaword	0x31b
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0xbe
	.uaword	0x383
	.uleb128 0x8
	.string	"ccpn"
	.byte	0x8
	.byte	0xbf
	.uaword	0x237
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"ie"
	.byte	0x8
	.byte	0xc1
	.uaword	0x237
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"pipn"
	.byte	0x8
	.byte	0xc2
	.uaword	0x237
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.byte	0xbc
	.uaword	0x3a3
	.uleb128 0xa
	.string	"reg"
	.byte	0x8
	.byte	0xbd
	.uaword	0x28d
	.uleb128 0xa
	.string	"bits"
	.byte	0x8
	.byte	0xc4
	.uaword	0x34c
	.byte	0
	.uleb128 0x3
	.string	"OsEE_icr"
	.byte	0x8
	.byte	0xc5
	.uaword	0x383
	.uleb128 0xb
	.string	"OsEE_CTX_tag"
	.byte	0x10
	.byte	0x8
	.byte	0xf3
	.uaword	0x3fd
	.uleb128 0xc
	.string	"p_ctx"
	.byte	0x8
	.byte	0xf4
	.uaword	0x3fd
	.byte	0
	.uleb128 0xc
	.string	"dummy"
	.byte	0x8
	.byte	0xf5
	.uaword	0x28d
	.byte	0x4
	.uleb128 0xc
	.string	"pcxi"
	.byte	0x8
	.byte	0xf6
	.uaword	0x33b
	.byte	0x8
	.uleb128 0xc
	.string	"ra"
	.byte	0x8
	.byte	0xf7
	.uaword	0x27a
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x3b3
	.uleb128 0x3
	.string	"OsEE_CTX"
	.byte	0x8
	.byte	0xf8
	.uaword	0x3b3
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0xfb
	.uaword	0x42a
	.uleb128 0xc
	.string	"p_tos"
	.byte	0x8
	.byte	0xfc
	.uaword	0x42a
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x403
	.uleb128 0x3
	.string	"OsEE_SCB"
	.byte	0x8
	.byte	0xfd
	.uaword	0x413
	.uleb128 0xe
	.byte	0x8
	.byte	0x8
	.uahalf	0x100
	.uaword	0x46d
	.uleb128 0xf
	.string	"p_bos"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x42a
	.byte	0
	.uleb128 0xf
	.string	"stack_size"
	.byte	0x8
	.uahalf	0x105
	.uaword	0x170
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"OsEE_SDB"
	.byte	0x8
	.uahalf	0x106
	.uaword	0x47e
	.uleb128 0x11
	.uaword	0x440
	.uleb128 0xe
	.byte	0xc
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x4bd
	.uleb128 0xf
	.string	"p_sdb"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x4bd
	.byte	0
	.uleb128 0xf
	.string	"p_scb"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x4c3
	.byte	0x4
	.uleb128 0xf
	.string	"isr2_src"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x2ae
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x46d
	.uleb128 0xd
	.byte	0x4
	.uaword	0x430
	.uleb128 0x10
	.string	"OsEE_HDB"
	.byte	0x8
	.uahalf	0x111
	.uaword	0x4da
	.uleb128 0x11
	.uaword	0x483
	.uleb128 0x3
	.string	"AppModeType"
	.byte	0x9
	.byte	0x60
	.uaword	0x1a9
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x9
	.byte	0x78
	.uaword	0x28d
	.uleb128 0x3
	.string	"ISRType"
	.byte	0x9
	.byte	0x81
	.uaword	0x28d
	.uleb128 0x3
	.string	"TaskRefType"
	.byte	0x9
	.byte	0x87
	.uaword	0x524
	.uleb128 0xd
	.byte	0x4
	.uaword	0x4f2
	.uleb128 0x3
	.string	"TaskPrio"
	.byte	0x9
	.byte	0xc8
	.uaword	0x29d
	.uleb128 0x3
	.string	"TaskActivation"
	.byte	0x9
	.byte	0xf4
	.uaword	0x1a9
	.uleb128 0x10
	.string	"TaskFunc"
	.byte	0x9
	.uahalf	0x13a
	.uaword	0x561
	.uleb128 0xd
	.byte	0x4
	.uaword	0x567
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.byte	0x9
	.uahalf	0x145
	.uaword	0x5d0
	.uleb128 0x5
	.string	"OSEE_TASK_TYPE_BASIC"
	.sleb128 0
	.uleb128 0x5
	.string	"OSEE_TASK_TYPE_EXTENDED"
	.sleb128 1
	.uleb128 0x5
	.string	"OSEE_TASK_TYPE_ISR2"
	.sleb128 2
	.uleb128 0x5
	.string	"OSEE_TASK_TYPE_IDLE"
	.sleb128 3
	.byte	0
	.uleb128 0x10
	.string	"OsEE_task_type"
	.byte	0x9
	.uahalf	0x153
	.uaword	0x569
	.uleb128 0x10
	.string	"TaskExecutionType"
	.byte	0x9
	.uahalf	0x157
	.uaword	0x5d0
	.uleb128 0x13
	.byte	0x1
	.byte	0x9
	.uahalf	0x15d
	.uaword	0x689
	.uleb128 0x5
	.string	"OSEE_TASK_SUSPENDED"
	.sleb128 0
	.uleb128 0x5
	.string	"OSEE_TASK_READY"
	.sleb128 1
	.uleb128 0x5
	.string	"OSEE_TASK_READY_STACKED"
	.sleb128 2
	.uleb128 0x5
	.string	"OSEE_TASK_WAITING"
	.sleb128 3
	.uleb128 0x5
	.string	"OSEE_TASK_RUNNING"
	.sleb128 4
	.uleb128 0x5
	.string	"OSEE_TASK_CHAINED"
	.sleb128 5
	.byte	0
	.uleb128 0x10
	.string	"OsEE_task_status"
	.byte	0x9
	.uahalf	0x16e
	.uaword	0x601
	.uleb128 0x10
	.string	"TaskStateType"
	.byte	0x9
	.uahalf	0x17e
	.uaword	0x689
	.uleb128 0x10
	.string	"TaskStateRefType"
	.byte	0x9
	.uahalf	0x180
	.uaword	0x6d1
	.uleb128 0xd
	.byte	0x4
	.uaword	0x6a2
	.uleb128 0x10
	.string	"CounterType"
	.byte	0x9
	.uahalf	0x18f
	.uaword	0x28d
	.uleb128 0x10
	.string	"TickType"
	.byte	0x9
	.uahalf	0x19e
	.uaword	0x28d
	.uleb128 0x10
	.string	"TickRefType"
	.byte	0x9
	.uahalf	0x1a3
	.uaword	0x710
	.uleb128 0xd
	.byte	0x4
	.uaword	0x6eb
	.uleb128 0xe
	.byte	0x8
	.byte	0x9
	.uahalf	0x1b7
	.uaword	0x74f
	.uleb128 0xf
	.string	"maxallowedvalue"
	.byte	0x9
	.uahalf	0x1b9
	.uaword	0x6eb
	.byte	0
	.uleb128 0xf
	.string	"ticksperbase"
	.byte	0x9
	.uahalf	0x1bc
	.uaword	0x6eb
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"AlarmBaseType"
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x716
	.uleb128 0x10
	.string	"AlarmBaseRefType"
	.byte	0x9
	.uahalf	0x1c5
	.uaword	0x77e
	.uleb128 0xd
	.byte	0x4
	.uaword	0x74f
	.uleb128 0x10
	.string	"AlarmType"
	.byte	0x9
	.uahalf	0x1d6
	.uaword	0x28d
	.uleb128 0x10
	.string	"ResourceType"
	.byte	0x9
	.uahalf	0x20c
	.uaword	0x28d
	.uleb128 0x10
	.string	"EventMaskType"
	.byte	0x9
	.uahalf	0x237
	.uaword	0x28d
	.uleb128 0x10
	.string	"EventMaskRefType"
	.byte	0x9
	.uahalf	0x23f
	.uaword	0x7da
	.uleb128 0xd
	.byte	0x4
	.uaword	0x7ab
	.uleb128 0x10
	.string	"MemSize"
	.byte	0x9
	.uahalf	0x2a3
	.uaword	0x170
	.uleb128 0x13
	.byte	0x1
	.byte	0x9
	.uahalf	0x2b1
	.uaword	0xa13
	.uleb128 0x5
	.string	"E_OK"
	.sleb128 0
	.uleb128 0x5
	.string	"E_OS_ACCESS"
	.sleb128 1
	.uleb128 0x5
	.string	"E_OS_CALLEVEL"
	.sleb128 2
	.uleb128 0x5
	.string	"E_OS_ID"
	.sleb128 3
	.uleb128 0x5
	.string	"E_OS_LIMIT"
	.sleb128 4
	.uleb128 0x5
	.string	"E_OS_NOFUNC"
	.sleb128 5
	.uleb128 0x5
	.string	"E_OS_RESOURCE"
	.sleb128 6
	.uleb128 0x5
	.string	"E_OS_STATE"
	.sleb128 7
	.uleb128 0x5
	.string	"E_OS_VALUE"
	.sleb128 8
	.uleb128 0x5
	.string	"E_OS_SERVICEID"
	.sleb128 9
	.uleb128 0x5
	.string	"E_OS_ILLEGAL_ADDRESS"
	.sleb128 10
	.uleb128 0x5
	.string	"E_OS_MISSINGEND"
	.sleb128 11
	.uleb128 0x5
	.string	"E_OS_DISABLEDINT"
	.sleb128 12
	.uleb128 0x5
	.string	"E_OS_STACKFAULT"
	.sleb128 13
	.uleb128 0x5
	.string	"E_OS_PARAM_POINTER"
	.sleb128 14
	.uleb128 0x5
	.string	"E_OS_PROTECTION_MEMORY"
	.sleb128 15
	.uleb128 0x5
	.string	"E_OS_PROTECTION_TIME"
	.sleb128 16
	.uleb128 0x5
	.string	"E_OS_PROTECTION_ARRIVAL"
	.sleb128 17
	.uleb128 0x5
	.string	"E_OS_PROTECTION_LOCKED"
	.sleb128 18
	.uleb128 0x5
	.string	"E_OS_PROTECTION_EXCEPTION"
	.sleb128 19
	.uleb128 0x5
	.string	"E_OS_SPINLOCK"
	.sleb128 20
	.uleb128 0x5
	.string	"E_OS_INTERFERENCE_DEADLOCK"
	.sleb128 21
	.uleb128 0x5
	.string	"E_OS_NESTING_DEADLOCK"
	.sleb128 22
	.uleb128 0x5
	.string	"E_OS_CORE"
	.sleb128 23
	.uleb128 0x5
	.string	"E_OS_SYS_INIT"
	.sleb128 24
	.uleb128 0x5
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
	.sleb128 25
	.uleb128 0x5
	.string	"E_OS_SYS_TASK"
	.sleb128 26
	.uleb128 0x5
	.string	"E_OS_SYS_STACK"
	.sleb128 27
	.uleb128 0x5
	.string	"E_OS_SYS_ACT"
	.sleb128 28
	.byte	0
	.uleb128 0x10
	.string	"OsEE_status_type"
	.byte	0x9
	.uahalf	0x2d4
	.uaword	0x7f0
	.uleb128 0x10
	.string	"StatusType"
	.byte	0x9
	.uahalf	0x2d9
	.uaword	0xa13
	.uleb128 0x13
	.byte	0x1
	.byte	0x9
	.uahalf	0x2f4
	.uaword	0xdca
	.uleb128 0x5
	.string	"OSServiceId_ActivateTask"
	.sleb128 0
	.uleb128 0x5
	.string	"OSServiceId_TerminateTask"
	.sleb128 2
	.uleb128 0x5
	.string	"OSServiceId_ChainTask"
	.sleb128 4
	.uleb128 0x5
	.string	"OSServiceId_Schedule"
	.sleb128 6
	.uleb128 0x5
	.string	"OSServiceId_GetTaskID"
	.sleb128 8
	.uleb128 0x5
	.string	"OSServiceId_GetTaskState"
	.sleb128 10
	.uleb128 0x5
	.string	"OSServiceId_DisableAllInterrupts"
	.sleb128 12
	.uleb128 0x5
	.string	"OSServiceId_EnableAllInterrupts"
	.sleb128 14
	.uleb128 0x5
	.string	"OSServiceId_SuspendAllInterrupts"
	.sleb128 16
	.uleb128 0x5
	.string	"OSServiceId_ResumeAllInterrupts"
	.sleb128 18
	.uleb128 0x5
	.string	"OSServiceId_SuspendOSInterrupts"
	.sleb128 20
	.uleb128 0x5
	.string	"OSServiceId_ResumeOSInterrupts"
	.sleb128 22
	.uleb128 0x5
	.string	"OSServiceId_GetResource"
	.sleb128 24
	.uleb128 0x5
	.string	"OSServiceId_ReleaseResource"
	.sleb128 26
	.uleb128 0x5
	.string	"OSServiceId_SetEvent"
	.sleb128 28
	.uleb128 0x5
	.string	"OSServiceId_ClearEvent"
	.sleb128 30
	.uleb128 0x5
	.string	"OSServiceId_GetEvent"
	.sleb128 32
	.uleb128 0x5
	.string	"OSServiceId_WaitEvent"
	.sleb128 34
	.uleb128 0x5
	.string	"OSServiceId_GetAlarmBase"
	.sleb128 36
	.uleb128 0x5
	.string	"OSServiceId_GetAlarm"
	.sleb128 38
	.uleb128 0x5
	.string	"OSServiceId_SetRelAlarm"
	.sleb128 40
	.uleb128 0x5
	.string	"OSServiceId_SetAbsAlarm"
	.sleb128 42
	.uleb128 0x5
	.string	"OSServiceId_CancelAlarm"
	.sleb128 44
	.uleb128 0x5
	.string	"OSServiceId_IncrementCounter"
	.sleb128 46
	.uleb128 0x5
	.string	"OSServiceId_GetCounterValue"
	.sleb128 48
	.uleb128 0x5
	.string	"OSServiceId_GetElapsedValue"
	.sleb128 50
	.uleb128 0x5
	.string	"OSServiceId_GetActiveApplicationMode"
	.sleb128 70
	.uleb128 0x5
	.string	"OSServiceId_ShutdownOS"
	.sleb128 72
	.uleb128 0x5
	.string	"OSServiceId_StartOS"
	.sleb128 74
	.uleb128 0x5
	.string	"OSId_TaskBody"
	.sleb128 78
	.uleb128 0x5
	.string	"OSId_ISR2Body"
	.sleb128 80
	.uleb128 0x5
	.string	"OSId_Action"
	.sleb128 82
	.uleb128 0x5
	.string	"OSId_Kernel"
	.sleb128 84
	.uleb128 0x5
	.string	"OsId_Invalid"
	.sleb128 86
	.byte	0
	.uleb128 0x10
	.string	"OsEE_service_id_type"
	.byte	0x9
	.uahalf	0x336
	.uaword	0xa3f
	.uleb128 0x10
	.string	"OSServiceIdType"
	.byte	0x9
	.uahalf	0x339
	.uaword	0xdca
	.uleb128 0xb
	.string	"OsEE_SN_tag"
	.byte	0x8
	.byte	0xa
	.byte	0x4b
	.uaword	0xe2c
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0xa
	.byte	0x4d
	.uaword	0xe2c
	.byte	0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0xa
	.byte	0x4f
	.uaword	0xed1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xdff
	.uleb128 0x15
	.string	"OsEE_TDB_tag"
	.byte	0x20
	.byte	0xb
	.uahalf	0x108
	.uaword	0xed1
	.uleb128 0xf
	.string	"hdb"
	.byte	0xb
	.uahalf	0x10b
	.uaword	0x4c9
	.byte	0
	.uleb128 0xf
	.string	"p_tcb"
	.byte	0xb
	.uahalf	0x10e
	.uaword	0x1105
	.byte	0xc
	.uleb128 0xf
	.string	"tid"
	.byte	0xb
	.uahalf	0x110
	.uaword	0x4f2
	.byte	0x10
	.uleb128 0xf
	.string	"task_type"
	.byte	0xb
	.uahalf	0x112
	.uaword	0x5e7
	.byte	0x14
	.uleb128 0xf
	.string	"task_func"
	.byte	0xb
	.uahalf	0x114
	.uaword	0x550
	.byte	0x18
	.uleb128 0xf
	.string	"ready_prio"
	.byte	0xb
	.uahalf	0x117
	.uaword	0x52a
	.byte	0x1c
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x11a
	.uaword	0x52a
	.byte	0x1d
	.uleb128 0xf
	.string	"max_num_of_act"
	.byte	0xb
	.uahalf	0x11c
	.uaword	0x53a
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xed7
	.uleb128 0x11
	.uaword	0xe32
	.uleb128 0x3
	.string	"OsEE_SN"
	.byte	0xa
	.byte	0x50
	.uaword	0xdff
	.uleb128 0x3
	.string	"OsEE_RQ"
	.byte	0xa
	.byte	0xd5
	.uaword	0xefa
	.uleb128 0xd
	.byte	0x4
	.uaword	0xedc
	.uleb128 0x3
	.string	"OsEE_kernel_cb"
	.byte	0xb
	.byte	0x51
	.uaword	0x561
	.uleb128 0x3
	.string	"OsEE_byte"
	.byte	0xb
	.byte	0x53
	.uaword	0x1a9
	.uleb128 0x4
	.byte	0x1
	.byte	0xb
	.byte	0x73
	.uaword	0xf8e
	.uleb128 0x5
	.string	"OSEE_KERNEL_INITIALIZED"
	.sleb128 0
	.uleb128 0x5
	.string	"OSEE_KERNEL_STARTING"
	.sleb128 1
	.uleb128 0x5
	.string	"OSEE_KERNEL_STARTED"
	.sleb128 2
	.uleb128 0x5
	.string	"OSEE_KERNEL_SHUTDOWN"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"OsEE_kernel_status"
	.byte	0xb
	.byte	0x7d
	.uaword	0xf27
	.uleb128 0x7
	.byte	0xc
	.byte	0xb
	.byte	0x90
	.uaword	0xfd9
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0xb
	.byte	0x94
	.uaword	0x1009
	.byte	0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xb
	.byte	0x97
	.uaword	0x52a
	.byte	0x4
	.uleb128 0xc
	.string	"p_owner"
	.byte	0xb
	.byte	0x9a
	.uaword	0xed1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"OsEE_MDB_tag"
	.byte	0x8
	.byte	0xb
	.byte	0xb5
	.uaword	0x1009
	.uleb128 0xc
	.string	"p_cb"
	.byte	0xb
	.byte	0xb7
	.uaword	0x1024
	.byte	0
	.uleb128 0xc
	.string	"prio"
	.byte	0xb
	.byte	0xc3
	.uaword	0x52a
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x100f
	.uleb128 0x11
	.uaword	0xfd9
	.uleb128 0x3
	.string	"OsEE_MCB"
	.byte	0xb
	.byte	0x9b
	.uaword	0xfa8
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1014
	.uleb128 0x3
	.string	"OsEE_MDB"
	.byte	0xb
	.byte	0xce
	.uaword	0x100f
	.uleb128 0x3
	.string	"OsEE_ResourceCB"
	.byte	0xb
	.byte	0xd1
	.uaword	0x1014
	.uleb128 0x3
	.string	"OsEE_ResourceDB"
	.byte	0xb
	.byte	0xd2
	.uaword	0x102a
	.uleb128 0x7
	.byte	0x14
	.byte	0xb
	.byte	0xe0
	.uaword	0x10ee
	.uleb128 0xc
	.string	"current_num_of_act"
	.byte	0xb
	.byte	0xe4
	.uaword	0x53a
	.byte	0
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0xb
	.byte	0xea
	.uaword	0x52a
	.byte	0x1
	.uleb128 0xc
	.string	"status"
	.byte	0xb
	.byte	0xec
	.uaword	0x6a2
	.byte	0x2
	.uleb128 0xc
	.string	"p_last_m"
	.byte	0xb
	.byte	0xef
	.uaword	0x10ee
	.byte	0x4
	.uleb128 0xc
	.string	"wait_mask"
	.byte	0xb
	.byte	0xf3
	.uaword	0x7ab
	.byte	0x8
	.uleb128 0xc
	.string	"event_mask"
	.byte	0xb
	.byte	0xf5
	.uaword	0x7ab
	.byte	0xc
	.uleb128 0xc
	.string	"p_own_sn"
	.byte	0xb
	.byte	0xfb
	.uaword	0xefa
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x102a
	.uleb128 0x10
	.string	"OsEE_TCB"
	.byte	0xb
	.uahalf	0x101
	.uaword	0x1068
	.uleb128 0xd
	.byte	0x4
	.uaword	0x10f4
	.uleb128 0x10
	.string	"OsEE_TDB"
	.byte	0xb
	.uahalf	0x122
	.uaword	0xed7
	.uleb128 0xd
	.byte	0x4
	.uaword	0x110b
	.uleb128 0x10
	.string	"OsEE_TriggerQ"
	.byte	0xb
	.uahalf	0x151
	.uaword	0x1138
	.uleb128 0xd
	.byte	0x4
	.uaword	0x113e
	.uleb128 0x11
	.uaword	0x1143
	.uleb128 0x15
	.string	"OsEE_TriggerDB_tag"
	.byte	0x1c
	.byte	0xb
	.uahalf	0x269
	.uaword	0x1193
	.uleb128 0xf
	.string	"p_trigger_cb"
	.byte	0xb
	.uahalf	0x26b
	.uaword	0x1435
	.byte	0
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x26d
	.uaword	0x12de
	.byte	0x4
	.uleb128 0xf
	.string	"action"
	.byte	0xb
	.uahalf	0x27b
	.uaword	0x1325
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0xb
	.uahalf	0x155
	.uaword	0x11c3
	.uleb128 0xf
	.string	"trigger_queue"
	.byte	0xb
	.uahalf	0x157
	.uaword	0x1122
	.byte	0
	.uleb128 0xf
	.string	"value"
	.byte	0xb
	.uahalf	0x159
	.uaword	0x6eb
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"OsEE_CounterCB"
	.byte	0xb
	.uahalf	0x15e
	.uaword	0x1193
	.uleb128 0xe
	.byte	0xc
	.byte	0xb
	.uahalf	0x16f
	.uaword	0x1208
	.uleb128 0xf
	.string	"p_counter_cb"
	.byte	0xb
	.uahalf	0x171
	.uaword	0x1208
	.byte	0
	.uleb128 0xf
	.string	"info"
	.byte	0xb
	.uahalf	0x177
	.uaword	0x74f
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x11c3
	.uleb128 0x10
	.string	"OsEE_CounterDB"
	.byte	0xb
	.uahalf	0x17c
	.uaword	0x1225
	.uleb128 0x11
	.uaword	0x11da
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.uahalf	0x17f
	.uaword	0x1288
	.uleb128 0x5
	.string	"OSEE_ACTION_TASK"
	.sleb128 0
	.uleb128 0x5
	.string	"OSEE_ACTION_EVENT"
	.sleb128 1
	.uleb128 0x5
	.string	"OSEE_ACTION_COUNTER"
	.sleb128 2
	.uleb128 0x5
	.string	"OSEE_ACTION_CALLBACK"
	.sleb128 3
	.byte	0
	.uleb128 0x10
	.string	"OsEE_action_type"
	.byte	0xb
	.uahalf	0x184
	.uaword	0x122a
	.uleb128 0xe
	.byte	0x10
	.byte	0xb
	.uahalf	0x189
	.uaword	0x12de
	.uleb128 0xf
	.string	"f"
	.byte	0xb
	.uahalf	0x18b
	.uaword	0xf00
	.byte	0
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x18d
	.uaword	0x111c
	.byte	0x4
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x18f
	.uaword	0x12de
	.byte	0x8
	.uleb128 0xf
	.string	"mask"
	.byte	0xb
	.uahalf	0x192
	.uaword	0x7ab
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x120e
	.uleb128 0x10
	.string	"OsEE_action_param"
	.byte	0xb
	.uahalf	0x194
	.uaword	0x12a1
	.uleb128 0xe
	.byte	0x14
	.byte	0xb
	.uahalf	0x198
	.uaword	0x1325
	.uleb128 0xf
	.string	"param"
	.byte	0xb
	.uahalf	0x19a
	.uaword	0x12e4
	.byte	0
	.uleb128 0xf
	.string	"type"
	.byte	0xb
	.uahalf	0x19c
	.uaword	0x1288
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"OsEE_action"
	.byte	0xb
	.uahalf	0x19d
	.uaword	0x1339
	.uleb128 0x11
	.uaword	0x12fe
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.uahalf	0x22b
	.uaword	0x13be
	.uleb128 0x5
	.string	"OSEE_TRIGGER_INACTIVE"
	.sleb128 0
	.uleb128 0x5
	.string	"OSEE_TRIGGER_CANCELED"
	.sleb128 1
	.uleb128 0x5
	.string	"OSEE_TRIGGER_ACTIVE"
	.sleb128 2
	.uleb128 0x5
	.string	"OSEE_TRIGGER_EXPIRED"
	.sleb128 3
	.uleb128 0x5
	.string	"OSEE_TRIGGER_REENABLED"
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.string	"OsEE_trigger_status"
	.byte	0xb
	.uahalf	0x231
	.uaword	0x133e
	.uleb128 0xe
	.byte	0x10
	.byte	0xb
	.uahalf	0x242
	.uaword	0x141e
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0xb
	.uahalf	0x244
	.uaword	0x1138
	.byte	0
	.uleb128 0xf
	.string	"when"
	.byte	0xb
	.uahalf	0x247
	.uaword	0x6eb
	.byte	0x4
	.uleb128 0xf
	.string	"status"
	.byte	0xb
	.uahalf	0x249
	.uaword	0x13be
	.byte	0x8
	.uleb128 0xf
	.string	"cycle"
	.byte	0xb
	.uahalf	0x24d
	.uaword	0x6eb
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"OsEE_TriggerCB"
	.byte	0xb
	.uahalf	0x25e
	.uaword	0x13da
	.uleb128 0xd
	.byte	0x4
	.uaword	0x141e
	.uleb128 0x10
	.string	"OsEE_TriggerDB"
	.byte	0xb
	.uahalf	0x290
	.uaword	0x113e
	.uleb128 0x10
	.string	"OsEE_AlarmDB"
	.byte	0xb
	.uahalf	0x295
	.uaword	0x143b
	.uleb128 0xe
	.byte	0x20
	.byte	0xb
	.uahalf	0x2d9
	.uaword	0x155e
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x2dc
	.uaword	0x111c
	.byte	0
	.uleb128 0xf
	.string	"rq"
	.byte	0xb
	.uahalf	0x2ee
	.uaword	0xeeb
	.byte	0x4
	.uleb128 0xf
	.string	"p_free_sn"
	.byte	0xb
	.uahalf	0x2f0
	.uaword	0xefa
	.byte	0x8
	.uleb128 0xf
	.string	"p_stk_sn"
	.byte	0xb
	.uahalf	0x2ff
	.uaword	0xefa
	.byte	0xc
	.uleb128 0x16
	.uaword	.LASF7
	.byte	0xb
	.uahalf	0x301
	.uaword	0x155e
	.byte	0x10
	.uleb128 0x16
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x305
	.uaword	0x4df
	.byte	0x11
	.uleb128 0xf
	.string	"last_error"
	.byte	0xb
	.uahalf	0x307
	.uaword	0xa2c
	.byte	0x12
	.uleb128 0xf
	.string	"prev_s_isr_all_status"
	.byte	0xb
	.uahalf	0x327
	.uaword	0x28d
	.byte	0x14
	.uleb128 0xf
	.string	"prev_s_isr_os_status"
	.byte	0xb
	.uahalf	0x329
	.uaword	0x28d
	.byte	0x18
	.uleb128 0xf
	.string	"s_isr_all_cnt"
	.byte	0xb
	.uahalf	0x32b
	.uaword	0xf16
	.byte	0x1c
	.uleb128 0xf
	.string	"s_isr_os_cnt"
	.byte	0xb
	.uahalf	0x32d
	.uaword	0xf16
	.byte	0x1d
	.uleb128 0xf
	.string	"d_isr_all_cnt"
	.byte	0xb
	.uahalf	0x330
	.uaword	0xf16
	.byte	0x1e
	.byte	0
	.uleb128 0x17
	.uaword	0xf8e
	.uleb128 0x10
	.string	"OsEE_CCB"
	.byte	0xb
	.uahalf	0x33a
	.uaword	0x1467
	.uleb128 0xe
	.byte	0x8
	.byte	0xb
	.uahalf	0x344
	.uaword	0x15a0
	.uleb128 0x16
	.uaword	.LASF9
	.byte	0xb
	.uahalf	0x34a
	.uaword	0x15a0
	.byte	0
	.uleb128 0xf
	.string	"p_idle_task"
	.byte	0xb
	.uahalf	0x354
	.uaword	0x111c
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1563
	.uleb128 0x10
	.string	"OsEE_CDB"
	.byte	0xb
	.uahalf	0x36a
	.uaword	0x15b7
	.uleb128 0x11
	.uaword	0x1574
	.uleb128 0xe
	.byte	0x4
	.byte	0xb
	.uahalf	0x36f
	.uaword	0x15d5
	.uleb128 0xf
	.string	"dummy"
	.byte	0xb
	.uahalf	0x3b1
	.uaword	0x28d
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"OsEE_KCB"
	.byte	0xb
	.uahalf	0x3b3
	.uaword	0x15bc
	.uleb128 0xe
	.byte	0x24
	.byte	0xb
	.uahalf	0x3c3
	.uaword	0x16cf
	.uleb128 0xf
	.string	"p_kcb"
	.byte	0xb
	.uahalf	0x3c5
	.uaword	0x16cf
	.byte	0
	.uleb128 0xf
	.string	"p_tdb_ptr_array"
	.byte	0xb
	.uahalf	0x3d1
	.uaword	0x16e0
	.byte	0x4
	.uleb128 0xf
	.string	"tdb_array_size"
	.byte	0xb
	.uahalf	0x3d4
	.uaword	0x7e0
	.byte	0x8
	.uleb128 0xf
	.string	"p_res_ptr_array"
	.byte	0xb
	.uahalf	0x3e0
	.uaword	0x16f1
	.byte	0xc
	.uleb128 0xf
	.string	"res_array_size"
	.byte	0xb
	.uahalf	0x3e2
	.uaword	0x7e0
	.byte	0x10
	.uleb128 0xf
	.string	"p_counter_ptr_array"
	.byte	0xb
	.uahalf	0x3e6
	.uaword	0x1708
	.byte	0x14
	.uleb128 0xf
	.string	"counter_array_size"
	.byte	0xb
	.uahalf	0x3e8
	.uaword	0x7e0
	.byte	0x18
	.uleb128 0xf
	.string	"p_alarm_ptr_array"
	.byte	0xb
	.uahalf	0x3eb
	.uaword	0x1719
	.byte	0x1c
	.uleb128 0xf
	.string	"alarm_array_size"
	.byte	0xb
	.uahalf	0x3ed
	.uaword	0x7e0
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x15d5
	.uleb128 0x18
	.uaword	0xed1
	.uaword	0x16e0
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x16d5
	.uleb128 0x18
	.uaword	0x1009
	.uaword	0x16f1
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x16e6
	.uleb128 0x18
	.uaword	0x1702
	.uaword	0x1702
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1225
	.uleb128 0xd
	.byte	0x4
	.uaword	0x16f7
	.uleb128 0x18
	.uaword	0x1138
	.uaword	0x1719
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x170e
	.uleb128 0x10
	.string	"OsEE_KDB"
	.byte	0xb
	.uahalf	0x3fc
	.uaword	0x1730
	.uleb128 0x11
	.uaword	0x15e6
	.uleb128 0x1a
	.string	"osEE_lock_core"
	.byte	0xc
	.byte	0xce
	.byte	0x1
	.byte	0x3
	.uaword	0x1746
	.uleb128 0x1b
	.uaword	.LASF10
	.byte	0xc
	.byte	0xce
	.uaword	0x1746
	.byte	0
	.uleb128 0x11
	.uaword	0x174b
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1593
	.uleb128 0x1c
	.string	"osEE_unlock_core"
	.byte	0xc
	.uahalf	0x10b
	.byte	0x1
	.byte	0x3
	.uaword	0x1779
	.uleb128 0x1d
	.uaword	.LASF10
	.byte	0xc
	.uahalf	0x10b
	.uaword	0x1746
	.byte	0
	.uleb128 0x1e
	.string	"osEE_tc_get_icr"
	.byte	0x2
	.uahalf	0x100
	.byte	0x1
	.uaword	0x3a3
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x176e
	.uleb128 0x1b
=======
	.uaword	0x17b2
	.uleb128 0x1f
>>>>>>> Stashed changes
	.string	"icr"
	.byte	0x2
	.uahalf	0x102
<<<<<<< Updated upstream
	.uaword	0x3a3
	.uleb128 0x1c
	.uleb128 0x1b
=======
	.uaword	0x390
	.uleb128 0x20
	.uleb128 0x1f
>>>>>>> Stashed changes
	.string	"reg"
	.byte	0x2
	.uahalf	0x103
	.uaword	0x28d
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"osEE_hal_disableIRQ"
	.byte	0x2
	.uahalf	0x112
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.string	"osEE_tc_set_icr"
	.byte	0x2
	.uahalf	0x107
	.byte	0x1
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x17af
	.uleb128 0x1f
=======
	.uaword	0x17f3
	.uleb128 0x22
>>>>>>> Stashed changes
	.string	"icr"
	.byte	0x2
	.uahalf	0x107
	.uaword	0x3a3
	.byte	0
	.uleb128 0x1e
	.string	"OSEE_ISR2_VIRT_TO_HW_PRIO"
	.byte	0x2
	.uahalf	0x12d
	.byte	0x1
	.uaword	0x1a9
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x17e4
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x3
=======
	.uaword	0x1828
	.uleb128 0x1d
	.uaword	.LASF11
	.byte	0x2
>>>>>>> Stashed changes
	.uahalf	0x12d
	.uaword	0x52a
	.byte	0
<<<<<<< Updated upstream
	.uleb128 0x21
	.string	"osEE_get_curr_core"
	.byte	0xc
	.byte	0x72
	.byte	0x1
	.uaword	0x1800
	.byte	0x3
	.uleb128 0xd
	.byte	0x4
	.uaword	0x15a6
	.uleb128 0x1a
	.string	"osEE_hal_begin_nested_primitive"
	.byte	0x3
	.uahalf	0x169
	.byte	0x1
	.uaword	0x28d
	.byte	0x3
	.uaword	0x1854
	.uleb128 0x1b
	.string	"icr"
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x3a3
	.uleb128 0x1c
	.uleb128 0x1b
	.string	"icr_temp"
	.byte	0x3
	.uahalf	0x16e
	.uaword	0x3a3
	.byte	0
	.byte	0
	.uleb128 0x1e
	.string	"osEE_hal_end_nested_primitive"
	.byte	0x3
	.uahalf	0x17a
	.byte	0x1
	.byte	0x3
	.uaword	0x18a7
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x3
	.uahalf	0x17a
	.uaword	0x28d
	.uleb128 0x1b
	.string	"flags_icr"
	.byte	0x3
	.uahalf	0x17c
	.uaword	0x3a3
	.uleb128 0x1b
	.string	"icr"
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x3a3
	.byte	0
	.uleb128 0x1e
	.string	"osEE_call_shutdown_hook"
	.byte	0x1
	.uahalf	0x1c3
	.byte	0x1
	.byte	0x3
	.uaword	0x18e2
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1c5
	.uaword	0x18e2
	.uleb128 0x20
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0xa2c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x18e8
	.uleb128 0x11
	.uaword	0x1563
	.uleb128 0x1a
	.string	"osEE_hal_suspendIRQ"
	.byte	0x3
	.uahalf	0x11e
	.byte	0x1
	.uaword	0x28d
	.byte	0x3
	.uaword	0x191c
	.uleb128 0x1b
	.string	"icr"
	.byte	0x3
	.uahalf	0x120
	.uaword	0x3a3
	.byte	0
	.uleb128 0x1e
	.string	"osEE_stack_monitoring"
	.byte	0x1
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x1949
	.uleb128 0x20
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x3ef
	.uaword	0x1800
	.byte	0
	.uleb128 0x22
=======
	.uleb128 0x1a
>>>>>>> Stashed changes
	.string	"osEE_orti_trace_service_entry"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x1987
	.uleb128 0x23
	.uaword	.LASF9
	.byte	0x1
	.byte	0x8a
	.uaword	0x18e2
	.uleb128 0x23
	.uaword	.LASF14
	.byte	0x1
	.byte	0x8b
	.uaword	0x1987
=======
	.uaword	0x1866
	.uleb128 0x1b
	.uaword	.LASF9
	.byte	0x1
	.byte	0x8a
	.uaword	0x1866
	.uleb128 0x1b
	.uaword	.LASF12
	.byte	0x1
	.byte	0x8b
	.uaword	0x1871
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x186c
	.uleb128 0x11
	.uaword	0x1550
	.uleb128 0x11
<<<<<<< Updated upstream
	.uaword	0xde7
	.uleb128 0x22
=======
	.uaword	0xdd4
	.uleb128 0x1a
>>>>>>> Stashed changes
	.string	"osEE_orti_trace_service_exit"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x19c9
	.uleb128 0x23
	.uaword	.LASF9
	.byte	0x1
	.byte	0x96
	.uaword	0x18e2
	.uleb128 0x23
	.uaword	.LASF14
	.byte	0x1
	.byte	0x97
	.uaword	0x1987
	.byte	0
	.uleb128 0x1d
	.string	"osEE_hal_enableIRQ"
	.byte	0x3
	.uahalf	0x118
	.byte	0x1
	.byte	0x3
	.uleb128 0x1e
	.string	"osEE_hal_resumeIRQ"
	.byte	0x3
	.uahalf	0x125
	.byte	0x1
	.byte	0x3
	.uaword	0x1a18
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x3
	.uahalf	0x125
	.uaword	0x28d
	.uleb128 0x1b
	.string	"icr"
	.byte	0x3
	.uahalf	0x127
	.uaword	0x3a3
	.byte	0
	.uleb128 0x21
	.string	"osEE_begin_primitive"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.uaword	0x28d
	.byte	0x3
	.uleb128 0x1e
	.string	"osEE_call_startup_hook"
	.byte	0x1
	.uahalf	0x14f
	.byte	0x1
	.byte	0x3
	.uaword	0x1a64
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x151
	.uaword	0x18e2
	.byte	0
	.uleb128 0x22
	.string	"osEE_idle_task_start"
	.byte	0x4
	.byte	0x91
	.byte	0x1
	.byte	0x3
	.uaword	0x1a8e
	.uleb128 0x23
	.uaword	.LASF15
	.byte	0x4
	.byte	0x93
	.uaword	0x111c
	.byte	0
	.uleb128 0x1d
	.string	"osEE_shutdown_os_extra"
	.byte	0x1
	.uahalf	0x283
	.byte	0x1
	.byte	0x3
	.uleb128 0x1e
	.string	"osEE_set_service_id"
	.byte	0x1
	.uahalf	0x1f8
	.byte	0x1
	.byte	0x3
	.uaword	0x1ae2
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1fa
	.uaword	0x18e2
	.uleb128 0x20
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x1fb
	.uaword	0xde7
	.byte	0
	.uleb128 0x1e
	.string	"osEE_call_error_hook"
	.byte	0x1
	.uahalf	0x1e0
	.byte	0x1
	.byte	0x3
	.uaword	0x1b1a
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1e2
	.uaword	0x18e2
	.uleb128 0x20
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0xa2c
	.byte	0
	.uleb128 0x1e
	.string	"osEE_end_primitive"
	.byte	0x1
	.uahalf	0x102
	.byte	0x1
	.byte	0x3
	.uaword	0x1b44
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x104
	.uaword	0x28d
	.byte	0
	.uleb128 0x21
	.string	"osEE_get_kernel"
	.byte	0xc
	.byte	0x55
	.byte	0x1
	.uaword	0x1b5d
	.byte	0x3
	.uleb128 0xd
	.byte	0x4
	.uaword	0x171f
	.uleb128 0x1a
=======
	.uaword	0x18b3
	.uleb128 0x1b
	.uaword	.LASF9
	.byte	0x1
	.byte	0x96
	.uaword	0x1866
	.uleb128 0x1b
	.uaword	.LASF12
	.byte	0x1
	.byte	0x97
	.uaword	0x1871
	.byte	0
	.uleb128 0x23
	.string	"osEE_get_curr_core"
	.byte	0xc
	.byte	0x72
	.byte	0x1
	.uaword	0x174b
	.byte	0x3
	.uleb128 0x1e
	.string	"osEE_hal_begin_nested_primitive"
	.byte	0x2
	.uahalf	0x169
	.byte	0x1
	.uaword	0x27a
	.byte	0x3
	.uaword	0x191d
	.uleb128 0x1f
	.string	"icr"
	.byte	0x2
	.uahalf	0x16b
	.uaword	0x390
	.uleb128 0x20
	.uleb128 0x1f
	.string	"icr_temp"
	.byte	0x2
	.uahalf	0x16e
	.uaword	0x390
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"osEE_hal_end_nested_primitive"
	.byte	0x2
	.uahalf	0x17a
	.byte	0x1
	.byte	0x3
	.uaword	0x1970
	.uleb128 0x1d
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x17a
	.uaword	0x27a
	.uleb128 0x1f
	.string	"flags_icr"
	.byte	0x2
	.uahalf	0x17c
	.uaword	0x390
	.uleb128 0x1f
	.string	"icr"
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x390
	.byte	0
	.uleb128 0x1e
>>>>>>> Stashed changes
	.string	"osEE_is_valid_tid"
	.byte	0x1
	.uahalf	0x10b
	.byte	0x1
	.uaword	0x269
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x1b9c
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x1b5d
	.uleb128 0x1f
=======
	.uaword	0x19a9
	.uleb128 0x1d
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x19a9
	.uleb128 0x22
>>>>>>> Stashed changes
	.string	"tid"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x4f2
	.byte	0
<<<<<<< Updated upstream
	.uleb128 0x21
	.string	"osEE_get_curr_task"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	0x111c
	.byte	0x3
	.uleb128 0x1a
=======
	.uleb128 0xd
	.byte	0x4
	.uaword	0x170c
	.uleb128 0x1e
>>>>>>> Stashed changes
	.string	"osEE_is_valid_res_id"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	0x269
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x1bf7
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x1b5d
	.uleb128 0x1f
=======
	.uaword	0x19ee
	.uleb128 0x1d
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x19a9
	.uleb128 0x22
>>>>>>> Stashed changes
	.string	"res_id"
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x796
	.byte	0
	.uleb128 0x1c
	.string	"osEE_call_startup_hook"
	.byte	0x1
	.uahalf	0x14f
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x28d
	.byte	0x3
	.uaword	0x1c45
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x3
	.uahalf	0x143
	.uaword	0x28d
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x143
	.uaword	0x52a
	.uleb128 0x1b
	.string	"ret_flags"
	.byte	0x3
	.uahalf	0x145
	.uaword	0x28d
=======
	.byte	0x3
	.uaword	0x1a1c
	.uleb128 0x1d
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x151
	.uaword	0x1866
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x1c
	.string	"osEE_call_shutdown_hook"
	.byte	0x1
<<<<<<< Updated upstream
	.uahalf	0x35b
	.byte	0x1
	.uaword	0x269
	.byte	0x3
	.uaword	0x1c88
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x35d
	.uaword	0x1b5d
	.uleb128 0x1f
	.string	"alarm_id"
	.byte	0x1
	.uahalf	0x35e
	.uaword	0x784
	.byte	0
	.uleb128 0x1a
	.string	"osEE_alarm_get_trigger_db"
	.byte	0x1
	.uahalf	0x369
	.byte	0x1
	.uaword	0x1cbd
	.byte	0x3
	.uaword	0x1cbd
	.uleb128 0x20
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x36b
	.uaword	0x1cc3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x143b
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1452
	.uleb128 0x22
	.string	"osEE_lock_core"
	.byte	0xc
	.byte	0xce
	.byte	0x1
	.byte	0x3
	.uaword	0x1ced
	.uleb128 0x23
	.uaword	.LASF13
	.byte	0xc
	.byte	0xce
	.uaword	0x1ced
	.byte	0
	.uleb128 0x11
	.uaword	0x1800
	.uleb128 0x1e
	.string	"osEE_unlock_core"
	.byte	0xc
	.uahalf	0x10b
	.byte	0x1
	.byte	0x3
	.uaword	0x1d1a
	.uleb128 0x20
	.uaword	.LASF13
	.byte	0xc
	.uahalf	0x10b
	.uaword	0x1ced
	.byte	0
	.uleb128 0x1a
=======
	.uahalf	0x1c3
	.byte	0x1
	.byte	0x3
	.uaword	0x1a57
	.uleb128 0x1d
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1c5
	.uaword	0x1866
	.uleb128 0x1d
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0xa19
	.byte	0
	.uleb128 0x1c
	.string	"osEE_call_error_hook"
	.byte	0x1
	.uahalf	0x1e0
	.byte	0x1
	.byte	0x3
	.uaword	0x1a8f
	.uleb128 0x1d
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1e2
	.uaword	0x1866
	.uleb128 0x1d
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0xa19
	.byte	0
	.uleb128 0x1c
	.string	"osEE_set_service_id"
	.byte	0x1
	.uahalf	0x1f8
	.byte	0x1
	.byte	0x3
	.uaword	0x1ac6
	.uleb128 0x1d
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1fa
	.uaword	0x1866
	.uleb128 0x1d
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1fb
	.uaword	0xdd4
	.byte	0
	.uleb128 0x1e
>>>>>>> Stashed changes
	.string	"osEE_is_valid_counter_id"
	.byte	0x1
	.uahalf	0x2df
	.byte	0x1
	.uaword	0x269
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x1d61
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0x1b5d
	.uleb128 0x1f
=======
	.uaword	0x1b0d
	.uleb128 0x1d
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0x19a9
	.uleb128 0x22
>>>>>>> Stashed changes
	.string	"counter_id"
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0x6d7
	.byte	0
	.uleb128 0x1e
	.string	"osEE_is_valid_alarm_id"
	.byte	0x1
	.uahalf	0x35b
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	.LFB100
	.uaword	.LFE100
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1dcc
	.uleb128 0x25
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x2c7
	.uaword	0x1800
	.uaword	.LLST0
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x2c8
	.uaword	0xa2c
	.uaword	.LLST1
	.uleb128 0x26
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x1dcc
	.byte	0x1
	.byte	0x6f
	.uleb128 0x26
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2cc
	.uaword	0x1dd1
	.byte	0x1
	.byte	0x5f
	.uleb128 0x27
	.uaword	.LVL4
	.uaword	0x4a37
	.byte	0
	.uleb128 0x11
	.uaword	0x15a0
	.uleb128 0x11
	.uaword	0xf8e
	.uleb128 0x28
	.byte	0x1
	.string	"DisableAllInterrupts"
	.byte	0x2
	.byte	0x3c
	.byte	0x1
	.uaword	.LFB109
	.uaword	.LFE109
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1e27
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x2
	.byte	0x41
	.uaword	0x1ced
	.uleb128 0x2a
	.uaword	.LASF9
	.byte	0x2
	.byte	0x42
	.uaword	0x1dcc
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2b
	.uaword	0x176e
	.uaword	.LBB742
	.uaword	.LBE742
	.byte	0x2
	.byte	0x44
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"EnableAllInterrupts"
	.byte	0x2
	.byte	0x4f
	.byte	0x1
	.uaword	.LFB110
	.uaword	.LFE110
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1e77
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x2
	.byte	0x59
	.uaword	0x1ced
	.uleb128 0x2a
	.uaword	.LASF9
	.byte	0x2
	.byte	0x5a
	.uaword	0x1dcc
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2b
	.uaword	0x19c9
	.uaword	.LBB744
	.uaword	.LBE744
	.byte	0x2
	.byte	0x62
	.byte	0
	.uleb128 0x22
	.string	"osEE_suspend_all_interrupts"
	.byte	0x2
	.byte	0x6b
	.byte	0x1
	.byte	0x1
	.uaword	0x1ec0
	.uleb128 0x23
	.uaword	.LASF13
	.byte	0x2
	.byte	0x6d
	.uaword	0x1ced
	.uleb128 0x23
	.uaword	.LASF9
	.byte	0x2
	.byte	0x6e
	.uaword	0x1dcc
	.uleb128 0x1c
	.uleb128 0x29
	.uaword	.LASF11
	.byte	0x2
	.byte	0x72
	.uaword	0x1ec0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x28d
	.uleb128 0x28
	.byte	0x1
	.string	"SuspendAllInterrupts"
	.byte	0x2
	.byte	0x81
	.byte	0x1
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1fab
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x2
	.byte	0x86
	.uaword	0x1ced
	.uleb128 0x2a
	.uaword	.LASF9
	.byte	0x2
	.byte	0x87
	.uaword	0x1dcc
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2c
	.uaword	0x1e77
	.uaword	.LBB757
	.uaword	.LBE757
	.byte	0x2
	.byte	0x8d
	.uleb128 0x2d
	.uaword	0x1ea7
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2e
	.uaword	0x1e9c
	.uleb128 0x2f
	.uaword	.LBB759
	.uaword	.LBE759
	.uaword	0x1f9a
	.uleb128 0x30
	.uaword	0x1eb3
	.uleb128 0x2c
	.uaword	0x18ed
	.uaword	.LBB760
	.uaword	.LBE760
	.byte	0x2
	.byte	0x72
	.uleb128 0x31
	.uaword	.LBB761
	.uaword	.LBE761
	.uleb128 0x30
	.uaword	0x190f
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB762
	.uaword	.LBE762
	.byte	0x3
	.uahalf	0x120
	.uaword	0x1f87
	.uleb128 0x31
	.uaword	.LBB763
	.uaword	.LBE763
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB764
	.uaword	.LBE764
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x176e
	.uaword	.LBB765
	.uaword	.LBE765
	.byte	0x3
	.uahalf	0x121
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL14
	.uaword	0x1d61
	.uleb128 0x36
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x49
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"ResumeAllInterrupts"
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x202a
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x2
	.byte	0x9a
	.uaword	0x1ced
	.uleb128 0x2a
	.uaword	.LASF9
	.byte	0x2
	.byte	0x9b
	.uaword	0x1dcc
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2c
	.uaword	0x19e2
	.uaword	.LBB767
	.uaword	.LBE767
	.byte	0x2
	.byte	0xa5
	.uleb128 0x37
	.uaword	0x19ff
	.uaword	.LLST3
	.uleb128 0x31
	.uaword	.LBB768
	.uaword	.LBE768
	.uleb128 0x30
	.uaword	0x1a0b
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB769
	.uaword	.LBE769
	.byte	0x3
	.uahalf	0x129
	.uleb128 0x2e
	.uaword	0x17a2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"SuspendOSInterrupts"
	.byte	0x2
	.byte	0xaf
	.byte	0x1
	.uaword	.LFB114
	.uaword	.LFE114
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x211a
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x2
	.byte	0xb4
	.uaword	0x1ced
	.uleb128 0x2a
	.uaword	.LASF9
	.byte	0x2
	.byte	0xb5
	.uaword	0x1dcc
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2f
	.uaword	.LBB771
	.uaword	.LBE771
	.uaword	0x210a
	.uleb128 0x29
	.uaword	.LASF11
	.byte	0x2
	.byte	0xbc
	.uaword	0x1ec0
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB772
	.uaword	.LBE772
	.byte	0x2
	.byte	0xbc
	.uleb128 0x31
	.uaword	.LBB773
	.uaword	.LBE773
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST4
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB774
	.uaword	.LBE774
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x20da
	.uleb128 0x31
	.uaword	.LBB775
	.uaword	.LBE775
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB776
	.uaword	.LBE776
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB777
	.uaword	.LBE777
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST6
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB778
	.uaword	.LBE778
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL27
	.uaword	0x1d61
	.uleb128 0x36
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x49
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"ResumeOSInterrupts"
	.byte	0x2
	.byte	0xcf
	.byte	0x1
	.uaword	.LFB115
	.uaword	.LFE115
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x21dc
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x2
	.byte	0xd4
	.uaword	0x1ced
	.uleb128 0x2a
	.uaword	.LASF9
	.byte	0x2
	.byte	0xd5
	.uaword	0x1dcc
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2c
	.uaword	0x1854
	.uaword	.LBB780
	.uaword	.LBE780
	.byte	0x2
	.byte	0xdf
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST8
	.uleb128 0x31
	.uaword	.LBB781
	.uaword	.LBE781
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST9
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB782
	.uaword	.LBE782
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x21bf
	.uleb128 0x31
	.uaword	.LBB783
	.uaword	.LBE783
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB784
	.uaword	.LBE784
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB785
	.uaword	.LBE785
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"StartOS"
	.byte	0x2
	.byte	0xe9
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB116
	.uaword	.LFE116
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x23fe
	.uleb128 0x3a
	.string	"Mode"
	.byte	0x2
	.byte	0xeb
	.uaword	0x4df
	.uaword	.LLST12
	.uleb128 0x3b
	.string	"ev"
	.byte	0x2
	.byte	0xee
	.uaword	0xa2c
	.uaword	.LLST13
	.uleb128 0x3b
	.string	"real_mode"
	.byte	0x2
	.byte	0xef
	.uaword	0x4df
	.uaword	.LLST14
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x2
	.byte	0xf5
	.uaword	0x1ced
	.uleb128 0x2a
	.uaword	.LASF9
	.byte	0x2
	.byte	0xf6
	.uaword	0x1dcc
	.byte	0x1
	.byte	0x6f
	.uleb128 0x29
	.uaword	.LASF11
	.byte	0x2
	.byte	0xf7
	.uaword	0x1ec0
	.uleb128 0x3c
	.uaword	0x1a18
	.uaword	.LBB787
	.uaword	.LBE787
	.byte	0x2
	.byte	0xf7
	.uaword	0x22eb
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB788
	.uaword	.LBE788
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB789
	.uaword	.LBE789
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST15
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB790
	.uaword	.LBE790
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x22bb
	.uleb128 0x31
	.uaword	.LBB791
	.uaword	.LBE791
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB792
	.uaword	.LBE792
	.uleb128 0x3d
	.uaword	0x1760
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB793
	.uaword	.LBE793
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST16
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB794
	.uaword	.LBE794
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0
	.uaword	0x2353
	.uleb128 0x3f
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x118
	.uaword	0x23fe
	.uaword	.LLST18
	.uleb128 0x32
	.uaword	0x1a64
	.uaword	.LBB797
	.uaword	.LBE797
	.byte	0x2
	.uahalf	0x21a
	.uaword	0x2332
	.uleb128 0x37
	.uaword	0x1a82
	.uaword	.LLST19
	.uleb128 0x35
	.uaword	.LVL51
	.uaword	0x4a60
	.uleb128 0x36
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x176e
	.uaword	.LBB799
	.uaword	.LBE799
	.byte	0x2
	.uahalf	0x21e
	.uleb128 0x35
	.uaword	.LVL52
	.uaword	0x4a9e
	.uleb128 0x36
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1b1a
	.uaword	.LBB801
	.uaword	.LBE801
	.byte	0x2
	.uahalf	0x242
	.uaword	0x23f4
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST20
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB802
	.uaword	.LBE802
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST20
	.uleb128 0x31
	.uaword	.LBB803
	.uaword	.LBE803
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST22
	.uleb128 0x32
	.uaword	0x1788
	.uaword	.LBB804
	.uaword	.LBE804
	.byte	0x3
	.uahalf	0x181
	.uaword	0x23be
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST23
	.byte	0
	.uleb128 0x38
	.uaword	0x1735
	.uaword	.LBB806
	.uaword	.LBE806
	.byte	0x3
	.uahalf	0x17d
	.uleb128 0x31
	.uaword	.LBB807
	.uaword	.LBE807
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB808
	.uaword	.LBE808
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL47
	.uaword	0x4abc
	.byte	0
	.uleb128 0x11
	.uaword	0x111c
	.uleb128 0x40
	.byte	0x1
	.string	"GetActiveApplicationMode"
	.byte	0x2
	.uahalf	0x249
	.byte	0x1
	.uaword	0x4df
	.uaword	.LFB117
	.uaword	.LFE117
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x245e
	.uleb128 0x26
	.uaword	.LASF8
	.byte	0x2
	.uahalf	0x24e
	.uaword	0x4df
	.byte	0x1
	.byte	0x52
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x250
	.uaword	0x1ced
	.uleb128 0x26
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x256
	.uaword	0x245e
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x11
	.uaword	0x18e2
	.uleb128 0x40
	.byte	0x1
	.string	"ActivateTask"
	.byte	0x2
	.uahalf	0x268
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB118
	.uaword	.LFE118
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2681
	.uleb128 0x25
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x26a
	.uaword	0x4f2
	.uaword	.LLST25
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x26d
	.uaword	0xa2c
	.uaword	.LLST26
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x26e
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x270
	.uaword	0x1ced
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x276
	.uaword	0x245e
	.uleb128 0x32
	.uaword	0x1b63
	.uaword	.LBB810
	.uaword	.LBE810
	.byte	0x2
	.uahalf	0x28f
	.uaword	0x24ef
	.uleb128 0x37
	.uaword	0x1b8f
	.uaword	.LLST27
	.uleb128 0x2e
	.uaword	0x1b83
	.byte	0
	.uleb128 0x31
	.uaword	.LBB812
	.uaword	.LBE812
	.uleb128 0x3f
	.uaword	.LASF19
	.byte	0x2
	.uahalf	0x294
	.uaword	0x23fe
	.uaword	.LLST28
	.uleb128 0x31
	.uaword	.LBB813
	.uaword	.LBE813
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x297
	.uaword	0x1ec0
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB814
	.uaword	.LBE814
	.byte	0x2
	.uahalf	0x297
	.uaword	0x25b9
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB815
	.uaword	.LBE815
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB816
	.uaword	.LBE816
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST29
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB817
	.uaword	.LBE817
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x2589
	.uleb128 0x31
	.uaword	.LBB818
	.uaword	.LBE818
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB819
	.uaword	.LBE819
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB820
	.uaword	.LBE820
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST31
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB821
	.uaword	.LBE821
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1b1a
	.uaword	.LBB823
	.uaword	.LBE823
	.byte	0x2
	.uahalf	0x29f
	.uaword	0x265a
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST33
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB824
	.uaword	.LBE824
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST33
	.uleb128 0x31
	.uaword	.LBB825
	.uaword	.LBE825
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST35
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB826
	.uaword	.LBE826
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x263d
	.uleb128 0x31
	.uaword	.LBB827
	.uaword	.LBE827
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB828
	.uaword	.LBE828
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB829
	.uaword	.LBE829
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST37
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	.LVL75
	.uaword	0x4ad7
	.uaword	0x266e
	.uleb128 0x36
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL77
	.uaword	0x4aff
	.uleb128 0x36
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x1b5d
=======
	.uaword	0x256
	.byte	0x3
	.uaword	0x1b50
	.uleb128 0x1d
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x35d
	.uaword	0x19a9
>>>>>>> Stashed changes
	.uleb128 0x22
	.string	"alarm_id"
	.byte	0x1
	.uahalf	0x35e
	.uaword	0x771
	.byte	0
	.uleb128 0x1c
	.string	"osEE_stack_monitoring"
	.byte	0x1
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x1b7d
	.uleb128 0x1d
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x3ef
	.uaword	0x174b
	.byte	0
	.uleb128 0x1e
	.string	"osEE_hal_suspendIRQ"
	.byte	0x2
	.uahalf	0x11e
	.byte	0x1
	.uaword	0x27a
	.byte	0x3
	.uaword	0x1bac
	.uleb128 0x1f
	.string	"icr"
	.byte	0x2
	.uahalf	0x120
	.uaword	0x390
	.byte	0
	.uleb128 0x1a
	.string	"osEE_hal_terminate_activation"
	.byte	0x4
	.byte	0x87
	.byte	0x1
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x26d0
	.uleb128 0x44
	.string	"p_to_term"
	.byte	0x4
	.byte	0x89
	.uaword	0x26d0
	.uleb128 0x44
=======
	.uaword	0x1bf6
	.uleb128 0x24
	.string	"p_to_term"
	.byte	0x4
	.byte	0x89
	.uaword	0x1bf6
	.uleb128 0x24
>>>>>>> Stashed changes
	.string	"kernel_cb"
	.byte	0x4
	.byte	0x8a
	.uaword	0xf00
	.byte	0
	.uleb128 0xd
	.byte	0x4
<<<<<<< Updated upstream
	.uaword	0x4c9
=======
	.uaword	0x4b6
	.uleb128 0x21
	.string	"osEE_hal_enableIRQ"
	.byte	0x2
	.uahalf	0x118
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.string	"osEE_hal_resumeIRQ"
	.byte	0x2
	.uahalf	0x125
	.byte	0x1
	.byte	0x3
	.uaword	0x1c4b
	.uleb128 0x1d
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x125
	.uaword	0x27a
	.uleb128 0x1f
	.string	"icr"
	.byte	0x2
	.uahalf	0x127
	.uaword	0x390
	.byte	0
	.uleb128 0x21
	.string	"osEE_shutdown_os_extra"
	.byte	0x1
	.uahalf	0x283
	.byte	0x1
	.byte	0x3
	.uleb128 0x23
	.string	"osEE_get_kernel"
	.byte	0xc
	.byte	0x55
	.byte	0x1
	.uaword	0x19a9
	.byte	0x3
	.uleb128 0x23
	.string	"osEE_get_curr_task"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	0x1109
	.byte	0x3
	.uleb128 0x1e
	.string	"osEE_hal_prepare_ipl"
	.byte	0x2
	.uahalf	0x143
	.byte	0x1
	.uaword	0x27a
	.byte	0x3
	.uaword	0x1ceb
	.uleb128 0x1d
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x143
	.uaword	0x27a
	.uleb128 0x1d
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x143
	.uaword	0x517
	.uleb128 0x1f
	.string	"ret_flags"
	.byte	0x2
	.uahalf	0x145
	.uaword	0x27a
	.byte	0
	.uleb128 0x1e
	.string	"osEE_alarm_get_trigger_db"
	.byte	0x1
	.uahalf	0x369
	.byte	0x1
	.uaword	0x1d20
	.byte	0x3
	.uaword	0x1d20
	.uleb128 0x1d
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x36b
	.uaword	0x1d26
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1428
	.uleb128 0xd
	.byte	0x4
	.uaword	0x143f
	.uleb128 0x1c
	.string	"osEE_shutdown_os"
	.byte	0x1
	.uahalf	0x2c5
	.byte	0x1
	.byte	0x3
	.uaword	0x1d78
	.uleb128 0x1d
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x2c7
	.uaword	0x174b
	.uleb128 0x1d
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x2c8
	.uaword	0xa19
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x1d78
	.uleb128 0x25
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2cc
	.uaword	0x1d7d
	.byte	0
	.uleb128 0x11
	.uaword	0x158d
	.uleb128 0x11
	.uaword	0xf7b
	.uleb128 0x1a
	.string	"osEE_suspend_all_interrupts"
	.byte	0x3
	.byte	0x6b
	.byte	0x1
	.byte	0x1
	.uaword	0x1dcb
	.uleb128 0x1b
	.uaword	.LASF10
	.byte	0x3
	.byte	0x6d
	.uaword	0x1746
	.uleb128 0x1b
	.uaword	.LASF9
	.byte	0x3
	.byte	0x6e
	.uaword	0x1d78
	.uleb128 0x20
	.uleb128 0x26
	.uaword	.LASF13
	.byte	0x3
	.byte	0x72
	.uaword	0x1dcb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x27a
	.uleb128 0x27
	.string	"osEE_begin_primitive"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.uaword	0x27a
	.uaword	.LFB83
	.uaword	.LFE83
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1e82
	.uleb128 0x28
	.uaword	0x18cf
	.uaword	.LBB457
	.uaword	.LBE457
	.byte	0x1
	.byte	0xfe
	.uleb128 0x29
	.uaword	.LBB458
	.uaword	.LBE458
	.uleb128 0x2a
	.uaword	0x18fd
	.uaword	.LLST0
	.uleb128 0x2b
	.uaword	0x1779
	.uaword	.LBB459
	.uaword	.LBE459
	.byte	0x2
	.uahalf	0x16b
	.uaword	0x1e52
	.uleb128 0x29
	.uaword	.LBB460
	.uaword	.LBE460
	.uleb128 0x2c
	.uaword	0x1797
	.uleb128 0x29
	.uaword	.LBB461
	.uaword	.LBE461
	.uleb128 0x2d
	.uaword	0x17a4
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LBB462
	.uaword	.LBE462
	.uleb128 0x2a
	.uaword	0x190a
	.uaword	.LLST1
	.uleb128 0x2e
	.uaword	0x17cc
	.uaword	.LBB463
	.uaword	.LBE463
	.byte	0x2
	.uahalf	0x171
	.uleb128 0x2f
	.uaword	0x17e6
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.string	"osEE_end_primitive"
	.byte	0x1
	.uahalf	0x102
	.byte	0x1
	.uaword	.LFB84
	.uaword	.LFE84
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1f39
	.uleb128 0x31
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x104
	.uaword	0x27a
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	0x191d
	.uaword	.LBB465
	.uaword	.LBE465
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x32
	.uaword	0x1945
	.byte	0x1
	.byte	0x54
	.uleb128 0x29
	.uaword	.LBB466
	.uaword	.LBE466
	.uleb128 0x2c
	.uaword	0x1951
	.uleb128 0x2a
	.uaword	0x1963
	.uaword	.LLST3
	.uleb128 0x2b
	.uaword	0x1779
	.uaword	.LBB467
	.uaword	.LBE467
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x1f1c
	.uleb128 0x29
	.uaword	.LBB468
	.uaword	.LBE468
	.uleb128 0x2c
	.uaword	0x1797
	.uleb128 0x29
	.uaword	.LBB469
	.uaword	.LBE469
	.uleb128 0x2a
	.uaword	0x17a4
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x17cc
	.uaword	.LBB470
	.uaword	.LBE470
	.byte	0x2
	.uahalf	0x181
	.uleb128 0x2f
	.uaword	0x17e6
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0x1d2c
	.uaword	.LFB154
	.uaword	.LFE154
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1f73
	.uleb128 0x2f
	.uaword	0x1d53
	.uaword	.LLST6
	.uleb128 0x2d
	.uaword	0x1d5f
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2d
	.uaword	0x1d6b
	.byte	0x1
	.byte	0x5f
	.uleb128 0x34
	.uaword	0x1d47
	.uleb128 0x35
	.uaword	.LVL15
	.uaword	0x3869
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"DisableAllInterrupts"
	.byte	0x3
	.byte	0x3c
	.byte	0x1
	.uaword	.LFB109
	.uaword	.LFE109
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1fc4
	.uleb128 0x26
	.uaword	.LASF10
	.byte	0x3
	.byte	0x41
	.uaword	0x1746
	.uleb128 0x37
	.uaword	.LASF9
	.byte	0x3
	.byte	0x42
	.uaword	0x1d78
	.byte	0x1
	.byte	0x6f
	.uleb128 0x38
	.uaword	0x17b2
	.uaword	.LBB472
	.uaword	.LBE472
	.byte	0x3
	.byte	0x44
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"EnableAllInterrupts"
	.byte	0x3
	.byte	0x4f
	.byte	0x1
	.uaword	.LFB110
	.uaword	.LFE110
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2014
	.uleb128 0x26
	.uaword	.LASF10
	.byte	0x3
	.byte	0x59
	.uaword	0x1746
	.uleb128 0x37
	.uaword	.LASF9
	.byte	0x3
	.byte	0x5a
	.uaword	0x1d78
	.byte	0x1
	.byte	0x6f
	.uleb128 0x38
	.uaword	0x1bfc
	.uaword	.LBB474
	.uaword	.LBE474
	.byte	0x3
	.byte	0x62
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"SuspendAllInterrupts"
	.byte	0x3
	.byte	0x81
	.byte	0x1
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x20fa
	.uleb128 0x26
	.uaword	.LASF10
	.byte	0x3
	.byte	0x86
	.uaword	0x1746
	.uleb128 0x37
	.uaword	.LASF9
	.byte	0x3
	.byte	0x87
	.uaword	0x1d78
	.byte	0x1
	.byte	0x6f
	.uleb128 0x28
	.uaword	0x1d82
	.uaword	.LBB487
	.uaword	.LBE487
	.byte	0x3
	.byte	0x8d
	.uleb128 0x34
	.uaword	0x1da7
	.uleb128 0x32
	.uaword	0x1db2
	.byte	0x1
	.byte	0x6f
	.uleb128 0x39
	.uaword	.LBB489
	.uaword	.LBE489
	.uaword	0x20e9
	.uleb128 0x2c
	.uaword	0x1dbe
	.uleb128 0x28
	.uaword	0x1b7d
	.uaword	.LBB490
	.uaword	.LBE490
	.byte	0x3
	.byte	0x72
	.uleb128 0x29
	.uaword	.LBB491
	.uaword	.LBE491
	.uleb128 0x2c
	.uaword	0x1b9f
	.uleb128 0x2b
	.uaword	0x1779
	.uaword	.LBB492
	.uaword	.LBE492
	.byte	0x2
	.uahalf	0x120
	.uaword	0x20d6
	.uleb128 0x29
	.uaword	.LBB493
	.uaword	.LBE493
	.uleb128 0x2c
	.uaword	0x1797
	.uleb128 0x29
	.uaword	.LBB494
	.uaword	.LBE494
	.uleb128 0x2a
	.uaword	0x17a4
	.uaword	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	0x17b2
	.uaword	.LBB495
	.uaword	.LBE495
	.byte	0x2
	.uahalf	0x121
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL25
	.uaword	0x1f39
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x49
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"ResumeAllInterrupts"
	.byte	0x3
	.byte	0x95
	.byte	0x1
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2179
	.uleb128 0x26
	.uaword	.LASF10
	.byte	0x3
	.byte	0x9a
	.uaword	0x1746
	.uleb128 0x37
	.uaword	.LASF9
	.byte	0x3
	.byte	0x9b
	.uaword	0x1d78
	.byte	0x1
	.byte	0x6f
	.uleb128 0x28
	.uaword	0x1c15
	.uaword	.LBB497
	.uaword	.LBE497
	.byte	0x3
	.byte	0xa5
	.uleb128 0x2f
	.uaword	0x1c32
	.uaword	.LLST8
	.uleb128 0x29
	.uaword	.LBB498
	.uaword	.LBE498
	.uleb128 0x2c
	.uaword	0x1c3e
	.uleb128 0x2e
	.uaword	0x17cc
	.uaword	.LBB499
	.uaword	.LBE499
	.byte	0x2
	.uahalf	0x129
	.uleb128 0x34
	.uaword	0x17e6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"SuspendOSInterrupts"
	.byte	0x3
	.byte	0xaf
	.byte	0x1
	.uaword	.LFB114
	.uaword	.LFE114
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2269
	.uleb128 0x26
	.uaword	.LASF10
	.byte	0x3
	.byte	0xb4
	.uaword	0x1746
	.uleb128 0x37
	.uaword	.LASF9
	.byte	0x3
	.byte	0xb5
	.uaword	0x1d78
	.byte	0x1
	.byte	0x6f
	.uleb128 0x39
	.uaword	.LBB501
	.uaword	.LBE501
	.uaword	0x2259
	.uleb128 0x26
	.uaword	.LASF13
	.byte	0x3
	.byte	0xbc
	.uaword	0x1dcb
	.uleb128 0x28
	.uaword	0x18cf
	.uaword	.LBB502
	.uaword	.LBE502
	.byte	0x3
	.byte	0xbc
	.uleb128 0x29
	.uaword	.LBB503
	.uaword	.LBE503
	.uleb128 0x2a
	.uaword	0x18fd
	.uaword	.LLST9
	.uleb128 0x2b
	.uaword	0x1779
	.uaword	.LBB504
	.uaword	.LBE504
	.byte	0x2
	.uahalf	0x16b
	.uaword	0x2229
	.uleb128 0x29
	.uaword	.LBB505
	.uaword	.LBE505
	.uleb128 0x2c
	.uaword	0x1797
	.uleb128 0x29
	.uaword	.LBB506
	.uaword	.LBE506
	.uleb128 0x2a
	.uaword	0x17a4
	.uaword	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LBB507
	.uaword	.LBE507
	.uleb128 0x2a
	.uaword	0x190a
	.uaword	.LLST11
	.uleb128 0x2e
	.uaword	0x17cc
	.uaword	.LBB508
	.uaword	.LBE508
	.byte	0x2
	.uahalf	0x171
	.uleb128 0x2f
	.uaword	0x17e6
	.uaword	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL38
	.uaword	0x1f39
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x49
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"ResumeOSInterrupts"
	.byte	0x3
	.byte	0xcf
	.byte	0x1
	.uaword	.LFB115
	.uaword	.LFE115
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x232b
	.uleb128 0x26
	.uaword	.LASF10
	.byte	0x3
	.byte	0xd4
	.uaword	0x1746
	.uleb128 0x37
	.uaword	.LASF9
	.byte	0x3
	.byte	0xd5
	.uaword	0x1d78
	.byte	0x1
	.byte	0x6f
	.uleb128 0x28
	.uaword	0x191d
	.uaword	.LBB510
	.uaword	.LBE510
	.byte	0x3
	.byte	0xdf
	.uleb128 0x2f
	.uaword	0x1945
	.uaword	.LLST13
	.uleb128 0x29
	.uaword	.LBB511
	.uaword	.LBE511
	.uleb128 0x2c
	.uaword	0x1951
	.uleb128 0x2a
	.uaword	0x1963
	.uaword	.LLST14
	.uleb128 0x2b
	.uaword	0x1779
	.uaword	.LBB512
	.uaword	.LBE512
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x230e
	.uleb128 0x29
	.uaword	.LBB513
	.uaword	.LBE513
	.uleb128 0x2c
	.uaword	0x1797
	.uleb128 0x29
	.uaword	.LBB514
	.uaword	.LBE514
	.uleb128 0x2a
	.uaword	0x17a4
	.uaword	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x17cc
	.uaword	.LBB515
	.uaword	.LBE515
	.byte	0x2
	.uahalf	0x181
	.uleb128 0x2f
	.uaword	0x17e6
	.uaword	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.string	"osEE_idle_task_start"
	.byte	0x4
	.byte	0x91
	.byte	0x1
	.byte	0x3
	.uaword	0x2355
	.uleb128 0x1b
	.uaword	.LASF17
	.byte	0x4
	.byte	0x93
	.uaword	0x1109
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"StartOS"
	.byte	0x3
	.byte	0xe9
	.byte	0x1
	.uaword	0xa19
	.uaword	.LFB116
	.uaword	.LFE116
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x245e
	.uleb128 0x3e
	.string	"Mode"
	.byte	0x3
	.byte	0xeb
	.uaword	0x4cc
	.uaword	.LLST17
	.uleb128 0x3f
	.string	"ev"
	.byte	0x3
	.byte	0xee
	.uaword	0xa19
	.uaword	.LLST18
	.uleb128 0x3f
	.string	"real_mode"
	.byte	0x3
	.byte	0xef
	.uaword	0x4cc
	.uaword	.LLST19
	.uleb128 0x26
	.uaword	.LASF10
	.byte	0x3
	.byte	0xf5
	.uaword	0x1746
	.uleb128 0x37
	.uaword	.LASF9
	.byte	0x3
	.byte	0xf6
	.uaword	0x1d78
	.byte	0x1
	.byte	0x6f
>>>>>>> Stashed changes
	.uleb128 0x40
	.uaword	.LASF13
	.byte	0x3
	.byte	0xf7
	.uaword	0x1dcb
	.uaword	.LLST20
	.uleb128 0x39
	.uaword	.LBB522
	.uaword	.LBE522
	.uaword	0x243b
	.uleb128 0x41
	.uaword	.LASF17
	.byte	0x3
	.uahalf	0x118
	.uaword	0x245e
	.uaword	.LLST21
	.uleb128 0x2b
	.uaword	0x232b
	.uaword	.LBB523
	.uaword	.LBE523
	.byte	0x3
	.uahalf	0x21a
	.uaword	0x241a
	.uleb128 0x2f
	.uaword	0x2349
	.uaword	.LLST22
	.uleb128 0x3b
	.uaword	.LVL58
	.uaword	0x3892
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	0x17b2
	.uaword	.LBB525
	.uaword	.LBE525
	.byte	0x3
	.uahalf	0x21e
	.uleb128 0x3b
	.uaword	.LVL59
	.uaword	0x38d0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL50
	.uaword	0x1dd0
	.uleb128 0x35
	.uaword	.LVL53
	.uaword	0x38ee
	.uleb128 0x3b
	.uaword	.LVL62
	.uaword	0x1e82
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x1109
	.uleb128 0x42
	.byte	0x1
	.string	"GetActiveApplicationMode"
	.byte	0x3
	.uahalf	0x249
	.byte	0x1
	.uaword	0x4cc
	.uaword	.LFB117
	.uaword	.LFE117
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x24be
	.uleb128 0x43
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x24e
	.uaword	0x4cc
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x250
	.uaword	0x1746
	.uleb128 0x43
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x256
	.uaword	0x24be
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x11
	.uaword	0x1866
	.uleb128 0x42
	.byte	0x1
	.string	"ActivateTask"
	.byte	0x3
	.uahalf	0x268
	.byte	0x1
	.uaword	0xa19
	.uaword	.LFB118
	.uaword	.LFE118
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x25a8
	.uleb128 0x44
	.uaword	.LASF18
	.byte	0x3
	.uahalf	0x26a
	.uaword	0x4df
	.uaword	.LLST23
	.uleb128 0x45
	.string	"ev"
	.byte	0x3
	.uahalf	0x26d
	.uaword	0xa19
	.uaword	.LLST24
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x26e
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x270
	.uaword	0x1746
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x276
	.uaword	0x24be
	.uleb128 0x29
	.uaword	.LBB527
	.uaword	.LBE527
	.uleb128 0x41
	.uaword	.LASF19
	.byte	0x3
	.uahalf	0x294
	.uaword	0x245e
	.uaword	.LLST25
	.uleb128 0x29
	.uaword	.LBB528
	.uaword	.LBE528
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x297
	.uaword	0x1dcb
	.uaword	.LLST26
	.uleb128 0x35
	.uaword	.LVL67
	.uaword	0x1dd0
	.uleb128 0x46
	.uaword	.LVL69
	.uaword	0x3909
	.uaword	0x257b
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL71
	.uaword	0x3931
	.uaword	0x2595
	.uleb128 0x3c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL72
	.uaword	0x1e82
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x19a9
	.uleb128 0x42
	.byte	0x1
	.string	"ChainTask"
	.byte	0x3
	.uahalf	0x2b7
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB119
	.uaword	.LFE119
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x2996
	.uleb128 0x25
=======
	.uaword	0x2732
	.uleb128 0x44
>>>>>>> Stashed changes
	.uaword	.LASF18
	.byte	0x3
	.uahalf	0x2b9
<<<<<<< Updated upstream
	.uaword	0x4f2
	.uaword	.LLST38
	.uleb128 0x42
=======
	.uaword	0x4df
	.uaword	.LLST27
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"ev"
	.byte	0x3
	.uahalf	0x2bc
<<<<<<< Updated upstream
	.uaword	0xa2c
	.uaword	.LLST39
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x2bd
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x2bf
	.uaword	0x1ced
	.uleb128 0x3f
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x2c7
	.uaword	0x1dcc
	.uaword	.LLST40
	.uleb128 0x3f
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x2c9
	.uaword	0x23fe
	.uaword	.LLST41
	.uleb128 0x32
	.uaword	0x1b63
	.uaword	.LBB863
	.uaword	.LBE863
	.byte	0x2
	.uahalf	0x2e9
	.uaword	0x2773
	.uleb128 0x37
	.uaword	0x1b8f
	.uaword	.LLST42
	.uleb128 0x2e
	.uaword	0x1b83
	.byte	0
	.uleb128 0x31
	.uaword	.LBB865
	.uaword	.LBE865
	.uleb128 0x3f
	.uaword	.LASF19
	.byte	0x2
	.uahalf	0x2ed
	.uaword	0x23fe
	.uaword	.LLST43
	.uleb128 0x31
	.uaword	.LBB866
	.uaword	.LBE866
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x304
	.uaword	0x28d
	.uleb128 0x32
	.uaword	0x19e2
	.uaword	.LBB867
	.uaword	.LBE867
	.byte	0x2
	.uahalf	0x309
	.uaword	0x27e4
	.uleb128 0x37
	.uaword	0x19ff
	.uaword	.LLST44
	.uleb128 0x31
	.uaword	.LBB868
	.uaword	.LBE868
	.uleb128 0x30
	.uaword	0x1a0b
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB869
	.uaword	.LBE869
	.byte	0x3
	.uahalf	0x129
	.uleb128 0x2e
	.uaword	0x17a2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x19c9
	.uaword	.LBB871
	.uaword	.LBE871
	.byte	0x2
	.uahalf	0x30d
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB873
	.uaword	.LBE873
	.byte	0x2
	.uahalf	0x311
	.uaword	0x2890
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB874
	.uaword	.LBE874
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB875
	.uaword	.LBE875
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST45
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB876
	.uaword	.LBE876
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x2860
	.uleb128 0x31
	.uaword	.LBB877
	.uaword	.LBE877
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB878
	.uaword	.LBE878
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB879
	.uaword	.LBE879
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST47
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB880
	.uaword	.LBE880
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0x1b1a
	.uaword	.LBB882
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x322
	.uaword	0x292d
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST49
	.uleb128 0x46
	.uaword	0x1854
	.uaword	.LBB883
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST49
	.uleb128 0x47
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST51
	.uleb128 0x32
	.uaword	0x1788
	.uaword	.LBB885
	.uaword	.LBE885
	.byte	0x3
	.uahalf	0x181
	.uaword	0x28f7
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST52
	.byte	0
	.uleb128 0x38
	.uaword	0x1735
	.uaword	.LBB887
	.uaword	.LBE887
	.byte	0x3
	.uahalf	0x17d
	.uleb128 0x31
	.uaword	.LBB888
	.uaword	.LBE888
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB889
	.uaword	.LBE889
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST53
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x1b9c
	.uaword	.LBB892
	.uaword	.LBE892
	.byte	0x2
	.uahalf	0x31f
	.uleb128 0x32
	.uaword	0x2686
	.uaword	.LBB894
	.uaword	.LBE894
	.byte	0x2
	.uahalf	0x31f
	.uaword	0x296f
	.uleb128 0x37
	.uaword	0x26be
	.uaword	.LLST54
	.uleb128 0x2e
	.uaword	0x26ad
	.uleb128 0x35
	.uaword	.LVL109
	.uaword	0x4b36
	.uleb128 0x36
=======
	.uaword	0xa19
	.uaword	.LLST28
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x2bd
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x2bf
	.uaword	0x1746
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x2c7
	.uaword	0x1d78
	.uaword	.LLST29
	.uleb128 0x43
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x2c9
	.uaword	0x245e
	.byte	0x1
	.byte	0x59
	.uleb128 0x29
	.uaword	.LBB529
	.uaword	.LBE529
	.uleb128 0x41
	.uaword	.LASF19
	.byte	0x3
	.uahalf	0x2ed
	.uaword	0x245e
	.uaword	.LLST30
	.uleb128 0x47
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x304
	.uaword	0x27a
	.uaword	.LLST31
	.uleb128 0x2b
	.uaword	0x1c15
	.uaword	.LBB531
	.uaword	.LBE531
	.byte	0x3
	.uahalf	0x309
	.uaword	0x2696
	.uleb128 0x2f
	.uaword	0x1c32
	.uaword	.LLST32
	.uleb128 0x29
	.uaword	.LBB532
	.uaword	.LBE532
	.uleb128 0x2c
	.uaword	0x1c3e
	.uleb128 0x2e
	.uaword	0x17cc
	.uaword	.LBB533
	.uaword	.LBE533
	.byte	0x2
	.uahalf	0x129
	.uleb128 0x34
	.uaword	0x17e6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	0x1bfc
	.uaword	.LBB535
	.uaword	.LBE535
	.byte	0x3
	.uahalf	0x30d
	.uleb128 0x3a
	.uaword	0x1c81
	.uaword	.LBB537
	.uaword	.LBE537
	.byte	0x3
	.uahalf	0x31f
	.uleb128 0x2b
	.uaword	0x1bac
	.uaword	.LBB539
	.uaword	.LBE539
	.byte	0x3
	.uahalf	0x31f
	.uaword	0x26e8
	.uleb128 0x34
	.uaword	0x1bd3
	.uleb128 0x2f
	.uaword	0x1be4
	.uaword	.LLST33
	.uleb128 0x3b
	.uaword	.LVL92
	.uaword	0x3968
	.uleb128 0x3c
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
<<<<<<< Updated upstream
	.uleb128 0x43
	.uaword	.LVL102
	.uaword	0x4ad7
	.uaword	0x2983
	.uleb128 0x36
=======
	.uleb128 0x35
	.uaword	.LVL79
	.uaword	0x1dd0
	.uleb128 0x46
	.uaword	.LVL86
	.uaword	0x3909
	.uaword	0x2705
	.uleb128 0x3c
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
<<<<<<< Updated upstream
	.uleb128 0x35
	.uaword	.LVL103
	.uaword	0x4b62
	.uleb128 0x36
=======
	.uleb128 0x46
	.uaword	.LVL88
	.uaword	0x3994
	.uaword	0x271f
	.uleb128 0x3c
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL90
	.uaword	0x1e82
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"TerminateTask"
	.byte	0x3
	.uahalf	0x339
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB120
	.uaword	.LFE120
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x2b25
	.uleb128 0x1b
=======
	.uaword	0x2830
	.uleb128 0x1f
>>>>>>> Stashed changes
	.string	"ev"
	.byte	0x3
	.uahalf	0x33e
<<<<<<< Updated upstream
	.uaword	0xa2c
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x340
	.uaword	0x1ced
	.uleb128 0x26
=======
	.uaword	0xa19
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x340
	.uaword	0x1746
	.uleb128 0x43
>>>>>>> Stashed changes
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x348
<<<<<<< Updated upstream
	.uaword	0x1dcc
=======
	.uaword	0x1d78
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x6f
	.uleb128 0x43
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x34a
<<<<<<< Updated upstream
	.uaword	0x23fe
	.uaword	.LLST55
	.uleb128 0x31
	.uaword	.LBB915
	.uaword	.LBE915
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x383
	.uaword	0x28d
	.uleb128 0x32
	.uaword	0x19e2
	.uaword	.LBB916
	.uaword	.LBE916
	.byte	0x2
	.uahalf	0x388
	.uaword	0x2a4a
	.uleb128 0x37
	.uaword	0x19ff
	.uaword	.LLST56
	.uleb128 0x31
	.uaword	.LBB917
	.uaword	.LBE917
	.uleb128 0x30
	.uaword	0x1a0b
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB918
	.uaword	.LBE918
	.byte	0x3
	.uahalf	0x129
	.uleb128 0x2e
	.uaword	0x17a2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x19c9
	.uaword	.LBB920
	.uaword	.LBE920
	.byte	0x2
	.uahalf	0x38c
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB922
	.uaword	.LBE922
	.byte	0x2
	.uahalf	0x390
	.uaword	0x2af4
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB923
	.uaword	.LBE923
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB924
	.uaword	.LBE924
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST57
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB925
	.uaword	.LBE925
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x2ac6
	.uleb128 0x31
	.uaword	.LBB926
	.uaword	.LBE926
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB927
	.uaword	.LBE927
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST58
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB928
	.uaword	.LBE928
	.uleb128 0x3d
	.uaword	0x1841
	.byte	0x1
	.byte	0x5f
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB929
	.uaword	.LBE929
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST59
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x2686
	.uaword	.LBB931
	.uaword	.LBE931
	.byte	0x2
	.uahalf	0x393
	.uleb128 0x48
	.uaword	0x26be
	.byte	0
	.uleb128 0x37
	.uaword	0x26ad
	.uaword	.LLST60
	.uleb128 0x35
	.uaword	.LVL125
	.uaword	0x4b36
	.uleb128 0x36
=======
	.uaword	0x245e
	.byte	0x1
	.byte	0x6c
	.uleb128 0x29
	.uaword	.LBB542
	.uaword	.LBE542
	.uleb128 0x25
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x383
	.uaword	0x27a
	.uleb128 0x2b
	.uaword	0x1c15
	.uaword	.LBB543
	.uaword	.LBE543
	.byte	0x3
	.uahalf	0x388
	.uaword	0x27e4
	.uleb128 0x2f
	.uaword	0x1c32
	.uaword	.LLST34
	.uleb128 0x29
	.uaword	.LBB544
	.uaword	.LBE544
	.uleb128 0x2c
	.uaword	0x1c3e
	.uleb128 0x2e
	.uaword	0x17cc
	.uaword	.LBB545
	.uaword	.LBE545
	.byte	0x2
	.uahalf	0x129
	.uleb128 0x34
	.uaword	0x17e6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	0x1bfc
	.uaword	.LBB547
	.uaword	.LBE547
	.byte	0x3
	.uahalf	0x38c
	.uleb128 0x2b
	.uaword	0x1bac
	.uaword	.LBB549
	.uaword	.LBE549
	.byte	0x3
	.uahalf	0x393
	.uaword	0x2825
	.uleb128 0x32
	.uaword	0x1bd3
	.byte	0x1
	.byte	0x6c
	.uleb128 0x48
	.uaword	0x1be4
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL98
	.uaword	0x3968
	.uleb128 0x3c
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL97
	.uaword	0x1dd0
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Schedule"
	.byte	0x3
	.uahalf	0x3ac
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB121
	.uaword	.LFE121
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x2ce6
=======
	.uaword	0x28d1
>>>>>>> Stashed changes
	.uleb128 0x49
	.string	"ev"
	.byte	0x3
	.uahalf	0x3b1
	.uaword	0xa2c
	.byte	0
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x3b2
<<<<<<< Updated upstream
	.uaword	0x1ced
	.uleb128 0x41
=======
	.uaword	0x1746
	.uleb128 0x25
>>>>>>> Stashed changes
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x3b8
<<<<<<< Updated upstream
	.uaword	0x245e
	.uleb128 0x26
=======
	.uaword	0x24be
	.uleb128 0x43
>>>>>>> Stashed changes
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x3b9
<<<<<<< Updated upstream
	.uaword	0x23fe
=======
	.uaword	0x245e
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x6f
	.uleb128 0x4a
	.string	"p_tcb"
	.byte	0x3
	.uahalf	0x3ba
<<<<<<< Updated upstream
	.uaword	0x2ce6
=======
	.uaword	0x28d1
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x6c
	.uleb128 0x29
	.uaword	.LBB551
	.uaword	.LBE551
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x3ee
<<<<<<< Updated upstream
	.uaword	0x1ec0
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB934
	.uaword	.LBE934
	.byte	0x2
	.uahalf	0x3ee
	.uaword	0x2c3a
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB935
	.uaword	.LBE935
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB936
	.uaword	.LBE936
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST61
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB937
	.uaword	.LBE937
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x2c0a
	.uleb128 0x31
	.uaword	.LBB938
	.uaword	.LBE938
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB939
	.uaword	.LBE939
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST62
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB940
	.uaword	.LBE940
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST63
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB941
	.uaword	.LBE941
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1b1a
	.uaword	.LBB943
	.uaword	.LBE943
	.byte	0x2
	.uahalf	0x3f8
	.uaword	0x2cdb
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST65
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB944
	.uaword	.LBE944
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST65
	.uleb128 0x31
	.uaword	.LBB945
	.uaword	.LBE945
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST67
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB946
	.uaword	.LBE946
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x2cbe
	.uleb128 0x31
	.uaword	.LBB947
	.uaword	.LBE947
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB948
	.uaword	.LBE948
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB949
	.uaword	.LBE949
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST69
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL136
	.uaword	0x4b96
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x1105
	.uleb128 0x40
=======
	.uaword	0x1dcb
	.uaword	.LLST35
	.uleb128 0x35
	.uaword	.LVL102
	.uaword	0x1dd0
	.uleb128 0x35
	.uaword	.LVL105
	.uaword	0x39c8
	.uleb128 0x3b
	.uaword	.LVL106
	.uaword	0x1e82
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x10f2
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"GetResource"
	.byte	0x3
	.uahalf	0x411
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB122
	.uaword	.LFE122
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x2f66
=======
	.uaword	0x2a1d
>>>>>>> Stashed changes
	.uleb128 0x4b
	.string	"ResID"
	.byte	0x3
	.uahalf	0x413
<<<<<<< Updated upstream
	.uaword	0x796
	.uaword	.LLST70
	.uleb128 0x42
=======
	.uaword	0x783
	.uaword	.LLST36
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"ev"
	.byte	0x3
	.uahalf	0x416
<<<<<<< Updated upstream
	.uaword	0xa2c
	.uaword	.LLST71
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x417
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x419
	.uaword	0x1ced
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x41f
	.uaword	0x245e
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x421
	.uaword	0x23fe
	.byte	0x1
	.byte	0x64
	.uleb128 0x32
	.uaword	0x1bb8
	.uaword	.LBB951
	.uaword	.LBE951
	.byte	0x2
	.uahalf	0x43b
	.uaword	0x2d86
	.uleb128 0x37
	.uaword	0x1be7
	.uaword	.LLST72
	.uleb128 0x2e
	.uaword	0x1bdb
	.byte	0
	.uleb128 0x31
	.uaword	.LBB953
	.uaword	.LBE953
	.uleb128 0x3f
	.uaword	.LASF20
	.byte	0x2
	.uahalf	0x440
	.uaword	0x2f66
	.uaword	.LLST73
	.uleb128 0x3f
	.uaword	.LASF21
	.byte	0x2
	.uahalf	0x442
	.uaword	0x2f71
	.uaword	.LLST74
	.uleb128 0x3f
	.uaword	.LASF22
	.byte	0x2
	.uahalf	0x444
	.uaword	0x2ce6
	.uaword	.LLST75
	.uleb128 0x42
	.string	"reso_prio"
	.byte	0x2
	.uahalf	0x446
	.uaword	0x2f7c
	.uaword	.LLST76
	.uleb128 0x3f
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x448
	.uaword	0x2f7c
	.uaword	.LLST77
	.uleb128 0x3f
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x44a
	.uaword	0x28d
	.uaword	.LLST78
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB954
	.uaword	.LBE954
	.byte	0x2
	.uahalf	0x44a
	.uaword	0x2e91
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB955
	.uaword	.LBE955
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB956
	.uaword	.LBE956
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST79
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB957
	.uaword	.LBE957
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x2e61
	.uleb128 0x31
	.uaword	.LBB958
	.uaword	.LBE958
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB959
	.uaword	.LBE959
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB960
	.uaword	.LBE960
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST81
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB961
	.uaword	.LBE961
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1bf7
	.uaword	.LBB963
	.uaword	.LBE963
	.byte	0x2
	.uahalf	0x460
	.uaword	0x2ec7
	.uleb128 0x37
	.uaword	0x1c26
	.uaword	.LLST83
	.uleb128 0x37
	.uaword	0x1c1a
	.uaword	.LLST84
	.uleb128 0x31
	.uaword	.LBB964
	.uaword	.LBE964
	.uleb128 0x30
	.uaword	0x1c32
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1b1a
	.uaword	.LBB965
	.uaword	.LBE965
	.byte	0x2
	.uahalf	0x465
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST85
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB966
	.uaword	.LBE966
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST85
	.uleb128 0x31
	.uaword	.LBB967
	.uaword	.LBE967
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST87
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB968
	.uaword	.LBE968
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x2f47
	.uleb128 0x31
	.uaword	.LBB969
	.uaword	.LBE969
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB970
	.uaword	.LBE970
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST88
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB971
	.uaword	.LBE971
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST89
	.byte	0
=======
	.uaword	0xa19
	.uaword	.LLST37
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x417
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x419
	.uaword	0x1746
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x41f
	.uaword	0x24be
	.uleb128 0x43
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x421
	.uaword	0x245e
	.byte	0x1
	.byte	0x6e
	.uleb128 0x29
	.uaword	.LBB552
	.uaword	.LBE552
	.uleb128 0x41
	.uaword	.LASF20
	.byte	0x3
	.uahalf	0x440
	.uaword	0x2a1d
	.uaword	.LLST38
	.uleb128 0x41
	.uaword	.LASF21
	.byte	0x3
	.uahalf	0x442
	.uaword	0x2a28
	.uaword	.LLST39
	.uleb128 0x41
	.uaword	.LASF22
	.byte	0x3
	.uahalf	0x444
	.uaword	0x28d1
	.uaword	.LLST40
	.uleb128 0x45
	.string	"reso_prio"
	.byte	0x3
	.uahalf	0x446
	.uaword	0x2a33
	.uaword	.LLST41
	.uleb128 0x41
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x448
	.uaword	0x2a33
	.uaword	.LLST42
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x44a
	.uaword	0x27a
	.uaword	.LLST43
	.uleb128 0x4c
	.uaword	0x1c9d
	.uaword	.LBB553
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x3
	.uahalf	0x460
	.uaword	0x2a09
	.uleb128 0x2f
	.uaword	0x1ccc
	.uaword	.LLST44
	.uleb128 0x2f
	.uaword	0x1cc0
	.uaword	.LLST45
	.uleb128 0x47
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x2a
	.uaword	0x1cd8
	.uaword	.LLST46
	.uleb128 0x2e
	.uaword	0x17f3
	.uaword	.LBB555
	.uaword	.LBE555
	.byte	0x2
	.uahalf	0x14d
	.uleb128 0x34
	.uaword	0x181b
>>>>>>> Stashed changes
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL113
	.uaword	0x1dd0
	.uleb128 0x35
	.uaword	.LVL122
	.uaword	0x1e82
	.byte	0
	.byte	0
	.uleb128 0x11
<<<<<<< Updated upstream
	.uaword	0x2f6b
=======
	.uaword	0x2a22
>>>>>>> Stashed changes
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1051
	.uleb128 0x11
<<<<<<< Updated upstream
	.uaword	0x2f76
=======
	.uaword	0x2a2d
>>>>>>> Stashed changes
	.uleb128 0xd
	.byte	0x4
	.uaword	0x103a
	.uleb128 0x11
<<<<<<< Updated upstream
	.uaword	0x52a
	.uleb128 0x40
=======
	.uaword	0x517
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"ReleaseResource"
	.byte	0x3
	.uahalf	0x480
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB123
	.uaword	.LFE123
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x3259
=======
	.uaword	0x2bba
>>>>>>> Stashed changes
	.uleb128 0x4b
	.string	"ResID"
	.byte	0x3
	.uahalf	0x482
<<<<<<< Updated upstream
	.uaword	0x796
	.uaword	.LLST90
	.uleb128 0x42
=======
	.uaword	0x783
	.uaword	.LLST47
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"ev"
	.byte	0x3
	.uahalf	0x485
<<<<<<< Updated upstream
	.uaword	0xa2c
	.uaword	.LLST91
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x486
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x487
	.uaword	0x1ced
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x48d
	.uaword	0x245e
	.uleb128 0x3f
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x48e
	.uaword	0x23fe
	.uaword	.LLST92
	.uleb128 0x32
	.uaword	0x1bb8
	.uaword	.LBB973
	.uaword	.LBE973
	.byte	0x2
	.uahalf	0x4a7
	.uaword	0x3022
	.uleb128 0x37
	.uaword	0x1be7
	.uaword	.LLST93
	.uleb128 0x2e
	.uaword	0x1bdb
	.byte	0
	.uleb128 0x31
	.uaword	.LBB975
	.uaword	.LBE975
	.uleb128 0x3f
	.uaword	.LASF22
	.byte	0x2
	.uahalf	0x4ac
	.uaword	0x2ce6
	.uaword	.LLST94
	.uleb128 0x41
	.uaword	.LASF20
	.byte	0x2
	.uahalf	0x4ae
	.uaword	0x2f66
	.uleb128 0x3f
	.uaword	.LASF21
	.byte	0x2
	.uahalf	0x4b0
	.uaword	0x2f71
	.uaword	.LLST95
	.uleb128 0x31
	.uaword	.LBB976
	.uaword	.LBE976
	.uleb128 0x3f
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x4bf
	.uaword	0x28d
	.uaword	.LLST96
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB977
	.uaword	.LBE977
	.byte	0x2
	.uahalf	0x4bf
	.uaword	0x310c
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB978
	.uaword	.LBE978
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB979
	.uaword	.LBE979
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST97
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB980
	.uaword	.LBE980
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x30dc
	.uleb128 0x31
	.uaword	.LBB981
	.uaword	.LBE981
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB982
	.uaword	.LBE982
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST98
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB983
	.uaword	.LBE983
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST99
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB984
	.uaword	.LBE984
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST100
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LBB986
	.uaword	.LBE986
	.uaword	0x315c
	.uleb128 0x3f
=======
	.uaword	0xa19
	.uaword	.LLST48
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x486
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x487
	.uaword	0x1746
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x48d
	.uaword	0x24be
	.uleb128 0x43
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x48e
	.uaword	0x245e
	.byte	0x1
	.byte	0x6e
	.uleb128 0x29
	.uaword	.LBB559
	.uaword	.LBE559
	.uleb128 0x41
	.uaword	.LASF22
	.byte	0x3
	.uahalf	0x4ac
	.uaword	0x28d1
	.uaword	.LLST49
	.uleb128 0x25
	.uaword	.LASF20
	.byte	0x3
	.uahalf	0x4ae
	.uaword	0x2a1d
	.uleb128 0x41
	.uaword	.LASF21
	.byte	0x3
	.uahalf	0x4b0
	.uaword	0x2a28
	.uaword	.LLST50
	.uleb128 0x29
	.uaword	.LBB560
	.uaword	.LBE560
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x4bf
	.uaword	0x27a
	.uaword	.LLST51
	.uleb128 0x39
	.uaword	.LBB561
	.uaword	.LBE561
	.uaword	0x2b20
	.uleb128 0x41
>>>>>>> Stashed changes
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x4c6
<<<<<<< Updated upstream
	.uaword	0x2f7c
	.uaword	.LLST101
	.uleb128 0x38
	.uaword	0x1bf7
	.uaword	.LBB987
	.uaword	.LBE987
	.byte	0x2
	.uahalf	0x4c9
	.uleb128 0x37
	.uaword	0x1c26
	.uaword	.LLST102
	.uleb128 0x37
	.uaword	0x1c1a
	.uaword	.LLST103
	.uleb128 0x31
	.uaword	.LBB988
	.uaword	.LBE988
	.uleb128 0x30
	.uaword	0x1c32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LBB989
	.uaword	.LBE989
	.uaword	0x31ac
	.uleb128 0x3f
=======
	.uaword	0x2a33
	.uaword	.LLST52
	.byte	0
	.uleb128 0x39
	.uaword	.LBB562
	.uaword	.LBE562
	.uaword	0x2b8a
	.uleb128 0x41
>>>>>>> Stashed changes
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x4cc
<<<<<<< Updated upstream
	.uaword	0x2f7c
	.uaword	.LLST104
	.uleb128 0x38
	.uaword	0x1bf7
	.uaword	.LBB990
	.uaword	.LBE990
	.byte	0x2
	.uahalf	0x4cf
	.uleb128 0x37
	.uaword	0x1c26
	.uaword	.LLST105
	.uleb128 0x37
	.uaword	0x1c1a
	.uaword	.LLST106
	.uleb128 0x31
	.uaword	.LBB991
	.uaword	.LBE991
	.uleb128 0x30
	.uaword	0x1c32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1b1a
	.uaword	.LBB992
	.uaword	.LBE992
	.byte	0x2
	.uahalf	0x4d7
	.uaword	0x324d
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST107
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB993
	.uaword	.LBE993
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST107
	.uleb128 0x31
	.uaword	.LBB994
	.uaword	.LBE994
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST109
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB995
	.uaword	.LBE995
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x3230
	.uleb128 0x31
	.uaword	.LBB996
	.uaword	.LBE996
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB997
	.uaword	.LBE997
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST110
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB998
	.uaword	.LBE998
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST111
=======
	.uaword	0x2a33
	.uaword	.LLST53
	.uleb128 0x4d
	.uaword	0x1c9d
	.uaword	.LBB563
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x3
	.uahalf	0x4cf
	.uleb128 0x2f
	.uaword	0x1ccc
	.uaword	.LLST54
	.uleb128 0x2f
	.uaword	0x1cc0
	.uaword	.LLST55
	.uleb128 0x47
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x2a
	.uaword	0x1cd8
	.uaword	.LLST56
	.uleb128 0x2e
	.uaword	0x17f3
	.uaword	.LBB565
	.uaword	.LBE565
	.byte	0x2
	.uahalf	0x14d
	.uleb128 0x2f
	.uaword	0x181b
	.uaword	.LLST57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL129
	.uaword	0x1dd0
	.uleb128 0x46
	.uaword	.LVL140
	.uaword	0x39c8
	.uaword	0x2ba7
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL141
	.uaword	0x1e82
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
>>>>>>> Stashed changes
	.byte	0
	.byte	0
	.byte	0
	.byte	0
<<<<<<< Updated upstream
	.uleb128 0x27
	.uaword	.LVL199
	.uaword	0x4b96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
=======
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"ShutdownOS"
	.byte	0x3
	.uahalf	0x4ef
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB124
	.uaword	.LFE124
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x3416
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x2
	.uahalf	0x4f1
	.uaword	0xa2c
	.uaword	.LLST112
=======
	.uaword	0x2c59
	.uleb128 0x44
	.uaword	.LASF15
	.byte	0x3
	.uahalf	0x4f1
	.uaword	0xa19
	.uaword	.LLST58
>>>>>>> Stashed changes
	.uleb128 0x49
	.string	"ev"
	.byte	0x3
	.uahalf	0x4f4
	.uaword	0xa2c
	.byte	0x7
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x4f5
	.uaword	0x1746
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x4fb
	.uaword	0x24be
	.uleb128 0x41
	.uaword	.LASF13
<<<<<<< Updated upstream
	.byte	0x2
	.uahalf	0x4f5
	.uaword	0x1ced
	.uleb128 0x26
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x4fb
	.uaword	0x245e
	.byte	0x1
	.byte	0x6f
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x4fc
	.uaword	0x1ec0
	.uleb128 0x3f
=======
	.byte	0x3
	.uahalf	0x4fc
	.uaword	0x1dcb
	.uaword	.LLST59
	.uleb128 0x41
>>>>>>> Stashed changes
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x4fd
<<<<<<< Updated upstream
	.uaword	0x1dd1
	.uaword	.LLST113
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB1000
	.uaword	.LBE1000
	.byte	0x2
	.uahalf	0x4fc
	.uaword	0x336b
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB1001
	.uaword	.LBE1001
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB1002
	.uaword	.LBE1002
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST114
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1003
	.uaword	.LBE1003
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x333b
	.uleb128 0x31
	.uaword	.LBB1004
	.uaword	.LBE1004
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1005
	.uaword	.LBE1005
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST115
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1006
	.uaword	.LBE1006
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST116
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1007
	.uaword	.LBE1007
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1b1a
	.uaword	.LBB1009
	.uaword	.LBE1009
	.byte	0x2
	.uahalf	0x52c
	.uaword	0x340c
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST118
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB1010
	.uaword	.LBE1010
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST118
	.uleb128 0x31
	.uaword	.LBB1011
	.uaword	.LBE1011
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST120
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1012
	.uaword	.LBE1012
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x33ef
	.uleb128 0x31
	.uaword	.LBB1013
	.uaword	.LBE1013
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1014
	.uaword	.LBE1014
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST121
=======
	.uaword	0x1d7d
	.uaword	.LLST60
	.uleb128 0x35
	.uaword	.LVL144
	.uaword	0x1dd0
	.uleb128 0x46
	.uaword	.LVL147
	.uaword	0x1f39
	.uaword	0x2c4f
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x35
	.uaword	.LVL148
	.uaword	0x1e82
	.byte	0
<<<<<<< Updated upstream
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1015
	.uaword	.LBE1015
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST122
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL219
	.uaword	0x1d61
	.byte	0
	.uleb128 0x40
=======
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"GetTaskID"
	.byte	0x3
	.uahalf	0x532
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB125
	.uaword	.LFE125
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x34dd
	.uleb128 0x4c
=======
	.uaword	0x2d1c
	.uleb128 0x31
>>>>>>> Stashed changes
	.uaword	.LASF18
	.byte	0x3
	.uahalf	0x534
	.uaword	0x511
	.byte	0x1
	.byte	0x64
	.uleb128 0x45
	.string	"ev"
	.byte	0x3
	.uahalf	0x537
<<<<<<< Updated upstream
	.uaword	0xa2c
	.uaword	.LLST123
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x539
	.uaword	0x1ced
	.uleb128 0x3f
=======
	.uaword	0xa19
	.uaword	.LLST61
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x539
	.uaword	0x1746
	.uleb128 0x41
>>>>>>> Stashed changes
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x53f
<<<<<<< Updated upstream
	.uaword	0x245e
	.uaword	.LLST124
	.uleb128 0x31
	.uaword	.LBB1017
	.uaword	.LBE1017
	.uleb128 0x42
=======
	.uaword	0x24be
	.uaword	.LLST62
	.uleb128 0x29
	.uaword	.LBB569
	.uaword	.LBE569
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"tid"
	.byte	0x3
	.uahalf	0x561
<<<<<<< Updated upstream
	.uaword	0x4f2
	.uaword	.LLST125
	.uleb128 0x3f
=======
	.uaword	0x4df
	.uaword	.LLST63
	.uleb128 0x41
>>>>>>> Stashed changes
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x563
<<<<<<< Updated upstream
	.uaword	0x23fe
	.uaword	.LLST126
	.uleb128 0x31
	.uaword	.LBB1018
	.uaword	.LBE1018
	.uleb128 0x42
=======
	.uaword	0x245e
	.uaword	.LLST64
	.uleb128 0x29
	.uaword	.LBB570
	.uaword	.LBE570
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"p_sn"
	.byte	0x3
	.uahalf	0x574
<<<<<<< Updated upstream
	.uaword	0x34dd
	.uaword	.LLST127
	.uleb128 0x31
	.uaword	.LBB1019
	.uaword	.LBE1019
	.uleb128 0x42
=======
	.uaword	0x2d1c
	.uaword	.LLST65
	.uleb128 0x47
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"p_searched_tdb"
	.byte	0x3
	.uahalf	0x578
<<<<<<< Updated upstream
	.uaword	0x23fe
	.uaword	.LLST128
=======
	.uaword	0x245e
	.uaword	.LLST66
>>>>>>> Stashed changes
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
<<<<<<< Updated upstream
	.uaword	0x34e3
	.uleb128 0x11
	.uaword	0xedc
	.uleb128 0x40
=======
	.uaword	0x2d22
	.uleb128 0x11
	.uaword	0xec9
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"GetTaskState"
	.byte	0x3
	.uahalf	0x59a
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB126
	.uaword	.LFE126
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x35ab
	.uleb128 0x4c
=======
	.uaword	0x2dc7
	.uleb128 0x31
>>>>>>> Stashed changes
	.uaword	.LASF18
	.byte	0x3
	.uahalf	0x59c
	.uaword	0x4f2
	.byte	0x1
	.byte	0x54
	.uleb128 0x4e
	.string	"State"
	.byte	0x3
	.uahalf	0x59d
	.uaword	0x6b8
	.byte	0x1
	.byte	0x64
	.uleb128 0x4a
	.string	"ev"
	.byte	0x3
	.uahalf	0x5a0
	.uaword	0xa2c
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x5a1
<<<<<<< Updated upstream
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x5a3
	.uaword	0x1ced
	.uleb128 0x41
=======
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x5a3
	.uaword	0x1746
	.uleb128 0x25
>>>>>>> Stashed changes
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x5a9
<<<<<<< Updated upstream
	.uaword	0x245e
	.uleb128 0x32
	.uaword	0x1b63
	.uaword	.LBB1020
	.uaword	.LBE1020
	.byte	0x2
	.uahalf	0x5ca
	.uaword	0x3580
	.uleb128 0x37
	.uaword	0x1b8f
	.uaword	.LLST129
	.uleb128 0x2e
	.uaword	0x1b83
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1022
	.uaword	.LBE1022
	.uleb128 0x41
=======
	.uaword	0x24be
	.uleb128 0x29
	.uaword	.LBB573
	.uaword	.LBE573
	.uleb128 0x25
>>>>>>> Stashed changes
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x5cf
<<<<<<< Updated upstream
	.uaword	0x23fe
	.uleb128 0x1b
=======
	.uaword	0x245e
	.uleb128 0x1f
>>>>>>> Stashed changes
	.string	"local_state"
	.byte	0x3
	.uahalf	0x5d2
<<<<<<< Updated upstream
	.uaword	0x35ab
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x689
	.uleb128 0x40
=======
	.uaword	0x2dc7
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x676
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"SetRelAlarm"
	.byte	0x3
	.uahalf	0x5fd
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB127
	.uaword	.LFE127
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x37f7
	.uleb128 0x25
=======
	.uaword	0x2ee0
	.uleb128 0x44
>>>>>>> Stashed changes
	.uaword	.LASF23
	.byte	0x3
	.uahalf	0x5ff
<<<<<<< Updated upstream
	.uaword	0x784
	.uaword	.LLST130
=======
	.uaword	0x771
	.uaword	.LLST67
>>>>>>> Stashed changes
	.uleb128 0x4b
	.string	"increment"
	.byte	0x3
	.uahalf	0x600
<<<<<<< Updated upstream
	.uaword	0x6eb
	.uaword	.LLST131
=======
	.uaword	0x6d8
	.uaword	.LLST68
>>>>>>> Stashed changes
	.uleb128 0x4b
	.string	"cycle"
	.byte	0x3
	.uahalf	0x601
<<<<<<< Updated upstream
	.uaword	0x6eb
	.uaword	.LLST132
	.uleb128 0x4a
=======
	.uaword	0x6d8
	.uaword	.LLST69
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"ev"
	.byte	0x3
	.uahalf	0x604
<<<<<<< Updated upstream
	.uaword	0xa2c
	.byte	0x1
	.byte	0x52
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x606
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x608
	.uaword	0x1ced
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x60e
	.uaword	0x245e
	.uleb128 0x32
	.uaword	0x1c45
	.uaword	.LBB1023
	.uaword	.LBE1023
	.byte	0x2
	.uahalf	0x627
	.uaword	0x3661
	.uleb128 0x37
	.uaword	0x1c76
	.uaword	.LLST133
	.uleb128 0x2e
	.uaword	0x1c6a
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1025
	.uaword	.LBE1025
	.uleb128 0x3f
	.uaword	.LASF17
	.byte	0x2
	.uahalf	0x62c
	.uaword	0x37f7
	.uaword	.LLST134
	.uleb128 0x3f
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x62e
	.uaword	0x37fc
	.uaword	.LLST135
	.uleb128 0x31
	.uaword	.LBB1026
	.uaword	.LBE1026
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x63d
	.uaword	0x1ec0
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB1027
	.uaword	.LBE1027
	.byte	0x2
	.uahalf	0x63d
	.uaword	0x373b
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB1028
	.uaword	.LBE1028
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB1029
	.uaword	.LBE1029
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST136
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1030
	.uaword	.LBE1030
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x370b
	.uleb128 0x31
	.uaword	.LBB1031
	.uaword	.LBE1031
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1032
	.uaword	.LBE1032
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST137
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1033
	.uaword	.LBE1033
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST138
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1034
	.uaword	.LBE1034
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST139
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1b1a
	.uaword	.LBB1036
	.uaword	.LBE1036
	.byte	0x2
	.uahalf	0x641
	.uaword	0x37dc
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST140
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB1037
	.uaword	.LBE1037
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST140
	.uleb128 0x31
	.uaword	.LBB1038
	.uaword	.LBE1038
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST142
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1039
	.uaword	.LBE1039
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x37bf
	.uleb128 0x31
	.uaword	.LBB1040
	.uaword	.LBE1040
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1041
	.uaword	.LBE1041
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST143
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1042
	.uaword	.LBE1042
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST144
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL268
	.uaword	0x4bcf
	.uleb128 0x36
=======
	.uaword	0xa19
	.uaword	.LLST70
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x606
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x608
	.uaword	0x1746
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x60e
	.uaword	0x24be
	.uleb128 0x29
	.uaword	.LBB574
	.uaword	.LBE574
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x3
	.uahalf	0x62c
	.uaword	0x2ee0
	.uaword	.LLST71
	.uleb128 0x41
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x62e
	.uaword	0x2ee5
	.uaword	.LLST72
	.uleb128 0x29
	.uaword	.LBB575
	.uaword	.LBE575
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x63d
	.uaword	0x1dcb
	.uaword	.LLST73
	.uleb128 0x35
	.uaword	.LVL171
	.uaword	0x1dd0
	.uleb128 0x46
	.uaword	.LVL173
	.uaword	0x3a01
	.uaword	0x2ecd
	.uleb128 0x3c
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL175
	.uaword	0x1e82
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
<<<<<<< Updated upstream
	.uaword	0x1cc3
	.uleb128 0x11
	.uaword	0x12de
	.uleb128 0x40
=======
	.uaword	0x1d26
	.uleb128 0x11
	.uaword	0x12cb
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"SetAbsAlarm"
	.byte	0x3
	.uahalf	0x658
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB128
	.uaword	.LFE128
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x3a44
	.uleb128 0x25
=======
	.uaword	0x2ffa
	.uleb128 0x44
>>>>>>> Stashed changes
	.uaword	.LASF23
	.byte	0x3
	.uahalf	0x65a
<<<<<<< Updated upstream
	.uaword	0x784
	.uaword	.LLST145
=======
	.uaword	0x771
	.uaword	.LLST74
>>>>>>> Stashed changes
	.uleb128 0x4b
	.string	"start"
	.byte	0x3
	.uahalf	0x65b
<<<<<<< Updated upstream
	.uaword	0x6eb
	.uaword	.LLST146
=======
	.uaword	0x6d8
	.uaword	.LLST75
>>>>>>> Stashed changes
	.uleb128 0x4b
	.string	"cycle"
	.byte	0x3
	.uahalf	0x65c
<<<<<<< Updated upstream
	.uaword	0x6eb
	.uaword	.LLST147
	.uleb128 0x4a
=======
	.uaword	0x6d8
	.uaword	.LLST76
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"ev"
	.byte	0x3
	.uahalf	0x65f
<<<<<<< Updated upstream
	.uaword	0xa2c
	.byte	0x1
	.byte	0x52
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x661
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x663
	.uaword	0x1ced
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x669
	.uaword	0x245e
	.uleb128 0x32
	.uaword	0x1c45
	.uaword	.LBB1044
	.uaword	.LBE1044
	.byte	0x2
	.uahalf	0x682
	.uaword	0x38ae
	.uleb128 0x37
	.uaword	0x1c76
	.uaword	.LLST148
	.uleb128 0x2e
	.uaword	0x1c6a
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1046
	.uaword	.LBE1046
	.uleb128 0x3f
	.uaword	.LASF17
	.byte	0x2
	.uahalf	0x687
	.uaword	0x37f7
	.uaword	.LLST149
	.uleb128 0x3f
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x689
	.uaword	0x37fc
	.uaword	.LLST150
	.uleb128 0x31
	.uaword	.LBB1047
	.uaword	.LBE1047
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x697
	.uaword	0x1ec0
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB1048
	.uaword	.LBE1048
	.byte	0x2
	.uahalf	0x697
	.uaword	0x3988
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB1049
	.uaword	.LBE1049
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB1050
	.uaword	.LBE1050
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST151
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1051
	.uaword	.LBE1051
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x3958
	.uleb128 0x31
	.uaword	.LBB1052
	.uaword	.LBE1052
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1053
	.uaword	.LBE1053
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST152
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1054
	.uaword	.LBE1054
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST153
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1055
	.uaword	.LBE1055
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST154
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1b1a
	.uaword	.LBB1057
	.uaword	.LBE1057
	.byte	0x2
	.uahalf	0x69b
	.uaword	0x3a29
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST155
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB1058
	.uaword	.LBE1058
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST155
	.uleb128 0x31
	.uaword	.LBB1059
	.uaword	.LBE1059
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST157
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1060
	.uaword	.LBE1060
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x3a0c
	.uleb128 0x31
	.uaword	.LBB1061
	.uaword	.LBE1061
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1062
	.uaword	.LBE1062
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST158
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1063
	.uaword	.LBE1063
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST159
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL287
	.uaword	0x4c06
	.uleb128 0x36
=======
	.uaword	0xa19
	.uaword	.LLST77
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x661
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x663
	.uaword	0x1746
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x669
	.uaword	0x24be
	.uleb128 0x29
	.uaword	.LBB576
	.uaword	.LBE576
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x3
	.uahalf	0x687
	.uaword	0x2ee0
	.uaword	.LLST78
	.uleb128 0x41
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x689
	.uaword	0x2ee5
	.uaword	.LLST79
	.uleb128 0x29
	.uaword	.LBB577
	.uaword	.LBE577
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x697
	.uaword	0x1dcb
	.uaword	.LLST80
	.uleb128 0x35
	.uaword	.LVL179
	.uaword	0x1dd0
	.uleb128 0x46
	.uaword	.LVL181
	.uaword	0x3a38
	.uaword	0x2fe7
	.uleb128 0x3c
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL183
	.uaword	0x1e82
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"CancelAlarm"
	.byte	0x3
	.uahalf	0x6b2
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB129
	.uaword	.LFE129
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x3c3a
	.uleb128 0x25
=======
	.uaword	0x30ba
	.uleb128 0x44
>>>>>>> Stashed changes
	.uaword	.LASF23
	.byte	0x3
	.uahalf	0x6b4
<<<<<<< Updated upstream
	.uaword	0x784
	.uaword	.LLST160
	.uleb128 0x4a
=======
	.uaword	0x771
	.uaword	.LLST81
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"ev"
	.byte	0x3
	.uahalf	0x6b7
<<<<<<< Updated upstream
	.uaword	0xa2c
	.byte	0x1
	.byte	0x52
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x6b9
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x6bb
	.uaword	0x1ced
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x6c1
	.uaword	0x245e
	.uleb128 0x32
	.uaword	0x1c45
	.uaword	.LBB1065
	.uaword	.LBE1065
	.byte	0x2
	.uahalf	0x6da
	.uaword	0x3acd
	.uleb128 0x37
	.uaword	0x1c76
	.uaword	.LLST161
	.uleb128 0x2e
	.uaword	0x1c6a
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1067
	.uaword	.LBE1067
	.uleb128 0x3f
	.uaword	.LASF17
	.byte	0x2
	.uahalf	0x6de
	.uaword	0x37f7
	.uaword	.LLST162
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x6e0
	.uaword	0x1ec0
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB1068
	.uaword	.LBE1068
	.byte	0x2
	.uahalf	0x6e0
	.uaword	0x3b8e
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB1069
	.uaword	.LBE1069
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB1070
	.uaword	.LBE1070
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST163
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1071
	.uaword	.LBE1071
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x3b5e
	.uleb128 0x31
	.uaword	.LBB1072
	.uaword	.LBE1072
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1073
	.uaword	.LBE1073
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST164
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1074
	.uaword	.LBE1074
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST165
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1075
	.uaword	.LBE1075
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST166
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1b1a
	.uaword	.LBB1077
	.uaword	.LBE1077
	.byte	0x2
	.uahalf	0x6e4
	.uaword	0x3c2f
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST167
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB1078
	.uaword	.LBE1078
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST167
	.uleb128 0x31
	.uaword	.LBB1079
	.uaword	.LBE1079
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST169
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1080
	.uaword	.LBE1080
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x3c12
	.uleb128 0x31
	.uaword	.LBB1081
	.uaword	.LBE1081
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1082
	.uaword	.LBE1082
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST170
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1083
	.uaword	.LBE1083
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST171
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL303
	.uaword	0x4c3d
	.byte	0
	.byte	0
	.uleb128 0x40
=======
	.uaword	0xa19
	.uaword	.LLST82
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x6b9
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x6bb
	.uaword	0x1746
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x6c1
	.uaword	0x24be
	.uleb128 0x29
	.uaword	.LBB578
	.uaword	.LBE578
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x3
	.uahalf	0x6de
	.uaword	0x2ee0
	.uaword	.LLST83
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x6e0
	.uaword	0x1dcb
	.uaword	.LLST84
	.uleb128 0x35
	.uaword	.LVL186
	.uaword	0x1dd0
	.uleb128 0x46
	.uaword	.LVL188
	.uaword	0x3a6f
	.uaword	0x30a8
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL190
	.uaword	0x1e82
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"GetAlarm"
	.byte	0x3
	.uahalf	0x6f8
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB130
	.uaword	.LFE130
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x3e4c
	.uleb128 0x25
=======
	.uaword	0x318e
	.uleb128 0x44
>>>>>>> Stashed changes
	.uaword	.LASF23
	.byte	0x3
	.uahalf	0x6fa
<<<<<<< Updated upstream
	.uaword	0x784
	.uaword	.LLST172
=======
	.uaword	0x771
	.uaword	.LLST85
>>>>>>> Stashed changes
	.uleb128 0x4b
	.string	"Tick"
	.byte	0x3
	.uahalf	0x6fb
<<<<<<< Updated upstream
	.uaword	0x6fc
	.uaword	.LLST173
	.uleb128 0x4a
=======
	.uaword	0x6e9
	.uaword	.LLST86
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"ev"
	.byte	0x3
	.uahalf	0x6fe
<<<<<<< Updated upstream
	.uaword	0xa2c
	.byte	0x1
	.byte	0x52
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x700
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x702
	.uaword	0x1ced
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x708
	.uaword	0x245e
	.uleb128 0x32
	.uaword	0x1c45
	.uaword	.LBB1085
	.uaword	.LBE1085
	.byte	0x2
	.uahalf	0x721
	.uaword	0x3cd1
	.uleb128 0x37
	.uaword	0x1c76
	.uaword	.LLST174
	.uleb128 0x2e
	.uaword	0x1c6a
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1087
	.uaword	.LBE1087
	.uleb128 0x3f
	.uaword	.LASF17
	.byte	0x2
	.uahalf	0x729
	.uaword	0x37f7
	.uaword	.LLST175
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x72b
	.uaword	0x1ec0
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB1088
	.uaword	.LBE1088
	.byte	0x2
	.uahalf	0x72b
	.uaword	0x3d92
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB1089
	.uaword	.LBE1089
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB1090
	.uaword	.LBE1090
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST176
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1091
	.uaword	.LBE1091
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x3d62
	.uleb128 0x31
	.uaword	.LBB1092
	.uaword	.LBE1092
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1093
	.uaword	.LBE1093
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST177
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1094
	.uaword	.LBE1094
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST178
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1095
	.uaword	.LBE1095
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST179
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1b1a
	.uaword	.LBB1097
	.uaword	.LBE1097
	.byte	0x2
	.uahalf	0x72f
	.uaword	0x3e33
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST180
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB1098
	.uaword	.LBE1098
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST180
	.uleb128 0x31
	.uaword	.LBB1099
	.uaword	.LBE1099
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST182
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1100
	.uaword	.LBE1100
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x3e16
	.uleb128 0x31
	.uaword	.LBB1101
	.uaword	.LBE1101
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1102
	.uaword	.LBE1102
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST183
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1103
	.uaword	.LBE1103
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST184
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL320
	.uaword	0x4c64
	.uleb128 0x36
=======
	.uaword	0xa19
	.uaword	.LLST87
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x700
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x702
	.uaword	0x1746
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x708
	.uaword	0x24be
	.uleb128 0x29
	.uaword	.LBB579
	.uaword	.LBE579
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x3
	.uahalf	0x729
	.uaword	0x2ee0
	.uaword	.LLST88
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x72b
	.uaword	0x1dcb
	.uaword	.LLST89
	.uleb128 0x35
	.uaword	.LVL193
	.uaword	0x1dd0
	.uleb128 0x46
	.uaword	.LVL195
	.uaword	0x3a96
	.uaword	0x317c
	.uleb128 0x3c
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL197
	.uaword	0x1e82
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"GetAlarmBase"
	.byte	0x3
	.uahalf	0x744
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB131
	.uaword	.LFE131
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x3f1f
	.uleb128 0x4c
=======
	.uaword	0x323c
	.uleb128 0x31
>>>>>>> Stashed changes
	.uaword	.LASF23
	.byte	0x3
	.uahalf	0x746
	.uaword	0x784
	.byte	0x1
	.byte	0x54
	.uleb128 0x4e
	.string	"Info"
	.byte	0x3
	.uahalf	0x747
	.uaword	0x765
	.byte	0x1
	.byte	0x64
	.uleb128 0x45
	.string	"ev"
	.byte	0x3
	.uahalf	0x74a
<<<<<<< Updated upstream
	.uaword	0xa2c
	.uaword	.LLST185
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x74c
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x74e
	.uaword	0x1ced
	.uleb128 0x41
=======
	.uaword	0xa19
	.uaword	.LLST90
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x74c
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x74e
	.uaword	0x1746
	.uleb128 0x25
>>>>>>> Stashed changes
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x754
<<<<<<< Updated upstream
	.uaword	0x245e
	.uleb128 0x32
	.uaword	0x1c45
	.uaword	.LBB1105
	.uaword	.LBE1105
	.byte	0x2
	.uahalf	0x76d
	.uaword	0x3ee3
	.uleb128 0x2d
	.uaword	0x1c76
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	0x1c6a
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1107
	.uaword	.LBE1107
	.uleb128 0x41
	.uaword	.LASF17
	.byte	0x2
	.uahalf	0x775
	.uaword	0x37f7
	.uleb128 0x1b
=======
	.uaword	0x24be
	.uleb128 0x29
	.uaword	.LBB580
	.uaword	.LBE580
	.uleb128 0x25
	.uaword	.LASF16
	.byte	0x3
	.uahalf	0x775
	.uaword	0x2ee0
	.uleb128 0x1f
>>>>>>> Stashed changes
	.string	"p_trigger_db"
	.byte	0x3
	.uahalf	0x777
<<<<<<< Updated upstream
	.uaword	0x3f1f
	.uleb128 0x3f
=======
	.uaword	0x323c
	.uleb128 0x25
>>>>>>> Stashed changes
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x779
<<<<<<< Updated upstream
	.uaword	0x37fc
	.uaword	.LLST186
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x1cbd
	.uleb128 0x40
=======
	.uaword	0x2ee5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x1d20
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"WaitEvent"
	.byte	0x3
	.uahalf	0x795
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB132
	.uaword	.LFE132
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x410c
=======
	.uaword	0x3319
>>>>>>> Stashed changes
	.uleb128 0x4b
	.string	"Mask"
	.byte	0x3
	.uahalf	0x797
<<<<<<< Updated upstream
	.uaword	0x7ab
	.uaword	.LLST187
=======
	.uaword	0x798
	.uaword	.LLST91
>>>>>>> Stashed changes
	.uleb128 0x49
	.string	"ev"
	.byte	0x3
	.uahalf	0x79a
	.uaword	0xa2c
	.byte	0
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x79c
<<<<<<< Updated upstream
	.uaword	0x1ced
	.uleb128 0x26
=======
	.uaword	0x1746
	.uleb128 0x43
>>>>>>> Stashed changes
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x79e
<<<<<<< Updated upstream
	.uaword	0x1dcc
	.byte	0x1
	.byte	0x6c
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x7a0
	.uaword	0x23fe
=======
	.uaword	0x1d78
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x6d
	.uleb128 0x43
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x7a0
	.uaword	0x245e
	.byte	0x1
	.byte	0x6c
	.uleb128 0x43
	.uaword	.LASF22
	.byte	0x3
	.uahalf	0x7a2
<<<<<<< Updated upstream
	.uaword	0x2ce6
=======
	.uaword	0x28d1
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x6f
	.uleb128 0x29
	.uaword	.LBB581
	.uaword	.LBE581
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x7d4
<<<<<<< Updated upstream
	.uaword	0x1ec0
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB1109
	.uaword	.LBE1109
	.byte	0x2
	.uahalf	0x7d4
	.uaword	0x4049
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB1110
	.uaword	.LBE1110
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB1111
	.uaword	.LBE1111
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST188
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1112
	.uaword	.LBE1112
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x4019
	.uleb128 0x31
	.uaword	.LBB1113
	.uaword	.LBE1113
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1114
	.uaword	.LBE1114
	.uleb128 0x3d
	.uaword	0x1760
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1115
	.uaword	.LBE1115
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST189
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1116
	.uaword	.LBE1116
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST190
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1b1a
	.uaword	.LBB1118
	.uaword	.LBE1118
	.byte	0x2
	.uahalf	0x7ee
	.uaword	0x40e6
	.uleb128 0x2d
	.uaword	0x1b37
	.byte	0x1
	.byte	0x58
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB1119
	.uaword	.LBE1119
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x2d
	.uaword	0x187c
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.uaword	.LBB1120
	.uaword	.LBE1120
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST191
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1121
	.uaword	.LBE1121
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x40c9
	.uleb128 0x31
	.uaword	.LBB1122
	.uaword	.LBE1122
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1123
	.uaword	.LBE1123
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST192
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1124
	.uaword	.LBE1124
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST193
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	.LVL344
	.uaword	0x4c8d
	.uaword	0x40fa
	.uleb128 0x36
=======
	.uaword	0x1dcb
	.uaword	.LLST92
	.uleb128 0x35
	.uaword	.LVL206
	.uaword	0x1dd0
	.uleb128 0x46
	.uaword	.LVL208
	.uaword	0x3abf
	.uaword	0x32f3
	.uleb128 0x3c
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 4
<<<<<<< Updated upstream
	.byte	0
	.uleb128 0x35
	.uaword	.LVL346
	.uaword	0x4ccc
	.uleb128 0x36
=======
	.uleb128 0x3c
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL210
	.uaword	0x3afe
	.uaword	0x3307
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL212
	.uaword	0x1e82
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"SetEvent"
	.byte	0x3
	.uahalf	0x802
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB133
	.uaword	.LFE133
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4346
	.uleb128 0x25
=======
	.uaword	0x342b
	.uleb128 0x44
>>>>>>> Stashed changes
	.uaword	.LASF18
	.byte	0x3
	.uahalf	0x804
<<<<<<< Updated upstream
	.uaword	0x4f2
	.uaword	.LLST194
=======
	.uaword	0x4df
	.uaword	.LLST93
>>>>>>> Stashed changes
	.uleb128 0x4b
	.string	"Mask"
	.byte	0x3
	.uahalf	0x805
<<<<<<< Updated upstream
	.uaword	0x7ab
	.uaword	.LLST195
=======
	.uaword	0x798
	.uaword	.LLST94
>>>>>>> Stashed changes
	.uleb128 0x4a
	.string	"ev"
	.byte	0x3
	.uahalf	0x808
	.uaword	0xa2c
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x80a
<<<<<<< Updated upstream
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x80c
	.uaword	0x1ced
	.uleb128 0x32
	.uaword	0x1b63
	.uaword	.LBB1126
	.uaword	.LBE1126
	.byte	0x2
	.uahalf	0x837
	.uaword	0x4198
	.uleb128 0x37
	.uaword	0x1b8f
	.uaword	.LLST196
	.uleb128 0x2e
	.uaword	0x1b83
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1128
	.uaword	.LBE1128
	.uleb128 0x42
=======
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x80c
	.uaword	0x1746
	.uleb128 0x29
	.uaword	.LBB582
	.uaword	.LBE582
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"p_sn"
	.byte	0x3
	.uahalf	0x83b
<<<<<<< Updated upstream
	.uaword	0xefa
	.uaword	.LLST197
	.uleb128 0x42
=======
	.uaword	0xee7
	.uaword	.LLST95
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"p_tdb_waking_up"
	.byte	0x3
	.uahalf	0x83d
<<<<<<< Updated upstream
	.uaword	0x23fe
	.uaword	.LLST198
=======
	.uaword	0x245e
	.uaword	.LLST96
>>>>>>> Stashed changes
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x83f
<<<<<<< Updated upstream
	.uaword	0x1ec0
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB1129
	.uaword	.LBE1129
	.byte	0x2
	.uahalf	0x83f
	.uaword	0x4276
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB1130
	.uaword	.LBE1130
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB1131
	.uaword	.LBE1131
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST199
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1132
	.uaword	.LBE1132
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x4246
	.uleb128 0x31
	.uaword	.LBB1133
	.uaword	.LBE1133
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1134
	.uaword	.LBE1134
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST200
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1135
	.uaword	.LBE1135
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST201
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1136
	.uaword	.LBE1136
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST202
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1b1a
	.uaword	.LBB1138
	.uaword	.LBE1138
	.byte	0x2
	.uahalf	0x84a
	.uaword	0x4317
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST203
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB1139
	.uaword	.LBE1139
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST203
	.uleb128 0x31
	.uaword	.LBB1140
	.uaword	.LBE1140
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST205
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1141
	.uaword	.LBE1141
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x42fa
	.uleb128 0x31
	.uaword	.LBB1142
	.uaword	.LBE1142
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1143
	.uaword	.LBE1143
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST206
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1144
	.uaword	.LBE1144
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST207
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	.LVL364
	.uaword	0x4d02
	.uaword	0x4332
	.uleb128 0x36
=======
	.uaword	0x1dcb
	.uaword	.LLST97
	.uleb128 0x35
	.uaword	.LVL215
	.uaword	0x1dd0
	.uleb128 0x46
	.uaword	.LVL217
	.uaword	0x3b34
	.uaword	0x33f1
	.uleb128 0x3c
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
<<<<<<< Updated upstream
	.uleb128 0x27
	.uaword	.LVL365
	.uaword	0x4d3f
	.uleb128 0x27
	.uaword	.LVL366
	.uaword	0x4b96
=======
	.uleb128 0x46
	.uaword	.LVL218
	.uaword	0x3b71
	.uaword	0x3405
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL219
	.uaword	0x39c8
	.uaword	0x3419
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL220
	.uaword	0x1e82
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
>>>>>>> Stashed changes
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"GetEvent"
	.byte	0x3
	.uahalf	0x860
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB134
	.uaword	.LFE134
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4405
	.uleb128 0x4c
=======
	.uaword	0x34c9
	.uleb128 0x31
>>>>>>> Stashed changes
	.uaword	.LASF18
	.byte	0x3
	.uahalf	0x862
	.uaword	0x4f2
	.byte	0x1
	.byte	0x54
	.uleb128 0x4e
	.string	"Event"
	.byte	0x3
	.uahalf	0x863
	.uaword	0x7c1
	.byte	0x1
	.byte	0x64
	.uleb128 0x45
	.string	"ev"
	.byte	0x3
	.uahalf	0x866
<<<<<<< Updated upstream
	.uaword	0xa2c
	.uaword	.LLST208
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x868
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x86a
	.uaword	0x1ced
	.uleb128 0x32
	.uaword	0x1b63
	.uaword	.LBB1146
	.uaword	.LBE1146
	.byte	0x2
	.uahalf	0x89a
	.uaword	0x43ce
	.uleb128 0x2d
	.uaword	0x1b8f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	0x1b83
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1148
	.uaword	.LBE1148
	.uleb128 0x1b
=======
	.uaword	0xa19
	.uaword	.LLST98
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x868
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x86a
	.uaword	0x1746
	.uleb128 0x29
	.uaword	.LBB583
	.uaword	.LBE583
	.uleb128 0x1f
>>>>>>> Stashed changes
	.string	"p_tdb_event"
	.byte	0x3
	.uahalf	0x89f
<<<<<<< Updated upstream
	.uaword	0x23fe
	.uleb128 0x42
=======
	.uaword	0x245e
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"p_tcb_event"
	.byte	0x3
	.uahalf	0x8a1
<<<<<<< Updated upstream
	.uaword	0x4405
	.uaword	.LLST209
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x440a
	.uleb128 0xd
	.byte	0x4
	.uaword	0x4410
	.uleb128 0x11
	.uaword	0x10f4
	.uleb128 0x40
=======
	.uaword	0x34c9
	.uaword	.LLST99
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x34ce
	.uleb128 0xd
	.byte	0x4
	.uaword	0x34d4
	.uleb128 0x11
	.uaword	0x10e1
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"ClearEvent"
	.byte	0x3
	.uahalf	0x8ca
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB135
	.uaword	.LFE135
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x45d8
=======
	.uaword	0x3579
>>>>>>> Stashed changes
	.uleb128 0x4b
	.string	"Mask"
	.byte	0x3
	.uahalf	0x8cc
<<<<<<< Updated upstream
	.uaword	0x7ab
	.uaword	.LLST210
=======
	.uaword	0x798
	.uaword	.LLST100
>>>>>>> Stashed changes
	.uleb128 0x49
	.string	"ev"
	.byte	0x3
	.uahalf	0x8cf
	.uaword	0xa2c
	.byte	0
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x8d1
<<<<<<< Updated upstream
	.uaword	0x1ced
	.uleb128 0x41
=======
	.uaword	0x1746
	.uleb128 0x25
>>>>>>> Stashed changes
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x8d7
<<<<<<< Updated upstream
	.uaword	0x245e
	.uleb128 0x41
=======
	.uaword	0x24be
	.uleb128 0x25
>>>>>>> Stashed changes
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x8d9
<<<<<<< Updated upstream
	.uaword	0x23fe
	.uleb128 0x26
=======
	.uaword	0x245e
	.uleb128 0x43
>>>>>>> Stashed changes
	.uaword	.LASF22
	.byte	0x3
	.uahalf	0x8db
<<<<<<< Updated upstream
	.uaword	0x2ce6
=======
	.uaword	0x28d1
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x6f
	.uleb128 0x29
	.uaword	.LBB584
	.uaword	.LBE584
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x8fd
<<<<<<< Updated upstream
	.uaword	0x1ec0
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB1150
	.uaword	.LBE1150
	.byte	0x2
	.uahalf	0x8fd
	.uaword	0x4539
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB1151
	.uaword	.LBE1151
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB1152
	.uaword	.LBE1152
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST211
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1153
	.uaword	.LBE1153
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x4509
	.uleb128 0x31
	.uaword	.LBB1154
	.uaword	.LBE1154
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1155
	.uaword	.LBE1155
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST212
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1156
	.uaword	.LBE1156
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST213
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1157
	.uaword	.LBE1157
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST214
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1b1a
	.uaword	.LBB1159
	.uaword	.LBE1159
	.byte	0x2
	.uahalf	0x904
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST215
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB1160
	.uaword	.LBE1160
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST215
	.uleb128 0x31
	.uaword	.LBB1161
	.uaword	.LBE1161
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST217
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1162
	.uaword	.LBE1162
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x45b9
	.uleb128 0x31
	.uaword	.LBB1163
	.uaword	.LBE1163
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1164
	.uaword	.LBE1164
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST218
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1165
	.uaword	.LBE1165
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST219
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
=======
	.uaword	0x1dcb
	.uaword	.LLST101
	.uleb128 0x35
	.uaword	.LVL228
	.uaword	0x1dd0
	.uleb128 0x35
	.uaword	.LVL230
	.uaword	0x1e82
	.byte	0
	.byte	0
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"GetCounterValue"
	.byte	0x3
	.uahalf	0x91b
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB136
	.uaword	.LFE136
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x468a
	.uleb128 0x4c
=======
	.uaword	0x360a
	.uleb128 0x31
>>>>>>> Stashed changes
	.uaword	.LASF24
	.byte	0x3
	.uahalf	0x91d
	.uaword	0x6d7
	.byte	0x1
	.byte	0x54
	.uleb128 0x4e
	.string	"Value"
	.byte	0x3
	.uahalf	0x91e
	.uaword	0x6fc
	.byte	0x1
	.byte	0x64
	.uleb128 0x45
	.string	"ev"
	.byte	0x3
	.uahalf	0x921
<<<<<<< Updated upstream
	.uaword	0xa2c
	.uaword	.LLST220
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x923
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x925
	.uaword	0x1ced
	.uleb128 0x41
=======
	.uaword	0xa19
	.uaword	.LLST102
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x923
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x925
	.uaword	0x1746
	.uleb128 0x25
>>>>>>> Stashed changes
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x92b
<<<<<<< Updated upstream
	.uaword	0x245e
	.uleb128 0x32
	.uaword	0x1d1a
	.uaword	.LBB1167
	.uaword	.LBE1167
	.byte	0x2
	.uahalf	0x946
	.uaword	0x4673
	.uleb128 0x2d
	.uaword	0x1d4d
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	0x1d41
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1169
	.uaword	.LBE1169
	.uleb128 0x41
=======
	.uaword	0x24be
	.uleb128 0x29
	.uaword	.LBB585
	.uaword	.LBE585
	.uleb128 0x25
>>>>>>> Stashed changes
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x94e
<<<<<<< Updated upstream
	.uaword	0x37fc
=======
	.uaword	0x2ee5
>>>>>>> Stashed changes
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"GetElapsedValue"
	.byte	0x3
	.uahalf	0x97f
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB137
	.uaword	.LFE137
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4796
	.uleb128 0x4c
=======
	.uaword	0x36f5
	.uleb128 0x31
>>>>>>> Stashed changes
	.uaword	.LASF24
	.byte	0x3
	.uahalf	0x981
	.uaword	0x6d7
	.byte	0x1
	.byte	0x54
	.uleb128 0x4e
	.string	"Value"
	.byte	0x3
	.uahalf	0x982
	.uaword	0x6fc
	.byte	0x1
	.byte	0x64
	.uleb128 0x4e
	.string	"ElapsedValue"
	.byte	0x3
	.uahalf	0x983
	.uaword	0x6fc
	.byte	0x1
	.byte	0x65
	.uleb128 0x45
	.string	"ev"
	.byte	0x3
	.uahalf	0x986
<<<<<<< Updated upstream
	.uaword	0xa2c
	.uaword	.LLST221
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x988
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x98a
	.uaword	0x1ced
	.uleb128 0x41
=======
	.uaword	0xa19
	.uaword	.LLST103
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x988
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x98a
	.uaword	0x1746
	.uleb128 0x25
>>>>>>> Stashed changes
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x990
<<<<<<< Updated upstream
	.uaword	0x245e
	.uleb128 0x32
	.uaword	0x1d1a
	.uaword	.LBB1170
	.uaword	.LBE1170
	.byte	0x2
	.uahalf	0x9aa
	.uaword	0x473c
	.uleb128 0x2d
	.uaword	0x1d4d
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	0x1d41
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1172
	.uaword	.LBE1172
	.uleb128 0x3f
=======
	.uaword	0x24be
	.uleb128 0x29
	.uaword	.LBB586
	.uaword	.LBE586
	.uleb128 0x41
>>>>>>> Stashed changes
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x9b2
<<<<<<< Updated upstream
	.uaword	0x37fc
	.uaword	.LLST222
	.uleb128 0x42
=======
	.uaword	0x2ee5
	.uaword	.LLST104
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"local_value"
	.byte	0x3
	.uahalf	0x9b4
<<<<<<< Updated upstream
	.uaword	0x4796
	.uaword	.LLST223
	.uleb128 0x31
	.uaword	.LBB1173
	.uaword	.LBE1173
	.uleb128 0x42
=======
	.uaword	0x36f5
	.uaword	.LLST105
	.uleb128 0x29
	.uaword	.LBB587
	.uaword	.LBE587
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"local_curr_value"
	.byte	0x3
	.uahalf	0x9cd
<<<<<<< Updated upstream
	.uaword	0x4796
	.uaword	.LLST224
=======
	.uaword	0x36f5
	.uaword	.LLST106
>>>>>>> Stashed changes
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
<<<<<<< Updated upstream
	.uaword	0x6eb
	.uleb128 0x40
=======
	.uaword	0x6d8
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"IncrementCounter"
	.byte	0x3
	.uahalf	0x9f5
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB138
	.uaword	.LFE138
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x49bb
	.uleb128 0x25
=======
	.uaword	0x37ed
	.uleb128 0x44
>>>>>>> Stashed changes
	.uaword	.LASF24
	.byte	0x3
	.uahalf	0x9f7
<<<<<<< Updated upstream
	.uaword	0x6d7
	.uaword	.LLST225
	.uleb128 0x42
=======
	.uaword	0x6c4
	.uaword	.LLST107
	.uleb128 0x45
>>>>>>> Stashed changes
	.string	"ev"
	.byte	0x3
	.uahalf	0x9fa
<<<<<<< Updated upstream
	.uaword	0xa2c
	.uaword	.LLST226
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x9fc
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x9fe
	.uaword	0x1ced
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0xa04
	.uaword	0x245e
	.uleb128 0x32
	.uaword	0x1d1a
	.uaword	.LBB1174
	.uaword	.LBE1174
	.byte	0x2
	.uahalf	0xa20
	.uaword	0x482b
	.uleb128 0x37
	.uaword	0x1d4d
	.uaword	.LLST227
	.uleb128 0x2e
	.uaword	0x1d41
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1176
	.uaword	.LBE1176
	.uleb128 0x3f
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0xa25
	.uaword	0x37fc
	.uaword	.LLST228
	.uleb128 0x31
	.uaword	.LBB1177
	.uaword	.LBE1177
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0xa39
	.uaword	0x1ec0
	.uleb128 0x32
	.uaword	0x1a18
	.uaword	.LBB1178
	.uaword	.LBE1178
	.byte	0x2
	.uahalf	0xa39
	.uaword	0x48f5
	.uleb128 0x2c
	.uaword	0x1806
	.uaword	.LBB1179
	.uaword	.LBE1179
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB1180
	.uaword	.LBE1180
	.uleb128 0x33
	.uaword	0x1834
	.uaword	.LLST229
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1181
	.uaword	.LBE1181
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x48c5
	.uleb128 0x31
	.uaword	.LBB1182
	.uaword	.LBE1182
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1183
	.uaword	.LBE1183
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST230
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1184
	.uaword	.LBE1184
	.uleb128 0x33
	.uaword	0x1841
	.uaword	.LLST231
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1185
	.uaword	.LBE1185
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST232
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x1b9c
	.uaword	.LBB1187
	.uaword	.LBE1187
	.byte	0x2
	.uahalf	0xa42
	.uleb128 0x32
	.uaword	0x1b1a
	.uaword	.LBB1189
	.uaword	.LBE1189
	.byte	0x2
	.uahalf	0xa46
	.uaword	0x49a6
	.uleb128 0x37
	.uaword	0x1b37
	.uaword	.LLST233
	.uleb128 0x38
	.uaword	0x1854
	.uaword	.LBB1190
	.uaword	.LBE1190
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x187c
	.uaword	.LLST233
	.uleb128 0x31
	.uaword	.LBB1191
	.uaword	.LBE1191
	.uleb128 0x30
	.uaword	0x1888
	.uleb128 0x33
	.uaword	0x189a
	.uaword	.LLST235
	.uleb128 0x32
	.uaword	0x1735
	.uaword	.LBB1192
	.uaword	.LBE1192
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x4989
	.uleb128 0x31
	.uaword	.LBB1193
	.uaword	.LBE1193
	.uleb128 0x30
	.uaword	0x1753
	.uleb128 0x31
	.uaword	.LBB1194
	.uaword	.LBE1194
	.uleb128 0x33
	.uaword	0x1760
	.uaword	.LLST236
=======
	.uaword	0xa19
	.uaword	.LLST108
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x9fc
	.uaword	0x25a8
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x9fe
	.uaword	0x1746
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0xa04
	.uaword	0x24be
	.uleb128 0x29
	.uaword	.LBB588
	.uaword	.LBE588
	.uleb128 0x41
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0xa25
	.uaword	0x2ee5
	.uaword	.LLST109
	.uleb128 0x29
	.uaword	.LBB589
	.uaword	.LBE589
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0xa39
	.uaword	0x1dcb
	.uaword	.LLST110
	.uleb128 0x3a
	.uaword	0x1c81
	.uaword	.LBB590
	.uaword	.LBE590
	.byte	0x3
	.uahalf	0xa42
	.uleb128 0x35
	.uaword	.LVL245
	.uaword	0x1dd0
	.uleb128 0x46
	.uaword	.LVL247
	.uaword	0x3ba8
	.uaword	0x37c6
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x46
	.uaword	.LVL248
	.uaword	0x39c8
	.uaword	0x37da
	.uleb128 0x3c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
<<<<<<< Updated upstream
	.byte	0
	.uleb128 0x38
	.uaword	0x1788
	.uaword	.LBB1195
	.uaword	.LBE1195
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x17a2
	.uaword	.LLST237
=======
	.uleb128 0x3b
	.uaword	.LVL249
	.uaword	0x1e82
	.uleb128 0x3c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
>>>>>>> Stashed changes
	.byte	0
	.byte	0
	.byte	0
	.byte	0
<<<<<<< Updated upstream
	.uleb128 0x27
	.uaword	.LVL423
	.uaword	0x4d76
	.uleb128 0x27
	.uaword	.LVL425
	.uaword	0x4b96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
=======
	.uleb128 0x42
>>>>>>> Stashed changes
	.byte	0x1
	.string	"GetISRID"
	.byte	0x3
	.uahalf	0xcf0
	.byte	0x1
	.uaword	0x502
	.uaword	.LFB139
	.uaword	.LFE139
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4a0b
=======
	.uaword	0x383d
>>>>>>> Stashed changes
	.uleb128 0x4a
	.string	"isr_id"
	.byte	0x3
	.uahalf	0xcf5
	.uaword	0x502
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0xcf7
<<<<<<< Updated upstream
	.uaword	0x23fe
	.uleb128 0x34
	.uaword	0x1b9c
	.uaword	.LBB1197
	.uaword	.LBE1197
	.byte	0x2
=======
	.uaword	0x245e
	.uleb128 0x3a
	.uaword	0x1c81
	.uaword	.LBB592
	.uaword	.LBE592
	.byte	0x3
>>>>>>> Stashed changes
	.uahalf	0xcf7
	.byte	0
	.uleb128 0x4f
	.string	"osEE_kdb_var"
	.byte	0xc
	.byte	0x42
	.uaword	0x171f
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.string	"osEE_cdb_var"
	.byte	0xc
	.byte	0x5b
	.uaword	0x15a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.byte	0x1
	.string	"osEE_idle_task_terminate"
	.byte	0x4
	.byte	0x9b
	.byte	0x1
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4a60
	.uleb128 0x50
	.uaword	0x111c
=======
	.uaword	0x3892
	.uleb128 0x51
	.uaword	0x1109
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"osEE_hal_save_ctx_and_ready2stacked"
	.byte	0x4
	.byte	0x68
	.byte	0x1
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4a9e
	.uleb128 0x50
	.uaword	0x111c
	.uleb128 0x50
	.uaword	0x4c3
	.uleb128 0x50
	.uaword	0x4c3
=======
	.uaword	0x38d0
	.uleb128 0x51
	.uaword	0x1109
	.uleb128 0x51
	.uaword	0x4b0
	.uleb128 0x51
	.uaword	0x4b0
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"osEE_task_end"
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4abc
	.uleb128 0x50
	.uaword	0x23fe
	.byte	0
=======
	.uaword	0x38ee
>>>>>>> Stashed changes
	.uleb128 0x51
	.uaword	0x245e
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_cpu_startos"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.uaword	0x269
	.byte	0x1
	.uleb128 0x53
	.byte	0x1
	.string	"osEE_task_activated"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uaword	0xa2c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4aff
	.uleb128 0x50
	.uaword	0x111c
=======
	.uaword	0x3931
	.uleb128 0x51
	.uaword	0x1109
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"osEE_scheduler_task_activated"
	.byte	0xd
	.byte	0x77
	.byte	0x1
	.uaword	0x269
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4b36
	.uleb128 0x50
	.uaword	0x1b5d
	.uleb128 0x50
	.uaword	0x111c
=======
	.uaword	0x3968
	.uleb128 0x51
	.uaword	0x19a9
	.uleb128 0x51
	.uaword	0x1109
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"osEE_hal_terminate_ctx"
	.byte	0x4
	.byte	0x77
	.byte	0x1
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4b62
	.uleb128 0x50
	.uaword	0x4c3
	.uleb128 0x50
	.uaword	0xf00
=======
	.uaword	0x3994
	.uleb128 0x51
	.uaword	0x4b0
	.uleb128 0x51
	.uaword	0xeed
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"osEE_scheduler_task_insert"
	.byte	0xd
	.byte	0x7e
	.byte	0x1
	.uaword	0x269
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4b96
	.uleb128 0x50
	.uaword	0x1b5d
	.uleb128 0x50
	.uaword	0x111c
=======
	.uaword	0x39c8
	.uleb128 0x51
	.uaword	0x19a9
	.uleb128 0x51
	.uaword	0x1109
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"osEE_scheduler_task_preemption_point"
	.byte	0xd
	.byte	0x85
	.byte	0x1
	.uaword	0x269
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4bcf
	.uleb128 0x50
	.uaword	0x1b5d
=======
	.uaword	0x3a01
	.uleb128 0x51
	.uaword	0x19a9
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.string	"osEE_alarm_set_rel"
	.byte	0x1
	.uahalf	0x33c
	.byte	0x1
	.uaword	0xa2c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4c06
	.uleb128 0x50
	.uaword	0x12de
	.uleb128 0x50
	.uaword	0x1cc3
	.uleb128 0x50
	.uaword	0x6eb
	.uleb128 0x50
	.uaword	0x6eb
=======
	.uaword	0x3a38
	.uleb128 0x51
	.uaword	0x12cb
	.uleb128 0x51
	.uaword	0x1d26
	.uleb128 0x51
	.uaword	0x6d8
	.uleb128 0x51
	.uaword	0x6d8
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.string	"osEE_alarm_set_abs"
	.byte	0x1
	.uahalf	0x345
	.byte	0x1
	.uaword	0xa2c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4c3d
	.uleb128 0x50
	.uaword	0x12de
	.uleb128 0x50
	.uaword	0x1cc3
	.uleb128 0x50
	.uaword	0x6eb
	.uleb128 0x50
	.uaword	0x6eb
=======
	.uaword	0x3a6f
	.uleb128 0x51
	.uaword	0x12cb
	.uleb128 0x51
	.uaword	0x1d26
	.uleb128 0x51
	.uaword	0x6d8
	.uleb128 0x51
	.uaword	0x6d8
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.string	"osEE_alarm_cancel"
	.byte	0x1
	.uahalf	0x34e
	.byte	0x1
	.uaword	0xa2c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4c64
	.uleb128 0x50
	.uaword	0x1cc3
=======
	.uaword	0x3a96
	.uleb128 0x51
	.uaword	0x1d26
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.string	"osEE_alarm_get"
	.byte	0x1
	.uahalf	0x354
	.byte	0x1
	.uaword	0xa2c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4c8d
	.uleb128 0x50
	.uaword	0x1cc3
	.uleb128 0x50
	.uaword	0x710
=======
	.uaword	0x3abf
	.uleb128 0x51
	.uaword	0x1d26
	.uleb128 0x51
	.uaword	0x6fd
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"osEE_scheduler_core_pop_running"
	.byte	0xd
	.byte	0x5b
	.byte	0x1
	.uaword	0xefa
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4cc6
	.uleb128 0x50
	.uaword	0x1800
	.uleb128 0x50
	.uaword	0x4cc6
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xeeb
	.uleb128 0x4f
=======
	.uaword	0x3af8
	.uleb128 0x51
	.uaword	0x174b
	.uleb128 0x51
	.uaword	0x3af8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xed8
	.uleb128 0x50
>>>>>>> Stashed changes
	.byte	0x1
	.string	"osEE_change_context_from_running"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4d02
	.uleb128 0x50
	.uaword	0x111c
	.uleb128 0x50
	.uaword	0x111c
=======
	.uaword	0x3b34
	.uleb128 0x51
	.uaword	0x1109
	.uleb128 0x51
	.uaword	0x1109
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"osEE_task_event_set_mask"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.uaword	0xefa
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4d39
	.uleb128 0x50
	.uaword	0x111c
	.uleb128 0x50
	.uaword	0x7ab
	.uleb128 0x50
	.uaword	0x4d39
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xa2c
	.uleb128 0x52
=======
	.uaword	0x3b6b
	.uleb128 0x51
	.uaword	0x1109
	.uleb128 0x51
	.uaword	0x798
	.uleb128 0x51
	.uaword	0x3b6b
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xa19
	.uleb128 0x53
>>>>>>> Stashed changes
	.byte	0x1
	.string	"osEE_scheduler_task_unblocked"
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.uaword	0x269
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x4d76
	.uleb128 0x50
	.uaword	0x1b5d
	.uleb128 0x50
	.uaword	0xefa
=======
	.uaword	0x3ba8
	.uleb128 0x51
	.uaword	0x19a9
	.uleb128 0x51
	.uaword	0xee7
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.string	"osEE_counter_increment"
	.byte	0x1
	.uahalf	0x304
	.byte	0x1
	.byte	0x1
<<<<<<< Updated upstream
	.uleb128 0x50
	.uaword	0x12de
=======
	.uleb128 0x51
	.uaword	0x12cb
>>>>>>> Stashed changes
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x9
	.uleb128 0x17
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
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
	.uleb128 0xf
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4-.Ltext0
	.uaword	.LFE83-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL15-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15-1-.Ltext0
	.uaword	.LFE154-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x5
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL50-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL50-1-.Ltext0
	.uaword	.LFE116-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61-.Ltext0
	.uaword	.LFE116-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL50-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL50-1-.Ltext0
	.uaword	.LFE116-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL61-.Ltext0
	.uaword	.LFE116-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL67-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL67-1-.Ltext0
	.uaword	.LFE118-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL71-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71-1-.Ltext0
	.uaword	.LFE118-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL69-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69-1-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL79-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL79-1-.Ltext0
	.uaword	.LFE119-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL84-.Ltext0
	.uaword	.LVL85-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL87-.Ltext0
	.uaword	.LVL88-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL88-1-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL89-.Ltext0
	.uaword	.LVL90-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL90-1-.Ltext0
	.uaword	.LVL91-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL92-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL91-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL92-.Ltext0
	.uaword	.LFE119-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL76-.Ltext0
	.uaword	.LVL81-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL83-.Ltext0
	.uaword	.LVL85-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL87-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL87-.Ltext0
	.uaword	.LVL92-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL86-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86-1-.Ltext0
	.uaword	.LVL92-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL78-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL92-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL95-.Ltext0
	.uaword	.LVL96-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL103-.Ltext0
	.uaword	.LVL104-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL107-.Ltext0
	.uaword	.LVL113-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL113-1-.Ltext0
	.uaword	.LFE122-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL123-.Ltext0
	.uaword	.LVL124-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL124-.Ltext0
	.uaword	.LFE122-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL124-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL124-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL124-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL111-.Ltext0
	.uaword	.LVL113-1-.Ltext0
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	.LVL113-1-.Ltext0
	.uaword	.LVL119-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL112-.Ltext0
	.uaword	.LVL113-1-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	.LVL113-1-.Ltext0
	.uaword	.LVL124-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL113-.Ltext0
	.uaword	.LVL115-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL116-.Ltext0
	.uaword	.LVL117-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL120-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL121-.Ltext0
	.uaword	.LVL122-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL114-.Ltext0
	.uaword	.LVL119-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL114-.Ltext0
	.uaword	.LVL115-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL116-.Ltext0
	.uaword	.LVL117-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL120-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL115-.Ltext0
	.uaword	.LVL116-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL117-.Ltext0
	.uaword	.LVL118-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL125-.Ltext0
	.uaword	.LVL129-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL129-1-.Ltext0
	.uaword	.LFE123-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL141-.Ltext0
	.uaword	.LVL142-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL142-.Ltext0
	.uaword	.LFE123-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL142-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL128-.Ltext0
	.uaword	.LVL142-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL129-.Ltext0
	.uaword	.LVL138-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL139-.Ltext0
	.uaword	.LVL142-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL130-.Ltext0
	.uaword	.LVL131-.Ltext0
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL132-.Ltext0
	.uaword	.LVL140-1-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL133-.Ltext0
	.uaword	.LVL140-1-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL133-.Ltext0
	.uaword	.LVL138-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL134-.Ltext0
	.uaword	.LVL135-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL136-.Ltext0
	.uaword	.LVL137-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL139-.Ltext0
	.uaword	.LVL142-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL138-.Ltext0
	.uaword	.LVL139-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL143-.Ltext0
	.uaword	.LVL144-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL144-1-.Ltext0
	.uaword	.LFE124-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL144-.Ltext0
	.uaword	.LVL147-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL147-.Ltext0
	.uaword	.LVL148-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL145-.Ltext0
	.uaword	.LVL146-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL147-1-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL147-.Ltext0
	.uaword	.LVL148-1-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL161-.Ltext0
	.uaword	.LVL162-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL162-.Ltext0
	.uaword	.LFE125-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL150-.Ltext0
	.uaword	.LVL155-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL151-.Ltext0
	.uaword	.LVL153-.Ltext0
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL153-.Ltext0
	.uaword	.LVL154-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL154-.Ltext0
	.uaword	.LVL158-.Ltext0
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL158-.Ltext0
	.uaword	.LVL159-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL159-.Ltext0
	.uaword	.LVL160-.Ltext0
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL160-.Ltext0
	.uaword	.LVL162-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL155-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL160-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL157-.Ltext0
	.uaword	.LVL159-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL168-.Ltext0
	.uaword	.LVL171-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL171-1-.Ltext0
	.uaword	.LFE127-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL168-.Ltext0
	.uaword	.LVL171-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL171-1-.Ltext0
	.uaword	.LVL175-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL175-.Ltext0
	.uaword	.LFE127-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL168-.Ltext0
	.uaword	.LVL171-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL171-1-.Ltext0
	.uaword	.LVL174-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL174-.Ltext0
	.uaword	.LFE127-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL174-.Ltext0
	.uaword	.LVL175-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL175-1-.Ltext0
	.uaword	.LFE127-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL175-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL170-.Ltext0
	.uaword	.LVL175-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL172-.Ltext0
	.uaword	.LVL173-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL173-1-.Ltext0
	.uaword	.LVL175-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL179-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL179-1-.Ltext0
	.uaword	.LFE128-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL179-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL179-1-.Ltext0
	.uaword	.LVL183-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL183-.Ltext0
	.uaword	.LFE128-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL179-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL179-1-.Ltext0
	.uaword	.LVL182-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL182-.Ltext0
	.uaword	.LFE128-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL182-.Ltext0
	.uaword	.LVL183-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL183-1-.Ltext0
	.uaword	.LFE128-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL177-.Ltext0
	.uaword	.LVL183-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL178-.Ltext0
	.uaword	.LVL183-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL180-.Ltext0
	.uaword	.LVL181-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL181-1-.Ltext0
	.uaword	.LVL183-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL184-.Ltext0
	.uaword	.LVL186-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL186-1-.Ltext0
	.uaword	.LFE129-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL189-.Ltext0
	.uaword	.LVL190-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL190-1-.Ltext0
	.uaword	.LFE129-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL185-.Ltext0
	.uaword	.LVL190-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL187-.Ltext0
	.uaword	.LVL188-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL188-1-.Ltext0
	.uaword	.LVL190-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL191-.Ltext0
	.uaword	.LVL193-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL193-1-.Ltext0
	.uaword	.LFE130-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL191-.Ltext0
	.uaword	.LVL193-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL193-1-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL197-.Ltext0
	.uaword	.LFE130-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL196-.Ltext0
	.uaword	.LVL197-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL197-1-.Ltext0
	.uaword	.LFE130-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL194-.Ltext0
	.uaword	.LVL195-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL195-1-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL200-.Ltext0
	.uaword	.LVL201-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL201-.Ltext0
	.uaword	.LFE131-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL202-.Ltext0
	.uaword	.LVL206-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL206-1-.Ltext0
	.uaword	.LFE132-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL207-.Ltext0
	.uaword	.LVL208-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL208-1-.Ltext0
	.uaword	.LFE132-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL213-.Ltext0
	.uaword	.LVL215-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL215-1-.Ltext0
	.uaword	.LFE133-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL213-.Ltext0
	.uaword	.LVL215-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL215-1-.Ltext0
	.uaword	.LVL220-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL220-.Ltext0
	.uaword	.LFE133-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL217-.Ltext0
	.uaword	.LVL218-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL214-.Ltext0
	.uaword	.LVL220-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL216-.Ltext0
	.uaword	.LVL217-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL217-1-.Ltext0
	.uaword	.LVL220-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL224-.Ltext0
	.uaword	.LVL225-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL225-.Ltext0
	.uaword	.LFE134-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL223-.Ltext0
	.uaword	.LVL225-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL226-.Ltext0
	.uaword	.LVL228-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL228-1-.Ltext0
	.uaword	.LFE135-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL228-.Ltext0
	.uaword	.LVL230-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL232-.Ltext0
	.uaword	.LVL233-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL233-.Ltext0
	.uaword	.LFE136-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL241-.Ltext0
	.uaword	.LVL242-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL242-.Ltext0
	.uaword	.LFE137-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL235-.Ltext0
	.uaword	.LVL242-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL235-.Ltext0
	.uaword	.LVL237-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL237-.Ltext0
	.uaword	.LVL238-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL238-.Ltext0
	.uaword	.LVL239-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL239-.Ltext0
	.uaword	.LVL240-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL242-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL243-.Ltext0
	.uaword	.LVL245-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL245-1-.Ltext0
	.uaword	.LFE138-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL249-.Ltext0
	.uaword	.LVL250-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL250-.Ltext0
	.uaword	.LFE138-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL244-.Ltext0
	.uaword	.LVL250-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL246-.Ltext0
	.uaword	.LVL247-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL247-1-.Ltext0
	.uaword	.LVL250-.Ltext0
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LBB530-.Ltext0
	.uaword	.LBE530-.Ltext0
	.uaword	.LBB541-.Ltext0
	.uaword	.LBE541-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB553-.Ltext0
	.uaword	.LBE553-.Ltext0
	.uaword	.LBB558-.Ltext0
	.uaword	.LBE558-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB563-.Ltext0
	.uaword	.LBE563-.Ltext0
	.uaword	.LBB568-.Ltext0
	.uaword	.LBE568-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB571-.Ltext0
	.uaword	.LBE571-.Ltext0
	.uaword	.LBB572-.Ltext0
	.uaword	.LBE572-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF16:
	.string	"p_alarm_db"
.LASF11:
	.string	"virt_prio"
.LASF24:
	.string	"CounterID"
.LASF1:
	.string	"p_tdb"
.LASF19:
	.string	"p_tdb_act"
.LASF20:
	.string	"p_reso_db"
.LASF12:
	.string	"service_id"
.LASF10:
	.string	"p_cdb"
.LASF0:
	.string	"p_next"
.LASF4:
	.string	"current_prio"
.LASF6:
	.string	"p_curr"
.LASF5:
	.string	"p_counter_db"
.LASF17:
	.string	"p_idle_tdb"
.LASF22:
	.string	"p_curr_tcb"
.LASF7:
	.string	"os_status"
.LASF13:
	.string	"flags"
.LASF3:
	.string	"prev_prio"
.LASF21:
	.string	"p_reso_cb"
.LASF9:
	.string	"p_ccb"
.LASF23:
	.string	"AlarmID"
.LASF8:
	.string	"app_mode"
.LASF15:
	.string	"Error"
.LASF2:
	.string	"dispatch_prio"
.LASF14:
	.string	"p_kdb"
.LASF18:
	.string	"TaskID"
	.extern	osEE_counter_increment,STT_FUNC,0
	.extern	osEE_scheduler_task_unblocked,STT_FUNC,0
	.extern	osEE_task_event_set_mask,STT_FUNC,0
	.extern	osEE_change_context_from_running,STT_FUNC,0
	.extern	osEE_scheduler_core_pop_running,STT_FUNC,0
	.extern	osEE_alarm_get,STT_FUNC,0
	.extern	osEE_alarm_cancel,STT_FUNC,0
	.extern	osEE_alarm_set_abs,STT_FUNC,0
	.extern	osEE_alarm_set_rel,STT_FUNC,0
	.extern	osEE_scheduler_task_preemption_point,STT_FUNC,0
	.extern	osEE_hal_terminate_ctx,STT_FUNC,0
	.extern	osEE_scheduler_task_insert,STT_FUNC,0
	.extern	osEE_scheduler_task_activated,STT_FUNC,0
	.extern	osEE_task_activated,STT_FUNC,0
	.extern	osEE_kdb_var,STT_OBJECT,36
	.extern	osEE_task_end,STT_FUNC,0
	.extern	osEE_hal_save_ctx_and_ready2stacked,STT_FUNC,0
	.extern	osEE_cpu_startos,STT_FUNC,0
	.extern	osEE_idle_task_terminate,STT_FUNC,0
	.extern	osEE_cdb_var,STT_OBJECT,8
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
