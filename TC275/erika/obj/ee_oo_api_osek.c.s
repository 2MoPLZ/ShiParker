	.file	"ee_oo_api_osek.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.type	osEE_shutdown_os, @function
osEE_shutdown_os:
.LFB100:
	.file 1 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_kernel.h"
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
.LFB109:
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
#APP
	# 276 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	disable
	# 0 "" 2
.LVL6:
#NO_APP
.LBE743:
.LBE742:
	.loc 2 73 0
	mov	%d15, 1
	st.b	[%a15] 30, %d15
.LVL7:
	ret
.LFE109:
	.size	DisableAllInterrupts, .-DisableAllInterrupts
	.align 1
	.global	EnableAllInterrupts
	.type	EnableAllInterrupts, @function
EnableAllInterrupts:
.LFB110:
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
.LBB744:
.LBB745:
	.loc 3 282 0
#APP
	# 282 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	enable
	# 0 "" 2
.LVL9:
#NO_APP
.L5:
	ret
.LBE745:
.LBE744:
.LFE110:
	.size	EnableAllInterrupts, .-EnableAllInterrupts
	.align 1
	.global	SuspendAllInterrupts
	.type	SuspendAllInterrupts, @function
SuspendAllInterrupts:
.LFB112:
	.loc 2 133 0
	mov.aa	%a14, %SP
.LCFI3:
	.loc 2 135 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL10:
.LBB757:
.LBB758:
	.loc 2 113 0
	ld.bu	%d15, [%a15] 28
	jnz	%d15, .L8
.LBB759:
.LBB760:
.LBB761:
.LBB762:
.LBB763:
.LBB764:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL11:
#NO_APP
.LBE764:
.LBE763:
.LBE762:
.LBB765:
.LBB766:
	.loc 3 276 0
#APP
	# 276 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE766:
.LBE765:
.LBE761:
.LBE760:
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
.LBE759:
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
.LBE758:
.LBE757:
.LFE112:
	.size	SuspendAllInterrupts, .-SuspendAllInterrupts
	.align 1
	.global	ResumeAllInterrupts
	.type	ResumeAllInterrupts, @function
ResumeAllInterrupts:
.LFB113:
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
.LBB767:
.LBB768:
.LBB769:
.LBB770:
	.loc 3 265 0
	ld.w	%d15, [%a15] 20
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL17:
#NO_APP
.L11:
	ret
.LBE770:
.LBE769:
.LBE768:
.LBE767:
.LFE113:
	.size	ResumeAllInterrupts, .-ResumeAllInterrupts
	.align 1
	.global	SuspendOSInterrupts
	.type	SuspendOSInterrupts, @function
SuspendOSInterrupts:
.LFB114:
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
.LBB771:
.LBB772:
.LBB773:
.LBB774:
.LBB775:
.LBB776:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d2, LO:65068
	# 0 "" 2
.LVL19:
#NO_APP
.LBE776:
.LBE775:
.LBE774:
	.loc 3 365 0
	and	%d15, %d2, 255
.LVL20:
	ge.u	%d15, %d15, 17
.LVL21:
	jnz	%d15, .L15
.LBB777:
	.loc 3 366 0
	mov	%d15, %d2
.LVL22:
	mov	%d3, 17
	insert	%d15, %d15, %d3, 0, 8
.LVL23:
.LBB778:
.LBB779:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL24:
#NO_APP
.L15:
.LBE779:
.LBE778:
.LBE777:
.LBE773:
.LBE772:
	.loc 2 189 0
	st.w	[%a15] 24, %d2
	.loc 2 190 0
	ld.bu	%d15, [%a15] 29
.LVL25:
	add	%d15, 1
	st.b	[%a15] 29, %d15
.LBE771:
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
.LFE114:
	.size	SuspendOSInterrupts, .-SuspendOSInterrupts
	.align 1
	.global	ResumeOSInterrupts
	.type	ResumeOSInterrupts, @function
ResumeOSInterrupts:
.LFB115:
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
.LBB780:
.LBB781:
.LBB782:
.LBB783:
.LBB784:
	.loc 3 259 0
#APP
	# 259 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d3, LO:65068
	# 0 "" 2
.LVL30:
#NO_APP
	mov	%d15, %d3
.LVL31:
	and	%d3, %d3, 255
.LVL32:
.LBE784:
.LBE783:
.LBE782:
	.loc 3 383 0
	and	%d2, %d2, 255
.LVL33:
	jeq	%d3, %d2, .L18
.LVL34:
	insert	%d15, %d15, %d2, 0, 8
.LVL35:
.LBB785:
.LBB786:
	.loc 3 265 0
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL36:
#NO_APP
.L18:
	ret
.LBE786:
.LBE785:
.LBE781:
.LBE780:
.LFE115:
	.size	ResumeOSInterrupts, .-ResumeOSInterrupts
	.align 1
	.global	StartOS
	.type	StartOS, @function
StartOS:
.LFB116:
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
	ge.u	%d15, %d15, 17
.LVL42:
	jnz	%d15, .L22
.LBB793:
	.loc 3 366 0
	mov	%d15, %d8
.LVL43:
	mov	%d2, 17
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
.LVL47:
	.loc 2 268 0
	mov	%d5, 24
	.loc 2 264 0
	jz	%d2, .L23
	j	.L33
.LVL48:
.L29:
.LBB796:
	.loc 2 528 0
	mov	%d15, 2
	st.b	[%a15] 16, %d15
.L30:
.LVL49:
	.loc 2 537 0
	ld.bu	%d15, [%a15] 16
	jne	%d15, 2, .L25
.LVL50:
.LBB797:
.LBB798:
	.file 4 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_std_change_context.h"
	.loc 4 150 0
	mov.aa	%a4, %a12
	ld.a	%a5, [%a12] 4
	mov.aa	%a6, %a5
	call	osEE_hal_save_ctx_and_ready2stacked
.LVL51:
.LBE798:
.LBE797:
	.loc 2 539 0
	mov.aa	%a4, %a12
	call	osEE_task_end
.LVL52:
.L25:
.LBB799:
.LBB800:
	.loc 3 276 0
#APP
	# 276 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	disable
	# 0 "" 2
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
.LVL60:
.L33:
.LBE803:
.LBE802:
.LBE801:
.LBB809:
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
.LBE809:
	.loc 2 582 0
	mov	%d2, %d5
	ret
.LFE116:
	.size	StartOS, .-StartOS
	.align 1
	.global	GetActiveApplicationMode
	.type	GetActiveApplicationMode, @function
GetActiveApplicationMode:
.LFB117:
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
.LFE117:
	.size	GetActiveApplicationMode, .-GetActiveApplicationMode
	.align 1
	.global	ActivateTask
	.type	ActivateTask, @function
ActivateTask:
.LFB118:
	.loc 2 620 0
.LVL66:
	mov.aa	%a14, %SP
.LCFI9:
.LVL67:
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
	ge.u	%d15, %d15, 17
.LVL71:
	jnz	%d15, .L40
.LBB820:
	.loc 3 366 0
	mov	%d15, %d9
.LVL72:
	mov	%d2, 17
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
	ret
.LFE118:
	.size	ActivateTask, .-ActivateTask
	.align 1
	.global	ChainTask
	.type	ChainTask, @function
ChainTask:
.LFB119:
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
.LBB863:
.LBB864:
	.loc 1 276 0
	movh.a	%a2, hi:osEE_kdb_var
	lea	%a2, [%a2] lo:osEE_kdb_var
	ld.w	%d15, [%a2] 8
.LBE864:
.LBE863:
	.loc 2 746 0
	mov	%d2, 3
	.loc 2 745 0
	jge.u	%d4, %d15, .L57
.LBB865:
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
.LBB866:
	.loc 2 775 0
	ld.bu	%d15, [%a15] 28
	jz	%d15, .L47
	.loc 2 776 0
	mov	%d15, 0
	st.b	[%a15] 28, %d15
.LVL88:
.LBB867:
.LBB868:
.LBB869:
.LBB870:
	.loc 3 265 0
	ld.w	%d15, [%a15] 20
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL89:
#NO_APP
.L47:
.LBE870:
.LBE869:
.LBE868:
.LBE867:
	.loc 2 779 0
	ld.bu	%d15, [%a15] 30
	jz	%d15, .L48
	.loc 2 780 0
	mov	%d15, 0
	st.b	[%a15] 30, %d15
.LBB871:
.LBB872:
	.loc 3 282 0
#APP
	# 282 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	enable
	# 0 "" 2
#NO_APP
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
	ge.u	%d15, %d15, 17
.LVL92:
	jnz	%d15, .L49
.LBB879:
	.loc 3 366 0
	mov	%d15, %d8
