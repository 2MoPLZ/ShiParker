	.file	"ee_oo_api_osek.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.type	osEE_shutdown_os, @function
osEE_shutdown_os:
.LFB100:
	.file 1 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_kernel.h"
	.loc 1 714 0
.LVL0:
	mov.aa	%a14, %SP
.LCFI0:
	.loc 1 715 0
	ld.a	%a15, [%a4]0
.LVL1:
	.loc 1 716 0
	ld.bu	%d15, [%a15] 16
.LVL2:
	.loc 1 718 0
	mov	%d2, 3
	st.b	[%a15] 16, %d2
	.loc 1 720 0
	st.b	[%a15] 18, %d4
	.loc 1 722 0
	jne	%d15, 2, .L2
	.loc 1 723 0
	ld.a	%a4, [%a4] 4
.LVL3:
	call	osEE_idle_task_terminate
.LVL4:
.L2:
.L3:
	.loc 1 729 0 discriminator 1
	j	.L3
.LFE100:
	.size	osEE_shutdown_os, .-osEE_shutdown_os
	.align 1
	.global	DisableAllInterrupts
	.type	DisableAllInterrupts, @function
DisableAllInterrupts:
.LFB102:
	.file 2 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_oo_api_osek.c"
	.loc 2 64 0
	mov.aa	%a14, %SP
.LCFI1:
	.loc 2 66 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL5:
.LBB531:
.LBB532:
	.file 3 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_hal_internal.h"
	.loc 3 276 0
#APP
	# 276 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	disable
	# 0 "" 2
.LVL6:
#NO_APP
.LBE532:
.LBE531:
	.loc 2 73 0
	mov	%d15, 1
	st.b	[%a15] 30, %d15
.LVL7:
	ret
.LFE102:
	.size	DisableAllInterrupts, .-DisableAllInterrupts
	.align 1
	.global	EnableAllInterrupts
	.type	EnableAllInterrupts, @function
EnableAllInterrupts:
.LFB103:
	.loc 2 83 0
	mov.aa	%a14, %SP
.LCFI2:
	.loc 2 90 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL8:
	.loc 2 96 0
	ld.bu	%d15, [%a15] 30
	jz	%d15, .L5
	.loc 2 97 0
	mov	%d15, 0
	st.b	[%a15] 30, %d15
.LBB533:
.LBB534:
	.loc 3 282 0
#APP
	# 282 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	enable
	# 0 "" 2
.LVL9:
#NO_APP
.L5:
	ret
.LBE534:
.LBE533:
.LFE103:
	.size	EnableAllInterrupts, .-EnableAllInterrupts
	.align 1
	.global	SuspendAllInterrupts
	.type	SuspendAllInterrupts, @function
SuspendAllInterrupts:
.LFB105:
	.loc 2 133 0
	mov.aa	%a14, %SP
.LCFI3:
	.loc 2 135 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL10:
.LBB546:
.LBB547:
	.loc 2 113 0
	ld.bu	%d15, [%a15] 28
	jnz	%d15, .L8
.LBB548:
.LBB549:
.LBB550:
.LBB551:
.LBB552:
.LBB553:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL11:
#NO_APP
.LBE553:
.LBE552:
.LBE551:
.LBB554:
.LBB555:
	.loc 3 276 0
#APP
	# 276 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE555:
.LBE554:
.LBE550:
.LBE549:
	.loc 2 115 0
	st.w	[%a15] 20, %d15
	.loc 2 116 0
	ld.bu	%d15, [%a15] 28
.LVL12:
	add	%d15, 1
	st.b	[%a15] 28, %d15
	ret
.LVL13:
.L8:
.LBE548:
	.loc 2 117 0
	eq	%d2, %d15, 255
	jnz	%d2, .L10
	.loc 2 118 0
	add	%d15, 1
	st.b	[%a15] 28, %d15
	ret
.L10:
	.loc 2 123 0
	movh.a	%a4, hi:osEE_cdb_var
	lea	%a4, [%a4] lo:osEE_cdb_var
	mov	%d4, 25
	j	osEE_shutdown_os
.LVL14:
.LBE547:
.LBE546:
.LFE105:
	.size	SuspendAllInterrupts, .-SuspendAllInterrupts
	.align 1
	.global	ResumeAllInterrupts
	.type	ResumeAllInterrupts, @function
ResumeAllInterrupts:
.LFB106:
	.loc 2 153 0
	mov.aa	%a14, %SP
.LCFI4:
	.loc 2 155 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL15:
	.loc 2 161 0
	ld.bu	%d15, [%a15] 28
	jz	%d15, .L11
	.loc 2 162 0
	add	%d15, -1
	and	%d15, 255
	st.b	[%a15] 28, %d15
	.loc 2 164 0
	jnz	%d15, .L11
.LVL16:
.LBB556:
.LBB557:
.LBB558:
.LBB559:
	.loc 3 265 0
	ld.w	%d15, [%a15] 20
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL17:
#NO_APP
.L11:
	ret
.LBE559:
.LBE558:
.LBE557:
.LBE556:
.LFE106:
	.size	ResumeAllInterrupts, .-ResumeAllInterrupts
	.align 1
	.global	SuspendOSInterrupts
	.type	SuspendOSInterrupts, @function
SuspendOSInterrupts:
.LFB107:
	.loc 2 179 0
	mov.aa	%a14, %SP
.LCFI5:
	.loc 2 181 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL18:
	.loc 2 187 0
	ld.bu	%d15, [%a15] 29
	jnz	%d15, .L14
.LBB560:
.LBB561:
.LBB562:
.LBB563:
.LBB564:
.LBB565:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d2, LO:65068
	# 0 "" 2
.LVL19:
#NO_APP
.LBE565:
.LBE564:
.LBE563:
	.loc 3 365 0
	and	%d15, %d2, 255
.LVL20:
	ge.u	%d15, %d15, 17
.LVL21:
	jnz	%d15, .L15
.LBB566:
	.loc 3 366 0
	mov	%d15, %d2
.LVL22:
	mov	%d3, 17
	insert	%d15, %d15, %d3, 0, 8
.LVL23:
.LBB567:
.LBB568:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL24:
#NO_APP
.L15:
.LBE568:
.LBE567:
.LBE566:
.LBE562:
.LBE561:
	.loc 2 189 0
	st.w	[%a15] 24, %d2
	.loc 2 190 0
	ld.bu	%d15, [%a15] 29
.LVL25:
	add	%d15, 1
	st.b	[%a15] 29, %d15
.LBE560:
	ret
.LVL26:
.L14:
	.loc 2 191 0
	eq	%d2, %d15, 255
	jnz	%d2, .L17
	.loc 2 192 0
	add	%d15, 1
	st.b	[%a15] 29, %d15
	ret
.L17:
	.loc 2 197 0
	movh.a	%a4, hi:osEE_cdb_var
	lea	%a4, [%a4] lo:osEE_cdb_var
	mov	%d4, 25
	j	osEE_shutdown_os
.LVL27:
.LFE107:
	.size	SuspendOSInterrupts, .-SuspendOSInterrupts
	.align 1
	.global	ResumeOSInterrupts
	.type	ResumeOSInterrupts, @function
ResumeOSInterrupts:
.LFB108:
	.loc 2 211 0
	mov.aa	%a14, %SP
.LCFI6:
	.loc 2 213 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL28:
	.loc 2 219 0
	ld.bu	%d15, [%a15] 29
	jz	%d15, .L18
	.loc 2 220 0
	add	%d15, -1
	and	%d15, 255
	st.b	[%a15] 29, %d15
	.loc 2 222 0
	jnz	%d15, .L18
	.loc 2 223 0
	ld.w	%d2, [%a15] 24
.LVL29:
.LBB569:
.LBB570:
.LBB571:
.LBB572:
.LBB573:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL30:
#NO_APP
	mov	%d15, %d3
.LVL31:
	and	%d3, %d3, 255
.LVL32:
.LBE573:
.LBE572:
.LBE571:
	.loc 3 383 0
	and	%d2, %d2, 255
.LVL33:
	jeq	%d3, %d2, .L18
.LVL34:
	insert	%d15, %d15, %d2, 0, 8
.LVL35:
.LBB574:
.LBB575:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL36:
#NO_APP
.L18:
	ret
.LBE575:
.LBE574:
.LBE570:
.LBE569:
.LFE108:
	.size	ResumeOSInterrupts, .-ResumeOSInterrupts
	.align 1
	.global	StartOS
	.type	StartOS, @function
StartOS:
.LFB109:
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
.LBB576:
.LBB577:
.LBB578:
.LBB579:
.LBB580:
.LBB581:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL40:
#NO_APP
.LBE581:
.LBE580:
.LBE579:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL41:
	ge.u	%d15, %d15, 17
.LVL42:
	jnz	%d15, .L22
.LBB582:
	.loc 3 366 0
	mov	%d15, %d8
.LVL43:
	mov	%d2, 17
	insert	%d15, %d15, %d2, 0, 8
.LVL44:
.LBB583:
.LBB584:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL45:
#NO_APP
.L22:
.LBE584:
.LBE583:
.LBE582:
.LBE578:
.LBE577:
.LBE576:
	.loc 2 254 0
	ld.bu	%d15, [%a15] 16
.LVL46:
	.loc 2 258 0
	mov	%d5, 1
	.loc 2 254 0
	jnz	%d15, .L23
	.loc 2 264 0
	call	osEE_cpu_startos
.LVL47:
	.loc 2 268 0
	mov	%d5, 24
	.loc 2 264 0
	jz	%d2, .L23
	j	.L33
.LVL48:
.L29:
.LBB585:
	.loc 2 528 0
	mov	%d15, 2
	st.b	[%a15] 16, %d15
.L30:
.LVL49:
	.loc 2 537 0
	ld.bu	%d15, [%a15] 16
	jne	%d15, 2, .L25
.LVL50:
.LBB586:
.LBB587:
	.file 4 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_std_change_context.h"
	.loc 4 150 0
	mov.aa	%a4, %a12
	ld.a	%a5, [%a12] 4
	mov.aa	%a6, %a5
	call	osEE_hal_save_ctx_and_ready2stacked
.LVL51:
.LBE587:
.LBE586:
	.loc 2 539 0
	mov.aa	%a4, %a12
	call	osEE_task_end
.LVL52:
.L25:
.LBB588:
.LBB589:
	.loc 3 276 0
#APP
	# 276 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	disable
	# 0 "" 2
.LVL53:
#NO_APP
.L26:
.LBE589:
.LBE588:
	.loc 2 545 0 discriminator 1
	j	.L26
.LVL54:
.L27:
	insert	%d15, %d15, %d3, 0, 8
.LVL55:
.LBE585:
.LBB590:
.LBB591:
.LBB592:
.LBB593:
.LBB594:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
#NO_APP
	j	.L34
.LVL56:
.L23:
.LBE594:
.LBE593:
.LBB595:
.LBB596:
.LBB597:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d4, LO:65068
	# 0 "" 2
.LVL57:
#NO_APP
	mov	%d15, %d4
.LVL58:
	and	%d4, %d4, 255
.LVL59:
.LBE597:
.LBE596:
.LBE595:
	.loc 3 383 0
	and	%d3, %d8, 255
	jne	%d4, %d3, .L27
	j	.L34
.LVL60:
.L33:
.LBE592:
.LBE591:
.LBE590:
.LBB598:
	.loc 2 280 0
	movh.a	%a2, hi:osEE_cdb_var
	lea	%a2, [%a2] lo:osEE_cdb_var
	ld.a	%a12, [%a2] 4
.LVL61:
	.loc 2 300 0
	mov	%d15, 1
	st.b	[%a15] 16, %d15
	.loc 2 301 0
	st.b	[%a15] 17, %d9
.LVL62:
	.loc 2 527 0
	ld.bu	%d15, [%a15] 16
	jne	%d15, 1, .L30
	j	.L29
.LVL63:
.L34:
.LBE598:
	.loc 2 582 0
	mov	%d2, %d5
	ret
.LFE109:
	.size	StartOS, .-StartOS
	.align 1
	.global	GetActiveApplicationMode
	.type	GetActiveApplicationMode, @function
GetActiveApplicationMode:
.LFB110:
	.loc 2 589 0
	mov.aa	%a14, %SP
.LCFI8:
	.loc 2 598 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL64:
	.loc 2 604 0
	ld.bu	%d15, [%a15] 16
	.loc 2 607 0
	mov	%d2, 255
	.loc 2 604 0
	jz	%d15, .L36
	.loc 2 605 0
	ld.bu	%d2, [%a15] 17
.LVL65:
.L36:
	.loc 2 613 0
	ret
.LFE110:
	.size	GetActiveApplicationMode, .-GetActiveApplicationMode
	.align 1
	.global	ActivateTask
	.type	ActivateTask, @function
ActivateTask:
.LFB111:
	.loc 2 620 0
.LVL66:
	mov.aa	%a14, %SP
.LCFI9:
.LVL67:
.LBB599:
.LBB600:
	.loc 1 276 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 8
.LBE600:
.LBE599:
	.loc 2 656 0
	mov	%d8, 3
	.loc 2 655 0
	jge.u	%d4, %d15, .L39
.LBB601:
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
.LBB602:
.LBB603:
.LBB604:
.LBB605:
.LBB606:
.LBB607:
.LBB608:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d9, LO:65068
	# 0 "" 2
.LVL69:
#NO_APP
.LBE608:
.LBE607:
.LBE606:
	.loc 3 365 0
	and	%d15, %d9, 255
.LVL70:
	ge.u	%d15, %d15, 17
.LVL71:
	jnz	%d15, .L40
.LBB609:
	.loc 3 366 0
	mov	%d15, %d9
.LVL72:
	mov	%d2, 17
	insert	%d15, %d15, %d2, 0, 8
.LVL73:
.LBB610:
.LBB611:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL74:
#NO_APP
.L40:
.LBE611:
.LBE610:
.LBE609:
.LBE605:
.LBE604:
.LBE603:
	.loc 2 665 0
	mov.aa	%a4, %a15
	call	osEE_task_activated
.LVL75:
	mov	%d8, %d2
.LVL76:
	.loc 2 667 0
	jnz	%d2, .L41
	.loc 2 668 0
	movh.a	%a4, hi:osEE_kdb_var
	lea	%a4, [%a4] lo:osEE_kdb_var
	mov.aa	%a5, %a15
	call	osEE_scheduler_task_activated
.LVL77:
.L41:
.LBB612:
.LBB613:
.LBB614:
.LBB615:
.LBB616:
.LBB617:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL78:
#NO_APP
	mov	%d15, %d3
.LVL79:
	and	%d3, %d3, 255
.LVL80:
.LBE617:
.LBE616:
.LBE615:
	.loc 3 383 0
	and	%d2, %d9, 255
	jeq	%d3, %d2, .L39
.LVL81:
	insert	%d15, %d15, %d2, 0, 8
.LVL82:
.LBB618:
.LBB619:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL83:
#NO_APP
.L39:
.LBE619:
.LBE618:
.LBE614:
.LBE613:
.LBE612:
.LBE602:
.LBE601:
	.loc 2 692 0
	mov	%d2, %d8
	ret
.LFE111:
	.size	ActivateTask, .-ActivateTask
	.align 1
	.global	ChainTask
	.type	ChainTask, @function
ChainTask:
.LFB112:
	.loc 2 699 0
.LVL84:
	mov.aa	%a14, %SP
.LCFI10:
	.loc 2 711 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL85:
	.loc 2 713 0
	ld.w	%d3, [%a15]0
.LVL86:
.LBB652:
.LBB653:
	.loc 1 276 0
	movh.a	%a2, hi:osEE_kdb_var
	lea	%a2, [%a2] lo:osEE_kdb_var
	ld.w	%d15, [%a2] 8
.LBE653:
.LBE652:
	.loc 2 746 0
	mov	%d2, 3
	.loc 2 745 0
	jge.u	%d4, %d15, .L57
.LBB654:
	.loc 2 749 0
	movh.a	%a2, hi:osEE_kdb_var
	lea	%a2, [%a2] lo:osEE_kdb_var
	ld.a	%a2, [%a2] 4
	addsc.a	%a2, %a2, %d4, 2
	ld.a	%a12, [%a2]0
.LVL87:
	.loc 2 771 0
	ld.bu	%d15, [%a12] 20
	jge.u	%d15, 2, .L57
.LBB655:
	.loc 2 775 0
	ld.bu	%d15, [%a15] 28
	jz	%d15, .L47
	.loc 2 776 0
	mov	%d15, 0
	st.b	[%a15] 28, %d15
.LVL88:
.LBB656:
.LBB657:
.LBB658:
.LBB659:
	.loc 3 265 0
	ld.w	%d15, [%a15] 20
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL89:
#NO_APP
.L47:
.LBE659:
.LBE658:
.LBE657:
.LBE656:
	.loc 2 779 0
	ld.bu	%d15, [%a15] 30
	jz	%d15, .L48
	.loc 2 780 0
	mov	%d15, 0
	st.b	[%a15] 30, %d15
.LBB660:
.LBB661:
	.loc 3 282 0
#APP
	# 282 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	enable
	# 0 "" 2
#NO_APP
.L48:
.LBE661:
.LBE660:
.LBB662:
.LBB663:
.LBB664:
.LBB665:
.LBB666:
.LBB667:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL90:
#NO_APP
.LBE667:
.LBE666:
.LBE665:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL91:
	ge.u	%d15, %d15, 17
.LVL92:
	jnz	%d15, .L49
.LBB668:
	.loc 3 366 0
	mov	%d15, %d8
.LVL93:
	mov	%d2, 17
	insert	%d15, %d15, %d2, 0, 8
.LVL94:
.LBB669:
.LBB670:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL95:
#NO_APP
.L49:
.LBE670:
.LBE669:
.LBE668:
.LBE664:
.LBE663:
.LBE662:
	.loc 2 787 0
	mov.d	%d15, %a12
.LVL96:
	jne	%d15, %d3, .L50
.LVL97:
	.loc 2 789 0
	ld.a	%a15, [%a12] 12
.LVL98:
	mov	%d15, 5
