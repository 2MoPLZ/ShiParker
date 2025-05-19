	.file	"ee_oo_sched_entry_points.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.type	osEE_release_all_m, @function
osEE_release_all_m:
.LFB102:
	.file 1 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_oo_sched_entry_points.c"
	.loc 1 62 0
.LVL0:
	mov.aa	%a14, %SP
.LCFI0:
.LVL1:
	.loc 1 64 0
	ld.a	%a3, [%a4] 12
.LVL2:
	.loc 1 66 0
	ld.a	%a15, [%a3] 4
	.loc 1 63 0
	mov.a	%a2, 0
	.loc 1 66 0
	jz.a	%a15, .L2
.LBB71:
	.loc 1 75 0
	mov	%d15, 0
.LVL3:
.L4:
	.loc 1 73 0
	ld.a	%a15, [%a15]0
.LVL4:
	.loc 1 75 0
	st.w	[%a15] 8, %d15
	.loc 1 77 0
	jnz.a	%a2, .L3
.LVL5:
	.loc 1 78 0
	ld.a	%a2, [%a3] 4
.LVL6:
.L3:
	.loc 1 88 0
	ld.a	%a15, [%a15]0
.LVL7:
	st.a	[%a3] 4, %a15
.LBE71:
	.loc 1 66 0
	jnz.a	%a15, .L4
.LVL8:
.L2:
	.loc 1 106 0
	ret
.LFE102:
	.size	osEE_release_all_m, .-osEE_release_all_m
	.align 1
	.global	osEE_scheduler_task_wrapper_restore
	.type	osEE_scheduler_task_wrapper_restore, @function
osEE_scheduler_task_wrapper_restore:
.LFB104:
	.loc 1 192 0
.LVL9:
	mov.aa	%a14, %SP
.LCFI1:
	.loc 1 219 0
	ld.a	%a15, [%a4] 12
	mov	%d15, 4
	st.b	[%a15] 2, %d15
	ret
.LFE104:
	.size	osEE_scheduler_task_wrapper_restore, .-osEE_scheduler_task_wrapper_restore
	.align 1
	.global	osEE_scheduler_task_wrapper_run
	.type	osEE_scheduler_task_wrapper_run, @function
osEE_scheduler_task_wrapper_run:
.LFB105:
	.loc 1 267 0
.LVL10:
	mov.aa	%a14, %SP
.LCFI2:
	mov.aa	%a15, %a4
	.loc 1 268 0
	ld.a	%a2, [%a4] 12
	ld.bu	%d2, [%a2] 1
.LVL11:
.LBB105:
.LBB106:
	.loc 1 219 0
	mov	%d15, 4
	st.b	[%a2] 2, %d15
.LBE106:
.LBE105:
	.loc 1 271 0
	eq	%d15, %d2, 255
	jnz	%d15, .L9
.LVL12:
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL13:
#NO_APP
.LBB107:
.LBB108:
	.file 2 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_hal_internal.h"
	.loc 2 313 0
	extr	%d4, %d2, 0, 8
	mov	%d3, 0
	jgez	%d4, .L10
.LVL14:
.LBB109:
.LBB110:
	.loc 2 303 0
	and	%d2, %d2, 127
	addi	%d3, %d2, 1
.LVL15:
.L10:
	insert	%d15, %d15, %d3, 0, 8
.LVL16:
.LBE110:
.LBE109:
.LBB111:
.LBB112:
	.loc 2 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
#NO_APP
.LBE112:
.LBE111:
.LBE108:
.LBE107:
.LBB113:
.LBB114:
	.loc 2 282 0
#APP
	# 282 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	enable
	# 0 "" 2
.LVL17:
#NO_APP
.L9:
.LBE114:
.LBE113:
	.loc 1 276 0
	ld.a	%a2, [%a15] 24
.LVL18:
	calli	%a2
.LVL19:
.LBB115:
.LBB116:
	.loc 1 118 0
	movh.a	%a2, hi:osEE_cdb_var
	ld.a	%a2, [%a2] lo:osEE_cdb_var
.LVL20:
	.loc 1 124 0
	mov	%d15, 0
.LVL21:
	st.b	[%a2] 29, %d15
	.loc 1 127 0
	ld.bu	%d15, [%a2] 28
	jz	%d15, .L11
	.loc 1 128 0
	mov	%d15, 0
	st.b	[%a2] 28, %d15
.LVL22:
.LBB117:
.LBB118:
.LBB119:
.LBB120:
	.loc 2 265 0
	ld.w	%d15, [%a2] 20
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL23:
#NO_APP
.L11:
.LBE120:
.LBE119:
.LBE118:
.LBE117:
	.loc 1 131 0
	ld.bu	%d15, [%a2] 30
	jz	%d15, .L12
	.loc 1 132 0
	mov	%d15, 0
	st.b	[%a2] 30, %d15
.LBB121:
.LBB122:
	.loc 2 282 0
#APP
	# 282 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	enable
	# 0 "" 2
#NO_APP
.L12:
.LBE122:
.LBE121:
.LBB123:
.LBB124:
.LBB125:
.LBB126:
.LBB127:
.LBB128:
	.loc 2 259 0
#APP
	# 259 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL24:
#NO_APP
.LBE128:
.LBE127:
.LBE126:
	.loc 2 365 0
	and	%d2, %d15, 255
.LVL25:
	ge.u	%d2, %d2, 17
.LVL26:
	jnz	%d2, .L13
.LVL27:
	mov	%d2, 17
	insert	%d15, %d15, %d2, 0, 8
.LVL28:
.LBB129:
.LBB130:
.LBB131:
	.loc 2 265 0
#APP
	# 265 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mtcr LO:65068, %d15
	isync
	# 0 "" 2
