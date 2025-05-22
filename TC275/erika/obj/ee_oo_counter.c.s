	.file	"ee_oo_counter.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	osEE_counter_insert_abs_trigger
	.type	osEE_counter_insert_abs_trigger, @function
osEE_counter_insert_abs_trigger:
.LFB110:
	.file 1 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_oo_counter.c"
	.loc 1 75 0
.LVL0:
	mov.aa	%a14, %SP
.LCFI0:
	.loc 1 77 0
	ld.a	%a2, [%a4]0
.LVL1:
	.loc 1 81 0
	ld.w	%d15, [%a2]0
.LVL2:
	.loc 1 83 0
	ld.w	%d5, [%a2] 4
.LVL3:
	.loc 1 88 0
	ld.a	%a15, [%a5]0
	st.w	[%a15] 4, %d4
	.loc 1 85 0
	mov	%d3, 1
	.loc 1 79 0
	mov.a	%a3, 0
.LBB39:
	.loc 1 105 0
	ge.u	%d6, %d5, %d4
	.loc 1 112 0
	mov	%d7, 0
.LBE39:
	.loc 1 90 0
	j	.L2
.LVL4:
.L5:
.LBB40:
	.loc 1 91 0
	mov.a	%a4, %d15
	ld.a	%a15, [%a4]0
	ld.w	%d2, [%a15] 4
.LVL5:
	.loc 1 93 0
	jge.u	%d5, %d2, .L3
	.loc 1 95 0
	mov	%d0, %d6
	or.ge.u	%d0, %d4, %d2
	jz	%d0, .L8
.LVL6:
	mov.a	%a3, %d15
	.loc 1 99 0
	ld.w	%d15, [%a15]0
.LVL7:
	j	.L2
.LVL8:
.L3:
	.loc 1 105 0
	ge.u	%d2, %d4, %d2
.LVL9:
	and	%d2, %d6
	jz	%d2, .L9
.LVL10:
	mov.a	%a3, %d15
	.loc 1 110 0
	ld.w	%d15, [%a15]0
.LVL11:
	j	.L2
.LVL12:
.L8:
	.loc 1 101 0
	mov	%d3, %d7
.LVL13:
	j	.L2
.LVL14:
.L9:
	.loc 1 112 0
	mov	%d3, %d7
.LVL15:
.L2:
.LBE40:
	.loc 1 90 0
	ne	%d2, %d15, 0
	and.ne	%d2, %d3, 0
	jnz	%d2, .L5
	.loc 1 117 0
	jz.a	%a3, .L6
	.loc 1 118 0
	ld.a	%a15, [%a3]0
	st.a	[%a15]0, %a5
	j	.L7
.L6:
	.loc 1 120 0
	st.a	[%a2]0, %a5
.L7:
	.loc 1 123 0
	ld.a	%a15, [%a5]0
	st.w	[%a15]0, %d15
	ret
.LFE110:
	.size	osEE_counter_insert_abs_trigger, .-osEE_counter_insert_abs_trigger
	.align 1
	.global	osEE_counter_insert_rel_trigger
	.type	osEE_counter_insert_rel_trigger, @function
osEE_counter_insert_rel_trigger:
.LFB109:
	.loc 1 63 0
.LVL16:
	mov.aa	%a14, %SP
.LCFI1:
.LVL17:
.LBB41:
.LBB42:
	.file 2 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_kernel.h"
	.loc 2 789 0
	ld.w	%d2, [%a4] 4
.LVL18:
	.loc 2 791 0
	ld.a	%a15, [%a4]0
	ld.w	%d15, [%a15] 4
.LVL19:
	.loc 2 793 0
	sub	%d5, %d2, %d4
	not	%d2
.LVL20:
	.loc 2 796 0
	add	%d2, %d15
	.loc 2 794 0
	add	%d3, %d15, %d4
	add	%d4, %d2
.LVL21:
	lt.u	%d15, %d5, %d15
.LVL22:
.LBE42:
.LBE41:
	.loc 1 64 0
	cmovn	%d4, %d15, %d3
.LVL23:
	call	osEE_counter_insert_abs_trigger
.LVL24:
	ret
.LFE109:
	.size	osEE_counter_insert_rel_trigger, .-osEE_counter_insert_rel_trigger
	.align 1
	.global	osEE_counter_cancel_trigger
	.type	osEE_counter_cancel_trigger, @function
osEE_counter_cancel_trigger:
.LFB111:
	.loc 1 132 0
.LVL25:
	mov.aa	%a14, %SP
.LCFI2:
	mov.d	%d3, %a5
	.loc 1 134 0
	ld.a	%a15, [%a4]0
.LVL26:
	.loc 1 136 0
	ld.a	%a2, [%a5]0
.LVL27:
	.loc 1 138 0
	ld.w	%d15, [%a15]0
.LVL28:
	.loc 1 140 0
	jne	%d15, %d3, .L16
	.loc 1 142 0
	ld.w	%d15, [%a2]0
.LVL29:
	st.w	[%a15]0, %d15
.LVL30:
	ret
.LVL31:
.L16:
.LBB43:
	.loc 1 147 0 discriminator 1
	mov.a	%a3, %d15
	ld.a	%a15, [%a3]0
	ld.w	%d15, [%a15]0
.LVL32:
	.loc 1 148 0 discriminator 1
	ne	%d4, %d15, 0
	ne	%d2, %d15, %d3
	and.ne	%d2, %d15, 0
	jnz	%d2, .L16
	.loc 1 150 0
	jz	%d4, .L13
	.loc 1 152 0
	ld.w	%d15, [%a2]0
.LVL33:
	st.w	[%a15]0, %d15
.LVL34:
.L13:
	ret
.LBE43:
.LFE111:
	.size	osEE_counter_cancel_trigger, .-osEE_counter_cancel_trigger
	.align 1
	.global	osEE_counter_increment
	.type	osEE_counter_increment, @function
osEE_counter_increment:
.LFB114:
	.loc 1 469 0
.LVL35:
	mov.aa	%a14, %SP
.LCFI3:
	sub.a	%SP, 16
	.loc 1 471 0
	ld.a	%a3, [%a4]0
.LVL36:
.LBB58:
	.loc 1 499 0
	ld.w	%d2, [%a3] 4
	ld.w	%d15, [%a4] 4
	jlt.u	%d2, %d15, .L19
.LVL37:
	.loc 1 501 0
	mov	%d15, 0
	st.w	[%a3] 4, %d15
	.loc 1 500 0
	mov	%d2, 0
	j	.L20
