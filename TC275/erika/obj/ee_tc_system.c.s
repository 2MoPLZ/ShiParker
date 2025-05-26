	.file	"ee_tc_system.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.type	osEE_tc_stm_us_ticks, @function
osEE_tc_stm_us_ticks:
.LFB111:
	.file 1 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_tc_system.c"
	.loc 1 635 0
.LVL0:
	.loc 1 637 0
	movh.a	%a15, hi:osEE_tc_stm_freq_khz
	ld.w	%d2, [%a15] lo:osEE_tc_stm_freq_khz
	mov	%d15, 1000
	jlt.u	%d2, %d15, .L2
	.loc 1 638 0
	div.u	%e2, %d2, %d15
	j	.L5
.L2:
	.loc 1 639 0
	jlt.u	%d4, %d15, .L4
	.loc 1 640 0
	div.u	%e4, %d4, %d15
.LVL1:
.L5:
	mul	%d2, %d4
.LVL2:
	ret
.LVL3:
.L4:
	.loc 1 642 0
	mul	%d4, %d2
.LVL4:
	div.u	%e4, %d4, %d15
	mov	%d2, %d4
.LVL5:
	.loc 1 645 0
	ret
.LFE111:
	.size	osEE_tc_stm_us_ticks, .-osEE_tc_stm_us_ticks
	.align 1
	.global	osEE_tc_set_pll_fsource
	.type	osEE_tc_set_pll_fsource, @function
osEE_tc_set_pll_fsource:
.LFB109:
	.loc 1 397 0
.LVL6:
	.loc 1 419 0
	movh	%d5, 3662
	addi	%d5, %d5, 7169
	mov	%d15, 2
	lt.u	%d13, %d4, %d5
	sel	%d13, %d13, %d15, 1
.LVL7:
	sh	%d6, %d13, 4
	.loc 1 415 0
	movh	%d2, 3052
	addi	%d2, %d2, -15872
	.loc 1 428 0
	movh.a	%a5, 305
	.loc 1 430 0
	movh.a	%a3, 244
	.loc 1 440 0
	movh	%d0, 59432
	movh.a	%a4, 6104
	mov.a	%a2, %d6
	.loc 1 415 0
	mov	%d3, 0
	.loc 1 414 0
	mov	%d8, %d2
	.loc 1 409 0
	mov	%e10, 0
	.loc 1 408 0
	mov	%d12, 0
	.loc 1 423 0
	mov	%d15, 16
	.loc 1 428 0
	lea	%a5, [%a5] 11520
	.loc 1 430 0
	lea	%a3, [%a3] 9217
	.loc 1 440 0
	mov	%d1, -1
	addi	%d0, %d0, 31744
	lea	%a4, [%a4] -31743
.LVL8:
.L9:
	.loc 1 424 0
	or	%d6, %d2, %d3
	.loc 1 422 0
	ne	%d5, %d15, 0
	and.ne	%d5, %d6, 0
	jz	%d5, .L39
.LVL9:
	.loc 1 428 0
	mov.d	%d14, %a5
	.loc 1 430 0
	movh	%d9, 65414
	.loc 1 428 0
	div.u	%e6, %d14, %d15
	.loc 1 430 0
	addi	%d9, %d9, -4608
	.loc 1 428 0
	mov	%d7, 0
	.loc 1 430 0
	addx	%d9, %d6, %d9
	addc	%d6, %d7, -1
	mov.d	%d7, %a3
	eq	%d5, %d6, 0
	and.ge.u	%d5, %d9, %d7
	or.ne	%d5, %d6, 0
	mov.a	%a15, %d15
	mov	%d9, 1
	jnz	%d5, .L10
.LVL10:
.L11:
	.loc 1 434 0
	or	%d6, %d2, %d3
	.loc 1 432 0
	lt.u	%d5, %d9, 29
	and.ne	%d5, %d6, 0
	jz	%d5, .L10
.LVL11:
	.loc 1 440 0
	madd.u	%e6, %e0, %d9, %d4
	mov.d	%d14, %a4
	eq	%d5, %d7, 0
	and.lt.u	%d5, %d6, %d14
	jz	%d5, .L13
	mov	%d5, 1
.LVL12:
.L12:
	.loc 1 444 0
	or	%d7, %d2, %d3
	.loc 1 442 0
	lt.u	%d6, %d5, 129
	and.ne	%d6, %d7, 0
	jz	%d6, .L13
	.loc 1 449 0
	mov.d	%d6, %a15
	mov.d	%d7, %a5
	div.u	%e2, %d5, %d6
	mul	%d2, %d7
	sub	%d7, %d2, %d4
.LVL13:
	.loc 1 448 0
	mul.u	%e2, %d7, 1
.LVL14:
	.loc 1 452 0
	jz	%d7, .L27
	.loc 1 460 0
	mov	%d6, 1
	and.lt.u	%d6, %d7, %d8
	seln	%d8, %d6, %d8, %d7
.LVL15:
	seln	%d11, %d6, %d11, %d15
.LVL16:
	seln	%d10, %d6, %d10, %d5
.LVL17:
	seln	%d12, %d6, %d12, %d9
.LVL18:
	j	.L15
.LVL19:
.L27:
	mov	%e10, %d15, %d5
.LVL20:
	mov	%d12, %d9
.LVL21:
	mov	%d8, 0
.LVL22:
.L15:
	.loc 1 445 0
	add	%d5, 1
.LVL23:
	j	.L12
.LVL24:
.L13:
	.loc 1 435 0
	add	%d9, %d13
.LVL25:
	add.a	%a15, %a2
	j	.L11
.LVL26:
.L10:
	mov.a	%a15, %d13
	.loc 1 425 0
	add	%d15, -1
.LVL27:
	sub.a	%a2, %a2, %a15
	j	.L9
.LVL28:
.L39:
	.loc 1 474 0
	sh	%d4, 1
.LVL29:
	mov	%d15, 100
.LVL30:
	div.u	%e4, %d4, %d15
	.loc 1 475 0
	jge.u	%d8, %d4, .L7
	.loc 1 478 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d15, [%a15]0
	add	%d12, -1
.LVL31:
	insert	%d12, %d15, %d12, 0, 7
.LVL32:
	st.w	[%a15]0, %d12
	.loc 1 480 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L20:
	.loc 1 480 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L20
	.loc 1 487 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 489 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L21:
	.loc 1 489 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L21
	.loc 1 495 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	add	%d11, -1
.LVL33:
	insert	%d11, %d15, %d11, 24, 4
.LVL34:
	.loc 1 496 0
	add	%d10, -1
.LVL35:
	.loc 1 495 0
	st.w	[%a15]0, %d11
	.loc 1 496 0
	ld.w	%d15, [%a15]0
	insert	%d10, %d15, %d10, 9, 7
.LVL36:
	st.w	[%a15]0, %d10
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
.L22:
	.loc 1 508 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 3, .L22
	.loc 1 513 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 515 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L23:
	.loc 1 515 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 2, .L23
	.loc 1 520 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 522 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L24:
	.loc 1 522 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L24
	.loc 1 527 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-65)
	st.w	[%a15]0, %d15
.L7:
	ret
.LFE109:
	.size	osEE_tc_set_pll_fsource, .-osEE_tc_set_pll_fsource
	.align 1
	.global	osEE_tc_get_fsource
	.type	osEE_tc_get_fsource, @function
osEE_tc_get_fsource:
.LFB110:
	.loc 1 532 0
	.loc 1 536 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	.loc 1 563 0
	movh	%d2, 1526
	.loc 1 536 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 563 0
	addi	%d2, %d2, -7936
	.loc 1 536 0
	jz	%d15, .L41
.LBB38:
	.loc 1 541 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L42
	.loc 1 543 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 16, 7
.LVL37:
	j	.L46
.LVL38:
.L42:
	.loc 1 547 0
	ld.w	%d15, [%a15]0
.LBE38:
.LBB39:
.LBB40:
.LBB41:
	.loc 1 549 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
.LBE41:
.LBE40:
.LBE39:
.LBB44:
	.loc 1 547 0
	jz.t	%d15, 3, .L43
.LBE44:
.LBB45:
.LBB43:
.LBB42:
	.loc 1 549 0
	ld.w	%d2, [%a15]0
	and	%d2, %d2, 127
.L46:
.LVL39:
	.loc 1 550 0
	movh	%d15, 305
	addi	%d15, %d15, 11520
	.loc 1 549 0
	add	%d2, 1
.LVL40:
	.loc 1 550 0
	div.u	%e2, %d15, %d2
.LVL41:
	ret
.L43:
.LBE42:
.LBE43:
.LBE45:
.LBB46:
	.loc 1 553 0
	ld.w	%d15, [%a15]0
	.loc 1 554 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	.loc 1 553 0
	and	%d5, %d15, 127
.LVL42:
	.loc 1 554 0
	ld.w	%d15, [%a15]0
	.loc 1 555 0
	ld.w	%d2, [%a15]0
	.loc 1 554 0
	extr.u	%d3, %d15, 24, 4
.LVL43:
	.loc 1 553 0
	add	%d15, %d5, 1
	.loc 1 558 0
	madd	%d15, %d15, %d3, %d15
	.loc 1 555 0
	extr.u	%d4, %d2, 9, 7
.LVL44:
	.loc 1 558 0
	movh	%d2, 305
	addi	%d2, %d2, 11520
	div.u	%e2, %d2, %d15
	madd	%d2, %d2, %d4, %d2
.LVL45:
.L41:
.LBE46:
	.loc 1 566 0
	ret
.LFE110:
	.size	osEE_tc_get_fsource, .-osEE_tc_get_fsource
	.align 1
	.global	osEE_tc_stm_set_clockpersec
	.type	osEE_tc_stm_set_clockpersec, @function
osEE_tc_stm_set_clockpersec:
.LFB112:
	.loc 1 649 0
	.loc 1 655 0
	call	osEE_tc_get_fsource
.LVL46:
	.loc 1 657 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	add	%d2, 1
