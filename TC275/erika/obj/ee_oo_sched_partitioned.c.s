	.file	"ee_oo_sched_partitioned.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	osEE_scheduler_task_activated
	.type	osEE_scheduler_task_activated, @function
osEE_scheduler_task_activated:
.LFB111:
	.file 1 "C:\\project\\SHIPAR~1\\TC275\\erika\\src\\ee_oo_sched_partitioned.c"
	.loc 1 100 0
.LVL0:
	.loc 1 105 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a2, [%a15] lo:osEE_cdb_var
	.loc 1 106 0
	ld.a	%a4, [%a2]0
.LVL1:
	.loc 1 102 0
	ld.a	%a3, [%a5] 12
.LVL2:
	.loc 1 107 0
	ld.a	%a7, [%a4] 12
.LVL3:
	.loc 1 100 0
	mov.aa	%a6, %a5
	.loc 1 133 0
	ld.bu	%d15, [%a3] 1
	ld.bu	%d2, [%a7] 1
	ld.a	%a15, [%a2] 8
	jge.u	%d2, %d15, .L2
.LVL4:
.LBB77:
.LBB78:
.LBB79:
	.file 2 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_scheduler_types.h"
	.loc 2 101 0
	ld.w	%d15, [%a15]0
	st.w	[%a2] 8, %d15
.LBE79:
.LBE78:
	.loc 1 149 0
	mov	%d15, 2
	st.b	[%a7] 2, %d15
	.loc 1 153 0
	ld.w	%d15, [%a2] 12
	.loc 1 152 0
	st.a	[%a15] 4, %a5
	.loc 1 153 0
	st.w	[%a15]0, %d15
	.loc 1 154 0
	st.a	[%a2] 12, %a15
.LBB80:
.LBB81:
	.file 3 "C:\\project\\SHIPAR~1\\TC275\\erika\\src\\ee_kernel.h"
	.loc 3 211 0
	ld.a	%a15, [%a5] 12
.LVL5:
.LBE81:
.LBE80:
	.loc 1 155 0
	st.a	[%a2]0, %a5
.LVL6:
.LBB83:
.LBB82:
	.loc 3 211 0
	mov	%d15, 0
	st.w	[%a15] 12, %d15
.LVL7:
.LBE82:
.LBE83:
	.loc 1 160 0
	call	osEE_change_context_from_running
.LVL8:
	.loc 1 162 0
	mov	%d2, 1
.LBE77:
	ret
.LVL9:
.L2:
.LBB84:
.LBB85:
	.loc 1 83 0
	ld.bu	%d15, [%a3] 2
	jnz	%d15, .L4
	.loc 1 84 0
	mov	%d2, 1
	st.b	[%a3] 2, %d2
.LVL10:
.LBB86:
.LBB87:
	.loc 3 211 0
	st.w	[%a3] 12, %d15
.L4:
.LVL11:
.LBE87:
.LBE86:
.LBB88:
.LBB89:
	.loc 2 101 0
	ld.w	%d15, [%a15]0
.LBE89:
.LBE88:
	.loc 1 88 0
	lea	%a4, [%a2] 4
.LVL12:
.LBB91:
.LBB90:
	.loc 2 101 0
	st.w	[%a2] 8, %d15
	.loc 2 102 0
	mov	%d15, 0
	st.w	[%a15]0, %d15
.LBE90:
.LBE91:
	.loc 1 88 0
	mov.aa	%a5, %a15
.LVL13:
	call	osEE_scheduler_rq_insert
.LVL14:
.LBE85:
.LBE84:
	.loc 1 169 0
	mov	%d2, 0
.LVL15:
	.loc 1 173 0
	ret
.LFE111:
	.size	osEE_scheduler_task_activated, .-osEE_scheduler_task_activated
	.align 1
	.global	osEE_scheduler_task_insert
	.type	osEE_scheduler_task_insert, @function
osEE_scheduler_task_insert:
.LFB112:
	.loc 1 181 0
.LVL16:
	.loc 1 184 0
	ld.a	%a15, [%a5] 12
.LVL17:
	.loc 1 188 0
	movh.a	%a2, hi:osEE_cdb_var
	.loc 1 181 0
	mov.aa	%a6, %a5
.LBB98:
.LBB99:
	.loc 1 83 0
	ld.bu	%d15, [%a15] 2
.LBE99:
.LBE98:
	.loc 1 188 0
	ld.a	%a4, [%a2] lo:osEE_cdb_var
.LVL18:
.LBB105:
.LBB104:
	.loc 1 83 0
	jnz	%d15, .L7
	.loc 1 84 0
	mov	%d2, 1
	st.b	[%a15] 2, %d2
.LVL19:
.LBB100:
.LBB101:
	.loc 3 211 0
	st.w	[%a15] 12, %d15
.L7:
.LVL20:
.LBE101:
.LBE100:
.LBB102:
.LBB103:
	.loc 2 100 0
	ld.a	%a5, [%a4] 8
.LVL21:
	.loc 2 101 0
	ld.w	%d15, [%a5]0
	st.w	[%a4] 8, %d15
	.loc 2 102 0
	mov	%d15, 0
	st.w	[%a5]0, %d15
.LBE103:
.LBE102:
	.loc 1 88 0
	add.a	%a4, 4
.LVL22:
	j	osEE_scheduler_rq_insert
.LVL23:
.LBE104:
.LBE105:
.LFE112:
	.size	osEE_scheduler_task_insert, .-osEE_scheduler_task_insert
	.align 1
	.global	osEE_scheduler_task_unblocked
	.type	osEE_scheduler_task_unblocked, @function
osEE_scheduler_task_unblocked:
.LFB113:
	.loc 1 256 0
.LVL24:
	.loc 1 261 0
	ld.a	%a6, [%a5] 4
.LVL25:
	.loc 1 263 0
	ld.a	%a15, [%a6] 12
.LVL26:
	.loc 1 267 0
	movh.a	%a2, hi:osEE_cdb_var
	.loc 1 269 0
	mov	%d15, 2
	.loc 1 267 0
	ld.a	%a12, [%a2] lo:osEE_cdb_var
.LVL27:
	.loc 1 269 0
	st.b	[%a15] 2, %d15
	.loc 1 270 0
	ld.bu	%d15, [%a6] 28
	.loc 1 277 0
	lea	%a4, [%a12] 4
.LVL28:
	.loc 1 270 0
	st.b	[%a15] 1, %d15
.LVL29:
	.loc 1 277 0
	call	osEE_scheduler_rq_insert
.LVL30:
	.loc 1 259 0
	mov	%d15, 0
	.loc 1 280 0
	jne	%d2, 1, .L9
	.loc 1 282 0
	ld.a	%a2, [%a12]0
	ld.a	%a2, [%a2] 12
	.loc 1 281 0
	ld.bu	%d15, [%a15] 1
	ld.bu	%d2, [%a2] 1