.LVL29:
#NO_APP
.L13:
.LBE131:
.LBE130:
.LBE129:
.LBE125:
.LBE124:
.LBE123:
	.loc 1 140 0
	ld.bu	%d15, [%a15] 20
.LVL30:
	jne	%d15, 2, .L14
.LBB132:
	.loc 1 147 0
	mov.aa	%a4, %a15
	call	osEE_release_all_m
.LVL31:
	j	.L15
.LVL32:
.L14:
.LBE132:
	.loc 1 179 0
	mov.aa	%a4, %a15
	call	osEE_release_all_m
.LVL33:
.L15:
.LBB133:
.LBB134:
	.file 3 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_std_change_context.h"
	.loc 3 141 0
	ld.a	%a4, [%a15] 4
	mov.a	%a5, 0
	j	osEE_hal_terminate_ctx
.LVL34:
.LBE134:
.LBE133:
.LBE116:
.LBE115:
.LFE105:
	.size	osEE_scheduler_task_wrapper_run, .-osEE_scheduler_task_wrapper_run
	.align 1
	.global	osEE_idle_hook_wrapper
	.type	osEE_idle_hook_wrapper, @function
osEE_idle_hook_wrapper:
.LFB106:
	.loc 1 287 0
	mov.aa	%a14, %SP
.LCFI3:
	.loc 1 296 0
	movh.a	%a15, hi:osEE_cdb_var
	ld.a	%a15, [%a15] lo:osEE_cdb_var
.L18:
	.loc 1 296 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a15] 16
	jeq	%d15, 2, .L18
	.loc 1 306 0 is_stmt 1
	movh.a	%a15, hi:osEE_cdb_var
	lea	%a15, [%a15] lo:osEE_cdb_var
	ld.a	%a4, [%a15] 4
	call	osEE_idle_task_terminate
.LVL35:
	ret