.LVL93:
	mov	%d2, 17
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
	.loc 1 172 0
	movh.a	%a15, hi:osEE_cdb_var
.LVL107:
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL108:
.LBE893:
.LBE892:
.LBB894:
.LBB895:
	.loc 4 141 0
	ld.a	%a15, [%a15]0
	ld.a	%a4, [%a15] 4
	mov.a	%a5, 0
	j	osEE_hal_terminate_ctx
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
	ret
.LFE119:
	.size	ChainTask, .-ChainTask
	.align 1
	.global	TerminateTask
	.type	TerminateTask, @function
TerminateTask:
.LFB120:
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
.LBB915:
	.loc 2 902 0
	ld.bu	%d15, [%a15] 28
	jz	%d15, .L59
	.loc 2 903 0
	mov	%d15, 0
	st.b	[%a15] 28, %d15
.LVL117:
.LBB916:
.LBB917:
.LBB918:
.LBB919:
	.loc 3 265 0
	ld.w	%d15, [%a15] 20
#APP
	# 265 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL118:
#NO_APP
.L59:
.LBE919:
.LBE918:
.LBE917:
.LBE916:
	.loc 2 906 0
	ld.bu	%d15, [%a15] 30
	jz	%d15, .L60
	.loc 2 907 0
	mov	%d15, 0
	st.b	[%a15] 30, %d15
.LBB920:
.LBB921:
	.loc 3 282 0
#APP
	# 282 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\src\ee_hal_internal.h" 1
	enable
	# 0 "" 2
#NO_APP
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
	ge.u	%d2, %d2, 17
.LVL121:
	jnz	%d2, .L61
.LVL122:
	mov	%d2, 17
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
	.loc 4 141 0
	ld.a	%a4, [%a2] 4
	mov.a	%a5, 0
	j	osEE_hal_terminate_ctx
.LVL125:
.LBE932:
.LBE931:
.LBE915:
.LFE120:
	.size	TerminateTask, .-TerminateTask
	.align 1
	.global	Schedule
	.type	Schedule, @function
Schedule:
.LFB121:
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
	ge.u	%d15, %d15, 17
.LVL131:
	jnz	%d15, .L64
.LBB940:
	.loc 3 366 0
	mov	%d15, %d8
.LVL132:
	mov	%d2, 17
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
	movh.a	%a4, hi:osEE_kdb_var
	lea	%a4, [%a4] lo:osEE_kdb_var
	call	osEE_scheduler_task_preemption_point
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
	mov	%d2, 0
	ret
.LFE121:
	.size	Schedule, .-Schedule
	.align 1
	.global	GetResource
	.type	GetResource, @function
GetResource:
.LFB122:
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
.LBB951:
.LBB952:
	.loc 1 291 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 16
.LBE952:
.LBE951:
	.loc 2 1084 0
	mov	%d2, 3
	.loc 2 1083 0
	jge.u	%d4, %d15, .L67
.LBB953:
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
	ge.u	%d3, %d3, 17
.LVL154:
	jnz	%d3, .L68
.LBB960:
	.loc 3 366 0
	mov	%d3, %d2
.LVL155:
	mov	%d5, 17
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
	st.b	[%a15] 1, %d15
.LVL159:
.LBB963:
.LBB964:
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
.LBE953:
	.loc 2 1149 0
	ret
.LFE122:
	.size	GetResource, .-GetResource
	.align 1
	.global	ReleaseResource
	.type	ReleaseResource, @function
ReleaseResource:
.LFB123:
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
.LBB973:
.LBB974:
	.loc 1 291 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 16
.LBE974:
.LBE973:
	.loc 2 1192 0
	mov	%d2, 3
	.loc 2 1191 0
	jge.u	%d4, %d15, .L75
.LBB975:
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
	ge.u	%d2, %d2, 17
.LVL181:
	jnz	%d2, .L76
.LBB983:
	.loc 3 366 0
	mov	%d2, %d15
.LVL182:
	mov	%d3, 17
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
	st.b	[%a15] 1, %d3
.LVL188:
.LBB987:
.LBB988:
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
.LBE988:
.LBE987:
.LBE986:
.LBB989:
	.loc 2 1228 0
	ld.bu	%d5, [%a3] 29
.LVL193:
	.loc 2 1230 0
	st.b	[%a15] 1, %d5
.LVL194:
.LBB990:
.LBB991:
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
.LBE991:
.LBE990:
.LBE989:
	.loc 2 1234 0
	mov	%d2, 0
	st.w	[%a2] 8, %d2
	.loc 2 1237 0
	movh.a	%a4, hi:osEE_kdb_var
	lea	%a4, [%a4] lo:osEE_kdb_var
	call	osEE_scheduler_task_preemption_point
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
	mov	%d2, 0
.LVL207:
.L75:
.LBE976:
.LBE975:
	.loc 2 1259 0
	ret
.LFE123:
	.size	ReleaseResource, .-ReleaseResource
	.align 1
	.global	ShutdownOS
	.type	ShutdownOS, @function
ShutdownOS:
.LFB124:
	.loc 2 1267 0
.LVL208:
	mov.aa	%a14, %SP
.LCFI15:
	.loc 2 1275 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
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
	ge.u	%d15, %d15, 17
.LVL212:
	jnz	%d15, .L86
.LBB1006:
	.loc 3 366 0
	mov	%d15, %d2
.LVL213:
	mov	%d3, 17
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
	mov	%d2, 7
	ret
.LFE124:
	.size	ShutdownOS, .-ShutdownOS
	.align 1
	.global	GetTaskID
	.type	GetTaskID, @function
GetTaskID:
.LFB125:
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
.LBB1017:
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
.LBB1018:
	.loc 2 1396 0
	ld.a	%a15, [%a15] 12
.LVL233:
	ld.a	%a15, [%a15]0
.LVL234:
	.loc 2 1398 0
	jz.a	%a15, .L92
.LBB1019:
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
.LBE1019:
	.loc 2 1398 0
	jnz.a	%a15, .L95
.LBE1018:
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
.LBE1017:
	.loc 2 1431 0
	ret
.LFE125:
	.size	GetTaskID, .-GetTaskID
	.align 1
	.global	GetTaskState
	.type	GetTaskState, @function
GetTaskState:
.LFB126:
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
.LBB1020:
.LBB1021:
	.loc 1 276 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 8
.LBE1021:
.LBE1020:
	.loc 2 1483 0
	mov	%d2, 3
	.loc 2 1482 0
	jge.u	%d4, %d15, .L101
.LVL247:
.LBB1022:
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
.LBE1022:
	.loc 2 1529 0
	ret
.LFE126:
	.size	GetTaskState, .-GetTaskState
	.align 1
	.global	SetRelAlarm
	.type	SetRelAlarm, @function
SetRelAlarm:
.LFB127:
	.loc 2 1539 0
.LVL256:
	mov.aa	%a14, %SP
.LCFI18:
.LVL257:
.LBB1023:
.LBB1024:
	.loc 1 868 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 32
.LBE1024:
.LBE1023:
	.loc 2 1576 0
	mov	%d2, 3
	.loc 2 1575 0
	jge.u	%d4, %d15, .L111
.LBB1025:
	.loc 2 1580 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 28
	addsc.a	%a15, %a15, %d4, 2
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
	ge.u	%d15, %d15, 17
.LVL262:
	jnz	%d15, .L112
.LBB1033:
	.loc 3 366 0
	mov	%d15, %d8
.LVL263:
	mov	%d2, 17
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
	ret
.LFE127:
	.size	SetRelAlarm, .-SetRelAlarm
	.align 1
	.global	SetAbsAlarm
	.type	SetAbsAlarm, @function
SetAbsAlarm:
.LFB128:
	.loc 2 1630 0
.LVL275:
	mov.aa	%a14, %SP
.LCFI19:
.LVL276:
.LBB1044:
.LBB1045:
	.loc 1 868 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 32
.LBE1045:
.LBE1044:
	.loc 2 1667 0
	mov	%d2, 3
	.loc 2 1666 0
	jge.u	%d4, %d15, .L116
.LBB1046:
	.loc 2 1671 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 28
	addsc.a	%a15, %a15, %d4, 2
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
	ge.u	%d15, %d15, 17
.LVL281:
	jnz	%d15, .L117
.LBB1054:
	.loc 3 366 0
	mov	%d15, %d8
.LVL282:
	mov	%d2, 17
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
	ret
.LFE128:
	.size	SetAbsAlarm, .-SetAbsAlarm
	.align 1
	.global	CancelAlarm
	.type	CancelAlarm, @function
CancelAlarm:
.LFB129:
	.loc 2 1718 0
.LVL294:
	mov.aa	%a14, %SP