.LVL47:
	extr.u	%d15, %d15, 8, 4
	.loc 1 660 0
	movh.a	%a15, hi:osEE_tc_stm_freq_khz
	.loc 1 657 0
	div.u	%e2, %d2, %d15
.LVL48:
	.loc 1 660 0
	mov	%d15, 1000
	div.u	%e2, %d2, %d15
	st.w	[%a15] lo:osEE_tc_stm_freq_khz, %d2
	ret
.LFE112:
	.size	osEE_tc_stm_set_clockpersec, .-osEE_tc_stm_set_clockpersec
	.align 1
	.global	osEE_tc_stm_set_sr0
	.type	osEE_tc_stm_set_sr0, @function
osEE_tc_stm_set_sr0:
.LFB113:
	.loc 1 676 0
<<<<<<< Updated upstream
.LVL47:
	mov.aa	%a14, %SP
.LCFI4:
	mov	%d9, %d5
.LBB34:
.LBB35:
.LBB36:
	.file 2 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_hal.h"
	.loc 2 367 0
#APP
	# 367 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d8, LO:65052
=======
.LVL49:
	.loc 1 676 0
	mov	%d8, %d5
.LBB47:
.LBB48:
.LBB49:
	.file 2 "C:\\SHIPAR~1\\TC275\\erika\\inc/ee_hal.h"
	.loc 2 367 0
#APP
	# 367 "C:\SHIPAR~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d15, LO:65052
>>>>>>> Stashed changes
	# 0 "" 2
.LVL50:
#NO_APP
.LBE49:
.LBE48:
.LBE47:
	.loc 1 687 0
	call	osEE_tc_stm_us_ticks
.LVL51:
<<<<<<< Updated upstream
.LBB39:
.LBB40:
	.file 3 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_tc_system.h"
=======
	.loc 1 693 0
	and	%d4, %d15, 3
	extr	%d3, %d4, 0, 8
.LBB50:
.LBB51:
	.loc 2 140 0
	clz	%d5, %d2
.LVL52:
.LBE51:
.LBE50:
	.loc 1 693 0
	addih	%d15, %d3, 240
.LVL53:
	sh	%d15, %d15, 8
	mov.a	%a15, %d15
.LVL54:
.LBB52:
.LBB53:
	.file 3 "C:\\SHIPAR~1\\TC275\\erika\\inc/ee_tc_system.h"
>>>>>>> Stashed changes
	.loc 3 902 0
	ld.w	%d15, [%a15] 16
.LBE53:
.LBE52:
	.loc 1 694 0
	add	%d2, %d15
.LVL55:
	.loc 1 693 0
	st.w	[%a15] 48, %d2
	.loc 1 696 0
	jz	%d8, .L49
	.loc 1 697 0
	ld.w	%d15, [%a15] 56
	.loc 1 689 0
	rsub	%d5, %d5, 31
.LVL56:
	.loc 1 697 0
	insert	%d15, %d15, 0, 8, 5
	insert	%d8, %d8, 8, 7, 25
	st.w	[%a15] 56, %d15
	.loc 1 698 0
<<<<<<< Updated upstream
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
	.file 4 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_hal_internal.h"
=======
	ld.w	%d15, [%a15] 56
.LBB54:
.LBB55:
	.file 4 "C:\\SHIPAR~1\\TC275\\erika\\src\\ee_hal_internal.h"
>>>>>>> Stashed changes
	.loc 4 421 0
	sh	%d4, %d4, 11
.LBE55:
.LBE54:
	.loc 1 698 0
	insert	%d15, %d15, %d5, 0, 5
.LBB58:
.LBB56:
	.loc 4 422 0
	or	%d8, %d4
.LBE56:
.LBE58:
	.loc 1 698 0
	st.w	[%a15] 56, %d15
	.loc 1 700 0
	ld.w	%d15, [%a15] 60
	andn	%d15, %d15, ~(-5)
	st.w	[%a15] 60, %d15
	.loc 1 702 0
	ld.w	%d15, [%a15] 60
	or	%d15, %d15, 1
	st.w	[%a15] 60, %d15
.LVL57:
	.loc 1 707 0
	sh	%d15, %d3, 3
.LBB59:
.LBB57:
	.loc 4 421 0
	mov.a	%a2, %d15
	lea	%a15, [%a2] -31600
	addih.a	%a15, %a15, 61444
	j	.L51
.LVL58:
.L49:
.LBE57:
.LBE59:
	.loc 1 710 0
	ld.w	%d15, [%a15] 60
	.loc 1 711 0
	addi	%d3, %d3, 28818
	addih	%d3, %d3, 7680
	.loc 1 710 0
	andn	%d15, %d15, ~(-2)
	.loc 1 711 0
	sh	%d3, 3
	.loc 1 710 0
	st.w	[%a15] 60, %d15
	.loc 1 711 0
	mov.a	%a15, %d3
.LVL59:
.L51:
	st.w	[%a15]0, %d8
	ret
.LFE113:
	.size	osEE_tc_stm_set_sr0, .-osEE_tc_stm_set_sr0
	.align 1
	.global	osEE_tc_stm_set_sr0_next_match
	.type	osEE_tc_stm_set_sr0_next_match, @function
osEE_tc_stm_set_sr0_next_match:
.LFB114:
	.loc 1 716 0
.LVL60:
.LBB60:
.LBB61:
.LBB62:
	.loc 2 367 0
#APP
	# 367 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL61:
#NO_APP
.LBE62:
.LBE61:
.LBE60:
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
.LFE114:
	.size	osEE_tc_stm_set_sr0_next_match, .-osEE_tc_stm_set_sr0_next_match
	.align 1
	.global	osEE_tc_stm_set_sr1
	.type	osEE_tc_stm_set_sr1, @function
osEE_tc_stm_set_sr1:
.LFB115:
	.loc 1 735 0
.LVL64:
	.loc 1 735 0
	mov	%d8, %d5
.LBB63:
.LBB64:
.LBB65:
	.loc 2 367 0
#APP
<<<<<<< Updated upstream
	# 367 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d8, LO:65052
=======
	# 367 "C:\SHIPAR~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d15, LO:65052
>>>>>>> Stashed changes
	# 0 "" 2
.LVL65:
#NO_APP
.LBE65:
.LBE64:
.LBE63:
	.loc 1 747 0
	call	osEE_tc_stm_us_ticks
.LVL66:
	.loc 1 753 0
	and	%d3, %d15, 3
	extr	%d15, %d3, 0, 8
.LVL67:
.LBB66:
.LBB67:
	.loc 2 140 0
	clz	%d4, %d2
.LVL68:
.LBE67:
.LBE66:
	.loc 1 753 0
	addih	%d5, %d15, 240
	sh	%d5, %d5, 8
	mov.a	%a15, %d5
.LVL69:
.LBB68:
.LBB69:
	.loc 3 902 0
	ld.w	%d5, [%a15] 16
.LBE69:
.LBE68:
	.loc 1 754 0
	add	%d2, %d5
.LVL70:
	.loc 1 753 0
	st.w	[%a15] 52, %d2
	addi	%d2, %d15, 146
	.loc 1 756 0
	jz	%d8, .L54
	.loc 1 757 0
	ld.w	%d15, [%a15] 56
	.loc 1 749 0
	rsub	%d4, %d4, 31
.LVL71:
	.loc 1 757 0
	insert	%d15, %d15, 0, 24, 5
	insert	%d8, %d8, 8, 7, 25
	st.w	[%a15] 56, %d15
	.loc 1 758 0
	ld.w	%d15, [%a15] 56
.LBB70:
.LBB71:
	.loc 4 421 0
	sh	%d3, %d3, 11
.LBE71:
.LBE70:
	.loc 1 758 0
	insert	%d15, %d15, %d4, 16, 5
.LBB74:
.LBB72:
	.loc 4 422 0
	or	%d8, %d3
.LBE72:
.LBE74:
	.loc 1 758 0
	st.w	[%a15] 56, %d15
	.loc 1 760 0
	ld.w	%d15, [%a15] 60
	or	%d15, %d15, 64
	st.w	[%a15] 60, %d15
	.loc 1 762 0
	ld.w	%d15, [%a15] 60
	or	%d15, %d15, 16
	st.w	[%a15] 60, %d15
.LVL72:
	.loc 1 766 0
	sh	%d15, %d2, 3
.LBB75:
.LBB73:
	.loc 4 421 0
	mov.a	%a2, %d15
	lea	%a15, [%a2] -32764
	addih.a	%a15, %a15, 61444
	j	.L56
.LVL73:
.L54:
.LBE73:
.LBE75:
	.loc 1 769 0
	ld.w	%d15, [%a15] 60
	andn	%d15, %d15, ~(-17)
	st.w	[%a15] 60, %d15
	.loc 1 770 0
	sh	%d15, %d2, 3
	mov.a	%a2, %d15
	lea	%a15, [%a2] -32764
	addih.a	%a15, %a15, 61444
.LVL74:
.L56:
	st.w	[%a15]0, %d8
	ret
.LFE115:
	.size	osEE_tc_stm_set_sr1, .-osEE_tc_stm_set_sr1
	.align 1
	.global	osEE_tc_stm_set_sr1_next_match
	.type	osEE_tc_stm_set_sr1_next_match, @function
osEE_tc_stm_set_sr1_next_match:
.LFB116:
	.loc 1 775 0
.LVL75:
.LBB76:
.LBB77:
.LBB78:
	.loc 2 367 0
#APP
	# 367 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL76:
#NO_APP
.LBE78:
.LBE77:
.LBE76:
	.loc 1 787 0
	call	osEE_tc_stm_us_ticks
.LVL77:
	and	%d15, %d15, 3
.LVL78:
	addih	%d15, %d15, 240
	sh	%d15, %d15, 8
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 52
	add	%d2, %d15
	st.w	[%a15] 52, %d2
	ret
.LFE116:
	.size	osEE_tc_stm_set_sr1_next_match, .-osEE_tc_stm_set_sr1_next_match
	.align 1
	.global	osEE_tc_delay
	.type	osEE_tc_delay, @function
