	.file	"ee_tc_system.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.type	osEE_tc_stm_us_ticks, @function
osEE_tc_stm_us_ticks:
.LFB104:
	.file 1 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_tc_system.c"
	.loc 1 635 0
.LVL0:
	mov.aa	%a14, %SP
.LCFI0:
	.loc 1 637 0
	movh.a	%a15, hi:osEE_tc_stm_freq_khz
	ld.w	%d15, [%a15] lo:osEE_tc_stm_freq_khz
	mov	%d2, 1000
	jlt.u	%d15, %d2, .L2
	.loc 1 638 0
	movh	%d2, 4194
	addi	%d2, %d2, 19923
	mul.u	%e2, %d15, %d2
	sh	%d2, %d3, -6
	mul	%d2, %d4
.LVL1:
	ret
.LVL2:
.L2:
	.loc 1 639 0
	mov	%d5, %d2
	.loc 1 642 0
	mul	%d2, %d4, %d15
	movh	%d3, 4194
	addi	%d3, %d3, 19923
	mul.u	%e2, %d2, %d3
	sh	%d2, %d3, -6
	.loc 1 639 0
	jlt.u	%d4, %d5, .L3
	.loc 1 640 0
	movh	%d2, 4194
	addi	%d2, %d2, 19923
	mul.u	%e4, %d4, %d2
.LVL3:
	sh	%d2, %d5, -6
	mul	%d2, %d15
.LVL4:
.L3:
	.loc 1 645 0
	ret
.LFE104:
	.size	osEE_tc_stm_us_ticks, .-osEE_tc_stm_us_ticks
	.align 1
	.global	osEE_tc_set_pll_fsource
	.type	osEE_tc_set_pll_fsource, @function
osEE_tc_set_pll_fsource:
.LFB102:
	.loc 1 397 0
.LVL5:
	mov.aa	%a14, %SP
.LCFI1:
.LVL6:
	.loc 1 419 0
	movh	%d2, 3662
	addi	%d2, %d2, 7169
	lt.u	%d15, %d4, %d2
	mov	%d2, 2
	sel	%d15, %d15, %d2, 1
	mov.a	%a4, %d15
.LVL7:
	mul	%d15, %d15, 15
.LVL8:
	mov.a	%a5, %d15
	.loc 1 452 0
	mov	%d14, 16
	mov	%d3, 0
	movh	%d2, 3052
	addi	%d2, %d2, -15872
	mov	%d8, %d2
	mov	%d1, 0
	mov	%d11, 0
	mov	%d13, 0
	mov	%d12, 0
	.loc 1 428 0
	movh	%d10, 305
	addi	%d10, %d10, 11520
	.loc 1 430 0
	movh.a	%a6, 244
	lea	%a6, [%a6] 9217
	.loc 1 432 0
	mov.a	%a13, 1
	.loc 1 438 0
	mul.u	%e6, %d4, 1
	mov.a	%a2, %d6
	mov.a	%a3, %d7
	.loc 1 440 0
	movh.a	%a15, 6104
	lea	%a15, [%a15] -31743
	.loc 1 442 0
	mov.a	%a12, 1
	j	.L21
.LVL9:
.L14:
	.loc 1 428 0
	div.u	%e6, %d10, %d14
	mov	%d7, 0
	.loc 1 430 0
	movh	%d15, 65414
	addi	%d15, %d15, -4608
	addx	%d6, %d6, %d15
	addc	%d5, %d7, -1
	eq	%d15, %d5, 0
	mov.d	%d7, %a6
	and.ge.u	%d15, %d6, %d7
	or.ne	%d15, %d5, 0
	jnz	%d15, .L7
.LVL10:
	.loc 1 432 0
	jz	%d0, .L8
	mov	%d9, %d14
	mov.d	%d0, %a13
	.loc 1 425 0
	mov.a	%a7, %d14
.LVL11:
.L13:
	.loc 1 438 0
	mov.d	%d15, %a2
	mul.u	%e6, %d0, %d15
	mov.d	%d15, %a3
	madd	%d7, %d7, %d0, %d15
	.loc 1 440 0
	movh	%d15, 59432
	addi	%d15, %d15, 31744
	addx	%d6, %d6, %d15
	addc	%d5, %d7, -1
	eq	%d15, %d5, 0
	mov.d	%d7, %a15
	and.ge.u	%d15, %d6, %d7
	or.ne	%d15, %d5, 0
	jnz	%d15, .L9
.LVL12:
	.loc 1 442 0
	or	%d15, %d3, %d2
	jz	%d15, .L7
	mov.d	%d6, %a12
.LVL13:
.L12:
	.loc 1 449 0
	div.u	%e2, %d6, %d9
	mov	%d15, %d2
	mul	%d15, %d10
	sub	%d15, %d4
.LVL14:
	.loc 1 448 0
	mul.u	%e2, %d15, 1
.LVL15:
	.loc 1 452 0
	jz	%d15, .L10
	.loc 1 460 0
	eq	%d5, %d3, %d1
	and.ge.u	%d5, %d15, %d8
	.loc 1 448 0
	sel	%d8, %d5, %d8, %d15
.LVL16:
	sel	%d1, %d5, %d1, 0
	sel	%d11, %d5, %d11, %d14
.LVL17:
	sel	%d13, %d5, %d13, %d6
.LVL18:
	sel	%d12, %d5, %d12, %d0
.LVL19:
	.loc 1 445 0
	add	%d6, 1
.LVL20:
	.loc 1 442 0
	lt.u	%d5, %d6, 129
	and.ne	%d5, %d15, 0
	jnz	%d5, .L12
	mov	%d6, %d13
.LVL21:
.L22:
	.loc 1 452 0
	mov	%d13, %d6
.LVL22:
.L9:
	.loc 1 435 0
	mov.d	%d15, %a4
	add	%d0, %d15
.LVL23:
	mov.d	%d6, %a5
	add	%d9, %d6
	.loc 1 434 0
	or	%d5, %d2, %d3
	.loc 1 432 0
	lt.u	%d15, %d0, 29
	and.ne	%d15, %d5, 0
	jnz	%d15, .L13
.LVL24:
.L7:
	sub.a	%a5, %a5, %a4
.LVL25:
.L21:
	.loc 1 425 0
	add	%d14, -1
.LVL26:
	.loc 1 424 0
	or	%d15, %d2, %d3
	ne	%d0, %d15, 0
	.loc 1 422 0
	ne	%d5, %d14, 0
	and.ne	%d5, %d15, 0
	jnz	%d5, .L14
.LVL27:
.L8:
	.loc 1 474 0
	sh	%d4, 1
.LVL28:
	movh	%d15, 20972
	addi	%d15, %d15, -31457
	mul.u	%e4, %d4, %d15
	sh	%d2, %d5, -5
	.loc 1 475 0
	eq	%d15, %d1, 0
	and.ge.u	%d15, %d8, %d2
	or.ne	%d15, %d1, 0
	jnz	%d15, .L5
	.loc 1 478 0
	add	%d12, -1
.LVL29:
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d15, [%a15]0
	insert	%d12, %d15, %d12, 0, 7
.LVL30:
	st.w	[%a15]0, %d12
	.loc 1 480 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L16:
	.loc 1 480 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L16
	.loc 1 487 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 489 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L17:
	.loc 1 489 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L17
	.loc 1 495 0 is_stmt 1
	add	%d15, %d11, -1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	and	%d15, %d15, 15
	sh	%d15, %d15, 24
	ld.w	%d2, [%a15]0
	insert	%d2, %d2, 0, 24, 4
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 496 0
	add	%d15, %d13, -1
	and	%d15, %d15, 127
	sh	%d15, %d15, 9
	ld.w	%d2, [%a15]0
	insert	%d2, %d2, 0, 9, 7
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 499 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-3)
	st.w	[%a15]0, %d15
	.loc 1 504 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 64
	st.w	[%a15]0, %d15
	.loc 1 506 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 32
	st.w	[%a15]0, %d15
	.loc 1 508 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L18:
	.loc 1 508 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 3, .L18
	.loc 1 513 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 515 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L19:
	.loc 1 515 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 2, .L19
	.loc 1 520 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 522 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L20:
	.loc 1 522 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L20
	.loc 1 527 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-65)
	st.w	[%a15]0, %d15
	ret
.LVL31:
.L10:
	.loc 1 454 0
	mov	%d8, %d2
	mov	%d1, %d3
	.loc 1 425 0
	mov.d	%d11, %a7
	.loc 1 452 0
	mov	%d12, %d0
	j	.L22