.LVL99:
	st.b	[%a15] 2, %d15
.LVL100:
	j	.L51
.LVL101:
.L50:
	.loc 2 792 0
	mov.aa	%a4, %a12
	call	osEE_task_activated
.LVL102:
	.loc 2 793 0
	jnz	%d2, .L52
	.loc 2 794 0
	movh.a	%a4, hi:osEE_kdb_var
	lea	%a4, [%a4] lo:osEE_kdb_var
	mov.aa	%a5, %a12
	call	osEE_scheduler_task_insert
.LVL103:
	j	.L51
.LVL104:
.L53:
	insert	%d15, %d15, %d8, 0, 8
.LVL105:
.LBB671:
.LBB672:
.LBB673:
.LBB674:
.LBB675:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
#NO_APP
	ret
.LVL106:
.L51:
.LBE675:
.LBE674:
.LBE673:
.LBE672:
.LBE671:
.LBB681:
.LBB682:
	.loc 1 172 0
	movh.a	%a15, hi:osEE_cdb_var
.LVL107:
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL108:
.LBE682:
.LBE681:
.LBB683:
.LBB684:
	.loc 4 141 0
	ld.a	%a15, [%a15]0
	ld.a	%a4, [%a15] 4
	mov.a	%a5, 0
	j	osEE_hal_terminate_ctx
.LVL109:
.L52:
.LBE684:
.LBE683:
.LBB685:
.LBB680:
.LBB679:
.LBB676:
.LBB677:
.LBB678:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL110:
#NO_APP
	mov	%d15, %d3
.LVL111:
	and	%d3, %d3, 255
.LVL112:
.LBE678:
.LBE677:
.LBE676:
	.loc 3 383 0
	and	%d8, %d8, 255
.LVL113:
	jne	%d3, %d8, .L53
.LVL114:
.L57:
.LBE679:
.LBE680:
.LBE685:
.LBE655:
.LBE654:
	.loc 2 822 0
	ret
.LFE112:
	.size	ChainTask, .-ChainTask
	.align 1
	.global	TerminateTask
	.type	TerminateTask, @function
TerminateTask:
.LFB113:
	.loc 2 829 0
	mov.aa	%a14, %SP
.LCFI11:
	.loc 2 840 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL115:
	.loc 2 842 0
	ld.a	%a2, [%a15]0
.LVL116:
.LBB704:
	.loc 2 902 0
	ld.bu	%d15, [%a15] 28
	jz	%d15, .L59
	.loc 2 903 0
	mov	%d15, 0
	st.b	[%a15] 28, %d15
.LVL117:
.LBB705:
.LBB706:
.LBB707:
.LBB708:
	.loc 3 265 0
	ld.w	%d15, [%a15] 20
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL118:
#NO_APP
.L59:
.LBE708:
.LBE707:
.LBE706:
.LBE705:
	.loc 2 906 0
	ld.bu	%d15, [%a15] 30
	jz	%d15, .L60
	.loc 2 907 0
	mov	%d15, 0
	st.b	[%a15] 30, %d15
.LBB709:
.LBB710:
	.loc 3 282 0
#APP
	# 282 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	enable
	# 0 "" 2
#NO_APP
.L60:
.LBE710:
.LBE709:
.LBB711:
.LBB712:
.LBB713:
.LBB714:
.LBB715:
.LBB716:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL119:
#NO_APP
.LBE716:
.LBE715:
.LBE714:
	.loc 3 365 0
	and	%d2, %d15, 255
.LVL120:
	ge.u	%d2, %d2, 17
.LVL121:
	jnz	%d2, .L61
.LVL122:
	mov	%d2, 17
	insert	%d15, %d15, %d2, 0, 8
.LVL123:
.LBB717:
.LBB718:
.LBB719:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL124:
#NO_APP
.L61:
.LBE719:
.LBE718:
.LBE717:
.LBE713:
.LBE712:
.LBE711:
.LBB720:
.LBB721:
	.loc 4 141 0
	ld.a	%a4, [%a2] 4
	mov.a	%a5, 0
	j	osEE_hal_terminate_ctx
.LVL125:
.LBE721:
.LBE720:
.LBE704:
.LFE113:
	.size	TerminateTask, .-TerminateTask
	.align 1
	.global	Schedule
	.type	Schedule, @function
Schedule:
.LFB114:
	.loc 2 944 0
	mov.aa	%a14, %SP
.LCFI12:
.LVL126:
	.loc 2 952 0
	movh.a	%a15, hi:osEE_cdb_var
	.loc 2 953 0
	ld.a	%a15, [%a15] lo:osEE_cdb_var
	ld.a	%a15, [%a15]0
.LVL127:
	.loc 2 954 0
	ld.a	%a12, [%a15] 12
.LVL128:
	.loc 2 1003 0
	ld.bu	%d2, [%a12] 1
	ld.bu	%d15, [%a15] 29
	jne	%d2, %d15, .L63
.LBB722:
.LBB723:
.LBB724:
.LBB725:
.LBB726:
.LBB727:
.LBB728:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL129:
#NO_APP
.LBE728:
.LBE727:
.LBE726:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL130:
	ge.u	%d15, %d15, 17
.LVL131:
	jnz	%d15, .L64
.LBB729:
	.loc 3 366 0
	mov	%d15, %d8
.LVL132:
	mov	%d2, 17
	insert	%d15, %d15, %d2, 0, 8
.LVL133:
.LBB730:
.LBB731:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL134:
#NO_APP
.L64:
.LBE731:
.LBE730:
.LBE729:
.LBE725:
.LBE724:
.LBE723:
	.loc 2 1009 0
	ld.bu	%d15, [%a15] 28
.LVL135:
	st.b	[%a12] 1, %d15
	.loc 2 1011 0
	movh.a	%a4, hi:osEE_kdb_var
	lea	%a4, [%a4] lo:osEE_kdb_var
	call	osEE_scheduler_task_preemption_point
.LVL136:
	.loc 2 1013 0
	ld.bu	%d15, [%a15] 29
	st.b	[%a12] 1, %d15
.LVL137:
.LBB732:
.LBB733:
.LBB734:
.LBB735:
.LBB736:
.LBB737:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL138:
#NO_APP
	mov	%d15, %d3
.LVL139:
	and	%d3, %d3, 255
.LVL140:
.LBE737:
.LBE736:
.LBE735:
	.loc 3 383 0
	and	%d2, %d8, 255
	jeq	%d3, %d2, .L63
.LVL141:
	insert	%d15, %d15, %d2, 0, 8
.LVL142:
.LBB738:
.LBB739:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL143:
#NO_APP
.L63:
.LBE739:
.LBE738:
.LBE734:
.LBE733:
.LBE732:
.LBE722:
	.loc 2 1037 0
	mov	%d2, 0
	ret
.LFE114:
	.size	Schedule, .-Schedule
	.align 1
	.global	GetResource
	.type	GetResource, @function
GetResource:
.LFB115:
	.loc 2 1045 0
.LVL144:
	mov.aa	%a14, %SP
.LCFI13:
.LVL145:
	.loc 2 1055 0
	movh.a	%a15, hi:osEE_cdb_var
	.loc 2 1057 0
	ld.a	%a15, [%a15] lo:osEE_cdb_var
	ld.a	%a4, [%a15]0
.LVL146:
.LBB740:
.LBB741:
	.loc 1 291 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 16
.LBE741:
.LBE740:
	.loc 2 1084 0
	mov	%d2, 3
	.loc 2 1083 0
	jge.u	%d4, %d15, .L67
.LBB742:
	.loc 2 1088 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 12
	addsc.a	%a15, %a15, %d4, 2
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
.LBB743:
.LBB744:
.LBB745:
.LBB746:
.LBB747:
.LBB748:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d2, LO:65068
	# 0 "" 2
.LVL152:
#NO_APP
.LBE748:
.LBE747:
.LBE746:
	.loc 3 365 0
	and	%d3, %d2, 255
.LVL153:
	ge.u	%d3, %d3, 17
.LVL154:
	jnz	%d3, .L68
.LBB749:
	.loc 3 366 0
	mov	%d3, %d2
.LVL155:
	mov	%d5, 17
	insert	%d3, %d3, %d5, 0, 8
.LVL156:
.LBB750:
.LBB751:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d3
	isync
	# 0 "" 2
.LVL157:
#NO_APP
.L68:
.LBE751:
.LBE750:
.LBE749:
	.loc 3 372 0
	mov	%d3, %d2
.LVL158:
.LBE745:
.LBE744:
.LBE743:
	.loc 2 1118 0
	jge.u	%d4, %d15, .L69
	.loc 2 1119 0
	st.b	[%a15] 1, %d15
.LVL159:
.LBB752:
.LBB753:
	.loc 3 326 0
	extr	%d5, %d15, 0, 8
	.loc 3 328 0
	ne	%d7, %d15, 255
.LVL160:
	.loc 3 333 0
	and	%d15, %d15, 127
.LVL161:
	.loc 3 332 0
	add	%d15, 1
	.loc 3 330 0
	andn	%d6, %d2, ~(-257)
	andn	%d3, %d2, ~(-256)
	or	%d3, %d15
	.loc 3 327 0
	andn	%d2, %d2, ~(-256)
.LVL162:
	sel	%d3, %d7, %d3, %d6
	lt	%d5, %d5, 0
	sel	%d3, %d5, %d3, %d2
.L69:
.LVL163:
.LBE753:
.LBE752:
	.loc 2 1123 0
	st.a	[%a2] 8, %a4
.LVL164:
.LBB754:
.LBB755:
.LBB756:
.LBB757:
.LBB758:
.LBB759:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d5, LO:65068
	# 0 "" 2
.LVL165:
#NO_APP
	mov	%d15, %d5
.LVL166:
	and	%d5, %d5, 255
.LVL167:
.LBE759:
.LBE758:
.LBE757:
	.loc 3 383 0
	and	%d2, %d3, 255
	jeq	%d5, %d2, .L72
.LVL168:
	insert	%d15, %d15, %d2, 0, 8
.LVL169:
.LBB760:
.LBB761:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL170:
#NO_APP
.L72:
.LBE761:
.LBE760:
.LBE756:
.LBE755:
.LBE754:
	.loc 2 1127 0
	ld.w	%d15, [%a15] 4
.LVL171:
	st.w	[%a2]0, %d15
	.loc 2 1128 0
	st.b	[%a2] 4, %d4
	.loc 2 1129 0
	st.a	[%a15] 4, %a3
.LVL172:
	.loc 2 1131 0
	mov	%d2, 0
.LVL173:
.L67:
.LBE742:
	.loc 2 1149 0
	ret
.LFE115:
	.size	GetResource, .-GetResource
	.align 1
	.global	ReleaseResource
	.type	ReleaseResource, @function
ReleaseResource:
.LFB116:
	.loc 2 1156 0
.LVL174:
	mov.aa	%a14, %SP
.LCFI14:
.LVL175:
	.loc 2 1165 0
	movh.a	%a15, hi:osEE_cdb_var
	.loc 2 1166 0
	ld.a	%a15, [%a15] lo:osEE_cdb_var
	ld.a	%a3, [%a15]0
.LVL176:
.LBB762:
.LBB763:
	.loc 1 291 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 16
.LBE763:
.LBE762:
	.loc 2 1192 0
	mov	%d2, 3
	.loc 2 1191 0
	jge.u	%d4, %d15, .L75
.LBB764:
	.loc 2 1196 0
	ld.a	%a15, [%a3] 12
.LVL177:
	.loc 2 1198 0
	movh.a	%a2, hi:osEE_kdb_var
	lea	%a2, [%a2] lo:osEE_kdb_var
	ld.a	%a2, [%a2] 12
	addsc.a	%a2, %a2, %d4, 2
	.loc 2 1200 0
	ld.a	%a2, [%a2]0
	ld.a	%a2, [%a2]0
.LVL178:
.LBB765:
.LBB766:
.LBB767:
.LBB768:
.LBB769:
.LBB770:
.LBB771:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL179:
#NO_APP
.LBE771:
.LBE770:
.LBE769:
	.loc 3 365 0
	and	%d2, %d15, 255
.LVL180:
	ge.u	%d2, %d2, 17
.LVL181:
	jnz	%d2, .L76
.LBB772:
	.loc 3 366 0
	mov	%d2, %d15
.LVL182:
	mov	%d3, 17
	insert	%d2, %d2, %d3, 0, 8
.LVL183:
.LBB773:
.LBB774:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d2
	isync
	# 0 "" 2
.LVL184:
#NO_APP
.L76:
.LBE774:
.LBE773:
.LBE772:
.LBE768:
.LBE767:
.LBE766:
	.loc 2 1218 0
	ld.a	%a4, [%a15] 4
	ld.a	%a4, [%a4]0
	ld.w	%d2, [%a4]0
.LVL185:
	st.w	[%a15] 4, %d2
.LVL186:
	.loc 2 1220 0
	jz	%d2, .L77
.LBB775:
	.loc 2 1222 0
	ld.bu	%d3, [%a2] 4
.LVL187:
	.loc 2 1224 0
	st.b	[%a15] 1, %d3
.LVL188:
.LBB776:
.LBB777:
	.loc 3 326 0
	extr	%d4, %d3, 0, 8
.LVL189:
	.loc 3 328 0
	ne	%d6, %d3, 255
	.loc 3 333 0
	and	%d3, %d3, 127
.LVL190:
	.loc 3 332 0
	add	%d3, 1
	.loc 3 330 0
	andn	%d5, %d15, ~(-257)
	andn	%d2, %d15, ~(-256)
	or	%d2, %d3
	.loc 3 327 0
	andn	%d15, %d15, ~(-256)
.LVL191:
	sel	%d2, %d6, %d2, %d5
	lt	%d4, %d4, 0
	sel	%d15, %d4, %d2, %d15
	j	.L79
.LVL192:
.L77:
.LBE777:
.LBE776:
.LBE775:
.LBB778:
	.loc 2 1228 0
	ld.bu	%d5, [%a3] 29
.LVL193:
	.loc 2 1230 0
	st.b	[%a15] 1, %d5
.LVL194:
.LBB779:
.LBB780:
	.loc 3 326 0
	extr	%d6, %d5, 0, 8
	.loc 3 328 0
	ne	%d4, %d5, 255
.LVL195:
	.loc 3 333 0
	and	%d5, %d5, 127
.LVL196:
	.loc 3 332 0
	add	%d5, 1
	.loc 3 330 0
	andn	%d2, %d15, ~(-257)
	andn	%d3, %d15, ~(-256)
	or	%d3, %d5
	.loc 3 327 0
	andn	%d5, %d15, ~(-256)
	sel	%d3, %d4, %d3, %d2
	lt	%d15, %d6, 0
.LVL197:
	sel	%d15, %d15, %d3, %d5
.L79:
.LVL198:
.LBE780:
.LBE779:
.LBE778:
	.loc 2 1234 0
	mov	%d2, 0
	st.w	[%a2] 8, %d2
	.loc 2 1237 0
	movh.a	%a4, hi:osEE_kdb_var
	lea	%a4, [%a4] lo:osEE_kdb_var
	call	osEE_scheduler_task_preemption_point
.LVL199:
.LBB781:
.LBB782:
.LBB783:
.LBB784:
.LBB785:
.LBB786:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d5, LO:65068
	# 0 "" 2
.LVL200:
#NO_APP
	mov	%d3, %d5
.LVL201:
	and	%d5, %d5, 255
.LVL202:
.LBE786:
.LBE785:
.LBE784:
	.loc 3 383 0
	and	%d15, 255
.LVL203:
	jeq	%d5, %d15, .L83
.LVL204:
	insert	%d3, %d3, %d15, 0, 8
.LVL205:
.LBB787:
.LBB788:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d3
	isync
	# 0 "" 2
.LVL206:
#NO_APP
.L83:
.LBE788:
.LBE787:
.LBE783:
.LBE782:
.LBE781:
	.loc 2 1241 0
	mov	%d2, 0
.LVL207:
.L75:
.LBE765:
.LBE764:
	.loc 2 1259 0
	ret
.LFE116:
	.size	ReleaseResource, .-ReleaseResource
	.align 1
	.global	ShutdownOS
	.type	ShutdownOS, @function
ShutdownOS:
.LFB117:
	.loc 2 1267 0
.LVL208:
	mov.aa	%a14, %SP
.LCFI15:
	.loc 2 1275 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL209:
.LBB789:
.LBB790:
.LBB791:
.LBB792:
.LBB793:
.LBB794:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d2, LO:65068
	# 0 "" 2
.LVL210:
#NO_APP
.LBE794:
.LBE793:
.LBE792:
	.loc 3 365 0
	and	%d15, %d2, 255
.LVL211:
	ge.u	%d15, %d15, 17
.LVL212:
	jnz	%d15, .L86
.LBB795:
	.loc 3 366 0
	mov	%d15, %d2
.LVL213:
	mov	%d3, 17
	insert	%d15, %d15, %d3, 0, 8
.LVL214:
.LBB796:
.LBB797:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL215:
#NO_APP
.L86:
.LBE797:
.LBE796:
.LBE795:
.LBE791:
.LBE790:
.LBE789:
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
.LBB798:
.LBB799:
.LBB800:
.LBB801:
.LBB802:
.LBB803:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL220:
#NO_APP
	mov	%d15, %d3
.LVL221:
	and	%d3, %d3, 255
.LVL222:
.LBE803:
.LBE802:
.LBE801:
	.loc 3 383 0
	and	%d2, %d2, 255
.LVL223:
	jeq	%d3, %d2, .L88
.LVL224:
	insert	%d15, %d15, %d2, 0, 8
.LVL225:
.LBB804:
.LBB805:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL226:
#NO_APP
.L88:
.LBE805:
.LBE804:
.LBE800:
.LBE799:
.LBE798:
	.loc 2 1327 0
	mov	%d2, 7
	ret
.LFE117:
	.size	ShutdownOS, .-ShutdownOS
	.align 1
	.global	GetTaskID
	.type	GetTaskID, @function
GetTaskID:
.LFB118:
	.loc 2 1334 0