osEE_tc_delay:
.LFB117:
	.loc 1 791 0
.LVL79:
.LBB79:
.LBB80:
.LBB81:
	.loc 2 367 0
#APP
	# 367 "C:\Users\USER\Desktop\AUTODR~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL80:
#NO_APP
.LBE81:
.LBE80:
.LBE79:
.LBB82:
.LBB83:
	.loc 3 902 0
	and	%d15, %d15, 3
.LVL81:
	addih	%d15, %d15, 240
	sh	%d15, %d15, 8
	mov.a	%a15, %d15
	lea	%a12, [%a15] 16
	ld.w	%d8, [%a15] 16
.LBE83:
.LBE82:
	.loc 1 802 0
	call	osEE_tc_stm_us_ticks
.LVL82:
.L59:
.LBB84:
.LBB85:
	.loc 3 902 0 discriminator 1
	ld.w	%d15, [%a12]0
.LBE85:
.LBE84:
	.loc 1 804 0 discriminator 1
	sub	%d15, %d8
	jlt.u	%d15, %d2, .L59
	.loc 1 807 0
	ret
.LFE117:
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
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB116
	.uaword	.LFE116-.LFB116
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB117
	.uaword	.LFE117-.LFB117
	.align 2
.LEFDE16:
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
.section .debug_info,"",@progbits
.Ldebug_info0:
<<<<<<< Updated upstream
	.uaword	0x2163
=======
	.uaword	0x2181