.LVL32:
.L5:
	ret
.LFE102:
	.size	osEE_tc_set_pll_fsource, .-osEE_tc_set_pll_fsource
	.align 1
	.global	osEE_tc_get_fsource
	.type	osEE_tc_get_fsource, @function
osEE_tc_get_fsource:
.LFB103:
	.loc 1 532 0
	mov.aa	%a14, %SP
.LCFI2:
	.loc 1 536 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	.loc 1 563 0
	movh	%d2, 1526
	addi	%d2, %d2, -7936
	.loc 1 536 0
	jz	%d15, .L32
.LBB33:
	.loc 1 541 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L33
	.loc 1 543 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 16, 7
.LVL33:
	add	%d2, 1
.LVL34:
	.loc 1 544 0
	movh	%d15, 305
	addi	%d15, %d15, 11520
	div.u	%e2, %d15, %d2
.LVL35:
	ret
.L33:
	.loc 1 547 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 3, .L34
	.loc 1 549 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d2, [%a15]0
	and	%d2, %d2, 127
.LVL36:
	add	%d15, %d2, 1
	.loc 1 550 0
	movh	%d2, 305
.LVL37:
	addi	%d2, %d2, 11520
	div.u	%e2, %d2, %d15
	ret
.LVL38:
.L34:
	.loc 1 553 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d15, [%a15]0
	and	%d5, %d15, 127
.LVL39:
	.loc 1 554 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	extr.u	%d3, %d15, 24, 4
.LVL40:
	.loc 1 555 0
	ld.w	%d2, [%a15]0
	extr.u	%d4, %d2, 9, 7
.LVL41:
	.loc 1 553 0
	add	%d15, %d5, 1
	.loc 1 558 0
	madd	%d15, %d15, %d3, %d15
	movh	%d2, 305
	addi	%d2, %d2, 11520
	div.u	%e2, %d2, %d15
	madd	%d2, %d2, %d4, %d2
.LVL42:
.L32:
.LBE33:
	.loc 1 566 0
	ret
.LFE103:
	.size	osEE_tc_get_fsource, .-osEE_tc_get_fsource
	.align 1
	.global	osEE_tc_stm_set_clockpersec
	.type	osEE_tc_stm_set_clockpersec, @function
osEE_tc_stm_set_clockpersec:
.LFB105:
	.loc 1 649 0
	mov.aa	%a14, %SP
.LCFI3:
	.loc 1 655 0
	call	osEE_tc_get_fsource
.LVL43:
	.loc 1 657 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 8, 4
.LVL44:
	add	%d2, 1
.LVL45:
	div.u	%e2, %d2, %d15
.LVL46:
	.loc 1 660 0
	movh	%d15, 4194
	addi	%d15, %d15, 19923
	mul.u	%e2, %d2, %d15
	sh	%d15, %d3, -6
	movh.a	%a15, hi:osEE_tc_stm_freq_khz
	st.w	[%a15] lo:osEE_tc_stm_freq_khz, %d15
	ret
.LFE105:
	.size	osEE_tc_stm_set_clockpersec, .-osEE_tc_stm_set_clockpersec
	.align 1
	.global	osEE_tc_stm_set_sr0
	.type	osEE_tc_stm_set_sr0, @function
osEE_tc_stm_set_sr0:
.LFB106:
	.loc 1 676 0
.LVL47:
	mov.aa	%a14, %SP
.LCFI4:
	mov	%d9, %d5
.LBB34:
.LBB35:
.LBB36:
	.file 2 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_hal.h"
	.loc 2 367 0
#APP
	# 367 "C:\TUNNEL~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d8, LO:65052
	# 0 "" 2
.LVL48:
#NO_APP
.LBE36:
.LBE35:
.LBE34:
	.loc 1 687 0
	call	osEE_tc_stm_us_ticks
.LVL49:
.LBB37:
.LBB38:
	.loc 2 140 0
	clz	%d3, %d2
.LVL50:
.LBE38:
.LBE37:
	.loc 1 693 0
	and	%d15, %d8, 3
	addih	%d4, %d15, 240
	sh	%d4, %d4, 8
	mov.a	%a15, %d4
.LVL51:
.LBB39:
.LBB40:
	.file 3 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_tc_system.h"
	.loc 3 902 0
	ld.w	%d4, [%a15] 16
.LBE40:
.LBE39:
	.loc 1 694 0
	add	%d2, %d4
.LVL52:
	.loc 1 693 0
	st.w	[%a15] 48, %d2
	.loc 1 696 0
	jz	%d9, .L38
	.loc 1 697 0
	ld.w	%d2, [%a15] 56
	insert	%d2, %d2, 0, 8, 5
	st.w	[%a15] 56, %d2
	.loc 1 689 0
	rsub	%d3, %d3, 31
.LVL53:
	.loc 1 698 0
	ld.w	%d2, [%a15] 56
	insert	%d3, %d2, %d3, 0, 5
	st.w	[%a15] 56, %d3
	.loc 1 700 0
	ld.w	%d2, [%a15] 60
	andn	%d2, %d2, ~(-5)
	st.w	[%a15] 60, %d2
	.loc 1 702 0
	ld.w	%d2, [%a15] 60
	or	%d2, %d2, 1
	st.w	[%a15] 60, %d2
.LVL54:
	.loc 1 707 0
	sh	%d15, 3
.LVL55:
.LBB41:
.LBB42:
	.file 4 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_hal_internal.h"
	.loc 4 421 0
	mov.a	%a2, %d15
	lea	%a15, [%a2] -31600
	addih.a	%a15, %a15, 61444
	insert	%d9, %d9, 8, 7, 25
.LVL56:
	and	%d8, %d8, 3
.LVL57:
	sh	%d8, %d8, 11
.LVL58:
	.loc 4 422 0
	or	%d9, %d8
	.loc 4 421 0
	st.w	[%a15]0, %d9
	ret
.LVL59:
.L38:
.LBE42:
.LBE41:
	.loc 1 710 0
	ld.w	%d2, [%a15] 60
	andn	%d2, %d2, ~(-2)
	st.w	[%a15] 60, %d2
	.loc 1 711 0
	addi	%d15, %d15, 28818
	addih	%d15, %d15, 7680
	sh	%d15, 3
	mov	%d2, 0
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	ret
.LFE106:
	.size	osEE_tc_stm_set_sr0, .-osEE_tc_stm_set_sr0
	.align 1
	.global	osEE_tc_stm_set_sr0_next_match
	.type	osEE_tc_stm_set_sr0_next_match, @function
osEE_tc_stm_set_sr0_next_match:
.LFB107:
	.loc 1 716 0
.LVL60:
	mov.aa	%a14, %SP
.LCFI5:
.LBB43:
.LBB44:
.LBB45:
	.loc 2 367 0
#APP
	# 367 "C:\TUNNEL~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL61:
#NO_APP
.LBE45:
.LBE44:
.LBE43:
	.loc 1 730 0
	call	osEE_tc_stm_us_ticks
.LVL62:
	and	%d15, %d15, 3
.LVL63:
	addih	%d15, %d15, 240
	sh	%d15, %d15, 8
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 48
	add	%d2, %d15
	st.w	[%a15] 48, %d2
	ret
.LFE107:
	.size	osEE_tc_stm_set_sr0_next_match, .-osEE_tc_stm_set_sr0_next_match
	.align 1
	.global	osEE_tc_stm_set_sr1
	.type	osEE_tc_stm_set_sr1, @function
osEE_tc_stm_set_sr1:
.LFB108:
	.loc 1 735 0
.LVL64:
	mov.aa	%a14, %SP
.LCFI6:
	mov	%d9, %d5
.LBB46:
.LBB47:
.LBB48:
	.loc 2 367 0
#APP
	# 367 "C:\TUNNEL~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d8, LO:65052
	# 0 "" 2
.LVL65:
#NO_APP
.LBE48:
.LBE47:
.LBE46:
	.loc 1 747 0
	call	osEE_tc_stm_us_ticks
.LVL66:
.LBB49:
.LBB50:
	.loc 2 140 0
	clz	%d3, %d2
.LVL67:
.LBE50:
.LBE49:
	.loc 1 753 0
	and	%d15, %d8, 3
	addih	%d4, %d15, 240
	sh	%d4, %d4, 8
	mov.a	%a15, %d4
.LVL68:
.LBB51:
.LBB52:
	.loc 3 902 0
	ld.w	%d4, [%a15] 16
