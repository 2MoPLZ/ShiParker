	.file	"ee_oo_sched_partitioned.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	osEE_scheduler_task_activated
	.type	osEE_scheduler_task_activated, @function
osEE_scheduler_task_activated:
.LFB104:
	.file 1 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_oo_sched_partitioned.c"
	.loc 1 100 0
.LVL0:
	mov.aa	%a14, %SP
.LCFI0:
	mov.aa	%a6, %a5
	.loc 1 102 0
	ld.a	%a2, [%a5] 12
.LVL1:
	.loc 1 105 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL2:
	.loc 1 106 0
	ld.a	%a4, [%a15]0
.LVL3:
	.loc 1 107 0
	ld.a	%a3, [%a4] 12
.LVL4:
	.loc 1 133 0
	ld.bu	%d2, [%a3] 1
	ld.bu	%d15, [%a2] 1
	jge.u	%d2, %d15, .L2
.LVL5:
.LBB76:
.LBB77:
.LBB78:
	.file 2 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_scheduler_types.h"
	.loc 2 100 0
	ld.a	%a2, [%a15] 8
.LVL6:
	.loc 2 101 0
	ld.w	%d15, [%a2]0
	st.w	[%a15] 8, %d15
.LVL7:
	.loc 2 102 0
	mov	%d2, 0
	st.w	[%a2]0, %d2
.LBE78:
.LBE77:
	.loc 1 149 0
	mov	%d15, 2
	st.b	[%a3] 2, %d15
	.loc 1 152 0
	st.a	[%a2] 4, %a5
	.loc 1 153 0
	ld.w	%d15, [%a15] 12
	st.w	[%a2]0, %d15
	.loc 1 154 0
	st.a	[%a15] 12, %a2
	.loc 1 155 0
	st.a	[%a15]0, %a5
	.loc 1 156 0
	ld.a	%a15, [%a5] 12
.LVL8:
.LBB79:
.LBB80:
	.file 3 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_kernel.h"
	.loc 3 211 0
	st.w	[%a15] 12, %d2
.LVL9:
.LBE80:
.LBE79:
	.loc 1 160 0
	call	osEE_change_context_from_running
.LVL10:
	.loc 1 162 0
	mov	%d2, 1
.LBE76:
	ret
.LVL11:
.L2:
.LBB81:
.LBB82:
	.loc 1 83 0
	ld.bu	%d15, [%a2] 2
	jnz	%d15, .L4
	.loc 1 84 0
	mov	%d15, 1
	st.b	[%a2] 2, %d15
.LVL12:
.LBB83:
.LBB84:
	.loc 3 211 0
	mov	%d15, 0
	st.w	[%a2] 12, %d15
.LVL13:
.L4:
.LBE84:
.LBE83:
.LBB85:
.LBB86:
	.loc 2 100 0
	ld.a	%a5, [%a15] 8
.LVL14:
	.loc 2 101 0
	ld.w	%d15, [%a5]0
	st.w	[%a15] 8, %d15
	.loc 2 102 0
	mov	%d15, 0
	st.w	[%a5]0, %d15
.LBE86:
.LBE85:
	.loc 1 88 0
	lea	%a4, [%a15] 4
.LVL15:
	call	osEE_scheduler_rq_insert
.LVL16:
.LBE82:
.LBE81:
	.loc 1 169 0
	mov	%d2, 0
.LVL17:
	.loc 1 173 0
	ret
.LFE104:
	.size	osEE_scheduler_task_activated, .-osEE_scheduler_task_activated
	.align 1
	.global	osEE_scheduler_task_insert
	.type	osEE_scheduler_task_insert, @function
osEE_scheduler_task_insert:
.LFB105:
	.loc 1 181 0
.LVL18:
	mov.aa	%a14, %SP
.LCFI1:
	mov.aa	%a6, %a5
	.loc 1 184 0
	ld.a	%a15, [%a5] 12
.LVL19:
	.loc 1 188 0
	movh.a	%a2, hi:osEE_cdb_var
	ld.a	%a4, [%a2] lo:osEE_cdb_var
.LVL20:
.LBB93:
.LBB94:
	.loc 1 83 0
	ld.bu	%d15, [%a15] 2
	jnz	%d15, .L6
	.loc 1 84 0
	mov	%d15, 1
	st.b	[%a15] 2, %d15
.LVL21:
.LBB95:
.LBB96:
	.loc 3 211 0
	mov	%d15, 0
	st.w	[%a15] 12, %d15
.LVL22:
.L6:
.LBE96:
.LBE95:
.LBB97:
.LBB98:
	.loc 2 100 0
	ld.a	%a5, [%a4] 8
.LVL23:
	.loc 2 101 0
	ld.w	%d15, [%a5]0
	st.w	[%a4] 8, %d15
	.loc 2 102 0
	mov	%d15, 0
	st.w	[%a5]0, %d15
.LBE98:
.LBE97:
	.loc 1 88 0
	add.a	%a4, 4
.LVL24:
	call	osEE_scheduler_rq_insert
.LVL25:
.LBE94:
.LBE93:
	.loc 1 221 0
	ret
.LFE105:
	.size	osEE_scheduler_task_insert, .-osEE_scheduler_task_insert
	.align 1
	.global	osEE_scheduler_task_unblocked
	.type	osEE_scheduler_task_unblocked, @function
osEE_scheduler_task_unblocked:
.LFB106:
	.loc 1 256 0
.LVL26:
	mov.aa	%a14, %SP
.LCFI2:
.LVL27:
	.loc 1 261 0
	ld.a	%a6, [%a5] 4
.LVL28:
	.loc 1 263 0
	ld.a	%a15, [%a6] 12
.LVL29:
	.loc 1 267 0
	movh.a	%a2, hi:osEE_cdb_var
	ld.a	%a12, [%a2] lo:osEE_cdb_var
.LVL30:
	.loc 1 269 0
	mov	%d15, 2
	st.b	[%a15] 2, %d15
	.loc 1 270 0
	ld.bu	%d15, [%a6] 28
	st.b	[%a15] 1, %d15
.LVL31:
	.loc 1 277 0
	lea	%a4, [%a12] 4
.LVL32:
	call	osEE_scheduler_rq_insert