.LVL38:
.L19:
	.loc 1 503 0
	add	%d2, 1
	st.w	[%a3] 4, %d2
.LVL39:
.L20:
	.loc 1 515 0
	ld.a	%a12, [%a3]0
.LVL40:
	.loc 1 517 0
	jz.a	%a12, .L18
.LVL41:
.LBB59:
	.loc 1 521 0
	ld.a	%a15, [%a12]0
	ld.w	%d15, [%a15] 4
	mov.aa	%a2, %a12
.LBB60:
.LBB61:
	.loc 1 534 0
	mov	%d3, 3
.LBE61:
.LBE60:
	.loc 1 521 0
	jeq	%d15, %d2, .L23
	j	.L18
.LVL42:
.L33:
.LBB77:
.LBB62:
	.loc 1 535 0
	mov.aa	%a2, %a15
.LVL43:
.L23:
	.loc 1 531 0
	ld.a	%a15, [%a2]0
.LVL44:
	.loc 1 534 0
	st.b	[%a15] 8, %d3
	.loc 1 535 0
	ld.a	%a15, [%a15]0
.LVL45:
.LBE62:
	.loc 1 537 0
	jz.a	%a15, .L22
	.loc 1 537 0 is_stmt 0 discriminator 1
	ld.a	%a5, [%a15]0
	ld.w	%d2, [%a5] 4
	.loc 1 536 0 is_stmt 1 discriminator 1
	jeq	%d15, %d2, .L33
.L22:
	st.a	[%a14] -12, %a4
	.loc 1 540 0
	ld.a	%a2, [%a2]0
.LVL46:
	mov	%d15, 0
	st.w	[%a2]0, %d15
	.loc 1 543 0
	st.a	[%a3]0, %a15
.LVL47:
.LBB63:
.LBB64:
.LBB65:
.LBB66:
.LBB67:
	.loc 1 164 0
	mov	%d8, 0
	.loc 1 165 0
	movh	%d9, hi:.L26
	addi	%d9, %d9, lo:.L26
.LBB68:
	.loc 1 191 0
	movh.a	%a15, hi:osEE_kdb_var
.LVL48:
	lea	%a15, [%a15] lo:osEE_kdb_var
.LBE68:
.LBE67:
.LBE66:
.LBB72:
	.loc 1 264 0
	mov	%d11, 2
.LVL49:
.L32:
.LBE72:
.LBE65:
.LBE64:
	.loc 1 559 0 discriminator 1
	ld.a	%a2, [%a12]0
	ld.w	%d10, [%a2]0
.LVL50:
.LBB76:
.LBB75:
.LBB73:
.LBB71:
	.loc 1 164 0 discriminator 1
	st.b	[%a14] -1, %d8
	.loc 1 165 0 discriminator 1
	ld.bu	%d15, [%a12] 24
	jge.u	%d15, 4, .L24
	mov.a	%a3, %d9
	addsc.a	%a2, %a3, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L26:
	.code32
	j	.L25
	.code32
	j	.L27
	.code32
	j	.L28
	.code32
	j	.L29
.L25:
.LBB69:
	.loc 1 169 0
	ld.a	%a13, [%a12] 12
.LVL51:
	.loc 1 171 0
	mov.aa	%a4, %a13
	call	osEE_task_activated
.LVL52:
	st.b	[%a14] -1, %d2
	.loc 1 172 0
	jnz	%d2, .L24
	.loc 1 173 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a13
	call	osEE_scheduler_task_insert
.LVL53:
	j	.L24
.LVL54:
.L27:
.LBE69:
.LBB70:
	.loc 1 187 0
	ld.a	%a4, [%a12] 12
	ld.w	%d4, [%a12] 20
	lea	%a5, [%a14] -1
	call	osEE_task_event_set_mask
.LVL55:
	.loc 1 189 0
	jz.a	%a2, .L24
	.loc 1 191 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a2
	call	osEE_scheduler_task_unblocked
.LVL56:
	j	.L24
.L28:
.LBE70:
	.loc 1 197 0
	ld.a	%a4, [%a12] 16
	call	osEE_counter_increment
.LVL57:
	j	.L24
.L29:
	.loc 1 210 0
	ld.a	%a2, [%a12] 8
	calli	%a2
.LVL58:
.L24:
.LBE71:
.LBE73:
	.loc 1 255 0
	ld.a	%a2, [%a12]0
.LVL59:
	.loc 1 257 0
	ld.bu	%d15, [%a2] 8
	jne	%d15, 3, .L30
.LVL60:
.LBB74:
	.loc 1 258 0
	ld.w	%d4, [%a2] 12
.LVL61:
	.loc 1 261 0
	jz	%d4, .L31
	.loc 1 264 0
	st.b	[%a2] 8, %d11
	.loc 1 265 0
	ld.a	%a4, [%a14] -12
	mov.aa	%a5, %a12
	call	osEE_counter_insert_rel_trigger
.LVL62:
	j	.L30
.LVL63:
.L31:
	.loc 1 268 0
	st.b	[%a2] 8, %d8
.LVL64:
.L30:
.LBE74:
.LBE75:
.LBE76:
	.loc 1 559 0 discriminator 1
	mov.a	%a12, %d10
.LVL65:
.LBE63:
	.loc 1 581 0 discriminator 1
	jnz.a	%a12, .L32
.LVL66:
.L18:
	ret