>>>>>>> Stashed changes
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -Os -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_tc_system.c"
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
	.uaword	0x1a6
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
	.uaword	0x1e0
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
	.uaword	0x20e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x6
	.byte	0x50
	.uaword	0x1a6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint64_t"
	.byte	0x6
	.byte	0x78
	.uaword	0x172
	.uleb128 0x3
	.string	"OsEE_addr"
	.byte	0x7
	.byte	0x5a
	.uaword	0x266
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x7
	.byte	0x5b
	.uaword	0x224
	.uleb128 0x5
	.byte	0x1
	.byte	0x7
	.byte	0x6d
	.uaword	0x2cf
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
	.uaword	0x278
	.uleb128 0x3
	.string	"OsEE_prio"
	.byte	0x7
	.byte	0x8d
	.uaword	0x1d1
	.uleb128 0x3
	.string	"OsEE_isr_src_id"
	.byte	0x7
	.byte	0x92
	.uaword	0x1fe
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0x74
	.uaword	0x361
	.uleb128 0x8
	.string	"pcxo"
	.byte	0x8
	.byte	0x75
	.uaword	0x162
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"pcxs"
	.byte	0x8
	.byte	0x76
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"ul"
	.byte	0x8
	.byte	0x7b
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"pie"
	.byte	0x8
	.byte	0x7c
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"pcpn"
	.byte	0x8
	.byte	0x7d
	.uaword	0x162
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.byte	0x72
	.uaword	0x380
	.uleb128 0xa
	.string	"reg"
	.byte	0x8
	.byte	0x73
	.uaword	0x268
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x8
	.byte	0x82
	.uaword	0x30b
	.byte	0
	.uleb128 0x3
	.string	"OsEE_pcxi"
	.byte	0x8
	.byte	0x83
	.uaword	0x361
	.uleb128 0xc
	.string	"OsEE_CTX_tag"
	.byte	0x10
	.byte	0x8
	.byte	0xf3
	.uaword	0x3db
	.uleb128 0xd
	.string	"p_ctx"
	.byte	0x8
	.byte	0xf4
	.uaword	0x3db
	.byte	0
	.uleb128 0xd
	.string	"dummy"
	.byte	0x8
	.byte	0xf5
	.uaword	0x268
	.byte	0x4
	.uleb128 0xd
	.string	"pcxi"
	.byte	0x8
	.byte	0xf6
	.uaword	0x380
	.byte	0x8
	.uleb128 0xd
	.string	"ra"
	.byte	0x8
	.byte	0xf7
	.uaword	0x255
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x391
	.uleb128 0x3
	.string	"OsEE_CTX"
	.byte	0x8
	.byte	0xf8
	.uaword	0x391
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0xfb
	.uaword	0x408
	.uleb128 0xd
	.string	"p_tos"
	.byte	0x8
	.byte	0xfc
	.uaword	0x408
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x3e1
	.uleb128 0x3
	.string	"OsEE_SCB"
	.byte	0x8
	.byte	0xfd
	.uaword	0x3f1
	.uleb128 0xf
	.byte	0x8
	.byte	0x8
	.uahalf	0x100
	.uaword	0x44b
	.uleb128 0x10
	.string	"p_bos"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x408
	.byte	0
	.uleb128 0x10
	.string	"stack_size"
	.byte	0x8
	.uahalf	0x105
	.uaword	0x198
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"OsEE_SDB"
	.byte	0x8
	.uahalf	0x106
	.uaword	0x45c
	.uleb128 0x12
	.uaword	0x41e
	.uleb128 0xf
	.byte	0xc
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x49b
	.uleb128 0x10
	.string	"p_sdb"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x49b
	.byte	0
	.uleb128 0x10
	.string	"p_scb"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x4a1
	.byte	0x4
	.uleb128 0x10
	.string	"isr2_src"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x2f4
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x44b
	.uleb128 0xe
	.byte	0x4
	.uaword	0x40e
	.uleb128 0x11
	.string	"OsEE_HDB"
	.byte	0x8
	.uahalf	0x111
	.uaword	0x4b8
	.uleb128 0x12
	.uaword	0x461
	.uleb128 0x3
	.string	"OsEE_tc_isr_hw_prio"
	.byte	0x3
	.byte	0x66
	.uaword	0x1d1
	.uleb128 0x13
	.string	"OsEE_tc_STM_CMCON_bits_tag"
	.byte	0x4
	.byte	0x3
	.uahalf	0x330
	.uaword	0x54b
	.uleb128 0x14
	.string	"msize0"
	.byte	0x3
	.uahalf	0x333
	.uaword	0x162
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"mstart0"
	.byte	0x3
	.uahalf	0x337
	.uaword	0x162
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.string	"msize1"
	.byte	0x3
	.uahalf	0x33b
	.uaword	0x162
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.string	"mstart1"
	.byte	0x3
	.uahalf	0x33f
	.uaword	0x162
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_STM_CMCON_bits"
	.byte	0x3
	.uahalf	0x342
	.uaword	0x4d8
	.uleb128 0x15
	.string	"OsEE_tc_STM_CMCON_tag"
	.byte	0x4
	.byte	0x3
	.uahalf	0x345
	.uaword	0x5a2
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x346
	.uaword	0x268
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x347
	.uaword	0x54b
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_STM_CMCON"
	.byte	0x3
	.uahalf	0x348
	.uaword	0x56a
	.uleb128 0x13
	.string	"OsEE_tc_STM_ICR_bits_tag"
	.byte	0x4
	.byte	0x3
	.uahalf	0x356
	.uaword	0x651
	.uleb128 0x14
	.string	"cmp0en"
	.byte	0x3
	.uahalf	0x359
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"cmp0ir"
	.byte	0x3
	.uahalf	0x35b
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"cmp0os"
	.byte	0x3
	.uahalf	0x35d
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"cmp1en"
	.byte	0x3
	.uahalf	0x361
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"cmp1ir"
	.byte	0x3
	.uahalf	0x363
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"cmp1os"
	.byte	0x3
	.uahalf	0x365
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_STM_ICR_bits"
	.byte	0x3
	.uahalf	0x368
	.uaword	0x5bc
	.uleb128 0x15
	.string	"OsEE_tc_STM_ICR_tag"
	.byte	0x4
	.byte	0x3
	.uahalf	0x36b
	.uaword	0x6a4
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x36c
	.uaword	0x268
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x36d
	.uaword	0x651
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_STM_ICR"
	.byte	0x3
	.uahalf	0x36e
	.uaword	0x66e
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uahalf	0x493
	.uaword	0x738
	.uleb128 0x14
	.string	"vcobyst"
	.byte	0x3
	.uahalf	0x496
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"vcolock"
	.byte	0x3
	.uahalf	0x49a
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"findis"
	.byte	0x3
	.uahalf	0x49c
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"k1rdy"
	.byte	0x3
	.uahalf	0x49e
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"k2rdy"
	.byte	0x3
	.uahalf	0x4a0
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"modrun"
	.byte	0x3
	.uahalf	0x4a4
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_PLLSTAT_bits"
	.byte	0x3
	.uahalf	0x4a7
	.uaword	0x6bc
	.uleb128 0x18
	.byte	0x4
	.byte	0x3
	.uahalf	0x4aa
	.uaword	0x77b
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x4ab
	.uaword	0x268
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x4ac
	.uaword	0x738
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_PLLSTAT"
	.byte	0x3
	.uahalf	0x4ad
	.uaword	0x759
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uahalf	0x4b6
	.uaword	0x862
	.uleb128 0x14
	.string	"vcobyp"
	.byte	0x3
	.uahalf	0x4b9
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"vcopwd"
	.byte	0x3
	.uahalf	0x4bb
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x14
	.string	"moden"
	.byte	0x3
	.uahalf	0x4bd
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.string	"setfindis"
	.byte	0x3
	.uahalf	0x4c1
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.string	"clrfindis"
	.byte	0x3
	.uahalf	0x4c3
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.string	"oscdisdis"
	.byte	0x3
	.uahalf	0x4c5
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"ndiv"
	.byte	0x3
	.uahalf	0x4c9
	.uaword	0x162
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"pllpwd"
	.byte	0x3
	.uahalf	0x4cb
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.string	"resld"
	.byte	0x3
	.uahalf	0x4cf
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.string	"pdiv"
	.byte	0x3
	.uahalf	0x4d3
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_PLLCON0_bits"
	.byte	0x3
	.uahalf	0x4d6
	.uaword	0x797
	.uleb128 0x18
	.byte	0x4
	.byte	0x3
	.uahalf	0x4d9
	.uaword	0x8a5
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x4da
	.uaword	0x268
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x4db
	.uaword	0x862
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_PLLCON0"
	.byte	0x3
	.uahalf	0x4dc
	.uaword	0x883
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uahalf	0x4e5
	.uaword	0x901
	.uleb128 0x14
	.string	"k2div"
	.byte	0x3
	.uahalf	0x4e8
	.uaword	0x162
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.string	"k3div"
	.byte	0x3
	.uahalf	0x4ec
	.uaword	0x162
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.string	"k1div"
	.byte	0x3
	.uahalf	0x4f0
	.uaword	0x162
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_PLLCON1_bits"
	.byte	0x3
	.uahalf	0x4f3
	.uaword	0x8c1
	.uleb128 0x18
	.byte	0x4
	.byte	0x3
	.uahalf	0x4f6
	.uaword	0x944
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x4f7
	.uaword	0x268
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x4f8
	.uaword	0x901
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_PLLCON1"
	.byte	0x3
	.uahalf	0x4f9
	.uaword	0x922
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uahalf	0x502
	.uaword	0xa3b
	.uleb128 0x14
	.string	"baud1div"
	.byte	0x3
	.uahalf	0x505
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"baud2div"
	.byte	0x3
	.uahalf	0x507
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"sridiv"
	.byte	0x3
	.uahalf	0x509
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"lpdiv"
	.byte	0x3
	.uahalf	0x50b
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"spbdiv"
	.byte	0x3
	.uahalf	0x50d
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"fsi2div"
	.byte	0x3
	.uahalf	0x50f
	.uaword	0x162
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x14
	.string	"fsidiv"
	.byte	0x3
	.uahalf	0x513
	.uaword	0x162
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.string	"adcclksel"
	.byte	0x3
	.uahalf	0x515
	.uaword	0x162
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"clksel"
	.byte	0x3
	.uahalf	0x517
	.uaword	0x162
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"up"
	.byte	0x3
	.uahalf	0x519
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"lck"
	.byte	0x3
	.uahalf	0x51b
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_CCUCON0_bits"
	.byte	0x3
	.uahalf	0x51c
	.uaword	0x960
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uahalf	0x543
	.uaword	0xb25
	.uleb128 0x14
	.string	"candiv"
	.byte	0x3
	.uahalf	0x546
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.string	"eraydiv"
	.byte	0x3
	.uahalf	0x548
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.string	"stmdiv"
	.byte	0x3
	.uahalf	0x54a
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.string	"gtmdiv"
	.byte	0x3
	.uahalf	0x54c
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.string	"ethdiv"
	.byte	0x3
	.uahalf	0x54e
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.string	"asclinfdiv"
	.byte	0x3
	.uahalf	0x550
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.string	"asclinsdiv"
	.byte	0x3
	.uahalf	0x552
	.uaword	0x162
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.string	"insel"
	.byte	0x3
	.uahalf	0x554
	.uaword	0x162
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"up"
	.byte	0x3
	.uahalf	0x556
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.string	"lck"
	.byte	0x3
	.uahalf	0x558
	.uaword	0x162
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_CCUCON1_bits"
	.byte	0x3
	.uahalf	0x559
	.uaword	0xa5c
	.uleb128 0x18
	.byte	0x4
	.byte	0x3
	.uahalf	0x6b4
	.uaword	0xb68
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x6b5
	.uaword	0x268
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x6b6
	.uaword	0xa3b
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_CCUCON0"
	.byte	0x3
	.uahalf	0x6b7
	.uaword	0xb46
	.uleb128 0x18
	.byte	0x4
	.byte	0x3
	.uahalf	0x6c0
	.uaword	0xba6
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.uahalf	0x6c1
	.uaword	0x268
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x6c2
	.uaword	0xb25
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_CCUCON1"
	.byte	0x3
	.uahalf	0x6c3
	.uaword	0xb84
	.uleb128 0x3
	.string	"AppModeType"
	.byte	0x9
	.byte	0x60
	.uaword	0x1d1
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x9
	.byte	0x78
	.uaword	0x268
	.uleb128 0x3
	.string	"TaskPrio"
	.byte	0x9
	.byte	0xc8
	.uaword	0x2e3
	.uleb128 0x3
	.string	"TaskActivation"
	.byte	0x9
	.byte	0xf4
	.uaword	0x1d1
	.uleb128 0x11
	.string	"CoreIdType"
	.byte	0x9
	.uahalf	0x103
	.uaword	0x2cf
	.uleb128 0x11
	.string	"TaskFunc"
	.byte	0x9
	.uahalf	0x13a
	.uaword	0xc2f
	.uleb128 0xe
	.byte	0x4
	.uaword	0xc35
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x9
	.uahalf	0x145
	.uaword	0xc9e
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
	.uaword	0xc37
	.uleb128 0x11
	.string	"TaskExecutionType"
	.byte	0x9
	.uahalf	0x157
	.uaword	0xc9e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x9
	.uahalf	0x15d
	.uaword	0xd57
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
	.uaword	0xccf
	.uleb128 0x11
	.string	"TaskStateType"
	.byte	0x9
	.uahalf	0x17e
	.uaword	0xd57
	.uleb128 0x11
	.string	"TickType"
	.byte	0x9
	.uahalf	0x19e
	.uaword	0x268
	.uleb128 0xf
	.byte	0x8
	.byte	0x9
	.uahalf	0x1b7
	.uaword	0xdd0
	.uleb128 0x10
	.string	"maxallowedvalue"
	.byte	0x9
	.uahalf	0x1b9
	.uaword	0xd86
	.byte	0
	.uleb128 0x10
	.string	"ticksperbase"
	.byte	0x9
	.uahalf	0x1bc
	.uaword	0xd86
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"AlarmBaseType"
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0xd97
	.uleb128 0x11
	.string	"EventMaskType"
	.byte	0x9
	.uahalf	0x237
	.uaword	0x268
	.uleb128 0x11
	.string	"MemSize"
	.byte	0x9
	.uahalf	0x2a3
	.uaword	0x198
	.uleb128 0x1a
	.byte	0x1
	.byte	0x9
	.uahalf	0x2b1
	.uaword	0x102f
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
	.uaword	0xe0c
	.uleb128 0x11
	.string	"StatusType"
	.byte	0x9
	.uahalf	0x2d9
	.uaword	0x102f
	.uleb128 0xc
	.string	"OsEE_SN_tag"
	.byte	0x8
	.byte	0xa
	.byte	0x4b
	.uaword	0x108a
	.uleb128 0x1b
	.uaword	.LASF1
	.byte	0xa
	.byte	0x4d
	.uaword	0x108a
	.byte	0
	.uleb128 0xd
	.string	"p_tdb"
	.byte	0xa
	.byte	0x4f
	.uaword	0x1139
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x105b
	.uleb128 0x13
	.string	"OsEE_TDB_tag"
	.byte	0x20
	.byte	0xb
	.uahalf	0x108
	.uaword	0x1139
	.uleb128 0x10
	.string	"hdb"
	.byte	0xb
	.uahalf	0x10b
	.uaword	0x4a7
	.byte	0
	.uleb128 0x10
	.string	"p_tcb"
	.byte	0xb
	.uahalf	0x10e
	.uaword	0x134e
	.byte	0xc
	.uleb128 0x10
	.string	"tid"
	.byte	0xb
	.uahalf	0x110
	.uaword	0xbd5
	.byte	0x10
	.uleb128 0x10
	.string	"task_type"
	.byte	0xb
	.uahalf	0x112
	.uaword	0xcb5
	.byte	0x14
	.uleb128 0x10
	.string	"task_func"
	.byte	0xb
	.uahalf	0x114
	.uaword	0xc1e
	.byte	0x18
	.uleb128 0x10
	.string	"ready_prio"
	.byte	0xb
	.uahalf	0x117
	.uaword	0xbe5
	.byte	0x1c
	.uleb128 0x10
	.string	"dispatch_prio"
	.byte	0xb
	.uahalf	0x11a
	.uaword	0xbe5
	.byte	0x1d
	.uleb128 0x10
	.string	"max_num_of_act"
	.byte	0xb
	.uahalf	0x11c
	.uaword	0xbf5
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x113f
	.uleb128 0x12
	.uaword	0x1090
	.uleb128 0x3
	.string	"OsEE_SN"
	.byte	0xa
	.byte	0x50
	.uaword	0x105b
	.uleb128 0x3
	.string	"OsEE_RQ"
	.byte	0xa
	.byte	0xd5
	.uaword	0x1162
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1144
	.uleb128 0x3
	.string	"OsEE_kernel_cb"
	.byte	0xb
	.byte	0x51
	.uaword	0xc2f
	.uleb128 0x3
	.string	"OsEE_byte"
	.byte	0xb
	.byte	0x53
	.uaword	0x1d1
	.uleb128 0x5
	.byte	0x1
	.byte	0xb
	.byte	0x73
	.uaword	0x11f6
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
	.uaword	0x118f
	.uleb128 0x7
	.byte	0xc
	.byte	0xb
	.byte	0x90
	.uaword	0x1247
	.uleb128 0x1b
	.uaword	.LASF1
	.byte	0xb
	.byte	0x94
	.uaword	0x1277
	.byte	0
	.uleb128 0xd
	.string	"prev_prio"
	.byte	0xb
	.byte	0x97
	.uaword	0xbe5
	.byte	0x4
	.uleb128 0xd
	.string	"p_owner"
	.byte	0xb
	.byte	0x9a
	.uaword	0x1139
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"OsEE_MDB_tag"
	.byte	0x8
	.byte	0xb
	.byte	0xb5
	.uaword	0x1277
	.uleb128 0xd
	.string	"p_cb"
	.byte	0xb
	.byte	0xb7
	.uaword	0x1292
	.byte	0
	.uleb128 0xd
	.string	"prio"
	.byte	0xb
	.byte	0xc3
	.uaword	0xbe5
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x127d
	.uleb128 0x12
	.uaword	0x1247
	.uleb128 0x3
	.string	"OsEE_MCB"
	.byte	0xb
	.byte	0x9b
	.uaword	0x1210
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1282
	.uleb128 0x3
	.string	"OsEE_MDB"
	.byte	0xb
	.byte	0xce
	.uaword	0x127d
	.uleb128 0x7
	.byte	0x14
	.byte	0xb
	.byte	0xe0
	.uaword	0x1337
	.uleb128 0xd
	.string	"current_num_of_act"
	.byte	0xb
	.byte	0xe4
	.uaword	0xbf5
	.byte	0
	.uleb128 0xd
	.string	"current_prio"
	.byte	0xb
	.byte	0xea
	.uaword	0xbe5
	.byte	0x1
	.uleb128 0xd
	.string	"status"
	.byte	0xb
	.byte	0xec
	.uaword	0xd70
	.byte	0x2
	.uleb128 0xd
	.string	"p_last_m"
	.byte	0xb
	.byte	0xef
	.uaword	0x1337
	.byte	0x4
	.uleb128 0xd
	.string	"wait_mask"
	.byte	0xb
	.byte	0xf3
	.uaword	0xde6
	.byte	0x8
	.uleb128 0xd
	.string	"event_mask"
	.byte	0xb
	.byte	0xf5
	.uaword	0xde6
	.byte	0xc
	.uleb128 0xd
	.string	"p_own_sn"
	.byte	0xb
	.byte	0xfb
	.uaword	0x1162
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1298
	.uleb128 0x11
	.string	"OsEE_TCB"
	.byte	0xb
	.uahalf	0x101
	.uaword	0x12a8
	.uleb128 0xe
	.byte	0x4
	.uaword	0x133d
	.uleb128 0x11
	.string	"OsEE_TDB"
	.byte	0xb
	.uahalf	0x122
	.uaword	0x113f
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1354
	.uleb128 0x11
	.string	"OsEE_TriggerQ"
	.byte	0xb
	.uahalf	0x151
	.uaword	0x1381
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1387
	.uleb128 0x12
	.uaword	0x138c
	.uleb128 0x13
	.string	"OsEE_TriggerDB_tag"
	.byte	0x1c
	.byte	0xb
	.uahalf	0x269
	.uaword	0x13dc
	.uleb128 0x10
	.string	"p_trigger_cb"
	.byte	0xb
	.uahalf	0x26b
	.uaword	0x1680
	.byte	0
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x26d
	.uaword	0x1529
	.byte	0x4
	.uleb128 0x10
	.string	"action"
	.byte	0xb
	.uahalf	0x27b
	.uaword	0x1570
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0xb
	.uahalf	0x155
	.uaword	0x140c
	.uleb128 0x10
	.string	"trigger_queue"
	.byte	0xb
	.uahalf	0x157
	.uaword	0x136b
	.byte	0
	.uleb128 0x10
	.string	"value"
	.byte	0xb
	.uahalf	0x159
	.uaword	0xd86
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"OsEE_CounterCB"
	.byte	0xb
	.uahalf	0x15e
	.uaword	0x13dc
	.uleb128 0xf
	.byte	0xc
	.byte	0xb
	.uahalf	0x16f
	.uaword	0x1451
	.uleb128 0x10
	.string	"p_counter_cb"
	.byte	0xb
	.uahalf	0x171
	.uaword	0x1451
	.byte	0
	.uleb128 0x10
	.string	"info"
	.byte	0xb
	.uahalf	0x177
	.uaword	0xdd0
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x140c
	.uleb128 0x11
	.string	"OsEE_CounterDB"
	.byte	0xb
	.uahalf	0x17c
	.uaword	0x146e
	.uleb128 0x12
	.uaword	0x1423
	.uleb128 0x1a
	.byte	0x1
	.byte	0xb
	.uahalf	0x17f
	.uaword	0x14d1
	.uleb128 0x6
	.string	"OSEE_ACTION_TASK"
	.sleb128 0
	.uleb128 0x6
	.string	"OSEE_ACTION_EVENT"
	.sleb128 1
	.uleb128 0x6
	.string	"OSEE_ACTION_COUNTER"
	.sleb128 2
	.uleb128 0x6
	.string	"OSEE_ACTION_CALLBACK"
	.sleb128 3
	.byte	0
	.uleb128 0x11
	.string	"OsEE_action_type"
	.byte	0xb
	.uahalf	0x184
	.uaword	0x1473
	.uleb128 0xf
	.byte	0x10
	.byte	0xb
	.uahalf	0x189
	.uaword	0x1529
	.uleb128 0x10
	.string	"f"
	.byte	0xb
	.uahalf	0x18b
	.uaword	0x1168
	.byte	0
	.uleb128 0x10
	.string	"p_tdb"
	.byte	0xb
	.uahalf	0x18d
	.uaword	0x1365
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x18f
	.uaword	0x1529
	.byte	0x8
	.uleb128 0x10
	.string	"mask"
	.byte	0xb
	.uahalf	0x192
	.uaword	0xde6
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1457
	.uleb128 0x11
	.string	"OsEE_action_param"
	.byte	0xb
	.uahalf	0x194
	.uaword	0x14ea
	.uleb128 0xf
	.byte	0x14
	.byte	0xb
	.uahalf	0x198
	.uaword	0x1570
	.uleb128 0x10
	.string	"param"
	.byte	0xb
	.uahalf	0x19a
	.uaword	0x152f
	.byte	0
	.uleb128 0x10
	.string	"type"
	.byte	0xb
	.uahalf	0x19c
	.uaword	0x14d1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.string	"OsEE_action"
	.byte	0xb
	.uahalf	0x19d
	.uaword	0x1584
	.uleb128 0x12
	.uaword	0x1549
	.uleb128 0x1a
	.byte	0x1
	.byte	0xb
	.uahalf	0x22b
	.uaword	0x1609
	.uleb128 0x6
	.string	"OSEE_TRIGGER_INACTIVE"
	.sleb128 0
	.uleb128 0x6
	.string	"OSEE_TRIGGER_CANCELED"
	.sleb128 1
	.uleb128 0x6
	.string	"OSEE_TRIGGER_ACTIVE"
	.sleb128 2
	.uleb128 0x6
	.string	"OSEE_TRIGGER_EXPIRED"
	.sleb128 3
	.uleb128 0x6
	.string	"OSEE_TRIGGER_REENABLED"
	.sleb128 4
	.byte	0
	.uleb128 0x11
	.string	"OsEE_trigger_status"
	.byte	0xb
	.uahalf	0x231
	.uaword	0x1589
	.uleb128 0xf
	.byte	0x10
	.byte	0xb
	.uahalf	0x242
	.uaword	0x1669
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x244
	.uaword	0x1381
	.byte	0
	.uleb128 0x10
	.string	"when"
	.byte	0xb
	.uahalf	0x247
	.uaword	0xd86
	.byte	0x4
	.uleb128 0x10
	.string	"status"
	.byte	0xb
	.uahalf	0x249
	.uaword	0x1609
	.byte	0x8
	.uleb128 0x10
	.string	"cycle"
	.byte	0xb
	.uahalf	0x24d
	.uaword	0xd86
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"OsEE_TriggerCB"
	.byte	0xb
	.uahalf	0x25e
	.uaword	0x1625
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1669
	.uleb128 0xf
	.byte	0x20
	.byte	0xb
	.uahalf	0x2d9
	.uaword	0x178b
	.uleb128 0x10
	.string	"p_curr"
	.byte	0xb
	.uahalf	0x2dc
	.uaword	0x1365
	.byte	0
	.uleb128 0x10
	.string	"rq"
	.byte	0xb
	.uahalf	0x2ee
	.uaword	0x1153
	.byte	0x4
	.uleb128 0x10
	.string	"p_free_sn"
	.byte	0xb
	.uahalf	0x2f0
	.uaword	0x1162
	.byte	0x8
	.uleb128 0x10
	.string	"p_stk_sn"
	.byte	0xb
	.uahalf	0x2ff
	.uaword	0x1162
	.byte	0xc
	.uleb128 0x10
	.string	"os_status"
	.byte	0xb
	.uahalf	0x301
	.uaword	0x178b
	.byte	0x10
	.uleb128 0x10
	.string	"app_mode"
	.byte	0xb
	.uahalf	0x305
	.uaword	0xbc2
	.byte	0x11
	.uleb128 0x10
	.string	"last_error"
	.byte	0xb
	.uahalf	0x307
	.uaword	0x1048
	.byte	0x12
	.uleb128 0x10
	.string	"prev_s_isr_all_status"
	.byte	0xb
	.uahalf	0x327
	.uaword	0x268
	.byte	0x14
	.uleb128 0x10
	.string	"prev_s_isr_os_status"
	.byte	0xb
	.uahalf	0x329
	.uaword	0x268
	.byte	0x18
	.uleb128 0x10
	.string	"s_isr_all_cnt"
	.byte	0xb
	.uahalf	0x32b
	.uaword	0x117e
	.byte	0x1c
	.uleb128 0x10
	.string	"s_isr_os_cnt"
	.byte	0xb
	.uahalf	0x32d
	.uaword	0x117e
	.byte	0x1d
	.uleb128 0x10
	.string	"d_isr_all_cnt"
	.byte	0xb
	.uahalf	0x330
	.uaword	0x117e
	.byte	0x1e
	.byte	0
	.uleb128 0x1d
	.uaword	0x11f6
	.uleb128 0x11
	.string	"OsEE_CCB"
	.byte	0xb
	.uahalf	0x33a
	.uaword	0x1686
	.uleb128 0xf
	.byte	0x8
	.byte	0xb
	.uahalf	0x344
	.uaword	0x17cf
	.uleb128 0x10
	.string	"p_ccb"
	.byte	0xb
	.uahalf	0x34a
	.uaword	0x17cf
	.byte	0
	.uleb128 0x10
	.string	"p_idle_task"
	.byte	0xb
	.uahalf	0x354
	.uaword	0x1365
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1790
	.uleb128 0x11
	.string	"OsEE_CDB"
	.byte	0xb
	.uahalf	0x36a
	.uaword	0x17e6
	.uleb128 0x12
	.uaword	0x17a1
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.uahalf	0x36f
	.uaword	0x1804
	.uleb128 0x10
	.string	"dummy"
	.byte	0xb
	.uahalf	0x3b1
	.uaword	0x268
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_KCB"
	.byte	0xb
	.uahalf	0x3b3
	.uaword	0x17eb
	.uleb128 0xf
	.byte	0x24
	.byte	0xb
	.uahalf	0x3c3
	.uaword	0x18fe
	.uleb128 0x10
	.string	"p_kcb"
	.byte	0xb
	.uahalf	0x3c5
	.uaword	0x18fe
	.byte	0
	.uleb128 0x10
	.string	"p_tdb_ptr_array"
	.byte	0xb
	.uahalf	0x3d1
	.uaword	0x190f
	.byte	0x4
	.uleb128 0x10
	.string	"tdb_array_size"
	.byte	0xb
	.uahalf	0x3d4
	.uaword	0xdfc
	.byte	0x8
	.uleb128 0x10
	.string	"p_res_ptr_array"
	.byte	0xb
	.uahalf	0x3e0
	.uaword	0x1920
	.byte	0xc
	.uleb128 0x10
	.string	"res_array_size"
	.byte	0xb
	.uahalf	0x3e2
	.uaword	0xdfc
	.byte	0x10
	.uleb128 0x10
	.string	"p_counter_ptr_array"
	.byte	0xb
	.uahalf	0x3e6
	.uaword	0x1937
	.byte	0x14
	.uleb128 0x10
	.string	"counter_array_size"
	.byte	0xb
	.uahalf	0x3e8
	.uaword	0xdfc
	.byte	0x18
	.uleb128 0x10
	.string	"p_alarm_ptr_array"
	.byte	0xb
	.uahalf	0x3eb
	.uaword	0x1948
	.byte	0x1c
	.uleb128 0x10
	.string	"alarm_array_size"
	.byte	0xb
	.uahalf	0x3ed
	.uaword	0xdfc
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1804
	.uleb128 0x1e
	.uaword	0x1139
	.uaword	0x190f
	.uleb128 0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1904
	.uleb128 0x1e
	.uaword	0x1277
	.uaword	0x1920
	.uleb128 0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1915
	.uleb128 0x1e
	.uaword	0x1931
	.uaword	0x1931
	.uleb128 0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x146e
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1926
	.uleb128 0x1e
	.uaword	0x1381
	.uaword	0x1948
	.uleb128 0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x193d
	.uleb128 0x11
	.string	"OsEE_KDB"
	.byte	0xb
	.uahalf	0x3fc
	.uaword	0x195f
	.uleb128 0x12
	.uaword	0x1815
	.uleb128 0x20
	.byte	0x1
	.string	"osEE_tc_get_fsource"
	.byte	0x1
	.uahalf	0x214
	.byte	0x1
	.uaword	0x255
	.byte	0x1
	.uaword	0x19b1
	.uleb128 0x21
	.string	"fsource"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x255
	.uleb128 0x22
	.uleb128 0x21
	.string	"k1"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x255
	.uleb128 0x21
	.string	"k2"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x255
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x255
	.uleb128 0x21
	.string	"n"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x255
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"osEE_get_curr_core_id"
	.byte	0x2
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x2cf
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x1997
	.uleb128 0x21
