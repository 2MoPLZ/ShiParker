	.file	"ee_oo_scheduler.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	osEE_scheduler_core_rq_preempt_stk
	.type	osEE_scheduler_core_rq_preempt_stk, @function
osEE_scheduler_core_rq_preempt_stk:
.LFB104:
	.file 1 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_oo_scheduler.c"
	.loc 1 240 0
.LVL0:
	mov.aa	%a14, %SP
.LCFI0:
	.loc 1 241 0
	ld.a	%a3, [%a4]0
.LVL1:
	.loc 1 242 0
	ld.a	%a15, [%a5]0
.LVL2:
	.loc 1 243 0
	ld.a	%a2, [%a3] 12
.LVL3:
	.loc 1 248 0
	jz.a	%a2, .L2
	.loc 1 249 0
	ld.a	%a2, [%a2] 4
.LVL4:
	.loc 1 250 0
	jz.a	%a15, .L6
.LBB9:
	.loc 1 252 0
	ld.a	%a4, [%a2] 12
.LVL5:
	.loc 1 254 0
	ld.a	%a6, [%a15] 4
	ld.a	%a6, [%a6] 12
	.loc 1 253 0
	ld.bu	%d2, [%a4] 1
	ld.bu	%d15, [%a6] 1
	jge.u	%d2, %d15, .L7
.LVL6:
	.loc 1 260 0
	mov	%d15, 2
	st.b	[%a4] 2, %d15
.LVL7:
	j	.L4
.LVL8:
.L2:
.LBE9:
	.loc 1 287 0
	mov.a	%a2, 0
.LVL9:
	.loc 1 264 0
	jz.a	%a15, .L9
	.loc 1 269 0
	ld.a	%a2, [%a4] 4
.LVL10:
	.loc 1 270 0
	ld.a	%a4, [%a2] 12
.LVL11:
	mov	%d15, 2
	st.b	[%a4] 2, %d15
.LVL12:
	j	.L4
.LVL13:
.L5:
.LBB10:
.LBB11:
.LBB12:
	.loc 1 82 0
	st.b	[%a5] 1, %d15
.LVL14:
	ret
.LVL15:
.L6:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 287 0
	mov.a	%a2, 0
.LVL16:
	ret
.LVL17:
.L7:
	mov.a	%a2, 0
.LVL18:
	ret
.LVL19:
.L4:
	.loc 1 279 0
	ld.w	%d15, [%a15]0
	st.w	[%a5]0, %d15
.LVL20:
.LBB15:
.LBB14:
	.loc 1 63 0
	ld.a	%a4, [%a15] 4
.LVL21:
	.loc 1 64 0
	ld.a	%a5, [%a4] 12
.LVL22:
	.loc 1 72 0
	ld.w	%d15, [%a3] 12
	st.w	[%a15]0, %d15
	.loc 1 74 0
	st.a	[%a3] 12, %a15
	.loc 1 75 0
	st.a	[%a3]0, %a4
.LBB13:
	.loc 1 80 0
	ld.bu	%d15, [%a4] 29
.LVL23:
	.loc 1 81 0
	ld.bu	%d2, [%a5] 1
	jlt.u	%d2, %d15, .L5
.LVL24:
.L9:
.LBE13:
.LBE14:
.LBE15:
	.loc 1 295 0
	ret
.LFE104:
	.size	osEE_scheduler_core_rq_preempt_stk, .-osEE_scheduler_core_rq_preempt_stk
	.align 1
	.global	osEE_sn_priority_insert
	.type	osEE_sn_priority_insert, @function
osEE_sn_priority_insert:
.LFB105:
	.loc 1 306 0
.LVL25:
	mov.aa	%a14, %SP
.LCFI1:
	.loc 1 307 0
	ld.a	%a15, [%a5] 4
.LVL26:
	.loc 1 308 0
	ld.a	%a2, [%a15] 12
.LVL27:
	.loc 1 309 0
	jz	%d4, .L11
	.loc 1 309 0 is_stmt 0 discriminator 1
	ld.bu	%d2, [%a15] 28
	j	.L12
.L11:
	.loc 1 309 0 discriminator 2
	ld.bu	%d2, [%a2] 1
.L12:
.LVL28:
	.loc 1 314 0 is_stmt 1 discriminator 4
	ld.a	%a15, [%a4]0
.LVL29:
	.loc 1 318 0 discriminator 4
	mov.a	%a6, 0
	jnz.a	%a15, .L17
	j	.L13