.LCFI20:
.LVL295:
.LBB1065:
.LBB1066:
	.loc 1 868 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 32
.LBE1066:
.LBE1065:
	.loc 2 1755 0
	mov	%d2, 3
	.loc 2 1754 0
	jge.u	%d4, %d15, .L121
.LBB1067:
	.loc 2 1758 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 28
	addsc.a	%a15, %a15, %d4, 2
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
	ge.u	%d15, %d15, 17
.LVL299:
	jnz	%d15, .L122
.LBB1074:
	.loc 3 366 0
	mov	%d15, %d8
.LVL300:
	mov	%d2, 17
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
	ret
.LFE129:
	.size	CancelAlarm, .-CancelAlarm
	.align 1
	.global	GetAlarm
	.type	GetAlarm, @function
GetAlarm:
.LFB130:
	.loc 2 1789 0
.LVL310:
	mov.aa	%a14, %SP
.LCFI21:
.LVL311:
.LBB1085:
.LBB1086:
	.loc 1 868 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 32
.LBE1086:
.LBE1085:
	.loc 2 1826 0
	mov	%d2, 3
	.loc 2 1825 0
	jge.u	%d4, %d15, .L126
	.loc 2 1829 0
	mov	%d2, 14
	.loc 2 1828 0
	jz.a	%a4, .L126
.LBB1087:
	.loc 2 1833 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 28
	addsc.a	%a15, %a15, %d4, 2
	ld.a	%a15, [%a15]0
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
	ge.u	%d15, %d15, 17
.LVL315:
	jnz	%d15, .L127
.LBB1094:
	.loc 3 366 0
	mov	%d15, %d8
.LVL316:
	mov	%d2, 17
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
	mov.aa	%a4, %a15
.LVL319:
	call	osEE_alarm_get
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
	ret
.LFE130:
	.size	GetAlarm, .-GetAlarm
	.align 1
	.global	GetAlarmBase
	.type	GetAlarmBase, @function
GetAlarmBase:
.LFB131:
	.loc 2 1865 0
.LVL327:
	mov.aa	%a14, %SP
.LCFI22:
.LVL328:
.LBB1105:
.LBB1106:
	.loc 1 868 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 32
.LBE1106:
.LBE1105:
	.loc 2 1902 0
	mov	%d2, 3
	.loc 2 1901 0
	jge.u	%d4, %d15, .L132
	.loc 2 1905 0
	mov	%d2, 14
	.loc 2 1904 0
	jz.a	%a4, .L132
.LVL329:
.LBB1107:
	.loc 2 1909 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 28
	addsc.a	%a15, %a15, %d4, 2
	.loc 2 1913 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 4
.LVL330:
	.loc 2 1915 0
	ld.d	%e2, [%a15] 4
	st.d	[%a4]0, %e2
.LVL331:
	.loc 2 1917 0
	mov	%d2, 0
.LVL332:
.L132:
.LBE1107:
	.loc 2 1935 0
	ret
.LFE131:
	.size	GetAlarmBase, .-GetAlarmBase
	.align 1
	.global	WaitEvent
	.type	WaitEvent, @function
WaitEvent:
.LFB132:
	.loc 2 1945 0
.LVL333:
	mov.aa	%a14, %SP
.LCFI23:
	.loc 2 1950 0
	movh.a	%a15, hi:osEE_cdb_var
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
	ge.u	%d15, %d15, 17
.LVL339:
	jnz	%d15, .L136
.LBB1115:
	.loc 3 366 0
	mov	%d15, %d8
.LVL340:
	mov	%d2, 17
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
	ld.w	%d15, [%a15] 12
.LVL343:
	and	%d15, %d4
	jnz	%d15, .L137
	.loc 2 2010 0
	st.w	[%a15] 8, %d4
	.loc 2 2013 0
	movh.a	%a4, hi:osEE_cdb_var
	lea	%a4, [%a4] lo:osEE_cdb_var
	lea	%a5, [%a12] 4
	call	osEE_scheduler_core_pop_running
.LVL344:
	.loc 2 2012 0
	st.a	[%a15] 16, %a2
	.loc 2 2015 0
	mov	%d15, 3
	st.b	[%a15] 2, %d15
.LVL345:
	.loc 2 2019 0
	mov.aa	%a4, %a13
	ld.a	%a5, [%a12]0
	call	osEE_change_context_from_running
.LVL346:
	.loc 2 2022 0
	mov	%d15, 0
	st.w	[%a15] 8, %d15
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
	mov	%d2, 0
	ret
.LFE132:
	.size	WaitEvent, .-WaitEvent
	.align 1
	.global	SetEvent
	.type	SetEvent, @function
SetEvent:
.LFB133:
	.loc 2 2055 0
.LVL354:
	mov.aa	%a14, %SP
.LCFI24:
	sub.a	%SP, 8
.LVL355:
.LBB1126:
.LBB1127:
	.loc 1 276 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 8
.LBE1127:
.LBE1126:
	.loc 2 2103 0
	jlt.u	%d4, %d15, .L140
	.loc 2 2104 0
	mov	%d15, 3
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
	ge.u	%d15, %d15, 17
.LVL359:
	jnz	%d15, .L142
.LBB1135:
	.loc 3 366 0
	mov	%d15, %d8
.LVL360:
	mov	%d2, 17
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
	call	osEE_task_event_set_mask
.LVL364:
	.loc 2 2115 0
	jz.a	%a2, .L143
	.loc 2 2117 0
	movh.a	%a4, hi:osEE_kdb_var
	lea	%a4, [%a4] lo:osEE_kdb_var
	mov.aa	%a5, %a2
	call	osEE_scheduler_task_unblocked
.LVL365:
	jz	%d2, .L143
	.loc 2 2119 0
	movh.a	%a4, hi:osEE_kdb_var
	lea	%a4, [%a4] lo:osEE_kdb_var
	call	osEE_scheduler_task_preemption_point
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
	ret
.LFE133:
	.size	SetEvent, .-SetEvent
	.align 1
	.global	GetEvent
	.type	GetEvent, @function
GetEvent:
.LFB134:
	.loc 2 2149 0
.LVL373:
	mov.aa	%a14, %SP
.LCFI25:
.LVL374:
.LBB1146:
.LBB1147:
	.loc 1 276 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 8
.LBE1147:
.LBE1146:
	.loc 2 2203 0
	mov	%d2, 3
	.loc 2 2202 0
	jge.u	%d4, %d15, .L146
.LVL375:
.LBB1148:
	.loc 2 2207 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d4, 2
	.loc 2 2209 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 12
.LVL376:
	.loc 2 2221 0
	mov	%d2, 14
	.loc 2 2220 0
	jz.a	%a4, .L146
	.loc 2 2225 0
	ld.w	%d15, [%a15] 12
	st.w	[%a4]0, %d15
.LVL377:
	.loc 2 2227 0
	mov	%d2, 0
.LVL378:
.L146:
.LBE1148:
	.loc 2 2247 0
	ret
.LFE134:
	.size	GetEvent, .-GetEvent
	.align 1
	.global	ClearEvent
	.type	ClearEvent, @function
ClearEvent:
.LFB135:
	.loc 2 2254 0
.LVL379:
	mov.aa	%a14, %SP
.LCFI26:
.LVL380:
	.loc 2 2263 0
	movh.a	%a15, hi:osEE_cdb_var
	.loc 2 2265 0
	ld.a	%a15, [%a15] lo:osEE_cdb_var
	.loc 2 2267 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 12
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
	ge.u	%d15, %d15, 17
.LVL384:
	jnz	%d15, .L150
.LBB1156:
	.loc 3 366 0
	mov	%d15, %d2
.LVL385:
	mov	%d3, 17
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
	mov	%d2, 0
	ret
.LFE135:
	.size	ClearEvent, .-ClearEvent
	.align 1
	.global	GetCounterValue
	.type	GetCounterValue, @function
GetCounterValue:
.LFB136:
	.loc 2 2336 0
.LVL398:
	mov.aa	%a14, %SP
.LCFI27:
.LVL399:
.LBB1167:
.LBB1168:
	.loc 1 744 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 24
.LBE1168:
.LBE1167:
	.loc 2 2375 0
	mov	%d2, 3
	.loc 2 2374 0
	jge.u	%d4, %d15, .L153
	.loc 2 2378 0
	mov	%d2, 14
	.loc 2 2377 0
	jz.a	%a4, .L153
.LVL400:
.LBB1169:
	.loc 2 2382 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 20
	addsc.a	%a15, %a15, %d4, 2
	.loc 2 2407 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15]0
	ld.w	%d15, [%a15] 4
	st.w	[%a4]0, %d15
.LVL401:
	.loc 2 2409 0
	mov	%d2, 0