=======
	.uaword	0x19e4
>>>>>>> Stashed changes
	.uleb128 0x22
	.uleb128 0x21
	.string	"reg"
	.byte	0x2
	.uahalf	0x16f
	.uaword	0x268
	.byte	0
	.byte	0
	.uleb128 0x24
	.string	"osEE_tc_clz"
	.byte	0x2
	.byte	0x8b
	.byte	0x1
	.uaword	0x268
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x19bc
	.uleb128 0x24
=======
	.uaword	0x1a09
	.uleb128 0x25
>>>>>>> Stashed changes
	.string	"reg"
	.byte	0x2
	.byte	0x8b
	.uaword	0x268
	.byte	0
	.uleb128 0x23
	.string	"osEE_tc_stm_get_time_lower_word"
	.byte	0x3
	.uahalf	0x384
	.byte	0x1
	.uaword	0x268
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x19f7
	.uleb128 0x25
=======
	.uaword	0x1a44
	.uleb128 0x26
>>>>>>> Stashed changes
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x384
	.uaword	0x268
	.byte	0
	.uleb128 0x27
	.string	"osEE_tc_conf_src"
	.byte	0x4
	.uahalf	0x19e
	.byte	0x1
	.byte	0x3
<<<<<<< Updated upstream
	.uaword	0x1a3f
	.uleb128 0x27
	.string	"tos"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0xc0b
	.uleb128 0x27
	.string	"src_offset"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x268
	.uleb128 0x27