.LBE52:
.LBE51:
	.loc 1 754 0
	add	%d2, %d4
.LVL69:
	.loc 1 753 0
	st.w	[%a15] 52, %d2
	.loc 1 756 0
	jz	%d9, .L42
	.loc 1 757 0
	ld.w	%d2, [%a15] 56
	insert	%d2, %d2, 0, 24, 5
	st.w	[%a15] 56, %d2
	.loc 1 749 0
	rsub	%d3, %d3, 31
.LVL70:
	.loc 1 758 0
	and	%d3, %d3, 31
	sh	%d3, %d3, 16
	ld.w	%d2, [%a15] 56
	insert	%d2, %d2, 0, 16, 5
	or	%d3, %d2
	st.w	[%a15] 56, %d3
	.loc 1 760 0
	ld.w	%d2, [%a15] 60
	or	%d2, %d2, 64
	st.w	[%a15] 60, %d2
	.loc 1 762 0
	ld.w	%d2, [%a15] 60
	or	%d2, %d2, 16
	st.w	[%a15] 60, %d2
.LVL71:
	.loc 1 766 0
	sh	%d15, 3
.LVL72:
.LBB53:
.LBB54:
	.loc 4 421 0
	mov.a	%a2, %d15
	lea	%a15, [%a2] -31596
	addih.a	%a15, %a15, 61444
	insert	%d9, %d9, 8, 7, 25
.LVL73:
	and	%d8, %d8, 3
.LVL74:
	sh	%d8, %d8, 11
.LVL75:
	.loc 4 422 0
	or	%d9, %d8
	.loc 4 421 0
	st.w	[%a15]0, %d9
	ret
.LVL76:
.L42:
.LBE54:
.LBE53:
	.loc 1 769 0
	ld.w	%d2, [%a15] 60
	andn	%d2, %d2, ~(-17)
	st.w	[%a15] 60, %d2
	.loc 1 770 0
	sh	%d15, 3
	mov.a	%a2, %d15
	lea	%a15, [%a2] -31596
	addih.a	%a15, %a15, 61444
	mov	%d15, 0
	st.w	[%a15]0, %d15
	ret
.LFE108:
	.size	osEE_tc_stm_set_sr1, .-osEE_tc_stm_set_sr1
	.align 1
	.global	osEE_tc_stm_set_sr1_next_match
	.type	osEE_tc_stm_set_sr1_next_match, @function
osEE_tc_stm_set_sr1_next_match:
.LFB109:
	.loc 1 775 0
.LVL77:
	mov.aa	%a14, %SP
.LCFI7:
.LBB55:
.LBB56:
.LBB57:
	.loc 2 367 0
#APP
	# 367 "C:\TUNNEL~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL78:
#NO_APP
.LBE57:
.LBE56:
.LBE55:
	.loc 1 787 0
	call	osEE_tc_stm_us_ticks
.LVL79:
	and	%d15, %d15, 3
.LVL80:
	addih	%d15, %d15, 240
	sh	%d15, %d15, 8
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 52
	add	%d2, %d15
	st.w	[%a15] 52, %d2
	ret
.LFE109:
	.size	osEE_tc_stm_set_sr1_next_match, .-osEE_tc_stm_set_sr1_next_match
	.align 1
	.global	osEE_tc_delay
	.type	osEE_tc_delay, @function
osEE_tc_delay:
.LFB110:
	.loc 1 791 0
.LVL81:
	mov.aa	%a14, %SP
.LCFI8:
.LBB58:
.LBB59:
.LBB60:
	.loc 2 367 0
#APP
	# 367 "C:\TUNNEL~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL82:
#NO_APP
.LBE60:
.LBE59:
.LBE58:
.LBB61:
.LBB62:
	.loc 3 902 0
	and	%d15, %d15, 3
.LVL83:
	addih	%d15, %d15, 240
	sh	%d15, %d15, 8
	mov.a	%a2, %d15
	lea	%a15, [%a2] 16
	ld.w	%d8, [%a2] 16
.LBE62:
.LBE61:
	.loc 1 802 0
	call	osEE_tc_stm_us_ticks
.LVL84:
.L46:
.LBB63:
.LBB64:
	.loc 3 902 0 discriminator 1
	ld.w	%d15, [%a15]0
.LBE64:
.LBE63:
	.loc 1 804 0 discriminator 1
	sub	%d15, %d8
	jlt.u	%d15, %d2, .L46
	.loc 1 807 0
	ret
.LFE110:
	.size	osEE_tc_delay, .-osEE_tc_delay
	.local	osEE_tc_stm_freq_khz
.section .bss,"aw",@nobits
	.align 2
	.type		 osEE_tc_stm_freq_khz,@object
	.size		 osEE_tc_stm_freq_khz,4
