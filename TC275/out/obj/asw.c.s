	.file	"asw.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata,"a",@progbits
.LC0:
	.string	"%d "
.section .text,"ax",@progbits
	.align 1
	.global	FuncTestTask
	.type	FuncTestTask, @function
FuncTestTask:
.LFB574:
	.file 1 "C:\\SHIPAR~1\\TC275\\asw.c"
	.loc 1 18 0
	.loc 1 22 0
	movh.a	%a15, hi:cnt.16805
	ld.w	%d15, [%a15] lo:cnt.16805
	.loc 1 18 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 22 0
	add	%d15, 1
	movh.a	%a4, hi:.LC0
	st.w	[%SP]0, %d15
	lea	%a4, [%a4] lo:.LC0
	st.w	[%a15] lo:cnt.16805, %d15
	j	printfSerial
.LVL0:
.LFE574:
	.size	FuncTestTask, .-FuncTestTask
.section .rodata,"a",@progbits
.LC1:
	.string	"\n%4ld: "
.section .text,"ax",@progbits
	.align 1
	.global	TimerISR
	.type	TimerISR, @function
TimerISR:
.LFB575:
	.loc 1 27 0
	.loc 1 29 0
	movh	%d4, 15
	.loc 1 27 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 29 0
	addi	%d4, %d4, 16960
	.loc 1 39 0
	movh.a	%a15, hi:c.16809
	.loc 1 29 0
	call	osEE_tc_stm_set_sr0_next_match
.LVL1:
	.loc 1 39 0
	ld.w	%d15, [%a15] lo:c.16809
	jnz	%d15, .L3
.LBB2:
	.loc 1 40 0
	call	startShiParkerApp
.LVL2:
.L3:
.LBE2:
	.loc 1 44 0
	ld.w	%d15, [%a15] lo:c.16809
	movh.a	%a4, hi:.LC1
	st.w	[%SP]0, %d15
	lea	%a4, [%a4] lo:.LC1
	add	%d15, 1
	st.w	[%a15] lo:c.16809, %d15
	j	printfSerial
.LVL3:
.LFE575:
	.size	TimerISR, .-TimerISR
.section .data,"aw",@progbits
	.align 2
	.type	c.16809, @object
	.size	c.16809, 4
c.16809:
	.word	-4
	.local	cnt.16805
.section .bss,"aw",@nobits
	.align 2
	.type		 cnt.16805,@object
	.size		 cnt.16805,4
cnt.16805:
	.space	4
	.global	testSendPacket
.section .data,"aw",@progbits
	.type	testSendPacket, @object
	.size	testSendPacket, 36