=======
	.uaword	0x1a8c
	.uleb128 0x28
	.string	"tos"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0xbf8
	.uleb128 0x28
	.string	"src_offset"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x255
	.uleb128 0x28
>>>>>>> Stashed changes
	.string	"prio"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x2e3
	.byte	0
	.uleb128 0x29
	.string	"osEE_tc_stm_us_ticks"
	.byte	0x1
	.uahalf	0x27b
	.byte	0x1
	.uaword	0x268
	.uaword	.LFB111
	.uaword	.LFE111
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x1a8f
	.uleb128 0x29
=======
	.uaword	0x1adc
	.uleb128 0x2a
>>>>>>> Stashed changes
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x27b
	.uaword	0x268
	.uaword	.LLST0
	.uleb128 0x2b
	.string	"ticks"
	.byte	0x1
	.uahalf	0x27c
	.uaword	0x268
	.uaword	.LLST1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"osEE_tc_set_pll_fsource"
	.byte	0x1
	.uahalf	0x18d
	.byte	0x1
	.uaword	.LFB109
	.uaword	.LFE109
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x1bb8
	.uleb128 0x2c
=======
	.uaword	0x1c05
	.uleb128 0x2d
>>>>>>> Stashed changes
	.string	"fpll"
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x268
	.uaword	.LLST2
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x268
	.uaword	.LLST3
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x268
	.uaword	.LLST4
	.uleb128 0x2b
	.string	"k2"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x268
	.uaword	.LLST5
	.uleb128 0x2b
	.string	"k2Steps"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x268
	.uaword	.LLST6
	.uleb128 0x2b
	.string	"bestK2"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x268
	.uaword	.LLST7
	.uleb128 0x2b
	.string	"bestN"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x268
	.uaword	.LLST8
	.uleb128 0x2b
	.string	"bestP"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x268
	.uaword	.LLST9
	.uleb128 0x2b
	.string	"fRef"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x245
	.uaword	.LLST10
	.uleb128 0x2b
	.string	"fVco"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x245
	.uaword	.LLST11
	.uleb128 0x2b
	.string	"fPllLeastError"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x245
	.uaword	.LLST12
	.uleb128 0x2b
	.string	"fPllError"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x245
	.uaword	.LLST13
	.uleb128 0x2b
	.string	"fpll_maxerrorallowed"
	.byte	0x1
	.uahalf	0x196
	.uaword	0x268
	.uaword	.LLST14
	.byte	0
<<<<<<< Updated upstream
	.uleb128 0x2d
	.byte	0x1
	.string	"osEE_tc_get_fsource"
	.byte	0x1
	.uahalf	0x214
	.byte	0x1
	.uaword	0x268
=======
	.uleb128 0x2e
	.uaword	0x1951
>>>>>>> Stashed changes
	.uaword	.LFB110
	.uaword	.LFE110
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x1c3e
	.uleb128 0x2a
	.string	"fsource"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x268
	.uaword	.LLST15
	.uleb128 0x2e
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x2a
	.string	"k1"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x268
	.uaword	.LLST16
	.uleb128 0x2a
	.string	"k2"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x268
	.uaword	.LLST17
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x268
	.uaword	.LLST18
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x268
=======
	.uaword	0x1c78
	.uleb128 0x2f
	.uaword	0x1974
	.byte	0x1
	.byte	0x52
	.uleb128 0x30
	.uaword	.Ldebug_ranges0+0
	.uaword	0x1c4e
	.uleb128 0x31
	.uaword	0x1985
	.uaword	.LLST15
	.uleb128 0x31
	.uaword	0x1990
	.uaword	.LLST16
	.uleb128 0x31
	.uaword	0x199b
	.uaword	.LLST17
	.uleb128 0x31
	.uaword	0x19a5
	.uaword	.LLST18
	.byte	0
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x33
	.uaword	0x1974
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x33
	.uaword	0x1985
	.uleb128 0x31
	.uaword	0x1990
>>>>>>> Stashed changes
	.uaword	.LLST19
	.uleb128 0x33
	.uaword	0x199b
	.uleb128 0x33
	.uaword	0x19a5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"osEE_tc_stm_set_clockpersec"
	.byte	0x1
	.uahalf	0x288
	.byte	0x1
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x1c9e
	.uleb128 0x2a
	.string	"fsource"
	.byte	0x1
	.uahalf	0x28f
	.uaword	0x1c9e
=======
	.uaword	0x1cd4
	.uleb128 0x2b
	.string	"fsource"
	.byte	0x1
	.uahalf	0x28f
	.uaword	0x1cd4
>>>>>>> Stashed changes
	.uaword	.LLST20
	.uleb128 0x21
	.string	"fstm"
	.byte	0x1
	.uahalf	0x291
<<<<<<< Updated upstream
	.uaword	0x1c9e
	.uaword	.LLST21
	.uleb128 0x2f
	.uaword	.LVL43
	.uaword	0x1bb8
	.byte	0
	.uleb128 0x12
	.uaword	0x268
	.uleb128 0x2b
=======
	.uaword	0x1cd4
	.uleb128 0x34
	.uaword	.LVL46
	.uaword	0x1951
	.byte	0
	.uleb128 0x12
	.uaword	0x255
	.uleb128 0x2c