.LVL31:
	lt.u	%d15, %d2, %d15
.LVL32:
.L9:
	.loc 1 302 0
	mov	%d2, %d15
	ret
.LFE113:
	.size	osEE_scheduler_task_unblocked, .-osEE_scheduler_task_unblocked
	.align 1
	.global	osEE_scheduler_task_terminated
	.type	osEE_scheduler_task_terminated, @function
osEE_scheduler_task_terminated:
.LFB114:
	.loc 1 310 0
.LVL33:
	.loc 1 312 0
	movh.a	%a15, hi:osEE_cdb_var
	lea	%a4, [%a15] lo:osEE_cdb_var
.LVL34:
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL35:
	mov.d	%d15, %a4
.LBB106:
	.loc 1 320 0
	mov.aa	%a13, %a15
	ld.a	%a14, [%a13+]4
.LVL36:
	.loc 1 322 0
	ld.a	%a12, [%a14] 12
.LVL37:
	.loc 1 325 0
	st.a	[%a5]0, %a14
	.loc 1 327 0
	ld.bu	%d2, [%a12] 2
	jne	%d2, 4, .L12
.LBB107:
	.loc 1 330 0
	mov.aa	%a5, %a13
.LVL38:
	call	osEE_scheduler_core_pop_running
.LVL39:
	.loc 1 332 0
	ld.a	%a13, [%a15]0
	.loc 1 330 0
	mov.d	%d15, %a2
.LVL40:
	.loc 1 336 0
	jeq.a	%a14, %a13, .L13
	.loc 1 337 0
	mov.aa	%a4, %a14
	call	osEE_task_end
.LVL41:
	j	.L14
.L13:
	.loc 1 344 0
	ld.bu	%d2, [%a12]0
	add	%d2, -1
	st.b	[%a12]0, %d2
.L14:
.LVL42:
.LBB108:
.LBB109:
	.loc 2 124 0
	ld.w	%d2, [%a15] 8
	mov.a	%a2, %d15
	st.w	[%a2]0, %d2
	.loc 2 125 0
	st.w	[%a15] 8, %d15
	j	.L15
.LVL43:
.L12:
.LBE109:
.LBE108:
.LBE107:
.LBB110:
	.loc 1 351 0
	ld.a	%a5, [%a15] 12
.LVL44:
	.loc 1 355 0
	ld.w	%d2, [%a5]0
	st.w	[%a15] 12, %d2
	.loc 1 361 0
	ld.bu	%d2, [%a14] 28
	st.b	[%a12] 1, %d2
	.loc 1 362 0
	mov	%d2, 1
	st.b	[%a12] 2, %d2
	.loc 1 366 0
	ld.bu	%d2, [%a12]0
	jne	%d2, 1, .L16
.LVL45:
.LBB111:
.LBB112:
	.loc 3 211 0
	mov	%d2, 0
	st.w	[%a12] 12, %d2
.LVL46:
.L16:
.LBE112:
.LBE111:
	.loc 1 371 0
	mov.aa	%a4, %a13
	mov.aa	%a6, %a14
	call	osEE_scheduler_rq_insert
.LVL47:
.LBB113:
	.loc 1 375 0
	mov.a	%a4, %d15
	mov.aa	%a5, %a13
	call	osEE_scheduler_core_rq_preempt_stk
.LVL48:
	.loc 1 377 0
	jnz.a	%a2, .L17
	.loc 1 381 0
	ld.a	%a2, [%a15] 12
.LVL49:
	ld.a	%a13, [%a2] 4
.LVL50:
	.loc 1 382 0
	st.a	[%a15]0, %a13
	j	.L15
.LVL51:
.L17:
	.loc 1 384 0
	ld.a	%a13, [%a15]0
.LVL52:
.L15:
.LBE113:
.LBE110:
.LBE106:
	.loc 1 393 0
	mov.aa	%a2, %a13
	ret
.LFE114:
	.size	osEE_scheduler_task_terminated, .-osEE_scheduler_task_terminated
	.align 1
	.global	osEE_scheduler_task_preemption_point
	.type	osEE_scheduler_task_preemption_point, @function
osEE_scheduler_task_preemption_point:
.LFB115:
	.loc 1 400 0
.LVL53:
	.loc 1 404 0
	movh.a	%a4, hi:osEE_cdb_var
.LVL54:
	ld.a	%a15, [%a4] lo:osEE_cdb_var
.LVL55:
	.loc 1 411 0
	lea	%a4, [%a4] lo:osEE_cdb_var
	lea	%a5, [%a15] 4
	call	osEE_scheduler_core_rq_preempt_stk
.LVL56:
	.loc 1 423 0
	mov	%d2, 0
	.loc 1 416 0
	jz.a	%a2, .L19
.LVL57:
.LBB114:
	.loc 1 419 0
	ld.a	%a5, [%a15]0
	mov.aa	%a4, %a2
	call	osEE_change_context_from_running
.LVL58:
	.loc 1 421 0
	mov	%d2, 1
.LVL59:
.L19:
.LBE114:
	.loc 1 427 0
	ret
.LFE115:
	.size	osEE_scheduler_task_preemption_point, .-osEE_scheduler_task_preemption_point
	.align 1
	.global	osEE_scheduler_task_set_running
	.type	osEE_scheduler_task_set_running, @function
osEE_scheduler_task_set_running:
.LFB116:
	.loc 1 436 0
.LVL60:
	.loc 1 438 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.LVL61:
	.loc 1 439 0
	ld.a	%a4, [%a15]0
.LVL62:
	.loc 1 444 0
	ld.a	%a2, [%a4] 12
	.loc 1 441 0
	ld.w	%d2, [%a15] 12
.LVL63:
	.loc 1 444 0
	ld.bu	%d15, [%a2] 2
	jne	%d15, 4, .L23
	.loc 1 445 0
	mov	%d15, 2
	st.b	[%a2] 2, %d15
.L23:
	.loc 1 447 0
	st.a	[%a15]0, %a5
	.loc 1 451 0
	jnz.a	%a6, .L24
.LVL64:
.LBB115:
.LBB116:
	.loc 2 100 0
	ld.a	%a2, [%a15] 8
.LVL65:
	.loc 2 101 0
	ld.w	%d15, [%a2]0
	st.w	[%a15] 8, %d15
	.loc 2 102 0
	st.a	[%a2]0, %a6
.LBE116:
.LBE115:
	.loc 1 454 0
	st.a	[%a15] 12, %a2
.LVL66:
	j	.L25
.LVL67:
.L24:
	.loc 1 457 0
	st.a	[%a15] 12, %a6
.L25:
	.loc 1 461 0
	ld.a	%a15, [%a15] 12