.LVL30:
.L19:
.LBB16:
	.loc 1 332 0
	mov.a	%a15, %d15
.LVL31:
.L17:
	.loc 1 320 0
	ld.a	%a2, [%a15] 4
.LVL32:
	.loc 1 321 0
	ld.a	%a3, [%a2] 12
.LVL33:
	.loc 1 323 0
	jz	%d4, .L14
	.loc 1 324 0
	ld.bu	%d15, [%a2] 28
.LVL34:
	j	.L15
.LVL35:
.L14:
	.loc 1 326 0
	ld.bu	%d15, [%a3] 1
.LVL36:
.L15:
	.loc 1 329 0
	jlt.u	%d15, %d2, .L16
.LVL37:
	.loc 1 332 0
	ld.w	%d15, [%a15]0
.LVL38:
	mov.aa	%a6, %a15
.LBE16:
	.loc 1 318 0
	jnz	%d15, .L19
.LVL39:
.LBB17:
	.loc 1 332 0
	mov.a	%a15, %d15
.LVL40:
.L16:
.LBE17:
	.loc 1 338 0
	jz.a	%a6, .L13
	.loc 1 339 0
	st.a	[%a6]0, %a5
.LVL41:
	.loc 1 315 0
	mov	%d2, 0
.LVL42:
	j	.L18
.LVL43:
.L13:
	.loc 1 341 0
	st.a	[%a4]0, %a5
.LVL44:
	.loc 1 342 0
	mov	%d2, 1
.LVL45:
.L18:
	.loc 1 345 0
	st.a	[%a5]0, %a15
	.loc 1 348 0
	ret
.LFE105:
	.size	osEE_sn_priority_insert, .-osEE_sn_priority_insert
	.align 1
	.global	osEE_scheduler_rq_insert
	.type	osEE_scheduler_rq_insert, @function
osEE_scheduler_rq_insert:
.LFB103:
	.loc 1 224 0
.LVL46:
	mov.aa	%a14, %SP
.LCFI2:
	.loc 1 225 0
	st.a	[%a5] 4, %a6
	.loc 1 228 0
	mov	%d4, 1
	call	osEE_sn_priority_insert
.LVL47:
	.loc 1 232 0
	ret
.LFE103:
	.size	osEE_scheduler_rq_insert, .-osEE_scheduler_rq_insert
	.align 1
	.global	osEE_scheduler_core_pop_running
	.type	osEE_scheduler_core_pop_running, @function
osEE_scheduler_core_pop_running:
.LFB106:
	.loc 1 356 0
.LVL48:
	mov.aa	%a14, %SP
.LCFI3:
	mov.aa	%a13, %a4
	.loc 1 357 0
	ld.a	%a15, [%a4]0
.LVL49:
	.loc 1 358 0
	ld.a	%a12, [%a15] 12
.LVL50:
	.loc 1 364 0
	ld.w	%d15, [%a12]0
	st.w	[%a15] 12, %d15
.LVL51:
.LBB18:
	.loc 1 387 0
	call	osEE_scheduler_core_rq_preempt_stk
.LVL52:
	.loc 1 389 0
	ld.w	%d15, [%a15] 12
.LVL53:
	.loc 1 392 0
	jnz.a	%a2, .L22
.LBB19:
	.loc 1 405 0
	mov.d	%d3, %a13
	add	%d3, 4
	add	%d2, %d15, 4
	cmovn	%d2, %d15, %d3
	mov.a	%a13, %d2
.LVL54:
	ld.w	%d15, [%a13]0
.LVL55:
	st.w	[%a15]0, %d15
.LVL56:
.L22:
.LBE19:
.LBE18:
	.loc 1 423 0
	mov.aa	%a2, %a12
.LVL57:
	ret