>>>>>>> Stashed changes
	.byte	0x1
	.string	"osEE_tc_stm_set_sr0"
	.byte	0x1
	.uahalf	0x2a2
	.byte	0x1
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x1dd1
	.uleb128 0x29
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2a2
	.uaword	0x268
	.uaword	.LLST22
	.uleb128 0x2c
	.string	"intvec"
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0x4bd
	.uaword	.LLST23
	.uleb128 0x30
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2a5
	.uaword	0x268
	.uaword	.LLST24
	.uleb128 0x30
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0x1d1
	.uaword	.LLST25
	.uleb128 0x31
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0x1dd1
	.uleb128 0x30
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2ac
	.uaword	0x1c9e
	.uaword	.LLST26
	.uleb128 0x32
	.uaword	0x1964
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0x1d53
	.uleb128 0x2e
	.uaword	.LBB36
	.uaword	.LBE36
	.uleb128 0x33
	.uaword	0x1989
	.uaword	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1997
	.uaword	.LBB37
	.uaword	.LBE37
	.byte	0x1
	.uahalf	0x2b1
	.uaword	0x1d71
	.uleb128 0x34
	.uaword	0x19b0
	.uaword	.LLST24
	.byte	0
	.uleb128 0x32
	.uaword	0x19bc
	.uaword	.LBB39
	.uaword	.LBE39
	.byte	0x1
	.uahalf	0x2b6
	.uaword	0x1d8f
	.uleb128 0x34
	.uaword	0x19ea
	.uaword	.LLST29
	.byte	0
	.uleb128 0x32
	.uaword	0x19f7
	.uaword	.LBB41
	.uaword	.LBE41
	.byte	0x1
	.uahalf	0x2c3
	.uaword	0x1dbf
	.uleb128 0x34
	.uaword	0x1a31
	.uaword	.LLST30
	.uleb128 0x34
	.uaword	0x1a1e
	.uaword	.LLST31
	.uleb128 0x34
	.uaword	0x1a12
	.uaword	.LLST32
	.byte	0
	.uleb128 0x35
	.uaword	.LVL49
	.uaword	0x1a3f
	.uleb128 0x36
=======
	.uaword	0x1dfb
	.uleb128 0x2a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2a2
	.uaword	0x255
	.uaword	.LLST21
	.uleb128 0x2d
	.string	"intvec"
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0x4aa
	.uaword	.LLST22
	.uleb128 0x35
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2a5
	.uaword	0x255
	.uaword	.LLST23
	.uleb128 0x35
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0x1be
	.uaword	.LLST24
	.uleb128 0x36
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0x1dfb
	.uleb128 0x35
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2ac
	.uaword	0x1cd4
	.uaword	.LLST25
	.uleb128 0x37
	.uaword	0x19b1
	.uaword	.LBB47
	.uaword	.LBE47
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0x1d89
	.uleb128 0x38
	.uaword	.LBB49
	.uaword	.LBE49
	.uleb128 0x31
	.uaword	0x19d6
	.uaword	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x19e4
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.uahalf	0x2b1
	.uaword	0x1da7
	.uleb128 0x39
	.uaword	0x19fd
	.uaword	.LLST23
	.byte	0
	.uleb128 0x37
	.uaword	0x1a09
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.uahalf	0x2b6
	.uaword	0x1dc1
	.uleb128 0x3a
	.uaword	0x1a37
	.byte	0
	.uleb128 0x3b
	.uaword	0x1a44
	.uaword	.LBB54
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x2c3
	.uaword	0x1de9
	.uleb128 0x3a
	.uaword	0x1a7e
	.uleb128 0x39
	.uaword	0x1a6b
	.uaword	.LLST28
	.uleb128 0x3a
	.uaword	0x1a5f
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL51
	.uaword	0x1a8c
	.uleb128 0x3d
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x12
<<<<<<< Updated upstream
	.uaword	0xc0b
	.uleb128 0x2b
=======
	.uaword	0xbf8
	.uleb128 0x2c
>>>>>>> Stashed changes
	.byte	0x1
	.string	"osEE_tc_stm_set_sr0_next_match"
	.byte	0x1
	.uahalf	0x2cb
	.byte	0x1
	.uaword	.LFB114
	.uaword	.LFE114
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x1e70
	.uleb128 0x29
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x268
	.uaword	.LLST33
	.uleb128 0x31
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0x1dd1
	.uleb128 0x30
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2d4
	.uaword	0x1c9e
	.uaword	.LLST34
	.uleb128 0x32
	.uaword	0x1964
	.uaword	.LBB43
	.uaword	.LBE43
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0x1e5e
	.uleb128 0x2e
	.uaword	.LBB45
	.uaword	.LBE45
	.uleb128 0x33
	.uaword	0x1989
	.uaword	.LLST35
=======
	.uaword	0x1e9a
	.uleb128 0x2a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x255
	.uaword	.LLST29
	.uleb128 0x36
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0x1dfb
	.uleb128 0x35
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2d4
	.uaword	0x1cd4
	.uaword	.LLST30
	.uleb128 0x37
	.uaword	0x19b1
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0x1e88
	.uleb128 0x38
	.uaword	.LBB62
	.uaword	.LBE62
	.uleb128 0x31
	.uaword	0x19d6
	.uaword	.LLST31
>>>>>>> Stashed changes
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL62
<<<<<<< Updated upstream
	.uaword	0x1a3f
	.uleb128 0x36
=======
	.uaword	0x1a8c
	.uleb128 0x3d
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"osEE_tc_stm_set_sr1"
	.byte	0x1
	.uahalf	0x2dd
	.byte	0x1
	.uaword	.LFB115
	.uaword	.LFE115
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x1f9e
	.uleb128 0x29
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2dd
	.uaword	0x268
	.uaword	.LLST36
	.uleb128 0x2c
	.string	"intvec"
	.byte	0x1
	.uahalf	0x2de
	.uaword	0x4bd
	.uaword	.LLST37
	.uleb128 0x30
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2e0
	.uaword	0x268
	.uaword	.LLST38
	.uleb128 0x30
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0x1d1
	.uaword	.LLST39
	.uleb128 0x31
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0x1dd1
	.uleb128 0x30
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2e7
	.uaword	0x1c9e
	.uaword	.LLST40
	.uleb128 0x32
	.uaword	0x1964
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0x1f20
	.uleb128 0x2e
	.uaword	.LBB48
	.uaword	.LBE48
	.uleb128 0x33
	.uaword	0x1989
	.uaword	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1997
	.uaword	.LBB49
	.uaword	.LBE49
	.byte	0x1
	.uahalf	0x2ed
	.uaword	0x1f3e
	.uleb128 0x34
	.uaword	0x19b0
	.uaword	.LLST38
	.byte	0
	.uleb128 0x32
	.uaword	0x19bc
	.uaword	.LBB51
	.uaword	.LBE51
	.byte	0x1
	.uahalf	0x2f2
	.uaword	0x1f5c
	.uleb128 0x34
	.uaword	0x19ea
	.uaword	.LLST43
	.byte	0
	.uleb128 0x32
	.uaword	0x19f7
	.uaword	.LBB53
	.uaword	.LBE53
	.byte	0x1
	.uahalf	0x2fe
	.uaword	0x1f8c
	.uleb128 0x34
	.uaword	0x1a31
	.uaword	.LLST44
	.uleb128 0x34
	.uaword	0x1a1e
	.uaword	.LLST45
	.uleb128 0x34
	.uaword	0x1a12
	.uaword	.LLST46
=======
	.uaword	0x1fbc
	.uleb128 0x2a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2dd
	.uaword	0x255
	.uaword	.LLST32
	.uleb128 0x2d
	.string	"intvec"
	.byte	0x1
	.uahalf	0x2de
	.uaword	0x4aa
	.uaword	.LLST33
	.uleb128 0x35
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2e0
	.uaword	0x255
	.uaword	.LLST34
	.uleb128 0x35
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0x1be
	.uaword	.LLST35
	.uleb128 0x36
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0x1dfb
	.uleb128 0x35
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2e7
	.uaword	0x1cd4
	.uaword	.LLST36
	.uleb128 0x37
	.uaword	0x19b1
	.uaword	.LBB63
	.uaword	.LBE63
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0x1f4a
	.uleb128 0x38
	.uaword	.LBB65
	.uaword	.LBE65
	.uleb128 0x31
	.uaword	0x19d6
	.uaword	.LLST37
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x19e4
	.uaword	.LBB66
	.uaword	.LBE66
	.byte	0x1
	.uahalf	0x2ed
	.uaword	0x1f68
	.uleb128 0x39
	.uaword	0x19fd
	.uaword	.LLST34
	.byte	0
	.uleb128 0x37
	.uaword	0x1a09
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.uahalf	0x2f2
	.uaword	0x1f82
	.uleb128 0x3a
	.uaword	0x1a37
	.byte	0
	.uleb128 0x3b
	.uaword	0x1a44
	.uaword	.LBB70
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.uahalf	0x2fe
	.uaword	0x1faa
	.uleb128 0x3a
	.uaword	0x1a7e
	.uleb128 0x39
	.uaword	0x1a6b
	.uaword	.LLST39
	.uleb128 0x3a
	.uaword	0x1a5f
>>>>>>> Stashed changes
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL66
<<<<<<< Updated upstream
	.uaword	0x1a3f
	.uleb128 0x36
=======
	.uaword	0x1a8c
	.uleb128 0x3d
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"osEE_tc_stm_set_sr1_next_match"
	.byte	0x1
	.uahalf	0x306
	.byte	0x1
	.uaword	.LFB116
	.uaword	.LFE116
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x2038
	.uleb128 0x29
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x306
	.uaword	0x268
	.uaword	.LLST47
	.uleb128 0x31
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x308
	.uaword	0x1dd1
	.uleb128 0x30
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x30d
	.uaword	0x1c9e
	.uaword	.LLST48
	.uleb128 0x32
	.uaword	0x1964
	.uaword	.LBB55
	.uaword	.LBE55
	.byte	0x1
	.uahalf	0x308
	.uaword	0x2026
	.uleb128 0x2e
	.uaword	.LBB57
	.uaword	.LBE57
	.uleb128 0x33
	.uaword	0x1989
	.uaword	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL79
	.uaword	0x1a3f
	.uleb128 0x36