testSendPacket:
	.byte	-86
	.byte	1
	.uaword	0
	.uaword	1073741824
	.uaword	0
	.uaword	1074266112
	.uaword	0
	.uaword	1074790400
	.uaword	0
	.uaword	1075052544
	.byte	6
	.byte	7
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
	.uaword	.LFB574
	.uaword	.LFE574-.LFB574
	.byte	0x4
	.uaword	.LCFI0-.LFB574
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB575
	.uaword	.LFE575-.LFB575
	.byte	0x4
	.uaword	.LCFI1-.LFB575
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "C:\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\Cpu\\Std\\Platform_Types.h"
	.file 3 "C:\\SHIPAR~1\\TC275\\illd\\Libraries\\iLLD\\TC27D\\Tricore\\Cpu\\Std/Ifx_Types.h"
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 5 "C:\\SHIPAR~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 6 "C:\\SHIPAR~1\\TC275\\illd\\src\\Configuration.h"
	.file 7 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h"
	.file 8 "C:\\SHIPAR~1\\TC275\\steering_Pid.h"
	.file 9 "C:\\SHIPAR~1\\TC275/illd\\Libraries\\iLLD\\TC27D\\Tricore\\_Impl/IfxCpu_cfg.h"
	.file 10 "C:\\SHIPAR~1\\TC275\\bsw.h"
	.file 11 "C:\\SHIPAR~1\\TC275\\erika\\inc/ee_tc_system.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x553
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -Os -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\SHIPAR~1\\TC275\\asw.c"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
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
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x6c
	.uaword	0x164
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x74
	.uaword	0x148
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x86
	.uaword	0x13c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x214
	.uleb128 0x5
	.uaword	0x219
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x227
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x8c
	.uaword	0x24e
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x8e
	.uaword	0x221
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x8f
	.uaword	0x1dc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x90
	.uaword	0x228
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x4
	.byte	0x50
	.uaword	0x148
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x5
	.byte	0x5b
	.uaword	0x268
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.string	"Point"
	.byte	0x10
	.byte	0x6
	.byte	0x58
	.uaword	0x2c7
	.uleb128 0x8
	.string	"x"
	.byte	0x6
	.byte	0x5a
	.uaword	0x204
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x6
	.byte	0x5b
	.uaword	0x204
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"ParkingSystemPacket"
	.byte	0x24
	.byte	0x6
	.byte	0x5e
	.uaword	0x363
	.uleb128 0x8
	.string	"start_byte"
	.byte	0x6
	.byte	0x60
	.uaword	0x175
	.byte	0
	.uleb128 0x8
	.string	"car_status"
	.byte	0x6
	.byte	0x61
	.uaword	0x175
	.byte	0x1
	.uleb128 0x8
	.string	"car_current_position"
	.byte	0x6
	.byte	0x62
	.uaword	0x2a4
	.byte	0x2
	.uleb128 0x8
	.string	"car_target_position"
	.byte	0x6
	.byte	0x63
	.uaword	0x2a4
	.byte	0x12
	.uleb128 0x8
	.string	"car_command"
	.byte	0x6
	.byte	0x64
	.uaword	0x175
	.byte	0x22
	.uleb128 0x8
	.string	"crc"
	.byte	0x6
	.byte	0x65
	.uaword	0x175
	.byte	0x23
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"long double"
	.uleb128 0x3
	.string	"clock_t"
	.byte	0x7
	.byte	0x68
	.uaword	0x148
	.uleb128 0xa
	.byte	0x1
	.string	"FuncTestTask"
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.uaword	.LFB574
	.uaword	.LFE574
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3cf
	.uleb128 0xb
	.string	"cnt"
	.byte	0x1
	.byte	0x15
	.uaword	0x198
	.byte	0x5
	.byte	0x3
	.uaword	cnt.16805
	.uleb128 0xc
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x4f9
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0xd
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"TimerISR"
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.uaword	.LFB575
	.uaword	.LFE575
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x458
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x1c
	.uaword	0x13c
	.byte	0x5
	.byte	0x3
	.uaword	c.16809
	.uleb128 0xe
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	0x425
	.uleb128 0xf
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x28
	.uaword	0x15d
	.byte	0x1
	.uaword	0x41b
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LVL2
	.uaword	0x517
	.byte	0
	.uleb128 0x12
	.uaword	.LVL1
	.uaword	0x52a
	.uaword	0x43c
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0xf4240
	.byte	0
	.uleb128 0xc
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x4f9
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0xd
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x13
	.string	"pid_prev_error"
	.byte	0x8
	.byte	0x20
	.uaword	0x204
	.byte	0x8
	.uaword	0
	.uaword	0
	.uleb128 0x13
	.string	"pid_integral"
	.byte	0x8
	.byte	0x21
	.uaword	0x204
	.byte	0x8
	.uaword	0
	.uaword	0
	.uleb128 0x14
	.string	"pid_last_time"
	.byte	0x8
	.byte	0x22
	.uaword	0x372
	.byte	0
	.uleb128 0x15
	.uaword	0x24e
	.uaword	0x4ba
	.uleb128 0x16
	.uaword	0x298
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0xa7
	.uaword	0x4d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4aa
	.uleb128 0x18
	.string	"testSendPacket"
	.byte	0x1
	.byte	0x6
	.uaword	0x2c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testSendPacket
	.uleb128 0x19
	.byte	0x1
	.string	"printfSerial"
	.byte	0xa
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.uaword	0x517
	.uleb128 0x1a
	.uaword	0x20e
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x28
	.uaword	0x15d
	.byte	0x1
	.uaword	0x52a
	.uleb128 0x10
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"osEE_tc_stm_set_sr0_next_match"
	.byte	0xb
	.uahalf	0x3d8
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.uaword	0x288
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
.LASF0:
	.string	"startShiParkerApp"
	.extern	startShiParkerApp,STT_FUNC,0
	.extern	osEE_tc_stm_set_sr0_next_match,STT_FUNC,0
	.extern	printfSerial,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