.LVL227:
	mov.aa	%a14, %SP
.LCFI16:
	.loc 2 1343 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL228:
	.loc 2 1374 0
	mov	%d2, 14
	.loc 2 1373 0
	jz.a	%a4, .L90
.LVL229:
.LBB806:
	.loc 2 1379 0
	ld.a	%a2, [%a15]0
.LVL230:
	.loc 2 1389 0
	ld.bu	%d15, [%a2] 20
	jge.u	%d15, 2, .L91
	.loc 2 1391 0
	ld.w	%d2, [%a2] 16
.LVL231:
	j	.L92
.LVL232:
.L91:
	.loc 2 1377 0
	mov	%d2, -1
	.loc 2 1392 0
	jne	%d15, 2, .L92
.LBB807:
	.loc 2 1396 0
	ld.a	%a15, [%a15] 12
.LVL233:
	ld.a	%a15, [%a15]0
.LVL234:
	.loc 2 1398 0
	jz.a	%a15, .L92
.LBB808:
	.loc 2 1400 0
	ld.a	%a2, [%a15] 4
.LVL235:
	.loc 2 1401 0
	ld.bu	%d15, [%a2] 20
	jge.u	%d15, 2, .L94
	j	.L93
.L95:
.LVL236:
	.loc 2 1400 0
	ld.a	%a2, [%a15] 4
	.loc 2 1401 0
	ld.bu	%d15, [%a2] 20
	jge.u	%d15, 2, .L94
.LVL237:
.L93:
	.loc 2 1402 0
	ld.w	%d2, [%a2] 16
.LVL238:
	.loc 2 1403 0
	j	.L92
.LVL239:
.L94:
	.loc 2 1405 0
	ld.a	%a15, [%a15]0
.LVL240:
.LBE808:
	.loc 2 1398 0
	jnz.a	%a15, .L95
.LBE807:
	.loc 2 1377 0
	mov	%d2, -1
.LVL241:
.L92:
	.loc 2 1413 0
	st.w	[%a4]0, %d2
.LVL242:
	.loc 2 1414 0
	mov	%d2, 0
.LVL243:
.L90:
.LBE806:
	.loc 2 1431 0
	ret
.LFE118:
	.size	GetTaskID, .-GetTaskID
	.align 1
	.global	GetTaskState
	.type	GetTaskState, @function
GetTaskState:
.LFB119:
	.loc 2 1439 0
.LVL244:
	mov.aa	%a14, %SP
.LCFI17:
.LVL245:
	.loc 2 1480 0
	mov	%d2, 14
	.loc 2 1479 0
	jz.a	%a4, .L101
.LVL246:
.LBB809:
.LBB810:
	.loc 1 276 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 8
.LBE810:
.LBE809:
	.loc 2 1483 0
	mov	%d2, 3
	.loc 2 1482 0
	jge.u	%d4, %d15, .L101
.LVL247:
.LBB811:
	.loc 2 1487 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d4, 2
	.loc 2 1490 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 12
	.loc 2 1491 0
	ld.bu	%d15, [%a15] 2
	.loc 2 1511 0
	mov	%d2, 0
	.loc 2 1491 0
	jge.u	%d15, 6, .L101
	movh.a	%a15, hi:.L103
	lea	%a15, [%a15] lo:.L103
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L103:
	.code32
	j	.L102
	.code32
	j	.L104
	.code32
	j	.L104
	.code32
	j	.L105
	.code32
	j	.L106
	.code32
	j	.L106
.L102:
	.loc 2 1493 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
.LVL248:
	.loc 2 1511 0
	mov	%d2, 0
	.loc 2 1494 0
	ret
.LVL249:
.L104:
	.loc 2 1497 0
	mov	%d15, 1
	st.b	[%a4]0, %d15
.LVL250:
	.loc 2 1511 0
	mov	%d2, 0
	.loc 2 1498 0
	ret
.LVL251:
.L105:
	.loc 2 1500 0
	mov	%d15, 3
	st.b	[%a4]0, %d15
.LVL252:
	.loc 2 1511 0
	mov	%d2, 0
	.loc 2 1501 0
	ret
.LVL253:
.L106:
	.loc 2 1504 0
	mov	%d15, 4
	st.b	[%a4]0, %d15
.LVL254:
	.loc 2 1511 0
	mov	%d2, 0
.LVL255:
.L101:
.LBE811:
	.loc 2 1529 0
	ret
.LFE119:
	.size	GetTaskState, .-GetTaskState
	.align 1
	.global	WaitEvent
	.type	WaitEvent, @function
WaitEvent:
.LFB120:
	.loc 2 1945 0
.LVL256:
	mov.aa	%a14, %SP
.LCFI18:
	.loc 2 1950 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a12, [%a15] lo:osEE_cdb_var
.LVL257:
	.loc 2 1952 0
	ld.a	%a13, [%a12]0
.LVL258:
	.loc 2 1954 0
	ld.a	%a15, [%a13] 12
.LVL259:
.LBB812:
.LBB813:
.LBB814:
.LBB815:
.LBB816:
.LBB817:
.LBB818:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL260:
#NO_APP
.LBE818:
.LBE817:
.LBE816:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL261:
	ge.u	%d15, %d15, 17
.LVL262:
	jnz	%d15, .L111
.LBB819:
	.loc 3 366 0
	mov	%d15, %d8
.LVL263:
	mov	%d2, 17
	insert	%d15, %d15, %d2, 0, 8
.LVL264:
.LBB820:
.LBB821:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL265:
#NO_APP
.L111:
.LBE821:
.LBE820:
.LBE819:
.LBE815:
.LBE814:
.LBE813:
	.loc 2 2008 0
	ld.w	%d15, [%a15] 12
.LVL266:
	and	%d15, %d4
	jnz	%d15, .L112
	.loc 2 2010 0
	st.w	[%a15] 8, %d4
	.loc 2 2013 0
	movh.a	%a4, hi:osEE_cdb_var
	lea	%a4, [%a4] lo:osEE_cdb_var
	lea	%a5, [%a12] 4
	call	osEE_scheduler_core_pop_running
.LVL267:
	.loc 2 2012 0
	st.a	[%a15] 16, %a2
	.loc 2 2015 0
	mov	%d15, 3
	st.b	[%a15] 2, %d15
.LVL268:
	.loc 2 2019 0
	mov.aa	%a4, %a13
	ld.a	%a5, [%a12]0
	call	osEE_change_context_from_running
.LVL269:
	.loc 2 2022 0
	mov	%d15, 0
	st.w	[%a15] 8, %d15
.LVL270:
.L112:
.LBB822:
.LBB823:
.LBB824:
.LBB825:
.LBB826:
.LBB827:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL271:
#NO_APP
	mov	%d15, %d3
.LVL272:
	and	%d3, %d3, 255
.LVL273:
.LBE827:
.LBE826:
.LBE825:
	.loc 3 383 0
	and	%d2, %d8, 255
	jeq	%d3, %d2, .L113
.LVL274:
	insert	%d15, %d15, %d2, 0, 8
.LVL275:
.LBB828:
.LBB829:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL276:
#NO_APP
.L113:
.LBE829:
.LBE828:
.LBE824:
.LBE823:
.LBE822:
.LBE812:
	.loc 2 2047 0
	mov	%d2, 0
	ret
.LFE120:
	.size	WaitEvent, .-WaitEvent
	.align 1
	.global	SetEvent
	.type	SetEvent, @function
SetEvent:
.LFB121:
	.loc 2 2055 0
.LVL277:
	mov.aa	%a14, %SP
.LCFI19:
	sub.a	%SP, 8
.LVL278:
.LBB830:
.LBB831:
	.loc 1 276 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 8
.LBE831:
.LBE830:
	.loc 2 2103 0
	jlt.u	%d4, %d15, .L115
	.loc 2 2104 0
	mov	%d15, 3
	st.b	[%a14] -1, %d15
	j	.L116
.L115:
.LBB832:
	.loc 2 2109 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d4, 2
	ld.a	%a4, [%a15]0
.LVL279:
.LBB833:
.LBB834:
.LBB835:
.LBB836:
.LBB837:
.LBB838:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL280:
#NO_APP
.LBE838:
.LBE837:
.LBE836:
	.loc 3 365 0
	and	%d15, %d8, 255
.LVL281:
	ge.u	%d15, %d15, 17
.LVL282:
	jnz	%d15, .L117
.LBB839:
	.loc 3 366 0
	mov	%d15, %d8
.LVL283:
	mov	%d2, 17
	insert	%d15, %d15, %d2, 0, 8
.LVL284:
.LBB840:
.LBB841:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL285:
#NO_APP
.L117:
	mov	%d4, %d5
.LVL286:
.LBE841:
.LBE840:
.LBE839:
.LBE835:
.LBE834:
.LBE833:
	.loc 2 2113 0
	lea	%a5, [%a14] -1
	call	osEE_task_event_set_mask
.LVL287:
	.loc 2 2115 0
	jz.a	%a2, .L118
	.loc 2 2117 0
	movh.a	%a4, hi:osEE_kdb_var
	lea	%a4, [%a4] lo:osEE_kdb_var
	mov.aa	%a5, %a2
	call	osEE_scheduler_task_unblocked
.LVL288:
	jz	%d2, .L118
	.loc 2 2119 0
	movh.a	%a4, hi:osEE_kdb_var
	lea	%a4, [%a4] lo:osEE_kdb_var
	call	osEE_scheduler_task_preemption_point
.LVL289:
.L118:
.LBB842:
.LBB843:
.LBB844:
.LBB845:
.LBB846:
.LBB847:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL290:
#NO_APP
	mov	%d15, %d3
.LVL291:
	and	%d3, %d3, 255
.LVL292:
.LBE847:
.LBE846:
.LBE845:
	.loc 3 383 0
	and	%d2, %d8, 255
	jeq	%d3, %d2, .L116
.LVL293:
	insert	%d15, %d15, %d2, 0, 8
.LVL294:
.LBB848:
.LBB849:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL295:
#NO_APP
.L116:
.LBE849:
.LBE848:
.LBE844:
.LBE843:
.LBE842:
.LBE832:
	.loc 2 2141 0
	ld.bu	%d2, [%a14] -1
	ret
.LFE121:
	.size	SetEvent, .-SetEvent
	.align 1
	.global	GetEvent
	.type	GetEvent, @function
GetEvent:
.LFB122:
	.loc 2 2149 0
.LVL296:
	mov.aa	%a14, %SP
.LCFI20:
.LVL297:
.LBB850:
.LBB851:
	.loc 1 276 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 8
.LBE851:
.LBE850:
	.loc 2 2203 0
	mov	%d2, 3
	.loc 2 2202 0
	jge.u	%d4, %d15, .L121
.LVL298:
.LBB852:
	.loc 2 2207 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d4, 2
	.loc 2 2209 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 12
.LVL299:
	.loc 2 2221 0
	mov	%d2, 14
	.loc 2 2220 0
	jz.a	%a4, .L121
	.loc 2 2225 0
	ld.w	%d15, [%a15] 12
	st.w	[%a4]0, %d15
.LVL300:
	.loc 2 2227 0
	mov	%d2, 0
.LVL301:
.L121:
.LBE852:
	.loc 2 2247 0
	ret
.LFE122:
	.size	GetEvent, .-GetEvent
	.align 1
	.global	ClearEvent
	.type	ClearEvent, @function
ClearEvent:
.LFB123:
	.loc 2 2254 0
.LVL302:
	mov.aa	%a14, %SP
.LCFI21:
.LVL303:
	.loc 2 2263 0
	movh.a	%a15, hi:osEE_cdb_var
	.loc 2 2265 0
	ld.a	%a15, [%a15] lo:osEE_cdb_var
	.loc 2 2267 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 12
.LVL304:
.LBB853:
.LBB854:
.LBB855:
.LBB856:
.LBB857:
.LBB858:
.LBB859:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d2, LO:65068
	# 0 "" 2
.LVL305:
#NO_APP
.LBE859:
.LBE858:
.LBE857:
	.loc 3 365 0
	and	%d15, %d2, 255
.LVL306:
	ge.u	%d15, %d15, 17
.LVL307:
	jnz	%d15, .L125
.LBB860:
	.loc 3 366 0
	mov	%d15, %d2
.LVL308:
	mov	%d3, 17
	insert	%d15, %d15, %d3, 0, 8
.LVL309:
.LBB861:
.LBB862:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL310:
#NO_APP
.L125:
.LBE862:
.LBE861:
.LBE860:
.LBE856:
.LBE855:
.LBE854:
	.loc 2 2305 0
	ld.w	%d15, [%a15] 12
.LVL311:
	andn	%d4, %d15, %d4
.LVL312:
	st.w	[%a15] 12, %d4
.LVL313:
.LBB863:
.LBB864:
.LBB865:
.LBB866:
.LBB867:
.LBB868:
	.loc 3 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL314:
#NO_APP
	mov	%d15, %d3
.LVL315:
	and	%d3, %d3, 255
.LVL316:
.LBE868:
.LBE867:
.LBE866:
	.loc 3 383 0
	and	%d2, %d2, 255
.LVL317:
	jeq	%d3, %d2, .L126
.LVL318:
	insert	%d15, %d15, %d2, 0, 8
.LVL319:
.LBB869:
.LBB870:
	.loc 3 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL320:
#NO_APP
.L126:
.LBE870:
.LBE869:
.LBE865:
.LBE864:
.LBE863:
.LBE853:
	.loc 2 2326 0
	mov	%d2, 0
	ret
.LFE123:
	.size	ClearEvent, .-ClearEvent
	.align 1
	.global	GetISRID
	.type	GetISRID, @function
GetISRID:
.LFB124:
	.loc 2 3316 0
	mov.aa	%a14, %SP
.LCFI22:
.LBB871:
.LBB872:
	.loc 1 172 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
	ld.a	%a15, [%a15]0
.LBE872:
.LBE871:
	.loc 2 3321 0
	ld.bu	%d15, [%a15] 20
	.loc 2 3324 0
	mov	%d2, -1
	.loc 2 3321 0
	jne	%d15, 2, .L128
	.loc 2 3322 0
	ld.w	%d2, [%a15] 16
.LVL321:
.L128:
	.loc 2 3328 0
	ret