.LVL33:
	.loc 1 259 0
	mov	%d15, 0
	.loc 1 280 0
	jne	%d2, 1, .L8
	.loc 1 282 0
	ld.a	%a2, [%a12]0
	ld.a	%a2, [%a2] 12
	.loc 1 281 0
	ld.bu	%d15, [%a15] 1
	ld.bu	%d2, [%a2] 1
.LVL34:
	lt.u	%d15, %d2, %d15
.LVL35:
.L8:
	.loc 1 302 0
	mov	%d2, %d15
	ret
.LFE106:
	.size	osEE_scheduler_task_unblocked, .-osEE_scheduler_task_unblocked
	.align 1
	.global	osEE_scheduler_task_terminated
	.type	osEE_scheduler_task_terminated, @function
osEE_scheduler_task_terminated:
.LFB107:
	.loc 1 310 0
.LVL36:
	mov.aa	%a14, %SP
.LCFI3:
	.loc 1 312 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL37:
.LBB99:
	.loc 1 320 0
	ld.a	%a13, [%a15]0
.LVL38:
	.loc 1 322 0
	ld.a	%a12, [%a13] 12
.LVL39:
	.loc 1 325 0
	st.a	[%a5]0, %a13
	.loc 1 327 0
	ld.bu	%d15, [%a12] 2
	jne	%d15, 4, .L11
.LBB100:
	.loc 1 330 0
	movh.a	%a4, hi:osEE_cdb_var
.LVL40:
	lea	%a4, [%a4] lo:osEE_cdb_var
	lea	%a5, [%a15] 4
.LVL41:
	call	osEE_scheduler_core_pop_running
.LVL42:
	mov.d	%d8, %a2
.LVL43:
	.loc 1 332 0
	ld.w	%d15, [%a15]0
.LVL44:
	.loc 1 336 0
	mov.d	%d2, %a13
	jeq	%d2, %d15, .L12
	.loc 1 337 0
	mov.aa	%a4, %a13
	call	osEE_task_end
.LVL45:
	j	.L13
.LVL46:
.L12:
	.loc 1 344 0
	ld.bu	%d2, [%a12]0
.LVL47:
	add	%d2, -1
	st.b	[%a12]0, %d2
.L13:
.LVL48:
.LBB101:
.LBB102:
	.loc 2 124 0
	ld.w	%d2, [%a15] 8
	mov.a	%a2, %d8
	st.w	[%a2]0, %d2
	.loc 2 125 0
	st.w	[%a15] 8, %d8
	j	.L14
.LVL49:
.L11:
.LBE102:
.LBE101:
.LBE100:
.LBB103:
	.loc 1 351 0
	ld.a	%a5, [%a15] 12
.LVL50:
	.loc 1 355 0
	ld.w	%d2, [%a5]0
	st.w	[%a15] 12, %d2
	.loc 1 361 0
	ld.bu	%d15, [%a13] 28
	st.b	[%a12] 1, %d15
	.loc 1 362 0
	mov	%d15, 1
	st.b	[%a12] 2, %d15
	.loc 1 366 0
	ld.bu	%d15, [%a12]0
	jne	%d15, 1, .L15
.LVL51:
.LBB104:
.LBB105:
	.loc 3 211 0
	mov	%d15, 0
	st.w	[%a12] 12, %d15
.LVL52:
.L15:
.LBE105:
.LBE104:
	.loc 1 371 0
	lea	%a12, [%a15] 4
.LVL53:
	mov.aa	%a4, %a12
.LVL54:
	mov.aa	%a6, %a13
	call	osEE_scheduler_rq_insert
.LVL55:
.LBB106:
	.loc 1 375 0
	movh.a	%a4, hi:osEE_cdb_var
	lea	%a4, [%a4] lo:osEE_cdb_var
	mov.aa	%a5, %a12
	call	osEE_scheduler_core_rq_preempt_stk
.LVL56:
	.loc 1 377 0
	jnz.a	%a2, .L16
	.loc 1 381 0
	ld.a	%a2, [%a15] 12
.LVL57:
	ld.w	%d15, [%a2] 4
.LVL58:
	.loc 1 382 0
	st.w	[%a15]0, %d15
	j	.L14
.LVL59:
.L16:
	.loc 1 384 0
	ld.w	%d15, [%a15]0
.LVL60:
.L14:
.LBE106:
.LBE103:
.LBE99:
	.loc 1 393 0
	mov.a	%a2, %d15
	ret
.LFE107:
	.size	osEE_scheduler_task_terminated, .-osEE_scheduler_task_terminated
	.align 1
	.global	osEE_scheduler_task_preemption_point
	.type	osEE_scheduler_task_preemption_point, @function
osEE_scheduler_task_preemption_point:
.LFB108:
	.loc 1 400 0
.LVL61:
	mov.aa	%a14, %SP
.LCFI4:
	.loc 1 404 0
	movh.a	%a4, hi:osEE_cdb_var
.LVL62:
	ld.a	%a15, [%a4] lo:osEE_cdb_var
.LVL63:
	.loc 1 411 0
	lea	%a4, [%a4] lo:osEE_cdb_var
	lea	%a5, [%a15] 4
	call	osEE_scheduler_core_rq_preempt_stk
.LVL64:
	.loc 1 423 0
	mov	%d2, 0
	.loc 1 416 0
	jz.a	%a2, .L18
.LVL65:
.LBB107:
	.loc 1 419 0
	mov.aa	%a4, %a2
	ld.a	%a5, [%a15]0
	call	osEE_change_context_from_running
.LVL66:
	.loc 1 421 0
	mov	%d2, 1
.LVL67:
.L18:
.LBE107:
	.loc 1 427 0
	ret
.LFE108:
	.size	osEE_scheduler_task_preemption_point, .-osEE_scheduler_task_preemption_point
	.align 1
	.global	osEE_scheduler_task_set_running
	.type	osEE_scheduler_task_set_running, @function
osEE_scheduler_task_set_running:
.LFB109:
	.loc 1 436 0
.LVL68:
	mov.aa	%a14, %SP
.LCFI5:
	.loc 1 438 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL69:
	.loc 1 439 0
	ld.a	%a4, [%a15]0
.LVL70:
	.loc 1 441 0
	ld.w	%d2, [%a15] 12