.LFE106:
	.size	osEE_idle_hook_wrapper, .-osEE_idle_hook_wrapper
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
	.uaword	.LFB102
	.uaword	.LFE102-.LFB102
	.byte	0x4
	.uaword	.LCFI0-.LFB102
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB104
	.uaword	.LFE104-.LFB104
	.byte	0x4
	.uaword	.LCFI1-.LFB104
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB105
	.uaword	.LFE105-.LFB105
	.byte	0x4
	.uaword	.LCFI2-.LFB105
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
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 6 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 7 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_hal_internal_types.h"
	.file 8 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 9 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_scheduler_types.h"
	.file 10 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_kernel_types.h"
	.file 11 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_get_kernel_and_core.h"
	.file 12 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_kernel.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x183d
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -O1 -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\TUNNEL~1\\TC275\\erika\\src\\ee_oo_sched_entry_points.c"
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
	.uaword	0x175
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
	.uaword	0x1af
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
	.uaword	0x1dd
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x5
	.byte	0x50
	.uaword	0x175
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
	.uleb128 0x3
	.string	"OsEE_addr"
	.byte	0x6
	.byte	0x5a
	.uaword	0x24f
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x6
	.byte	0x5b
	.uaword	0x1f3
	.uleb128 0x3
	.string	"OsEE_prio"
	.byte	0x6
	.byte	0x8d
	.uaword	0x1a0
	.uleb128 0x3
	.string	"OsEE_isr_src_id"
	.byte	0x6
	.byte	0x92
	.uaword	0x1cd
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.byte	0x74
	.uaword	0x2df
	.uleb128 0x6
	.string	"pcxo"
	.byte	0x7
	.byte	0x75
	.uaword	0x22e
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"pcxs"
	.byte	0x7
	.byte	0x76
	.uaword	0x22e
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"ul"
	.byte	0x7
	.byte	0x7b
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.string	"pie"
	.byte	0x7
	.byte	0x7c
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.string	"pcpn"
	.byte	0x7
	.byte	0x7d
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0x72
	.uaword	0x2ff
	.uleb128 0x8
	.string	"reg"
	.byte	0x7
	.byte	0x73
	.uaword	0x251
	.uleb128 0x8
	.string	"bits"
	.byte	0x7
	.byte	0x82
	.uaword	0x289
	.byte	0
	.uleb128 0x3
	.string	"OsEE_pcxi"
	.byte	0x7
	.byte	0x83
	.uaword	0x2df
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.byte	0xbe
	.uaword	0x347
	.uleb128 0x6
	.string	"ccpn"
	.byte	0x7
	.byte	0xbf
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"ie"
	.byte	0x7
	.byte	0xc1
	.uaword	0x22e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"pipn"
	.byte	0x7
	.byte	0xc2
	.uaword	0x22e
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0xbc
	.uaword	0x367
	.uleb128 0x8
	.string	"reg"
	.byte	0x7
	.byte	0xbd
	.uaword	0x251
	.uleb128 0x8
	.string	"bits"
	.byte	0x7
	.byte	0xc4
	.uaword	0x310
	.byte	0
	.uleb128 0x3
	.string	"OsEE_icr"
	.byte	0x7
	.byte	0xc5
	.uaword	0x347
	.uleb128 0x9
	.string	"OsEE_CTX_tag"
	.byte	0x10
	.byte	0x7
	.byte	0xf3
	.uaword	0x3c1
	.uleb128 0xa
	.string	"p_ctx"
	.byte	0x7
	.byte	0xf4
	.uaword	0x3c1
	.byte	0
	.uleb128 0xa
	.string	"dummy"
	.byte	0x7
	.byte	0xf5
	.uaword	0x251
	.byte	0x4
	.uleb128 0xa
	.string	"pcxi"
	.byte	0x7
	.byte	0xf6
	.uaword	0x2ff
	.byte	0x8
	.uleb128 0xa
	.string	"ra"
	.byte	0x7
	.byte	0xf7
	.uaword	0x23e
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x377
	.uleb128 0x3
	.string	"OsEE_CTX"
	.byte	0x7
	.byte	0xf8
	.uaword	0x377
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.byte	0xfb
	.uaword	0x3ee
	.uleb128 0xa
	.string	"p_tos"
	.byte	0x7
	.byte	0xfc
	.uaword	0x3ee
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x3c7
	.uleb128 0x3
	.string	"OsEE_SCB"
	.byte	0x7
	.byte	0xfd
	.uaword	0x3d7
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.uahalf	0x100
	.uaword	0x431
	.uleb128 0xd
	.string	"p_bos"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x3ee
	.byte	0
	.uleb128 0xd
	.string	"stack_size"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x167
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"OsEE_SDB"
	.byte	0x7
	.uahalf	0x106
	.uaword	0x442
	.uleb128 0xf
	.uaword	0x404
	.uleb128 0xc
	.byte	0xc
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x481
	.uleb128 0xd
	.string	"p_sdb"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x481
	.byte	0
	.uleb128 0xd
	.string	"p_scb"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x487
	.byte	0x4
	.uleb128 0xd
	.string	"isr2_src"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x272
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x431
	.uleb128 0xb
	.byte	0x4
	.uaword	0x3f4
	.uleb128 0xe
	.string	"OsEE_HDB"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x49e
	.uleb128 0xf
	.uaword	0x447
	.uleb128 0x3
	.string	"AppModeType"
	.byte	0x8
	.byte	0x60
	.uaword	0x1a0
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x8
	.byte	0x78
	.uaword	0x251
	.uleb128 0x3
	.string	"TaskPrio"
	.byte	0x8
	.byte	0xc8
	.uaword	0x261
	.uleb128 0x3
	.string	"TaskActivation"
	.byte	0x8
	.byte	0xf4
	.uaword	0x1a0
	.uleb128 0xe
	.string	"TaskFunc"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x4fd
	.uleb128 0xb
	.byte	0x4
	.uaword	0x503
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.uahalf	0x145
	.uaword	0x56c
	.uleb128 0x12
	.string	"OSEE_TASK_TYPE_BASIC"
	.sleb128 0
	.uleb128 0x12
	.string	"OSEE_TASK_TYPE_EXTENDED"
	.sleb128 1
	.uleb128 0x12
	.string	"OSEE_TASK_TYPE_ISR2"
	.sleb128 2
	.uleb128 0x12
	.string	"OSEE_TASK_TYPE_IDLE"
	.sleb128 3
	.byte	0
	.uleb128 0xe
	.string	"OsEE_task_type"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x505
	.uleb128 0xe
	.string	"TaskExecutionType"
	.byte	0x8
	.uahalf	0x157
	.uaword	0x56c
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x625
	.uleb128 0x12
	.string	"OSEE_TASK_SUSPENDED"
	.sleb128 0
	.uleb128 0x12
	.string	"OSEE_TASK_READY"
	.sleb128 1
	.uleb128 0x12
	.string	"OSEE_TASK_READY_STACKED"
	.sleb128 2
	.uleb128 0x12
	.string	"OSEE_TASK_WAITING"
	.sleb128 3
	.uleb128 0x12
	.string	"OSEE_TASK_RUNNING"
	.sleb128 4
	.uleb128 0x12
	.string	"OSEE_TASK_CHAINED"
	.sleb128 5
	.byte	0
	.uleb128 0xe
	.string	"OsEE_task_status"
	.byte	0x8
	.uahalf	0x16e
	.uaword	0x59d
	.uleb128 0xe
	.string	"TaskStateType"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x625
	.uleb128 0xe
	.string	"EventMaskType"
	.byte	0x8
	.uahalf	0x237
	.uaword	0x251
	.uleb128 0xe
	.string	"MemSize"
	.byte	0x8
	.uahalf	0x2a3
	.uaword	0x167
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.uahalf	0x2b1
	.uaword	0x89d
	.uleb128 0x12
	.string	"E_OK"
	.sleb128 0
	.uleb128 0x12
	.string	"E_OS_ACCESS"
	.sleb128 1
	.uleb128 0x12
	.string	"E_OS_CALLEVEL"
	.sleb128 2
	.uleb128 0x12
	.string	"E_OS_ID"
	.sleb128 3
	.uleb128 0x12
	.string	"E_OS_LIMIT"
	.sleb128 4
	.uleb128 0x12
	.string	"E_OS_NOFUNC"
	.sleb128 5
	.uleb128 0x12
	.string	"E_OS_RESOURCE"
	.sleb128 6
	.uleb128 0x12
	.string	"E_OS_STATE"
	.sleb128 7
	.uleb128 0x12
	.string	"E_OS_VALUE"
	.sleb128 8
	.uleb128 0x12
	.string	"E_OS_SERVICEID"
	.sleb128 9
	.uleb128 0x12
	.string	"E_OS_ILLEGAL_ADDRESS"
	.sleb128 10
	.uleb128 0x12
	.string	"E_OS_MISSINGEND"
	.sleb128 11
	.uleb128 0x12
	.string	"E_OS_DISABLEDINT"
	.sleb128 12
	.uleb128 0x12
	.string	"E_OS_STACKFAULT"
	.sleb128 13
	.uleb128 0x12
	.string	"E_OS_PARAM_POINTER"
	.sleb128 14
	.uleb128 0x12
	.string	"E_OS_PROTECTION_MEMORY"
	.sleb128 15
	.uleb128 0x12
	.string	"E_OS_PROTECTION_TIME"
	.sleb128 16
	.uleb128 0x12
	.string	"E_OS_PROTECTION_ARRIVAL"
	.sleb128 17
	.uleb128 0x12
	.string	"E_OS_PROTECTION_LOCKED"
	.sleb128 18
	.uleb128 0x12
	.string	"E_OS_PROTECTION_EXCEPTION"
	.sleb128 19
	.uleb128 0x12
	.string	"E_OS_SPINLOCK"
	.sleb128 20
	.uleb128 0x12
	.string	"E_OS_INTERFERENCE_DEADLOCK"
	.sleb128 21
	.uleb128 0x12
	.string	"E_OS_NESTING_DEADLOCK"
	.sleb128 22
	.uleb128 0x12
	.string	"E_OS_CORE"
	.sleb128 23
	.uleb128 0x12
	.string	"E_OS_SYS_INIT"
	.sleb128 24
	.uleb128 0x12
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
	.sleb128 25
	.uleb128 0x12
	.string	"E_OS_SYS_TASK"
	.sleb128 26
	.uleb128 0x12
	.string	"E_OS_SYS_STACK"
	.sleb128 27
	.uleb128 0x12
	.string	"E_OS_SYS_ACT"
	.sleb128 28
	.byte	0
	.uleb128 0xe
	.string	"OsEE_status_type"
	.byte	0x8
	.uahalf	0x2d4
	.uaword	0x67a
	.uleb128 0xe
	.string	"StatusType"
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x89d
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.uahalf	0x2f4
	.uaword	0xb79
	.uleb128 0x12
	.string	"OSServiceId_ActivateTask"
	.sleb128 0
	.uleb128 0x12
	.string	"OSServiceId_TerminateTask"
	.sleb128 2
	.uleb128 0x12
	.string	"OSServiceId_ChainTask"
	.sleb128 4
	.uleb128 0x12
	.string	"OSServiceId_Schedule"
	.sleb128 6
	.uleb128 0x12
	.string	"OSServiceId_GetTaskID"
	.sleb128 8
	.uleb128 0x12
	.string	"OSServiceId_GetTaskState"
	.sleb128 10
	.uleb128 0x12
	.string	"OSServiceId_DisableAllInterrupts"
	.sleb128 12
	.uleb128 0x12
	.string	"OSServiceId_EnableAllInterrupts"
	.sleb128 14
	.uleb128 0x12
	.string	"OSServiceId_SuspendAllInterrupts"
	.sleb128 16
	.uleb128 0x12
	.string	"OSServiceId_ResumeAllInterrupts"
	.sleb128 18
	.uleb128 0x12
	.string	"OSServiceId_SuspendOSInterrupts"
	.sleb128 20
	.uleb128 0x12
	.string	"OSServiceId_ResumeOSInterrupts"
	.sleb128 22
	.uleb128 0x12
	.string	"OSServiceId_GetResource"
	.sleb128 24
	.uleb128 0x12
	.string	"OSServiceId_ReleaseResource"
	.sleb128 26
	.uleb128 0x12
	.string	"OSServiceId_SetEvent"
	.sleb128 28
	.uleb128 0x12
	.string	"OSServiceId_ClearEvent"
	.sleb128 30
	.uleb128 0x12
	.string	"OSServiceId_GetEvent"
	.sleb128 32
	.uleb128 0x12
	.string	"OSServiceId_WaitEvent"
	.sleb128 34
	.uleb128 0x12
	.string	"OSServiceId_GetActiveApplicationMode"
	.sleb128 70
	.uleb128 0x12
	.string	"OSServiceId_ShutdownOS"
	.sleb128 72
	.uleb128 0x12
	.string	"OSServiceId_StartOS"
	.sleb128 74
	.uleb128 0x12
	.string	"OSId_TaskBody"
	.sleb128 78
	.uleb128 0x12
	.string	"OSId_ISR2Body"
	.sleb128 80
	.uleb128 0x12
	.string	"OSId_Action"
	.sleb128 82
	.uleb128 0x12
	.string	"OSId_Kernel"
	.sleb128 84
	.uleb128 0x12
	.string	"OsId_Invalid"
	.sleb128 86
	.byte	0
	.uleb128 0xe
	.string	"OsEE_service_id_type"
	.byte	0x8
	.uahalf	0x336
	.uaword	0x8c9
	.uleb128 0xe
	.string	"OSServiceIdType"
	.byte	0x8
	.uahalf	0x339
	.uaword	0xb79
	.uleb128 0x9
	.string	"OsEE_SN_tag"
	.byte	0x8
	.byte	0x9
	.byte	0x4b
	.uaword	0xbe0
	.uleb128 0xa
	.string	"p_next"
	.byte	0x9
	.byte	0x4d
	.uaword	0xbe0
	.byte	0
	.uleb128 0xa
	.string	"p_tdb"
	.byte	0x9
	.byte	0x4f
	.uaword	0xc8f
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xbae
	.uleb128 0x13
	.string	"OsEE_TDB_tag"
	.byte	0x20
	.byte	0xa
	.uahalf	0x108
	.uaword	0xc8f
	.uleb128 0xd
	.string	"hdb"
	.byte	0xa
	.uahalf	0x10b
	.uaword	0x48d
	.byte	0
	.uleb128 0xd
	.string	"p_tcb"
	.byte	0xa
	.uahalf	0x10e
	.uaword	0xea7
	.byte	0xc
	.uleb128 0xd
	.string	"tid"
	.byte	0xa
	.uahalf	0x110
	.uaword	0x4b6
	.byte	0x10
	.uleb128 0xd
	.string	"task_type"
	.byte	0xa
	.uahalf	0x112
	.uaword	0x583
	.byte	0x14
	.uleb128 0xd
	.string	"task_func"
	.byte	0xa
	.uahalf	0x114
	.uaword	0x4ec
	.byte	0x18
	.uleb128 0xd
	.string	"ready_prio"
	.byte	0xa
	.uahalf	0x117
	.uaword	0x4c6
	.byte	0x1c
	.uleb128 0xd
	.string	"dispatch_prio"
	.byte	0xa
	.uahalf	0x11a
	.uaword	0x4c6
	.byte	0x1d
	.uleb128 0xd
	.string	"max_num_of_act"
	.byte	0xa
	.uahalf	0x11c
	.uaword	0x4d6
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xc95
	.uleb128 0xf
	.uaword	0xbe6
	.uleb128 0x3
	.string	"OsEE_SN"
	.byte	0x9
	.byte	0x50
	.uaword	0xbae
	.uleb128 0x3
	.string	"OsEE_RQ"
	.byte	0x9
	.byte	0xd5
	.uaword	0xcb8
	.uleb128 0xb
	.byte	0x4
	.uaword	0xc9a
	.uleb128 0x3
	.string	"OsEE_kernel_cb"
	.byte	0xa
	.byte	0x51
	.uaword	0x4fd
	.uleb128 0x3
	.string	"OsEE_byte"
	.byte	0xa
	.byte	0x53
	.uaword	0x1a0
	.uleb128 0x14
	.byte	0x1
	.byte	0xa
	.byte	0x73
	.uaword	0xd4c
	.uleb128 0x12
	.string	"OSEE_KERNEL_INITIALIZED"
	.sleb128 0
	.uleb128 0x12
	.string	"OSEE_KERNEL_STARTING"
	.sleb128 1
	.uleb128 0x12
	.string	"OSEE_KERNEL_STARTED"
	.sleb128 2
	.uleb128 0x12
	.string	"OSEE_KERNEL_SHUTDOWN"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"OsEE_kernel_status"
	.byte	0xa
	.byte	0x7d
	.uaword	0xce5
	.uleb128 0x5
	.byte	0xc
	.byte	0xa
	.byte	0x90
	.uaword	0xda0
	.uleb128 0xa
	.string	"p_next"
	.byte	0xa
	.byte	0x94
	.uaword	0xdd0
	.byte	0
	.uleb128 0xa
	.string	"prev_prio"
	.byte	0xa
	.byte	0x97
	.uaword	0x4c6
	.byte	0x4
	.uleb128 0xa
	.string	"p_owner"
	.byte	0xa
	.byte	0x9a
	.uaword	0xc8f
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"OsEE_MDB_tag"
	.byte	0x8
	.byte	0xa
	.byte	0xb5
	.uaword	0xdd0
	.uleb128 0xa
	.string	"p_cb"
	.byte	0xa
	.byte	0xb7
	.uaword	0xdeb
	.byte	0
	.uleb128 0xa
	.string	"prio"
	.byte	0xa
	.byte	0xc3
	.uaword	0x4c6
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xdd6
	.uleb128 0xf
	.uaword	0xda0
	.uleb128 0x3
	.string	"OsEE_MCB"
	.byte	0xa
	.byte	0x9b
	.uaword	0xd66
	.uleb128 0xb
	.byte	0x4
	.uaword	0xddb
	.uleb128 0x3
	.string	"OsEE_MDB"
	.byte	0xa
	.byte	0xce
	.uaword	0xdd6
	.uleb128 0x5
	.byte	0x14
	.byte	0xa
	.byte	0xe0
	.uaword	0xe90
	.uleb128 0xa
	.string	"current_num_of_act"
	.byte	0xa
	.byte	0xe4
	.uaword	0x4d6
	.byte	0
	.uleb128 0xa
	.string	"current_prio"
	.byte	0xa
	.byte	0xea
	.uaword	0x4c6
	.byte	0x1
	.uleb128 0xa
	.string	"status"
	.byte	0xa
	.byte	0xec
	.uaword	0x63e
	.byte	0x2
	.uleb128 0xa
	.string	"p_last_m"
	.byte	0xa
	.byte	0xef
	.uaword	0xe90
	.byte	0x4
	.uleb128 0xa
	.string	"wait_mask"
	.byte	0xa
	.byte	0xf3
	.uaword	0x654
	.byte	0x8
	.uleb128 0xa
	.string	"event_mask"
	.byte	0xa
	.byte	0xf5
	.uaword	0x654
	.byte	0xc
	.uleb128 0xa
	.string	"p_own_sn"
	.byte	0xa
	.byte	0xfb
	.uaword	0xcb8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xdf1
	.uleb128 0xe
	.string	"OsEE_TCB"
	.byte	0xa
	.uahalf	0x101
	.uaword	0xe01
	.uleb128 0xb
	.byte	0x4
	.uaword	0xe96
	.uleb128 0xe
	.string	"OsEE_TDB"
	.byte	0xa
	.uahalf	0x122
	.uaword	0xc95
	.uleb128 0xb
	.byte	0x4
	.uaword	0xead
	.uleb128 0xc
	.byte	0x20
	.byte	0xa
	.uahalf	0x2d9
	.uaword	0xfc9
	.uleb128 0xd
	.string	"p_curr"
	.byte	0xa
	.uahalf	0x2dc
	.uaword	0xebe
	.byte	0
	.uleb128 0xd
	.string	"rq"
	.byte	0xa
	.uahalf	0x2ee
	.uaword	0xca9
	.byte	0x4
	.uleb128 0xd
	.string	"p_free_sn"
	.byte	0xa
	.uahalf	0x2f0
	.uaword	0xcb8
	.byte	0x8
	.uleb128 0xd
	.string	"p_stk_sn"
	.byte	0xa
	.uahalf	0x2ff
	.uaword	0xcb8
	.byte	0xc
	.uleb128 0xd
	.string	"os_status"
	.byte	0xa
	.uahalf	0x301
	.uaword	0xfc9
	.byte	0x10
	.uleb128 0xd
	.string	"app_mode"
	.byte	0xa
	.uahalf	0x305
	.uaword	0x4a3
	.byte	0x11
	.uleb128 0xd
	.string	"last_error"
	.byte	0xa
	.uahalf	0x307
	.uaword	0x8b6
	.byte	0x12
	.uleb128 0xd
	.string	"prev_s_isr_all_status"
	.byte	0xa
	.uahalf	0x327
	.uaword	0x251
	.byte	0x14
	.uleb128 0xd
	.string	"prev_s_isr_os_status"
	.byte	0xa
	.uahalf	0x329
	.uaword	0x251
	.byte	0x18
	.uleb128 0xd
	.string	"s_isr_all_cnt"
	.byte	0xa
	.uahalf	0x32b
	.uaword	0xcd4
	.byte	0x1c
	.uleb128 0xd
	.string	"s_isr_os_cnt"
	.byte	0xa
	.uahalf	0x32d
	.uaword	0xcd4
	.byte	0x1d
	.uleb128 0xd
	.string	"d_isr_all_cnt"
	.byte	0xa
	.uahalf	0x330
	.uaword	0xcd4
	.byte	0x1e
	.byte	0
	.uleb128 0x15
	.uaword	0xd4c
	.uleb128 0xe
	.string	"OsEE_CCB"
	.byte	0xa
	.uahalf	0x33a
	.uaword	0xec4
	.uleb128 0xc
	.byte	0x8
	.byte	0xa
	.uahalf	0x344
	.uaword	0x100b
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0xa
	.uahalf	0x34a
	.uaword	0x100b
	.byte	0
	.uleb128 0xd
	.string	"p_idle_task"
	.byte	0xa
	.uahalf	0x354
	.uaword	0xebe
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xfce
	.uleb128 0xe
	.string	"OsEE_CDB"
	.byte	0xa
	.uahalf	0x36a
	.uaword	0x1022
	.uleb128 0xf
	.uaword	0xfdf
	.uleb128 0xc
	.byte	0x4
	.byte	0xa
	.uahalf	0x36f
	.uaword	0x1040
	.uleb128 0xd
	.string	"dummy"
	.byte	0xa
	.uahalf	0x3b1
	.uaword	0x251
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"OsEE_KCB"
	.byte	0xa
	.uahalf	0x3b3
	.uaword	0x1027
	.uleb128 0xc
	.byte	0x14
	.byte	0xa
	.uahalf	0x3c3
	.uaword	0x10cc
	.uleb128 0xd
	.string	"p_kcb"
	.byte	0xa
	.uahalf	0x3c5
	.uaword	0x10cc
	.byte	0
	.uleb128 0xd
	.string	"p_tdb_ptr_array"
	.byte	0xa
	.uahalf	0x3d1
	.uaword	0x10dd
	.byte	0x4
	.uleb128 0xd
	.string	"tdb_array_size"
	.byte	0xa
	.uahalf	0x3d4
	.uaword	0x66a
	.byte	0x8
	.uleb128 0xd
	.string	"p_res_ptr_array"
	.byte	0xa
	.uahalf	0x3e0
	.uaword	0x10ee
	.byte	0xc
	.uleb128 0xd
	.string	"res_array_size"
	.byte	0xa
	.uahalf	0x3e2
	.uaword	0x66a
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x1040
	.uleb128 0x17
	.uaword	0xc8f
	.uaword	0x10dd
	.uleb128 0x18
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x10d2
	.uleb128 0x17
	.uaword	0xdd0
	.uaword	0x10ee
	.uleb128 0x18
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x10e3
	.uleb128 0xe
	.string	"OsEE_KDB"
	.byte	0xa
	.uahalf	0x3fc
	.uaword	0x1105
	.uleb128 0xf
	.uaword	0x1051
	.uleb128 0x19
	.string	"osEE_tc_set_icr"
	.byte	0x2
	.uahalf	0x107
	.byte	0x1
	.byte	0x3
	.uaword	0x1131
	.uleb128 0x1a
	.string	"icr"
	.byte	0x2
	.uahalf	0x107
	.uaword	0x367
	.byte	0
	.uleb128 0x1b
	.string	"osEE_tc_get_icr"
	.byte	0x2
	.uahalf	0x100
	.byte	0x1
	.uaword	0x367
	.byte	0x3
	.uaword	0x116a
	.uleb128 0x1c
	.string	"icr"
	.byte	0x2
	.uahalf	0x102
	.uaword	0x367
	.uleb128 0x1d
	.uleb128 0x1c
	.string	"reg"
	.byte	0x2
	.uahalf	0x103
	.uaword	0x251
	.byte	0
	.byte	0
	.uleb128 0x1b
	.string	"OSEE_ISR2_VIRT_TO_HW_PRIO"
	.byte	0x2
	.uahalf	0x12d
	.byte	0x1
	.uaword	0x1a0
	.byte	0x3
	.uaword	0x119f
	.uleb128 0x1e
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x12d
	.uaword	0x4c6
	.byte	0
	.uleb128 0x1b
	.string	"osEE_hal_begin_nested_primitive"
	.byte	0x2
	.uahalf	0x169
	.byte	0x1
	.uaword	0x251
	.byte	0x3
	.uaword	0x11ed
	.uleb128 0x1c
	.string	"icr"
	.byte	0x2
	.uahalf	0x16b
	.uaword	0x367
	.uleb128 0x1d
	.uleb128 0x1c
	.string	"icr_temp"
	.byte	0x2
	.uahalf	0x16e
	.uaword	0x367
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"osEE_get_curr_core"
	.byte	0xb
	.byte	0x72
	.byte	0x1
	.uaword	0x1209
	.byte	0x3
	.uleb128 0xb
	.byte	0x4
	.uaword	0x1011
	.uleb128 0x19
	.string	"osEE_hal_resumeIRQ"
	.byte	0x2
	.uahalf	0x125
	.byte	0x1
	.byte	0x3
	.uaword	0x1247
	.uleb128 0x1a
	.string	"flags"
	.byte	0x2
	.uahalf	0x125
	.uaword	0x251
	.uleb128 0x1c
	.string	"icr"
	.byte	0x2
	.uahalf	0x127
	.uaword	0x367
	.byte	0
	.uleb128 0x20
	.string	"osEE_hal_enableIRQ"
	.byte	0x2
	.uahalf	0x118
	.byte	0x1
	.byte	0x3
	.uleb128 0x1f
	.string	"osEE_begin_primitive"
	.byte	0xc
	.byte	0xf9
	.byte	0x1
	.uaword	0x251
	.byte	0x3
	.uleb128 0x19
	.string	"osEE_stack_monitoring"
	.byte	0xc
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x12ad
	.uleb128 0x1a
	.string	"p_cdb"
	.byte	0xc
	.uahalf	0x3ef
	.uaword	0x1209
	.byte	0
	.uleb128 0x19
	.string	"osEE_set_service_id"
	.byte	0xc
	.uahalf	0x1f8
	.byte	0x1
	.byte	0x3
	.uaword	0x12eb
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0xc
	.uahalf	0x1fa
	.uaword	0x12eb
	.uleb128 0x1a
	.string	"service_id"
	.byte	0xc
	.uahalf	0x1fb
	.uaword	0xb96
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x12f1
	.uleb128 0xf
	.uaword	0xfce
	.uleb128 0x19
	.string	"osEE_call_error_hook"
	.byte	0xc
	.uahalf	0x1e0
	.byte	0x1
	.byte	0x3
	.uaword	0x1330
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0xc
	.uahalf	0x1e2
	.uaword	0x12eb
	.uleb128 0x1a
	.string	"Error"
	.byte	0xc
	.uahalf	0x1e3
	.uaword	0x8b6
	.byte	0
	.uleb128 0x19
	.string	"osEE_hal_set_ipl"
	.byte	0x2
	.uahalf	0x136
	.byte	0x1
	.byte	0x3
	.uaword	0x1364
	.uleb128 0x1e
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x136
	.uaword	0x4c6
	.uleb128 0x1c
	.string	"icr"
	.byte	0x2
	.uahalf	0x138
	.uaword	0x367
	.byte	0
	.uleb128 0x21
	.string	"osEE_release_all_m"
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.uaword	0xe90
	.uaword	.LFB102
	.uaword	.LFE102
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x13df
	.uleb128 0x22
	.string	"p_tdb"
	.byte	0x1
	.byte	0x3c
	.uaword	0x13df
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.string	"p_mdb"
	.byte	0x1
	.byte	0x3f
	.uaword	0xe90
	.uaword	.LLST0
	.uleb128 0x24
	.string	"p_tcb"
	.byte	0x1
	.byte	0x40
	.uaword	0x13e4
	.byte	0x1
	.byte	0x63
	.uleb128 0x25
	.uaword	.LBB71
	.uaword	.LBE71
	.uleb128 0x23
	.string	"p_last_m_cb"
	.byte	0x1
	.byte	0x49
	.uaword	0x13e9
	.uaword	.LLST1
	.byte	0
	.byte	0
	.uleb128 0xf
	.uaword	0xebe
	.uleb128 0xf
	.uaword	0xea7
	.uleb128 0xf
	.uaword	0xdeb
	.uleb128 0x26
	.byte	0x1
	.string	"osEE_scheduler_task_wrapper_restore"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.byte	0x1
	.uaword	0x1428
	.uleb128 0x27
	.uaword	.LASF2
	.byte	0x1
	.byte	0xbe
	.uaword	0xebe
	.byte	0
	.uleb128 0x28
	.uaword	0x13ee
	.uaword	.LFB104
	.uaword	.LFE104
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1444
	.uleb128 0x29
	.uaword	0x141c
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2a
	.string	"osEE_scheduler_task_not_terminated"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x1
	.uaword	0x14a3
	.uleb128 0x27
	.uaword	.LASF3
	.byte	0x1
	.byte	0x70
	.uaword	0xebe
	.uleb128 0x2b
	.string	"p_cdb"
	.byte	0x1
	.byte	0x74
	.uaword	0x14a3
	.uleb128 0x2c
	.uaword	.LASF0
	.byte	0x1
	.byte	0x76
	.uaword	0x14a8
	.uleb128 0x1d
	.uleb128 0x2b
	.string	"p_mdb"
	.byte	0x1
	.byte	0x93
	.uaword	0x14ad
	.byte	0
	.byte	0
	.uleb128 0xf
	.uaword	0x1209
	.uleb128 0xf
	.uaword	0x100b
	.uleb128 0xf
	.uaword	0xe90
	.uleb128 0x2a
	.string	"osEE_hal_terminate_activation"
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x14f6
	.uleb128 0x27
	.uaword	.LASF3
	.byte	0x3
	.byte	0x89
	.uaword	0x14f6
	.uleb128 0x2d
	.string	"kernel_cb"
	.byte	0x3
	.byte	0x8a
	.uaword	0xcbe
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x48d
	.uleb128 0x2e
	.byte	0x1
	.string	"osEE_scheduler_task_wrapper_run"
	.byte	0x1
	.uahalf	0x107
	.byte	0x1
	.uaword	.LFB105
	.uaword	.LFE105
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1772
	.uleb128 0x2f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x109
	.uaword	0xebe
	.uaword	.LLST2
	.uleb128 0x30
	.string	"task_priority"
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x1772
	.uaword	.LLST3
	.uleb128 0x31
	.uaword	0x13ee
	.uaword	.LBB105
	.uaword	.LBE105
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x1579
	.uleb128 0x32
	.uaword	0x141c
	.uaword	.LLST4
	.byte	0
	.uleb128 0x31
	.uaword	0x1330
	.uaword	.LBB107
	.uaword	.LBE107
	.byte	0x1
	.uahalf	0x111
	.uaword	0x15e2
	.uleb128 0x32
	.uaword	0x134b
	.uaword	.LLST5
	.uleb128 0x25
	.uaword	.LBB108
	.uaword	.LBE108
	.uleb128 0x33
	.uaword	0x1357
	.uaword	.LLST6
	.uleb128 0x31
	.uaword	0x116a
	.uaword	.LBB109
	.uaword	.LBE109
	.byte	0x2
	.uahalf	0x139
	.uaword	0x15c6
	.uleb128 0x32
	.uaword	0x1192
	.uaword	.LLST7
	.byte	0
	.uleb128 0x34
	.uaword	0x110a
	.uaword	.LBB111
	.uaword	.LBE111
	.byte	0x2
	.uahalf	0x13d
	.uleb128 0x32
	.uaword	0x1124
	.uaword	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x1247
	.uaword	.LBB113
	.uaword	.LBE113
	.byte	0x1
	.uahalf	0x112
	.uleb128 0x34
	.uaword	0x1444
	.uaword	.LBB115
	.uaword	.LBE115
	.byte	0x1
	.uahalf	0x117
	.uleb128 0x29
	.uaword	0x1470
	.byte	0x1
	.byte	0x6f
	.uleb128 0x25
	.uaword	.LBB116
	.uaword	.LBE116
	.uleb128 0x36
	.uaword	0x147b
	.uleb128 0x33
	.uaword	0x1488
	.uaword	.LLST9
	.uleb128 0x37
	.uaword	0x120f
	.uaword	.LBB117
	.uaword	.LBE117
	.byte	0x1
	.byte	0x81
	.uaword	0x1662
	.uleb128 0x32
	.uaword	0x122c
	.uaword	.LLST10
	.uleb128 0x25
	.uaword	.LBB118
	.uaword	.LBE118
	.uleb128 0x36
	.uaword	0x123a
	.uleb128 0x34
	.uaword	0x110a
	.uaword	.LBB119
	.uaword	.LBE119
	.byte	0x2
	.uahalf	0x129
	.uleb128 0x38
	.uaword	0x1124
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	0x1247
	.uaword	.LBB121
	.uaword	.LBE121
	.byte	0x1
	.byte	0x85
	.uleb128 0x37
	.uaword	0x1260
	.uaword	.LBB123
	.uaword	.LBE123
	.byte	0x1
	.byte	0x88
	.uaword	0x170c
	.uleb128 0x3a
	.uaword	0x119f
	.uaword	.LBB124
	.uaword	.LBE124
	.byte	0xc
	.byte	0xfe
	.uleb128 0x25
	.uaword	.LBB125
	.uaword	.LBE125
	.uleb128 0x33
	.uaword	0x11cd
	.uaword	.LLST11
	.uleb128 0x31
	.uaword	0x1131
	.uaword	.LBB126
	.uaword	.LBE126
	.byte	0x2
	.uahalf	0x16b
	.uaword	0x16dc
	.uleb128 0x25
	.uaword	.LBB127
	.uaword	.LBE127
	.uleb128 0x36
	.uaword	0x114f
	.uleb128 0x25
	.uaword	.LBB128
	.uaword	.LBE128
	.uleb128 0x33
	.uaword	0x115c
	.uaword	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	.LBB129
	.uaword	.LBE129
	.uleb128 0x33
	.uaword	0x11da
	.uaword	.LLST13
	.uleb128 0x34
	.uaword	0x110a
	.uaword	.LBB130
	.uaword	.LBE130
	.byte	0x2
	.uahalf	0x171
	.uleb128 0x32
	.uaword	0x1124
	.uaword	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	.LBB132
	.uaword	.LBE132
	.uaword	0x172f
	.uleb128 0x36
	.uaword	0x1494
	.uleb128 0x3c
	.uaword	.LVL31
	.uaword	0x1364
	.uleb128 0x3d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x14b2
	.uaword	.LBB133
	.uaword	.LBE133
	.byte	0x1
	.byte	0xb7
	.uaword	0x175f
	.uleb128 0x3e
	.uaword	0x14e4
	.byte	0
	.uleb128 0x29
	.uaword	0x14d9
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3c
	.uaword	.LVL34
	.uaword	0x17ef
	.uleb128 0x3d
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL33
	.uaword	0x1364
	.uleb128 0x3d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uaword	0x4c6
	.uleb128 0x3f
	.byte	0x1
	.string	"osEE_idle_hook_wrapper"
	.byte	0x1
	.uahalf	0x11b
	.byte	0x1
	.uaword	.LFB106
	.uaword	.LFE106
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x17c3
	.uleb128 0x1c
	.string	"p_cdb"
	.byte	0x1
	.uahalf	0x121
	.uaword	0x14a3
	.uleb128 0x3c
	.uaword	.LVL35
	.uaword	0x181b
	.uleb128 0x3d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x40
	.string	"osEE_kdb_var"
	.byte	0xb
	.byte	0x42
	.uaword	0x10f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"osEE_cdb_var"
	.byte	0xb
	.byte	0x5b
	.uaword	0x1011
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.byte	0x1
	.string	"osEE_hal_terminate_ctx"
	.byte	0x3
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.uaword	0x181b
	.uleb128 0x42
	.uaword	0x487
	.uleb128 0x42
	.uaword	0xcbe
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"osEE_idle_task_terminate"
	.byte	0x3
	.byte	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.uaword	0xebe
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x8
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0xa
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
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL19-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1-.Ltext0
	.uaword	.LFE105-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 1
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL19-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1-.Ltext0
	.uaword	.LFE105-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 1
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 1
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL31-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
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
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"p_to_term"
.LASF0:
	.string	"p_ccb"
.LASF1:
	.string	"virt_prio"
.LASF2:
	.string	"p_tdb_to"
	.extern	osEE_idle_task_terminate,STT_FUNC,0
	.extern	osEE_hal_terminate_ctx,STT_FUNC,0
	.extern	osEE_cdb_var,STT_OBJECT,8
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