.LFE124:
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
	.uaword	.LFB100
	.uaword	.LFE100-.LFB100
	.byte	0x4
	.uaword	.LCFI0-.LFB100
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB102
	.uaword	.LFE102-.LFB102
	.byte	0x4
	.uaword	.LCFI1-.LFB102
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB103
	.uaword	.LFE103-.LFB103
	.byte	0x4
	.uaword	.LCFI2-.LFB103
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB105
	.uaword	.LFE105-.LFB105
	.byte	0x4
	.uaword	.LCFI3-.LFB105
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB106
	.uaword	.LFE106-.LFB106
	.byte	0x4
	.uaword	.LCFI4-.LFB106
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB107
	.uaword	.LFE107-.LFB107
	.byte	0x4
	.uaword	.LCFI5-.LFB107
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB108
	.uaword	.LFE108-.LFB108
	.byte	0x4
	.uaword	.LCFI6-.LFB108
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.byte	0x4
	.uaword	.LCFI7-.LFB109
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.byte	0x4
	.uaword	.LCFI8-.LFB110
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.byte	0x4
	.uaword	.LCFI9-.LFB111
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.byte	0x4
	.uaword	.LCFI10-.LFB112
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.byte	0x4
	.uaword	.LCFI11-.LFB113
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.byte	0x4
	.uaword	.LCFI12-.LFB114
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.byte	0x4
	.uaword	.LCFI13-.LFB115
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB116
	.uaword	.LFE116-.LFB116
	.byte	0x4
	.uaword	.LCFI14-.LFB116
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB117
	.uaword	.LFE117-.LFB117
	.byte	0x4
	.uaword	.LCFI15-.LFB117
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB118
	.uaword	.LFE118-.LFB118
	.byte	0x4
	.uaword	.LCFI16-.LFB118
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB119
	.uaword	.LFE119-.LFB119
	.byte	0x4
	.uaword	.LCFI17-.LFB119
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB120
	.uaword	.LFE120-.LFB120
	.byte	0x4
	.uaword	.LCFI18-.LFB120
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB121
	.uaword	.LFE121-.LFB121
	.byte	0x4
	.uaword	.LCFI19-.LFB121
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB122
	.uaword	.LFE122-.LFB122
	.byte	0x4
	.uaword	.LCFI20-.LFB122
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB123
	.uaword	.LFE123-.LFB123
	.byte	0x4
	.uaword	.LCFI21-.LFB123
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB124
	.uaword	.LFE124-.LFB124
	.byte	0x4
	.uaword	.LCFI22-.LFB124
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE44:
.section .text,"ax",@progbits
.Letext0:
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 6 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 7 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 8 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_hal_internal_types.h"
	.file 9 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 10 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_scheduler_types.h"
	.file 11 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_kernel_types.h"
	.file 12 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_get_kernel_and_core.h"
	.file 13 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_scheduler.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x390d
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -O1 -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\TUNNEL~1\\TC275\\erika\\src\\ee_oo_api_osek.c"
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
	.uaword	0x16b
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
	.uaword	0x1a5
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
	.uaword	0x1d3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x6
	.byte	0x50
	.uaword	0x16b
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
	.uaword	0x256
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
	.uaword	0x234
	.uleb128 0x3
	.string	"OsEE_addr"
	.byte	0x7
	.byte	0x5a
	.uaword	0x278
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x7
	.byte	0x5b
	.uaword	0x1e9
	.uleb128 0x3
	.string	"OsEE_prio"
	.byte	0x7
	.byte	0x8d
	.uaword	0x196
	.uleb128 0x3
	.string	"OsEE_isr_src_id"
	.byte	0x7
	.byte	0x92
	.uaword	0x1c3
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0x74
	.uaword	0x308
	.uleb128 0x8
	.string	"pcxo"
	.byte	0x8
	.byte	0x75
	.uaword	0x224
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"pcxs"
	.byte	0x8
	.byte	0x76
	.uaword	0x224
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"ul"
	.byte	0x8
	.byte	0x7b
	.uaword	0x224
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"pie"
	.byte	0x8
	.byte	0x7c
	.uaword	0x224
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"pcpn"
	.byte	0x8
	.byte	0x7d
	.uaword	0x224
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.byte	0x72
	.uaword	0x328
	.uleb128 0xa
	.string	"reg"
	.byte	0x8
	.byte	0x73
	.uaword	0x27a
	.uleb128 0xa
	.string	"bits"
	.byte	0x8
	.byte	0x82
	.uaword	0x2b2
	.byte	0
	.uleb128 0x3
	.string	"OsEE_pcxi"
	.byte	0x8
	.byte	0x83
	.uaword	0x308
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0xbe
	.uaword	0x370
	.uleb128 0x8
	.string	"ccpn"
	.byte	0x8
	.byte	0xbf
	.uaword	0x224
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"ie"
	.byte	0x8
	.byte	0xc1
	.uaword	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"pipn"
	.byte	0x8
	.byte	0xc2
	.uaword	0x224
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.byte	0xbc
	.uaword	0x390
	.uleb128 0xa
	.string	"reg"
	.byte	0x8
	.byte	0xbd
	.uaword	0x27a
	.uleb128 0xa
	.string	"bits"
	.byte	0x8
	.byte	0xc4
	.uaword	0x339
	.byte	0
	.uleb128 0x3
	.string	"OsEE_icr"
	.byte	0x8
	.byte	0xc5
	.uaword	0x370
	.uleb128 0xb
	.string	"OsEE_CTX_tag"
	.byte	0x10
	.byte	0x8
	.byte	0xf3
	.uaword	0x3ea
	.uleb128 0xc
	.string	"p_ctx"
	.byte	0x8
	.byte	0xf4
	.uaword	0x3ea
	.byte	0
	.uleb128 0xc
	.string	"dummy"
	.byte	0x8
	.byte	0xf5
	.uaword	0x27a
	.byte	0x4
	.uleb128 0xc
	.string	"pcxi"
	.byte	0x8
	.byte	0xf6
	.uaword	0x328
	.byte	0x8
	.uleb128 0xc
	.string	"ra"
	.byte	0x8
	.byte	0xf7
	.uaword	0x267
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x3a0
	.uleb128 0x3
	.string	"OsEE_CTX"
	.byte	0x8
	.byte	0xf8
	.uaword	0x3a0
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0xfb
	.uaword	0x417
	.uleb128 0xc
	.string	"p_tos"
	.byte	0x8
	.byte	0xfc
	.uaword	0x417
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x3f0
	.uleb128 0x3
	.string	"OsEE_SCB"
	.byte	0x8
	.byte	0xfd
	.uaword	0x400
	.uleb128 0xe
	.byte	0x8
	.byte	0x8
	.uahalf	0x100
	.uaword	0x45a
	.uleb128 0xf
	.string	"p_bos"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x417
	.byte	0
	.uleb128 0xf
	.string	"stack_size"
	.byte	0x8
	.uahalf	0x105
	.uaword	0x15d
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"OsEE_SDB"
	.byte	0x8
	.uahalf	0x106
	.uaword	0x46b
	.uleb128 0x11
	.uaword	0x42d
	.uleb128 0xe
	.byte	0xc
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x4aa
	.uleb128 0xf
	.string	"p_sdb"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x4aa
	.byte	0
	.uleb128 0xf
	.string	"p_scb"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x4b0
	.byte	0x4
	.uleb128 0xf
	.string	"isr2_src"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x29b
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x45a
	.uleb128 0xd
	.byte	0x4
	.uaword	0x41d
	.uleb128 0x10
	.string	"OsEE_HDB"
	.byte	0x8
	.uahalf	0x111
	.uaword	0x4c7
	.uleb128 0x11
	.uaword	0x470
	.uleb128 0x3
	.string	"AppModeType"
	.byte	0x9
	.byte	0x60
	.uaword	0x196
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x9
	.byte	0x78
	.uaword	0x27a
	.uleb128 0x3
	.string	"ISRType"
	.byte	0x9
	.byte	0x81
	.uaword	0x27a
	.uleb128 0x3
	.string	"TaskRefType"
	.byte	0x9
	.byte	0x87
	.uaword	0x511
	.uleb128 0xd
	.byte	0x4
	.uaword	0x4df
	.uleb128 0x3
	.string	"TaskPrio"
	.byte	0x9
	.byte	0xc8
	.uaword	0x28a
	.uleb128 0x3
	.string	"TaskActivation"
	.byte	0x9
	.byte	0xf4
	.uaword	0x196
	.uleb128 0x10
	.string	"TaskFunc"
	.byte	0x9
	.uahalf	0x13a
	.uaword	0x54e
	.uleb128 0xd
	.byte	0x4
	.uaword	0x554
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.byte	0x9
	.uahalf	0x145
	.uaword	0x5bd
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
	.uaword	0x556
	.uleb128 0x10
	.string	"TaskExecutionType"
	.byte	0x9
	.uahalf	0x157
	.uaword	0x5bd
	.uleb128 0x13
	.byte	0x1
	.byte	0x9
	.uahalf	0x15d
	.uaword	0x676
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
	.uaword	0x5ee
	.uleb128 0x10
	.string	"TaskStateType"
	.byte	0x9
	.uahalf	0x17e
	.uaword	0x676
	.uleb128 0x10
	.string	"TaskStateRefType"
	.byte	0x9
	.uahalf	0x180
	.uaword	0x6be
	.uleb128 0xd
	.byte	0x4
	.uaword	0x68f
	.uleb128 0x10
	.string	"ResourceType"
	.byte	0x9
	.uahalf	0x20c
	.uaword	0x27a
	.uleb128 0x10
	.string	"EventMaskType"
	.byte	0x9
	.uahalf	0x237
	.uaword	0x27a
	.uleb128 0x10
	.string	"EventMaskRefType"
	.byte	0x9
	.uahalf	0x23f
	.uaword	0x708
	.uleb128 0xd
	.byte	0x4
	.uaword	0x6d9
	.uleb128 0x10
	.string	"MemSize"
	.byte	0x9
	.uahalf	0x2a3
	.uaword	0x15d
	.uleb128 0x13
	.byte	0x1
	.byte	0x9
	.uahalf	0x2b1
	.uaword	0x941
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
	.uaword	0x71e
	.uleb128 0x10
	.string	"StatusType"
	.byte	0x9
	.uahalf	0x2d9
	.uaword	0x941
	.uleb128 0x13
	.byte	0x1
	.byte	0x9
	.uahalf	0x2f4
	.uaword	0xc1d
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
	.uaword	0x96d
	.uleb128 0x10
	.string	"OSServiceIdType"
	.byte	0x9
	.uahalf	0x339
	.uaword	0xc1d
	.uleb128 0xb
	.string	"OsEE_SN_tag"
	.byte	0x8
	.byte	0xa
	.byte	0x4b
	.uaword	0xc82
	.uleb128 0xc
	.string	"p_next"
	.byte	0xa
	.byte	0x4d
	.uaword	0xc82
	.byte	0
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0xa
	.byte	0x4f
	.uaword	0xd27
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xc52
	.uleb128 0x15
	.string	"OsEE_TDB_tag"
	.byte	0x20
	.byte	0xb
	.uahalf	0x108
	.uaword	0xd27
	.uleb128 0xf
	.string	"hdb"
	.byte	0xb
	.uahalf	0x10b
	.uaword	0x4b6
	.byte	0
	.uleb128 0xf
	.string	"p_tcb"
	.byte	0xb
	.uahalf	0x10e
	.uaword	0xf5e
	.byte	0xc
	.uleb128 0xf
	.string	"tid"
	.byte	0xb
	.uahalf	0x110
	.uaword	0x4df
	.byte	0x10
	.uleb128 0xf
	.string	"task_type"
	.byte	0xb
	.uahalf	0x112
	.uaword	0x5d4
	.byte	0x14
	.uleb128 0xf
	.string	"task_func"
	.byte	0xb
	.uahalf	0x114
	.uaword	0x53d
	.byte	0x18
	.uleb128 0xf
	.string	"ready_prio"
	.byte	0xb
	.uahalf	0x117
	.uaword	0x517
	.byte	0x1c
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x11a
	.uaword	0x517
	.byte	0x1d
	.uleb128 0xf
	.string	"max_num_of_act"
	.byte	0xb
	.uahalf	0x11c
	.uaword	0x527
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xd2d
	.uleb128 0x11
	.uaword	0xc88
	.uleb128 0x3
	.string	"OsEE_SN"
	.byte	0xa
	.byte	0x50
	.uaword	0xc52
	.uleb128 0x3
	.string	"OsEE_RQ"
	.byte	0xa
	.byte	0xd5
	.uaword	0xd50
	.uleb128 0xd
	.byte	0x4
	.uaword	0xd32
	.uleb128 0x3
	.string	"OsEE_kernel_cb"
	.byte	0xb
	.byte	0x51
	.uaword	0x54e
	.uleb128 0x3
	.string	"OsEE_byte"
	.byte	0xb
	.byte	0x53
	.uaword	0x196
	.uleb128 0x4
	.byte	0x1
	.byte	0xb
	.byte	0x73
	.uaword	0xde4
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
	.uaword	0xd7d
	.uleb128 0x7
	.byte	0xc
	.byte	0xb
	.byte	0x90
	.uaword	0xe32
	.uleb128 0xc
	.string	"p_next"
	.byte	0xb
	.byte	0x94
	.uaword	0xe62
	.byte	0
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0xb
	.byte	0x97
	.uaword	0x517
	.byte	0x4
	.uleb128 0xc
	.string	"p_owner"
	.byte	0xb
	.byte	0x9a
	.uaword	0xd27
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"OsEE_MDB_tag"
	.byte	0x8
	.byte	0xb
	.byte	0xb5
	.uaword	0xe62
	.uleb128 0xc
	.string	"p_cb"
	.byte	0xb
	.byte	0xb7
	.uaword	0xe7d
	.byte	0
	.uleb128 0xc
	.string	"prio"
	.byte	0xb
	.byte	0xc3
	.uaword	0x517
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xe68
	.uleb128 0x11
	.uaword	0xe32
	.uleb128 0x3
	.string	"OsEE_MCB"
	.byte	0xb
	.byte	0x9b
	.uaword	0xdfe
	.uleb128 0xd
	.byte	0x4
	.uaword	0xe6d
	.uleb128 0x3
	.string	"OsEE_MDB"
	.byte	0xb
	.byte	0xce
	.uaword	0xe68
	.uleb128 0x3
	.string	"OsEE_ResourceCB"
	.byte	0xb
	.byte	0xd1
	.uaword	0xe6d
	.uleb128 0x3
	.string	"OsEE_ResourceDB"
	.byte	0xb
	.byte	0xd2
	.uaword	0xe83
	.uleb128 0x7
	.byte	0x14
	.byte	0xb
	.byte	0xe0
	.uaword	0xf47
	.uleb128 0xc
	.string	"current_num_of_act"
	.byte	0xb
	.byte	0xe4
	.uaword	0x527
	.byte	0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xb
	.byte	0xea
	.uaword	0x517
	.byte	0x1
	.uleb128 0xc
	.string	"status"
	.byte	0xb
	.byte	0xec
	.uaword	0x68f
	.byte	0x2
	.uleb128 0xc
	.string	"p_last_m"
	.byte	0xb
	.byte	0xef
	.uaword	0xf47
	.byte	0x4
	.uleb128 0xc
	.string	"wait_mask"
	.byte	0xb
	.byte	0xf3
	.uaword	0x6d9
	.byte	0x8
	.uleb128 0xc
	.string	"event_mask"
	.byte	0xb
	.byte	0xf5
	.uaword	0x6d9
	.byte	0xc
	.uleb128 0xc
	.string	"p_own_sn"
	.byte	0xb
	.byte	0xfb
	.uaword	0xd50
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xe83
	.uleb128 0x10
	.string	"OsEE_TCB"
	.byte	0xb
	.uahalf	0x101
	.uaword	0xec1
	.uleb128 0xd
	.byte	0x4
	.uaword	0xf4d
	.uleb128 0x10
	.string	"OsEE_TDB"
	.byte	0xb
	.uahalf	0x122
	.uaword	0xd2d
	.uleb128 0xd
	.byte	0x4
	.uaword	0xf64
	.uleb128 0xe
	.byte	0x20
	.byte	0xb
	.uahalf	0x2d9
	.uaword	0x1072
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x2dc
	.uaword	0xf75
	.byte	0
	.uleb128 0xf
	.string	"rq"
	.byte	0xb
	.uahalf	0x2ee
	.uaword	0xd41
	.byte	0x4
	.uleb128 0xf
	.string	"p_free_sn"
	.byte	0xb
	.uahalf	0x2f0
	.uaword	0xd50
	.byte	0x8
	.uleb128 0xf
	.string	"p_stk_sn"
	.byte	0xb
	.uahalf	0x2ff
	.uaword	0xd50
	.byte	0xc
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x301
	.uaword	0x1072
	.byte	0x10
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x305
	.uaword	0x4cc
	.byte	0x11
	.uleb128 0xf
	.string	"last_error"
	.byte	0xb
	.uahalf	0x307
	.uaword	0x95a
	.byte	0x12
	.uleb128 0xf
	.string	"prev_s_isr_all_status"
	.byte	0xb
	.uahalf	0x327
	.uaword	0x27a
	.byte	0x14
	.uleb128 0xf
	.string	"prev_s_isr_os_status"
	.byte	0xb
	.uahalf	0x329
	.uaword	0x27a
	.byte	0x18
	.uleb128 0xf
	.string	"s_isr_all_cnt"
	.byte	0xb
	.uahalf	0x32b
	.uaword	0xd6c
	.byte	0x1c
	.uleb128 0xf
	.string	"s_isr_os_cnt"
	.byte	0xb
	.uahalf	0x32d
	.uaword	0xd6c
	.byte	0x1d
	.uleb128 0xf
	.string	"d_isr_all_cnt"
	.byte	0xb
	.uahalf	0x330
	.uaword	0xd6c
	.byte	0x1e
	.byte	0
	.uleb128 0x17
	.uaword	0xde4
	.uleb128 0x10
	.string	"OsEE_CCB"
	.byte	0xb
	.uahalf	0x33a
	.uaword	0xf7b
	.uleb128 0xe
	.byte	0x8
	.byte	0xb
	.uahalf	0x344
	.uaword	0x10b4
	.uleb128 0x16
	.uaword	.LASF7
	.byte	0xb
	.uahalf	0x34a
	.uaword	0x10b4
	.byte	0
	.uleb128 0xf
	.string	"p_idle_task"
	.byte	0xb
	.uahalf	0x354
	.uaword	0xf75
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1077
	.uleb128 0x10
	.string	"OsEE_CDB"
	.byte	0xb
	.uahalf	0x36a
	.uaword	0x10cb
	.uleb128 0x11
	.uaword	0x1088
	.uleb128 0xe
	.byte	0x4
	.byte	0xb
	.uahalf	0x36f
	.uaword	0x10e9
	.uleb128 0xf
	.string	"dummy"
	.byte	0xb
	.uahalf	0x3b1
	.uaword	0x27a
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"OsEE_KCB"
	.byte	0xb
	.uahalf	0x3b3
	.uaword	0x10d0
	.uleb128 0xe
	.byte	0x14
	.byte	0xb
	.uahalf	0x3c3
	.uaword	0x1175
	.uleb128 0xf
	.string	"p_kcb"
	.byte	0xb
	.uahalf	0x3c5
	.uaword	0x1175
	.byte	0
	.uleb128 0xf
	.string	"p_tdb_ptr_array"
	.byte	0xb
	.uahalf	0x3d1
	.uaword	0x1186
	.byte	0x4
	.uleb128 0xf
	.string	"tdb_array_size"
	.byte	0xb
	.uahalf	0x3d4
	.uaword	0x70e
	.byte	0x8
	.uleb128 0xf
	.string	"p_res_ptr_array"
	.byte	0xb
	.uahalf	0x3e0
	.uaword	0x1197
	.byte	0xc
	.uleb128 0xf
	.string	"res_array_size"
	.byte	0xb
	.uahalf	0x3e2
	.uaword	0x70e
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x10e9
	.uleb128 0x18
	.uaword	0xd27
	.uaword	0x1186
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x117b
	.uleb128 0x18
	.uaword	0xe62
	.uaword	0x1197
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x118c
	.uleb128 0x10
	.string	"OsEE_KDB"
	.byte	0xb
	.uahalf	0x3fc
	.uaword	0x11ae
	.uleb128 0x11
	.uaword	0x10fa
	.uleb128 0x1a
	.string	"osEE_tc_get_icr"
	.byte	0x3
	.uahalf	0x100
	.byte	0x1
	.uaword	0x390
	.byte	0x3
	.uaword	0x11ec
	.uleb128 0x1b
	.string	"icr"
	.byte	0x3
	.uahalf	0x102
	.uaword	0x390
	.uleb128 0x1c
	.uleb128 0x1b
	.string	"reg"
	.byte	0x3
	.uahalf	0x103
	.uaword	0x27a
	.byte	0
	.byte	0
	.uleb128 0x1d
	.string	"osEE_hal_disableIRQ"
	.byte	0x3
	.uahalf	0x112
	.byte	0x1
	.byte	0x3
	.uleb128 0x1e
	.string	"osEE_tc_set_icr"
	.byte	0x3
	.uahalf	0x107
	.byte	0x1
	.byte	0x3
	.uaword	0x122d
	.uleb128 0x1f
	.string	"icr"
	.byte	0x3
	.uahalf	0x107
	.uaword	0x390
	.byte	0
	.uleb128 0x1a
	.string	"OSEE_ISR2_VIRT_TO_HW_PRIO"
	.byte	0x3
	.uahalf	0x12d
	.byte	0x1
	.uaword	0x196
	.byte	0x3
	.uaword	0x1262
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x12d
	.uaword	0x517
	.byte	0
	.uleb128 0x21
	.string	"osEE_get_curr_core"
	.byte	0xc
	.byte	0x72
	.byte	0x1
	.uaword	0x127e
	.byte	0x3
	.uleb128 0xd
	.byte	0x4
	.uaword	0x10ba
	.uleb128 0x1a
	.string	"osEE_hal_begin_nested_primitive"
	.byte	0x3
	.uahalf	0x169
	.byte	0x1
	.uaword	0x27a
	.byte	0x3
	.uaword	0x12d2
	.uleb128 0x1b
	.string	"icr"
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x390
	.uleb128 0x1c
	.uleb128 0x1b
	.string	"icr_temp"
	.byte	0x3
	.uahalf	0x16e
	.uaword	0x390
	.byte	0
	.byte	0
	.uleb128 0x1e
	.string	"osEE_hal_end_nested_primitive"
	.byte	0x3
	.uahalf	0x17a
	.byte	0x1
	.byte	0x3
	.uaword	0x1325
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x17a
	.uaword	0x27a
	.uleb128 0x1b
	.string	"flags_icr"
	.byte	0x3
	.uahalf	0x17c
	.uaword	0x390
	.uleb128 0x1b
	.string	"icr"
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x390
	.byte	0
	.uleb128 0x1e
	.string	"osEE_call_shutdown_hook"
	.byte	0x1
	.uahalf	0x1c3
	.byte	0x1
	.byte	0x3
	.uaword	0x1360
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1c5
	.uaword	0x1360
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0x95a
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1366
	.uleb128 0x11
	.uaword	0x1077
	.uleb128 0x1a
	.string	"osEE_hal_suspendIRQ"
	.byte	0x3
	.uahalf	0x11e
	.byte	0x1
	.uaword	0x27a
	.byte	0x3
	.uaword	0x139a
	.uleb128 0x1b
	.string	"icr"
	.byte	0x3
	.uahalf	0x120
	.uaword	0x390
	.byte	0
	.uleb128 0x1e
	.string	"osEE_stack_monitoring"
	.byte	0x1
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x13c7
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x3ef
	.uaword	0x127e
	.byte	0
	.uleb128 0x22
	.string	"osEE_orti_trace_service_entry"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.byte	0x3
	.uaword	0x1405
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.byte	0x8a
	.uaword	0x1360
	.uleb128 0x23
	.uaword	.LASF12
	.byte	0x1
	.byte	0x8b
	.uaword	0x1405
	.byte	0
	.uleb128 0x11
	.uaword	0xc3a
	.uleb128 0x22
	.string	"osEE_orti_trace_service_exit"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.uaword	0x1447
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.byte	0x96
	.uaword	0x1360
	.uleb128 0x23
	.uaword	.LASF12
	.byte	0x1
	.byte	0x97
	.uaword	0x1405
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
	.uaword	0x1496
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x125
	.uaword	0x27a
	.uleb128 0x1b
	.string	"icr"
	.byte	0x3
	.uahalf	0x127
	.uaword	0x390
	.byte	0
	.uleb128 0x21
	.string	"osEE_begin_primitive"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.uaword	0x27a
	.byte	0x3
	.uleb128 0x1e
	.string	"osEE_call_startup_hook"
	.byte	0x1
	.uahalf	0x14f
	.byte	0x1
	.byte	0x3
	.uaword	0x14e2
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x151
	.uaword	0x1360
	.byte	0
	.uleb128 0x22
	.string	"osEE_idle_task_start"
	.byte	0x4
	.byte	0x91
	.byte	0x1
	.byte	0x3
	.uaword	0x150c
	.uleb128 0x23
	.uaword	.LASF13
	.byte	0x4
	.byte	0x93
	.uaword	0xf75
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
	.uaword	0x1560
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1fa
	.uaword	0x1360
	.uleb128 0x20
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1fb
	.uaword	0xc3a
	.byte	0
	.uleb128 0x1e
	.string	"osEE_call_error_hook"
	.byte	0x1
	.uahalf	0x1e0
	.byte	0x1
	.byte	0x3
	.uaword	0x1598
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1e2
	.uaword	0x1360
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x95a
	.byte	0
	.uleb128 0x1e
	.string	"osEE_end_primitive"
	.byte	0x1
	.uahalf	0x102
	.byte	0x1
	.byte	0x3
	.uaword	0x15c2
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x104
	.uaword	0x27a
	.byte	0
	.uleb128 0x21
	.string	"osEE_get_kernel"
	.byte	0xc
	.byte	0x55
	.byte	0x1
	.uaword	0x15db
	.byte	0x3
	.uleb128 0xd
	.byte	0x4
	.uaword	0x119d
	.uleb128 0x1a
	.string	"osEE_is_valid_tid"
	.byte	0x1
	.uahalf	0x10b
	.byte	0x1
	.uaword	0x256
	.byte	0x3
	.uaword	0x161a
	.uleb128 0x20
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x15db
	.uleb128 0x1f
	.string	"tid"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x4df
	.byte	0
	.uleb128 0x21
	.string	"osEE_get_curr_task"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	0xf75
	.byte	0x3
	.uleb128 0x1a
	.string	"osEE_is_valid_res_id"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	0x256
	.byte	0x3
	.uaword	0x1675
	.uleb128 0x20
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x15db
	.uleb128 0x1f
	.string	"res_id"
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x6c4
	.byte	0
	.uleb128 0x1a
	.string	"osEE_hal_prepare_ipl"
	.byte	0x3
	.uahalf	0x143
	.byte	0x1
	.uaword	0x27a
	.byte	0x3
	.uaword	0x16c3
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x143
	.uaword	0x27a
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x143
	.uaword	0x517
	.uleb128 0x1b
	.string	"ret_flags"
	.byte	0x3
	.uahalf	0x145
	.uaword	0x27a
	.byte	0
	.uleb128 0x22
	.string	"osEE_lock_core"
	.byte	0xc
	.byte	0xce
	.byte	0x1
	.byte	0x3
	.uaword	0x16e7
	.uleb128 0x23
	.uaword	.LASF11
	.byte	0xc
	.byte	0xce
	.uaword	0x16e7
	.byte	0
	.uleb128 0x11
	.uaword	0x127e
	.uleb128 0x1e
	.string	"osEE_unlock_core"
	.byte	0xc
	.uahalf	0x10b
	.byte	0x1
	.byte	0x3
	.uaword	0x1714
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0xc
	.uahalf	0x10b
	.uaword	0x16e7
	.byte	0
	.uleb128 0x24
	.string	"osEE_shutdown_os"
	.byte	0x1
	.uahalf	0x2c5
	.byte	0x1
	.uaword	.LFB100
	.uaword	.LFE100
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x177f
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x2c7
	.uaword	0x127e
	.uaword	.LLST0
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x2c8
	.uaword	0x95a
	.uaword	.LLST1
	.uleb128 0x26
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x177f
	.byte	0x1
	.byte	0x6f
	.uleb128 0x26
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2cc
	.uaword	0x1784
	.byte	0x1
	.byte	0x5f
	.uleb128 0x27
	.uaword	.LVL4
	.uaword	0x3693
	.byte	0
	.uleb128 0x11
	.uaword	0x10b4
	.uleb128 0x11
	.uaword	0xde4
	.uleb128 0x28
	.byte	0x1
	.string	"DisableAllInterrupts"
	.byte	0x2
	.byte	0x3c
	.byte	0x1
	.uaword	.LFB102
	.uaword	.LFE102
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x17da
	.uleb128 0x29
	.uaword	.LASF11
	.byte	0x2
	.byte	0x41
	.uaword	0x16e7
	.uleb128 0x2a
	.uaword	.LASF7
	.byte	0x2
	.byte	0x42
	.uaword	0x177f
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2b
	.uaword	0x11ec
	.uaword	.LBB531
	.uaword	.LBE531
	.byte	0x2
	.byte	0x44
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"EnableAllInterrupts"
	.byte	0x2
	.byte	0x4f
	.byte	0x1
	.uaword	.LFB103
	.uaword	.LFE103
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x182a
	.uleb128 0x29
	.uaword	.LASF11
	.byte	0x2
	.byte	0x59
	.uaword	0x16e7
	.uleb128 0x2a
	.uaword	.LASF7
	.byte	0x2
	.byte	0x5a
	.uaword	0x177f
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2b
	.uaword	0x1447
	.uaword	.LBB533
	.uaword	.LBE533
	.byte	0x2
	.byte	0x62
	.byte	0
	.uleb128 0x22
	.string	"osEE_suspend_all_interrupts"
	.byte	0x2
	.byte	0x6b
	.byte	0x1
	.byte	0x1
	.uaword	0x1873
	.uleb128 0x23
	.uaword	.LASF11
	.byte	0x2
	.byte	0x6d
	.uaword	0x16e7
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x2
	.byte	0x6e
	.uaword	0x177f
	.uleb128 0x1c
	.uleb128 0x29
	.uaword	.LASF9
	.byte	0x2
	.byte	0x72
	.uaword	0x1873
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x27a
	.uleb128 0x28
	.byte	0x1
	.string	"SuspendAllInterrupts"
	.byte	0x2
	.byte	0x81
	.byte	0x1
	.uaword	.LFB105
	.uaword	.LFE105
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x195e
	.uleb128 0x29
	.uaword	.LASF11
	.byte	0x2
	.byte	0x86
	.uaword	0x16e7
	.uleb128 0x2a
	.uaword	.LASF7
	.byte	0x2
	.byte	0x87
	.uaword	0x177f
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2c
	.uaword	0x182a
	.uaword	.LBB546
	.uaword	.LBE546
	.byte	0x2
	.byte	0x8d
	.uleb128 0x2d
	.uaword	0x185a
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2e
	.uaword	0x184f
	.uleb128 0x2f
	.uaword	.LBB548
	.uaword	.LBE548
	.uaword	0x194d
	.uleb128 0x30
	.uaword	0x1866
	.uleb128 0x2c
	.uaword	0x136b
	.uaword	.LBB549
	.uaword	.LBE549
	.byte	0x2
	.byte	0x72
	.uleb128 0x31
	.uaword	.LBB550
	.uaword	.LBE550
	.uleb128 0x30
	.uaword	0x138d
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB551
	.uaword	.LBE551
	.byte	0x3
	.uahalf	0x120
	.uaword	0x193a
	.uleb128 0x31
	.uaword	.LBB552
	.uaword	.LBE552
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB553
	.uaword	.LBE553
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x11ec
	.uaword	.LBB554
	.uaword	.LBE554
	.byte	0x3
	.uahalf	0x121
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL14
	.uaword	0x1714
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
	.uaword	.LFB106
	.uaword	.LFE106
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x19dd
	.uleb128 0x29
	.uaword	.LASF11
	.byte	0x2
	.byte	0x9a
	.uaword	0x16e7
	.uleb128 0x2a
	.uaword	.LASF7
	.byte	0x2
	.byte	0x9b
	.uaword	0x177f
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2c
	.uaword	0x1460
	.uaword	.LBB556
	.uaword	.LBE556
	.byte	0x2
	.byte	0xa5
	.uleb128 0x37
	.uaword	0x147d
	.uaword	.LLST3
	.uleb128 0x31
	.uaword	.LBB557
	.uaword	.LBE557
	.uleb128 0x30
	.uaword	0x1489
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB558
	.uaword	.LBE558
	.byte	0x3
	.uahalf	0x129
	.uleb128 0x2e
	.uaword	0x1220
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
	.uaword	.LFB107
	.uaword	.LFE107
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1acd
	.uleb128 0x29
	.uaword	.LASF11
	.byte	0x2
	.byte	0xb4
	.uaword	0x16e7
	.uleb128 0x2a
	.uaword	.LASF7
	.byte	0x2
	.byte	0xb5
	.uaword	0x177f
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2f
	.uaword	.LBB560
	.uaword	.LBE560
	.uaword	0x1abd
	.uleb128 0x29
	.uaword	.LASF9
	.byte	0x2
	.byte	0xbc
	.uaword	0x1873
	.uleb128 0x2c
	.uaword	0x1284
	.uaword	.LBB561
	.uaword	.LBE561
	.byte	0x2
	.byte	0xbc
	.uleb128 0x31
	.uaword	.LBB562
	.uaword	.LBE562
	.uleb128 0x33
	.uaword	0x12b2
	.uaword	.LLST4
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB563
	.uaword	.LBE563
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x1a8d
	.uleb128 0x31
	.uaword	.LBB564
	.uaword	.LBE564
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB565
	.uaword	.LBE565
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB566
	.uaword	.LBE566
	.uleb128 0x33
	.uaword	0x12bf
	.uaword	.LLST6
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB567
	.uaword	.LBE567
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL27
	.uaword	0x1714
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
	.uaword	.LFB108
	.uaword	.LFE108
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1b8f
	.uleb128 0x29
	.uaword	.LASF11
	.byte	0x2
	.byte	0xd4
	.uaword	0x16e7
	.uleb128 0x2a
	.uaword	.LASF7
	.byte	0x2
	.byte	0xd5
	.uaword	0x177f
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2c
	.uaword	0x12d2
	.uaword	.LBB569
	.uaword	.LBE569
	.byte	0x2
	.byte	0xdf
	.uleb128 0x37
	.uaword	0x12fa
	.uaword	.LLST8
	.uleb128 0x31
	.uaword	.LBB570
	.uaword	.LBE570
	.uleb128 0x30
	.uaword	0x1306
	.uleb128 0x33
	.uaword	0x1318
	.uaword	.LLST9
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB571
	.uaword	.LBE571
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x1b72
	.uleb128 0x31
	.uaword	.LBB572
	.uaword	.LBE572
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB573
	.uaword	.LBE573
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB574
	.uaword	.LBE574
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x1220
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
	.uaword	0x95a
	.uaword	.LFB109
	.uaword	.LFE109
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1db1
	.uleb128 0x3a
	.string	"Mode"
	.byte	0x2
	.byte	0xeb
	.uaword	0x4cc
	.uaword	.LLST12
	.uleb128 0x3b
	.string	"ev"
	.byte	0x2
	.byte	0xee
	.uaword	0x95a
	.uaword	.LLST13
	.uleb128 0x3b
	.string	"real_mode"
	.byte	0x2
	.byte	0xef
	.uaword	0x4cc
	.uaword	.LLST14
	.uleb128 0x29
	.uaword	.LASF11
	.byte	0x2
	.byte	0xf5
	.uaword	0x16e7
	.uleb128 0x2a
	.uaword	.LASF7
	.byte	0x2
	.byte	0xf6
	.uaword	0x177f
	.byte	0x1
	.byte	0x6f
	.uleb128 0x29
	.uaword	.LASF9
	.byte	0x2
	.byte	0xf7
	.uaword	0x1873
	.uleb128 0x3c
	.uaword	0x1496
	.uaword	.LBB576
	.uaword	.LBE576
	.byte	0x2
	.byte	0xf7
	.uaword	0x1c9e
	.uleb128 0x2c
	.uaword	0x1284
	.uaword	.LBB577
	.uaword	.LBE577
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB578
	.uaword	.LBE578
	.uleb128 0x33
	.uaword	0x12b2
	.uaword	.LLST15
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB579
	.uaword	.LBE579
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x1c6e
	.uleb128 0x31
	.uaword	.LBB580
	.uaword	.LBE580
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB581
	.uaword	.LBE581
	.uleb128 0x3d
	.uaword	0x11de
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB582
	.uaword	.LBE582
	.uleb128 0x33
	.uaword	0x12bf
	.uaword	.LLST16
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB583
	.uaword	.LBE583
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0
	.uaword	0x1d06
	.uleb128 0x3f
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x118
	.uaword	0x1db1
	.uaword	.LLST18
	.uleb128 0x32
	.uaword	0x14e2
	.uaword	.LBB586
	.uaword	.LBE586
	.byte	0x2
	.uahalf	0x21a
	.uaword	0x1ce5
	.uleb128 0x37
	.uaword	0x1500
	.uaword	.LLST19
	.uleb128 0x35
	.uaword	.LVL51
	.uaword	0x36bc
	.uleb128 0x36
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x11ec
	.uaword	.LBB588
	.uaword	.LBE588
	.byte	0x2
	.uahalf	0x21e
	.uleb128 0x35
	.uaword	.LVL52
	.uaword	0x36fa
	.uleb128 0x36
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1598
	.uaword	.LBB590
	.uaword	.LBE590
	.byte	0x2
	.uahalf	0x242
	.uaword	0x1da7
	.uleb128 0x37
	.uaword	0x15b5
	.uaword	.LLST20
	.uleb128 0x38
	.uaword	0x12d2
	.uaword	.LBB591
	.uaword	.LBE591
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x12fa
	.uaword	.LLST20
	.uleb128 0x31
	.uaword	.LBB592
	.uaword	.LBE592
	.uleb128 0x30
	.uaword	0x1306
	.uleb128 0x33
	.uaword	0x1318
	.uaword	.LLST22
	.uleb128 0x32
	.uaword	0x1206
	.uaword	.LBB593
	.uaword	.LBE593
	.byte	0x3
	.uahalf	0x181
	.uaword	0x1d71
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST23
	.byte	0
	.uleb128 0x38
	.uaword	0x11b3
	.uaword	.LBB595
	.uaword	.LBE595
	.byte	0x3
	.uahalf	0x17d
	.uleb128 0x31
	.uaword	.LBB596
	.uaword	.LBE596
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB597
	.uaword	.LBE597
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL47
	.uaword	0x3718
	.byte	0
	.uleb128 0x11
	.uaword	0xf75
	.uleb128 0x40
	.byte	0x1
	.string	"GetActiveApplicationMode"
	.byte	0x2
	.uahalf	0x249
	.byte	0x1
	.uaword	0x4cc
	.uaword	.LFB110
	.uaword	.LFE110
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1e11
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x24e
	.uaword	0x4cc
	.byte	0x1
	.byte	0x52
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x250
	.uaword	0x16e7
	.uleb128 0x26
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x256
	.uaword	0x1e11
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x11
	.uaword	0x1360
	.uleb128 0x40
	.byte	0x1
	.string	"ActivateTask"
	.byte	0x2
	.uahalf	0x268
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB111
	.uaword	.LFE111
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2034
	.uleb128 0x25
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x26a
	.uaword	0x4df
	.uaword	.LLST25
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x26d
	.uaword	0x95a
	.uaword	.LLST26
	.uleb128 0x41
	.uaword	.LASF14
	.byte	0x2
	.uahalf	0x26e
	.uaword	0x2034
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x270
	.uaword	0x16e7
	.uleb128 0x41
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x276
	.uaword	0x1e11
	.uleb128 0x32
	.uaword	0x15e1
	.uaword	.LBB599
	.uaword	.LBE599
	.byte	0x2
	.uahalf	0x28f
	.uaword	0x1ea2
	.uleb128 0x37
	.uaword	0x160d
	.uaword	.LLST27
	.uleb128 0x2e
	.uaword	0x1601
	.byte	0
	.uleb128 0x31
	.uaword	.LBB601
	.uaword	.LBE601
	.uleb128 0x3f
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x294
	.uaword	0x1db1
	.uaword	.LLST28
	.uleb128 0x31
	.uaword	.LBB602
	.uaword	.LBE602
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x297
	.uaword	0x1873
	.uleb128 0x32
	.uaword	0x1496
	.uaword	.LBB603
	.uaword	.LBE603
	.byte	0x2
	.uahalf	0x297
	.uaword	0x1f6c
	.uleb128 0x2c
	.uaword	0x1284
	.uaword	.LBB604
	.uaword	.LBE604
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB605
	.uaword	.LBE605
	.uleb128 0x33
	.uaword	0x12b2
	.uaword	.LLST29
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB606
	.uaword	.LBE606
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x1f3c
	.uleb128 0x31
	.uaword	.LBB607
	.uaword	.LBE607
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB608
	.uaword	.LBE608
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB609
	.uaword	.LBE609
	.uleb128 0x33
	.uaword	0x12bf
	.uaword	.LLST31
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB610
	.uaword	.LBE610
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1598
	.uaword	.LBB612
	.uaword	.LBE612
	.byte	0x2
	.uahalf	0x29f
	.uaword	0x200d
	.uleb128 0x37
	.uaword	0x15b5
	.uaword	.LLST33
	.uleb128 0x38
	.uaword	0x12d2
	.uaword	.LBB613
	.uaword	.LBE613
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x12fa
	.uaword	.LLST33
	.uleb128 0x31
	.uaword	.LBB614
	.uaword	.LBE614
	.uleb128 0x30
	.uaword	0x1306
	.uleb128 0x33
	.uaword	0x1318
	.uaword	.LLST35
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB615
	.uaword	.LBE615
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x1ff0
	.uleb128 0x31
	.uaword	.LBB616
	.uaword	.LBE616
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB617
	.uaword	.LBE617
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB618
	.uaword	.LBE618
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST37
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	.LVL75
	.uaword	0x3733
	.uaword	0x2021
	.uleb128 0x36
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL77
	.uaword	0x375b
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
	.uaword	0x15db
	.uleb128 0x22
	.string	"osEE_hal_terminate_activation"
	.byte	0x4
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x2083
	.uleb128 0x44
	.string	"p_to_term"
	.byte	0x4
	.byte	0x89
	.uaword	0x2083
	.uleb128 0x44
	.string	"kernel_cb"
	.byte	0x4
	.byte	0x8a
	.uaword	0xd56
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x4b6
	.uleb128 0x40
	.byte	0x1
	.string	"ChainTask"
	.byte	0x2
	.uahalf	0x2b7
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2349
	.uleb128 0x25
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x2b9
	.uaword	0x4df
	.uaword	.LLST38
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x2bc
	.uaword	0x95a
	.uaword	.LLST39
	.uleb128 0x41
	.uaword	.LASF14
	.byte	0x2
	.uahalf	0x2bd
	.uaword	0x2034
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x2bf
	.uaword	0x16e7
	.uleb128 0x3f
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x2c7
	.uaword	0x177f
	.uaword	.LLST40
	.uleb128 0x3f
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x2c9
	.uaword	0x1db1
	.uaword	.LLST41
	.uleb128 0x32
	.uaword	0x15e1
	.uaword	.LBB652
	.uaword	.LBE652
	.byte	0x2
	.uahalf	0x2e9
	.uaword	0x2126
	.uleb128 0x37
	.uaword	0x160d
	.uaword	.LLST42
	.uleb128 0x2e
	.uaword	0x1601
	.byte	0
	.uleb128 0x31
	.uaword	.LBB654
	.uaword	.LBE654
	.uleb128 0x3f
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x2ed
	.uaword	0x1db1
	.uaword	.LLST43
	.uleb128 0x31
	.uaword	.LBB655
	.uaword	.LBE655
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x304
	.uaword	0x27a
	.uleb128 0x32
	.uaword	0x1460
	.uaword	.LBB656
	.uaword	.LBE656
	.byte	0x2
	.uahalf	0x309
	.uaword	0x2197
	.uleb128 0x37
	.uaword	0x147d
	.uaword	.LLST44
	.uleb128 0x31
	.uaword	.LBB657
	.uaword	.LBE657
	.uleb128 0x30
	.uaword	0x1489
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB658
	.uaword	.LBE658
	.byte	0x3
	.uahalf	0x129
	.uleb128 0x2e
	.uaword	0x1220
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x1447
	.uaword	.LBB660
	.uaword	.LBE660
	.byte	0x2
	.uahalf	0x30d
	.uleb128 0x32
	.uaword	0x1496
	.uaword	.LBB662
	.uaword	.LBE662
	.byte	0x2
	.uahalf	0x311
	.uaword	0x2243
	.uleb128 0x2c
	.uaword	0x1284
	.uaword	.LBB663
	.uaword	.LBE663
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB664
	.uaword	.LBE664
	.uleb128 0x33
	.uaword	0x12b2
	.uaword	.LLST45
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB665
	.uaword	.LBE665
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x2213
	.uleb128 0x31
	.uaword	.LBB666
	.uaword	.LBE666
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB667
	.uaword	.LBE667
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB668
	.uaword	.LBE668
	.uleb128 0x33
	.uaword	0x12bf
	.uaword	.LLST47
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB669
	.uaword	.LBE669
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0x1598
	.uaword	.LBB671
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x322
	.uaword	0x22e0
	.uleb128 0x37
	.uaword	0x15b5
	.uaword	.LLST49
	.uleb128 0x46
	.uaword	0x12d2
	.uaword	.LBB672
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x12fa
	.uaword	.LLST49
	.uleb128 0x47
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x30
	.uaword	0x1306
	.uleb128 0x33
	.uaword	0x1318
	.uaword	.LLST51
	.uleb128 0x32
	.uaword	0x1206
	.uaword	.LBB674
	.uaword	.LBE674
	.byte	0x3
	.uahalf	0x181
	.uaword	0x22aa
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST52
	.byte	0
	.uleb128 0x38
	.uaword	0x11b3
	.uaword	.LBB676
	.uaword	.LBE676
	.byte	0x3
	.uahalf	0x17d
	.uleb128 0x31
	.uaword	.LBB677
	.uaword	.LBE677
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB678
	.uaword	.LBE678
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST53
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x161a
	.uaword	.LBB681
	.uaword	.LBE681
	.byte	0x2
	.uahalf	0x31f
	.uleb128 0x32
	.uaword	0x2039
	.uaword	.LBB683
	.uaword	.LBE683
	.byte	0x2
	.uahalf	0x31f
	.uaword	0x2322
	.uleb128 0x37
	.uaword	0x2071
	.uaword	.LLST54
	.uleb128 0x2e
	.uaword	0x2060
	.uleb128 0x35
	.uaword	.LVL109
	.uaword	0x3792
	.uleb128 0x36
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	.LVL102
	.uaword	0x3733
	.uaword	0x2336
	.uleb128 0x36
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL103
	.uaword	0x37be
	.uleb128 0x36
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"TerminateTask"
	.byte	0x2
	.uahalf	0x339
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x24d8
	.uleb128 0x1b
	.string	"ev"
	.byte	0x2
	.uahalf	0x33e
	.uaword	0x95a
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x340
	.uaword	0x16e7
	.uleb128 0x26
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x348
	.uaword	0x177f
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3f
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x34a
	.uaword	0x1db1
	.uaword	.LLST55
	.uleb128 0x31
	.uaword	.LBB704
	.uaword	.LBE704
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x383
	.uaword	0x27a
	.uleb128 0x32
	.uaword	0x1460
	.uaword	.LBB705
	.uaword	.LBE705
	.byte	0x2
	.uahalf	0x388
	.uaword	0x23fd
	.uleb128 0x37
	.uaword	0x147d
	.uaword	.LLST56
	.uleb128 0x31
	.uaword	.LBB706
	.uaword	.LBE706
	.uleb128 0x30
	.uaword	0x1489
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB707
	.uaword	.LBE707
	.byte	0x3
	.uahalf	0x129
	.uleb128 0x2e
	.uaword	0x1220
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x1447
	.uaword	.LBB709
	.uaword	.LBE709
	.byte	0x2
	.uahalf	0x38c
	.uleb128 0x32
	.uaword	0x1496
	.uaword	.LBB711
	.uaword	.LBE711
	.byte	0x2
	.uahalf	0x390
	.uaword	0x24a7
	.uleb128 0x2c
	.uaword	0x1284
	.uaword	.LBB712
	.uaword	.LBE712
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB713
	.uaword	.LBE713
	.uleb128 0x33
	.uaword	0x12b2
	.uaword	.LLST57
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB714
	.uaword	.LBE714
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x2479
	.uleb128 0x31
	.uaword	.LBB715
	.uaword	.LBE715
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB716
	.uaword	.LBE716
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST58
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB717
	.uaword	.LBE717
	.uleb128 0x3d
	.uaword	0x12bf
	.byte	0x1
	.byte	0x5f
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB718
	.uaword	.LBE718
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST59
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x2039
	.uaword	.LBB720
	.uaword	.LBE720
	.byte	0x2
	.uahalf	0x393
	.uleb128 0x48
	.uaword	0x2071
	.byte	0
	.uleb128 0x37
	.uaword	0x2060
	.uaword	.LLST60
	.uleb128 0x35
	.uaword	.LVL125
	.uaword	0x3792
	.uleb128 0x36
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"Schedule"
	.byte	0x2
	.uahalf	0x3ac
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB114
	.uaword	.LFE114
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2699
	.uleb128 0x49
	.string	"ev"
	.byte	0x2
	.uahalf	0x3b1
	.uaword	0x95a
	.byte	0
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x3b2
	.uaword	0x16e7
	.uleb128 0x41
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x3b8
	.uaword	0x1e11
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x3b9
	.uaword	0x1db1
	.byte	0x1
	.byte	0x6f
	.uleb128 0x4a
	.string	"p_tcb"
	.byte	0x2
	.uahalf	0x3ba
	.uaword	0x2699
	.byte	0x1
	.byte	0x6c
	.uleb128 0x31
	.uaword	.LBB722
	.uaword	.LBE722
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x3ee
	.uaword	0x1873
	.uleb128 0x32
	.uaword	0x1496
	.uaword	.LBB723
	.uaword	.LBE723
	.byte	0x2
	.uahalf	0x3ee
	.uaword	0x25ed
	.uleb128 0x2c
	.uaword	0x1284
	.uaword	.LBB724
	.uaword	.LBE724
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB725
	.uaword	.LBE725
	.uleb128 0x33
	.uaword	0x12b2
	.uaword	.LLST61
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB726
	.uaword	.LBE726
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x25bd
	.uleb128 0x31
	.uaword	.LBB727
	.uaword	.LBE727
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB728
	.uaword	.LBE728
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST62
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB729
	.uaword	.LBE729
	.uleb128 0x33
	.uaword	0x12bf
	.uaword	.LLST63
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB730
	.uaword	.LBE730
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1598
	.uaword	.LBB732
	.uaword	.LBE732
	.byte	0x2
	.uahalf	0x3f8
	.uaword	0x268e
	.uleb128 0x37
	.uaword	0x15b5
	.uaword	.LLST65
	.uleb128 0x38
	.uaword	0x12d2
	.uaword	.LBB733
	.uaword	.LBE733
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x12fa
	.uaword	.LLST65
	.uleb128 0x31
	.uaword	.LBB734
	.uaword	.LBE734
	.uleb128 0x30
	.uaword	0x1306
	.uleb128 0x33
	.uaword	0x1318
	.uaword	.LLST67
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB735
	.uaword	.LBE735
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x2671
	.uleb128 0x31
	.uaword	.LBB736
	.uaword	.LBE736
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB737
	.uaword	.LBE737
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB738
	.uaword	.LBE738
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST69
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL136
	.uaword	0x37f2
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0xf5e
	.uleb128 0x40
	.byte	0x1
	.string	"GetResource"
	.byte	0x2
	.uahalf	0x411
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB115
	.uaword	.LFE115
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2919
	.uleb128 0x4b
	.string	"ResID"
	.byte	0x2
	.uahalf	0x413
	.uaword	0x6c4
	.uaword	.LLST70
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x416
	.uaword	0x95a
	.uaword	.LLST71
	.uleb128 0x41
	.uaword	.LASF14
	.byte	0x2
	.uahalf	0x417
	.uaword	0x2034
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x419
	.uaword	0x16e7
	.uleb128 0x41
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x41f
	.uaword	0x1e11
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x421
	.uaword	0x1db1
	.byte	0x1
	.byte	0x64
	.uleb128 0x32
	.uaword	0x1636
	.uaword	.LBB740
	.uaword	.LBE740
	.byte	0x2
	.uahalf	0x43b
	.uaword	0x2739
	.uleb128 0x37
	.uaword	0x1665
	.uaword	.LLST72
	.uleb128 0x2e
	.uaword	0x1659
	.byte	0
	.uleb128 0x31
	.uaword	.LBB742
	.uaword	.LBE742
	.uleb128 0x3f
	.uaword	.LASF17
	.byte	0x2
	.uahalf	0x440
	.uaword	0x2919
	.uaword	.LLST73
	.uleb128 0x3f
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x442
	.uaword	0x2924
	.uaword	.LLST74
	.uleb128 0x3f
	.uaword	.LASF19
	.byte	0x2
	.uahalf	0x444
	.uaword	0x2699
	.uaword	.LLST75
	.uleb128 0x42
	.string	"reso_prio"
	.byte	0x2
	.uahalf	0x446
	.uaword	0x292f
	.uaword	.LLST76
	.uleb128 0x3f
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x448
	.uaword	0x292f
	.uaword	.LLST77
	.uleb128 0x3f
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x44a
	.uaword	0x27a
	.uaword	.LLST78
	.uleb128 0x32
	.uaword	0x1496
	.uaword	.LBB743
	.uaword	.LBE743
	.byte	0x2
	.uahalf	0x44a
	.uaword	0x2844
	.uleb128 0x2c
	.uaword	0x1284
	.uaword	.LBB744
	.uaword	.LBE744
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB745
	.uaword	.LBE745
	.uleb128 0x33
	.uaword	0x12b2
	.uaword	.LLST79
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB746
	.uaword	.LBE746
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x2814
	.uleb128 0x31
	.uaword	.LBB747
	.uaword	.LBE747
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB748
	.uaword	.LBE748
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB749
	.uaword	.LBE749
	.uleb128 0x33
	.uaword	0x12bf
	.uaword	.LLST81
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB750
	.uaword	.LBE750
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1675
	.uaword	.LBB752
	.uaword	.LBE752
	.byte	0x2
	.uahalf	0x460
	.uaword	0x287a
	.uleb128 0x37
	.uaword	0x16a4
	.uaword	.LLST83
	.uleb128 0x37
	.uaword	0x1698
	.uaword	.LLST84
	.uleb128 0x31
	.uaword	.LBB753
	.uaword	.LBE753
	.uleb128 0x30
	.uaword	0x16b0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1598
	.uaword	.LBB754
	.uaword	.LBE754
	.byte	0x2
	.uahalf	0x465
	.uleb128 0x37
	.uaword	0x15b5
	.uaword	.LLST85
	.uleb128 0x38
	.uaword	0x12d2
	.uaword	.LBB755
	.uaword	.LBE755
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x12fa
	.uaword	.LLST85
	.uleb128 0x31
	.uaword	.LBB756
	.uaword	.LBE756
	.uleb128 0x30
	.uaword	0x1306
	.uleb128 0x33
	.uaword	0x1318
	.uaword	.LLST87
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB757
	.uaword	.LBE757
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x28fa
	.uleb128 0x31
	.uaword	.LBB758
	.uaword	.LBE758
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB759
	.uaword	.LBE759
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST88
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB760
	.uaword	.LBE760
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST89
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x291e
	.uleb128 0xd
	.byte	0x4
	.uaword	0xeaa
	.uleb128 0x11
	.uaword	0x2929
	.uleb128 0xd
	.byte	0x4
	.uaword	0xe93
	.uleb128 0x11
	.uaword	0x517
	.uleb128 0x40
	.byte	0x1
	.string	"ReleaseResource"
	.byte	0x2
	.uahalf	0x480
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB116
	.uaword	.LFE116
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2c0c
	.uleb128 0x4b
	.string	"ResID"
	.byte	0x2
	.uahalf	0x482
	.uaword	0x6c4
	.uaword	.LLST90
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x485
	.uaword	0x95a
	.uaword	.LLST91
	.uleb128 0x41
	.uaword	.LASF14
	.byte	0x2
	.uahalf	0x486
	.uaword	0x2034
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x487
	.uaword	0x16e7
	.uleb128 0x41
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x48d
	.uaword	0x1e11
	.uleb128 0x3f
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x48e
	.uaword	0x1db1
	.uaword	.LLST92
	.uleb128 0x32
	.uaword	0x1636
	.uaword	.LBB762
	.uaword	.LBE762
	.byte	0x2
	.uahalf	0x4a7
	.uaword	0x29d5
	.uleb128 0x37
	.uaword	0x1665
	.uaword	.LLST93
	.uleb128 0x2e
	.uaword	0x1659
	.byte	0
	.uleb128 0x31
	.uaword	.LBB764
	.uaword	.LBE764
	.uleb128 0x3f
	.uaword	.LASF19
	.byte	0x2
	.uahalf	0x4ac
	.uaword	0x2699
	.uaword	.LLST94
	.uleb128 0x41
	.uaword	.LASF17
	.byte	0x2
	.uahalf	0x4ae
	.uaword	0x2919
	.uleb128 0x3f
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x4b0
	.uaword	0x2924
	.uaword	.LLST95
	.uleb128 0x31
	.uaword	.LBB765
	.uaword	.LBE765
	.uleb128 0x3f
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x4bf
	.uaword	0x27a
	.uaword	.LLST96
	.uleb128 0x32
	.uaword	0x1496
	.uaword	.LBB766
	.uaword	.LBE766
	.byte	0x2
	.uahalf	0x4bf
	.uaword	0x2abf
	.uleb128 0x2c
	.uaword	0x1284
	.uaword	.LBB767
	.uaword	.LBE767
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB768
	.uaword	.LBE768
	.uleb128 0x33
	.uaword	0x12b2
	.uaword	.LLST97
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB769
	.uaword	.LBE769
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x2a8f
	.uleb128 0x31
	.uaword	.LBB770
	.uaword	.LBE770
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB771
	.uaword	.LBE771
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST98
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB772
	.uaword	.LBE772
	.uleb128 0x33
	.uaword	0x12bf
	.uaword	.LLST99
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB773
	.uaword	.LBE773
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST100
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LBB775
	.uaword	.LBE775
	.uaword	0x2b0f
	.uleb128 0x3f
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x4c6
	.uaword	0x292f
	.uaword	.LLST101
	.uleb128 0x38
	.uaword	0x1675
	.uaword	.LBB776
	.uaword	.LBE776
	.byte	0x2
	.uahalf	0x4c9
	.uleb128 0x37
	.uaword	0x16a4
	.uaword	.LLST102
	.uleb128 0x37
	.uaword	0x1698
	.uaword	.LLST103
	.uleb128 0x31
	.uaword	.LBB777
	.uaword	.LBE777
	.uleb128 0x30
	.uaword	0x16b0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LBB778
	.uaword	.LBE778
	.uaword	0x2b5f
	.uleb128 0x3f
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x4cc
	.uaword	0x292f
	.uaword	.LLST104
	.uleb128 0x38
	.uaword	0x1675
	.uaword	.LBB779
	.uaword	.LBE779
	.byte	0x2
	.uahalf	0x4cf
	.uleb128 0x37
	.uaword	0x16a4
	.uaword	.LLST105
	.uleb128 0x37
	.uaword	0x1698
	.uaword	.LLST106
	.uleb128 0x31
	.uaword	.LBB780
	.uaword	.LBE780
	.uleb128 0x30
	.uaword	0x16b0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1598
	.uaword	.LBB781
	.uaword	.LBE781
	.byte	0x2
	.uahalf	0x4d7
	.uaword	0x2c00
	.uleb128 0x37
	.uaword	0x15b5
	.uaword	.LLST107
	.uleb128 0x38
	.uaword	0x12d2
	.uaword	.LBB782
	.uaword	.LBE782
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x12fa
	.uaword	.LLST107
	.uleb128 0x31
	.uaword	.LBB783
	.uaword	.LBE783
	.uleb128 0x30
	.uaword	0x1306
	.uleb128 0x33
	.uaword	0x1318
	.uaword	.LLST109
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB784
	.uaword	.LBE784
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x2be3
	.uleb128 0x31
	.uaword	.LBB785
	.uaword	.LBE785
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB786
	.uaword	.LBE786
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST110
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB787
	.uaword	.LBE787
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST111
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL199
	.uaword	0x37f2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"ShutdownOS"
	.byte	0x2
	.uahalf	0x4ef
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB117
	.uaword	.LFE117
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2dc9
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x2
	.uahalf	0x4f1
	.uaword	0x95a
	.uaword	.LLST112
	.uleb128 0x49
	.string	"ev"
	.byte	0x2
	.uahalf	0x4f4
	.uaword	0x95a
	.byte	0x7
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x4f5
	.uaword	0x16e7
	.uleb128 0x26
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x4fb
	.uaword	0x1e11
	.byte	0x1
	.byte	0x6f
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x4fc
	.uaword	0x1873
	.uleb128 0x3f
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x4fd
	.uaword	0x1784
	.uaword	.LLST113
	.uleb128 0x32
	.uaword	0x1496
	.uaword	.LBB789
	.uaword	.LBE789
	.byte	0x2
	.uahalf	0x4fc
	.uaword	0x2d1e
	.uleb128 0x2c
	.uaword	0x1284
	.uaword	.LBB790
	.uaword	.LBE790
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB791
	.uaword	.LBE791
	.uleb128 0x33
	.uaword	0x12b2
	.uaword	.LLST114
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB792
	.uaword	.LBE792
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x2cee
	.uleb128 0x31
	.uaword	.LBB793
	.uaword	.LBE793
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB794
	.uaword	.LBE794
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST115
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB795
	.uaword	.LBE795
	.uleb128 0x33
	.uaword	0x12bf
	.uaword	.LLST116
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB796
	.uaword	.LBE796
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1598
	.uaword	.LBB798
	.uaword	.LBE798
	.byte	0x2
	.uahalf	0x52c
	.uaword	0x2dbf
	.uleb128 0x37
	.uaword	0x15b5
	.uaword	.LLST118
	.uleb128 0x38
	.uaword	0x12d2
	.uaword	.LBB799
	.uaword	.LBE799
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x12fa
	.uaword	.LLST118
	.uleb128 0x31
	.uaword	.LBB800
	.uaword	.LBE800
	.uleb128 0x30
	.uaword	0x1306
	.uleb128 0x33
	.uaword	0x1318
	.uaword	.LLST120
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB801
	.uaword	.LBE801
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x2da2
	.uleb128 0x31
	.uaword	.LBB802
	.uaword	.LBE802
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB803
	.uaword	.LBE803
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST121
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB804
	.uaword	.LBE804
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST122
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL219
	.uaword	0x1714
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"GetTaskID"
	.byte	0x2
	.uahalf	0x532
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB118
	.uaword	.LFE118
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e90
	.uleb128 0x4c
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x534
	.uaword	0x4fe
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x537
	.uaword	0x95a
	.uaword	.LLST123
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x539
	.uaword	0x16e7
	.uleb128 0x3f
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x53f
	.uaword	0x1e11
	.uaword	.LLST124
	.uleb128 0x31
	.uaword	.LBB806
	.uaword	.LBE806
	.uleb128 0x42
	.string	"tid"
	.byte	0x2
	.uahalf	0x561
	.uaword	0x4df
	.uaword	.LLST125
	.uleb128 0x3f
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x563
	.uaword	0x1db1
	.uaword	.LLST126
	.uleb128 0x31
	.uaword	.LBB807
	.uaword	.LBE807
	.uleb128 0x42
	.string	"p_sn"
	.byte	0x2
	.uahalf	0x574
	.uaword	0x2e90
	.uaword	.LLST127
	.uleb128 0x31
	.uaword	.LBB808
	.uaword	.LBE808
	.uleb128 0x42
	.string	"p_searched_tdb"
	.byte	0x2
	.uahalf	0x578
	.uaword	0x1db1
	.uaword	.LLST128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x2e96
	.uleb128 0x11
	.uaword	0xd32
	.uleb128 0x40
	.byte	0x1
	.string	"GetTaskState"
	.byte	0x2
	.uahalf	0x59a
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB119
	.uaword	.LFE119
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f5e
	.uleb128 0x4c
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x59c
	.uaword	0x4df
	.byte	0x1
	.byte	0x54
	.uleb128 0x4d
	.string	"State"
	.byte	0x2
	.uahalf	0x59d
	.uaword	0x6a5
	.byte	0x1
	.byte	0x64
	.uleb128 0x4a
	.string	"ev"
	.byte	0x2
	.uahalf	0x5a0
	.uaword	0x95a
	.byte	0x1
	.byte	0x52
	.uleb128 0x41
	.uaword	.LASF14
	.byte	0x2
	.uahalf	0x5a1
	.uaword	0x2034
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x5a3
	.uaword	0x16e7
	.uleb128 0x41
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x5a9
	.uaword	0x1e11
	.uleb128 0x32
	.uaword	0x15e1
	.uaword	.LBB809
	.uaword	.LBE809
	.byte	0x2
	.uahalf	0x5ca
	.uaword	0x2f33
	.uleb128 0x37
	.uaword	0x160d
	.uaword	.LLST129
	.uleb128 0x2e
	.uaword	0x1601
	.byte	0
	.uleb128 0x31
	.uaword	.LBB811
	.uaword	.LBE811
	.uleb128 0x41
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x5cf
	.uaword	0x1db1
	.uleb128 0x1b
	.string	"local_state"
	.byte	0x2
	.uahalf	0x5d2
	.uaword	0x2f5e
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x676
	.uleb128 0x40
	.byte	0x1
	.string	"WaitEvent"
	.byte	0x2
	.uahalf	0x795
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB120
	.uaword	.LFE120
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x314b
	.uleb128 0x4b
	.string	"Mask"
	.byte	0x2
	.uahalf	0x797
	.uaword	0x6d9
	.uaword	.LLST130
	.uleb128 0x49
	.string	"ev"
	.byte	0x2
	.uahalf	0x79a
	.uaword	0x95a
	.byte	0
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x79c
	.uaword	0x16e7
	.uleb128 0x26
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x79e
	.uaword	0x177f
	.byte	0x1
	.byte	0x6c
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x7a0
	.uaword	0x1db1
	.byte	0x1
	.byte	0x6d
	.uleb128 0x26
	.uaword	.LASF19
	.byte	0x2
	.uahalf	0x7a2
	.uaword	0x2699
	.byte	0x1
	.byte	0x6f
	.uleb128 0x31
	.uaword	.LBB812
	.uaword	.LBE812
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x7d4
	.uaword	0x1873
	.uleb128 0x32
	.uaword	0x1496
	.uaword	.LBB813
	.uaword	.LBE813
	.byte	0x2
	.uahalf	0x7d4
	.uaword	0x3088
	.uleb128 0x2c
	.uaword	0x1284
	.uaword	.LBB814
	.uaword	.LBE814
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB815
	.uaword	.LBE815
	.uleb128 0x33
	.uaword	0x12b2
	.uaword	.LLST131
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB816
	.uaword	.LBE816
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x3058
	.uleb128 0x31
	.uaword	.LBB817
	.uaword	.LBE817
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB818
	.uaword	.LBE818
	.uleb128 0x3d
	.uaword	0x11de
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB819
	.uaword	.LBE819
	.uleb128 0x33
	.uaword	0x12bf
	.uaword	.LLST132
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB820
	.uaword	.LBE820
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST133
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1598
	.uaword	.LBB822
	.uaword	.LBE822
	.byte	0x2
	.uahalf	0x7ee
	.uaword	0x3125
	.uleb128 0x2d
	.uaword	0x15b5
	.byte	0x1
	.byte	0x58
	.uleb128 0x38
	.uaword	0x12d2
	.uaword	.LBB823
	.uaword	.LBE823
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x2d
	.uaword	0x12fa
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.uaword	.LBB824
	.uaword	.LBE824
	.uleb128 0x30
	.uaword	0x1306
	.uleb128 0x33
	.uaword	0x1318
	.uaword	.LLST134
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB825
	.uaword	.LBE825
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x3108
	.uleb128 0x31
	.uaword	.LBB826
	.uaword	.LBE826
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB827
	.uaword	.LBE827
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST135
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB828
	.uaword	.LBE828
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST136
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	.LVL267
	.uaword	0x382b
	.uaword	0x3139
	.uleb128 0x36
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 4
	.byte	0
	.uleb128 0x35
	.uaword	.LVL269
	.uaword	0x386a
	.uleb128 0x36
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"SetEvent"
	.byte	0x2
	.uahalf	0x802
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB121
	.uaword	.LFE121
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3385
	.uleb128 0x25
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x804
	.uaword	0x4df
	.uaword	.LLST137
	.uleb128 0x4b
	.string	"Mask"
	.byte	0x2
	.uahalf	0x805
	.uaword	0x6d9
	.uaword	.LLST138
	.uleb128 0x4a
	.string	"ev"
	.byte	0x2
	.uahalf	0x808
	.uaword	0x95a
	.byte	0x2
	.byte	0x8e
	.sleb128 -1
	.uleb128 0x41
	.uaword	.LASF14
	.byte	0x2
	.uahalf	0x80a
	.uaword	0x2034
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x80c
	.uaword	0x16e7
	.uleb128 0x32
	.uaword	0x15e1
	.uaword	.LBB830
	.uaword	.LBE830
	.byte	0x2
	.uahalf	0x837
	.uaword	0x31d7
	.uleb128 0x37
	.uaword	0x160d
	.uaword	.LLST139
	.uleb128 0x2e
	.uaword	0x1601
	.byte	0
	.uleb128 0x31
	.uaword	.LBB832
	.uaword	.LBE832
	.uleb128 0x42
	.string	"p_sn"
	.byte	0x2
	.uahalf	0x83b
	.uaword	0xd50
	.uaword	.LLST140
	.uleb128 0x42
	.string	"p_tdb_waking_up"
	.byte	0x2
	.uahalf	0x83d
	.uaword	0x1db1
	.uaword	.LLST141
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x83f
	.uaword	0x1873
	.uleb128 0x32
	.uaword	0x1496
	.uaword	.LBB833
	.uaword	.LBE833
	.byte	0x2
	.uahalf	0x83f
	.uaword	0x32b5
	.uleb128 0x2c
	.uaword	0x1284
	.uaword	.LBB834
	.uaword	.LBE834
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB835
	.uaword	.LBE835
	.uleb128 0x33
	.uaword	0x12b2
	.uaword	.LLST142
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB836
	.uaword	.LBE836
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x3285
	.uleb128 0x31
	.uaword	.LBB837
	.uaword	.LBE837
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB838
	.uaword	.LBE838
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST143
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB839
	.uaword	.LBE839
	.uleb128 0x33
	.uaword	0x12bf
	.uaword	.LLST144
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB840
	.uaword	.LBE840
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST145
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1598
	.uaword	.LBB842
	.uaword	.LBE842
	.byte	0x2
	.uahalf	0x84a
	.uaword	0x3356
	.uleb128 0x37
	.uaword	0x15b5
	.uaword	.LLST146
	.uleb128 0x38
	.uaword	0x12d2
	.uaword	.LBB843
	.uaword	.LBE843
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x12fa
	.uaword	.LLST146
	.uleb128 0x31
	.uaword	.LBB844
	.uaword	.LBE844
	.uleb128 0x30
	.uaword	0x1306
	.uleb128 0x33
	.uaword	0x1318
	.uaword	.LLST148
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB845
	.uaword	.LBE845
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x3339
	.uleb128 0x31
	.uaword	.LBB846
	.uaword	.LBE846
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB847
	.uaword	.LBE847
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST149
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB848
	.uaword	.LBE848
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST150
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	.LVL287
	.uaword	0x38a0
	.uaword	0x3371
	.uleb128 0x36
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 -1
	.uleb128 0x36
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x27
	.uaword	.LVL288
	.uaword	0x38dd
	.uleb128 0x27
	.uaword	.LVL289
	.uaword	0x37f2
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"GetEvent"
	.byte	0x2
	.uahalf	0x860
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB122
	.uaword	.LFE122
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3444
	.uleb128 0x4c
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x862
	.uaword	0x4df
	.byte	0x1
	.byte	0x54
	.uleb128 0x4d
	.string	"Event"
	.byte	0x2
	.uahalf	0x863
	.uaword	0x6ef
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x866
	.uaword	0x95a
	.uaword	.LLST151
	.uleb128 0x41
	.uaword	.LASF14
	.byte	0x2
	.uahalf	0x868
	.uaword	0x2034
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x86a
	.uaword	0x16e7
	.uleb128 0x32
	.uaword	0x15e1
	.uaword	.LBB850
	.uaword	.LBE850
	.byte	0x2
	.uahalf	0x89a
	.uaword	0x340d
	.uleb128 0x2d
	.uaword	0x160d
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	0x1601
	.byte	0
	.uleb128 0x31
	.uaword	.LBB852
	.uaword	.LBE852
	.uleb128 0x1b
	.string	"p_tdb_event"
	.byte	0x2
	.uahalf	0x89f
	.uaword	0x1db1
	.uleb128 0x42
	.string	"p_tcb_event"
	.byte	0x2
	.uahalf	0x8a1
	.uaword	0x3444
	.uaword	.LLST152
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x3449
	.uleb128 0xd
	.byte	0x4
	.uaword	0x344f
	.uleb128 0x11
	.uaword	0xf4d
	.uleb128 0x40
	.byte	0x1
	.string	"ClearEvent"
	.byte	0x2
	.uahalf	0x8ca
	.byte	0x1
	.uaword	0x95a
	.uaword	.LFB123
	.uaword	.LFE123
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3617
	.uleb128 0x4b
	.string	"Mask"
	.byte	0x2
	.uahalf	0x8cc
	.uaword	0x6d9
	.uaword	.LLST153
	.uleb128 0x49
	.string	"ev"
	.byte	0x2
	.uahalf	0x8cf
	.uaword	0x95a
	.byte	0
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x8d1
	.uaword	0x16e7
	.uleb128 0x41
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x8d7
	.uaword	0x1e11
	.uleb128 0x41
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x8d9
	.uaword	0x1db1
	.uleb128 0x26
	.uaword	.LASF19
	.byte	0x2
	.uahalf	0x8db
	.uaword	0x2699
	.byte	0x1
	.byte	0x6f
	.uleb128 0x31
	.uaword	.LBB853
	.uaword	.LBE853
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x8fd
	.uaword	0x1873
	.uleb128 0x32
	.uaword	0x1496
	.uaword	.LBB854
	.uaword	.LBE854
	.byte	0x2
	.uahalf	0x8fd
	.uaword	0x3578
	.uleb128 0x2c
	.uaword	0x1284
	.uaword	.LBB855
	.uaword	.LBE855
	.byte	0x1
	.byte	0xfe
	.uleb128 0x31
	.uaword	.LBB856
	.uaword	.LBE856
	.uleb128 0x33
	.uaword	0x12b2
	.uaword	.LLST154
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB857
	.uaword	.LBE857
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x3548
	.uleb128 0x31
	.uaword	.LBB858
	.uaword	.LBE858
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB859
	.uaword	.LBE859
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST155
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LBB860
	.uaword	.LBE860
	.uleb128 0x33
	.uaword	0x12bf
	.uaword	.LLST156
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB861
	.uaword	.LBE861
	.byte	0x3
	.uahalf	0x171
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST157
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1598
	.uaword	.LBB863
	.uaword	.LBE863
	.byte	0x2
	.uahalf	0x904
	.uleb128 0x37
	.uaword	0x15b5
	.uaword	.LLST158
	.uleb128 0x38
	.uaword	0x12d2
	.uaword	.LBB864
	.uaword	.LBE864
	.byte	0x1
	.uahalf	0x107
	.uleb128 0x37
	.uaword	0x12fa
	.uaword	.LLST158
	.uleb128 0x31
	.uaword	.LBB865
	.uaword	.LBE865
	.uleb128 0x30
	.uaword	0x1306
	.uleb128 0x33
	.uaword	0x1318
	.uaword	.LLST160
	.uleb128 0x32
	.uaword	0x11b3
	.uaword	.LBB866
	.uaword	.LBE866
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x35f8
	.uleb128 0x31
	.uaword	.LBB867
	.uaword	.LBE867
	.uleb128 0x30
	.uaword	0x11d1
	.uleb128 0x31
	.uaword	.LBB868
	.uaword	.LBE868
	.uleb128 0x33
	.uaword	0x11de
	.uaword	.LLST161
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1206
	.uaword	.LBB869
	.uaword	.LBE869
	.byte	0x3
	.uahalf	0x181
	.uleb128 0x37
	.uaword	0x1220
	.uaword	.LLST162
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"GetISRID"
	.byte	0x2
	.uahalf	0xcf0
	.byte	0x1
	.uaword	0x4ef
	.uaword	.LFB124
	.uaword	.LFE124
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3667
	.uleb128 0x4a
	.string	"isr_id"
	.byte	0x2
	.uahalf	0xcf5
	.uaword	0x4ef
	.byte	0x1
	.byte	0x52
	.uleb128 0x41
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0xcf7
	.uaword	0x1db1
	.uleb128 0x34
	.uaword	0x161a
	.uaword	.LBB871
	.uaword	.LBE871
	.byte	0x2
	.uahalf	0xcf7
	.byte	0
	.uleb128 0x4e
	.string	"osEE_kdb_var"
	.byte	0xc
	.byte	0x42
	.uaword	0x119d
	.byte	0x1
	.byte	0x1
	.uleb128 0x4e
	.string	"osEE_cdb_var"
	.byte	0xc
	.byte	0x5b
	.uaword	0x10ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.byte	0x1
	.string	"osEE_idle_task_terminate"
	.byte	0x4
	.byte	0x9b
	.byte	0x1
	.byte	0x1
	.uaword	0x36bc
	.uleb128 0x50
	.uaword	0xf75
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"osEE_hal_save_ctx_and_ready2stacked"
	.byte	0x4
	.byte	0x68
	.byte	0x1
	.byte	0x1
	.uaword	0x36fa
	.uleb128 0x50
	.uaword	0xf75
	.uleb128 0x50
	.uaword	0x4b0
	.uleb128 0x50
	.uaword	0x4b0
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"osEE_task_end"
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.byte	0x1
	.uaword	0x3718
	.uleb128 0x50
	.uaword	0x1db1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"osEE_cpu_startos"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.uaword	0x256
	.byte	0x1
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_task_activated"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uaword	0x95a
	.byte	0x1
	.uaword	0x375b
	.uleb128 0x50
	.uaword	0xf75
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_scheduler_task_activated"
	.byte	0xd
	.byte	0x77
	.byte	0x1
	.uaword	0x256
	.byte	0x1
	.uaword	0x3792
	.uleb128 0x50
	.uaword	0x15db
	.uleb128 0x50
	.uaword	0xf75
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"osEE_hal_terminate_ctx"
	.byte	0x4
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.uaword	0x37be
	.uleb128 0x50
	.uaword	0x4b0
	.uleb128 0x50
	.uaword	0xd56
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_scheduler_task_insert"
	.byte	0xd
	.byte	0x7e
	.byte	0x1
	.uaword	0x256
	.byte	0x1
	.uaword	0x37f2
	.uleb128 0x50
	.uaword	0x15db
	.uleb128 0x50
	.uaword	0xf75
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_scheduler_task_preemption_point"
	.byte	0xd
	.byte	0x85
	.byte	0x1
	.uaword	0x256
	.byte	0x1
	.uaword	0x382b
	.uleb128 0x50
	.uaword	0x15db
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_scheduler_core_pop_running"
	.byte	0xd
	.byte	0x5b
	.byte	0x1
	.uaword	0xd50
	.byte	0x1
	.uaword	0x3864
	.uleb128 0x50
	.uaword	0x127e
	.uleb128 0x50
	.uaword	0x3864
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xd41
	.uleb128 0x4f
	.byte	0x1
	.string	"osEE_change_context_from_running"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uaword	0x38a0
	.uleb128 0x50
	.uaword	0xf75
	.uleb128 0x50
	.uaword	0xf75
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_task_event_set_mask"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.uaword	0xd50
	.byte	0x1
	.uaword	0x38d7
	.uleb128 0x50
	.uaword	0xf75
	.uleb128 0x50
	.uaword	0x6d9
	.uleb128 0x50
	.uaword	0x38d7
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x95a
	.uleb128 0x53
	.byte	0x1
	.string	"osEE_scheduler_task_unblocked"
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.uaword	0x256
	.byte	0x1
	.uleb128 0x50
	.uaword	0x15db
	.uleb128 0x50
	.uaword	0xd50
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x52
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-.Ltext0
	.uaword	.LFE100-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL4-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-1-.Ltext0
	.uaword	.LFE100-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL47-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL47-1-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL47-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL47-1-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL63-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL56-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL63-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL56-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL75-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL75-1-.Ltext0
	.uaword	.LFE111-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL76-.Ltext0
	.uaword	.LVL77-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77-1-.Ltext0
	.uaword	.LFE111-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL67-.Ltext0
	.uaword	.LVL75-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL75-1-.Ltext0
	.uaword	.LFE111-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL71-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL81-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x5
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL82-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL78-.Ltext0
	.uaword	.LVL80-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL82-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL84-.Ltext0
	.uaword	.LVL102-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL102-1-.Ltext0
	.uaword	.LFE112-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL100-.Ltext0
	.uaword	.LVL101-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102-.Ltext0
	.uaword	.LVL103-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL109-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL114-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL98-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL101-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL109-.Ltext0
	.uaword	.LFE112-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL102-1-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL102-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL102-1-.Ltext0
	.uaword	.LFE112-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL87-.Ltext0
	.uaword	.LVL97-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL97-.Ltext0
	.uaword	.LVL99-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL99-.Ltext0
	.uaword	.LVL101-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL101-.Ltext0
	.uaword	.LVL104-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL104-.Ltext0
	.uaword	.LVL109-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL111-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL111-.Ltext0
	.uaword	.LVL114-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL92-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL104-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL113-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL94-.Ltext0
	.uaword	.LVL96-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL94-.Ltext0
	.uaword	.LVL95-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL113-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL104-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x5
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL105-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL112-.Ltext0
	.uaword	.LVL114-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL105-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL104-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL112-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL112-.Ltext0
	.uaword	.LVL114-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL109-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL116-.Ltext0
	.uaword	.LVL125-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL117-.Ltext0
	.uaword	.LVL118-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL120-.Ltext0
	.uaword	.LVL121-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL119-.Ltext0
	.uaword	.LVL123-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL123-.Ltext0
	.uaword	.LVL124-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL124-.Ltext0
	.uaword	.LVL125-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL130-.Ltext0
	.uaword	.LVL131-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL129-.Ltext0
	.uaword	.LVL143-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL133-.Ltext0
	.uaword	.LVL135-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL133-.Ltext0
	.uaword	.LVL134-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL137-.Ltext0
	.uaword	.LVL143-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL140-.Ltext0
	.uaword	.LVL141-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL141-.Ltext0
	.uaword	.LVL142-.Ltext0
	.uahalf	0x5
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL142-.Ltext0
	.uaword	.LVL143-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL138-.Ltext0
	.uaword	.LVL140-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL140-.Ltext0
	.uaword	.LVL142-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL142-.Ltext0
	.uaword	.LVL143-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL144-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL151-.Ltext0
	.uaword	.LFE115-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL172-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL173-.Ltext0
	.uaword	.LFE115-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL151-.Ltext0
	.uaword	.LFE115-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL147-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL148-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL149-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL150-.Ltext0
	.uaword	.LVL159-.Ltext0
	.uahalf	0x2
	.byte	0x83
	.sleb128 4
	.uaword	.LVL159-.Ltext0
	.uaword	.LVL161-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL151-.Ltext0
	.uaword	.LVL159-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	.LVL159-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL163-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL153-.Ltext0
	.uaword	.LVL154-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL162-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL158-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL157-.Ltext0
	.uahalf	0x3
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL159-.Ltext0
	.uaword	.LVL161-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL159-.Ltext0
	.uaword	.LVL162-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL164-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL167-.Ltext0
	.uaword	.LVL168-.Ltext0
	.uahalf	0x5
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL168-.Ltext0
	.uaword	.LVL169-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL170-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL165-.Ltext0
	.uaword	.LVL167-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL167-.Ltext0
	.uaword	.LVL169-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL170-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL174-.Ltext0
	.uaword	.LVL189-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL189-.Ltext0
	.uaword	.LVL192-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL195-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL195-.Ltext0
	.uaword	.LFE116-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL206-.Ltext0
	.uaword	.LVL207-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL207-.Ltext0
	.uaword	.LFE116-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL199-1-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL189-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL189-.Ltext0
	.uaword	.LVL192-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL195-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL195-.Ltext0
	.uaword	.LFE116-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL177-.Ltext0
	.uaword	.LVL207-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL178-.Ltext0
	.uaword	.LVL199-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL198-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL180-.Ltext0
	.uaword	.LVL181-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL179-.Ltext0
	.uaword	.LVL191-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL183-.Ltext0
	.uaword	.LVL185-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL183-.Ltext0
	.uaword	.LVL184-.Ltext0
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL187-.Ltext0
	.uaword	.LVL188-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	.LVL188-.Ltext0
	.uaword	.LVL190-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL188-.Ltext0
	.uaword	.LVL190-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL188-.Ltext0
	.uaword	.LVL191-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL193-.Ltext0
	.uaword	.LVL194-.Ltext0
	.uahalf	0x2
	.byte	0x83
	.sleb128 29
	.uaword	.LVL194-.Ltext0
	.uaword	.LVL196-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL194-.Ltext0
	.uaword	.LVL196-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL194-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL199-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL202-.Ltext0
	.uaword	.LVL204-.Ltext0
	.uahalf	0x5
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL204-.Ltext0
	.uaword	.LVL205-.Ltext0
	.uahalf	0x5
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL205-.Ltext0
	.uaword	.LVL206-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL200-.Ltext0
	.uaword	.LVL202-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL202-.Ltext0
	.uaword	.LVL205-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL205-.Ltext0
	.uaword	.LVL206-.Ltext0
	.uahalf	0x3
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL208-.Ltext0
	.uaword	.LVL219-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL219-1-.Ltext0
	.uaword	.LVL219-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL219-.Ltext0
	.uaword	.LFE117-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL216-.Ltext0
	.uaword	.LVL217-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL217-.Ltext0
	.uaword	.LVL218-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL211-.Ltext0
	.uaword	.LVL212-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL210-.Ltext0
	.uaword	.LVL219-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL219-.Ltext0
	.uaword	.LVL223-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL214-.Ltext0
	.uaword	.LVL216-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL214-.Ltext0
	.uaword	.LVL215-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL219-.Ltext0
	.uaword	.LVL223-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL222-.Ltext0
	.uaword	.LVL224-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL224-.Ltext0
	.uaword	.LVL225-.Ltext0
	.uahalf	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL225-.Ltext0
	.uaword	.LVL226-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL220-.Ltext0
	.uaword	.LVL222-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL222-.Ltext0
	.uaword	.LVL225-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL225-.Ltext0
	.uaword	.LVL226-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL242-.Ltext0
	.uaword	.LVL243-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL243-.Ltext0
	.uaword	.LFE118-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL228-.Ltext0
	.uaword	.LVL233-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL229-.Ltext0
	.uaword	.LVL231-.Ltext0
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL231-.Ltext0
	.uaword	.LVL232-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL232-.Ltext0
	.uaword	.LVL238-.Ltext0
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL238-.Ltext0
	.uaword	.LVL239-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL239-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL241-.Ltext0
	.uaword	.LVL243-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL230-.Ltext0
	.uaword	.LVL235-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL234-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL235-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL237-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL237-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL246-.Ltext0
	.uaword	.LVL255-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL256-.Ltext0
	.uaword	.LVL267-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL267-1-.Ltext0
	.uaword	.LFE120-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL261-.Ltext0
	.uaword	.LVL262-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL264-.Ltext0
	.uaword	.LVL266-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL264-.Ltext0
	.uaword	.LVL265-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL273-.Ltext0
	.uaword	.LVL274-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL274-.Ltext0
	.uaword	.LVL275-.Ltext0
	.uahalf	0x5
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL275-.Ltext0
	.uaword	.LVL276-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL271-.Ltext0
	.uaword	.LVL273-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL273-.Ltext0
	.uaword	.LVL275-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL275-.Ltext0
	.uaword	.LVL276-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL277-.Ltext0
	.uaword	.LVL286-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL286-.Ltext0
	.uaword	.LFE121-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL277-.Ltext0
	.uaword	.LVL287-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL287-1-.Ltext0
	.uaword	.LFE121-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL278-.Ltext0
	.uaword	.LVL286-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL286-.Ltext0
	.uaword	.LFE121-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL287-.Ltext0
	.uaword	.LVL288-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL279-.Ltext0
	.uaword	.LVL287-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL281-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL280-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL284-.Ltext0
	.uaword	.LVL291-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL284-.Ltext0
	.uaword	.LVL285-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL289-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL292-.Ltext0
	.uaword	.LVL293-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL293-.Ltext0
	.uaword	.LVL294-.Ltext0
	.uahalf	0x5
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL294-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL290-.Ltext0
	.uaword	.LVL292-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL292-.Ltext0
	.uaword	.LVL294-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL294-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL300-.Ltext0
	.uaword	.LVL301-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL301-.Ltext0
	.uaword	.LFE122-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL299-.Ltext0
	.uaword	.LVL301-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL302-.Ltext0
	.uaword	.LVL312-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL312-.Ltext0
	.uaword	.LFE123-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL306-.Ltext0
	.uaword	.LVL307-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL305-.Ltext0
	.uaword	.LVL317-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL309-.Ltext0
	.uaword	.LVL311-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL309-.Ltext0
	.uaword	.LVL310-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL313-.Ltext0
	.uaword	.LVL317-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL316-.Ltext0
	.uaword	.LVL318-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL318-.Ltext0
	.uaword	.LVL319-.Ltext0
	.uahalf	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL319-.Ltext0
	.uaword	.LVL320-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL314-.Ltext0
	.uaword	.LVL316-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL316-.Ltext0
	.uaword	.LVL319-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL319-.Ltext0
	.uaword	.LVL320-.Ltext0
	.uahalf	0x3
	.byte	0x5f
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
	.uaword	.LBB585-.Ltext0
	.uaword	.LBE585-.Ltext0
	.uaword	.LBB598-.Ltext0
	.uaword	.LBE598-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB671-.Ltext0
	.uaword	.LBE671-.Ltext0
	.uaword	.LBB685-.Ltext0
	.uaword	.LBE685-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF8:
	.string	"virt_prio"