osEE_tc_stm_freq_khz:
	.space	4
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
	.uaword	.LFB104
	.uaword	.LFE104-.LFB104
	.byte	0x4
	.uaword	.LCFI0-.LFB104
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
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1d2f
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -O1 -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\TUNNEL~1\\TC275\\erika\\src\\ee_tc_system.c"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"size_t"
	.byte	0x5
	.byte	0xd4
	.uaword	0x193
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
	.uaword	0x1cd
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
	.uaword	0x1fb
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x6
	.byte	0x50
	.uaword	0x193
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint64_t"
	.byte	0x6
	.byte	0x78
	.uaword	0x15f
	.uleb128 0x3
	.string	"OsEE_addr"
	.byte	0x7
	.byte	0x5a
	.uaword	0x253
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x7
	.byte	0x5b
	.uaword	0x211
	.uleb128 0x5
	.byte	0x1
	.byte	0x7
	.byte	0x6d
	.uaword	0x2bc
	.uleb128 0x6
	.string	"OS_CORE_ID_0"
	.sleb128 0
	.uleb128 0x6
	.string	"OS_CORE_ID_MASTER"
	.sleb128 0
	.uleb128 0x6
	.string	"OS_CORE_ID_ARR_SIZE"
	.sleb128 1
	.uleb128 0x6
	.string	"OS_CODE_ID_INVALID"
	.sleb128 -1
	.byte	0
	.uleb128 0x3
	.string	"OsEE_core_id"
	.byte	0x7
	.byte	0x82
	.uaword	0x265
	.uleb128 0x3
	.string	"OsEE_prio"
	.byte	0x7
	.byte	0x8d
	.uaword	0x1be
	.uleb128 0x3
	.string	"OsEE_isr_src_id"
	.byte	0x7
	.byte	0x92
	.uaword	0x1eb
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0x74
	.uaword	0x34e
	.uleb128 0x8
	.string	"pcxo"
	.byte	0x8
	.byte	0x75
	.uaword	0x14f
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"pcxs"
	.byte	0x8
	.byte	0x76
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"ul"
	.byte	0x8
	.byte	0x7b
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"pie"
	.byte	0x8
	.byte	0x7c
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"pcpn"
	.byte	0x8
	.byte	0x7d
	.uaword	0x14f
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.byte	0x72
	.uaword	0x36d
	.uleb128 0xa
	.string	"reg"
	.byte	0x8
	.byte	0x73
	.uaword	0x255
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x8
	.byte	0x82
	.uaword	0x2f8
	.byte	0
	.uleb128 0x3
	.string	"OsEE_pcxi"
	.byte	0x8
	.byte	0x83
	.uaword	0x34e
	.uleb128 0xc
	.string	"OsEE_CTX_tag"
	.byte	0x10
	.byte	0x8
	.byte	0xf3
	.uaword	0x3c8
	.uleb128 0xd
	.string	"p_ctx"
	.byte	0x8
	.byte	0xf4
	.uaword	0x3c8
	.byte	0
	.uleb128 0xd
	.string	"dummy"
	.byte	0x8
	.byte	0xf5
	.uaword	0x255
	.byte	0x4
	.uleb128 0xd
	.string	"pcxi"
	.byte	0x8
	.byte	0xf6
	.uaword	0x36d
	.byte	0x8
	.uleb128 0xd
	.string	"ra"
	.byte	0x8
	.byte	0xf7
	.uaword	0x242
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x37e
	.uleb128 0x3
	.string	"OsEE_CTX"
	.byte	0x8
	.byte	0xf8
	.uaword	0x37e
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0xfb
	.uaword	0x3f5
	.uleb128 0xd
	.string	"p_tos"
	.byte	0x8
	.byte	0xfc
	.uaword	0x3f5
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x3ce
	.uleb128 0x3
	.string	"OsEE_SCB"
	.byte	0x8
	.byte	0xfd
	.uaword	0x3de
	.uleb128 0xf
	.byte	0x8
	.byte	0x8
	.uahalf	0x100
	.uaword	0x438
	.uleb128 0x10
	.string	"p_bos"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x3f5
	.byte	0
	.uleb128 0x10
	.string	"stack_size"
	.byte	0x8
	.uahalf	0x105
	.uaword	0x185
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"OsEE_SDB"
	.byte	0x8
	.uahalf	0x106
	.uaword	0x449
	.uleb128 0x12
	.uaword	0x40b
	.uleb128 0xf
	.byte	0xc
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x488
	.uleb128 0x10
	.string	"p_sdb"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x488
	.byte	0
	.uleb128 0x10
	.string	"p_scb"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x48e
	.byte	0x4
	.uleb128 0x10
	.string	"isr2_src"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x2e1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x438
	.uleb128 0xe
	.byte	0x4
	.uaword	0x3fb
	.uleb128 0x11
	.string	"OsEE_HDB"
	.byte	0x8
	.uahalf	0x111
	.uaword	0x4a5
	.uleb128 0x12
	.uaword	0x44e
	.uleb128 0x3
	.string	"OsEE_tc_isr_hw_prio"
	.byte	0x3
	.byte	0x66
	.uaword	0x1be
	.uleb128 0x13
	.string	"OsEE_tc_STM_CMCON_bits_tag"
	.byte	0x4
	.byte	0x3
	.uahalf	0x330
	.uaword	0x538
	.uleb128 0x14
	.string	"msize0"
	.byte	0x3
	.uahalf	0x333
	.uaword	0x14f
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"mstart0"
	.byte	0x3
	.uahalf	0x337
	.uaword	0x14f
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.string	"msize1"
	.byte	0x3
	.uahalf	0x33b
	.uaword	0x14f
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.string	"mstart1"
	.byte	0x3
	.uahalf	0x33f
	.uaword	0x14f
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_STM_CMCON_bits"
	.byte	0x3
	.uahalf	0x342
	.uaword	0x4c5
	.uleb128 0x15
	.string	"OsEE_tc_STM_CMCON_tag"
	.byte	0x4
	.byte	0x3
	.uahalf	0x345
	.uaword	0x58f
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x346
	.uaword	0x255
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x347
	.uaword	0x538
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_STM_CMCON"
	.byte	0x3
	.uahalf	0x348
	.uaword	0x557
	.uleb128 0x13
	.string	"OsEE_tc_STM_ICR_bits_tag"
	.byte	0x4
	.byte	0x3
	.uahalf	0x356
	.uaword	0x63e
	.uleb128 0x14
	.string	"cmp0en"
	.byte	0x3
	.uahalf	0x359
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"cmp0ir"
	.byte	0x3
	.uahalf	0x35b
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"cmp0os"
	.byte	0x3
	.uahalf	0x35d
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"cmp1en"
	.byte	0x3
	.uahalf	0x361
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"cmp1ir"
	.byte	0x3
	.uahalf	0x363
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"cmp1os"
	.byte	0x3
	.uahalf	0x365
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_STM_ICR_bits"
	.byte	0x3
	.uahalf	0x368
	.uaword	0x5a9
	.uleb128 0x15
	.string	"OsEE_tc_STM_ICR_tag"
	.byte	0x4
	.byte	0x3
	.uahalf	0x36b
	.uaword	0x691
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x36c
	.uaword	0x255
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x36d
	.uaword	0x63e
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_STM_ICR"
	.byte	0x3
	.uahalf	0x36e
	.uaword	0x65b
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uahalf	0x493
	.uaword	0x725
	.uleb128 0x14
	.string	"vcobyst"
	.byte	0x3
	.uahalf	0x496
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"vcolock"
	.byte	0x3
	.uahalf	0x49a
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"findis"
	.byte	0x3
	.uahalf	0x49c
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"k1rdy"
	.byte	0x3
	.uahalf	0x49e
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"k2rdy"
	.byte	0x3
	.uahalf	0x4a0
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"modrun"
	.byte	0x3
	.uahalf	0x4a4
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_PLLSTAT_bits"
	.byte	0x3
	.uahalf	0x4a7
	.uaword	0x6a9
	.uleb128 0x18
	.byte	0x4
	.byte	0x3
	.uahalf	0x4aa
	.uaword	0x768
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x4ab
	.uaword	0x255
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x4ac
	.uaword	0x725
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_PLLSTAT"
	.byte	0x3
	.uahalf	0x4ad
	.uaword	0x746
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uahalf	0x4b6
	.uaword	0x84f
	.uleb128 0x14
	.string	"vcobyp"
	.byte	0x3
	.uahalf	0x4b9
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"vcopwd"
	.byte	0x3
	.uahalf	0x4bb
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"moden"
	.byte	0x3
	.uahalf	0x4bd
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"setfindis"
	.byte	0x3
	.uahalf	0x4c1
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"clrfindis"
	.byte	0x3
	.uahalf	0x4c3
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"oscdisdis"
	.byte	0x3
	.uahalf	0x4c5
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"ndiv"
	.byte	0x3
	.uahalf	0x4c9
	.uaword	0x14f
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"pllpwd"
	.byte	0x3
	.uahalf	0x4cb
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.string	"resld"
	.byte	0x3
	.uahalf	0x4cf
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.string	"pdiv"
	.byte	0x3
	.uahalf	0x4d3
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_PLLCON0_bits"
	.byte	0x3
	.uahalf	0x4d6
	.uaword	0x784
	.uleb128 0x18
	.byte	0x4
	.byte	0x3
	.uahalf	0x4d9
	.uaword	0x892
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x4da
	.uaword	0x255
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x4db
	.uaword	0x84f
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_PLLCON0"
	.byte	0x3
	.uahalf	0x4dc
	.uaword	0x870
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uahalf	0x4e5
	.uaword	0x8ee
	.uleb128 0x14
	.string	"k2div"
	.byte	0x3
	.uahalf	0x4e8
	.uaword	0x14f
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"k3div"
	.byte	0x3
	.uahalf	0x4ec
	.uaword	0x14f
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"k1div"
	.byte	0x3
	.uahalf	0x4f0
	.uaword	0x14f
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_PLLCON1_bits"
	.byte	0x3
	.uahalf	0x4f3
	.uaword	0x8ae
	.uleb128 0x18
	.byte	0x4
	.byte	0x3
	.uahalf	0x4f6
	.uaword	0x931
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x4f7
	.uaword	0x255
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x4f8
	.uaword	0x8ee
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_PLLCON1"
	.byte	0x3
	.uahalf	0x4f9
	.uaword	0x90f
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uahalf	0x502
	.uaword	0xa28
	.uleb128 0x14
	.string	"baud1div"
	.byte	0x3
	.uahalf	0x505
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"baud2div"
	.byte	0x3
	.uahalf	0x507
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"sridiv"
	.byte	0x3
	.uahalf	0x509
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"lpdiv"
	.byte	0x3
	.uahalf	0x50b
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"spbdiv"
	.byte	0x3
	.uahalf	0x50d
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"fsi2div"
	.byte	0x3
	.uahalf	0x50f
	.uaword	0x14f
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x14
	.string	"fsidiv"
	.byte	0x3
	.uahalf	0x513
	.uaword	0x14f
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.string	"adcclksel"
	.byte	0x3
	.uahalf	0x515
	.uaword	0x14f
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"clksel"
	.byte	0x3
	.uahalf	0x517
	.uaword	0x14f
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"up"
	.byte	0x3
	.uahalf	0x519
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"lck"
	.byte	0x3
	.uahalf	0x51b
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_CCUCON0_bits"
	.byte	0x3
	.uahalf	0x51c
	.uaword	0x94d
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uahalf	0x543
	.uaword	0xb12
	.uleb128 0x14
	.string	"candiv"
	.byte	0x3
	.uahalf	0x546
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"eraydiv"
	.byte	0x3
	.uahalf	0x548
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"stmdiv"
	.byte	0x3
	.uahalf	0x54a
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"gtmdiv"
	.byte	0x3
	.uahalf	0x54c
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"ethdiv"
	.byte	0x3
	.uahalf	0x54e
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"asclinfdiv"
	.byte	0x3
	.uahalf	0x550
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"asclinsdiv"
	.byte	0x3
	.uahalf	0x552
	.uaword	0x14f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"insel"
	.byte	0x3
	.uahalf	0x554
	.uaword	0x14f
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"up"
	.byte	0x3
	.uahalf	0x556
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"lck"
	.byte	0x3
	.uahalf	0x558
	.uaword	0x14f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_CCUCON1_bits"
	.byte	0x3
	.uahalf	0x559
	.uaword	0xa49
	.uleb128 0x18
	.byte	0x4
	.byte	0x3
	.uahalf	0x6b4
	.uaword	0xb55
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x6b5
	.uaword	0x255
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x6b6
	.uaword	0xa28
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_CCUCON0"
	.byte	0x3
	.uahalf	0x6b7
	.uaword	0xb33
	.uleb128 0x18
	.byte	0x4
	.byte	0x3
	.uahalf	0x6c0
	.uaword	0xb93
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x6c1
	.uaword	0x255
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x6c2
	.uaword	0xb12
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_CCUCON1"
	.byte	0x3
	.uahalf	0x6c3
	.uaword	0xb71
	.uleb128 0x3
	.string	"AppModeType"
	.byte	0x9
	.byte	0x60
	.uaword	0x1be
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x9
	.byte	0x78
	.uaword	0x255
	.uleb128 0x3
	.string	"TaskPrio"
	.byte	0x9
	.byte	0xc8
	.uaword	0x2d0
	.uleb128 0x3
	.string	"TaskActivation"
	.byte	0x9
	.byte	0xf4
	.uaword	0x1be
	.uleb128 0x11
	.string	"CoreIdType"
	.byte	0x9
	.uahalf	0x103
	.uaword	0x2bc
	.uleb128 0x11
	.string	"TaskFunc"
	.byte	0x9
	.uahalf	0x13a
	.uaword	0xc1c
	.uleb128 0xe
	.byte	0x4
	.uaword	0xc22
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x9
	.uahalf	0x145
	.uaword	0xc8b
	.uleb128 0x6
	.string	"OSEE_TASK_TYPE_BASIC"
	.sleb128 0
	.uleb128 0x6
	.string	"OSEE_TASK_TYPE_EXTENDED"
	.sleb128 1
	.uleb128 0x6
	.string	"OSEE_TASK_TYPE_ISR2"
	.sleb128 2
	.uleb128 0x6
	.string	"OSEE_TASK_TYPE_IDLE"
	.sleb128 3
	.byte	0
	.uleb128 0x11
	.string	"OsEE_task_type"
	.byte	0x9
	.uahalf	0x153
	.uaword	0xc24
	.uleb128 0x11
	.string	"TaskExecutionType"
	.byte	0x9
	.uahalf	0x157
	.uaword	0xc8b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x9
	.uahalf	0x15d
	.uaword	0xd44
	.uleb128 0x6
	.string	"OSEE_TASK_SUSPENDED"
	.sleb128 0
	.uleb128 0x6
	.string	"OSEE_TASK_READY"
	.sleb128 1
	.uleb128 0x6
	.string	"OSEE_TASK_READY_STACKED"
	.sleb128 2
	.uleb128 0x6
	.string	"OSEE_TASK_WAITING"
	.sleb128 3
	.uleb128 0x6
	.string	"OSEE_TASK_RUNNING"
	.sleb128 4
	.uleb128 0x6
	.string	"OSEE_TASK_CHAINED"
	.sleb128 5
	.byte	0
	.uleb128 0x11
	.string	"OsEE_task_status"
	.byte	0x9
	.uahalf	0x16e
	.uaword	0xcbc
	.uleb128 0x11
	.string	"TaskStateType"
	.byte	0x9
	.uahalf	0x17e
	.uaword	0xd44
	.uleb128 0x11
	.string	"EventMaskType"
	.byte	0x9
	.uahalf	0x237
	.uaword	0x255
	.uleb128 0x11
	.string	"MemSize"
	.byte	0x9
	.uahalf	0x2a3
	.uaword	0x185
	.uleb128 0x1a
	.byte	0x1
	.byte	0x9
	.uahalf	0x2b1
	.uaword	0xfbc
	.uleb128 0x6
	.string	"E_OK"
	.sleb128 0
	.uleb128 0x6
	.string	"E_OS_ACCESS"
	.sleb128 1
	.uleb128 0x6
	.string	"E_OS_CALLEVEL"
	.sleb128 2
	.uleb128 0x6
	.string	"E_OS_ID"
	.sleb128 3
	.uleb128 0x6
	.string	"E_OS_LIMIT"
	.sleb128 4
	.uleb128 0x6
	.string	"E_OS_NOFUNC"
	.sleb128 5
	.uleb128 0x6
	.string	"E_OS_RESOURCE"
	.sleb128 6
	.uleb128 0x6
	.string	"E_OS_STATE"
	.sleb128 7
	.uleb128 0x6
	.string	"E_OS_VALUE"
	.sleb128 8
	.uleb128 0x6
	.string	"E_OS_SERVICEID"
	.sleb128 9
	.uleb128 0x6
	.string	"E_OS_ILLEGAL_ADDRESS"
	.sleb128 10
	.uleb128 0x6
	.string	"E_OS_MISSINGEND"
	.sleb128 11
	.uleb128 0x6
	.string	"E_OS_DISABLEDINT"
	.sleb128 12
	.uleb128 0x6
	.string	"E_OS_STACKFAULT"
	.sleb128 13
	.uleb128 0x6
	.string	"E_OS_PARAM_POINTER"
	.sleb128 14
	.uleb128 0x6
	.string	"E_OS_PROTECTION_MEMORY"
	.sleb128 15
	.uleb128 0x6
	.string	"E_OS_PROTECTION_TIME"
	.sleb128 16
	.uleb128 0x6
	.string	"E_OS_PROTECTION_ARRIVAL"
	.sleb128 17
	.uleb128 0x6
	.string	"E_OS_PROTECTION_LOCKED"
	.sleb128 18
	.uleb128 0x6
	.string	"E_OS_PROTECTION_EXCEPTION"
	.sleb128 19
	.uleb128 0x6
	.string	"E_OS_SPINLOCK"
	.sleb128 20
	.uleb128 0x6
	.string	"E_OS_INTERFERENCE_DEADLOCK"
	.sleb128 21
	.uleb128 0x6
	.string	"E_OS_NESTING_DEADLOCK"
	.sleb128 22
	.uleb128 0x6
	.string	"E_OS_CORE"
	.sleb128 23
	.uleb128 0x6
	.string	"E_OS_SYS_INIT"
	.sleb128 24
	.uleb128 0x6
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
	.sleb128 25
	.uleb128 0x6
	.string	"E_OS_SYS_TASK"
	.sleb128 26
	.uleb128 0x6
	.string	"E_OS_SYS_STACK"
	.sleb128 27
	.uleb128 0x6
	.string	"E_OS_SYS_ACT"
	.sleb128 28
	.byte	0
	.uleb128 0x11
	.string	"OsEE_status_type"
	.byte	0x9
	.uahalf	0x2d4
	.uaword	0xd99
	.uleb128 0x11
	.string	"StatusType"
	.byte	0x9
	.uahalf	0x2d9
	.uaword	0xfbc
	.uleb128 0xc
	.string	"OsEE_SN_tag"
	.byte	0x8
	.byte	0xa
	.byte	0x4b
	.uaword	0x101a
	.uleb128 0xd
	.string	"p_next"
	.byte	0xa
	.byte	0x4d
	.uaword	0x101a
	.byte	0
	.uleb128 0xd
	.string	"p_tdb"
	.byte	0xa
	.byte	0x4f
	.uaword	0x10c9
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0xfe8
	.uleb128 0x13
	.string	"OsEE_TDB_tag"
	.byte	0x20
	.byte	0xb
	.uahalf	0x108
	.uaword	0x10c9
	.uleb128 0x10
	.string	"hdb"
	.byte	0xb
	.uahalf	0x10b
	.uaword	0x494
	.byte	0
	.uleb128 0x10
	.string	"p_tcb"
	.byte	0xb
	.uahalf	0x10e
	.uaword	0x12cb
	.byte	0xc
	.uleb128 0x10
	.string	"tid"
	.byte	0xb
	.uahalf	0x110
	.uaword	0xbc2
	.byte	0x10
	.uleb128 0x10
	.string	"task_type"
	.byte	0xb
	.uahalf	0x112
	.uaword	0xca2
	.byte	0x14
	.uleb128 0x10
	.string	"task_func"
	.byte	0xb
	.uahalf	0x114
	.uaword	0xc0b
	.byte	0x18
	.uleb128 0x10
	.string	"ready_prio"
	.byte	0xb
	.uahalf	0x117
	.uaword	0xbd2
	.byte	0x1c
	.uleb128 0x10
	.string	"dispatch_prio"
	.byte	0xb
	.uahalf	0x11a
	.uaword	0xbd2
	.byte	0x1d
	.uleb128 0x10
	.string	"max_num_of_act"
	.byte	0xb
	.uahalf	0x11c
	.uaword	0xbe2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x10cf
	.uleb128 0x12
	.uaword	0x1020
	.uleb128 0x3
	.string	"OsEE_SN"
	.byte	0xa
	.byte	0x50
	.uaword	0xfe8
	.uleb128 0x3
	.string	"OsEE_RQ"
	.byte	0xa
	.byte	0xd5
	.uaword	0x10f2
	.uleb128 0xe
	.byte	0x4
	.uaword	0x10d4
	.uleb128 0x3
	.string	"OsEE_byte"
	.byte	0xb
	.byte	0x53
	.uaword	0x1be
	.uleb128 0x5
	.byte	0x1
	.byte	0xb
	.byte	0x73
	.uaword	0x1170
	.uleb128 0x6
	.string	"OSEE_KERNEL_INITIALIZED"
	.sleb128 0
	.uleb128 0x6
	.string	"OSEE_KERNEL_STARTING"
	.sleb128 1
	.uleb128 0x6
	.string	"OSEE_KERNEL_STARTED"
	.sleb128 2
	.uleb128 0x6
	.string	"OSEE_KERNEL_SHUTDOWN"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"OsEE_kernel_status"
	.byte	0xb
	.byte	0x7d
	.uaword	0x1109
	.uleb128 0x7
	.byte	0xc
	.byte	0xb
	.byte	0x90
	.uaword	0x11c4
	.uleb128 0xd
	.string	"p_next"
	.byte	0xb
	.byte	0x94
	.uaword	0x11f4
	.byte	0
	.uleb128 0xd
	.string	"prev_prio"
	.byte	0xb
	.byte	0x97
	.uaword	0xbd2
	.byte	0x4
	.uleb128 0xd
	.string	"p_owner"
	.byte	0xb
	.byte	0x9a
	.uaword	0x10c9
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"OsEE_MDB_tag"
	.byte	0x8
	.byte	0xb
	.byte	0xb5
	.uaword	0x11f4
	.uleb128 0xd
	.string	"p_cb"
	.byte	0xb
	.byte	0xb7
	.uaword	0x120f
	.byte	0
	.uleb128 0xd
	.string	"prio"
	.byte	0xb
	.byte	0xc3
	.uaword	0xbd2
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x11fa
	.uleb128 0x12
	.uaword	0x11c4
	.uleb128 0x3
	.string	"OsEE_MCB"
	.byte	0xb
	.byte	0x9b
	.uaword	0x118a
	.uleb128 0xe
	.byte	0x4
	.uaword	0x11ff
	.uleb128 0x3
	.string	"OsEE_MDB"
	.byte	0xb
	.byte	0xce
	.uaword	0x11fa
	.uleb128 0x7
	.byte	0x14
	.byte	0xb
	.byte	0xe0
	.uaword	0x12b4
	.uleb128 0xd
	.string	"current_num_of_act"
	.byte	0xb
	.byte	0xe4
	.uaword	0xbe2
	.byte	0
	.uleb128 0xd
	.string	"current_prio"
	.byte	0xb
	.byte	0xea
	.uaword	0xbd2
	.byte	0x1
	.uleb128 0xd
	.string	"status"
	.byte	0xb
	.byte	0xec
	.uaword	0xd5d
	.byte	0x2
	.uleb128 0xd
	.string	"p_last_m"
	.byte	0xb
	.byte	0xef
	.uaword	0x12b4
	.byte	0x4
	.uleb128 0xd
	.string	"wait_mask"
	.byte	0xb
	.byte	0xf3
	.uaword	0xd73
	.byte	0x8
	.uleb128 0xd
	.string	"event_mask"
	.byte	0xb
	.byte	0xf5
	.uaword	0xd73
	.byte	0xc
	.uleb128 0xd
	.string	"p_own_sn"
	.byte	0xb
	.byte	0xfb
	.uaword	0x10f2
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1215
	.uleb128 0x11
	.string	"OsEE_TCB"
	.byte	0xb
	.uahalf	0x101
	.uaword	0x1225
	.uleb128 0xe
	.byte	0x4
	.uaword	0x12ba
	.uleb128 0x11
	.string	"OsEE_TDB"
	.byte	0xb
	.uahalf	0x122
	.uaword	0x10cf
	.uleb128 0xe
	.byte	0x4
	.uaword	0x12d1
	.uleb128 0xf
	.byte	0x20
	.byte	0xb
	.uahalf	0x2d9
	.uaword	0x13ed
	.uleb128 0x10
	.string	"p_curr"
	.byte	0xb
	.uahalf	0x2dc
	.uaword	0x12e2
	.byte	0
	.uleb128 0x10
	.string	"rq"
	.byte	0xb
	.uahalf	0x2ee
	.uaword	0x10e3
	.byte	0x4
	.uleb128 0x10
	.string	"p_free_sn"
	.byte	0xb
	.uahalf	0x2f0
	.uaword	0x10f2
	.byte	0x8
	.uleb128 0x10
	.string	"p_stk_sn"
	.byte	0xb
	.uahalf	0x2ff
	.uaword	0x10f2
	.byte	0xc
	.uleb128 0x10
	.string	"os_status"
	.byte	0xb
	.uahalf	0x301
	.uaword	0x13ed
	.byte	0x10
	.uleb128 0x10
	.string	"app_mode"
	.byte	0xb
	.uahalf	0x305
	.uaword	0xbaf
	.byte	0x11
	.uleb128 0x10
	.string	"last_error"
	.byte	0xb
	.uahalf	0x307
	.uaword	0xfd5
	.byte	0x12
	.uleb128 0x10
	.string	"prev_s_isr_all_status"
	.byte	0xb
	.uahalf	0x327
	.uaword	0x255
	.byte	0x14
	.uleb128 0x10
	.string	"prev_s_isr_os_status"
	.byte	0xb
	.uahalf	0x329
	.uaword	0x255
	.byte	0x18
	.uleb128 0x10
	.string	"s_isr_all_cnt"
	.byte	0xb
	.uahalf	0x32b
	.uaword	0x10f8
	.byte	0x1c
	.uleb128 0x10
	.string	"s_isr_os_cnt"
	.byte	0xb
	.uahalf	0x32d
	.uaword	0x10f8
	.byte	0x1d
	.uleb128 0x10
	.string	"d_isr_all_cnt"
	.byte	0xb
	.uahalf	0x330
	.uaword	0x10f8
	.byte	0x1e
	.byte	0
	.uleb128 0x1b
	.uaword	0x1170
	.uleb128 0x11
	.string	"OsEE_CCB"
	.byte	0xb
	.uahalf	0x33a
	.uaword	0x12e8
	.uleb128 0xf
	.byte	0x8
	.byte	0xb
	.uahalf	0x344
	.uaword	0x1431
	.uleb128 0x10
	.string	"p_ccb"
	.byte	0xb
	.uahalf	0x34a
	.uaword	0x1431
	.byte	0
	.uleb128 0x10
	.string	"p_idle_task"
	.byte	0xb
	.uahalf	0x354
	.uaword	0x12e2
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x13f2
	.uleb128 0x11
	.string	"OsEE_CDB"
	.byte	0xb
	.uahalf	0x36a
	.uaword	0x1448
	.uleb128 0x12
	.uaword	0x1403
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.uahalf	0x36f
	.uaword	0x1466
	.uleb128 0x10
	.string	"dummy"
	.byte	0xb
	.uahalf	0x3b1
	.uaword	0x255
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_KCB"
	.byte	0xb
	.uahalf	0x3b3
	.uaword	0x144d
	.uleb128 0xf
	.byte	0x14
	.byte	0xb
	.uahalf	0x3c3
	.uaword	0x14f2
	.uleb128 0x10
	.string	"p_kcb"
	.byte	0xb
	.uahalf	0x3c5
	.uaword	0x14f2
	.byte	0
	.uleb128 0x10
	.string	"p_tdb_ptr_array"
	.byte	0xb
	.uahalf	0x3d1
	.uaword	0x1503
	.byte	0x4
	.uleb128 0x10
	.string	"tdb_array_size"
	.byte	0xb
	.uahalf	0x3d4
	.uaword	0xd89
	.byte	0x8
	.uleb128 0x10
	.string	"p_res_ptr_array"
	.byte	0xb
	.uahalf	0x3e0
	.uaword	0x1514
	.byte	0xc
	.uleb128 0x10
	.string	"res_array_size"
	.byte	0xb
	.uahalf	0x3e2
	.uaword	0xd89
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1466
	.uleb128 0x1c
	.uaword	0x10c9
	.uaword	0x1503
	.uleb128 0x1d
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x14f8
	.uleb128 0x1c
	.uaword	0x11f4
	.uaword	0x1514
	.uleb128 0x1d
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1509
	.uleb128 0x11
	.string	"OsEE_KDB"
	.byte	0xb
	.uahalf	0x3fc
	.uaword	0x152b
	.uleb128 0x12
	.uaword	0x1477
	.uleb128 0x1e
	.string	"osEE_get_curr_core_id"
	.byte	0x2
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x2bc
	.byte	0x3
	.uaword	0x1563
	.uleb128 0x1f
	.uleb128 0x20
	.string	"reg"
	.byte	0x2
	.uahalf	0x16f
	.uaword	0x255
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"osEE_tc_clz"
	.byte	0x2
	.byte	0x8b
	.byte	0x1
	.uaword	0x255
	.byte	0x3
	.uaword	0x1588
	.uleb128 0x22
	.string	"reg"
	.byte	0x2
	.byte	0x8b
	.uaword	0x255
	.byte	0
	.uleb128 0x1e
	.string	"osEE_tc_stm_get_time_lower_word"
	.byte	0x3
	.uahalf	0x384
	.byte	0x1
	.uaword	0x255
	.byte	0x3
	.uaword	0x15c3
	.uleb128 0x23
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x384
	.uaword	0x255
	.byte	0
	.uleb128 0x24
	.string	"osEE_tc_conf_src"
	.byte	0x4
	.uahalf	0x19e
	.byte	0x1
	.byte	0x3
	.uaword	0x160b
	.uleb128 0x25
	.string	"tos"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0xbf8
	.uleb128 0x25
	.string	"src_offset"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x255
	.uleb128 0x25
	.string	"prio"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x2d0
	.byte	0
	.uleb128 0x26
	.string	"osEE_tc_stm_us_ticks"
	.byte	0x1
	.uahalf	0x27b
	.byte	0x1
	.uaword	0x255
	.uaword	.LFB104
	.uaword	.LFE104
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x165b
	.uleb128 0x27
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x27b
	.uaword	0x255
	.uaword	.LLST0
	.uleb128 0x28
	.string	"ticks"
	.byte	0x1
	.uahalf	0x27c
	.uaword	0x255
	.uaword	.LLST1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"osEE_tc_set_pll_fsource"
	.byte	0x1
	.uahalf	0x18d
	.byte	0x1
	.uaword	.LFB102
	.uaword	.LFE102
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1784
	.uleb128 0x2a
	.string	"fpll"
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x255
	.uaword	.LLST2
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x255
	.uaword	.LLST3
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x255
	.uaword	.LLST4
	.uleb128 0x28
	.string	"k2"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x255
	.uaword	.LLST5
	.uleb128 0x28
	.string	"k2Steps"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x255
	.uaword	.LLST6
	.uleb128 0x28
	.string	"bestK2"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x255
	.uaword	.LLST7
	.uleb128 0x28
	.string	"bestN"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x255
	.uaword	.LLST8
	.uleb128 0x28
	.string	"bestP"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x255
	.uaword	.LLST9
	.uleb128 0x28
	.string	"fRef"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x232
	.uaword	.LLST10
	.uleb128 0x28
	.string	"fVco"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x232
	.uaword	.LLST11
	.uleb128 0x28
	.string	"fPllLeastError"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x232
	.uaword	.LLST12
	.uleb128 0x28
	.string	"fPllError"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x232
	.uaword	.LLST13
	.uleb128 0x28
	.string	"fpll_maxerrorallowed"
	.byte	0x1
	.uahalf	0x196
	.uaword	0x255
	.uaword	.LLST14
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"osEE_tc_get_fsource"
	.byte	0x1
	.uahalf	0x214
	.byte	0x1
	.uaword	0x255
	.uaword	.LFB103
	.uaword	.LFE103
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x180a
	.uleb128 0x28
	.string	"fsource"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x255
	.uaword	.LLST15
	.uleb128 0x2c
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x28
	.string	"k1"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x255
	.uaword	.LLST16
	.uleb128 0x28
	.string	"k2"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x255
	.uaword	.LLST17
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x255
	.uaword	.LLST18
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x255
	.uaword	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"osEE_tc_stm_set_clockpersec"
	.byte	0x1
	.uahalf	0x288
	.byte	0x1
	.uaword	.LFB105
	.uaword	.LFE105
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x186a
	.uleb128 0x28
	.string	"fsource"
	.byte	0x1
	.uahalf	0x28f
	.uaword	0x186a
	.uaword	.LLST20
	.uleb128 0x28
	.string	"fstm"
	.byte	0x1
	.uahalf	0x291
	.uaword	0x186a
	.uaword	.LLST21
	.uleb128 0x2d
	.uaword	.LVL43
	.uaword	0x1784
	.byte	0
	.uleb128 0x12
	.uaword	0x255
	.uleb128 0x29
	.byte	0x1
	.string	"osEE_tc_stm_set_sr0"
	.byte	0x1
	.uahalf	0x2a2
	.byte	0x1
	.uaword	.LFB106
	.uaword	.LFE106
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x199d
	.uleb128 0x27
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2a2
	.uaword	0x255
	.uaword	.LLST22
	.uleb128 0x2a
	.string	"intvec"
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0x4aa
	.uaword	.LLST23
	.uleb128 0x2e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2a5
	.uaword	0x255
	.uaword	.LLST24
	.uleb128 0x2e
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0x1be
	.uaword	.LLST25
	.uleb128 0x2f
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0x199d
	.uleb128 0x2e
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2ac
	.uaword	0x186a
	.uaword	.LLST26
	.uleb128 0x30
	.uaword	0x1530
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0x191f
	.uleb128 0x2c
	.uaword	.LBB36
	.uaword	.LBE36
	.uleb128 0x31
	.uaword	0x1555
	.uaword	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1563
	.uaword	.LBB37
	.uaword	.LBE37
	.byte	0x1
	.uahalf	0x2b1
	.uaword	0x193d
	.uleb128 0x32
	.uaword	0x157c
	.uaword	.LLST24
	.byte	0
	.uleb128 0x30
	.uaword	0x1588
	.uaword	.LBB39
	.uaword	.LBE39
	.byte	0x1
	.uahalf	0x2b6
	.uaword	0x195b
	.uleb128 0x32
	.uaword	0x15b6
	.uaword	.LLST29
	.byte	0
	.uleb128 0x30
	.uaword	0x15c3
	.uaword	.LBB41
	.uaword	.LBE41
	.byte	0x1
	.uahalf	0x2c3
	.uaword	0x198b
	.uleb128 0x32
	.uaword	0x15fd
	.uaword	.LLST30
	.uleb128 0x32
	.uaword	0x15ea
	.uaword	.LLST31
	.uleb128 0x32
	.uaword	0x15de
	.uaword	.LLST32
	.byte	0
	.uleb128 0x33
	.uaword	.LVL49
	.uaword	0x160b
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0xbf8
	.uleb128 0x29
	.byte	0x1
	.string	"osEE_tc_stm_set_sr0_next_match"
	.byte	0x1
	.uahalf	0x2cb
	.byte	0x1
	.uaword	.LFB107
	.uaword	.LFE107
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1a3c
	.uleb128 0x27
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x255
	.uaword	.LLST33
	.uleb128 0x2f
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0x199d
	.uleb128 0x2e
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2d4
	.uaword	0x186a
	.uaword	.LLST34
	.uleb128 0x30
	.uaword	0x1530
	.uaword	.LBB43
	.uaword	.LBE43
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0x1a2a
	.uleb128 0x2c
	.uaword	.LBB45
	.uaword	.LBE45
	.uleb128 0x31
	.uaword	0x1555
	.uaword	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL62
	.uaword	0x160b
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"osEE_tc_stm_set_sr1"
	.byte	0x1
	.uahalf	0x2dd
	.byte	0x1
	.uaword	.LFB108
	.uaword	.LFE108
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1b6a
	.uleb128 0x27
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2dd
	.uaword	0x255
	.uaword	.LLST36
	.uleb128 0x2a
	.string	"intvec"
	.byte	0x1
	.uahalf	0x2de
	.uaword	0x4aa
	.uaword	.LLST37
	.uleb128 0x2e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2e0
	.uaword	0x255
	.uaword	.LLST38
	.uleb128 0x2e
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0x1be
	.uaword	.LLST39
	.uleb128 0x2f
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0x199d
	.uleb128 0x2e
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2e7
	.uaword	0x186a
	.uaword	.LLST40
	.uleb128 0x30
	.uaword	0x1530
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0x1aec
	.uleb128 0x2c
	.uaword	.LBB48
	.uaword	.LBE48
	.uleb128 0x31
	.uaword	0x1555
	.uaword	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1563
	.uaword	.LBB49
	.uaword	.LBE49
	.byte	0x1
	.uahalf	0x2ed
	.uaword	0x1b0a
	.uleb128 0x32
	.uaword	0x157c
	.uaword	.LLST38
	.byte	0
	.uleb128 0x30
	.uaword	0x1588
	.uaword	.LBB51
	.uaword	.LBE51
	.byte	0x1
	.uahalf	0x2f2
	.uaword	0x1b28
	.uleb128 0x32
	.uaword	0x15b6
	.uaword	.LLST43
	.byte	0
	.uleb128 0x30
	.uaword	0x15c3
	.uaword	.LBB53
	.uaword	.LBE53
	.byte	0x1
	.uahalf	0x2fe
	.uaword	0x1b58
	.uleb128 0x32
	.uaword	0x15fd
	.uaword	.LLST44
	.uleb128 0x32
	.uaword	0x15ea
	.uaword	.LLST45
	.uleb128 0x32
	.uaword	0x15de
	.uaword	.LLST46
	.byte	0
	.uleb128 0x33
	.uaword	.LVL66
	.uaword	0x160b
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"osEE_tc_stm_set_sr1_next_match"
	.byte	0x1
	.uahalf	0x306
	.byte	0x1
	.uaword	.LFB109
	.uaword	.LFE109
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1c04
	.uleb128 0x27
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x306
	.uaword	0x255
	.uaword	.LLST47
	.uleb128 0x2f
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x308
	.uaword	0x199d
	.uleb128 0x2e
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x30d
	.uaword	0x186a
	.uaword	.LLST48
	.uleb128 0x30
	.uaword	0x1530
	.uaword	.LBB55
	.uaword	.LBE55
	.byte	0x1
	.uahalf	0x308
	.uaword	0x1bf2
	.uleb128 0x2c
	.uaword	.LBB57
	.uaword	.LBE57
	.uleb128 0x31
	.uaword	0x1555
	.uaword	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL79
	.uaword	0x160b
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"osEE_tc_delay"
	.byte	0x1
	.uahalf	0x316
	.byte	0x1
	.uaword	.LFB110
	.uaword	.LFE110
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1ce3
	.uleb128 0x27
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x316
	.uaword	0x255
	.uaword	.LLST50
	.uleb128 0x2f
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x318
	.uaword	0x199d
	.uleb128 0x2e
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x31d
	.uaword	0x186a
	.uaword	.LLST51
	.uleb128 0x20
	.string	"start"
	.byte	0x1
	.uahalf	0x320
	.uaword	0x186a
	.uleb128 0x35
	.string	"ticks"
	.byte	0x1
	.uahalf	0x322
	.uaword	0x186a
	.byte	0x1
	.byte	0x52
	.uleb128 0x30
	.uaword	0x1530
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.uahalf	0x318
	.uaword	0x1c99
	.uleb128 0x2c
	.uaword	.LBB60
	.uaword	.LBE60
	.uleb128 0x31
	.uaword	0x1555
	.uaword	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1588
	.uaword	.LBB61
	.uaword	.LBE61
	.byte	0x1
	.uahalf	0x320
	.uaword	0x1cb7
	.uleb128 0x32
	.uaword	0x15b6
	.uaword	.LLST51
	.byte	0
	.uleb128 0x30
	.uaword	0x1588
	.uaword	.LBB63
	.uaword	.LBE63
	.byte	0x1
	.uahalf	0x324
	.uaword	0x1cd1
	.uleb128 0x36
	.uaword	0x15b6
	.byte	0
	.uleb128 0x33
	.uaword	.LVL84
	.uaword	0x160b
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x35
	.string	"osEE_tc_stm_freq_khz"
	.byte	0x1
	.uahalf	0x274
	.uaword	0x255
	.byte	0x5
	.byte	0x3
	.uaword	osEE_tc_stm_freq_khz
	.uleb128 0x37
	.string	"osEE_kdb_var"
	.byte	0xc
	.byte	0x42
	.uaword	0x151a
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"osEE_cdb_var"
	.byte	0xc
	.byte	0x5b
	.uaword	0x1437
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x15
	.uleb128 0x17
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-.Ltext0
	.uaword	.LFE104-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4-.Ltext0
	.uaword	.LFE104-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32-.Ltext0
	.uaword	.LFE102-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL26-.Ltext0
	.uaword	.LFE102-.Ltext0
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8-.Ltext0
	.uaword	.LFE102-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL32-.Ltext0
	.uaword	.LFE102-.Ltext0
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL32-.Ltext0
	.uaword	.LFE102-.Ltext0
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL32-.Ltext0
	.uaword	.LFE102-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0x1312d0
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x17
	.byte	0xc
	.uaword	0x1312d00
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x7e
	.sleb128 0
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x14f
	.byte	0xf7
	.uleb128 0x15f
	.byte	0x9f
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x17
	.byte	0xc
	.uaword	0x1312d00
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x7e
	.sleb128 0
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x14f
	.byte	0xf7
	.uleb128 0x15f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x12
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x14f
	.byte	0xf7
	.uleb128 0x15f
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x14f
	.byte	0xf7
	.uleb128 0x15f
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x12
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x14f
	.byte	0xf7
	.uleb128 0x15f
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x14f
	.byte	0xf7
	.uleb128 0x15f
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0xbebc200
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0xbebc200
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x14f
	.byte	0xf7
	.uleb128 0x15f
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x10
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x31
	.byte	0x24
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL32-.Ltext0
	.uaword	.LFE102-.Ltext0
	.uahalf	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x31
	.byte	0x24
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL42-.Ltext0
	.uaword	.LFE103-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x8
	.byte	0x72
	.sleb128 -1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x8
	.byte	0x7f
	.sleb128 -1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x11
	.byte	0x72
	.sleb128 1
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x11
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf7
	.uleb128 0x14f
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL49-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL49-1-.Ltext0
	.uaword	.LFE106-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL49-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL49-1-.Ltext0
	.uaword	.LFE106-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x5
	.byte	0x4f
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL59-.Ltext0
	.uaword	.LFE106-.Ltext0
	.uahalf	0x5
	.byte	0x4f
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL59-.Ltext0
	.uaword	.LFE106-.Ltext0
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL59-.Ltext0
	.uaword	.LFE106-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL59-.Ltext0
	.uaword	.LFE106-.Ltext0
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL56-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x6
	.byte	0x7f
	.sleb128 146
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0xa
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x23
	.uleb128 0x92
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x6
	.byte	0x78
	.sleb128 146
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL62-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62-1-.Ltext0
	.uaword	.LFE107-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL66-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL66-1-.Ltext0
	.uaword	.LFE108-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL66-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL66-1-.Ltext0
	.uaword	.LFE108-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL67-.Ltext0
	.uaword	.LVL70-.Ltext0
	.uahalf	0x5
	.byte	0x4f
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL76-.Ltext0
	.uaword	.LFE108-.Ltext0
	.uahalf	0x5
	.byte	0x4f
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL76-.Ltext0
	.uaword	.LFE108-.Ltext0
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL76-.Ltext0
	.uaword	.LFE108-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL76-.Ltext0
	.uaword	.LFE108-.Ltext0
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL73-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x8
	.byte	0x7f
	.sleb128 146
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0xc
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x23
	.uleb128 0x92
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x8
	.byte	0x78
	.sleb128 146
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL79-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL79-1-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL78-.Ltext0
	.uaword	.LVL80-.Ltext0
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL78-.Ltext0
	.uaword	.LVL80-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL84-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL84-1-.Ltext0
	.uaword	.LFE110-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL82-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL82-.Ltext0
	.uaword	.LVL83-.Ltext0
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
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"us_in_ticks"
.LASF4:
	.string	"size_of_compare"
.LASF0:
	.string	"bits"
.LASF5:
	.string	"core_id"
.LASF1:
	.string	"stm_id"
.LASF2:
	.string	"usec"
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