.LFE106:
	.size	osEE_scheduler_core_pop_running, .-osEE_scheduler_core_pop_running
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
	.uaword	.LFB106
	.uaword	.LFE106-.LFB106
	.byte	0x4
	.uaword	.LCFI3-.LFB106
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 4 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 5 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_hal_internal_types.h"
	.file 6 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 7 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_scheduler_types.h"
	.file 8 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_kernel_types.h"
	.file 9 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_scheduler.h"
	.file 10 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_kernel.h"
	.file 11 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_get_kernel_and_core.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x12e7
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -O1 -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\TUNNEL~1\\TC275\\erika\\src\\ee_oo_scheduler.c"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"size_t"
	.byte	0x2
	.byte	0xd4
	.uaword	0x16c
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
	.byte	0x3
	.byte	0x2a
	.uaword	0x1a6
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
	.byte	0x3
	.byte	0x36
	.uaword	0x1d4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x3
	.byte	0x50
	.uaword	0x16c
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
	.byte	0x4
	.byte	0x48
	.uaword	0x257
	.uleb128 0x5
	.string	"OSEE_FALSE"
	.sleb128 0
	.uleb128 0x5
	.string	"OSEE_TRUE"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"OsEE_bool"
	.byte	0x4
	.byte	0x4b
	.uaword	0x235
	.uleb128 0x3
	.string	"OsEE_addr"
	.byte	0x4
	.byte	0x5a
	.uaword	0x279
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x4
	.byte	0x5b
	.uaword	0x1ea
	.uleb128 0x3
	.string	"OsEE_prio"
	.byte	0x4
	.byte	0x8d
	.uaword	0x197
	.uleb128 0x3
	.string	"OsEE_isr_src_id"
	.byte	0x4
	.byte	0x92
	.uaword	0x1c4
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x74
	.uaword	0x309
	.uleb128 0x8
	.string	"pcxo"
	.byte	0x5
	.byte	0x75
	.uaword	0x225
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"pcxs"
	.byte	0x5
	.byte	0x76
	.uaword	0x225
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"ul"
	.byte	0x5
	.byte	0x7b
	.uaword	0x225
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"pie"
	.byte	0x5
	.byte	0x7c
	.uaword	0x225
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"pcpn"
	.byte	0x5
	.byte	0x7d
	.uaword	0x225
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x72
	.uaword	0x329
	.uleb128 0xa
	.string	"reg"
	.byte	0x5
	.byte	0x73
	.uaword	0x27b
	.uleb128 0xa
	.string	"bits"
	.byte	0x5
	.byte	0x82
	.uaword	0x2b3
	.byte	0
	.uleb128 0x3
	.string	"OsEE_pcxi"
	.byte	0x5
	.byte	0x83
	.uaword	0x309
	.uleb128 0xb
	.string	"OsEE_CTX_tag"
	.byte	0x10
	.byte	0x5
	.byte	0xf3
	.uaword	0x384
	.uleb128 0xc
	.string	"p_ctx"
	.byte	0x5
	.byte	0xf4
	.uaword	0x384
	.byte	0
	.uleb128 0xc
	.string	"dummy"
	.byte	0x5
	.byte	0xf5
	.uaword	0x27b
	.byte	0x4
	.uleb128 0xc
	.string	"pcxi"
	.byte	0x5
	.byte	0xf6
	.uaword	0x329
	.byte	0x8
	.uleb128 0xc
	.string	"ra"
	.byte	0x5
	.byte	0xf7
	.uaword	0x268
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x33a
	.uleb128 0x3
	.string	"OsEE_CTX"
	.byte	0x5
	.byte	0xf8
	.uaword	0x33a
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xfb
	.uaword	0x3b1
	.uleb128 0xc
	.string	"p_tos"
	.byte	0x5
	.byte	0xfc
	.uaword	0x3b1
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x38a
	.uleb128 0x3
	.string	"OsEE_SCB"
	.byte	0x5
	.byte	0xfd
	.uaword	0x39a
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.uahalf	0x100
	.uaword	0x3f4
	.uleb128 0xf
	.string	"p_bos"
	.byte	0x5
	.uahalf	0x101
	.uaword	0x3b1
	.byte	0
	.uleb128 0xf
	.string	"stack_size"
	.byte	0x5
	.uahalf	0x105
	.uaword	0x15e
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"OsEE_SDB"
	.byte	0x5
	.uahalf	0x106
	.uaword	0x405
	.uleb128 0x11
	.uaword	0x3c7
	.uleb128 0xe
	.byte	0xc
	.byte	0x5
	.uahalf	0x10b
	.uaword	0x444
	.uleb128 0xf
	.string	"p_sdb"
	.byte	0x5
	.uahalf	0x10c
	.uaword	0x444
	.byte	0
	.uleb128 0xf
	.string	"p_scb"
	.byte	0x5
	.uahalf	0x10d
	.uaword	0x44a
	.byte	0x4
	.uleb128 0xf
	.string	"isr2_src"
	.byte	0x5
	.uahalf	0x10e
	.uaword	0x29c
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x3f4
	.uleb128 0xd
	.byte	0x4
	.uaword	0x3b7
	.uleb128 0x10
	.string	"OsEE_HDB"
	.byte	0x5
	.uahalf	0x111
	.uaword	0x461
	.uleb128 0x11
	.uaword	0x40a
	.uleb128 0x3
	.string	"AppModeType"
	.byte	0x6
	.byte	0x60
	.uaword	0x197
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x6
	.byte	0x78
	.uaword	0x27b
	.uleb128 0x3
	.string	"TaskPrio"
	.byte	0x6
	.byte	0xc8
	.uaword	0x28b
	.uleb128 0x3
	.string	"TaskActivation"
	.byte	0x6
	.byte	0xf4
	.uaword	0x197
	.uleb128 0x10
	.string	"TaskFunc"
	.byte	0x6
	.uahalf	0x13a
	.uaword	0x4c0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x4c6
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.uahalf	0x145
	.uaword	0x52f
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
	.byte	0x6
	.uahalf	0x153
	.uaword	0x4c8
	.uleb128 0x10
	.string	"TaskExecutionType"
	.byte	0x6
	.uahalf	0x157
	.uaword	0x52f
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.uahalf	0x15d
	.uaword	0x5e8
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
	.byte	0x6
	.uahalf	0x16e
	.uaword	0x560
	.uleb128 0x10
	.string	"TaskStateType"
	.byte	0x6
	.uahalf	0x17e
	.uaword	0x5e8
	.uleb128 0x10
	.string	"EventMaskType"
	.byte	0x6
	.uahalf	0x237
	.uaword	0x27b
	.uleb128 0x10
	.string	"MemSize"
	.byte	0x6
	.uahalf	0x2a3
	.uaword	0x15e
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.uahalf	0x2b1
	.uaword	0x860
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
	.byte	0x6
	.uahalf	0x2d4
	.uaword	0x63d
	.uleb128 0x10
	.string	"StatusType"
	.byte	0x6
	.uahalf	0x2d9
	.uaword	0x860
	.uleb128 0xb
	.string	"OsEE_SN_tag"
	.byte	0x8
	.byte	0x7
	.byte	0x4b
	.uaword	0x8be
	.uleb128 0xc
	.string	"p_next"
	.byte	0x7
	.byte	0x4d
	.uaword	0x8be
	.byte	0
	.uleb128 0xc
	.string	"p_tdb"
	.byte	0x7
	.byte	0x4f
	.uaword	0x963
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x88c
	.uleb128 0x14
	.string	"OsEE_TDB_tag"
	.byte	0x20
	.byte	0x8
	.uahalf	0x108
	.uaword	0x963
	.uleb128 0xf
	.string	"hdb"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x450
	.byte	0
	.uleb128 0xf
	.string	"p_tcb"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0xb65
	.byte	0xc
	.uleb128 0xf
	.string	"tid"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x479
	.byte	0x10
	.uleb128 0xf
	.string	"task_type"
	.byte	0x8
	.uahalf	0x112
	.uaword	0x546
	.byte	0x14
	.uleb128 0xf
	.string	"task_func"
	.byte	0x8
	.uahalf	0x114
	.uaword	0x4af
	.byte	0x18
	.uleb128 0xf
	.string	"ready_prio"
	.byte	0x8
	.uahalf	0x117
	.uaword	0x489
	.byte	0x1c
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x11a
	.uaword	0x489
	.byte	0x1d
	.uleb128 0xf
	.string	"max_num_of_act"
	.byte	0x8
	.uahalf	0x11c
	.uaword	0x499
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x969
	.uleb128 0x11
	.uaword	0x8c4
	.uleb128 0x3
	.string	"OsEE_SN"
	.byte	0x7
	.byte	0x50
	.uaword	0x88c
	.uleb128 0x3
	.string	"OsEE_RQ"
	.byte	0x7
	.byte	0xd5
	.uaword	0x98c
	.uleb128 0xd
	.byte	0x4
	.uaword	0x96e
	.uleb128 0x3
	.string	"OsEE_byte"
	.byte	0x8
	.byte	0x53
	.uaword	0x197
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.byte	0x73
	.uaword	0xa0a
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
	.byte	0x8
	.byte	0x7d
	.uaword	0x9a3
	.uleb128 0x7
	.byte	0xc
	.byte	0x8
	.byte	0x90
	.uaword	0xa5e
	.uleb128 0xc
	.string	"p_next"
	.byte	0x8
	.byte	0x94
	.uaword	0xa8e
	.byte	0
	.uleb128 0xc
	.string	"prev_prio"
	.byte	0x8
	.byte	0x97
	.uaword	0x489
	.byte	0x4
	.uleb128 0xc
	.string	"p_owner"
	.byte	0x8
	.byte	0x9a
	.uaword	0x963
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"OsEE_MDB_tag"
	.byte	0x8
	.byte	0x8
	.byte	0xb5
	.uaword	0xa8e
	.uleb128 0xc
	.string	"p_cb"
	.byte	0x8
	.byte	0xb7
	.uaword	0xaa9
	.byte	0
	.uleb128 0xc
	.string	"prio"
	.byte	0x8
	.byte	0xc3
	.uaword	0x489
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xa94
	.uleb128 0x11
	.uaword	0xa5e
	.uleb128 0x3
	.string	"OsEE_MCB"
	.byte	0x8
	.byte	0x9b
	.uaword	0xa24
	.uleb128 0xd
	.byte	0x4
	.uaword	0xa99
	.uleb128 0x3
	.string	"OsEE_MDB"
	.byte	0x8
	.byte	0xce
	.uaword	0xa94
	.uleb128 0x7
	.byte	0x14
	.byte	0x8
	.byte	0xe0
	.uaword	0xb4e
	.uleb128 0xc
	.string	"current_num_of_act"
	.byte	0x8
	.byte	0xe4
	.uaword	0x499
	.byte	0
	.uleb128 0xc
	.string	"current_prio"
	.byte	0x8
	.byte	0xea
	.uaword	0x489
	.byte	0x1
	.uleb128 0xc
	.string	"status"
	.byte	0x8
	.byte	0xec
	.uaword	0x601
	.byte	0x2
	.uleb128 0xc
	.string	"p_last_m"
	.byte	0x8
	.byte	0xef
	.uaword	0xb4e
	.byte	0x4
	.uleb128 0xc
	.string	"wait_mask"
	.byte	0x8
	.byte	0xf3
	.uaword	0x617
	.byte	0x8
	.uleb128 0xc
	.string	"event_mask"
	.byte	0x8
	.byte	0xf5
	.uaword	0x617
	.byte	0xc
	.uleb128 0xc
	.string	"p_own_sn"
	.byte	0x8
	.byte	0xfb
	.uaword	0x98c
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xaaf
	.uleb128 0x10
	.string	"OsEE_TCB"
	.byte	0x8
	.uahalf	0x101
	.uaword	0xabf
	.uleb128 0xd
	.byte	0x4
	.uaword	0xb54
	.uleb128 0x10
	.string	"OsEE_TDB"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x969
	.uleb128 0xd
	.byte	0x4
	.uaword	0xb6b
	.uleb128 0xe
	.byte	0x20
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0xc87
	.uleb128 0xf
	.string	"p_curr"
	.byte	0x8
	.uahalf	0x2dc
	.uaword	0xb7c
	.byte	0
	.uleb128 0xf
	.string	"rq"
	.byte	0x8
	.uahalf	0x2ee
	.uaword	0x97d
	.byte	0x4
	.uleb128 0xf
	.string	"p_free_sn"
	.byte	0x8
	.uahalf	0x2f0
	.uaword	0x98c
	.byte	0x8
	.uleb128 0xf
	.string	"p_stk_sn"
	.byte	0x8
	.uahalf	0x2ff
	.uaword	0x98c
	.byte	0xc
	.uleb128 0xf
	.string	"os_status"
	.byte	0x8
	.uahalf	0x301
	.uaword	0xc87
	.byte	0x10
	.uleb128 0xf
	.string	"app_mode"
	.byte	0x8
	.uahalf	0x305
	.uaword	0x466
	.byte	0x11
	.uleb128 0xf
	.string	"last_error"
	.byte	0x8
	.uahalf	0x307
	.uaword	0x879
	.byte	0x12
	.uleb128 0xf
	.string	"prev_s_isr_all_status"
	.byte	0x8
	.uahalf	0x327
	.uaword	0x27b
	.byte	0x14
	.uleb128 0xf
	.string	"prev_s_isr_os_status"
	.byte	0x8
	.uahalf	0x329
	.uaword	0x27b
	.byte	0x18
	.uleb128 0xf
	.string	"s_isr_all_cnt"
	.byte	0x8
	.uahalf	0x32b
	.uaword	0x992
	.byte	0x1c
	.uleb128 0xf
	.string	"s_isr_os_cnt"
	.byte	0x8
	.uahalf	0x32d
	.uaword	0x992
	.byte	0x1d
	.uleb128 0xf
	.string	"d_isr_all_cnt"
	.byte	0x8
	.uahalf	0x330
	.uaword	0x992
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.uaword	0xa0a
	.uleb128 0x10
	.string	"OsEE_CCB"
	.byte	0x8
	.uahalf	0x33a
	.uaword	0xb82
	.uleb128 0xe
	.byte	0x8
	.byte	0x8
	.uahalf	0x344
	.uaword	0xcc9
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x34a
	.uaword	0xcc9
	.byte	0
	.uleb128 0xf
	.string	"p_idle_task"
	.byte	0x8
	.uahalf	0x354
	.uaword	0xb7c
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xc8c
	.uleb128 0x10
	.string	"OsEE_CDB"
	.byte	0x8
	.uahalf	0x36a
	.uaword	0xce0
	.uleb128 0x11
	.uaword	0xc9d
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.uahalf	0x36f
	.uaword	0xcfe
	.uleb128 0xf
	.string	"dummy"
	.byte	0x8
	.uahalf	0x3b1
	.uaword	0x27b
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"OsEE_KCB"
	.byte	0x8
	.uahalf	0x3b3
	.uaword	0xce5
	.uleb128 0xe
	.byte	0x14
	.byte	0x8
	.uahalf	0x3c3
	.uaword	0xd8a
	.uleb128 0xf
	.string	"p_kcb"
	.byte	0x8
	.uahalf	0x3c5
	.uaword	0xd8a
	.byte	0
	.uleb128 0xf
	.string	"p_tdb_ptr_array"
	.byte	0x8
	.uahalf	0x3d1
	.uaword	0xd9b
	.byte	0x4
	.uleb128 0xf
	.string	"tdb_array_size"
	.byte	0x8
	.uahalf	0x3d4
	.uaword	0x62d
	.byte	0x8
	.uleb128 0xf
	.string	"p_res_ptr_array"
	.byte	0x8
	.uahalf	0x3e0
	.uaword	0xdac
	.byte	0xc
	.uleb128 0xf
	.string	"res_array_size"
	.byte	0x8
	.uahalf	0x3e2
	.uaword	0x62d
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xcfe
	.uleb128 0x17
	.uaword	0x963
	.uaword	0xd9b
	.uleb128 0x18
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xd90
	.uleb128 0x17
	.uaword	0xa8e
	.uaword	0xdac
	.uleb128 0x18
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xda1
	.uleb128 0x10
	.string	"OsEE_KDB"
	.byte	0x8
	.uahalf	0x3fc
	.uaword	0xdc3
	.uleb128 0x11
	.uaword	0xd0f
	.uleb128 0x3
	.string	"OsEE_preempt"
	.byte	0x9
	.byte	0x50
	.uaword	0xb6b
	.uleb128 0x19
	.string	"osEE_call_post_task_hook"
	.byte	0xa
	.uahalf	0x19c
	.byte	0x1
	.byte	0x3
	.uaword	0xe0c
	.uleb128 0x1a
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x19e
	.uaword	0xe0c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xe12
	.uleb128 0x11
	.uaword	0xc8c
	.uleb128 0x1b
	.string	"osEE_scheduler_stk_next"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.byte	0x1
	.uaword	0xe7a
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.byte	0x3b
	.uaword	0xcc9
	.uleb128 0x1d
	.string	"p_rq_sn"
	.byte	0x1
	.byte	0x3c
	.uaword	0x98c
	.uleb128 0x1e
	.string	"p_tdb"
	.byte	0x1
	.byte	0x3f
	.uaword	0xe7a
	.uleb128 0x1e
	.string	"p_tcb"
	.byte	0x1
	.byte	0x40
	.uaword	0xe7f
	.uleb128 0x1f
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.byte	0x50
	.uaword	0xe84
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0xb7c
	.uleb128 0x11
	.uaword	0xb65
	.uleb128 0x11
	.uaword	0x489
	.uleb128 0x21
	.byte	0x1
	.string	"osEE_scheduler_core_rq_preempt_stk"
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.uaword	0xfb6
	.uaword	.LFB104
	.uaword	.LFE104
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xfb6
	.uleb128 0x22
	.string	"p_cdb"
	.byte	0x1
	.byte	0xed
	.uaword	0xfbc
	.uaword	.LLST0
	.uleb128 0x22
	.string	"p_rq"
	.byte	0x1
	.byte	0xee
	.uaword	0xfc2
	.uaword	.LLST1
	.uleb128 0x23
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf1
	.uaword	0xfc8
	.byte	0x1
	.byte	0x63
	.uleb128 0x24
	.string	"p_rq_sn"
	.byte	0x1
	.byte	0xf2
	.uaword	0xfcd
	.byte	0x1
	.byte	0x6f
	.uleb128 0x25
	.string	"p_ret_sn"
	.byte	0x1
	.byte	0xf3
	.uaword	0xfd2
	.uaword	.LLST2
	.uleb128 0x25
	.string	"is_rq_preemption"
	.byte	0x1
	.byte	0xf5
	.uaword	0x257
	.uaword	.LLST3
	.uleb128 0x25
	.string	"p_ret_tdb"
	.byte	0x1
	.byte	0xf6
	.uaword	0xb7c
	.uaword	.LLST4
	.uleb128 0x26
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0xf6b
	.uleb128 0x25
	.string	"p_ret_tcb"
	.byte	0x1
	.byte	0xfc
	.uaword	0xe7f
	.uaword	.LLST5
	.byte	0
	.uleb128 0x27
	.uaword	0xe17
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x11a
	.uleb128 0x28
	.uaword	0xe43
	.uaword	.LLST6
	.uleb128 0x28
	.uaword	0xe38
	.uaword	.LLST7
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2a
	.uaword	0xe52
	.uaword	.LLST8
	.uleb128 0x2a
	.uaword	0xe5f
	.uaword	.LLST9
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x2a
	.uaword	0xe6d
	.uaword	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xdc8
	.uleb128 0xd
	.byte	0x4
	.uaword	0xccf
	.uleb128 0xd
	.byte	0x4
	.uaword	0x97d
	.uleb128 0x11
	.uaword	0xcc9
	.uleb128 0x11
	.uaword	0x98c
	.uleb128 0xd
	.byte	0x4
	.uaword	0xfd8
	.uleb128 0x11
	.uaword	0x96e
	.uleb128 0x2b
	.byte	0x1
	.string	"osEE_sn_priority_insert"
	.byte	0x1
	.uahalf	0x12c
	.byte	0x1
	.uaword	0x257
	.uaword	.LFB105
	.uaword	.LFE105
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x110e
	.uleb128 0x2c
	.string	"pp_first"
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x110e
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x98c
	.byte	0x1
	.byte	0x65
	.uleb128 0x2c
	.string	"as_ready"
	.byte	0x1
	.uahalf	0x130
	.uaword	0x1114
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x133
	.uaword	0xe7a
	.uaword	.LLST11
	.uleb128 0x2f
	.string	"p_tcb_new"
	.byte	0x1
	.uahalf	0x134
	.uaword	0x1119
	.uaword	.LLST12
	.uleb128 0x2f
	.string	"new_task_prio"
	.byte	0x1
	.uahalf	0x135
	.uaword	0xe84
	.uaword	.LLST13
	.uleb128 0x2f
	.string	"p_prev"
	.byte	0x1
	.uahalf	0x139
	.uaword	0x98c
	.uaword	.LLST14
	.uleb128 0x2f
	.string	"p_curr"
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x98c
	.uaword	.LLST15
	.uleb128 0x2f
	.string	"head_changed"
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x257
	.uaword	.LLST16
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x2f
	.string	"prio_to_check"
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x489
	.uaword	.LLST17
	.uleb128 0x2f
	.string	"p_cur_tdb"
	.byte	0x1
	.uahalf	0x140
	.uaword	0xe7a
	.uaword	.LLST18
	.uleb128 0x2f
	.string	"p_cur_tcb"
	.byte	0x1
	.uahalf	0x141
	.uaword	0x1119
	.uaword	.LLST19
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x98c
	.uleb128 0x11
	.uaword	0x257
	.uleb128 0x11
	.uaword	0x111e
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1124
	.uleb128 0x11
	.uaword	0xb54
	.uleb128 0x21
	.byte	0x1
	.string	"osEE_scheduler_rq_insert"
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.uaword	0x257
	.uaword	.LFB103
	.uaword	.LFE103
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11a6
	.uleb128 0x22
	.string	"p_rq"
	.byte	0x1
	.byte	0xdc
	.uaword	0xfc2
	.uaword	.LLST20
	.uleb128 0x30
	.uaword	.LASF2
	.byte	0x1
	.byte	0xdd
	.uaword	0x98c
	.uaword	.LLST21
	.uleb128 0x30
	.uaword	.LASF3
	.byte	0x1
	.byte	0xde
	.uaword	0xe7a
	.uaword	.LLST22
	.uleb128 0x31
	.uaword	.LVL47
	.uaword	0xfdd
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x32
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"osEE_scheduler_core_pop_running"
	.byte	0x1
	.uahalf	0x15f
	.byte	0x1
	.uaword	0x98c
	.uaword	.LFB106
	.uaword	.LFE106
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x12b4
	.uleb128 0x33
	.string	"p_cdb"
	.byte	0x1
	.uahalf	0x161
	.uaword	0xfbc
	.uaword	.LLST23
	.uleb128 0x33
	.string	"p_rq"
	.byte	0x1
	.uahalf	0x162
	.uaword	0xfc2
	.uaword	.LLST24
	.uleb128 0x34
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x165
	.uaword	0xfc8
	.byte	0x1
	.byte	0x6f
	.uleb128 0x35
	.string	"p_prev_stk_sn"
	.byte	0x1
	.uahalf	0x166
	.uaword	0xfcd
	.byte	0x1
	.byte	0x6c
	.uleb128 0x2f
	.string	"p_next_stk_sn"
	.byte	0x1
	.uahalf	0x168
	.uaword	0xfcd
	.uaword	.LLST25
	.uleb128 0x36
	.uaword	.LBB18
	.uaword	.LBE18
	.uleb128 0x2f
	.string	"p_preempt"
	.byte	0x1
	.uahalf	0x183
	.uaword	0x12b4
	.uaword	.LLST26
	.uleb128 0x2f
	.string	"p_curr_stk_sn"
	.byte	0x1
	.uahalf	0x185
	.uaword	0x12b9
	.uaword	.LLST27
	.uleb128 0x26
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0x129b
	.uleb128 0x37
	.string	"p_tdb_stk"
	.byte	0x1
	.uahalf	0x189
	.uaword	0xb7c
	.byte	0
	.uleb128 0x31
	.uaword	.LVL52
	.uaword	0xe89
	.uleb128 0x32
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0xfb6
	.uleb128 0x11
	.uaword	0xfd2
	.uleb128 0x38
	.string	"osEE_kdb_var"
	.byte	0xb
	.byte	0x42
	.uaword	0xdb2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"osEE_cdb_var"
	.byte	0xb
	.byte	0x5b
	.uaword	0xccf
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x2d
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17-.Ltext0
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
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL22-.Ltext0
	.uaword	.LFE104-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x2
	.byte	0x83
	.sleb128 12
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x2
	.byte	0x83
	.sleb128 12
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x2
	.byte	0x83
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x5
	.byte	0x83
	.sleb128 12
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x5
	.byte	0x83
	.sleb128 12
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 29
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 29
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x2
	.byte	0x85
	.sleb128 4
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x2
	.byte	0x85
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x5
	.byte	0x85
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x5
	.byte	0x85
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL40-.Ltext0
	.uaword	.LFE105-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL45-.Ltext0
	.uaword	.LFE105-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 28
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL47-1-.Ltext0
	.uaword	.LFE103-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL47-1-.Ltext0
	.uaword	.LFE103-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL47-1-.Ltext0
	.uaword	.LFE103-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL52-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL52-1-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL56-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL56-.Ltext0
	.uaword	.LFE106-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL52-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL52-1-.Ltext0
	.uaword	.LFE106-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL55-.Ltext0
	.uaword	.LFE106-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
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
	.uaword	.LBB10-.Ltext0
	.uaword	.LBE10-.Ltext0
	.uaword	.LBB15-.Ltext0
	.uaword	.LBE15-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB12-.Ltext0
	.uaword	.LBE12-.Ltext0
	.uaword	.LBB13-.Ltext0
	.uaword	.LBE13-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB16-.Ltext0
	.uaword	.LBE16-.Ltext0
	.uaword	.LBB17-.Ltext0
	.uaword	.LBE17-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"p_tdb_new"
.LASF0:
	.string	"dispatch_prio"
.LASF1:
	.string	"p_ccb"
.LASF2:
	.string	"p_sn_new"
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