=======
	.uaword	0x2056
	.uleb128 0x2a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x306
	.uaword	0x255
	.uaword	.LLST40
	.uleb128 0x36
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x308
	.uaword	0x1dfb
	.uleb128 0x35
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x30d
	.uaword	0x1cd4
	.uaword	.LLST41
	.uleb128 0x37
	.uaword	0x19b1
	.uaword	.LBB76
	.uaword	.LBE76
	.byte	0x1
	.uahalf	0x308
	.uaword	0x2044
	.uleb128 0x38
	.uaword	.LBB78
	.uaword	.LBE78
	.uleb128 0x31
	.uaword	0x19d6
	.uaword	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL77
	.uaword	0x1a8c
	.uleb128 0x3d
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"osEE_tc_delay"
	.byte	0x1
	.uahalf	0x316
	.byte	0x1
	.uaword	.LFB117
	.uaword	.LFE117
	.byte	0x1
	.byte	0x9c
	.byte	0x1
<<<<<<< Updated upstream
	.uaword	0x2117
	.uleb128 0x29
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x316
	.uaword	0x268
	.uaword	.LLST50
	.uleb128 0x31
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x318
	.uaword	0x1dd1
	.uleb128 0x30
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x31d
	.uaword	0x1c9e
	.uaword	.LLST51
	.uleb128 0x22
	.string	"start"
	.byte	0x1
	.uahalf	0x320
	.uaword	0x1c9e
	.uleb128 0x37
	.string	"ticks"
	.byte	0x1
	.uahalf	0x322
	.uaword	0x1c9e
	.byte	0x1
	.byte	0x52
	.uleb128 0x32
	.uaword	0x1964
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.uahalf	0x318
	.uaword	0x20cd
	.uleb128 0x2e
	.uaword	.LBB60
	.uaword	.LBE60
	.uleb128 0x33
	.uaword	0x1989
	.uaword	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x19bc
	.uaword	.LBB61
	.uaword	.LBE61
	.byte	0x1
	.uahalf	0x320
	.uaword	0x20eb
	.uleb128 0x34
	.uaword	0x19ea
	.uaword	.LLST51
	.byte	0
	.uleb128 0x32
	.uaword	0x19bc
	.uaword	.LBB63
	.uaword	.LBE63
	.byte	0x1
	.uahalf	0x324
	.uaword	0x2105
	.uleb128 0x38
	.uaword	0x19ea
	.byte	0
	.uleb128 0x35
	.uaword	.LVL84
	.uaword	0x1a3f
	.uleb128 0x36
=======
	.uaword	0x2135
	.uleb128 0x2a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x316
	.uaword	0x255
	.uaword	.LLST43
	.uleb128 0x36
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x318
	.uaword	0x1dfb
	.uleb128 0x35
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x31d
	.uaword	0x1cd4
	.uaword	.LLST44
	.uleb128 0x21
	.string	"start"
	.byte	0x1
	.uahalf	0x320
	.uaword	0x1cd4
	.uleb128 0x3e
	.string	"ticks"
	.byte	0x1
	.uahalf	0x322
	.uaword	0x1cd4
	.byte	0x1
	.byte	0x52
	.uleb128 0x37
	.uaword	0x19b1
	.uaword	.LBB79
	.uaword	.LBE79
	.byte	0x1
	.uahalf	0x318
	.uaword	0x20eb
	.uleb128 0x38
	.uaword	.LBB81
	.uaword	.LBE81
	.uleb128 0x31
	.uaword	0x19d6
	.uaword	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x1a09
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x1
	.uahalf	0x320
	.uaword	0x2109
	.uleb128 0x39
	.uaword	0x1a37
	.uaword	.LLST44
	.byte	0
	.uleb128 0x37
	.uaword	0x1a09
	.uaword	.LBB84
	.uaword	.LBE84
	.byte	0x1
	.uahalf	0x324
	.uaword	0x2123
	.uleb128 0x3a
	.uaword	0x1a37
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL82
	.uaword	0x1a8c
	.uleb128 0x3d
>>>>>>> Stashed changes
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x3e
	.string	"osEE_tc_stm_freq_khz"
	.byte	0x1
	.uahalf	0x274
	.uaword	0x268
	.byte	0x5
	.byte	0x3
	.uaword	osEE_tc_stm_freq_khz
	.uleb128 0x3f
	.string	"osEE_kdb_var"
	.byte	0xc
	.byte	0x42
	.uaword	0x194e
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"osEE_cdb_var"
	.byte	0xc
	.byte	0x5b
	.uaword	0x17d5
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uaword	.LVL1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-.Ltext0
	.uaword	.LFE111-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5-.Ltext0
	.uaword	.LFE111-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL7-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x17
	.byte	0xc
	.uaword	0x1312d00
	.byte	0xf7
<<<<<<< Updated upstream
	.uleb128 0x162
	.byte	0x7e
=======
	.uleb128 0x14f
	.byte	0x7f
>>>>>>> Stashed changes
	.sleb128 0
	.byte	0xf7
	.uleb128 0x162
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x162
	.byte	0xf7
	.uleb128 0x172
	.byte	0x9f
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x17
	.byte	0xc
	.uaword	0x1312d00
	.byte	0xf7
<<<<<<< Updated upstream
	.uleb128 0x162
	.byte	0x7e
	.sleb128 0
=======
	.uleb128 0x14f
	.byte	0x7f
	.sleb128 1
>>>>>>> Stashed changes
	.byte	0xf7
	.uleb128 0x162
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x162
	.byte	0xf7
	.uleb128 0x172
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x12
<<<<<<< Updated upstream
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x162
	.byte	0xf7
	.uleb128 0x172
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x162
	.byte	0xf7
	.uleb128 0x172
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x12
	.byte	0x70
=======
	.byte	0x79
>>>>>>> Stashed changes
	.sleb128 0
	.byte	0xf7
	.uleb128 0x162
	.byte	0xf7
	.uleb128 0x172
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x162
	.byte	0xf7
	.uleb128 0x172
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0xbebc200
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0xbebc200
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x9
	.byte	0x77
	.sleb128 0
	.byte	0xf7
	.uleb128 0x162
	.byte	0xf7
	.uleb128 0x172
	.byte	0x9f
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL24-.Ltext0
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
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x10
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0xf7
	.uleb128 0x162
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x162
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
<<<<<<< Updated upstream
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x31
	.byte	0x24
	.byte	0xf7
	.uleb128 0x162
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x162
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL32-.Ltext0
=======
	.uaword	.LVL29-.Ltext0
>>>>>>> Stashed changes
	.uaword	.LFE109-.Ltext0
	.uahalf	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x31
	.byte	0x24
	.byte	0xf7
	.uleb128 0x162
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x162
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL45-.Ltext0
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
.LLST17:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL45-.Ltext0
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
.LLST18:
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
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
.LLST19:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
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
.LLST20:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
<<<<<<< Updated upstream
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x11
	.byte	0x72
	.sleb128 1
	.byte	0xf7
	.uleb128 0x162
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf7
	.uleb128 0x162
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
	.uleb128 0x162
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf7
	.uleb128 0x162
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
=======
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL51-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51-1-.Ltext0
	.uaword	.LFE113-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
>>>>>>> Stashed changes
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL51-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL51-1-.Ltext0
	.uaword	.LFE113-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL56-.Ltext0
	.uahalf	0x5
	.byte	0x4f
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x5
	.byte	0x4f
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL53-.Ltext0
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
.LLST26:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x6
	.byte	0x73
	.sleb128 146
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL62-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62-1-.Ltext0
	.uaword	.LFE114-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
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
.LLST31:
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL66-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL66-1-.Ltext0
	.uaword	.LFE115-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL66-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL66-1-.Ltext0
	.uaword	.LFE115-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL70-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL71-.Ltext0
	.uahalf	0x5
	.byte	0x4f
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x5
	.byte	0x4f
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL67-.Ltext0
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
.LLST37:
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL73-.Ltext0
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL77-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77-1-.Ltext0
	.uaword	.LFE116-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL76-.Ltext0
	.uaword	.LVL78-.Ltext0
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
.LLST42:
	.uaword	.LVL76-.Ltext0
	.uaword	.LVL78-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL82-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL82-1-.Ltext0
	.uaword	.LFE117-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL81-.Ltext0
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
.LLST45:
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL81-.Ltext0
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
	.uaword	.LBB38-.Ltext0
	.uaword	.LBE38-.Ltext0
	.uaword	.LBB44-.Ltext0
	.uaword	.LBE44-.Ltext0
	.uaword	.LBB46-.Ltext0
	.uaword	.LBE46-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB40-.Ltext0
	.uaword	.LBE40-.Ltext0
	.uaword	.LBB43-.Ltext0
	.uaword	.LBE43-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB54-.Ltext0
	.uaword	.LBE54-.Ltext0
	.uaword	.LBB58-.Ltext0
	.uaword	.LBE58-.Ltext0
	.uaword	.LBB59-.Ltext0
	.uaword	.LBE59-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB70-.Ltext0
	.uaword	.LBE70-.Ltext0
	.uaword	.LBB74-.Ltext0
	.uaword	.LBE74-.Ltext0
	.uaword	.LBB75-.Ltext0
	.uaword	.LBE75-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF5:
	.string	"us_in_ticks"
.LASF1:
	.string	"p_next"
.LASF0:
	.string	"bits"
.LASF6:
	.string	"size_of_compare"
.LASF7:
	.string	"core_id"
.LASF3:
	.string	"stm_id"
.LASF2:
	.string	"p_counter_db"
.LASF4:
	.string	"usec"
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