.LBE77:
.LBE59:
.LBE58:
.LFE114:
	.size	osEE_counter_increment, .-osEE_counter_increment
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
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.byte	0x4
	.uaword	.LCFI0-.LFB110
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
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.byte	0x4
	.uaword	.LCFI2-.LFB111
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.byte	0x4
	.uaword	.LCFI3-.LFB114
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 5 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 6 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_hal_internal_types.h"
	.file 7 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 8 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_scheduler_types.h"
	.file 9 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_kernel_types.h"
	.file 10 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\inc/ee_get_kernel_and_core.h"
	.file 11 "C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_scheduler.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1a49
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -O1 -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\Users\\USER\\Desktop\\AUTODR~1\\TC275\\erika\\src\\ee_oo_counter.c"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"size_t"
	.byte	0x3
	.byte	0xd4
	.uaword	0x17d
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
	.byte	0x4
	.byte	0x2a
	.uaword	0x1b7
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
	.byte	0x4
	.byte	0x36
	.uaword	0x1e5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x4
	.byte	0x50
	.uaword	0x17d
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
	.byte	0x5
	.byte	0x48
	.uaword	0x268
	.uleb128 0x5
	.string	"OSEE_FALSE"
	.sleb128 0
	.uleb128 0x5
	.string	"OSEE_TRUE"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"OsEE_bool"
	.byte	0x5
	.byte	0x4b
	.uaword	0x246
	.uleb128 0x3
	.string	"OsEE_addr"
	.byte	0x5
	.byte	0x5a
	.uaword	0x28a
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x5
	.byte	0x5b
	.uaword	0x1fb
	.uleb128 0x3
	.string	"OsEE_prio"
	.byte	0x5
	.byte	0x8d
	.uaword	0x1a8
	.uleb128 0x3
	.string	"OsEE_isr_src_id"
	.byte	0x5
	.byte	0x92
	.uaword	0x1d5
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0x74
	.uaword	0x31a
	.uleb128 0x8
	.string	"pcxo"
	.byte	0x6
	.byte	0x75
	.uaword	0x236
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"pcxs"
	.byte	0x6
	.byte	0x76
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"ul"
	.byte	0x6
	.byte	0x7b
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"pie"
	.byte	0x6
	.byte	0x7c
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"pcpn"
	.byte	0x6
	.byte	0x7d
	.uaword	0x236
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.byte	0x72
	.uaword	0x33a
	.uleb128 0xa
	.string	"reg"
	.byte	0x6
	.byte	0x73
	.uaword	0x28c
	.uleb128 0xa
	.string	"bits"
	.byte	0x6
	.byte	0x82
	.uaword	0x2c4
	.byte	0
	.uleb128 0x3
	.string	"OsEE_pcxi"
	.byte	0x6
	.byte	0x83
	.uaword	0x31a
	.uleb128 0xb
	.string	"OsEE_CTX_tag"
	.byte	0x10
	.byte	0x6
	.byte	0xf3
	.uaword	0x395
	.uleb128 0xc
	.string	"p_ctx"
	.byte	0x6
	.byte	0xf4
	.uaword	0x395
	.byte	0
	.uleb128 0xc
	.string	"dummy"
	.byte	0x6
	.byte	0xf5
	.uaword	0x28c
	.byte	0x4
	.uleb128 0xc
	.string	"pcxi"
	.byte	0x6
	.byte	0xf6
	.uaword	0x33a
	.byte	0x8
	.uleb128 0xc
	.string	"ra"
	.byte	0x6
	.byte	0xf7
	.uaword	0x279
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x34b
	.uleb128 0x3
	.string	"OsEE_CTX"
	.byte	0x6
	.byte	0xf8
	.uaword	0x34b
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0xfb
	.uaword	0x3c2
	.uleb128 0xc
	.string	"p_tos"
	.byte	0x6
	.byte	0xfc
	.uaword	0x3c2
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x39b
	.uleb128 0x3
	.string	"OsEE_SCB"
	.byte	0x6
	.byte	0xfd
	.uaword	0x3ab
	.uleb128 0xe
	.byte	0x8
	.byte	0x6
	.uahalf	0x100
	.uaword	0x405
	.uleb128 0xf
	.string	"p_bos"
	.byte	0x6
	.uahalf	0x101
	.uaword	0x3c2
	.byte	0
	.uleb128 0xf
	.string	"stack_size"
	.byte	0x6
	.uahalf	0x105
	.uaword	0x16f
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"OsEE_SDB"
	.byte	0x6
	.uahalf	0x106
	.uaword	0x416
	.uleb128 0x11
	.uaword	0x3d8
	.uleb128 0xe
	.byte	0xc
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x455
	.uleb128 0xf
	.string	"p_sdb"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0x455
	.byte	0
	.uleb128 0xf
	.string	"p_scb"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x45b
	.byte	0x4
	.uleb128 0xf
	.string	"isr2_src"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0x2ad
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x405
	.uleb128 0xd
	.byte	0x4
	.uaword	0x3c8
	.uleb128 0x10
	.string	"OsEE_HDB"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x472
	.uleb128 0x11
	.uaword	0x41b
	.uleb128 0x3
	.string	"AppModeType"
	.byte	0x7
	.byte	0x60
	.uaword	0x1a8
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x7
	.byte	0x78
	.uaword	0x28c
	.uleb128 0x3
	.string	"TaskPrio"
	.byte	0x7
	.byte	0xc8
	.uaword	0x29c
	.uleb128 0x3
	.string	"TaskActivation"
	.byte	0x7
	.byte	0xf4
	.uaword	0x1a8
	.uleb128 0x10
	.string	"TaskFunc"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x4d1
	.uleb128 0xd
	.byte	0x4
	.uaword	0x4d7
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.byte	0x7
	.uahalf	0x145
	.uaword	0x540
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
	.byte	0x7
	.uahalf	0x153
	.uaword	0x4d9
	.uleb128 0x10
	.string	"TaskExecutionType"
	.byte	0x7
	.uahalf	0x157
	.uaword	0x540
	.uleb128 0x13
	.byte	0x1
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x5f9
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
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x571
	.uleb128 0x10
	.string	"TaskStateType"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0x5f9
	.uleb128 0x10
	.string	"TickType"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x28c
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x666
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x628
	.byte	0
	.uleb128 0xf
	.string	"ticksperbase"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x628
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"AlarmBaseType"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x639
	.uleb128 0x10
	.string	"EventMaskType"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x28c
	.uleb128 0x10
	.string	"MemSize"
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x16f
	.uleb128 0x13
	.byte	0x1
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x8c5
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
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x6a2
	.uleb128 0x10
	.string	"StatusType"
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x8c5
	.uleb128 0xb
	.string	"OsEE_SN_tag"
	.byte	0x8
	.byte	0x8
	.byte	0x4b
	.uaword	0x91e
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x8
	.byte	0x4d
	.uaword	0x91e
	.byte	0
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x8
	.byte	0x4f
	.uaword	0x9cd
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x8f1
	.uleb128 0x16
	.string	"OsEE_TDB_tag"
	.byte	0x20
	.byte	0x9
	.uahalf	0x108
	.uaword	0x9cd
	.uleb128 0xf
	.string	"hdb"
	.byte	0x9
	.uahalf	0x10b
	.uaword	0x461
	.byte	0
	.uleb128 0xf
	.string	"p_tcb"
	.byte	0x9
	.uahalf	0x10e
	.uaword	0xbe2
	.byte	0xc
	.uleb128 0xf
	.string	"tid"
	.byte	0x9
	.uahalf	0x110
	.uaword	0x48a
	.byte	0x10
	.uleb128 0xf
	.string	"task_type"
	.byte	0x9
	.uahalf	0x112
	.uaword	0x557
	.byte	0x14
	.uleb128 0xf
	.string	"task_func"
	.byte	0x9
	.uahalf	0x114
	.uaword	0x4c0
	.byte	0x18
	.uleb128 0xf
	.string	"ready_prio"
	.byte	0x9
	.uahalf	0x117
	.uaword	0x49a
	.byte	0x1c
	.uleb128 0xf
	.string	"dispatch_prio"
	.byte	0x9
	.uahalf	0x11a
	.uaword	0x49a
	.byte	0x1d
	.uleb128 0xf
	.string	"max_num_of_act"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x4aa
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x9d3
	.uleb128 0x11
	.uaword	0x924
	.uleb128 0x3
	.string	"OsEE_SN"
	.byte	0x8
	.byte	0x50
	.uaword	0x8f1
	.uleb128 0x3
	.string	"OsEE_RQ"
	.byte	0x8
	.byte	0xd5
	.uaword	0x9f6
	.uleb128 0xd
	.byte	0x4
	.uaword	0x9d8
	.uleb128 0x3
	.string	"OsEE_kernel_cb"
	.byte	0x9
	.byte	0x51
	.uaword	0x4d1
	.uleb128 0x3
	.string	"OsEE_byte"
	.byte	0x9
	.byte	0x53
	.uaword	0x1a8
	.uleb128 0x4
	.byte	0x1
	.byte	0x9
	.byte	0x73
	.uaword	0xa8a
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
	.byte	0x9
	.byte	0x7d
	.uaword	0xa23
	.uleb128 0x7
	.byte	0xc
	.byte	0x9
	.byte	0x90
	.uaword	0xadb
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x9
	.byte	0x94
	.uaword	0xb0b
	.byte	0
	.uleb128 0xc
	.string	"prev_prio"
	.byte	0x9
	.byte	0x97
	.uaword	0x49a
	.byte	0x4
	.uleb128 0xc
	.string	"p_owner"
	.byte	0x9
	.byte	0x9a
	.uaword	0x9cd
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"OsEE_MDB_tag"
	.byte	0x8
	.byte	0x9
	.byte	0xb5
	.uaword	0xb0b
	.uleb128 0xc
	.string	"p_cb"
	.byte	0x9
	.byte	0xb7
	.uaword	0xb26
	.byte	0
	.uleb128 0xc
	.string	"prio"
	.byte	0x9
	.byte	0xc3
	.uaword	0x49a
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xb11
	.uleb128 0x11
	.uaword	0xadb
	.uleb128 0x3
	.string	"OsEE_MCB"
	.byte	0x9
	.byte	0x9b
	.uaword	0xaa4
	.uleb128 0xd
	.byte	0x4
	.uaword	0xb16
	.uleb128 0x3
	.string	"OsEE_MDB"
	.byte	0x9
	.byte	0xce
	.uaword	0xb11
	.uleb128 0x7
	.byte	0x14
	.byte	0x9
	.byte	0xe0
	.uaword	0xbcb
	.uleb128 0xc
	.string	"current_num_of_act"
	.byte	0x9
	.byte	0xe4
	.uaword	0x4aa
	.byte	0
	.uleb128 0xc
	.string	"current_prio"
	.byte	0x9
	.byte	0xea
	.uaword	0x49a
	.byte	0x1
	.uleb128 0xc
	.string	"status"
	.byte	0x9
	.byte	0xec
	.uaword	0x612
	.byte	0x2
	.uleb128 0xc
	.string	"p_last_m"
	.byte	0x9
	.byte	0xef
	.uaword	0xbcb
	.byte	0x4
	.uleb128 0xc
	.string	"wait_mask"
	.byte	0x9
	.byte	0xf3
	.uaword	0x67c
	.byte	0x8
	.uleb128 0xc
	.string	"event_mask"
	.byte	0x9
	.byte	0xf5
	.uaword	0x67c
	.byte	0xc
	.uleb128 0xc
	.string	"p_own_sn"
	.byte	0x9
	.byte	0xfb
	.uaword	0x9f6
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xb2c
	.uleb128 0x10
	.string	"OsEE_TCB"
	.byte	0x9
	.uahalf	0x101
	.uaword	0xb3c
	.uleb128 0xd
	.byte	0x4
	.uaword	0xbd1
	.uleb128 0x10
	.string	"OsEE_TDB"
	.byte	0x9
	.uahalf	0x122
	.uaword	0x9d3
	.uleb128 0xd
	.byte	0x4
	.uaword	0xbe8
	.uleb128 0x10
	.string	"OsEE_TriggerQ"
	.byte	0x9
	.uahalf	0x151
	.uaword	0xc15
	.uleb128 0xd
	.byte	0x4
	.uaword	0xc1b
	.uleb128 0x11
	.uaword	0xc20
	.uleb128 0x16
	.string	"OsEE_TriggerDB_tag"
	.byte	0x1c
	.byte	0x9
	.uahalf	0x269
	.uaword	0xc67
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x9
	.uahalf	0x26b
	.uaword	0xf00
	.byte	0
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x9
	.uahalf	0x26d
	.uaword	0xda9
	.byte	0x4
	.uleb128 0xf
	.string	"action"
	.byte	0x9
	.uahalf	0x27b
	.uaword	0xdf0
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x9
	.uahalf	0x155
	.uaword	0xc97
	.uleb128 0xf
	.string	"trigger_queue"
	.byte	0x9
	.uahalf	0x157
	.uaword	0xbff
	.byte	0
	.uleb128 0xf
	.string	"value"
	.byte	0x9
	.uahalf	0x159
	.uaword	0x628
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"OsEE_CounterCB"
	.byte	0x9
	.uahalf	0x15e
	.uaword	0xc67
	.uleb128 0xe
	.byte	0xc
	.byte	0x9
	.uahalf	0x16f
	.uaword	0xcd3
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x171
	.uaword	0xcd3
	.byte	0
	.uleb128 0xf
	.string	"info"
	.byte	0x9
	.uahalf	0x177
	.uaword	0x666
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xc97
	.uleb128 0x10
	.string	"OsEE_CounterDB"
	.byte	0x9
	.uahalf	0x17c
	.uaword	0xcf0
	.uleb128 0x11
	.uaword	0xcae
	.uleb128 0x13
	.byte	0x1
	.byte	0x9
	.uahalf	0x17f
	.uaword	0xd53
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
	.byte	0x9
	.uahalf	0x184
	.uaword	0xcf5
	.uleb128 0xe
	.byte	0x10
	.byte	0x9
	.uahalf	0x189
	.uaword	0xda9
	.uleb128 0xf
	.string	"f"
	.byte	0x9
	.uahalf	0x18b
	.uaword	0x9fc
	.byte	0
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x9
	.uahalf	0x18d
	.uaword	0xbf9
	.byte	0x4
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x9
	.uahalf	0x18f
	.uaword	0xda9
	.byte	0x8
	.uleb128 0xf
	.string	"mask"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x67c
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xcd9
	.uleb128 0x10
	.string	"OsEE_action_param"
	.byte	0x9
	.uahalf	0x194
	.uaword	0xd6c
	.uleb128 0xe
	.byte	0x14
	.byte	0x9
	.uahalf	0x198
	.uaword	0xdf0
	.uleb128 0xf
	.string	"param"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0xdaf
	.byte	0
	.uleb128 0xf
	.string	"type"
	.byte	0x9
	.uahalf	0x19c
	.uaword	0xd53
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"OsEE_action"
	.byte	0x9
	.uahalf	0x19d
	.uaword	0xe04
	.uleb128 0x11
	.uaword	0xdc9
	.uleb128 0x13
	.byte	0x1
	.byte	0x9
	.uahalf	0x22b
	.uaword	0xe89
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
	.byte	0x9
	.uahalf	0x231
	.uaword	0xe09
	.uleb128 0xe
	.byte	0x10
	.byte	0x9
	.uahalf	0x242
	.uaword	0xee9
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x244
	.uaword	0xc15
	.byte	0
	.uleb128 0xf
	.string	"when"
	.byte	0x9
	.uahalf	0x247
	.uaword	0x628
	.byte	0x4
	.uleb128 0xf
	.string	"status"
	.byte	0x9
	.uahalf	0x249
	.uaword	0xe89
	.byte	0x8
	.uleb128 0xf
	.string	"cycle"
	.byte	0x9
	.uahalf	0x24d
	.uaword	0x628
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"OsEE_TriggerCB"
	.byte	0x9
	.uahalf	0x25e
	.uaword	0xea5
	.uleb128 0xd
	.byte	0x4
	.uaword	0xee9
	.uleb128 0x10
	.string	"OsEE_TriggerDB"
	.byte	0x9
	.uahalf	0x290
	.uaword	0xc1b
	.uleb128 0x10
	.string	"OsEE_AlarmCB"
	.byte	0x9
	.uahalf	0x294
	.uaword	0xee9
	.uleb128 0x10
	.string	"OsEE_AlarmDB"
	.byte	0x9
	.uahalf	0x295
	.uaword	0xf06
	.uleb128 0xe
	.byte	0x20
	.byte	0x9
	.uahalf	0x2d9
	.uaword	0x104c
	.uleb128 0xf
	.string	"p_curr"
	.byte	0x9
	.uahalf	0x2dc
	.uaword	0xbf9
	.byte	0
	.uleb128 0xf
	.string	"rq"
	.byte	0x9
	.uahalf	0x2ee
	.uaword	0x9e7
	.byte	0x4
	.uleb128 0xf
	.string	"p_free_sn"
	.byte	0x9
	.uahalf	0x2f0
	.uaword	0x9f6
	.byte	0x8
	.uleb128 0xf
	.string	"p_stk_sn"
	.byte	0x9
	.uahalf	0x2ff
	.uaword	0x9f6
	.byte	0xc
	.uleb128 0xf
	.string	"os_status"
	.byte	0x9
	.uahalf	0x301
	.uaword	0x104c
	.byte	0x10
	.uleb128 0xf
	.string	"app_mode"
	.byte	0x9
	.uahalf	0x305
	.uaword	0x477
	.byte	0x11
	.uleb128 0xf
	.string	"last_error"
	.byte	0x9
	.uahalf	0x307
	.uaword	0x8de
	.byte	0x12
	.uleb128 0xf
	.string	"prev_s_isr_all_status"
	.byte	0x9
	.uahalf	0x327
	.uaword	0x28c
	.byte	0x14
	.uleb128 0xf
	.string	"prev_s_isr_os_status"
	.byte	0x9
	.uahalf	0x329
	.uaword	0x28c
	.byte	0x18
	.uleb128 0xf
	.string	"s_isr_all_cnt"
	.byte	0x9
	.uahalf	0x32b
	.uaword	0xa12
	.byte	0x1c
	.uleb128 0xf
	.string	"s_isr_os_cnt"
	.byte	0x9
	.uahalf	0x32d
	.uaword	0xa12
	.byte	0x1d
	.uleb128 0xf
	.string	"d_isr_all_cnt"
	.byte	0x9
	.uahalf	0x330
	.uaword	0xa12
	.byte	0x1e
	.byte	0
	.uleb128 0x17
	.uaword	0xa8a
	.uleb128 0x10
	.string	"OsEE_CCB"
	.byte	0x9
	.uahalf	0x33a
	.uaword	0xf47
	.uleb128 0xe
	.byte	0x8
	.byte	0x9
	.uahalf	0x344
	.uaword	0x1090
	.uleb128 0xf
	.string	"p_ccb"
	.byte	0x9
	.uahalf	0x34a
	.uaword	0x1090
	.byte	0
	.uleb128 0xf
	.string	"p_idle_task"
	.byte	0x9
	.uahalf	0x354
	.uaword	0xbf9
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1051
	.uleb128 0x10
	.string	"OsEE_CDB"
	.byte	0x9
	.uahalf	0x36a
	.uaword	0x10a7
	.uleb128 0x11
	.uaword	0x1062
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.uahalf	0x36f
	.uaword	0x10c5
	.uleb128 0xf
	.string	"dummy"
	.byte	0x9
	.uahalf	0x3b1
	.uaword	0x28c
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"OsEE_KCB"
	.byte	0x9
	.uahalf	0x3b3
	.uaword	0x10ac
	.uleb128 0xe
	.byte	0x24
	.byte	0x9
	.uahalf	0x3c3
	.uaword	0x11bf
	.uleb128 0xf
	.string	"p_kcb"
	.byte	0x9
	.uahalf	0x3c5
	.uaword	0x11bf
	.byte	0
	.uleb128 0xf
	.string	"p_tdb_ptr_array"
	.byte	0x9
	.uahalf	0x3d1
	.uaword	0x11d0
	.byte	0x4
	.uleb128 0xf
	.string	"tdb_array_size"
	.byte	0x9
	.uahalf	0x3d4
	.uaword	0x692
	.byte	0x8
	.uleb128 0xf
	.string	"p_res_ptr_array"
	.byte	0x9
	.uahalf	0x3e0
	.uaword	0x11e1
	.byte	0xc
	.uleb128 0xf
	.string	"res_array_size"
	.byte	0x9
	.uahalf	0x3e2
	.uaword	0x692
	.byte	0x10
	.uleb128 0xf
	.string	"p_counter_ptr_array"
	.byte	0x9
	.uahalf	0x3e6
	.uaword	0x11f8
	.byte	0x14
	.uleb128 0xf
	.string	"counter_array_size"
	.byte	0x9
	.uahalf	0x3e8
	.uaword	0x692
	.byte	0x18
	.uleb128 0xf
	.string	"p_alarm_ptr_array"
	.byte	0x9
	.uahalf	0x3eb
	.uaword	0x1209
	.byte	0x1c
	.uleb128 0xf
	.string	"alarm_array_size"
	.byte	0x9
	.uahalf	0x3ed
	.uaword	0x692
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x10c5
	.uleb128 0x18
	.uaword	0x9cd
	.uaword	0x11d0
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x11c5
	.uleb128 0x18
	.uaword	0xb0b
	.uaword	0x11e1
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x11d6
	.uleb128 0x18
	.uaword	0x11f2
	.uaword	0x11f2
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xcf0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x11e7
	.uleb128 0x18
	.uaword	0xc15
	.uaword	0x1209
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x11fe
	.uleb128 0x10
	.string	"OsEE_KDB"
	.byte	0x9
	.uahalf	0x3fc
	.uaword	0x1220
	.uleb128 0x11
	.uaword	0x10d6
	.uleb128 0x1a
	.string	"osEE_get_curr_core"
	.byte	0xa
	.byte	0x72
	.byte	0x1
	.uaword	0x1241
	.byte	0x3
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1096
	.uleb128 0x1b
	.string	"osEE_counter_eval_when"
	.byte	0x2
	.uahalf	0x30b
	.byte	0x1
	.uaword	0x628
	.byte	0x3
	.uaword	0x12ba
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x30d
	.uaword	0xda9
	.uleb128 0x1d
	.string	"delta"
	.byte	0x2
	.uahalf	0x30e
	.uaword	0x628
	.uleb128 0x1e
	.string	"when"
	.byte	0x2
	.uahalf	0x311
	.uaword	0x628
	.uleb128 0x1f
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x313
	.uaword	0x12ba
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x315
	.uaword	0x12ca
	.uleb128 0x1e
	.string	"value"
	.byte	0x2
	.uahalf	0x317
	.uaword	0x12ca
	.byte	0
	.uleb128 0x11
	.uaword	0x12bf
	.uleb128 0xd
	.byte	0x4
	.uaword	0x12c5
	.uleb128 0x11
	.uaword	0xc97
	.uleb128 0x11
	.uaword	0x628
	.uleb128 0x20
	.string	"osEE_lock_core"
	.byte	0xa
	.byte	0xce
	.byte	0x1
	.byte	0x3
	.uaword	0x12f3
	.uleb128 0x21
	.uaword	.LASF6
	.byte	0xa
	.byte	0xce
	.uaword	0x12f3
	.byte	0
	.uleb128 0x11
	.uaword	0x1241
	.uleb128 0x22
	.string	"osEE_unlock_core"
	.byte	0xa
	.uahalf	0x10b
	.byte	0x1
	.byte	0x3
	.uaword	0x1320
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x10b
	.uaword	0x12f3
	.byte	0
	.uleb128 0x1a
	.string	"osEE_get_kernel"
	.byte	0xa
	.byte	0x55
	.byte	0x1
	.uaword	0x1339
	.byte	0x3
	.uleb128 0xd
	.byte	0x4
	.uaword	0x120f
	.uleb128 0x1b
	.string	"osEE_trigger_get_alarm_db"
	.byte	0x2
	.uahalf	0x383
	.byte	0x1
	.uaword	0x1374
	.byte	0x3
	.uaword	0x1374
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x385
	.uaword	0x137a
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xf32
	.uleb128 0xd
	.byte	0x4
	.uaword	0xf06
	.uleb128 0x1a
	.string	"osEE_lock_and_get_curr_core"
	.byte	0xa
	.byte	0xef
	.byte	0x1
	.uaword	0x1241
	.byte	0x3
	.uleb128 0x1b
	.string	"osEE_alarm_get_cb"
	.byte	0x2
	.uahalf	0x376
	.byte	0x1
	.uaword	0x13d9
	.byte	0x3
	.uaword	0x13d9
	.uleb128 0x1d
	.string	"p_alarm_db"
	.byte	0x2
	.uahalf	0x378
	.uaword	0x1374
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xf1d
	.uleb128 0x23
	.byte	0x1
	.string	"osEE_counter_insert_abs_trigger"
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.uaword	.LFB110
	.uaword	.LFE110
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x14ad
	.uleb128 0x24
	.uaword	.LASF4
	.byte	0x1
	.byte	0x47
	.uaword	0xda9
	.uaword	.LLST0
	.uleb128 0x25
	.uaword	.LASF7
	.byte	0x1
	.byte	0x48
	.uaword	0x137a
	.byte	0x1
	.byte	0x65
	.uleb128 0x26
	.string	"when"
	.byte	0x1
	.byte	0x49
	.uaword	0x628
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.uaword	.LASF5
	.byte	0x1
	.byte	0x4d
	.uaword	0x14ad
	.byte	0x1
	.byte	0x62
	.uleb128 0x28
	.uaword	.LASF8
	.byte	0x1
	.byte	0x4f
	.uaword	0x137a
	.uaword	.LLST1
	.uleb128 0x28
	.uaword	.LASF9
	.byte	0x1
	.byte	0x51
	.uaword	0x137a
	.uaword	.LLST2
	.uleb128 0x27
	.uaword	.LASF10
	.byte	0x1
	.byte	0x53
	.uaword	0x12ca
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.string	"work_not_done"
	.byte	0x1
	.byte	0x55
	.uaword	0x268
	.uaword	.LLST3
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x29
	.string	"current_when"
	.byte	0x1
	.byte	0x5b
	.uaword	0x12ca
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0xcd3
	.uleb128 0x23
	.byte	0x1
	.string	"osEE_counter_insert_rel_trigger"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	.LFB109
	.uaword	.LFE109
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1582
	.uleb128 0x24
	.uaword	.LASF4
	.byte	0x1
	.byte	0x3b
	.uaword	0xda9
	.uaword	.LLST5
	.uleb128 0x24
	.uaword	.LASF7
	.byte	0x1
	.byte	0x3c
	.uaword	0x137a
	.uaword	.LLST6
	.uleb128 0x2b
	.string	"delta"
	.byte	0x1
	.byte	0x3d
	.uaword	0x628
	.uaword	.LLST7
	.uleb128 0x2c
	.uaword	0x1247
	.uaword	.LBB41
	.uaword	.LBE41
	.byte	0x1
	.byte	0x40
	.uaword	0x1569
	.uleb128 0x2d
	.uaword	0x1278
	.uaword	.LLST8
	.uleb128 0x2d
	.uaword	0x126c
	.uaword	.LLST9
	.uleb128 0x2e
	.uaword	.LBB42
	.uaword	.LBE42
	.uleb128 0x2f
	.uaword	0x1286
	.uaword	.LLST10
	.uleb128 0x2f
	.uaword	0x1293
	.uaword	.LLST11
	.uleb128 0x2f
	.uaword	0x129f
	.uaword	.LLST12
	.uleb128 0x2f
	.uaword	0x12ab
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL24
	.uaword	0x13df
	.uleb128 0x31
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x31
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"osEE_counter_cancel_trigger"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.uaword	.LFB111
	.uaword	.LFE111
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1611
	.uleb128 0x25
	.uaword	.LASF4
	.byte	0x1
	.byte	0x81
	.uaword	0xda9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.uaword	.LASF7
	.byte	0x1
	.byte	0x82
	.uaword	0x137a
	.byte	0x1
	.byte	0x65
	.uleb128 0x28
	.uaword	.LASF5
	.byte	0x1
	.byte	0x86
	.uaword	0x14ad
	.uaword	.LLST14
	.uleb128 0x27
	.uaword	.LASF3
	.byte	0x1
	.byte	0x88
	.uaword	0x1611
	.byte	0x1
	.byte	0x62
	.uleb128 0x28
	.uaword	.LASF9
	.byte	0x1
	.byte	0x8a
	.uaword	0x137a
	.uaword	.LLST15
	.uleb128 0x2e
	.uaword	.LBB43
	.uaword	.LBE43
	.uleb128 0x28
	.uaword	.LASF8
	.byte	0x1
	.byte	0x90
	.uaword	0x137a
	.uaword	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x1616
	.uleb128 0xd
	.byte	0x4
	.uaword	0x161c
	.uleb128 0x11
	.uaword	0xee9
	.uleb128 0x20
	.string	"osEE_counter_handle_alarm"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.byte	0x1
	.uaword	0x1698
	.uleb128 0x21
	.uaword	.LASF4
	.byte	0x1
	.byte	0xf1
	.uaword	0xda9
	.uleb128 0x21
	.uaword	.LASF11
	.byte	0x1
	.byte	0xf2
	.uaword	0x137a
	.uleb128 0x32
	.uaword	.LASF6
	.byte	0x1
	.byte	0xf5
	.uaword	0x1241
	.uleb128 0x33
	.string	"p_trigger_to_be_handled_cb"
	.byte	0x1
	.byte	0xf6
	.uaword	0xf00
	.uleb128 0x34
	.uleb128 0x1e
	.string	"cycle"
	.byte	0x1
	.uahalf	0x102
	.uaword	0x12ca
	.byte	0
	.byte	0
	.uleb128 0x35
	.string	"osEE_handle_action"
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.uaword	0x8de
	.byte	0x1
	.uaword	0x1709
	.uleb128 0x36
	.string	"p_action"
	.byte	0x1
	.byte	0xa1
	.uaword	0x1709
	.uleb128 0x33
	.string	"ev"
	.byte	0x1
	.byte	0xa4
	.uaword	0x8de
	.uleb128 0x37
	.uaword	0x16e3
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0xa9
	.uaword	0x170f
	.byte	0
	.uleb128 0x34
	.uleb128 0x33
	.string	"p_sn"
	.byte	0x1
	.byte	0xb5
	.uaword	0x9f6
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0xb7
	.uaword	0x170f
	.uleb128 0x33
	.string	"mask"
	.byte	0x1
	.byte	0xb9
	.uaword	0x1714
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xdf0
	.uleb128 0x11
	.uaword	0xbf9
	.uleb128 0x11
	.uaword	0x67c
	.uleb128 0x38
	.byte	0x1
	.string	"osEE_counter_increment"
	.byte	0x1
	.uahalf	0x1d1
	.byte	0x1
	.uaword	.LFB114
	.uaword	.LFE114
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x194a
	.uleb128 0x39
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0xda9
	.uaword	.LLST17
	.uleb128 0x3a
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x14ad
	.uaword	.LLST18
	.uleb128 0x2e
	.uaword	.LBB58
	.uaword	.LBE58
	.uleb128 0x3a
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1e9
	.uaword	0x628
	.uaword	.LLST19
	.uleb128 0x3b
	.string	"p_triggered_db"
	.byte	0x1
	.uahalf	0x1ea
	.uaword	0x137a
	.uaword	.LLST20
	.uleb128 0x1f
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1ef
	.uaword	0x12f3
	.uleb128 0x2e
	.uaword	.LBB59
	.uaword	.LBE59
	.uleb128 0x3b
	.string	"p_triggered_cb"
	.byte	0x1
	.uahalf	0x207
	.uaword	0x1616
	.uaword	.LLST21
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x3a
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x20c
	.uaword	0x137a
	.uaword	.LLST22
	.uleb128 0x3a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x20e
	.uaword	0x137a
	.uaword	.LLST23
	.uleb128 0x3c
	.uaword	.Ldebug_ranges0+0x30
	.uaword	0x1811
	.uleb128 0x3b
	.string	"p_current_cb"
	.byte	0x1
	.uahalf	0x213
	.uaword	0x194a
	.uaword	.LLST24
	.byte	0
	.uleb128 0x2e
	.uaword	.LBB63
	.uaword	.LBE63
	.uleb128 0x3a
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x229
	.uaword	0x194f
	.uaword	.LLST25
	.uleb128 0x3d
	.uaword	0x1621
	.uaword	.LBB64
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x23f
	.uleb128 0x2d
	.uaword	0x164f
	.uaword	.LLST26
	.uleb128 0x2d
	.uaword	0x1644
	.uaword	.LLST27
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x3e
	.uaword	0x165a
	.uleb128 0x2f
	.uaword	0x1665
	.uaword	.LLST28
	.uleb128 0x3f
	.uaword	0x1698
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xf8
	.uaword	0x191d
	.uleb128 0x2d
	.uaword	0x16b8
	.uaword	.LLST29
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x40
	.uaword	0x16c8
	.byte	0x2
	.byte	0x8e
	.sleb128 -1
	.uleb128 0x3c
	.uaword	.Ldebug_ranges0+0x78
	.uaword	0x18d1
	.uleb128 0x2f
	.uaword	0x16e4
	.uaword	.LLST30
	.uleb128 0x2f
	.uaword	0x16f0
	.uaword	.LLST31
	.uleb128 0x2f
	.uaword	0x16fb
	.uaword	.LLST32
	.uleb128 0x41
	.uaword	.LVL55
	.uaword	0x1980
	.uaword	0x18c0
	.uleb128 0x31
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 -1
	.byte	0
	.uleb128 0x30
	.uaword	.LVL56
	.uaword	0x19bd
	.uleb128 0x31
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x42
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0x1912
	.uleb128 0x2f
	.uaword	0x16d7
	.uaword	.LLST33
	.uleb128 0x41
	.uaword	.LVL52
	.uaword	0x19f4
	.uaword	0x18fb
	.uleb128 0x31
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL53
	.uaword	0x1a1c
	.uleb128 0x31
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x31
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	.LVL57
	.uaword	0x1719
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x2f
	.uaword	0x1688
	.uaword	.LLST34
	.uleb128 0x30
	.uaword	.LVL62
	.uaword	0x14b2
	.uleb128 0x31
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x31
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8e
	.sleb128 -12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0xf00
	.uleb128 0x11
	.uaword	0x137a
	.uleb128 0x44
	.string	"osEE_kdb_var"
	.byte	0xa
	.byte	0x42
	.uaword	0x120f
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"osEE_cdb_var"
	.byte	0xa
	.byte	0x5b
	.uaword	0x1096
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.byte	0x1
	.string	"osEE_task_event_set_mask"
	.byte	0x2
	.byte	0xc6
	.byte	0x1
	.uaword	0x9f6
	.byte	0x1
	.uaword	0x19b7
	.uleb128 0x46
	.uaword	0xbf9
	.uleb128 0x46
	.uaword	0x67c
	.uleb128 0x46
	.uaword	0x19b7
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x8de
	.uleb128 0x45
	.byte	0x1
	.string	"osEE_scheduler_task_unblocked"
	.byte	0xb
	.byte	0x94
	.byte	0x1
	.uaword	0x268
	.byte	0x1
	.uaword	0x19f4
	.uleb128 0x46
	.uaword	0x1339
	.uleb128 0x46
	.uaword	0x9f6
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.string	"osEE_task_activated"
	.byte	0x2
	.byte	0xb0
	.byte	0x1
	.uaword	0x8de
	.byte	0x1
	.uaword	0x1a1c
	.uleb128 0x46
	.uaword	0xbf9
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"osEE_scheduler_task_insert"
	.byte	0xb
	.byte	0x7e
	.byte	0x1
	.uaword	0x268
	.byte	0x1
	.uleb128 0x46
	.uaword	0x1339
	.uleb128 0x46
	.uaword	0xbf9
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-.Ltext0
	.uaword	.LFE110-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL12-.Ltext0
	.uaword	.LFE110-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL14-.Ltext0
	.uaword	.LFE110-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL24-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24-1-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL24-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL24-1-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL24-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24-1-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL24-1-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL24-1-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL24-1-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL24-1-.Ltext0
	.uahalf	0x5
	.byte	0x84
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL32-.Ltext0
	.uaword	.LFE111-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -12
	.uaword	.LVL66-.Ltext0
	.uaword	.LFE114-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL50-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL66-.Ltext0
	.uaword	.LFE114-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL65-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL65-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL62-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL64-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL65-.Ltext0
	.uahalf	0x3
	.byte	0x8c
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL56-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-1-.Ltext0
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-1-.Ltext0
	.uahalf	0x2
	.byte	0x8c
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL62-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL64-.Ltext0
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB39-.Ltext0
	.uaword	.LBE39-.Ltext0
	.uaword	.LBB40-.Ltext0
	.uaword	.LBE40-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB60-.Ltext0
	.uaword	.LBE60-.Ltext0
	.uaword	.LBB77-.Ltext0
	.uaword	.LBE77-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB61-.Ltext0
	.uaword	.LBE61-.Ltext0
	.uaword	.LBB62-.Ltext0
	.uaword	.LBE62-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB64-.Ltext0
	.uaword	.LBE64-.Ltext0
	.uaword	.LBB76-.Ltext0
	.uaword	.LBE76-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB66-.Ltext0
	.uaword	.LBE66-.Ltext0
	.uaword	.LBB73-.Ltext0
	.uaword	.LBE73-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB68-.Ltext0
	.uaword	.LBE68-.Ltext0
	.uaword	.LBB70-.Ltext0
	.uaword	.LBE70-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB72-.Ltext0
	.uaword	.LBE72-.Ltext0
	.uaword	.LBB74-.Ltext0
	.uaword	.LBE74-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"p_next"
.LASF8:
	.string	"p_previous"
.LASF9:
	.string	"p_current"
.LASF6:
	.string	"p_cdb"
.LASF2:
	.string	"p_tdb"
.LASF11:
	.string	"p_trigger_to_be_handled_db"
.LASF3:
	.string	"p_trigger_cb"
.LASF5:
	.string	"p_counter_cb"
.LASF7:
	.string	"p_trigger_db"
.LASF0:
	.string	"maxallowedvalue"
.LASF4:
	.string	"p_counter_db"
.LASF10:
	.string	"counter_value"
	.extern	osEE_scheduler_task_unblocked,STT_FUNC,0
	.extern	osEE_task_event_set_mask,STT_FUNC,0
	.extern	osEE_scheduler_task_insert,STT_FUNC,0
	.extern	osEE_task_activated,STT_FUNC,0
	.extern	osEE_kdb_var,STT_OBJECT,36
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