.LVL71:
	.loc 1 444 0
	ld.a	%a2, [%a4] 12
	ld.bu	%d15, [%a2] 2
	jne	%d15, 4, .L21
	.loc 1 445 0
	mov	%d15, 2
	st.b	[%a2] 2, %d15
.L21:
	.loc 1 447 0
	st.a	[%a15]0, %a5
	.loc 1 451 0
	jnz.a	%a6, .L22
.LVL72:
.LBB108:
.LBB109:
	.loc 2 100 0
	ld.a	%a2, [%a15] 8
.LVL73:
	.loc 2 101 0
	ld.w	%d15, [%a2]0
	st.w	[%a15] 8, %d15
	.loc 2 102 0
	mov	%d15, 0
	st.w	[%a2]0, %d15
.LBE109:
.LBE108:
	.loc 1 454 0
	st.a	[%a15] 12, %a2
.LVL74:
	j	.L23
.LVL75:
.L22:
	.loc 1 457 0
	st.a	[%a15] 12, %a6
.L23:
	.loc 1 461 0
	ld.a	%a2, [%a15] 12
	st.a	[%a2] 4, %a5
	.loc 1 462 0
	ld.a	%a15, [%a15] 12
.LVL76:
	st.w	[%a15]0, %d2
	.loc 1 464 0
	call	osEE_change_context_from_running
.LVL77:
	ret