.LVL402:
.L153:
.LBE1169:
	.loc 2 2428 0
	ret
.LFE136:
	.size	GetCounterValue, .-GetCounterValue
	.align 1
	.global	GetElapsedValue
	.type	GetElapsedValue, @function
GetElapsedValue:
.LFB137:
	.loc 2 2437 0
.LVL403:
	mov.aa	%a14, %SP
.LCFI28:
.LVL404:
.LBB1170:
.LBB1171:
	.loc 1 744 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 24
.LBE1171:
.LBE1170:
	.loc 2 2475 0
	mov	%d2, 3
	.loc 2 2474 0
	jge.u	%d4, %d15, .L157
	.loc 2 2477 0
	mov.d	%d2, %a4
	mov.d	%d3, %a5
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 0
	.loc 2 2478 0
	mov	%d2, 14
	.loc 2 2477 0
	jnz	%d15, .L157
.LBB1172:
	.loc 2 2482 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.a	%a15, [%a15] 20
	addsc.a	%a15, %a15, %d4, 2
	ld.a	%a15, [%a15]0
.LVL405:
	.loc 2 2484 0
	ld.w	%d15, [%a4]0
.LVL406:
.LBB1173:
	.loc 2 2509 0
	ld.a	%a2, [%a15]0
	ld.w	%d2, [%a2] 4
.LVL407:
	.loc 2 2517 0
	jlt.u	%d2, %d15, .L158
	.loc 2 2517 0 is_stmt 0 discriminator 1
	sub	%d15, %d2, %d15
.LVL408:
	j	.L159
.LVL409:
.L158:
	ld.w	%d3, [%a15] 4
	add	%d3, %d2
	add	%d3, 1
	.loc 2 2517 0 discriminator 2
	sub	%d15, %d3, %d15
.LVL410:
.L159:
	.loc 2 2515 0 is_stmt 1
	st.w	[%a5]0, %d15
.LVL411:
	.loc 2 2524 0
	st.w	[%a4]0, %d2
.LVL412:
	.loc 2 2526 0
	mov	%d2, 0
.LVL413:
.L157:
.LBE1173:
.LBE1172:
	.loc 2 2546 0
	ret
.LFE137:
	.size	GetElapsedValue, .-GetElapsedValue
	.align 1
	.global	IncrementCounter
	.type	IncrementCounter, @function
IncrementCounter:
.LFB138:
	.loc 2 2553 0
.LVL414:
	mov.aa	%a14, %SP
.LCFI29:
.LVL415:
.LBB1174:
.LBB1175:
	.loc 1 744 0
	movh.a	%a15, hi:osEE_kdb_var
	lea	%a15, [%a15] lo:osEE_kdb_var
	ld.w	%d15, [%a15] 24
.LBE1175:
.LBE1174:
	.loc 2 2593 0
	mov	%d2, 3
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
	ge.u	%d15, %d15, 17
.LVL419:
	jnz	%d15, .L164
.LBB1184:
	.loc 3 366 0
	mov	%d15, %d8
.LVL420:
	mov	%d2, 17
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
	call	osEE_counter_increment
.LVL423:
.LBB1187:
.LBB1188:
	.loc 1 172 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LBE1188:
.LBE1187:
	.loc 2 2626 0
	ld.a	%a15, [%a15]0
	ld.bu	%d15, [%a15] 20
.LVL424:
	jge.u	%d15, 2, .L165
	.loc 2 2627 0
	movh.a	%a4, hi:osEE_kdb_var
	lea	%a4, [%a4] lo:osEE_kdb_var
	call	osEE_scheduler_task_preemption_point
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
	mov	%d2, 0
.LVL432:
.L163:
.LBE1177:
.LBE1176:
	.loc 2 2650 0
	ret
.LFE138:
	.size	IncrementCounter, .-IncrementCounter
	.align 1
	.global	GetISRID
	.type	GetISRID, @function
GetISRID:
.LFB139:
	.loc 2 3316 0
	mov.aa	%a14, %SP
.LCFI30:
.LBB1197:
.LBB1198:
	.loc 1 172 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
	ld.a	%a15, [%a15]0
.LBE1198:
.LBE1197:
	.loc 2 3321 0
	ld.bu	%d15, [%a15] 20
	.loc 2 3324 0
	mov	%d2, -1
	.loc 2 3321 0
	jne	%d15, 2, .L169
	.loc 2 3322 0
	ld.w	%d2, [%a15] 16