.LASF0:
	.string	"p_tdb"
.LASF16:
	.string	"p_tdb_act"
.LASF17:
	.string	"p_reso_db"
.LASF11:
	.string	"p_cdb"
.LASF3:
	.string	"current_prio"
.LASF4:
	.string	"p_curr"
.LASF12:
	.string	"service_id"
.LASF13:
	.string	"p_idle_tdb"
.LASF19:
	.string	"p_curr_tcb"
.LASF5:
	.string	"os_status"
.LASF9:
	.string	"flags"
.LASF2:
	.string	"prev_prio"
.LASF18:
	.string	"p_reso_cb"
.LASF7:
	.string	"p_ccb"
.LASF6:
	.string	"app_mode"
.LASF10:
	.string	"Error"
.LASF1:
	.string	"dispatch_prio"
.LASF14:
	.string	"p_kdb"
.LASF15:
	.string	"TaskID"
	.extern	osEE_scheduler_task_unblocked,STT_FUNC,0
	.extern	osEE_task_event_set_mask,STT_FUNC,0
	.extern	osEE_change_context_from_running,STT_FUNC,0
	.extern	osEE_scheduler_core_pop_running,STT_FUNC,0
	.extern	osEE_scheduler_task_preemption_point,STT_FUNC,0
	.extern	osEE_hal_terminate_ctx,STT_FUNC,0
	.extern	osEE_scheduler_task_insert,STT_FUNC,0
	.extern	osEE_scheduler_task_activated,STT_FUNC,0
	.extern	osEE_task_activated,STT_FUNC,0
	.extern	osEE_kdb_var,STT_OBJECT,20
	.extern	osEE_task_end,STT_FUNC,0
	.extern	osEE_hal_save_ctx_and_ready2stacked,STT_FUNC,0
	.extern	osEE_cpu_startos,STT_FUNC,0
	.extern	osEE_cdb_var,STT_OBJECT,8
	.extern	osEE_idle_task_terminate,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