.LFE109:
	.size	osEE_scheduler_task_set_running, .-osEE_scheduler_task_set_running
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
	.uaword	.LFB105
	.uaword	.LFE105-.LFB105
	.byte	0x4
	.uaword	.LCFI1-.LFB105
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB106
	.uaword	.LFE106-.LFB106
	.byte	0x4
	.uaword	.LCFI2-.LFB106
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB107
	.uaword	.LFE107-.LFB107
	.byte	0x4
	.uaword	.LCFI3-.LFB107
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB108
	.uaword	.LFE108-.LFB108
	.byte	0x4
	.uaword	.LCFI4-.LFB108
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.byte	0x4
	.uaword	.LCFI5-.LFB109
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 6 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 7 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_hal_internal_types.h"
	.file 8 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 9 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_kernel_types.h"
	.file 10 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_scheduler.h"
	.file 11 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_get_kernel_and_core.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x181c
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -O1 -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\TUNNEL~1\\TC275\\erika\\src\\ee_oo_sched_partitioned.c"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"size_t"
	.byte	0x4
	.byte	0xd4
	.uaword	0x174
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
	.byte	0x5
	.byte	0x2a
	.uaword	0x1ae
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
	.byte	0x5
	.byte	0x36
	.uaword	0x1dc
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x5
	.byte	0x50
	.uaword	0x174
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
	.byte	0x6
	.byte	0x48
	.uaword	0x25f
	.uleb128 0x5
	.string	"OSEE_FALSE"
	.sleb128 0
	.uleb128 0x5
	.string	"OSEE_TRUE"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"OsEE_bool"
	.byte	0x6
	.byte	0x4b
	.uaword	0x23d
	.uleb128 0x3
	.string	"OsEE_addr"
	.byte	0x6
	.byte	0x5a
	.uaword	0x281
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x6
	.byte	0x5b
	.uaword	0x1f2
	.uleb128 0x3
	.string	"OsEE_prio"
	.byte	0x6
	.byte	0x8d
	.uaword	0x19f
	.uleb128 0x3
	.string	"OsEE_isr_src_id"
	.byte	0x6
	.byte	0x92
	.uaword	0x1cc
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0x74
	.uaword	0x311
	.uleb128 0x8
	.string	"pcxo"
	.byte	0x7
	.byte	0x75
	.uaword	0x22d
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"pcxs"
	.byte	0x7
	.byte	0x76
	.uaword	0x22d
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"ul"
	.byte	0x7
	.byte	0x7b
	.uaword	0x22d
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"pie"
	.byte	0x7
	.byte	0x7c
	.uaword	0x22d
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"pcpn"
	.byte	0x7
	.byte	0x7d
	.uaword	0x22d
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0x72
	.uaword	0x331
	.uleb128 0xa
	.string	"reg"
	.byte	0x7
	.byte	0x73
	.uaword	0x283
	.uleb128 0xa
	.string	"bits"
	.byte	0x7
	.byte	0x82
	.uaword	0x2bb
	.byte	0
	.uleb128 0x3
	.string	"OsEE_pcxi"
	.byte	0x7
	.byte	0x83
	.uaword	0x311
	.uleb128 0xb
	.string	"OsEE_CTX_tag"
	.byte	0x10
	.byte	0x7
	.byte	0xf3
	.uaword	0x38c
	.uleb128 0xc
	.string	"p_ctx"
	.byte	0x7
	.byte	0xf4
	.uaword	0x38c
	.byte	0
	.uleb128 0xc
	.string	"dummy"
	.byte	0x7
	.byte	0xf5
	.uaword	0x283
	.byte	0x4
	.uleb128 0xc
	.string	"pcxi"
	.byte	0x7
	.byte	0xf6
	.uaword	0x331
	.byte	0x8
	.uleb128 0xc
	.string	"ra"
	.byte	0x7
	.byte	0xf7
	.uaword	0x270
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x342
	.uleb128 0x3
	.string	"OsEE_CTX"
	.byte	0x7
	.byte	0xf8
	.uaword	0x342
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0xfb
	.uaword	0x3b9
	.uleb128 0xc
	.string	"p_tos"
	.byte	0x7
	.byte	0xfc
	.uaword	0x3b9
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x392
	.uleb128 0x3
	.string	"OsEE_SCB"
	.byte	0x7
	.byte	0xfd
	.uaword	0x3a2
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.uahalf	0x100
	.uaword	0x3fc
	.uleb128 0xf
	.string	"p_bos"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x3b9
	.byte	0
	.uleb128 0xf
	.string	"stack_size"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x166
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"OsEE_SDB"
	.byte	0x7
	.uahalf	0x106
	.uaword	0x40d
	.uleb128 0x11
	.uaword	0x3cf
	.uleb128 0xe
	.byte	0xc
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x44c
	.uleb128 0xf
	.string	"p_sdb"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x44c
	.byte	0
	.uleb128 0xf
	.string	"p_scb"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x452
	.byte	0x4
	.uleb128 0xf
	.string	"isr2_src"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x2a4
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x3fc
	.uleb128 0xd
	.byte	0x4
	.uaword	0x3bf
	.uleb128 0x10
	.string	"OsEE_HDB"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x469
	.uleb128 0x11
	.uaword	0x412
	.uleb128 0x3
	.string	"AppModeType"
	.byte	0x8
	.byte	0x60
	.uaword	0x19f
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x8
	.byte	0x78
	.uaword	0x283
	.uleb128 0x3
	.string	"TaskPrio"
	.byte	0x8
	.byte	0xc8
	.uaword	0x293
	.uleb128 0x3
	.string	"TaskActivation"
	.byte	0x8
	.byte	0xf4
	.uaword	0x19f
	.uleb128 0x10
	.string	"TaskFunc"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x4c8
	.uleb128 0xd
	.byte	0x4
	.uaword	0x4ce
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.uahalf	0x145
	.uaword	0x537
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
	.byte	0x8
	.uahalf	0x153
	.uaword	0x4d0
	.uleb128 0x10
	.string	"TaskExecutionType"
	.byte	0x8
	.uahalf	0x157
	.uaword	0x537
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x5f0
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
	.byte	0x8
	.uahalf	0x16e
	.uaword	0x568
	.uleb128 0x10
	.string	"TaskStateType"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x5f0
	.uleb128 0x10
	.string	"EventMaskType"
	.byte	0x8
	.uahalf	0x237
	.uaword	0x283
	.uleb128 0x10
	.string	"MemSize"
	.byte	0x8
	.uahalf	0x2a3
	.uaword	0x166
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.uahalf	0x2b1
	.uaword	0x868
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
	.byte	0x8
	.uahalf	0x2d4
	.uaword	0x645
	.uleb128 0x10
	.string	"StatusType"
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x868
	.uleb128 0xb
	.string	"OsEE_SN_tag"
	.byte	0x8
	.byte	0x2
	.byte	0x4b
	.uaword	0x8c6
	.uleb128 0xc
	.string	"p_next"
	.byte	0x2
	.byte	0x4d
	.uaword	0x8c6
	.byte	0
	.uleb128 0xc
	.string	"p_tdb"
	.byte	0x2
	.byte	0x4f
	.uaword	0x975
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x894
	.uleb128 0x14
	.string	"OsEE_TDB_tag"
	.byte	0x20
	.byte	0x9
	.uahalf	0x108
	.uaword	0x975
	.uleb128 0xf
	.string	"hdb"
	.byte	0x9
	.uahalf	0x10b
	.uaword	0x458
	.byte	0
	.uleb128 0xf
	.string	"p_tcb"
	.byte	0x9
	.uahalf	0x10e
	.uaword	0xb77
	.byte	0xc
	.uleb128 0xf
	.string	"tid"
	.byte	0x9
	.uahalf	0x110
	.uaword	0x481
	.byte	0x10
	.uleb128 0xf
	.string	"task_type"
	.byte	0x9
	.uahalf	0x112
	.uaword	0x54e
	.byte	0x14
	.uleb128 0xf
	.string	"task_func"
	.byte	0x9
	.uahalf	0x114
	.uaword	0x4b7
	.byte	0x18
	.uleb128 0xf
	.string	"ready_prio"
	.byte	0x9
	.uahalf	0x117
	.uaword	0x491
	.byte	0x1c
	.uleb128 0xf
	.string	"dispatch_prio"
	.byte	0x9
	.uahalf	0x11a
	.uaword	0x491
	.byte	0x1d
	.uleb128 0xf
	.string	"max_num_of_act"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x4a1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x97b
	.uleb128 0x11
	.uaword	0x8cc
	.uleb128 0x3
	.string	"OsEE_SN"
	.byte	0x2
	.byte	0x50
	.uaword	0x894
	.uleb128 0x3
	.string	"OsEE_RQ"
	.byte	0x2
	.byte	0xd5
	.uaword	0x99e
	.uleb128 0xd
	.byte	0x4
	.uaword	0x980
	.uleb128 0x3
	.string	"OsEE_byte"
	.byte	0x9
	.byte	0x53
	.uaword	0x19f
	.uleb128 0x4
	.byte	0x1
	.byte	0x9
	.byte	0x73
	.uaword	0xa1c
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
	.uaword	0x9b5
	.uleb128 0x7
	.byte	0xc
	.byte	0x9
	.byte	0x90
	.uaword	0xa70
	.uleb128 0xc
	.string	"p_next"
	.byte	0x9
	.byte	0x94
	.uaword	0xaa0
	.byte	0
	.uleb128 0xc
	.string	"prev_prio"
	.byte	0x9
	.byte	0x97
	.uaword	0x491
	.byte	0x4
	.uleb128 0xc
	.string	"p_owner"
	.byte	0x9
	.byte	0x9a
	.uaword	0x975
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"OsEE_MDB_tag"
	.byte	0x8
	.byte	0x9
	.byte	0xb5
	.uaword	0xaa0
	.uleb128 0xc
	.string	"p_cb"
	.byte	0x9
	.byte	0xb7
	.uaword	0xabb
	.byte	0
	.uleb128 0xc
	.string	"prio"
	.byte	0x9
	.byte	0xc3
	.uaword	0x491
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xaa6
	.uleb128 0x11
	.uaword	0xa70
	.uleb128 0x3
	.string	"OsEE_MCB"
	.byte	0x9
	.byte	0x9b
	.uaword	0xa36
	.uleb128 0xd
	.byte	0x4
	.uaword	0xaab
	.uleb128 0x3
	.string	"OsEE_MDB"
	.byte	0x9
	.byte	0xce
	.uaword	0xaa6
	.uleb128 0x7
	.byte	0x14
	.byte	0x9
	.byte	0xe0
	.uaword	0xb60
	.uleb128 0xc
	.string	"current_num_of_act"
	.byte	0x9
	.byte	0xe4
	.uaword	0x4a1
	.byte	0
	.uleb128 0xc
	.string	"current_prio"
	.byte	0x9
	.byte	0xea
	.uaword	0x491
	.byte	0x1
	.uleb128 0xc
	.string	"status"
	.byte	0x9
	.byte	0xec
	.uaword	0x609
	.byte	0x2
	.uleb128 0xc
	.string	"p_last_m"
	.byte	0x9
	.byte	0xef
	.uaword	0xb60
	.byte	0x4
	.uleb128 0xc
	.string	"wait_mask"
	.byte	0x9
	.byte	0xf3
	.uaword	0x61f
	.byte	0x8
	.uleb128 0xc
	.string	"event_mask"
	.byte	0x9
	.byte	0xf5
	.uaword	0x61f
	.byte	0xc
	.uleb128 0xc
	.string	"p_own_sn"
	.byte	0x9
	.byte	0xfb
	.uaword	0x99e
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xac1
	.uleb128 0x10
	.string	"OsEE_TCB"
	.byte	0x9
	.uahalf	0x101
	.uaword	0xad1
	.uleb128 0xd
	.byte	0x4
	.uaword	0xb66
	.uleb128 0x10
	.string	"OsEE_TDB"
	.byte	0x9
	.uahalf	0x122
	.uaword	0x97b
	.uleb128 0xd
	.byte	0x4
	.uaword	0xb7d
	.uleb128 0xe
	.byte	0x20
	.byte	0x9
	.uahalf	0x2d9
	.uaword	0xc96
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x2dc
	.uaword	0xb8e
	.byte	0
	.uleb128 0xf
	.string	"rq"
	.byte	0x9
	.uahalf	0x2ee
	.uaword	0x98f
	.byte	0x4
	.uleb128 0xf
	.string	"p_free_sn"
	.byte	0x9
	.uahalf	0x2f0
	.uaword	0x99e
	.byte	0x8
	.uleb128 0xf
	.string	"p_stk_sn"
	.byte	0x9
	.uahalf	0x2ff
	.uaword	0x99e
	.byte	0xc
	.uleb128 0xf
	.string	"os_status"
	.byte	0x9
	.uahalf	0x301
	.uaword	0xc96
	.byte	0x10
	.uleb128 0xf
	.string	"app_mode"
	.byte	0x9
	.uahalf	0x305
	.uaword	0x46e
	.byte	0x11
	.uleb128 0xf
	.string	"last_error"
	.byte	0x9
	.uahalf	0x307
	.uaword	0x881
	.byte	0x12
	.uleb128 0xf
	.string	"prev_s_isr_all_status"
	.byte	0x9
	.uahalf	0x327
	.uaword	0x283
	.byte	0x14
	.uleb128 0xf
	.string	"prev_s_isr_os_status"
	.byte	0x9
	.uahalf	0x329
	.uaword	0x283
	.byte	0x18
	.uleb128 0xf
	.string	"s_isr_all_cnt"
	.byte	0x9
	.uahalf	0x32b
	.uaword	0x9a4
	.byte	0x1c
	.uleb128 0xf
	.string	"s_isr_os_cnt"
	.byte	0x9
	.uahalf	0x32d
	.uaword	0x9a4
	.byte	0x1d
	.uleb128 0xf
	.string	"d_isr_all_cnt"
	.byte	0x9
	.uahalf	0x330
	.uaword	0x9a4
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.uaword	0xa1c
	.uleb128 0x10
	.string	"OsEE_CCB"
	.byte	0x9
	.uahalf	0x33a
	.uaword	0xb94
	.uleb128 0xe
	.byte	0x8
	.byte	0x9
	.uahalf	0x344
	.uaword	0xcd8
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x34a
	.uaword	0xcd8
	.byte	0
	.uleb128 0xf
	.string	"p_idle_task"
	.byte	0x9
	.uahalf	0x354
	.uaword	0xb8e
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xc9b
	.uleb128 0x10
	.string	"OsEE_CDB"
	.byte	0x9
	.uahalf	0x36a
	.uaword	0xcef
	.uleb128 0x11
	.uaword	0xcac
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.uahalf	0x36f
	.uaword	0xd0d
	.uleb128 0xf
	.string	"dummy"
	.byte	0x9
	.uahalf	0x3b1
	.uaword	0x283
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"OsEE_KCB"
	.byte	0x9
	.uahalf	0x3b3
	.uaword	0xcf4
	.uleb128 0xe
	.byte	0x14
	.byte	0x9
	.uahalf	0x3c3
	.uaword	0xd99
	.uleb128 0xf
	.string	"p_kcb"
	.byte	0x9
	.uahalf	0x3c5
	.uaword	0xd99
	.byte	0
	.uleb128 0xf
	.string	"p_tdb_ptr_array"
	.byte	0x9
	.uahalf	0x3d1
	.uaword	0xdaa
	.byte	0x4
	.uleb128 0xf
	.string	"tdb_array_size"
	.byte	0x9
	.uahalf	0x3d4
	.uaword	0x635
	.byte	0x8
	.uleb128 0xf
	.string	"p_res_ptr_array"
	.byte	0x9
	.uahalf	0x3e0
	.uaword	0xdbb
	.byte	0xc
	.uleb128 0xf
	.string	"res_array_size"
	.byte	0x9
	.uahalf	0x3e2
	.uaword	0x635
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xd0d
	.uleb128 0x17
	.uaword	0x975
	.uaword	0xdaa
	.uleb128 0x18
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xd9f
	.uleb128 0x17
	.uaword	0xaa0
	.uaword	0xdbb
	.uleb128 0x18
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xdb0
	.uleb128 0x10
	.string	"OsEE_KDB"
	.byte	0x9
	.uahalf	0x3fc
	.uaword	0xdd2
	.uleb128 0x11
	.uaword	0xd1e
	.uleb128 0x3
	.string	"OsEE_preempt"
	.byte	0xa
	.byte	0x50
	.uaword	0xb7d
	.uleb128 0x19
	.string	"osEE_get_curr_core"
	.byte	0xb
	.byte	0x72
	.byte	0x1
	.uaword	0xe07
	.byte	0x3
	.uleb128 0xd
	.byte	0x4
	.uaword	0xcde
	.uleb128 0x1a
	.string	"osEE_task_event_reset_mask"
	.byte	0x3
	.byte	0xce
	.byte	0x1
	.byte	0x3
	.uaword	0xe3f
	.uleb128 0x1b
	.string	"p_tcb"
	.byte	0x3
	.byte	0xd0
	.uaword	0xb77
	.byte	0
	.uleb128 0x1c
	.string	"osEE_sn_alloc"
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.uaword	0x99e
	.byte	0x3
	.uaword	0xe7c
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x2
	.byte	0x5f
	.uaword	0xe7c
	.uleb128 0x1e
	.string	"p_sn_allocated"
	.byte	0x2
	.byte	0x62
	.uaword	0x99e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x99e
	.uleb128 0x1c
	.string	"osEE_task_get_curr_core"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	0xe07
	.byte	0x3
	.uaword	0xeb5
	.uleb128 0x1b
	.string	"p_tdb"
	.byte	0x1
	.byte	0x3b
	.uaword	0xb8e
	.byte	0
	.uleb128 0x1a
	.string	"osEE_lock_core"
	.byte	0xb
	.byte	0xce
	.byte	0x1
	.byte	0x3
	.uaword	0xed9
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0xb
	.byte	0xce
	.uaword	0xed9
	.byte	0
	.uleb128 0x11
	.uaword	0xe07
	.uleb128 0x1f
	.string	"osEE_unlock_core"
	.byte	0xb
	.uahalf	0x10b
	.byte	0x1
	.byte	0x3
	.uaword	0xf06
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0xb
	.uahalf	0x10b
	.uaword	0xed9
	.byte	0
	.uleb128 0x1a
	.string	"osEE_sn_release"
	.byte	0x2
	.byte	0x76
	.byte	0x1
	.byte	0x3
	.uaword	0xf3c
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x2
	.byte	0x78
	.uaword	0xe7c
	.uleb128 0x1b
	.string	"p_to_free"
	.byte	0x2
	.byte	0x79
	.uaword	0x99e
	.byte	0
	.uleb128 0x1c
	.string	"osEE_scheduler_task_insert_rq"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	0x25f
	.byte	0x1
	.uaword	0xf94
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.byte	0x4a
	.uaword	0xcd8
	.uleb128 0x1d
	.uaword	.LASF4
	.byte	0x1
	.byte	0x4b
	.uaword	0xb8e
	.uleb128 0x1d
	.uaword	.LASF5
	.byte	0x1
	.byte	0x4c
	.uaword	0xb77
	.uleb128 0x21
	.uaword	.LASF6
	.byte	0x1
	.byte	0x4f
	.uaword	0x25f
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"osEE_scheduler_task_activated"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	0x25f
	.uaword	.LFB104
	.uaword	.LFE104
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1158
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.byte	0x61
	.uaword	0x1158
	.uaword	.LLST0
	.uleb128 0x23
	.uaword	.LASF4
	.byte	0x1
	.byte	0x62
	.uaword	0xb8e
	.uaword	.LLST1
	.uleb128 0x24
	.uaword	.LASF8
	.byte	0x1
	.byte	0x65
	.uaword	0x25f
	.uaword	.LLST2
	.uleb128 0x24
	.uaword	.LASF5
	.byte	0x1
	.byte	0x66
	.uaword	0x115e
	.uaword	.LLST3
	.uleb128 0x21
	.uaword	.LASF3
	.byte	0x1
	.byte	0x68
	.uaword	0xed9
	.uleb128 0x24
	.uaword	.LASF1
	.byte	0x1
	.byte	0x69
	.uaword	0x1163
	.uaword	.LLST4
	.uleb128 0x24
	.uaword	.LASF0
	.byte	0x1
	.byte	0x6a
	.uaword	0x1168
	.uaword	.LLST5
	.uleb128 0x25
	.string	"p_curr_tcb"
	.byte	0x1
	.byte	0x6b
	.uaword	0x115e
	.uaword	.LLST6
	.uleb128 0x26
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	0x10c2
	.uleb128 0x1e
	.string	"p_new_stk"
	.byte	0x1
	.byte	0x87
	.uaword	0x116d
	.uleb128 0x27
	.uaword	0xe3f
	.uaword	.LBB77
	.uaword	.LBE77
	.byte	0x1
	.byte	0x87
	.uaword	0x1093
	.uleb128 0x28
	.uaword	0xe5a
	.uaword	.LLST7
	.uleb128 0x29
	.uaword	.LBB78
	.uaword	.LBE78
	.uleb128 0x2a
	.uaword	0xe65
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xe0d
	.uaword	.LBB79
	.uaword	.LBE79
	.byte	0x1
	.byte	0x9c
	.uaword	0x10b0
	.uleb128 0x28
	.uaword	0xe31
	.uaword	.LLST9
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL10
	.uaword	0x171d
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0xf3c
	.uaword	.LBB81
	.uaword	.LBE81
	.byte	0x1
	.byte	0xa5
	.uleb128 0x28
	.uaword	0xf7d
	.uaword	.LLST10
	.uleb128 0x28
	.uaword	0xf72
	.uaword	.LLST11
	.uleb128 0x2e
	.uaword	0xf67
	.byte	0x1
	.byte	0x6f
	.uleb128 0x29
	.uaword	.LBB82
	.uaword	.LBE82
	.uleb128 0x2f
	.uaword	0xf88
	.uleb128 0x27
	.uaword	0xe0d
	.uaword	.LBB83
	.uaword	.LBE83
	.byte	0x1
	.byte	0x55
	.uaword	0x1115
	.uleb128 0x28
	.uaword	0xe31
	.uaword	.LLST12
	.byte	0
	.uleb128 0x27
	.uaword	0xe3f
	.uaword	.LBB85
	.uaword	.LBE85
	.byte	0x1
	.byte	0x58
	.uaword	0x1145
	.uleb128 0x2e
	.uaword	0xe5a
	.byte	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.uleb128 0x29
	.uaword	.LBB86
	.uaword	.LBE86
	.uleb128 0x2a
	.uaword	0xe65
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL16
	.uaword	0x1753
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xdc1
	.uleb128 0x11
	.uaword	0xb77
	.uleb128 0x11
	.uaword	0xcd8
	.uleb128 0x11
	.uaword	0xb8e
	.uleb128 0x11
	.uaword	0x99e
	.uleb128 0x22
	.byte	0x1
	.string	"osEE_scheduler_task_insert"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uaword	0x25f
	.uaword	.LFB105
	.uaword	.LFE105
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x128f
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.byte	0xb2
	.uaword	0x1158
	.uaword	.LLST14
	.uleb128 0x23
	.uaword	.LASF4
	.byte	0x1
	.byte	0xb3
	.uaword	0xb8e
	.uaword	.LLST15
	.uleb128 0x1e
	.string	"head_changed"
	.byte	0x1
	.byte	0xb6
	.uaword	0x25f
	.uleb128 0x30
	.uaword	.LASF5
	.byte	0x1
	.byte	0xb8
	.uaword	0x115e
	.byte	0x1
	.byte	0x6f
	.uleb128 0x21
	.uaword	.LASF3
	.byte	0x1
	.byte	0xba
	.uaword	0xed9
	.uleb128 0x24
	.uaword	.LASF1
	.byte	0x1
	.byte	0xbc
	.uaword	0x1163
	.uaword	.LLST16
	.uleb128 0x2d
	.uaword	0xf3c
	.uaword	.LBB93
	.uaword	.LBE93
	.byte	0x1
	.byte	0xd7
	.uleb128 0x2e
	.uaword	0xf7d
	.byte	0x1
	.byte	0x6f
	.uleb128 0x28
	.uaword	0xf72
	.uaword	.LLST17
	.uleb128 0x28
	.uaword	0xf67
	.uaword	.LLST16
	.uleb128 0x29
	.uaword	.LBB94
	.uaword	.LBE94
	.uleb128 0x31
	.uaword	0xf88
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.uaword	0xe0d
	.uaword	.LBB95
	.uaword	.LBE95
	.byte	0x1
	.byte	0x55
	.uaword	0x1253
	.uleb128 0x28
	.uaword	0xe31
	.uaword	.LLST19
	.byte	0
	.uleb128 0x27
	.uaword	0xe3f
	.uaword	.LBB97
	.uaword	.LBE97
	.byte	0x1
	.byte	0x58
	.uaword	0x1283
	.uleb128 0x28
	.uaword	0xe5a
	.uaword	.LLST20
	.uleb128 0x29
	.uaword	.LBB98
	.uaword	.LBE98
	.uleb128 0x2a
	.uaword	0xe65
	.uaword	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL25
	.uaword	0x1753
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"osEE_scheduler_task_unblocked"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.uaword	0x25f
	.uaword	.LFB106
	.uaword	.LFE106
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1373
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.byte	0xfd
	.uaword	0x1158
	.uaword	.LLST22
	.uleb128 0x33
	.string	"p_sn_released"
	.byte	0x1
	.byte	0xfe
	.uaword	0x99e
	.uaword	.LLST23
	.uleb128 0x34
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x101
	.uaword	0x25f
	.uaword	.LLST24
	.uleb128 0x34
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x103
	.uaword	0x25f
	.uaword	.LLST25
	.uleb128 0x35
	.string	"p_tdb_released"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x1168
	.uaword	.LLST26
	.uleb128 0x36
	.string	"p_tcb_released"
	.byte	0x1
	.uahalf	0x107
	.uaword	0x115e
	.byte	0x1
	.byte	0x6f
	.uleb128 0x37
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x109
	.uaword	0xed9
	.uleb128 0x38
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x1163
	.byte	0x1
	.byte	0x6c
	.uleb128 0x2b
	.uaword	.LVL33
	.uaword	0x1753
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"osEE_scheduler_task_terminated"
	.byte	0x1
	.uahalf	0x131
	.byte	0x1
	.uaword	0xb8e
	.uaword	.LFB107
	.uaword	.LFE107
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1523
	.uleb128 0x3a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x133
	.uaword	0x1158
	.uaword	.LLST27
	.uleb128 0x3b
	.string	"pp_tdb_from"
	.byte	0x1
	.uahalf	0x134
	.uaword	0x1523
	.uaword	.LLST28
	.uleb128 0x37
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x137
	.uaword	0xed9
	.uleb128 0x38
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x138
	.uaword	0x1163
	.byte	0x1
	.byte	0x6f
	.uleb128 0x35
	.string	"p_tdb_to"
	.byte	0x1
	.uahalf	0x139
	.uaword	0xb8e
	.uaword	.LLST29
	.uleb128 0x29
	.uaword	.LBB99
	.uaword	.LBE99
	.uleb128 0x35
	.string	"p_tdb_term"
	.byte	0x1
	.uahalf	0x140
	.uaword	0x1168
	.uaword	.LLST30
	.uleb128 0x35
	.string	"p_tcb_term"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x115e
	.uaword	.LLST31
	.uleb128 0x26
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	0x14a2
	.uleb128 0x34
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x116d
	.uaword	.LLST32
	.uleb128 0x3c
	.uaword	0xf06
	.uaword	.LBB101
	.uaword	.LBE101
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x147d
	.uleb128 0x28
	.uaword	0xf2a
	.uaword	.LLST33
	.uleb128 0x28
	.uaword	0xf1f
	.uaword	.LLST34
	.byte	0
	.uleb128 0x3d
	.uaword	.LVL42
	.uaword	0x1790
	.uaword	0x1491
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 4
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL45
	.uaword	0x17c9
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LBB103
	.uaword	.LBE103
	.uleb128 0x34
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x116d
	.uaword	.LLST35
	.uleb128 0x3c
	.uaword	0xe0d
	.uaword	.LBB104
	.uaword	.LBE104
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x14d9
	.uleb128 0x28
	.uaword	0xe31
	.uaword	.LLST36
	.byte	0
	.uleb128 0x26
	.uaword	.LBB106
	.uaword	.LBE106
	.uaword	0x150a
	.uleb128 0x35
	.string	"p_prev"
	.byte	0x1
	.uahalf	0x177
	.uaword	0x1529
	.uaword	.LLST37
	.uleb128 0x2b
	.uaword	.LVL56
	.uaword	0x17e7
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL55
	.uaword	0x1753
	.uleb128 0x2c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xb8e
	.uleb128 0x11
	.uaword	0x152e
	.uleb128 0xd
	.byte	0x4
	.uaword	0xdd7
	.uleb128 0x39
	.byte	0x1
	.string	"osEE_scheduler_task_preemption_point"
	.byte	0x1
	.uahalf	0x18c
	.byte	0x1
	.uaword	0x25f
	.uaword	.LFB108
	.uaword	.LFE108
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x15f7
	.uleb128 0x3a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x1158
	.uaword	.LLST38
	.uleb128 0x34
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x191
	.uaword	0x25f
	.uaword	.LLST39
	.uleb128 0x35
	.string	"p_prev"
	.byte	0x1
	.uahalf	0x192
	.uaword	0x152e
	.uaword	.LLST40
	.uleb128 0x37
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x193
	.uaword	0xed9
	.uleb128 0x38
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x194
	.uaword	0x1163
	.byte	0x1
	.byte	0x6f
	.uleb128 0x26
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	0x15e6
	.uleb128 0x34
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0x1168
	.uaword	.LLST41
	.uleb128 0x32
	.uaword	.LVL66
	.uaword	0x171d
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL64
	.uaword	0x17e7
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"osEE_scheduler_task_set_running"
	.byte	0x1
	.uahalf	0x1ae
	.byte	0x1
	.uaword	.LFB109
	.uaword	.LFE109
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x16f1
	.uleb128 0x3a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1b0
	.uaword	0x1158
	.uaword	.LLST42
	.uleb128 0x3b
	.string	"p_tdb"
	.byte	0x1
	.uahalf	0x1b1
	.uaword	0xb8e
	.uaword	.LLST43
	.uleb128 0x3b
	.string	"p_sn"
	.byte	0x1
	.uahalf	0x1b2
	.uaword	0x99e
	.uaword	.LLST44
	.uleb128 0x37
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0xed9
	.uleb128 0x34
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x1163
	.uaword	.LLST45
	.uleb128 0x35
	.string	"p_preempted"
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x1168
	.uaword	.LLST46
	.uleb128 0x35
	.string	"p_preempted_sn"
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x116d
	.uaword	.LLST47
	.uleb128 0x3c
	.uaword	0xe3f
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0x16df
	.uleb128 0x28
	.uaword	0xe5a
	.uaword	.LLST48
	.uleb128 0x29
	.uaword	.LBB109
	.uaword	.LBE109
	.uleb128 0x2a
	.uaword	0xe65
	.uaword	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL77
	.uaword	0x171d
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.byte	0
	.uleb128 0x3f
	.string	"osEE_kdb_var"
	.byte	0xb
	.byte	0x42
	.uaword	0xdc1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"osEE_cdb_var"
	.byte	0xb
	.byte	0x5b
	.uaword	0xcde
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.byte	0x1
	.string	"osEE_change_context_from_running"
	.byte	0x3
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uaword	0x1753
	.uleb128 0x41
	.uaword	0xb8e
	.uleb128 0x41
	.uaword	0xb8e
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"osEE_scheduler_rq_insert"
	.byte	0xa
	.byte	0x46
	.byte	0x1
	.uaword	0x25f
	.byte	0x1
	.uaword	0x178a
	.uleb128 0x41
	.uaword	0x178a
	.uleb128 0x41
	.uaword	0x99e
	.uleb128 0x41
	.uaword	0x1168
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x98f
	.uleb128 0x42
	.byte	0x1
	.string	"osEE_scheduler_core_pop_running"
	.byte	0xa
	.byte	0x5b
	.byte	0x1
	.uaword	0x99e
	.byte	0x1
	.uaword	0x17c9
	.uleb128 0x41
	.uaword	0xe07
	.uleb128 0x41
	.uaword	0x178a
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"osEE_task_end"
	.byte	0x3
	.byte	0xbf
	.byte	0x1
	.byte	0x1
	.uaword	0x17e7
	.uleb128 0x41
	.uaword	0x1168
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"osEE_scheduler_core_rq_preempt_stk"
	.byte	0xa
	.byte	0x54
	.byte	0x1
	.uaword	0x152e
	.byte	0x1
	.uleb128 0x41
	.uaword	0xe07
	.uleb128 0x41
	.uaword	0x178a
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x8
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x43
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
	.uaword	.LFE104-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL10-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL10-1-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL16-1-.Ltext0
	.uaword	.LFE104-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL17-.Ltext0
	.uaword	.LFE104-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x2
	.byte	0x85
	.sleb128 12
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL11-.Ltext0
	.uaword	.LFE104-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL10-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL10-1-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL10-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL16-1-.Ltext0
	.uaword	.LFE104-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE105-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL25-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL25-1-.Ltext0
	.uaword	.LFE105-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL25-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL25-1-.Ltext0
	.uaword	.LFE105-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL25-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32-.Ltext0
	.uaword	.LFE106-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL33-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL33-1-.Ltext0
	.uaword	.LFE106-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE106-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL33-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL54-.Ltext0
	.uaword	.LFE107-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL50-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL50-.Ltext0
	.uaword	.LFE107-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60-.Ltext0
	.uaword	.LFE107-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47-.Ltext0
	.uaword	.LFE107-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL55-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL62-.Ltext0
	.uaword	.LFE108-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL67-.Ltext0
	.uaword	.LFE108-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL66-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL66-1-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL70-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL70-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL77-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL77-1-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL77-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL77-1-.Ltext0
	.uaword	.LFE109-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL76-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL77-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL77-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x1
	.byte	0x62
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
.LASF2:
	.string	"pp_first"
.LASF9:
	.string	"p_sn_term"
.LASF4:
	.string	"p_tdb_act"
.LASF6:
	.string	"rq_head_changed"
.LASF5:
	.string	"p_tcb_act"
.LASF1:
	.string	"p_ccb"
.LASF0:
	.string	"p_curr"
.LASF3:
	.string	"p_cdb"
.LASF8:
	.string	"is_preemption"
.LASF7:
	.string	"p_kdb"
	.extern	osEE_scheduler_core_rq_preempt_stk,STT_FUNC,0
	.extern	osEE_task_end,STT_FUNC,0
	.extern	osEE_scheduler_core_pop_running,STT_FUNC,0
	.extern	osEE_scheduler_rq_insert,STT_FUNC,0
	.extern	osEE_change_context_from_running,STT_FUNC,0
	.extern	osEE_cdb_var,STT_OBJECT,8
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