.LVL433:
.L169:
	.loc 2 3328 0
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
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.byte	0x4
	.uaword	.LCFI1-.LFB109
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.byte	0x4
	.uaword	.LCFI2-.LFB110
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.byte	0x4
	.uaword	.LCFI3-.LFB112
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.byte	0x4
	.uaword	.LCFI4-.LFB113
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.byte	0x4
	.uaword	.LCFI5-.LFB114
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.byte	0x4
	.uaword	.LCFI6-.LFB115
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB116
	.uaword	.LFE116-.LFB116
	.byte	0x4
	.uaword	.LCFI7-.LFB116
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB117
	.uaword	.LFE117-.LFB117
	.byte	0x4
	.uaword	.LCFI8-.LFB117
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB118
	.uaword	.LFE118-.LFB118
	.byte	0x4
	.uaword	.LCFI9-.LFB118
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB119
	.uaword	.LFE119-.LFB119
	.byte	0x4
	.uaword	.LCFI10-.LFB119
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB120
	.uaword	.LFE120-.LFB120
	.byte	0x4
	.uaword	.LCFI11-.LFB120
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB121
	.uaword	.LFE121-.LFB121
	.byte	0x4
	.uaword	.LCFI12-.LFB121
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB122
	.uaword	.LFE122-.LFB122
	.byte	0x4
	.uaword	.LCFI13-.LFB122
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB123
	.uaword	.LFE123-.LFB123
	.byte	0x4
	.uaword	.LCFI14-.LFB123
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB124
	.uaword	.LFE124-.LFB124
	.byte	0x4
	.uaword	.LCFI15-.LFB124
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB125
	.uaword	.LFE125-.LFB125
	.byte	0x4
	.uaword	.LCFI16-.LFB125
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB126
	.uaword	.LFE126-.LFB126
	.byte	0x4
	.uaword	.LCFI17-.LFB126
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB127
	.uaword	.LFE127-.LFB127
	.byte	0x4
	.uaword	.LCFI18-.LFB127
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB128
	.uaword	.LFE128-.LFB128
	.byte	0x4
	.uaword	.LCFI19-.LFB128
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB129
	.uaword	.LFE129-.LFB129
	.byte	0x4
	.uaword	.LCFI20-.LFB129
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB130
	.uaword	.LFE130-.LFB130
	.byte	0x4
	.uaword	.LCFI21-.LFB130
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB131
	.uaword	.LFE131-.LFB131
	.byte	0x4
	.uaword	.LCFI22-.LFB131
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB132
	.uaword	.LFE132-.LFB132
	.byte	0x4
	.uaword	.LCFI23-.LFB132
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB133
	.uaword	.LFE133-.LFB133
	.byte	0x4
	.uaword	.LCFI24-.LFB133
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB134
	.uaword	.LFE134-.LFB134
	.byte	0x4
	.uaword	.LCFI25-.LFB134
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB135
	.uaword	.LFE135-.LFB135
	.byte	0x4
	.uaword	.LCFI26-.LFB135
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB136
	.uaword	.LFE136-.LFB136
	.byte	0x4
	.uaword	.LCFI27-.LFB136
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB137
	.uaword	.LFE137-.LFB137
	.byte	0x4
	.uaword	.LCFI28-.LFB137
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB138
	.uaword	.LFE138-.LFB138
	.byte	0x4
	.uaword	.LCFI29-.LFB138
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB139
	.uaword	.LFE139-.LFB139
	.byte	0x4
	.uaword	.LCFI30-.LFB139
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE60:
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
	.uaword	0x4d97
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -O1 -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
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
	.string	"osEE_tc_get_icr"
	.byte	0x3
	.uahalf	0x100
	.byte	0x1
	.uaword	0x3a3
	.byte	0x3
	.uaword	0x176e
	.uleb128 0x1b
	.string	"icr"
	.byte	0x3
	.uahalf	0x102
	.uaword	0x3a3
	.uleb128 0x1c
	.uleb128 0x1b
	.string	"reg"
	.byte	0x3
	.uahalf	0x103
	.uaword	0x28d
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
	.uaword	0x17af
	.uleb128 0x1f
	.string	"icr"
	.byte	0x3
	.uahalf	0x107
	.uaword	0x3a3
	.byte	0
	.uleb128 0x1a
	.string	"OSEE_ISR2_VIRT_TO_HW_PRIO"
	.byte	0x3
	.uahalf	0x12d
	.byte	0x1
	.uaword	0x1a9
	.byte	0x3
	.uaword	0x17e4
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x12d
	.uaword	0x52a
	.byte	0
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
	.string	"osEE_orti_trace_service_entry"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.byte	0x3
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
	.byte	0
	.uleb128 0x11
	.uaword	0xde7
	.uleb128 0x22
	.string	"osEE_orti_trace_service_exit"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x3
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
	.string	"osEE_is_valid_tid"
	.byte	0x1
	.uahalf	0x10b
	.byte	0x1
	.uaword	0x269
	.byte	0x3
	.uaword	0x1b9c
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x1b5d
	.uleb128 0x1f
	.string	"tid"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x4f2
	.byte	0
	.uleb128 0x21
	.string	"osEE_get_curr_task"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	0x111c
	.byte	0x3
	.uleb128 0x1a
	.string	"osEE_is_valid_res_id"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	0x269
	.byte	0x3
	.uaword	0x1bf7
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x1b5d
	.uleb128 0x1f
	.string	"res_id"
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x796
	.byte	0
	.uleb128 0x1a
	.string	"osEE_hal_prepare_ipl"
	.byte	0x3
	.uahalf	0x143
	.byte	0x1
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
	.byte	0
	.uleb128 0x1a
	.string	"osEE_is_valid_alarm_id"
	.byte	0x1
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
	.string	"osEE_is_valid_counter_id"
	.byte	0x1
	.uahalf	0x2df
	.byte	0x1
	.uaword	0x269
	.byte	0x3
	.uaword	0x1d61
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0x1b5d
	.uleb128 0x1f
	.string	"counter_id"
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0x6d7
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
	.uleb128 0x22
	.string	"osEE_hal_terminate_activation"
	.byte	0x4
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x26d0
	.uleb128 0x44
	.string	"p_to_term"
	.byte	0x4
	.byte	0x89
	.uaword	0x26d0
	.uleb128 0x44
	.string	"kernel_cb"
	.byte	0x4
	.byte	0x8a
	.uaword	0xf00
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x4c9
	.uleb128 0x40
	.byte	0x1
	.string	"ChainTask"
	.byte	0x2
	.uahalf	0x2b7
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB119
	.uaword	.LFE119
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2996
	.uleb128 0x25
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x2b9
	.uaword	0x4f2
	.uaword	.LLST38
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x2bc
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
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	.LVL102
	.uaword	0x4ad7
	.uaword	0x2983
	.uleb128 0x36
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL103
	.uaword	0x4b62
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
	.uaword	0xa2c
	.uaword	.LFB120
	.uaword	.LFE120
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2b25
	.uleb128 0x1b
	.string	"ev"
	.byte	0x2
	.uahalf	0x33e
	.uaword	0xa2c
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x340
	.uaword	0x1ced
	.uleb128 0x26
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x348
	.uaword	0x1dcc
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3f
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x34a
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
	.uaword	0xa2c
	.uaword	.LFB121
	.uaword	.LFE121
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2ce6
	.uleb128 0x49
	.string	"ev"
	.byte	0x2
	.uahalf	0x3b1
	.uaword	0xa2c
	.byte	0
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x3b2
	.uaword	0x1ced
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x3b8
	.uaword	0x245e
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x3b9
	.uaword	0x23fe
	.byte	0x1
	.byte	0x6f
	.uleb128 0x4a
	.string	"p_tcb"
	.byte	0x2
	.uahalf	0x3ba
	.uaword	0x2ce6
	.byte	0x1
	.byte	0x6c
	.uleb128 0x31
	.uaword	.LBB933
	.uaword	.LBE933
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x3ee
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
	.byte	0x1
	.string	"GetResource"
	.byte	0x2
	.uahalf	0x411
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB122
	.uaword	.LFE122
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f66
	.uleb128 0x4b
	.string	"ResID"
	.byte	0x2
	.uahalf	0x413
	.uaword	0x796
	.uaword	.LLST70
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x416
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
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x2f6b
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1051
	.uleb128 0x11
	.uaword	0x2f76
	.uleb128 0xd
	.byte	0x4
	.uaword	0x103a
	.uleb128 0x11
	.uaword	0x52a
	.uleb128 0x40
	.byte	0x1
	.string	"ReleaseResource"
	.byte	0x2
	.uahalf	0x480
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB123
	.uaword	.LFE123
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3259
	.uleb128 0x4b
	.string	"ResID"
	.byte	0x2
	.uahalf	0x482
	.uaword	0x796
	.uaword	.LLST90
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x485
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
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x4c6
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
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x4cc
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
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL199
	.uaword	0x4b96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"ShutdownOS"
	.byte	0x2
	.uahalf	0x4ef
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB124
	.uaword	.LFE124
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3416
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x2
	.uahalf	0x4f1
	.uaword	0xa2c
	.uaword	.LLST112
	.uleb128 0x49
	.string	"ev"
	.byte	0x2
	.uahalf	0x4f4
	.uaword	0xa2c
	.byte	0x7
	.uleb128 0x41
	.uaword	.LASF13
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
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x4fd
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
	.byte	0
	.byte	0
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
	.byte	0x1
	.string	"GetTaskID"
	.byte	0x2
	.uahalf	0x532
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB125
	.uaword	.LFE125
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x34dd
	.uleb128 0x4c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x534
	.uaword	0x511
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x537
	.uaword	0xa2c
	.uaword	.LLST123
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x539
	.uaword	0x1ced
	.uleb128 0x3f
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x53f
	.uaword	0x245e
	.uaword	.LLST124
	.uleb128 0x31
	.uaword	.LBB1017
	.uaword	.LBE1017
	.uleb128 0x42
	.string	"tid"
	.byte	0x2
	.uahalf	0x561
	.uaword	0x4f2
	.uaword	.LLST125
	.uleb128 0x3f
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x563
	.uaword	0x23fe
	.uaword	.LLST126
	.uleb128 0x31
	.uaword	.LBB1018
	.uaword	.LBE1018
	.uleb128 0x42
	.string	"p_sn"
	.byte	0x2
	.uahalf	0x574
	.uaword	0x34dd
	.uaword	.LLST127
	.uleb128 0x31
	.uaword	.LBB1019
	.uaword	.LBE1019
	.uleb128 0x42
	.string	"p_searched_tdb"
	.byte	0x2
	.uahalf	0x578
	.uaword	0x23fe
	.uaword	.LLST128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x34e3
	.uleb128 0x11
	.uaword	0xedc
	.uleb128 0x40
	.byte	0x1
	.string	"GetTaskState"
	.byte	0x2
	.uahalf	0x59a
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB126
	.uaword	.LFE126
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x35ab
	.uleb128 0x4c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x59c
	.uaword	0x4f2
	.byte	0x1
	.byte	0x54
	.uleb128 0x4d
	.string	"State"
	.byte	0x2
	.uahalf	0x59d
	.uaword	0x6b8
	.byte	0x1
	.byte	0x64
	.uleb128 0x4a
	.string	"ev"
	.byte	0x2
	.uahalf	0x5a0
	.uaword	0xa2c
	.byte	0x1
	.byte	0x52
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x5a1
	.uaword	0x2681
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x5a3
	.uaword	0x1ced
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x5a9
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
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x5cf
	.uaword	0x23fe
	.uleb128 0x1b
	.string	"local_state"
	.byte	0x2
	.uahalf	0x5d2
	.uaword	0x35ab
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x689
	.uleb128 0x40
	.byte	0x1
	.string	"SetRelAlarm"
	.byte	0x2
	.uahalf	0x5fd
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB127
	.uaword	.LFE127
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x37f7
	.uleb128 0x25
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x5ff
	.uaword	0x784
	.uaword	.LLST130
	.uleb128 0x4b
	.string	"increment"
	.byte	0x2
	.uahalf	0x600
	.uaword	0x6eb
	.uaword	.LLST131
	.uleb128 0x4b
	.string	"cycle"
	.byte	0x2
	.uahalf	0x601
	.uaword	0x6eb
	.uaword	.LLST132
	.uleb128 0x4a
	.string	"ev"
	.byte	0x2
	.uahalf	0x604
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
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x36
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x1cc3
	.uleb128 0x11
	.uaword	0x12de
	.uleb128 0x40
	.byte	0x1
	.string	"SetAbsAlarm"
	.byte	0x2
	.uahalf	0x658
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB128
	.uaword	.LFE128
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3a44
	.uleb128 0x25
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x65a
	.uaword	0x784
	.uaword	.LLST145
	.uleb128 0x4b
	.string	"start"
	.byte	0x2
	.uahalf	0x65b
	.uaword	0x6eb
	.uaword	.LLST146
	.uleb128 0x4b
	.string	"cycle"
	.byte	0x2
	.uahalf	0x65c
	.uaword	0x6eb
	.uaword	.LLST147
	.uleb128 0x4a
	.string	"ev"
	.byte	0x2
	.uahalf	0x65f
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
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x36
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"CancelAlarm"
	.byte	0x2
	.uahalf	0x6b2
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB129
	.uaword	.LFE129
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3c3a
	.uleb128 0x25
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x6b4
	.uaword	0x784
	.uaword	.LLST160
	.uleb128 0x4a
	.string	"ev"
	.byte	0x2
	.uahalf	0x6b7
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
	.byte	0x1
	.string	"GetAlarm"
	.byte	0x2
	.uahalf	0x6f8
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB130
	.uaword	.LFE130
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3e4c
	.uleb128 0x25
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x6fa
	.uaword	0x784
	.uaword	.LLST172
	.uleb128 0x4b
	.string	"Tick"
	.byte	0x2
	.uahalf	0x6fb
	.uaword	0x6fc
	.uaword	.LLST173
	.uleb128 0x4a
	.string	"ev"
	.byte	0x2
	.uahalf	0x6fe
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
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x36
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"GetAlarmBase"
	.byte	0x2
	.uahalf	0x744
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB131
	.uaword	.LFE131
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3f1f
	.uleb128 0x4c
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x746
	.uaword	0x784
	.byte	0x1
	.byte	0x54
	.uleb128 0x4d
	.string	"Info"
	.byte	0x2
	.uahalf	0x747
	.uaword	0x765
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x74a
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
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x754
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
	.string	"p_trigger_db"
	.byte	0x2
	.uahalf	0x777
	.uaword	0x3f1f
	.uleb128 0x3f
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x779
	.uaword	0x37fc
	.uaword	.LLST186
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x1cbd
	.uleb128 0x40
	.byte	0x1
	.string	"WaitEvent"
	.byte	0x2
	.uahalf	0x795
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB132
	.uaword	.LFE132
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x410c
	.uleb128 0x4b
	.string	"Mask"
	.byte	0x2
	.uahalf	0x797
	.uaword	0x7ab
	.uaword	.LLST187
	.uleb128 0x49
	.string	"ev"
	.byte	0x2
	.uahalf	0x79a
	.uaword	0xa2c
	.byte	0
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x79c
	.uaword	0x1ced
	.uleb128 0x26
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x79e
	.uaword	0x1dcc
	.byte	0x1
	.byte	0x6c
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x7a0
	.uaword	0x23fe
	.byte	0x1
	.byte	0x6d
	.uleb128 0x26
	.uaword	.LASF22
	.byte	0x2
	.uahalf	0x7a2
	.uaword	0x2ce6
	.byte	0x1
	.byte	0x6f
	.uleb128 0x31
	.uaword	.LBB1108
	.uaword	.LBE1108
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x7d4
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
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 4
	.byte	0
	.uleb128 0x35
	.uaword	.LVL346
	.uaword	0x4ccc
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
	.uaword	0xa2c
	.uaword	.LFB133
	.uaword	.LFE133
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4346
	.uleb128 0x25
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x804
	.uaword	0x4f2
	.uaword	.LLST194
	.uleb128 0x4b
	.string	"Mask"
	.byte	0x2
	.uahalf	0x805
	.uaword	0x7ab
	.uaword	.LLST195
	.uleb128 0x4a
	.string	"ev"
	.byte	0x2
	.uahalf	0x808
	.uaword	0xa2c
	.byte	0x2
	.byte	0x8e
	.sleb128 -1
	.uleb128 0x41
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x80a
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
	.string	"p_sn"
	.byte	0x2
	.uahalf	0x83b
	.uaword	0xefa
	.uaword	.LLST197
	.uleb128 0x42
	.string	"p_tdb_waking_up"
	.byte	0x2
	.uahalf	0x83d
	.uaword	0x23fe
	.uaword	.LLST198
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x83f
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
	.uaword	.LVL365
	.uaword	0x4d3f
	.uleb128 0x27
	.uaword	.LVL366
	.uaword	0x4b96
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"GetEvent"
	.byte	0x2
	.uahalf	0x860
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB134
	.uaword	.LFE134
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4405
	.uleb128 0x4c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x862
	.uaword	0x4f2
	.byte	0x1
	.byte	0x54
	.uleb128 0x4d
	.string	"Event"
	.byte	0x2
	.uahalf	0x863
	.uaword	0x7c1
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x866
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
	.string	"p_tdb_event"
	.byte	0x2
	.uahalf	0x89f
	.uaword	0x23fe
	.uleb128 0x42
	.string	"p_tcb_event"
	.byte	0x2
	.uahalf	0x8a1
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
	.byte	0x1
	.string	"ClearEvent"
	.byte	0x2
	.uahalf	0x8ca
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB135
	.uaword	.LFE135
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x45d8
	.uleb128 0x4b
	.string	"Mask"
	.byte	0x2
	.uahalf	0x8cc
	.uaword	0x7ab
	.uaword	.LLST210
	.uleb128 0x49
	.string	"ev"
	.byte	0x2
	.uahalf	0x8cf
	.uaword	0xa2c
	.byte	0
	.uleb128 0x41
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x8d1
	.uaword	0x1ced
	.uleb128 0x41
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x8d7
	.uaword	0x245e
	.uleb128 0x41
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x8d9
	.uaword	0x23fe
	.uleb128 0x26
	.uaword	.LASF22
	.byte	0x2
	.uahalf	0x8db
	.uaword	0x2ce6
	.byte	0x1
	.byte	0x6f
	.uleb128 0x31
	.uaword	.LBB1149
	.uaword	.LBE1149
	.uleb128 0x41
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x8fd
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
	.byte	0x1
	.string	"GetCounterValue"
	.byte	0x2
	.uahalf	0x91b
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB136
	.uaword	.LFE136
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x468a
	.uleb128 0x4c
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x91d
	.uaword	0x6d7
	.byte	0x1
	.byte	0x54
	.uleb128 0x4d
	.string	"Value"
	.byte	0x2
	.uahalf	0x91e
	.uaword	0x6fc
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x921
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
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x92b
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
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x94e
	.uaword	0x37fc
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"GetElapsedValue"
	.byte	0x2
	.uahalf	0x97f
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB137
	.uaword	.LFE137
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4796
	.uleb128 0x4c
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x981
	.uaword	0x6d7
	.byte	0x1
	.byte	0x54
	.uleb128 0x4d
	.string	"Value"
	.byte	0x2
	.uahalf	0x982
	.uaword	0x6fc
	.byte	0x1
	.byte	0x64
	.uleb128 0x4d
	.string	"ElapsedValue"
	.byte	0x2
	.uahalf	0x983
	.uaword	0x6fc
	.byte	0x1
	.byte	0x65
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x986
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
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x990
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
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x9b2
	.uaword	0x37fc
	.uaword	.LLST222
	.uleb128 0x42
	.string	"local_value"
	.byte	0x2
	.uahalf	0x9b4
	.uaword	0x4796
	.uaword	.LLST223
	.uleb128 0x31
	.uaword	.LBB1173
	.uaword	.LBE1173
	.uleb128 0x42
	.string	"local_curr_value"
	.byte	0x2
	.uahalf	0x9cd
	.uaword	0x4796
	.uaword	.LLST224
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x6eb
	.uleb128 0x40
	.byte	0x1
	.string	"IncrementCounter"
	.byte	0x2
	.uahalf	0x9f5
	.byte	0x1
	.uaword	0xa2c
	.uaword	.LFB138
	.uaword	.LFE138
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x49bb
	.uleb128 0x25
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x9f7
	.uaword	0x6d7
	.uaword	.LLST225
	.uleb128 0x42
	.string	"ev"
	.byte	0x2
	.uahalf	0x9fa
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
	.byte	0
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
	.byte	0x1
	.string	"GetISRID"
	.byte	0x2
	.uahalf	0xcf0
	.byte	0x1
	.uaword	0x502
	.uaword	.LFB139
	.uaword	.LFE139
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4a0b
	.uleb128 0x4a
	.string	"isr_id"
	.byte	0x2
	.uahalf	0xcf5
	.uaword	0x502
	.byte	0x1
	.byte	0x52
	.uleb128 0x41
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0xcf7
	.uaword	0x23fe
	.uleb128 0x34
	.uaword	0x1b9c
	.uaword	.LBB1197
	.uaword	.LBE1197
	.byte	0x2
	.uahalf	0xcf7
	.byte	0
	.uleb128 0x4e
	.string	"osEE_kdb_var"
	.byte	0xc
	.byte	0x42
	.uaword	0x171f
	.byte	0x1
	.byte	0x1
	.uleb128 0x4e
	.string	"osEE_cdb_var"
	.byte	0xc
	.byte	0x5b
	.uaword	0x15a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.byte	0x1
	.string	"osEE_idle_task_terminate"
	.byte	0x4
	.byte	0x9b
	.byte	0x1
	.byte	0x1
	.uaword	0x4a60
	.uleb128 0x50
	.uaword	0x111c
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"osEE_hal_save_ctx_and_ready2stacked"
	.byte	0x4
	.byte	0x68
	.byte	0x1
	.byte	0x1
	.uaword	0x4a9e
	.uleb128 0x50
	.uaword	0x111c
	.uleb128 0x50
	.uaword	0x4c3
	.uleb128 0x50
	.uaword	0x4c3
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"osEE_task_end"
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.byte	0x1
	.uaword	0x4abc
	.uleb128 0x50
	.uaword	0x23fe
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"osEE_cpu_startos"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.uaword	0x269
	.byte	0x1
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_task_activated"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uaword	0xa2c
	.byte	0x1
	.uaword	0x4aff
	.uleb128 0x50
	.uaword	0x111c
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_scheduler_task_activated"
	.byte	0xd
	.byte	0x77
	.byte	0x1
	.uaword	0x269
	.byte	0x1
	.uaword	0x4b36
	.uleb128 0x50
	.uaword	0x1b5d
	.uleb128 0x50
	.uaword	0x111c
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"osEE_hal_terminate_ctx"
	.byte	0x4
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.uaword	0x4b62
	.uleb128 0x50
	.uaword	0x4c3
	.uleb128 0x50
	.uaword	0xf00
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_scheduler_task_insert"
	.byte	0xd
	.byte	0x7e
	.byte	0x1
	.uaword	0x269
	.byte	0x1
	.uaword	0x4b96
	.uleb128 0x50
	.uaword	0x1b5d
	.uleb128 0x50
	.uaword	0x111c
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_scheduler_task_preemption_point"
	.byte	0xd
	.byte	0x85
	.byte	0x1
	.uaword	0x269
	.byte	0x1
	.uaword	0x4bcf
	.uleb128 0x50
	.uaword	0x1b5d
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"osEE_alarm_set_rel"
	.byte	0x1
	.uahalf	0x33c
	.byte	0x1
	.uaword	0xa2c
	.byte	0x1
	.uaword	0x4c06
	.uleb128 0x50
	.uaword	0x12de
	.uleb128 0x50
	.uaword	0x1cc3
	.uleb128 0x50
	.uaword	0x6eb
	.uleb128 0x50
	.uaword	0x6eb
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"osEE_alarm_set_abs"
	.byte	0x1
	.uahalf	0x345
	.byte	0x1
	.uaword	0xa2c
	.byte	0x1
	.uaword	0x4c3d
	.uleb128 0x50
	.uaword	0x12de
	.uleb128 0x50
	.uaword	0x1cc3
	.uleb128 0x50
	.uaword	0x6eb
	.uleb128 0x50
	.uaword	0x6eb
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"osEE_alarm_cancel"
	.byte	0x1
	.uahalf	0x34e
	.byte	0x1
	.uaword	0xa2c
	.byte	0x1
	.uaword	0x4c64
	.uleb128 0x50
	.uaword	0x1cc3
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"osEE_alarm_get"
	.byte	0x1
	.uahalf	0x354
	.byte	0x1
	.uaword	0xa2c
	.byte	0x1
	.uaword	0x4c8d
	.uleb128 0x50
	.uaword	0x1cc3
	.uleb128 0x50
	.uaword	0x710
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_scheduler_core_pop_running"
	.byte	0xd
	.byte	0x5b
	.byte	0x1
	.uaword	0xefa
	.byte	0x1
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
	.byte	0x1
	.string	"osEE_change_context_from_running"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uaword	0x4d02
	.uleb128 0x50
	.uaword	0x111c
	.uleb128 0x50
	.uaword	0x111c
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"osEE_task_event_set_mask"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.uaword	0xefa
	.byte	0x1
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
	.byte	0x1
	.string	"osEE_scheduler_task_unblocked"
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.uaword	0x269
	.byte	0x1
	.uaword	0x4d76
	.uleb128 0x50
	.uaword	0x1b5d
	.uleb128 0x50
	.uaword	0xefa
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.string	"osEE_counter_increment"
	.byte	0x1
	.uahalf	0x304
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.uaword	0x12de
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
	.uaword	.LFE116-.Ltext0
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
	.uaword	.LFE116-.Ltext0
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
	.uaword	.LFE116-.Ltext0
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
	.uaword	.LFE116-.Ltext0
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
	.uaword	.LFE116-.Ltext0
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
	.uaword	.LFE118-.Ltext0
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
	.uaword	.LFE118-.Ltext0
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
	.uaword	.LFE118-.Ltext0
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
	.uaword	.LFE119-.Ltext0
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
	.uaword	.LFE119-.Ltext0
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
	.uaword	.LFE119-.Ltext0
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
	.uaword	.LFE122-.Ltext0
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
	.uaword	.LFE122-.Ltext0
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
	.uaword	.LFE122-.Ltext0
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
	.uaword	.LFE123-.Ltext0
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
	.uaword	.LFE123-.Ltext0
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
	.uaword	.LFE123-.Ltext0
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
	.uaword	.LFE124-.Ltext0
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
	.uaword	.LFE125-.Ltext0
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
	.uaword	.LVL266-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL266-.Ltext0
	.uaword	.LFE127-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL256-.Ltext0
	.uaword	.LVL267-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL268-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL268-1-.Ltext0
	.uaword	.LFE127-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL256-.Ltext0
	.uaword	.LVL268-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL268-1-.Ltext0
	.uaword	.LFE127-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL257-.Ltext0
	.uaword	.LVL266-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL266-.Ltext0
	.uaword	.LFE127-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL258-.Ltext0
	.uaword	.LVL268-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL259-.Ltext0
	.uaword	.LVL268-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL261-.Ltext0
	.uaword	.LVL262-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL260-.Ltext0
	.uaword	.LVL274-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL264-.Ltext0
	.uaword	.LVL270-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL264-.Ltext0
	.uaword	.LVL265-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL268-.Ltext0
	.uaword	.LVL274-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL271-.Ltext0
	.uaword	.LVL272-.Ltext0
	.uahalf	0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL272-.Ltext0
	.uaword	.LVL273-.Ltext0
	.uahalf	0x5
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL273-.Ltext0
	.uaword	.LVL274-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL269-.Ltext0
	.uaword	.LVL271-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL271-.Ltext0
	.uaword	.LVL273-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL273-.Ltext0
	.uaword	.LVL274-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL275-.Ltext0
	.uaword	.LVL285-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL285-.Ltext0
	.uaword	.LFE128-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL275-.Ltext0
	.uaword	.LVL286-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL286-.Ltext0
	.uaword	.LVL287-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL287-1-.Ltext0
	.uaword	.LFE128-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL275-.Ltext0
	.uaword	.LVL287-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL287-1-.Ltext0
	.uaword	.LFE128-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL276-.Ltext0
	.uaword	.LVL285-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL285-.Ltext0
	.uaword	.LFE128-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL277-.Ltext0
	.uaword	.LVL287-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL278-.Ltext0
	.uaword	.LVL287-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL280-.Ltext0
	.uaword	.LVL281-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL279-.Ltext0
	.uaword	.LVL293-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL283-.Ltext0
	.uaword	.LVL289-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL283-.Ltext0
	.uaword	.LVL284-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL287-.Ltext0
	.uaword	.LVL293-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL290-.Ltext0
	.uaword	.LVL291-.Ltext0
	.uahalf	0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL291-.Ltext0
	.uaword	.LVL292-.Ltext0
	.uahalf	0x5
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL292-.Ltext0
	.uaword	.LVL293-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL288-.Ltext0
	.uaword	.LVL290-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL290-.Ltext0
	.uaword	.LVL292-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL292-.Ltext0
	.uaword	.LVL293-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL294-.Ltext0
	.uaword	.LVL303-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL303-1-.Ltext0
	.uaword	.LFE129-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL295-.Ltext0
	.uaword	.LVL303-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL303-1-.Ltext0
	.uaword	.LFE129-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL296-.Ltext0
	.uaword	.LVL303-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL298-.Ltext0
	.uaword	.LVL299-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL297-.Ltext0
	.uaword	.LVL309-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL301-.Ltext0
	.uaword	.LVL305-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL301-.Ltext0
	.uaword	.LVL302-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL303-.Ltext0
	.uaword	.LVL309-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL306-.Ltext0
	.uaword	.LVL307-.Ltext0
	.uahalf	0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL307-.Ltext0
	.uaword	.LVL308-.Ltext0
	.uahalf	0x5
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL308-.Ltext0
	.uaword	.LVL309-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL304-.Ltext0
	.uaword	.LVL306-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL306-.Ltext0
	.uaword	.LVL308-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL308-.Ltext0
	.uaword	.LVL309-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL310-.Ltext0
	.uaword	.LVL320-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL320-1-.Ltext0
	.uaword	.LFE130-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL310-.Ltext0
	.uaword	.LVL319-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL319-.Ltext0
	.uaword	.LVL320-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL320-1-.Ltext0
	.uaword	.LFE130-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL311-.Ltext0
	.uaword	.LVL320-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL320-1-.Ltext0
	.uaword	.LFE130-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL312-.Ltext0
	.uaword	.LVL326-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL314-.Ltext0
	.uaword	.LVL315-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL313-.Ltext0
	.uaword	.LVL326-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL317-.Ltext0
	.uaword	.LVL322-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL317-.Ltext0
	.uaword	.LVL318-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL320-.Ltext0
	.uaword	.LVL326-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL323-.Ltext0
	.uaword	.LVL324-.Ltext0
	.uahalf	0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL324-.Ltext0
	.uaword	.LVL325-.Ltext0
	.uahalf	0x5
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL325-.Ltext0
	.uaword	.LVL326-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL321-.Ltext0
	.uaword	.LVL323-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL323-.Ltext0
	.uaword	.LVL325-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL325-.Ltext0
	.uaword	.LVL326-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL331-.Ltext0
	.uaword	.LVL332-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL332-.Ltext0
	.uaword	.LFE131-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL330-.Ltext0
	.uaword	.LVL332-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL333-.Ltext0
	.uaword	.LVL344-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL344-1-.Ltext0
	.uaword	.LFE132-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL338-.Ltext0
	.uaword	.LVL339-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST189:
	.uaword	.LVL341-.Ltext0
	.uaword	.LVL343-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST190:
	.uaword	.LVL341-.Ltext0
	.uaword	.LVL342-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL350-.Ltext0
	.uaword	.LVL351-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL351-.Ltext0
	.uaword	.LVL352-.Ltext0
	.uahalf	0x5
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL352-.Ltext0
	.uaword	.LVL353-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL348-.Ltext0
	.uaword	.LVL350-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL350-.Ltext0
	.uaword	.LVL352-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL352-.Ltext0
	.uaword	.LVL353-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL354-.Ltext0
	.uaword	.LVL363-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL363-.Ltext0
	.uaword	.LFE133-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL354-.Ltext0
	.uaword	.LVL364-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL364-1-.Ltext0
	.uaword	.LFE133-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL355-.Ltext0
	.uaword	.LVL363-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL363-.Ltext0
	.uaword	.LFE133-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL364-.Ltext0
	.uaword	.LVL365-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL356-.Ltext0
	.uaword	.LVL364-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL358-.Ltext0
	.uaword	.LVL359-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL357-.Ltext0
	.uaword	.LVL372-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST201:
	.uaword	.LVL361-.Ltext0
	.uaword	.LVL368-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST202:
	.uaword	.LVL361-.Ltext0
	.uaword	.LVL362-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST203:
	.uaword	.LVL366-.Ltext0
	.uaword	.LVL372-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL369-.Ltext0
	.uaword	.LVL370-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL370-.Ltext0
	.uaword	.LVL371-.Ltext0
	.uahalf	0x5
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL371-.Ltext0
	.uaword	.LVL372-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST206:
	.uaword	.LVL367-.Ltext0
	.uaword	.LVL369-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL369-.Ltext0
	.uaword	.LVL371-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST207:
	.uaword	.LVL371-.Ltext0
	.uaword	.LVL372-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST208:
	.uaword	.LVL377-.Ltext0
	.uaword	.LVL378-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL378-.Ltext0
	.uaword	.LFE134-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST209:
	.uaword	.LVL376-.Ltext0
	.uaword	.LVL378-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST210:
	.uaword	.LVL379-.Ltext0
	.uaword	.LVL389-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL389-.Ltext0
	.uaword	.LFE135-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST211:
	.uaword	.LVL383-.Ltext0
	.uaword	.LVL384-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST212:
	.uaword	.LVL382-.Ltext0
	.uaword	.LVL394-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST213:
	.uaword	.LVL386-.Ltext0
	.uaword	.LVL388-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST214:
	.uaword	.LVL386-.Ltext0
	.uaword	.LVL387-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST215:
	.uaword	.LVL390-.Ltext0
	.uaword	.LVL394-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST217:
	.uaword	.LVL393-.Ltext0
	.uaword	.LVL395-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL395-.Ltext0
	.uaword	.LVL396-.Ltext0
	.uahalf	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL396-.Ltext0
	.uaword	.LVL397-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST218:
	.uaword	.LVL391-.Ltext0
	.uaword	.LVL393-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL393-.Ltext0
	.uaword	.LVL396-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST219:
	.uaword	.LVL396-.Ltext0
	.uaword	.LVL397-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST220:
	.uaword	.LVL401-.Ltext0
	.uaword	.LVL402-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL402-.Ltext0
	.uaword	.LFE136-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST221:
	.uaword	.LVL412-.Ltext0
	.uaword	.LVL413-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL413-.Ltext0
	.uaword	.LFE137-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST222:
	.uaword	.LVL405-.Ltext0
	.uaword	.LVL413-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST223:
	.uaword	.LVL406-.Ltext0
	.uaword	.LVL408-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL408-.Ltext0
	.uaword	.LVL409-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL409-.Ltext0
	.uaword	.LVL410-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL410-.Ltext0
	.uaword	.LVL411-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST224:
	.uaword	.LVL407-.Ltext0
	.uaword	.LVL413-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST225:
	.uaword	.LVL414-.Ltext0
	.uaword	.LVL423-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL423-1-.Ltext0
	.uaword	.LFE138-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST226:
	.uaword	.LVL431-.Ltext0
	.uaword	.LVL432-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL432-.Ltext0
	.uaword	.LFE138-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST227:
	.uaword	.LVL415-.Ltext0
	.uaword	.LVL423-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL423-1-.Ltext0
	.uaword	.LFE138-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST228:
	.uaword	.LVL416-.Ltext0
	.uaword	.LVL423-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST229:
	.uaword	.LVL418-.Ltext0
	.uaword	.LVL419-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST230:
	.uaword	.LVL417-.Ltext0
	.uaword	.LVL432-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST231:
	.uaword	.LVL421-.Ltext0
	.uaword	.LVL424-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST232:
	.uaword	.LVL421-.Ltext0
	.uaword	.LVL422-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST233:
	.uaword	.LVL425-.Ltext0
	.uaword	.LVL432-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST235:
	.uaword	.LVL428-.Ltext0
	.uaword	.LVL429-.Ltext0
	.uahalf	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL429-.Ltext0
	.uaword	.LVL430-.Ltext0
	.uahalf	0x5
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL430-.Ltext0
	.uaword	.LVL431-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST236:
	.uaword	.LVL426-.Ltext0
	.uaword	.LVL428-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL428-.Ltext0
	.uaword	.LVL430-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST237:
	.uaword	.LVL430-.Ltext0
	.uaword	.LVL431-.Ltext0
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
	.uaword	.LBB796-.Ltext0
	.uaword	.LBE796-.Ltext0
	.uaword	.LBB809-.Ltext0
	.uaword	.LBE809-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB882-.Ltext0
	.uaword	.LBE882-.Ltext0
	.uaword	.LBB896-.Ltext0
	.uaword	.LBE896-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF17:
	.string	"p_alarm_db"
.LASF10:
	.string	"virt_prio"
.LASF24:
	.string	"CounterID"
.LASF1:
	.string	"p_tdb"
.LASF19:
	.string	"p_tdb_act"
.LASF20:
	.string	"p_reso_db"
.LASF14:
	.string	"service_id"
.LASF13:
	.string	"p_cdb"
.LASF0:
	.string	"p_next"
.LASF4:
	.string	"current_prio"
.LASF6:
	.string	"p_curr"
.LASF5:
	.string	"p_counter_db"
.LASF15:
	.string	"p_idle_tdb"
.LASF22:
	.string	"p_curr_tcb"
.LASF7:
	.string	"os_status"
.LASF11:
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
.LASF12:
	.string	"Error"
.LASF2:
	.string	"dispatch_prio"
.LASF16:
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
	.extern	osEE_cdb_var,STT_OBJECT,8
	.extern	osEE_idle_task_terminate,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