.LVL68:
	st.a	[%a15] 4, %a5
	.loc 1 462 0
	st.w	[%a15]0, %d2
	.loc 1 464 0
	j	osEE_change_context_from_running
.LVL69:
.LFE116:
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
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB116
	.uaword	.LFE116-.LFB116
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 6 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 7 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_hal_internal_types.h"
	.file 8 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 9 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_kernel_types.h"
	.file 10 "C:\\project\\SHIPAR~1\\TC275\\erika\\src\\ee_scheduler.h"
	.file 11 "C:\\project\\SHIPAR~1\\TC275\\erika\\inc/ee_get_kernel_and_core.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1c35
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -Os -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\project\\SHIPAR~1\\TC275\\erika\\src\\ee_oo_sched_partitioned.c"
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
	.uaword	0x17c
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
	.uaword	0x1b6
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
	.uaword	0x1e4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x5
	.byte	0x50
	.uaword	0x17c
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
	.uaword	0x267
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
	.uaword	0x245
	.uleb128 0x3
	.string	"OsEE_addr"
	.byte	0x6
	.byte	0x5a
	.uaword	0x289
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x6
	.byte	0x5b
	.uaword	0x1fa
	.uleb128 0x3
	.string	"OsEE_prio"
	.byte	0x6
	.byte	0x8d
	.uaword	0x1a7
	.uleb128 0x3
	.string	"OsEE_isr_src_id"
	.byte	0x6
	.byte	0x92
	.uaword	0x1d4
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0x74
	.uaword	0x319
	.uleb128 0x8
	.string	"pcxo"
	.byte	0x7
	.byte	0x75
	.uaword	0x235
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"pcxs"
	.byte	0x7
	.byte	0x76
	.uaword	0x235
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"ul"
	.byte	0x7
	.byte	0x7b
	.uaword	0x235
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"pie"
	.byte	0x7
	.byte	0x7c
	.uaword	0x235
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"pcpn"
	.byte	0x7
	.byte	0x7d
	.uaword	0x235
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0x72
	.uaword	0x339
	.uleb128 0xa
	.string	"reg"
	.byte	0x7
	.byte	0x73
	.uaword	0x28b
	.uleb128 0xa
	.string	"bits"
	.byte	0x7
	.byte	0x82
	.uaword	0x2c3
	.byte	0
	.uleb128 0x3
	.string	"OsEE_pcxi"
	.byte	0x7
	.byte	0x83
	.uaword	0x319
	.uleb128 0xb
	.string	"OsEE_CTX_tag"
	.byte	0x10
	.byte	0x7
	.byte	0xf3
	.uaword	0x394
	.uleb128 0xc
	.string	"p_ctx"
	.byte	0x7
	.byte	0xf4
	.uaword	0x394
	.byte	0
	.uleb128 0xc
	.string	"dummy"
	.byte	0x7
	.byte	0xf5
	.uaword	0x28b
	.byte	0x4
	.uleb128 0xc
	.string	"pcxi"
	.byte	0x7
	.byte	0xf6
	.uaword	0x339
	.byte	0x8
	.uleb128 0xc
	.string	"ra"
	.byte	0x7
	.byte	0xf7
	.uaword	0x278
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x34a
	.uleb128 0x3
	.string	"OsEE_CTX"
	.byte	0x7
	.byte	0xf8
	.uaword	0x34a
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0xfb
	.uaword	0x3c1
	.uleb128 0xc
	.string	"p_tos"
	.byte	0x7
	.byte	0xfc
	.uaword	0x3c1
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x39a
	.uleb128 0x3
	.string	"OsEE_SCB"
	.byte	0x7
	.byte	0xfd
	.uaword	0x3aa
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.uahalf	0x100
	.uaword	0x404
	.uleb128 0xf
	.string	"p_bos"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x3c1
	.byte	0
	.uleb128 0xf
	.string	"stack_size"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x16e
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"OsEE_SDB"
	.byte	0x7
	.uahalf	0x106
	.uaword	0x415
	.uleb128 0x11
	.uaword	0x3d7
	.uleb128 0xe
	.byte	0xc
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x454
	.uleb128 0xf
	.string	"p_sdb"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x454
	.byte	0
	.uleb128 0xf
	.string	"p_scb"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x45a
	.byte	0x4
	.uleb128 0xf
	.string	"isr2_src"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x2ac
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x404
	.uleb128 0xd
	.byte	0x4
	.uaword	0x3c7
	.uleb128 0x10
	.string	"OsEE_HDB"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x471
	.uleb128 0x11
	.uaword	0x41a
	.uleb128 0x3
	.string	"AppModeType"
	.byte	0x8
	.byte	0x60
	.uaword	0x1a7
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x8
	.byte	0x78
	.uaword	0x28b
	.uleb128 0x3
	.string	"TaskPrio"
	.byte	0x8
	.byte	0xc8
	.uaword	0x29b
	.uleb128 0x3
	.string	"TaskActivation"
	.byte	0x8
	.byte	0xf4
	.uaword	0x1a7
	.uleb128 0x10
	.string	"TaskFunc"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x4d0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x4d6
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.uahalf	0x145
	.uaword	0x53f
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
	.uaword	0x4d8
	.uleb128 0x10
	.string	"TaskExecutionType"
	.byte	0x8
	.uahalf	0x157
	.uaword	0x53f
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x5f8
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
	.uaword	0x570
	.uleb128 0x10
	.string	"TaskStateType"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x5f8
	.uleb128 0x10
	.string	"TickType"
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x28b
	.uleb128 0xe
	.byte	0x8
	.byte	0x8
	.uahalf	0x1b7
	.uaword	0x671
	.uleb128 0xf
	.string	"maxallowedvalue"
	.byte	0x8
	.uahalf	0x1b9
	.uaword	0x627
	.byte	0
	.uleb128 0xf
	.string	"ticksperbase"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x627
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"AlarmBaseType"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x638
	.uleb128 0x10
	.string	"EventMaskType"
	.byte	0x8
	.uahalf	0x237
	.uaword	0x28b
	.uleb128 0x10
	.string	"MemSize"
	.byte	0x8
	.uahalf	0x2a3
	.uaword	0x16e
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.uahalf	0x2b1
	.uaword	0x8d0
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
	.uaword	0x6ad
	.uleb128 0x10
	.string	"StatusType"
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x8d0
	.uleb128 0xb
	.string	"OsEE_SN_tag"
	.byte	0x8
	.byte	0x2
	.byte	0x4b
	.uaword	0x929
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x2
	.byte	0x4d
	.uaword	0x929
	.byte	0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x2
	.byte	0x4f
	.uaword	0x9d8
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x8fc
	.uleb128 0x15
	.string	"OsEE_TDB_tag"
	.byte	0x20
	.byte	0x9
	.uahalf	0x108
	.uaword	0x9d8
	.uleb128 0xf
	.string	"hdb"
	.byte	0x9
	.uahalf	0x10b
	.uaword	0x460
	.byte	0
	.uleb128 0xf
	.string	"p_tcb"
	.byte	0x9
	.uahalf	0x10e
	.uaword	0xbed
	.byte	0xc
	.uleb128 0xf
	.string	"tid"
	.byte	0x9
	.uahalf	0x110
	.uaword	0x489
	.byte	0x10
	.uleb128 0xf
	.string	"task_type"
	.byte	0x9
	.uahalf	0x112
	.uaword	0x556
	.byte	0x14
	.uleb128 0xf
	.string	"task_func"
	.byte	0x9
	.uahalf	0x114
	.uaword	0x4bf
	.byte	0x18
	.uleb128 0xf
	.string	"ready_prio"
	.byte	0x9
	.uahalf	0x117
	.uaword	0x499
	.byte	0x1c
	.uleb128 0xf
	.string	"dispatch_prio"
	.byte	0x9
	.uahalf	0x11a
	.uaword	0x499
	.byte	0x1d
	.uleb128 0xf
	.string	"max_num_of_act"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x4a9
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x9de
	.uleb128 0x11
	.uaword	0x92f
	.uleb128 0x3
	.string	"OsEE_SN"
	.byte	0x2
	.byte	0x50
	.uaword	0x8fc
	.uleb128 0x3
	.string	"OsEE_RQ"
	.byte	0x2
	.byte	0xd5
	.uaword	0xa01
	.uleb128 0xd
	.byte	0x4
	.uaword	0x9e3
	.uleb128 0x3
	.string	"OsEE_kernel_cb"
	.byte	0x9
	.byte	0x51
	.uaword	0x4d0
	.uleb128 0x3
	.string	"OsEE_byte"
	.byte	0x9
	.byte	0x53
	.uaword	0x1a7
	.uleb128 0x4
	.byte	0x1
	.byte	0x9
	.byte	0x73
	.uaword	0xa95
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
	.uaword	0xa2e
	.uleb128 0x7
	.byte	0xc
	.byte	0x9
	.byte	0x90
	.uaword	0xae6
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x9
	.byte	0x94
	.uaword	0xb16
	.byte	0
	.uleb128 0xc
	.string	"prev_prio"
	.byte	0x9
	.byte	0x97
	.uaword	0x499
	.byte	0x4
	.uleb128 0xc
	.string	"p_owner"
	.byte	0x9
	.byte	0x9a
	.uaword	0x9d8
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"OsEE_MDB_tag"
	.byte	0x8
	.byte	0x9
	.byte	0xb5
	.uaword	0xb16
	.uleb128 0xc
	.string	"p_cb"
	.byte	0x9
	.byte	0xb7
	.uaword	0xb31
	.byte	0
	.uleb128 0xc
	.string	"prio"
	.byte	0x9
	.byte	0xc3
	.uaword	0x499
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xb1c
	.uleb128 0x11
	.uaword	0xae6
	.uleb128 0x3
	.string	"OsEE_MCB"
	.byte	0x9
	.byte	0x9b
	.uaword	0xaaf
	.uleb128 0xd
	.byte	0x4
	.uaword	0xb21
	.uleb128 0x3
	.string	"OsEE_MDB"
	.byte	0x9
	.byte	0xce
	.uaword	0xb1c
	.uleb128 0x7
	.byte	0x14
	.byte	0x9
	.byte	0xe0
	.uaword	0xbd6
	.uleb128 0xc
	.string	"current_num_of_act"
	.byte	0x9
	.byte	0xe4
	.uaword	0x4a9
	.byte	0
	.uleb128 0xc
	.string	"current_prio"
	.byte	0x9
	.byte	0xea
	.uaword	0x499
	.byte	0x1
	.uleb128 0xc
	.string	"status"
	.byte	0x9
	.byte	0xec
	.uaword	0x611
	.byte	0x2
	.uleb128 0xc
	.string	"p_last_m"
	.byte	0x9
	.byte	0xef
	.uaword	0xbd6
	.byte	0x4
	.uleb128 0xc
	.string	"wait_mask"
	.byte	0x9
	.byte	0xf3
	.uaword	0x687
	.byte	0x8
	.uleb128 0xc
	.string	"event_mask"
	.byte	0x9
	.byte	0xf5
	.uaword	0x687
	.byte	0xc
	.uleb128 0xc
	.string	"p_own_sn"
	.byte	0x9
	.byte	0xfb
	.uaword	0xa01
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xb37
	.uleb128 0x10
	.string	"OsEE_TCB"
	.byte	0x9
	.uahalf	0x101
	.uaword	0xb47
	.uleb128 0xd
	.byte	0x4
	.uaword	0xbdc
	.uleb128 0x10
	.string	"OsEE_TDB"
	.byte	0x9
	.uahalf	0x122
	.uaword	0x9de
	.uleb128 0xd
	.byte	0x4
	.uaword	0xbf3
	.uleb128 0x10
	.string	"OsEE_TriggerQ"
	.byte	0x9
	.uahalf	0x151
	.uaword	0xc20
	.uleb128 0xd
	.byte	0x4
	.uaword	0xc26
	.uleb128 0x11
	.uaword	0xc2b
	.uleb128 0x15
	.string	"OsEE_TriggerDB_tag"
	.byte	0x1c
	.byte	0x9
	.uahalf	0x269
	.uaword	0xc7b
	.uleb128 0xf
	.string	"p_trigger_cb"
	.byte	0x9
	.uahalf	0x26b
	.uaword	0xf1d
	.byte	0
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x9
	.uahalf	0x26d
	.uaword	0xdc6
	.byte	0x4
	.uleb128 0xf
	.string	"action"
	.byte	0x9
	.uahalf	0x27b
	.uaword	0xe0d
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x9
	.uahalf	0x155
	.uaword	0xcab
	.uleb128 0xf
	.string	"trigger_queue"
	.byte	0x9
	.uahalf	0x157
	.uaword	0xc0a
	.byte	0
	.uleb128 0xf
	.string	"value"
	.byte	0x9
	.uahalf	0x159
	.uaword	0x627
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"OsEE_CounterCB"
	.byte	0x9
	.uahalf	0x15e
	.uaword	0xc7b
	.uleb128 0xe
	.byte	0xc
	.byte	0x9
	.uahalf	0x16f
	.uaword	0xcf0
	.uleb128 0xf
	.string	"p_counter_cb"
	.byte	0x9
	.uahalf	0x171
	.uaword	0xcf0
	.byte	0
	.uleb128 0xf
	.string	"info"
	.byte	0x9
	.uahalf	0x177
	.uaword	0x671
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xcab
	.uleb128 0x10
	.string	"OsEE_CounterDB"
	.byte	0x9
	.uahalf	0x17c
	.uaword	0xd0d
	.uleb128 0x11
	.uaword	0xcc2
	.uleb128 0x13
	.byte	0x1
	.byte	0x9
	.uahalf	0x17f
	.uaword	0xd70
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
	.uaword	0xd12
	.uleb128 0xe
	.byte	0x10
	.byte	0x9
	.uahalf	0x189
	.uaword	0xdc6
	.uleb128 0xf
	.string	"f"
	.byte	0x9
	.uahalf	0x18b
	.uaword	0xa07
	.byte	0
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x18d
	.uaword	0xc04
	.byte	0x4
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x9
	.uahalf	0x18f
	.uaword	0xdc6
	.byte	0x8
	.uleb128 0xf
	.string	"mask"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x687
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xcf6
	.uleb128 0x10
	.string	"OsEE_action_param"
	.byte	0x9
	.uahalf	0x194
	.uaword	0xd89
	.uleb128 0xe
	.byte	0x14
	.byte	0x9
	.uahalf	0x198
	.uaword	0xe0d
	.uleb128 0xf
	.string	"param"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0xdcc
	.byte	0
	.uleb128 0xf
	.string	"type"
	.byte	0x9
	.uahalf	0x19c
	.uaword	0xd70
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"OsEE_action"
	.byte	0x9
	.uahalf	0x19d
	.uaword	0xe21
	.uleb128 0x11
	.uaword	0xde6
	.uleb128 0x13
	.byte	0x1
	.byte	0x9
	.uahalf	0x22b
	.uaword	0xea6
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
	.uaword	0xe26
	.uleb128 0xe
	.byte	0x10
	.byte	0x9
	.uahalf	0x242
	.uaword	0xf06
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x244
	.uaword	0xc20
	.byte	0
	.uleb128 0xf
	.string	"when"
	.byte	0x9
	.uahalf	0x247
	.uaword	0x627
	.byte	0x4
	.uleb128 0xf
	.string	"status"
	.byte	0x9
	.uahalf	0x249
	.uaword	0xea6
	.byte	0x8
	.uleb128 0xf
	.string	"cycle"
	.byte	0x9
	.uahalf	0x24d
	.uaword	0x627
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"OsEE_TriggerCB"
	.byte	0x9
	.uahalf	0x25e
	.uaword	0xec2
	.uleb128 0xd
	.byte	0x4
	.uaword	0xf06
	.uleb128 0xe
	.byte	0x20
	.byte	0x9
	.uahalf	0x2d9
	.uaword	0x1025
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x9
	.uahalf	0x2dc
	.uaword	0xc04
	.byte	0
	.uleb128 0xf
	.string	"rq"
	.byte	0x9
	.uahalf	0x2ee
	.uaword	0x9f2
	.byte	0x4
	.uleb128 0xf
	.string	"p_free_sn"
	.byte	0x9
	.uahalf	0x2f0
	.uaword	0xa01
	.byte	0x8
	.uleb128 0xf
	.string	"p_stk_sn"
	.byte	0x9
	.uahalf	0x2ff
	.uaword	0xa01
	.byte	0xc
	.uleb128 0xf
	.string	"os_status"
	.byte	0x9
	.uahalf	0x301
	.uaword	0x1025
	.byte	0x10
	.uleb128 0xf
	.string	"app_mode"
	.byte	0x9
	.uahalf	0x305
	.uaword	0x476
	.byte	0x11
	.uleb128 0xf
	.string	"last_error"
	.byte	0x9
	.uahalf	0x307
	.uaword	0x8e9
	.byte	0x12
	.uleb128 0xf
	.string	"prev_s_isr_all_status"
	.byte	0x9
	.uahalf	0x327
	.uaword	0x28b
	.byte	0x14
	.uleb128 0xf
	.string	"prev_s_isr_os_status"
	.byte	0x9
	.uahalf	0x329
	.uaword	0x28b
	.byte	0x18
	.uleb128 0xf
	.string	"s_isr_all_cnt"
	.byte	0x9
	.uahalf	0x32b
	.uaword	0xa1d
	.byte	0x1c
	.uleb128 0xf
	.string	"s_isr_os_cnt"
	.byte	0x9
	.uahalf	0x32d
	.uaword	0xa1d
	.byte	0x1d
	.uleb128 0xf
	.string	"d_isr_all_cnt"
	.byte	0x9
	.uahalf	0x330
	.uaword	0xa1d
	.byte	0x1e
	.byte	0
	.uleb128 0x17
	.uaword	0xa95
	.uleb128 0x10
	.string	"OsEE_CCB"
	.byte	0x9
	.uahalf	0x33a
	.uaword	0xf23
	.uleb128 0xe
	.byte	0x8
	.byte	0x9
	.uahalf	0x344
	.uaword	0x1067
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x9
	.uahalf	0x34a
	.uaword	0x1067
	.byte	0
	.uleb128 0xf
	.string	"p_idle_task"
	.byte	0x9
	.uahalf	0x354
	.uaword	0xc04
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x102a
	.uleb128 0x10
	.string	"OsEE_CDB"
	.byte	0x9
	.uahalf	0x36a
	.uaword	0x107e
	.uleb128 0x11
	.uaword	0x103b
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.uahalf	0x36f
	.uaword	0x109c
	.uleb128 0xf
	.string	"dummy"
	.byte	0x9
	.uahalf	0x3b1
	.uaword	0x28b
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"OsEE_KCB"
	.byte	0x9
	.uahalf	0x3b3
	.uaword	0x1083
	.uleb128 0xe
	.byte	0x24
	.byte	0x9
	.uahalf	0x3c3
	.uaword	0x1196
	.uleb128 0xf
	.string	"p_kcb"
	.byte	0x9
	.uahalf	0x3c5
	.uaword	0x1196
	.byte	0
	.uleb128 0xf
	.string	"p_tdb_ptr_array"
	.byte	0x9
	.uahalf	0x3d1
	.uaword	0x11a7
	.byte	0x4
	.uleb128 0xf
	.string	"tdb_array_size"
	.byte	0x9
	.uahalf	0x3d4
	.uaword	0x69d
	.byte	0x8
	.uleb128 0xf
	.string	"p_res_ptr_array"
	.byte	0x9
	.uahalf	0x3e0
	.uaword	0x11b8
	.byte	0xc
	.uleb128 0xf
	.string	"res_array_size"
	.byte	0x9
	.uahalf	0x3e2
	.uaword	0x69d
	.byte	0x10
	.uleb128 0xf
	.string	"p_counter_ptr_array"
	.byte	0x9
	.uahalf	0x3e6
	.uaword	0x11cf
	.byte	0x14
	.uleb128 0xf
	.string	"counter_array_size"
	.byte	0x9
	.uahalf	0x3e8
	.uaword	0x69d
	.byte	0x18
	.uleb128 0xf
	.string	"p_alarm_ptr_array"
	.byte	0x9
	.uahalf	0x3eb
	.uaword	0x11e0
	.byte	0x1c
	.uleb128 0xf
	.string	"alarm_array_size"
	.byte	0x9
	.uahalf	0x3ed
	.uaword	0x69d
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x109c
	.uleb128 0x18
	.uaword	0x9d8
	.uaword	0x11a7
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x119c
	.uleb128 0x18
	.uaword	0xb16
	.uaword	0x11b8
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x11ad
	.uleb128 0x18
	.uaword	0x11c9
	.uaword	0x11c9
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xd0d
	.uleb128 0xd
	.byte	0x4
	.uaword	0x11be
	.uleb128 0x18
	.uaword	0xc20
	.uaword	0x11e0
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x11d5
	.uleb128 0x10
	.string	"OsEE_KDB"
	.byte	0x9
	.uahalf	0x3fc
	.uaword	0x11f7
	.uleb128 0x11
	.uaword	0x10ad
	.uleb128 0x3
	.string	"OsEE_preempt"
	.byte	0xa
	.byte	0x50
	.uaword	0xbf3
	.uleb128 0x1a
	.string	"osEE_lock_core"
	.byte	0xb
	.byte	0xce
	.byte	0x1
	.byte	0x3
	.uaword	0x1234
	.uleb128 0x1b
	.uaword	.LASF5
	.byte	0xb
	.byte	0xce
	.uaword	0x1234
	.byte	0
	.uleb128 0x11
	.uaword	0x1239
	.uleb128 0xd
	.byte	0x4
	.uaword	0x106d
	.uleb128 0x1c
	.string	"osEE_unlock_core"
	.byte	0xb
	.uahalf	0x10b
	.byte	0x1
	.byte	0x3
	.uaword	0x1267
	.uleb128 0x1d
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x10b
	.uaword	0x1234
	.byte	0
	.uleb128 0x1a
	.string	"osEE_task_event_reset_mask"
	.byte	0x3
	.byte	0xce
	.byte	0x1
	.byte	0x3
	.uaword	0x1299
	.uleb128 0x1e
	.string	"p_tcb"
	.byte	0x3
	.byte	0xd0
	.uaword	0xbed
	.byte	0
	.uleb128 0x1f
	.string	"osEE_get_curr_core"
	.byte	0xb
	.byte	0x72
	.byte	0x1
	.uaword	0x1239
	.byte	0x3
	.uleb128 0x20
	.string	"osEE_task_get_curr_core"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	0x1239
	.byte	0x3
	.uaword	0x12e6
	.uleb128 0x1b
	.uaword	.LASF1
	.byte	0x1
	.byte	0x3b
	.uaword	0xc04
	.byte	0
	.uleb128 0x20
	.string	"osEE_sn_alloc"
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.uaword	0xa01
	.byte	0x3
	.uaword	0x1323
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x2
	.byte	0x5f
	.uaword	0x1323
	.uleb128 0x21
	.string	"p_sn_allocated"
	.byte	0x2
	.byte	0x62
	.uaword	0xa01
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xa01
	.uleb128 0x1a
	.string	"osEE_sn_release"
	.byte	0x2
	.byte	0x76
	.byte	0x1
	.byte	0x3
	.uaword	0x135f
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x2
	.byte	0x78
	.uaword	0x1323
	.uleb128 0x1e
	.string	"p_to_free"
	.byte	0x2
	.byte	0x79
	.uaword	0xa01
	.byte	0
	.uleb128 0x20
	.string	"osEE_scheduler_task_insert_rq"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	0x267
	.byte	0x1
	.uaword	0x13b7
	.uleb128 0x1b
	.uaword	.LASF4
	.byte	0x1
	.byte	0x4a
	.uaword	0x1067
	.uleb128 0x1b
	.uaword	.LASF7
	.byte	0x1
	.byte	0x4b
	.uaword	0xc04
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x1
	.byte	0x4c
	.uaword	0xbed
	.uleb128 0x22
	.uaword	.LASF9
	.byte	0x1
	.byte	0x4f
	.uaword	0x267
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"osEE_scheduler_task_activated"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	0x267
	.uaword	.LFB111
	.uaword	.LFE111
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1573
	.uleb128 0x24
	.uaword	.LASF10
	.byte	0x1
	.byte	0x61
	.uaword	0x1573
	.uaword	.LLST0
	.uleb128 0x24
	.uaword	.LASF7
	.byte	0x1
	.byte	0x62
	.uaword	0xc04
	.uaword	.LLST1
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.byte	0x65
	.uaword	0x267
	.uaword	.LLST2
	.uleb128 0x25
	.uaword	.LASF8
	.byte	0x1
	.byte	0x66
	.uaword	0x1579
	.uaword	.LLST3
	.uleb128 0x22
	.uaword	.LASF5
	.byte	0x1
	.byte	0x68
	.uaword	0x1234
	.uleb128 0x25
	.uaword	.LASF4
	.byte	0x1
	.byte	0x69
	.uaword	0x157e
	.uaword	.LLST4
	.uleb128 0x25
	.uaword	.LASF3
	.byte	0x1
	.byte	0x6a
	.uaword	0x1583
	.uaword	.LLST5
	.uleb128 0x26
	.string	"p_curr_tcb"
	.byte	0x1
	.byte	0x6b
	.uaword	0x1579
	.uaword	.LLST6
	.uleb128 0x27
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0x14e5
	.uleb128 0x21
	.string	"p_new_stk"
	.byte	0x1
	.byte	0x87
	.uaword	0x1588
	.uleb128 0x28
	.uaword	0x12e6
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.byte	0x87
	.uaword	0x14b6
	.uleb128 0x29
	.uaword	0x1301
	.uaword	.LLST7
	.uleb128 0x2a
	.uaword	.LBB79
	.uaword	.LBE79
	.uleb128 0x2b
	.uaword	0x130c
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x1267
	.uaword	.LBB80
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x9c
	.uaword	0x14d3
	.uleb128 0x29
	.uaword	0x128b
	.uaword	.LLST9
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL8
	.uaword	0x1b36
	.uleb128 0x2e
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x135f
	.uaword	.LBB84
	.uaword	.LBE84
	.byte	0x1
	.byte	0xa5
	.uleb128 0x29
	.uaword	0x13a0
	.uaword	.LLST10
	.uleb128 0x29
	.uaword	0x1395
	.uaword	.LLST11
	.uleb128 0x29
	.uaword	0x138a
	.uaword	.LLST12
	.uleb128 0x2a
	.uaword	.LBB85
	.uaword	.LBE85
	.uleb128 0x30
	.uaword	0x13ab
	.uleb128 0x28
	.uaword	0x1267
	.uaword	.LBB86
	.uaword	.LBE86
	.byte	0x1
	.byte	0x55
	.uaword	0x1536
	.uleb128 0x31
	.uaword	0x128b
	.byte	0
	.uleb128 0x2c
	.uaword	0x12e6
	.uaword	.LBB88
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x58
	.uaword	0x1560
	.uleb128 0x29
	.uaword	0x1301
	.uaword	.LLST13
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x33
	.uaword	0x130c
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL14
	.uaword	0x1b6c
	.uleb128 0x2e
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x11e6
	.uleb128 0x11
	.uaword	0xbed
	.uleb128 0x11
	.uaword	0x1067
	.uleb128 0x11
	.uaword	0xc04
	.uleb128 0x11
	.uaword	0xa01
	.uleb128 0x23
	.byte	0x1
	.string	"osEE_scheduler_task_insert"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uaword	0x267
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x16a1
	.uleb128 0x24
	.uaword	.LASF10
	.byte	0x1
	.byte	0xb2
	.uaword	0x1573
	.uaword	.LLST14
	.uleb128 0x24
	.uaword	.LASF7
	.byte	0x1
	.byte	0xb3
	.uaword	0xc04
	.uaword	.LLST15
	.uleb128 0x21
	.string	"head_changed"
	.byte	0x1
	.byte	0xb6
	.uaword	0x267
	.uleb128 0x34
	.uaword	.LASF8
	.byte	0x1
	.byte	0xb8
	.uaword	0x1579
	.byte	0x1
	.byte	0x6f
	.uleb128 0x22
	.uaword	.LASF5
	.byte	0x1
	.byte	0xba
	.uaword	0x1234
	.uleb128 0x25
	.uaword	.LASF4
	.byte	0x1
	.byte	0xbc
	.uaword	0x157e
	.uaword	.LLST16
	.uleb128 0x35
	.uaword	0x135f
	.uaword	.LBB98
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xd7
	.uleb128 0x36
	.uaword	0x13a0
	.byte	0x1
	.byte	0x6f
	.uleb128 0x29
	.uaword	0x1395
	.uaword	.LLST17
	.uleb128 0x29
	.uaword	0x138a
	.uaword	.LLST16
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x30
	.uaword	0x13ab
	.uleb128 0x28
	.uaword	0x1267
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.byte	0x55
	.uaword	0x1664
	.uleb128 0x31
	.uaword	0x128b
	.byte	0
	.uleb128 0x28
	.uaword	0x12e6
	.uaword	.LBB102
	.uaword	.LBE102
	.byte	0x1
	.byte	0x58
	.uaword	0x1694
	.uleb128 0x29
	.uaword	0x1301
	.uaword	.LLST19
	.uleb128 0x2a
	.uaword	.LBB103
	.uaword	.LBE103
	.uleb128 0x2b
	.uaword	0x130c
	.uaword	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL23
	.byte	0x1
	.uaword	0x1b6c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"osEE_scheduler_task_unblocked"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.uaword	0x267
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1785
	.uleb128 0x24
	.uaword	.LASF10
	.byte	0x1
	.byte	0xfd
	.uaword	0x1573
	.uaword	.LLST21
	.uleb128 0x38
	.string	"p_sn_released"
	.byte	0x1
	.byte	0xfe
	.uaword	0xa01
	.uaword	.LLST22
	.uleb128 0x39
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x101
	.uaword	0x267
	.uaword	.LLST23
	.uleb128 0x39
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x103
	.uaword	0x267
	.uaword	.LLST24
	.uleb128 0x3a
	.string	"p_tdb_released"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x1583
	.uaword	.LLST25
	.uleb128 0x3b
	.string	"p_tcb_released"
	.byte	0x1
	.uahalf	0x107
	.uaword	0x1579
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x109
	.uaword	0x1234
	.uleb128 0x3d
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x157e
	.byte	0x1
	.byte	0x6c
	.uleb128 0x2d
	.uaword	.LVL30
	.uaword	0x1b6c
	.uleb128 0x2e
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"osEE_scheduler_task_terminated"
	.byte	0x1
	.uahalf	0x131
	.byte	0x1
	.uaword	0xc04
	.uaword	.LFB114
	.uaword	.LFE114
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x193d
	.uleb128 0x3f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x133
	.uaword	0x1573
	.uaword	.LLST26
	.uleb128 0x40
	.string	"pp_tdb_from"
	.byte	0x1
	.uahalf	0x134
	.uaword	0x193d
	.uaword	.LLST27
	.uleb128 0x3c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x137
	.uaword	0x1234
	.uleb128 0x3d
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x138
	.uaword	0x157e
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3a
	.string	"p_tdb_to"
	.byte	0x1
	.uahalf	0x139
	.uaword	0xc04
	.uaword	.LLST28
	.uleb128 0x2a
	.uaword	.LBB106
	.uaword	.LBE106
	.uleb128 0x3b
	.string	"p_tdb_term"
	.byte	0x1
	.uahalf	0x140
	.uaword	0x1583
	.byte	0x1
	.byte	0x6e
	.uleb128 0x3b
	.string	"p_tcb_term"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x1579
	.byte	0x1
	.byte	0x6c
	.uleb128 0x27
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	0x18b6
	.uleb128 0x39
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x1588
	.uaword	.LLST29
	.uleb128 0x41
	.uaword	0x1329
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x188b
	.uleb128 0x29
	.uaword	0x134d
	.uaword	.LLST30
	.uleb128 0x29
	.uaword	0x1342
	.uaword	.LLST31
	.byte	0
	.uleb128 0x42
	.uaword	.LVL39
	.uaword	0x1ba9
	.uaword	0x18a5
	.uleb128 0x2e
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL41
	.uaword	0x1be2
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	.LBB110
	.uaword	.LBE110
	.uleb128 0x39
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x1588
	.uaword	.LLST32
	.uleb128 0x41
	.uaword	0x1267
	.uaword	.LBB111
	.uaword	.LBE111
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x18ed
	.uleb128 0x29
	.uaword	0x128b
	.uaword	.LLST33
	.byte	0
	.uleb128 0x27
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	0x1924
	.uleb128 0x3a
	.string	"p_prev"
	.byte	0x1
	.uahalf	0x177
	.uaword	0x1943
	.uaword	.LLST34
	.uleb128 0x2d
	.uaword	.LVL48
	.uaword	0x1c00
	.uleb128 0x2e
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL47
	.uaword	0x1b6c
	.uleb128 0x2e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xc04
	.uleb128 0x11
	.uaword	0x1948
	.uleb128 0xd
	.byte	0x4
	.uaword	0x11fc
	.uleb128 0x3e
	.byte	0x1
	.string	"osEE_scheduler_task_preemption_point"
	.byte	0x1
	.uahalf	0x18c
	.byte	0x1
	.uaword	0x267
	.uaword	.LFB115
	.uaword	.LFE115
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1a11
	.uleb128 0x3f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x1573
	.uaword	.LLST35
	.uleb128 0x39
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x191
	.uaword	0x267
	.uaword	.LLST36
	.uleb128 0x3a
	.string	"p_prev"
	.byte	0x1
	.uahalf	0x192
	.uaword	0x1948
	.uaword	.LLST37
	.uleb128 0x3c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x193
	.uaword	0x1234
	.uleb128 0x3d
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x194
	.uaword	0x157e
	.byte	0x1
	.byte	0x6f
	.uleb128 0x27
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	0x1a00
	.uleb128 0x39
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0x1583
	.uaword	.LLST38
	.uleb128 0x43
	.uaword	.LVL58
	.uaword	0x1b36
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL56
	.uaword	0x1c00
	.uleb128 0x2e
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.string	"osEE_scheduler_task_set_running"
	.byte	0x1
	.uahalf	0x1ae
	.byte	0x1
	.uaword	.LFB116
	.uaword	.LFE116
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1b0a
	.uleb128 0x3f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1b0
	.uaword	0x1573
	.uaword	.LLST39
	.uleb128 0x3f
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1b1
	.uaword	0xc04
	.uaword	.LLST40
	.uleb128 0x40
	.string	"p_sn"
	.byte	0x1
	.uahalf	0x1b2
	.uaword	0xa01
	.uaword	.LLST41
	.uleb128 0x3c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x1234
	.uleb128 0x39
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x157e
	.uaword	.LLST42
	.uleb128 0x3a
	.string	"p_preempted"
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x1583
	.uaword	.LLST43
	.uleb128 0x3a
	.string	"p_preempted_sn"
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x1588
	.uaword	.LLST44
	.uleb128 0x41
	.uaword	0x12e6
	.uaword	.LBB115
	.uaword	.LBE115
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0x1af7
	.uleb128 0x29
	.uaword	0x1301
	.uaword	.LLST45
	.uleb128 0x2a
	.uaword	.LBB116
	.uaword	.LBE116
	.uleb128 0x2b
	.uaword	0x130c
	.uaword	.LLST46
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	.LVL69
	.byte	0x1
	.uaword	0x1b36
	.uleb128 0x2e
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.byte	0
	.uleb128 0x46
	.string	"osEE_kdb_var"
	.byte	0xb
	.byte	0x42
	.uaword	0x11e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"osEE_cdb_var"
	.byte	0xb
	.byte	0x5b
	.uaword	0x106d
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.byte	0x1
	.string	"osEE_change_context_from_running"
	.byte	0x3
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uaword	0x1b6c
	.uleb128 0x48
	.uaword	0xc04
	.uleb128 0x48
	.uaword	0xc04
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"osEE_scheduler_rq_insert"
	.byte	0xa
	.byte	0x46
	.byte	0x1
	.uaword	0x267
	.byte	0x1
	.uaword	0x1ba3
	.uleb128 0x48
	.uaword	0x1ba3
	.uleb128 0x48
	.uaword	0xa01
	.uleb128 0x48
	.uaword	0x1583
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x9f2
	.uleb128 0x49
	.byte	0x1
	.string	"osEE_scheduler_core_pop_running"
	.byte	0xa
	.byte	0x5b
	.byte	0x1
	.uaword	0xa01
	.byte	0x1
	.uaword	0x1be2
	.uleb128 0x48
	.uaword	0x1239
	.uleb128 0x48
	.uaword	0x1ba3
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"osEE_task_end"
	.byte	0x3
	.byte	0xbf
	.byte	0x1
	.byte	0x1
	.uaword	0x1c00
	.uleb128 0x48
	.uaword	0x1583
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.string	"osEE_scheduler_core_rq_preempt_stk"
	.byte	0xa
	.byte	0x54
	.byte	0x1
	.uaword	0x1948
	.byte	0x1
	.uleb128 0x48
	.uaword	0x1239
	.uleb128 0x48
	.uaword	0x1ba3
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
	.uleb128 0x1f
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uaword	.LVL1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-.Ltext0
	.uaword	.LFE111-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL8-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL8-1-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL14-1-.Ltext0
	.uaword	.LFE111-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE111-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL8-1-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL8-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL8-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL8-1-.Ltext0
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL8-1-.Ltext0
	.uahalf	0x3
	.byte	0x82
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL8-1-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x2
	.byte	0x85
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL14-1-.Ltext0
	.uaword	.LFE111-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x3
	.byte	0x82
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL18-.Ltext0
	.uaword	.LFE112-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL23-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL23-1-.Ltext0
	.uaword	.LFE112-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL23-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL23-1-.Ltext0
	.uaword	.LFE112-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL23-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28-.Ltext0
	.uaword	.LFE113-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL30-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL30-1-.Ltext0
	.uaword	.LFE113-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32-.Ltext0
	.uaword	.LFE113-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL30-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL34-.Ltext0
	.uaword	.LFE114-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL44-.Ltext0
	.uaword	.LFE114-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL52-.Ltext0
	.uaword	.LFE114-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL47-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL54-.Ltext0
	.uaword	.LFE115-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL59-.Ltext0
	.uaword	.LFE115-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL58-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL58-1-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL62-.Ltext0
	.uaword	.LFE116-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL69-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL69-1-.Ltext0
	.uaword	.LFE116-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL69-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL69-1-.Ltext0
	.uaword	.LFE116-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL68-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL69-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL69-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL67-.Ltext0
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB80-.Ltext0
	.uaword	.LBE80-.Ltext0
	.uaword	.LBB83-.Ltext0
	.uaword	.LBE83-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB88-.Ltext0
	.uaword	.LBE88-.Ltext0
	.uaword	.LBB91-.Ltext0
	.uaword	.LBE91-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB98-.Ltext0
	.uaword	.LBE98-.Ltext0
	.uaword	.LBB105-.Ltext0
	.uaword	.LBE105-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF12:
	.string	"p_sn_term"
.LASF2:
	.string	"p_counter_db"
.LASF5:
	.string	"p_cdb"
.LASF1:
	.string	"p_tdb"
.LASF6:
	.string	"pp_first"
.LASF8:
	.string	"p_tcb_act"
.LASF9:
	.string	"rq_head_changed"
.LASF0:
	.string	"p_next"
.LASF10:
	.string	"p_kdb"
.LASF11:
	.string	"is_preemption"
.LASF3:
	.string	"p_curr"
.LASF4:
	.string	"p_ccb"
.LASF7:
	.string	"p_tdb_act"
	.extern	osEE_scheduler_core_rq_preempt_stk,STT_FUNC,0
	.extern	osEE_task_end,STT_FUNC,0
	.extern	osEE_scheduler_core_pop_running,STT_FUNC,0
	.extern	osEE_scheduler_rq_insert,STT_FUNC,0
	.extern	osEE_change_context_from_running,STT_FUNC,0
	.extern	osEE_cdb_var,STT_OBJECT,8
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
