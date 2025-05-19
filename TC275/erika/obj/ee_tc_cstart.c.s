	.file	"ee_tc_cstart.c"
.section .text,"ax",@progbits
.Ltext0:
#APP
	.global __TRICORE_DERIVATE_NAME__
	.type __TRICORE_DERIVATE_NAME__,@object
	.set __TRICORE_DERIVATE_NAME__,0x2700

#NO_APP
.section .startup,"ax",@progbits
	.align 1
	.global	_start
	.type	_start, @function
_start:
.LFB105:
	.file 1 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_tc_cstart.c"
	.loc 1 502 0
	.loc 1 504 0
#APP
	# 504 "C:\TUNNEL~1\TC275\erika\src\ee_tc_cstart.c" 1
	ja osEE_tc_core0_start
	# 0 "" 2
#NO_APP
	ret
.LFE105:
	.size	_start, .-_start
.section .text,"ax",@progbits
	.align 1
	.global	osEE_tc_core0_start
	.type	osEE_tc_core0_start, @function
osEE_tc_core0_start:
.LFB106:
	.loc 1 544 0
.LVL0:
.LBB156:
.LBB157:
	.file 2 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_tc_system.h"
	.loc 2 366 0
	movh.a	%a2, 61443
.LBE157:
.LBE156:
.LBB162:
.LBB163:
	.loc 2 378 0
	movh.a	%a15, 61443
.LBE163:
.LBE162:
.LBB168:
.LBB158:
	.loc 2 366 0
	lea	%a2, [%a2] 24832
.LBE158:
.LBE168:
.LBB169:
.LBB164:
	.loc 2 378 0
	lea	%a15, [%a15] 24816
.LBE164:
.LBE169:
.LBB170:
.LBB159:
	.loc 2 366 0
	ld.w	%d5, [%a2]0
.LBE159:
.LBE170:
.LBB171:
.LBB165:
	.loc 2 378 0
	ld.w	%d8, [%a15]0
.LBE165:
.LBE171:
.LBB172:
.LBB160:
	.loc 2 366 0
	extr.u	%d5, %d5, 2, 14
.LVL1:
.LBE160:
.LBE172:
.LBB173:
.LBB166:
	.loc 2 378 0
	extr.u	%d8, %d8, 2, 14
.LBE166:
.LBE173:
.LBB174:
.LBB175:
	.file 3 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_hal_internal.h"
	.loc 3 114 0
	movh.a	%a15, hi:__USTACK0
.LBE175:
.LBE174:
.LBB177:
.LBB161:
	.loc 2 367 0
	xor	%d5, %d5, 63
.LVL2:
.LBE161:
.LBE177:
.LBB178:
.LBB167:
	.loc 2 379 0
	xor	%d8, %d8, 63
.LVL3:
.LBE167:
.LBE178:
.LBB179:
.LBB176:
	.loc 3 114 0
	lea	%a15, [%a15] lo:__USTACK0
#APP
	# 114 "C:\TUNNEL~1\TC275\erika\src\ee_hal_internal.h" 1
	mov.aa %SP, %a15
	# 0 "" 2
#NO_APP
.LBE176:
.LBE179:
.LBB180:
.LBB181:
	.file 4 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_hal.h"
	.loc 4 160 0
#APP
	# 160 "C:\TUNNEL~1\TC275\erika\inc/ee_hal.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE181:
.LBE180:
	.loc 1 561 0
	mov	%d15, 2944
#APP
	# 561 "C:\TUNNEL~1\TC275\erika\src\ee_tc_cstart.c" 1
	mtcr LO:65028, %d15
	isync
	# 0 "" 2
#NO_APP
.LBB182:
	.loc 1 564 0
#APP
	# 564 "C:\TUNNEL~1\TC275\erika\src\ee_tc_cstart.c" 1
	mfcr %d15, LO:65024
	# 0 "" 2
.LVL4:
#NO_APP
.LBE182:
	.loc 1 565 0
	insert	%d15, %d15, 0, 0, 20
.LVL5:
	.loc 1 566 0
#APP
	# 566 "C:\TUNNEL~1\TC275\erika\src\ee_tc_cstart.c" 1
	mtcr LO:65024, %d15
	isync
	# 0 "" 2
.LVL6:
#NO_APP
.LBB183:
.LBB184:
.LBB185:
.LBB186:
.LBB187:
	.loc 4 367 0
#APP
	# 367 "C:\TUNNEL~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL7:
#NO_APP
.LBE187:
.LBE186:
.LBE185:
	.loc 2 614 0
	mov	%d2, 1
	.loc 2 606 0
	extr	%d15, %d15, 0, 8
.LVL8:
	.loc 2 614 0
#APP
	# 614 "C:\TUNNEL~1\TC275\erika\inc/ee_tc_system.h" 1
	mtcr LO:37380, %d2
	isync
	# 0 "" 2
.LVL9:
#NO_APP
.LBB188:
.LBB189:
	.loc 2 366 0
	mul	%d15, %d15, 12
	addsc.a	%a2, %a2, %d15, 0
	ld.w	%d2, [%a2]0
.LBE189:
.LBE188:
.LBB192:
.LBB193:
	.loc 2 395 0
	mov.a	%a2, %d15
.LBE193:
.LBE192:
.LBB196:
.LBB190:
	.loc 2 366 0
	extr.u	%d2, %d2, 2, 14
.LVL10:
.LBE190:
.LBE196:
.LBB197:
.LBB194:
	.loc 2 395 0
	lea	%a15, [%a2] 24832
	addih.a	%a15, %a15, 61443
	.loc 2 398 0
	ld.w	%d15, [%a15]0
.LVL11:
.LBE194:
.LBE197:
.LBB198:
.LBB191:
	.loc 2 367 0
	xor	%d2, %d2, 63
.LVL12:
.LBE191:
.LBE198:
.LBB199:
.LBB195:
	.loc 2 401 0
	jz.t	%d15, 1, .L3
	.loc 2 404 0
	insert	%d15, %d15, 1, 0, 2
	.loc 2 405 0
	insert	%d15, %d15, %d2, 2, 14
	.loc 2 408 0
	st.w	[%a15]0, %d15
.L3:
	.loc 2 412 0
	andn	%d15, %d15, ~(-2)
.LVL13:
	.loc 2 413 0
	insert	%d15, %d15, 1, 1, 1
.LVL14:
	.loc 2 414 0
	st.w	[%a15]0, %d15
.L4:
	.loc 2 417 0
	ld.w	%d15, [%a15]0
.LVL15:
	jnz.t	%d15, 0, .L4
.LBE195:
.LBE199:
	.loc 2 623 0
	mov	%d15, 0
#APP
	# 623 "C:\TUNNEL~1\TC275\erika\inc/ee_tc_system.h" 1
	mtcr LO:37388, %d15
	isync
	# 0 "" 2
.LVL16:
#NO_APP
.LBB200:
.LBB201:
	.loc 2 437 0
	ld.w	%d15, [%a15]0
.LVL17:
	.loc 2 440 0
	jz.t	%d15, 1, .L5
	.loc 2 443 0
	insert	%d15, %d15, 1, 0, 2
	.loc 2 444 0
	insert	%d15, %d15, %d2, 2, 14
	.loc 2 447 0
	st.w	[%a15]0, %d15
.L5:
	.loc 2 451 0
	insert	%d15, %d15, 1, 0, 1
	.loc 2 452 0
	insert	%d15, %d15, 1, 1, 1
	.loc 2 453 0
	st.w	[%a15]0, %d15
.L6:
	.loc 2 456 0
	ld.w	%d15, [%a15]0
.LVL18:
	jz.t	%d15, 0, .L6
.LVL19:
.LBE201:
.LBE200:
.LBE184:
.LBE183:
.LBB202:
.LBB203:
.LBB204:
.LBB205:
.LBB206:
	.loc 4 367 0
#APP
	# 367 "C:\TUNNEL~1\TC275\erika\inc/ee_hal.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL20:
#NO_APP
.LBE206:
.LBE205:
.LBE204:
	.loc 2 640 0
	extr	%d15, %d15, 0, 8
.LVL21:
.LBB207:
.LBB208:
	.loc 2 366 0
	movh.a	%a15, 61443
.LVL22:
	mul	%d15, %d15, 12
	lea	%a15, [%a15] 24832
	addsc.a	%a15, %a15, %d15, 0
.LBE208:
.LBE207:
.LBB212:
.LBB213:
	.loc 2 395 0
	mov.a	%a2, %d15
.LVL23:
.LBE213:
.LBE212:
.LBB217:
.LBB209:
	.loc 2 366 0
	ld.w	%d2, [%a15]0
.LVL24:
.LBE209:
.LBE217:
.LBB218:
.LBB214:
	.loc 2 395 0
	lea	%a15, [%a2] 24832
	addih.a	%a15, %a15, 61443
.LBE214:
.LBE218:
.LBB219:
.LBB210:
	.loc 2 366 0
	extr.u	%d2, %d2, 2, 14
.LVL25:
.LBE210:
.LBE219:
.LBB220:
.LBB215:
	.loc 2 398 0
	ld.w	%d15, [%a15]0
.LVL26:
.LBE215:
.LBE220:
.LBB221:
.LBB211:
	.loc 2 367 0
	xor	%d2, %d2, 63
.LVL27:
.LBE211:
.LBE221:
.LBB222:
.LBB216:
	.loc 2 401 0
	jz.t	%d15, 1, .L7
	.loc 2 404 0
	insert	%d15, %d15, 1, 0, 2
	.loc 2 405 0
	insert	%d15, %d15, %d2, 2, 14
	.loc 2 408 0
	st.w	[%a15]0, %d15
.L7:
	.loc 2 412 0
	andn	%d15, %d15, ~(-2)
.LVL28:
	.loc 2 413 0
	insert	%d15, %d15, 1, 1, 1
.LVL29:
	.loc 2 414 0
	st.w	[%a15]0, %d15
.L8:
	.loc 2 417 0
	ld.w	%d15, [%a15]0
.LVL30:
	jnz.t	%d15, 0, .L8
.LBE216:
.LBE222:
	.loc 2 654 0
	mov	%d15, 0
#APP
	# 654 "C:\TUNNEL~1\TC275\erika\inc/ee_tc_system.h" 1
	mtcr LO:36928, %d15
	isync
	# 0 "" 2
.LVL31:
#NO_APP
.LBB223:
.LBB224:
	.loc 2 437 0
	ld.w	%d15, [%a15]0
.LVL32:
	.loc 2 440 0
	jz.t	%d15, 1, .L9
	.loc 2 443 0
	insert	%d15, %d15, 1, 0, 2
	.loc 2 444 0
	insert	%d15, %d15, %d2, 2, 14
	.loc 2 447 0
	st.w	[%a15]0, %d15
.L9:
	.loc 2 451 0
	insert	%d15, %d15, 1, 0, 1
	.loc 2 452 0
	insert	%d15, %d15, 1, 1, 1
	.loc 2 453 0
	st.w	[%a15]0, %d15
.L10:
	.loc 2 456 0
	ld.w	%d15, [%a15]0
.LVL33:
	jz.t	%d15, 0, .L10
.LVL34:
.LBE224:
.LBE223:
.LBE203:
.LBE202:
.LBB225:
.LBB226:
	.loc 2 398 0
	movh.a	%a15, 61443
.LVL35:
	lea	%a15, [%a15] 24832
	ld.w	%d15, [%a15]0
.LVL36:
	.loc 2 401 0
	jz.t	%d15, 1, .L11
	.loc 2 404 0
	insert	%d15, %d15, 1, 0, 2
	.loc 2 405 0
	insert	%d15, %d15, %d5, 2, 14
	.loc 2 408 0
	st.w	[%a15]0, %d15
.L11:
	.loc 2 412 0
	andn	%d15, %d15, ~(-2)
.LVL37:
	.loc 2 413 0
	insert	%d15, %d15, 1, 1, 1
.LVL38:
	.loc 2 414 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24832
	st.w	[%a15]0, %d15
.LVL39:
.L12:
	.loc 2 417 0
	ld.w	%d15, [%a15]0
.LVL40:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24832
	jnz.t	%d15, 0, .L12
.LBE226:
.LBE225:
	.loc 1 578 0
	movh	%d15, hi:__TRAPTAB
	addi	%d15, %d15, lo:__TRAPTAB
#APP
	# 578 "C:\TUNNEL~1\TC275\erika\src\ee_tc_cstart.c" 1
	mtcr LO:65060, %d15
	isync
	# 0 "" 2
	.loc 1 581 0
#NO_APP
	movh	%d15, hi:__INTTAB0
	addi	%d15, %d15, lo:__INTTAB0
#APP
	# 581 "C:\TUNNEL~1\TC275\erika\src\ee_tc_cstart.c" 1
	mtcr LO:65056, %d15
	isync
	# 0 "" 2
	.loc 1 584 0
#NO_APP
	movh	%d15, hi:__ISTACK0
	addi	%d15, %d15, lo:__ISTACK0
#APP
	# 584 "C:\TUNNEL~1\TC275\erika\src\ee_tc_cstart.c" 1
	mtcr LO:65064, %d15
	isync
	# 0 "" 2
.LVL41:
#NO_APP
.LBB227:
.LBB228:
	.loc 2 437 0
	ld.w	%d15, [%a2]0
.LVL42:
	.loc 2 440 0
	jz.t	%d15, 1, .L13
	.loc 2 443 0
	insert	%d15, %d15, 1, 0, 2
	.loc 2 444 0
	insert	%d15, %d15, %d5, 2, 14
	.loc 2 447 0
	st.w	[%a2]0, %d15
.L13:
	.loc 2 451 0
	insert	%d15, %d15, 1, 0, 1
	.loc 2 452 0
	insert	%d15, %d15, 1, 1, 1
	.loc 2 453 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24832
	st.w	[%a15]0, %d15
.L14:
	.loc 2 456 0
	ld.w	%d15, [%a15]0
.LVL43:
	jz.t	%d15, 0, .L14
.LBE228:
.LBE227:
	.loc 1 590 0
	movh.a	%a15, hi:_SMALL_DATA_
	lea	%a15, [%a15] lo:_SMALL_DATA_
#APP
	# 590 "C:\TUNNEL~1\TC275\erika\src\ee_tc_cstart.c" 1
	mov.aa %a0, %a15
	# 0 "" 2
	.loc 1 591 0
#NO_APP
	movh.a	%a15, hi:_SMALL_DATA2_
	lea	%a15, [%a15] lo:_SMALL_DATA2_
#APP
	# 591 "C:\TUNNEL~1\TC275\erika\src\ee_tc_cstart.c" 1
	mov.aa %a1, %a15
	# 0 "" 2
	.loc 1 594 0
#NO_APP
	movh.a	%a15, hi:_SMALL_DATA3_
	lea	%a15, [%a15] lo:_SMALL_DATA3_
#APP
	# 594 "C:\TUNNEL~1\TC275\erika\src\ee_tc_cstart.c" 1
	mov.aa %a8, %a15
	# 0 "" 2
	.loc 1 596 0
#NO_APP
	movh.a	%a15, hi:_SMALL_DATA4_
	lea	%a15, [%a15] lo:_SMALL_DATA4_
#APP
	# 596 "C:\TUNNEL~1\TC275\erika\src\ee_tc_cstart.c" 1
	mov.aa %a9, %a15
	# 0 "" 2
.LVL44:
#NO_APP
.LBB229:
.LBB230:
	.loc 2 679 0
	movh	%d15, hi:__CSA0
	movh	%d4, hi:__CSA0_END
	addi	%d6, %d15, lo:__CSA0
	addi	%d4, %d4, lo:__CSA0_END
	sub	%d4, %d6
	sha	%d4, -6
.LVL45:
	.loc 2 682 0
	mov	%d2, 0
.LVL46:
	.loc 2 701 0
	jz	%d4, .L16
.LBB231:
	.loc 2 707 0
	add	%d15, %d4, -1
	sh	%d15, 6
	add	%d3, %d15, %d6
.LVL47:
	.loc 2 710 0
	mov.a	%a15, %d3
	mov	%d0, 0
	st.w	[%a15]0, %d0
	.loc 2 720 0
	mov.a	%a15, %d4
	.loc 2 712 0
	sh	%d2, %d3, -28
	.loc 2 716 0
	extr.u	%d7, %d3, 6, 16
	addi	%d15, %d15, -64
.LVL48:
	.loc 2 720 0
	add.a	%a15, -1
	.loc 2 716 0
	insert	%d2, %d7, %d2, 16, 32-16
.LVL49:
	add	%d15, %d6
	.loc 2 720 0
	mov	%d3, 5
.LVL50:
	loop	%a15, .L18
.LVL51:
.L16:
.LBE231:
	.loc 2 728 0
#APP
	# 728 "C:\TUNNEL~1\TC275\erika\inc/ee_tc_system.h" 1
	mtcr LO:65080, %d2
	isync
	# 0 "" 2
.LVL52:
#NO_APP
.LBE230:
.LBE229:
.LBB234:
.LBB235:
.LBB236:
.LBB237:
	.loc 2 398 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24832
	ld.w	%d15, [%a15]0
.LVL53:
	.loc 2 401 0
	jz.t	%d15, 1, .L19
	.loc 2 404 0
	insert	%d15, %d15, 1, 0, 2
	.loc 2 405 0
	insert	%d15, %d15, %d5, 2, 14
	.loc 2 408 0
	st.w	[%a15]0, %d15
.L19:
	.loc 2 412 0
	andn	%d15, %d15, ~(-2)
.LVL54:
	.loc 2 413 0
	insert	%d15, %d15, 1, 1, 1
.LVL55:
	.loc 2 414 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24832
	st.w	[%a15]0, %d15
	.loc 2 417 0
	mov.aa	%a2, %a15
.L20:
	ld.w	%d15, [%a2]0
.LVL56:
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24832
	jnz.t	%d15, 0, .L20
.LBE237:
.LBE236:
	.loc 2 474 0
	ld.w	%d15, [%a15] 4
	or	%d15, %d15, 8
	st.w	[%a15] 4, %d15
.LVL57:
.LBB238:
.LBB239:
	.loc 2 437 0
	ld.w	%d15, [%a15]0
.LVL58:
	.loc 2 440 0
	jz.t	%d15, 1, .L21
	.loc 2 443 0
	insert	%d15, %d15, 1, 0, 2
	.loc 2 444 0
	insert	%d15, %d15, %d5, 2, 14
	.loc 2 447 0
	st.w	[%a15]0, %d15
.L21:
	.loc 2 451 0
	insert	%d15, %d15, 1, 0, 1
	.loc 2 452 0
	insert	%d15, %d15, 1, 1, 1
	.loc 2 453 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24832
	st.w	[%a15]0, %d15
.L22:
	.loc 2 456 0
	ld.w	%d15, [%a15]0
.LVL59:
	jz.t	%d15, 0, .L22
.LVL60:
.LBE239:
.LBE238:
.LBE235:
.LBE234:
.LBB240:
.LBB241:
.LBB242:
.LBB243:
	.loc 2 501 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24816
	ld.w	%d15, [%a15]0
.LVL61:
	.loc 2 504 0
	jz.t	%d15, 1, .L23
	.loc 2 507 0
	insert	%d15, %d15, 1, 0, 2
	.loc 2 508 0
	insert	%d15, %d15, %d8, 2, 14
	.loc 2 511 0
	st.w	[%a15]0, %d15
.L23:
	.loc 2 515 0
	andn	%d15, %d15, ~(-2)
.LVL62:
	.loc 2 516 0
	insert	%d15, %d15, 1, 1, 1
.LVL63:
	.loc 2 517 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24816
	st.w	[%a15]0, %d15
	.loc 2 520 0
	mov.aa	%a2, %a15
.L24:
	ld.w	%d15, [%a2]0
.LVL64:
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24816
	jnz.t	%d15, 0, .L24
.LBE243:
.LBE242:
	.loc 2 574 0
	ld.w	%d15, [%a15] 4
	or	%d15, %d15, 8
	st.w	[%a15] 4, %d15
.LVL65:
.LBB244:
.LBB245:
	.loc 2 537 0
	ld.w	%d15, [%a15]0
.LVL66:
	.loc 2 540 0
	jz.t	%d15, 1, .L25
	.loc 2 543 0
	insert	%d15, %d15, 1, 0, 2
	.loc 2 544 0
	insert	%d15, %d15, %d8, 2, 14
	.loc 2 547 0
	st.w	[%a15]0, %d15
.L25:
	.loc 2 552 0
	insert	%d15, %d15, 1, 0, 1
	.loc 2 553 0
	insert	%d15, %d15, 1, 1, 1
	.loc 2 554 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24816
	st.w	[%a15]0, %d15
.L26:
	.loc 2 557 0
	ld.w	%d15, [%a15]0
.LVL67:
	jz.t	%d15, 0, .L26
.LVL68:
.LBE245:
.LBE244:
.LBE241:
.LBE240:
.LBB246:
.LBB247:
.LBB248:
.LBB249:
	.loc 1 267 0
	movh.a	%a4, hi:__clear_table
.LBB250:
.LBB251:
	.loc 1 284 0
	mov	%e2, 0
.LBE251:
.LBE250:
	.loc 1 267 0
	lea	%a4, [%a4] lo:__clear_table
.LBB254:
.LBB252:
	.loc 1 291 0
	mov	%d7, 0
	.loc 1 296 0
	mov	%d6, 0
.LVL69:
	.loc 1 301 0
	mov	%d5, 0
.LVL70:
.L27:
.LBE252:
	.loc 1 276 0
	ld.w	%d15, [%a4] 4
	.loc 1 273 0
	ld.a	%a3, [%a4]0
.LVL71:
	.loc 1 279 0
	jeq	%d15, -1, .L35
.LBB253:
	.loc 1 281 0
	sh	%d4, %d15, -3
.LVL72:
	.loc 1 283 0
	jz	%d4, .L28
	.loc 1 284 0
	mov.a	%a15, %d4
	mov.aa	%a2, %a3
	add.a	%a15, -1
.LVL73:
.L29:
	st.d	[%a2+]8, %e2
.LVL74:
	loop	%a15, .L29
	addsc.a	%a3, %a3, %d4, 3
.LVL75:
.L28:
	.loc 1 290 0
	jz.t	%d15, 2, .L30
	.loc 1 291 0
	st.w	[%a3+]4, %d7
.LVL76:
.L30:
	.loc 1 295 0
	jz.t	%d15, 1, .L31
	.loc 1 296 0
	st.h	[%a3+]2, %d6
.LVL77:
.L31:
	.loc 1 300 0
	jz.t	%d15, 0, .L32
	.loc 1 301 0
	st.b	[%a3]0, %d5
.L32:
	.loc 1 305 0
	lea	%a4, [%a4] 8
.LVL78:
.LBE253:
.LBE254:
	.loc 1 268 0
	jnz.a	%a4, .L27
.L35:
.LVL79:
.LBE249:
.LBE248:
.LBB255:
.LBB256:
.LBB257:
.LBB258:
	.loc 1 338 0
	movh.a	%a6, hi:__copy_table
	lea	%a6, [%a6] lo:__copy_table
.LVL80:
.L33:
.LBE258:
	.loc 1 331 0
	ld.w	%d15, [%a6] 8
	.loc 1 325 0
	ld.a	%a5, [%a6]0
.LVL81:
	.loc 1 328 0
	ld.a	%a4, [%a6] 4
.LVL82:
	.loc 1 334 0
	jeq	%d15, -1, .L44
.LBB259:
	.loc 1 336 0
	sh	%d4, %d15, -3
.LVL83:
	.loc 1 338 0
	jz	%d4, .L36
	mov.a	%a15, %d4
	mov.aa	%a3, %a4
	mov.aa	%a2, %a5
	add.a	%a15, -1
.LVL84:
.L37:
	.loc 1 339 0
	ld.d	%e2, [%a2+]8
.LVL85:
	st.d	[%a3+]8, %e2
.LVL86:
	loop	%a15, .L37
	sh	%d4, 3
	addsc.a	%a5, %a5, %d4, 0
	addsc.a	%a4, %a4, %d4, 0
.LVL87:
.L36:
	.loc 1 346 0
	jz.t	%d15, 2, .L38
	.loc 1 347 0
	ld.w	%d2, [%a5+]4
	st.w	[%a4+]4, %d2
.LVL88:
.L38:
	.loc 1 352 0
	jz.t	%d15, 1, .L39
	.loc 1 353 0
	ld.hu	%d2, [%a5+]2
.LVL89:
	st.h	[%a4+]2, %d2
.LVL90:
.L39:
	.loc 1 358 0
	jz.t	%d15, 0, .L40
	.loc 1 359 0
	ld.bu	%d15, [%a5]0
.LVL91:
	st.b	[%a4]0, %d15
.L40:
	.loc 1 363 0
	lea	%a6, [%a6] 12
.LVL92:
.LBE259:
.LBE257:
	.loc 1 319 0
	jnz.a	%a6, .L33
.L44:
.LVL93:
.LBE256:
.LBE255:
.LBE247:
.LBE246:
.LBB260:
.LBB261:
	.loc 2 501 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24816
	ld.w	%d15, [%a15]0
.LVL94:
	.loc 2 504 0
	jz.t	%d15, 1, .L42
	.loc 2 507 0
	insert	%d15, %d15, 1, 0, 2
	.loc 2 508 0
	insert	%d15, %d15, %d8, 2, 14
	.loc 2 511 0
	st.w	[%a15]0, %d15
.L42:
	.loc 2 515 0
	andn	%d15, %d15, ~(-2)
.LVL95:
	.loc 2 516 0
	insert	%d15, %d15, 1, 1, 1
.LVL96:
	.loc 2 517 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24816
	st.w	[%a15]0, %d15
.L45:
	.loc 2 520 0
	ld.w	%d15, [%a15]0
.LVL97:
	jnz.t	%d15, 0, .L45
.LBE261:
.LBE260:
.LBB262:
.LBB263:
	.loc 2 1763 0
	movh	%d15, 4642
	movh.a	%a15, 61443
	addi	%d15, %d15, 257
	lea	%a15, [%a15] 24624
	st.w	[%a15]0, %d15
	.loc 2 1769 0
	movh	%d15, 20480
	movh.a	%a15, 61443
	addi	%d15, %d15, 4352
	lea	%a15, [%a15] 24628
	st.w	[%a15]0, %d15
.LBE263:
.LBE262:
.LBB264:
.LBB265:
	.loc 2 1786 0
	movh	%d15, 7
	movh.a	%a15, 61443
	addi	%d15, %d15, 28
	lea	%a15, [%a15] 24592
	st.w	[%a15]0, %d15
.L46:
	.loc 2 1790 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L46
	.loc 2 1794 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24592
.L107:
	ld.w	%d15, [%a15]0
	jz.t	%d15, 8, .L107
.LBE265:
.LBE264:
	.loc 1 627 0
	movh	%d4, 3052
.LBB266:
.LBB267:
	.loc 2 537 0
	movh.a	%a15, 61443
.LBE267:
.LBE266:
	.loc 1 627 0
	addi	%d4, %d4, -15872
.LBB270:
.LBB268:
	.loc 2 537 0
	lea	%a15, [%a15] 24816
.LBE268:
.LBE270:
	.loc 1 627 0
	call	osEE_tc_set_pll_fsource
.LVL98:
.LBB271:
.LBB269:
	.loc 2 537 0
	ld.w	%d15, [%a15]0
.LVL99:
	.loc 2 540 0
	jz.t	%d15, 1, .L48
	.loc 2 543 0
	insert	%d15, %d15, 1, 0, 2
	.loc 2 544 0
	insert	%d15, %d15, %d8, 2, 14
	.loc 2 547 0
	st.w	[%a15]0, %d15
.L48:
	.loc 2 552 0
	insert	%d15, %d15, 1, 0, 1
	.loc 2 553 0
	insert	%d15, %d15, 1, 1, 1
	.loc 2 554 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24816
	st.w	[%a15]0, %d15
.L49:
	.loc 2 557 0
	ld.w	%d15, [%a15]0
.LVL100:
	jz.t	%d15, 0, .L49
.LBE269:
.LBE271:
	.loc 1 634 0
	call	main
.LVL101:
	mov	%d4, %d2
	call	_exit
.LVL102:
.L18:
.LBB272:
.LBB233:
.LBB232:
	.loc 2 710 0
	mov.a	%a2, %d15
	.loc 2 712 0
	sh	%d4, %d15, -28
	.loc 2 710 0
	st.w	[%a2]0, %d2
.LVL103:
	.loc 2 720 0
	add	%d3, -1
.LVL104:
	.loc 2 716 0
	extr.u	%d2, %d15, 6, 16
.LVL105:
	insert	%d2, %d2, %d4, 16, 32-16
.LVL106:
	.loc 2 721 0
	jz	%d3, .L143
.L17:
	addi	%d15, %d15, -64
.LVL107:
	loop	%a15, .L18
	j	.L16
.LVL108:
.L143:
	.loc 2 724 0
#APP
	# 724 "C:\TUNNEL~1\TC275\erika\inc/ee_tc_system.h" 1
	mtcr LO:65084, %d2
	isync
	# 0 "" 2
#NO_APP
	j	.L17
.LBE232:
.LBE233:
.LBE272:
.LFE106:
	.size	osEE_tc_core0_start, .-osEE_tc_core0_start
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
	.uaword	.LFB105
	.uaword	.LFE105-.LFB105
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB106
	.uaword	.LFE106-.LFB106
	.align 2
.LEFDE2:
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
	.uaword	0x296a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -O1 -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\TUNNEL~1\\TC275\\erika\\src\\ee_tc_cstart.c"
	.uaword	.Ldebug_ranges0+0x1a8
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"size_t"
	.byte	0x5
	.byte	0xd4
	.uaword	0x16d
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
	.uaword	0x1a7
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
	.uaword	0x1d5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x6
	.byte	0x50
	.uaword	0x16d
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint64_t"
	.byte	0x6
	.byte	0x78
	.uaword	0x21c
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
	.byte	0x7
	.byte	0x4b
	.uaword	0x246
	.uleb128 0x3
	.string	"OsEE_addr"
	.byte	0x7
	.byte	0x5a
	.uaword	0x28a
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x7
	.byte	0x5b
	.uaword	0x1eb
	.uleb128 0x3
	.string	"OsEE_stack"
	.byte	0x7
	.byte	0x5d
	.uaword	0x1eb
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0x6d
	.uaword	0x305
	.uleb128 0x5
	.string	"OS_CORE_ID_0"
	.sleb128 0
	.uleb128 0x5
	.string	"OS_CORE_ID_MASTER"
	.sleb128 0
	.uleb128 0x5
	.string	"OS_CORE_ID_ARR_SIZE"
	.sleb128 1
	.uleb128 0x5
	.string	"OS_CODE_ID_INVALID"
	.sleb128 -1
	.byte	0
	.uleb128 0x3
	.string	"OsEE_core_id"
	.byte	0x7
	.byte	0x82
	.uaword	0x2ae
	.uleb128 0x3
	.string	"OsEE_prio"
	.byte	0x7
	.byte	0x8d
	.uaword	0x198
	.uleb128 0x3
	.string	"OsEE_isr_src_id"
	.byte	0x7
	.byte	0x92
	.uaword	0x1c5
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0x74
	.uaword	0x397
	.uleb128 0x8
	.string	"pcxo"
	.byte	0x8
	.byte	0x75
	.uaword	0x236
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"pcxs"
	.byte	0x8
	.byte	0x76
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"ul"
	.byte	0x8
	.byte	0x7b
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"pie"
	.byte	0x8
	.byte	0x7c
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"pcpn"
	.byte	0x8
	.byte	0x7d
	.uaword	0x236
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.byte	0x72
	.uaword	0x3b6
	.uleb128 0xa
	.string	"reg"
	.byte	0x8
	.byte	0x73
	.uaword	0x28c
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x8
	.byte	0x82
	.uaword	0x341
	.byte	0
	.uleb128 0x3
	.string	"OsEE_pcxi"
	.byte	0x8
	.byte	0x83
	.uaword	0x397
	.uleb128 0x3
	.string	"OsEE_csa_link"
	.byte	0x8
	.byte	0x86
	.uaword	0x3b6
	.uleb128 0x7
	.byte	0x3c
	.byte	0x8
	.byte	0x89
	.uaword	0x497
	.uleb128 0xc
	.string	"psw"
	.byte	0x8
	.byte	0x8a
	.uaword	0x28c
	.byte	0
	.uleb128 0xc
	.string	"a10"
	.byte	0x8
	.byte	0x8b
	.uaword	0x279
	.byte	0x4
	.uleb128 0xc
	.string	"a11"
	.byte	0x8
	.byte	0x8c
	.uaword	0x279
	.byte	0x8
	.uleb128 0xc
	.string	"d8"
	.byte	0x8
	.byte	0x8d
	.uaword	0x28c
	.byte	0xc
	.uleb128 0xc
	.string	"d9"
	.byte	0x8
	.byte	0x8e
	.uaword	0x28c
	.byte	0x10
	.uleb128 0xc
	.string	"d10"
	.byte	0x8
	.byte	0x8f
	.uaword	0x28c
	.byte	0x14
	.uleb128 0xc
	.string	"d11"
	.byte	0x8
	.byte	0x90
	.uaword	0x28c
	.byte	0x18
	.uleb128 0xc
	.string	"a12"
	.byte	0x8
	.byte	0x91
	.uaword	0x279
	.byte	0x1c
	.uleb128 0xc
	.string	"a13"
	.byte	0x8
	.byte	0x92
	.uaword	0x279
	.byte	0x20
	.uleb128 0xc
	.string	"a14"
	.byte	0x8
	.byte	0x93
	.uaword	0x279
	.byte	0x24
	.uleb128 0xc
	.string	"a15"
	.byte	0x8
	.byte	0x94
	.uaword	0x279
	.byte	0x28
	.uleb128 0xc
	.string	"d12"
	.byte	0x8
	.byte	0x95
	.uaword	0x28c
	.byte	0x2c
	.uleb128 0xc
	.string	"d13"
	.byte	0x8
	.byte	0x96
	.uaword	0x28c
	.byte	0x30
	.uleb128 0xc
	.string	"d14"
	.byte	0x8
	.byte	0x97
	.uaword	0x28c
	.byte	0x34
	.uleb128 0xc
	.string	"d15"
	.byte	0x8
	.byte	0x98
	.uaword	0x28c
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.string	"OsEE_uctx"
	.byte	0x8
	.byte	0x99
	.uaword	0x3dc
	.uleb128 0x7
	.byte	0x3c
	.byte	0x8
	.byte	0x9c
	.uaword	0x557
	.uleb128 0xc
	.string	"a11"
	.byte	0x8
	.byte	0x9d
	.uaword	0x279
	.byte	0
	.uleb128 0xc
	.string	"a2"
	.byte	0x8
	.byte	0x9e
	.uaword	0x279
	.byte	0x4
	.uleb128 0xc
	.string	"a3"
	.byte	0x8
	.byte	0x9f
	.uaword	0x279
	.byte	0x8
	.uleb128 0xc
	.string	"d0"
	.byte	0x8
	.byte	0xa0
	.uaword	0x28c
	.byte	0xc
	.uleb128 0xc
	.string	"d1"
	.byte	0x8
	.byte	0xa1
	.uaword	0x28c
	.byte	0x10
	.uleb128 0xc
	.string	"d2"
	.byte	0x8
	.byte	0xa2
	.uaword	0x28c
	.byte	0x14
	.uleb128 0xc
	.string	"d3"
	.byte	0x8
	.byte	0xa3
	.uaword	0x28c
	.byte	0x18
	.uleb128 0xc
	.string	"a4"
	.byte	0x8
	.byte	0xa4
	.uaword	0x279
	.byte	0x1c
	.uleb128 0xc
	.string	"a5"
	.byte	0x8
	.byte	0xa5
	.uaword	0x279
	.byte	0x20
	.uleb128 0xc
	.string	"a6"
	.byte	0x8
	.byte	0xa6
	.uaword	0x279
	.byte	0x24
	.uleb128 0xc
	.string	"a7"
	.byte	0x8
	.byte	0xa7
	.uaword	0x279
	.byte	0x28
	.uleb128 0xc
	.string	"d4"
	.byte	0x8
	.byte	0xa8
	.uaword	0x28c
	.byte	0x2c
	.uleb128 0xc
	.string	"d5"
	.byte	0x8
	.byte	0xa9
	.uaword	0x28c
	.byte	0x30
	.uleb128 0xc
	.string	"d6"
	.byte	0x8
	.byte	0xaa
	.uaword	0x28c
	.byte	0x34
	.uleb128 0xc
	.string	"d7"
	.byte	0x8
	.byte	0xab
	.uaword	0x28c
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.string	"OsEE_lctx"
	.byte	0x8
	.byte	0xac
	.uaword	0x4a8
	.uleb128 0x9
	.byte	0x3c
	.byte	0x8
	.byte	0xaf
	.uaword	0x589
	.uleb128 0xa
	.string	"uctx"
	.byte	0x8
	.byte	0xb0
	.uaword	0x497
	.uleb128 0xa
	.string	"lctx"
	.byte	0x8
	.byte	0xb1
	.uaword	0x557
	.byte	0
	.uleb128 0x3
	.string	"OsEE_csa_ctx"
	.byte	0x8
	.byte	0xb2
	.uaword	0x568
	.uleb128 0x7
	.byte	0x40
	.byte	0x8
	.byte	0xb5
	.uaword	0x5c1
	.uleb128 0xc
	.string	"l_next"
	.byte	0x8
	.byte	0xb6
	.uaword	0x3c7
	.byte	0
	.uleb128 0xc
	.string	"ctx"
	.byte	0x8
	.byte	0xb7
	.uaword	0x589
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"OsEE_csa"
	.byte	0x8
	.byte	0xb8
	.uaword	0x59d
	.uleb128 0xd
	.string	"OsEE_CTX_tag"
	.byte	0x10
	.byte	0x8
	.byte	0xf3
	.uaword	0x61b
	.uleb128 0xc
	.string	"p_ctx"
	.byte	0x8
	.byte	0xf4
	.uaword	0x61b
	.byte	0
	.uleb128 0xc
	.string	"dummy"
	.byte	0x8
	.byte	0xf5
	.uaword	0x28c
	.byte	0x4
	.uleb128 0xc
	.string	"pcxi"
	.byte	0x8
	.byte	0xf6
	.uaword	0x3b6
	.byte	0x8
	.uleb128 0xc
	.string	"ra"
	.byte	0x8
	.byte	0xf7
	.uaword	0x279
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x5d1
	.uleb128 0x3
	.string	"OsEE_CTX"
	.byte	0x8
	.byte	0xf8
	.uaword	0x5d1
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0xfb
	.uaword	0x648
	.uleb128 0xc
	.string	"p_tos"
	.byte	0x8
	.byte	0xfc
	.uaword	0x648
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x621
	.uleb128 0x3
	.string	"OsEE_SCB"
	.byte	0x8
	.byte	0xfd
	.uaword	0x631
	.uleb128 0xf
	.byte	0x8
	.byte	0x8
	.uahalf	0x100
	.uaword	0x68b
	.uleb128 0x10
	.string	"p_bos"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x648
	.byte	0
	.uleb128 0x10
	.string	"stack_size"
	.byte	0x8
	.uahalf	0x105
	.uaword	0x15f
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"OsEE_SDB"
	.byte	0x8
	.uahalf	0x106
	.uaword	0x69c
	.uleb128 0x12
	.uaword	0x65e
	.uleb128 0xf
	.byte	0xc
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x6db
	.uleb128 0x10
	.string	"p_sdb"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x6db
	.byte	0
	.uleb128 0x10
	.string	"p_scb"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x6e1
	.byte	0x4
	.uleb128 0x10
	.string	"isr2_src"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x32a
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x68b
	.uleb128 0xe
	.byte	0x4
	.uaword	0x64e
	.uleb128 0x11
	.string	"OsEE_HDB"
	.byte	0x8
	.uahalf	0x111
	.uaword	0x6f8
	.uleb128 0x12
	.uaword	0x6a1
	.uleb128 0xd
	.string	"OsEE_tc_SCU_WDTCPU_CON0_bits_tag"
	.byte	0x4
	.byte	0x2
	.byte	0x9b
	.uaword	0x766
	.uleb128 0x8
	.string	"endinit"
	.byte	0x2
	.byte	0x9e
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"lck"
	.byte	0x2
	.byte	0xa0
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"pw"
	.byte	0x2
	.byte	0xa2
	.uaword	0x236
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"rel"
	.byte	0x2
	.byte	0xa4
	.uaword	0x236
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"OsEE_tc_SCU_WDTCPU_CON0_bits"
	.byte	0x2
	.byte	0xa5
	.uaword	0x6fd
	.uleb128 0x3
	.string	"OsEE_tc_SCU_WDTS_CON0_bits"
	.byte	0x2
	.byte	0xa8
	.uaword	0x766
	.uleb128 0xd
	.string	"OsEE_tc_SCU_WDTCPU_CON1_bits_tag"
	.byte	0x4
	.byte	0x2
	.byte	0xab
	.uaword	0x83e
	.uleb128 0x8
	.string	"ir0"
	.byte	0x2
	.byte	0xb0
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"dr"
	.byte	0x2
	.byte	0xb2
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"ir1"
	.byte	0x2
	.byte	0xb6
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"ur"
	.byte	0x2
	.byte	0xb8
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"par"
	.byte	0x2
	.byte	0xba
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"tcr"
	.byte	0x2
	.byte	0xbc
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"tctr"
	.byte	0x2
	.byte	0xbe
	.uaword	0x236
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"OsEE_tc_SCU_WDTCPU_CON1_bits"
	.byte	0x2
	.byte	0xc1
	.uaword	0x7ac
	.uleb128 0xd
	.string	"OsEE_tc_SCU_WDTS_CON1_bits_tag"
	.byte	0x4
	.byte	0x2
	.byte	0xc4
	.uaword	0x903
	.uleb128 0x8
	.string	"clrif"
	.byte	0x2
	.byte	0xc7
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"ir0"
	.byte	0x2
	.byte	0xcb
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"dr"
	.byte	0x2
	.byte	0xcd
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"ir1"
	.byte	0x2
	.byte	0xd1
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"ur"
	.byte	0x2
	.byte	0xd3
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"par"
	.byte	0x2
	.byte	0xd5
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"tcr"
	.byte	0x2
	.byte	0xd7
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"tctr"
	.byte	0x2
	.byte	0xd9
	.uaword	0x236
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"OsEE_tc_SCU_WDTS_CON1_bits"
	.byte	0x2
	.byte	0xdc
	.uaword	0x862
	.uleb128 0xd
	.string	"OsEE_tc_SCU_WDTCPU_SR_bits_tag"
	.byte	0x4
	.byte	0x2
	.byte	0xdf
	.uaword	0x9ed
	.uleb128 0x8
	.string	"ae"
	.byte	0x2
	.byte	0xe2
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"oe"
	.byte	0x2
	.byte	0xe4
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"is0"
	.byte	0x2
	.byte	0xe6
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"ds"
	.byte	0x2
	.byte	0xe8
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"to"
	.byte	0x2
	.byte	0xea
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"is1"
	.byte	0x2
	.byte	0xec
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"us"
	.byte	0x2
	.byte	0xee
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"pas"
	.byte	0x2
	.byte	0xf0
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"tcs"
	.byte	0x2
	.byte	0xf2
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"tct"
	.byte	0x2
	.byte	0xf4
	.uaword	0x236
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"tim"
	.byte	0x2
	.byte	0xf6
	.uaword	0x236
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"OsEE_tc_SCU_WDTCPU_SR_bits"
	.byte	0x2
	.byte	0xf7
	.uaword	0x925
	.uleb128 0x3
	.string	"OsEE_tc_SCU_WDTS_SR_bits"
	.byte	0x2
	.byte	0xfa
	.uaword	0x9ed
	.uleb128 0x13
	.string	"OsEE_tc_SCU_WDTCPU_CON0_tag"
	.byte	0x4
	.byte	0x2
	.byte	0xfd
	.uaword	0xa6c
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.uahalf	0x100
	.uaword	0x28c
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x102
	.uaword	0x766
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_WDTCPU_CON0"
	.byte	0x2
	.uahalf	0x103
	.uaword	0xa2f
	.uleb128 0x16
	.string	"OsEE_tc_SCU_WDTCPU_CON1_tag"
	.byte	0x4
	.byte	0x2
	.uahalf	0x106
	.uaword	0xaca
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.uahalf	0x109
	.uaword	0x28c
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x10b
	.uaword	0x83e
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_WDTCPU_CON1"
	.byte	0x2
	.uahalf	0x10c
	.uaword	0xa8c
	.uleb128 0x16
	.string	"OsEE_tc_SCU_WDTCPU_SR_tag"
	.byte	0x4
	.byte	0x2
	.uahalf	0x10f
	.uaword	0xb26
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.uahalf	0x112
	.uaword	0x28c
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x114
	.uaword	0x9ed
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_WDTCPU_SR"
	.byte	0x2
	.uahalf	0x115
	.uaword	0xaea
	.uleb128 0x16
	.string	"OsEE_tc_SCU_WDTS_CON0_tag"
	.byte	0x4
	.byte	0x2
	.uahalf	0x118
	.uaword	0xb80
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.uahalf	0x11b
	.uaword	0x28c
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x11d
	.uaword	0x78a
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_WDTS_CON0"
	.byte	0x2
	.uahalf	0x11e
	.uaword	0xb44
	.uleb128 0x16
	.string	"OsEE_tc_SCU_WDTS_CON1_tag"
	.byte	0x4
	.byte	0x2
	.uahalf	0x121
	.uaword	0xbda
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.uahalf	0x124
	.uaword	0x28c
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x126
	.uaword	0x903
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_WDTS_CON1"
	.byte	0x2
	.uahalf	0x127
	.uaword	0xb9e
	.uleb128 0x16
	.string	"OsEE_tc_SCU_WDTS_SR_tag"
	.byte	0x4
	.byte	0x2
	.uahalf	0x12a
	.uaword	0xc32
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.uahalf	0x12d
	.uaword	0x28c
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x12f
	.uaword	0xa0f
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_WDTS_SR"
	.byte	0x2
	.uahalf	0x130
	.uaword	0xbf8
	.uleb128 0x17
	.string	"OsEE_tc_SCU_WDTCPU_tag"
	.byte	0xc
	.byte	0x2
	.uahalf	0x133
	.uaword	0xc97
	.uleb128 0x10
	.string	"con0"
	.byte	0x2
	.uahalf	0x136
	.uaword	0xa6c
	.byte	0
	.uleb128 0x10
	.string	"con1"
	.byte	0x2
	.uahalf	0x138
	.uaword	0xaca
	.byte	0x4
	.uleb128 0x10
	.string	"sr"
	.byte	0x2
	.uahalf	0x13a
	.uaword	0xb26
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_WDTCPU"
	.byte	0x2
	.uahalf	0x13b
	.uaword	0xc4e
	.uleb128 0x17
	.string	"OsEE_tc_SCU_WDTS_tag"
	.byte	0xc
	.byte	0x2
	.uahalf	0x13e
	.uaword	0xcf9
	.uleb128 0x10
	.string	"con0"
	.byte	0x2
	.uahalf	0x141
	.uaword	0xb80
	.byte	0
	.uleb128 0x10
	.string	"con1"
	.byte	0x2
	.uahalf	0x143
	.uaword	0xbda
	.byte	0x4
	.uleb128 0x10
	.string	"sr"
	.byte	0x2
	.uahalf	0x145
	.uaword	0xc32
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_WDTS"
	.byte	0x2
	.uahalf	0x146
	.uaword	0xcb2
	.uleb128 0xf
	.byte	0x4
	.byte	0x2
	.uahalf	0x468
	.uaword	0xe1c
	.uleb128 0x18
	.string	"plllv"
	.byte	0x2
	.uahalf	0x46d
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x18
	.string	"oscres"
	.byte	0x2
	.uahalf	0x46f
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x18
	.string	"gainsel"
	.byte	0x2
	.uahalf	0x471
	.uaword	0x236
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0x18
	.string	"mode"
	.byte	0x2
	.uahalf	0x473
	.uaword	0x236
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0x18
	.string	"shby"
	.byte	0x2
	.uahalf	0x475
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.string	"pllhv"
	.byte	0x2
	.uahalf	0x477
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x18
	.string	"x1d"
	.byte	0x2
	.uahalf	0x47b
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x18
	.string	"x1den"
	.byte	0x2
	.uahalf	0x47d
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.string	"oscval"
	.byte	0x2
	.uahalf	0x481
	.uaword	0x236
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0x18
	.string	"apren"
	.byte	0x2
	.uahalf	0x485
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.string	"cap0en"
	.byte	0x2
	.uahalf	0x487
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x18
	.string	"cap1en"
	.byte	0x2
	.uahalf	0x489
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.string	"cap2en"
	.byte	0x2
	.uahalf	0x48b
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x18
	.string	"cap3en"
	.byte	0x2
	.uahalf	0x48d
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_OSCCON_bits"
	.byte	0x2
	.uahalf	0x490
	.uaword	0xd12
	.uleb128 0xf
	.byte	0x4
	.byte	0x2
	.uahalf	0x502
	.uaword	0xf17
	.uleb128 0x18
	.string	"baud1div"
	.byte	0x2
	.uahalf	0x505
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x18
	.string	"baud2div"
	.byte	0x2
	.uahalf	0x507
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.string	"sridiv"
	.byte	0x2
	.uahalf	0x509
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.string	"lpdiv"
	.byte	0x2
	.uahalf	0x50b
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x18
	.string	"spbdiv"
	.byte	0x2
	.uahalf	0x50d
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.string	"fsi2div"
	.byte	0x2
	.uahalf	0x50f
	.uaword	0x236
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x18
	.string	"fsidiv"
	.byte	0x2
	.uahalf	0x513
	.uaword	0x236
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.string	"adcclksel"
	.byte	0x2
	.uahalf	0x515
	.uaword	0x236
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.string	"clksel"
	.byte	0x2
	.uahalf	0x517
	.uaword	0x236
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.string	"up"
	.byte	0x2
	.uahalf	0x519
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.string	"lck"
	.byte	0x2
	.uahalf	0x51b
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_CCUCON0_bits"
	.byte	0x2
	.uahalf	0x51c
	.uaword	0xe3c
	.uleb128 0xf
	.byte	0x4
	.byte	0x2
	.uahalf	0x543
	.uaword	0x1001
	.uleb128 0x18
	.string	"candiv"
	.byte	0x2
	.uahalf	0x546
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x18
	.string	"eraydiv"
	.byte	0x2
	.uahalf	0x548
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.string	"stmdiv"
	.byte	0x2
	.uahalf	0x54a
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.string	"gtmdiv"
	.byte	0x2
	.uahalf	0x54c
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x18
	.string	"ethdiv"
	.byte	0x2
	.uahalf	0x54e
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.string	"asclinfdiv"
	.byte	0x2
	.uahalf	0x550
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.string	"asclinsdiv"
	.byte	0x2
	.uahalf	0x552
	.uaword	0x236
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.string	"insel"
	.byte	0x2
	.uahalf	0x554
	.uaword	0x236
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.string	"up"
	.byte	0x2
	.uahalf	0x556
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.string	"lck"
	.byte	0x2
	.uahalf	0x558
	.uaword	0x236
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_CCUCON1_bits"
	.byte	0x2
	.uahalf	0x559
	.uaword	0xf38
	.uleb128 0x19
	.byte	0x4
	.byte	0x2
	.uahalf	0x694
	.uaword	0x1044
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.uahalf	0x695
	.uaword	0x28c
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x696
	.uaword	0xe1c
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_OSCCON"
	.byte	0x2
	.uahalf	0x697
	.uaword	0x1022
	.uleb128 0x19
	.byte	0x4
	.byte	0x2
	.uahalf	0x6b4
	.uaword	0x1081
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.uahalf	0x6b5
	.uaword	0x28c
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x6b6
	.uaword	0xf17
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_CCUCON0"
	.byte	0x2
	.uahalf	0x6b7
	.uaword	0x105f
	.uleb128 0x19
	.byte	0x4
	.byte	0x2
	.uahalf	0x6c0
	.uaword	0x10bf
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.uahalf	0x6c1
	.uaword	0x28c
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x6c2
	.uaword	0x1001
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_SCU_CCUCON1"
	.byte	0x2
	.uahalf	0x6c3
	.uaword	0x109d
	.uleb128 0x3
	.string	"AppModeType"
	.byte	0x9
	.byte	0x60
	.uaword	0x198
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x9
	.byte	0x78
	.uaword	0x28c
	.uleb128 0x3
	.string	"TaskPrio"
	.byte	0x9
	.byte	0xc8
	.uaword	0x319
	.uleb128 0x3
	.string	"TaskActivation"
	.byte	0x9
	.byte	0xf4
	.uaword	0x198
	.uleb128 0x11
	.string	"TaskFunc"
	.byte	0x9
	.uahalf	0x13a
	.uaword	0x1135
	.uleb128 0xe
	.byte	0x4
	.uaword	0x113b
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x9
	.uahalf	0x145
	.uaword	0x11a4
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
	.uleb128 0x11
	.string	"OsEE_task_type"
	.byte	0x9
	.uahalf	0x153
	.uaword	0x113d
	.uleb128 0x11
	.string	"TaskExecutionType"
	.byte	0x9
	.uahalf	0x157
	.uaword	0x11a4
	.uleb128 0x1b
	.byte	0x1
	.byte	0x9
	.uahalf	0x15d
	.uaword	0x125d
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
	.uleb128 0x11
	.string	"OsEE_task_status"
	.byte	0x9
	.uahalf	0x16e
	.uaword	0x11d5
	.uleb128 0x11
	.string	"TaskStateType"
	.byte	0x9
	.uahalf	0x17e
	.uaword	0x125d
	.uleb128 0x11
	.string	"EventMaskType"
	.byte	0x9
	.uahalf	0x237
	.uaword	0x28c
	.uleb128 0x11
	.string	"MemSize"
	.byte	0x9
	.uahalf	0x2a3
	.uaword	0x15f
	.uleb128 0x1b
	.byte	0x1
	.byte	0x9
	.uahalf	0x2b1
	.uaword	0x14d5
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
	.uleb128 0x11
	.string	"OsEE_status_type"
	.byte	0x9
	.uahalf	0x2d4
	.uaword	0x12b2
	.uleb128 0x11
	.string	"StatusType"
	.byte	0x9
	.uahalf	0x2d9
	.uaword	0x14d5
	.uleb128 0xd
	.string	"OsEE_SN_tag"
	.byte	0x8
	.byte	0xa
	.byte	0x4b
	.uaword	0x1533
	.uleb128 0xc
	.string	"p_next"
	.byte	0xa
	.byte	0x4d
	.uaword	0x1533
	.byte	0
	.uleb128 0xc
	.string	"p_tdb"
	.byte	0xa
	.byte	0x4f
	.uaword	0x15e2
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1501
	.uleb128 0x17
	.string	"OsEE_TDB_tag"
	.byte	0x20
	.byte	0xb
	.uahalf	0x108
	.uaword	0x15e2
	.uleb128 0x10
	.string	"hdb"
	.byte	0xb
	.uahalf	0x10b
	.uaword	0x6e7
	.byte	0
	.uleb128 0x10
	.string	"p_tcb"
	.byte	0xb
	.uahalf	0x10e
	.uaword	0x17e4
	.byte	0xc
	.uleb128 0x10
	.string	"tid"
	.byte	0xb
	.uahalf	0x110
	.uaword	0x10ee
	.byte	0x10
	.uleb128 0x10
	.string	"task_type"
	.byte	0xb
	.uahalf	0x112
	.uaword	0x11bb
	.byte	0x14
	.uleb128 0x10
	.string	"task_func"
	.byte	0xb
	.uahalf	0x114
	.uaword	0x1124
	.byte	0x18
	.uleb128 0x10
	.string	"ready_prio"
	.byte	0xb
	.uahalf	0x117
	.uaword	0x10fe
	.byte	0x1c
	.uleb128 0x10
	.string	"dispatch_prio"
	.byte	0xb
	.uahalf	0x11a
	.uaword	0x10fe
	.byte	0x1d
	.uleb128 0x10
	.string	"max_num_of_act"
	.byte	0xb
	.uahalf	0x11c
	.uaword	0x110e
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x15e8
	.uleb128 0x12
	.uaword	0x1539
	.uleb128 0x3
	.string	"OsEE_SN"
	.byte	0xa
	.byte	0x50
	.uaword	0x1501
	.uleb128 0x3
	.string	"OsEE_RQ"
	.byte	0xa
	.byte	0xd5
	.uaword	0x160b
	.uleb128 0xe
	.byte	0x4
	.uaword	0x15ed
	.uleb128 0x3
	.string	"OsEE_byte"
	.byte	0xb
	.byte	0x53
	.uaword	0x198
	.uleb128 0x4
	.byte	0x1
	.byte	0xb
	.byte	0x73
	.uaword	0x1689
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
	.uaword	0x1622
	.uleb128 0x7
	.byte	0xc
	.byte	0xb
	.byte	0x90
	.uaword	0x16dd
	.uleb128 0xc
	.string	"p_next"
	.byte	0xb
	.byte	0x94
	.uaword	0x170d
	.byte	0
	.uleb128 0xc
	.string	"prev_prio"
	.byte	0xb
	.byte	0x97
	.uaword	0x10fe
	.byte	0x4
	.uleb128 0xc
	.string	"p_owner"
	.byte	0xb
	.byte	0x9a
	.uaword	0x15e2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"OsEE_MDB_tag"
	.byte	0x8
	.byte	0xb
	.byte	0xb5
	.uaword	0x170d
	.uleb128 0xc
	.string	"p_cb"
	.byte	0xb
	.byte	0xb7
	.uaword	0x1728
	.byte	0
	.uleb128 0xc
	.string	"prio"
	.byte	0xb
	.byte	0xc3
	.uaword	0x10fe
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1713
	.uleb128 0x12
	.uaword	0x16dd
	.uleb128 0x3
	.string	"OsEE_MCB"
	.byte	0xb
	.byte	0x9b
	.uaword	0x16a3
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1718
	.uleb128 0x3
	.string	"OsEE_MDB"
	.byte	0xb
	.byte	0xce
	.uaword	0x1713
	.uleb128 0x7
	.byte	0x14
	.byte	0xb
	.byte	0xe0
	.uaword	0x17cd
	.uleb128 0xc
	.string	"current_num_of_act"
	.byte	0xb
	.byte	0xe4
	.uaword	0x110e
	.byte	0
	.uleb128 0xc
	.string	"current_prio"
	.byte	0xb
	.byte	0xea
	.uaword	0x10fe
	.byte	0x1
	.uleb128 0xc
	.string	"status"
	.byte	0xb
	.byte	0xec
	.uaword	0x1276
	.byte	0x2
	.uleb128 0xc
	.string	"p_last_m"
	.byte	0xb
	.byte	0xef
	.uaword	0x17cd
	.byte	0x4
	.uleb128 0xc
	.string	"wait_mask"
	.byte	0xb
	.byte	0xf3
	.uaword	0x128c
	.byte	0x8
	.uleb128 0xc
	.string	"event_mask"
	.byte	0xb
	.byte	0xf5
	.uaword	0x128c
	.byte	0xc
	.uleb128 0xc
	.string	"p_own_sn"
	.byte	0xb
	.byte	0xfb
	.uaword	0x160b
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x172e
	.uleb128 0x11
	.string	"OsEE_TCB"
	.byte	0xb
	.uahalf	0x101
	.uaword	0x173e
	.uleb128 0xe
	.byte	0x4
	.uaword	0x17d3
	.uleb128 0x11
	.string	"OsEE_TDB"
	.byte	0xb
	.uahalf	0x122
	.uaword	0x15e8
	.uleb128 0xe
	.byte	0x4
	.uaword	0x17ea
	.uleb128 0xf
	.byte	0x20
	.byte	0xb
	.uahalf	0x2d9
	.uaword	0x1906
	.uleb128 0x10
	.string	"p_curr"
	.byte	0xb
	.uahalf	0x2dc
	.uaword	0x17fb
	.byte	0
	.uleb128 0x10
	.string	"rq"
	.byte	0xb
	.uahalf	0x2ee
	.uaword	0x15fc
	.byte	0x4
	.uleb128 0x10
	.string	"p_free_sn"
	.byte	0xb
	.uahalf	0x2f0
	.uaword	0x160b
	.byte	0x8
	.uleb128 0x10
	.string	"p_stk_sn"
	.byte	0xb
	.uahalf	0x2ff
	.uaword	0x160b
	.byte	0xc
	.uleb128 0x10
	.string	"os_status"
	.byte	0xb
	.uahalf	0x301
	.uaword	0x1906
	.byte	0x10
	.uleb128 0x10
	.string	"app_mode"
	.byte	0xb
	.uahalf	0x305
	.uaword	0x10db
	.byte	0x11
	.uleb128 0x10
	.string	"last_error"
	.byte	0xb
	.uahalf	0x307
	.uaword	0x14ee
	.byte	0x12
	.uleb128 0x10
	.string	"prev_s_isr_all_status"
	.byte	0xb
	.uahalf	0x327
	.uaword	0x28c
	.byte	0x14
	.uleb128 0x10
	.string	"prev_s_isr_os_status"
	.byte	0xb
	.uahalf	0x329
	.uaword	0x28c
	.byte	0x18
	.uleb128 0x10
	.string	"s_isr_all_cnt"
	.byte	0xb
	.uahalf	0x32b
	.uaword	0x1611
	.byte	0x1c
	.uleb128 0x10
	.string	"s_isr_os_cnt"
	.byte	0xb
	.uahalf	0x32d
	.uaword	0x1611
	.byte	0x1d
	.uleb128 0x10
	.string	"d_isr_all_cnt"
	.byte	0xb
	.uahalf	0x330
	.uaword	0x1611
	.byte	0x1e
	.byte	0
	.uleb128 0x1c
	.uaword	0x1689
	.uleb128 0x11
	.string	"OsEE_CCB"
	.byte	0xb
	.uahalf	0x33a
	.uaword	0x1801
	.uleb128 0xf
	.byte	0x8
	.byte	0xb
	.uahalf	0x344
	.uaword	0x194a
	.uleb128 0x10
	.string	"p_ccb"
	.byte	0xb
	.uahalf	0x34a
	.uaword	0x194a
	.byte	0
	.uleb128 0x10
	.string	"p_idle_task"
	.byte	0xb
	.uahalf	0x354
	.uaword	0x17fb
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x190b
	.uleb128 0x11
	.string	"OsEE_CDB"
	.byte	0xb
	.uahalf	0x36a
	.uaword	0x1961
	.uleb128 0x12
	.uaword	0x191c
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.uahalf	0x36f
	.uaword	0x197f
	.uleb128 0x10
	.string	"dummy"
	.byte	0xb
	.uahalf	0x3b1
	.uaword	0x28c
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"OsEE_KCB"
	.byte	0xb
	.uahalf	0x3b3
	.uaword	0x1966
	.uleb128 0xf
	.byte	0x14
	.byte	0xb
	.uahalf	0x3c3
	.uaword	0x1a0b
	.uleb128 0x10
	.string	"p_kcb"
	.byte	0xb
	.uahalf	0x3c5
	.uaword	0x1a0b
	.byte	0
	.uleb128 0x10
	.string	"p_tdb_ptr_array"
	.byte	0xb
	.uahalf	0x3d1
	.uaword	0x1a1c
	.byte	0x4
	.uleb128 0x10
	.string	"tdb_array_size"
	.byte	0xb
	.uahalf	0x3d4
	.uaword	0x12a2
	.byte	0x8
	.uleb128 0x10
	.string	"p_res_ptr_array"
	.byte	0xb
	.uahalf	0x3e0
	.uaword	0x1a2d
	.byte	0xc
	.uleb128 0x10
	.string	"res_array_size"
	.byte	0xb
	.uahalf	0x3e2
	.uaword	0x12a2
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x197f
	.uleb128 0x1d
	.uaword	0x15e2
	.uaword	0x1a1c
	.uleb128 0x1e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1a11
	.uleb128 0x1d
	.uaword	0x170d
	.uaword	0x1a2d
	.uleb128 0x1e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1a22
	.uleb128 0x11
	.string	"OsEE_KDB"
	.byte	0xb
	.uahalf	0x3fc
	.uaword	0x1a44
	.uleb128 0x12
	.uaword	0x1990
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x9
	.byte	0x4
	.byte	0x1
	.byte	0xf1
	.uaword	0x1a97
	.uleb128 0xa
	.string	"p_uc"
	.byte	0x1
	.byte	0xf3
	.uaword	0x1a97
	.uleb128 0xa
	.string	"p_us"
	.byte	0x1
	.byte	0xf4
	.uaword	0x1a9d
	.uleb128 0xa
	.string	"p_ui"
	.byte	0x1
	.byte	0xf5
	.uaword	0x1aa3
	.uleb128 0xa
	.string	"p_ull"
	.byte	0x1
	.byte	0xf6
	.uaword	0x1aa9
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x198
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1c5
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1eb
	.uleb128 0xe
	.byte	0x4
	.uaword	0x20c
	.uleb128 0x3
	.string	"OsEE_tc_init_table_entry_ptr"
	.byte	0x1
	.byte	0xf7
	.uaword	0x1a5d
	.uleb128 0x7
	.byte	0x8
	.byte	0x1
	.byte	0xf9
	.uaword	0x1af4
	.uleb128 0x1f
	.uaword	.LASF1
	.byte	0x1
	.byte	0xfb
	.uaword	0x1aaf
	.byte	0
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.byte	0xfc
	.uaword	0x1eb
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"OsEE_tc_clear_table"
	.byte	0x1
	.byte	0xfd
	.uaword	0x1ad3
	.uleb128 0x7
	.byte	0xc
	.byte	0x1
	.byte	0xff
	.uaword	0x1b3f
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x101
	.uaword	0x1aaf
	.byte	0
	.uleb128 0x20
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x102
	.uaword	0x1aaf
	.byte	0x4
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x103
	.uaword	0x1eb
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.string	"OsEE_tc_copy_table"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x1b0f
	.uleb128 0x21
	.string	"osEE_tc_clear_cpu_endinit"
	.byte	0x2
	.uahalf	0x186
	.byte	0x1
	.byte	0x3
	.uaword	0x1bae
	.uleb128 0x22
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x186
	.uaword	0x28c
	.uleb128 0x23
	.string	"pw"
	.byte	0x2
	.uahalf	0x186
	.uaword	0x1c5
	.uleb128 0x24
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x188
	.uaword	0xa6c
	.uleb128 0x24
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x18b
	.uaword	0x1bae
	.byte	0
	.uleb128 0x12
	.uaword	0x1bb3
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1bb9
	.uleb128 0x1c
	.uaword	0xc97
	.uleb128 0x21
	.string	"osEE_tc_set_cpu_endinit"
	.byte	0x2
	.uahalf	0x1ad
	.byte	0x1
	.byte	0x3
	.uaword	0x1c10
	.uleb128 0x22
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x1ad
	.uaword	0x28c
	.uleb128 0x23
	.string	"pw"
	.byte	0x2
	.uahalf	0x1ad
	.uaword	0x1c5
	.uleb128 0x24
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x1af
	.uaword	0xa6c
	.uleb128 0x24
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x1b2
	.uaword	0x1bae
	.byte	0
	.uleb128 0x21
	.string	"osEE_tc_clear_safety_endinit"
	.byte	0x2
	.uahalf	0x1f0
	.byte	0x1
	.byte	0x3
	.uaword	0x1c4f
	.uleb128 0x23
	.string	"pw"
	.byte	0x2
	.uahalf	0x1f0
	.uaword	0x1c5
	.uleb128 0x24
	.uaword	.LASF8
	.byte	0x2
	.uahalf	0x1f3
	.uaword	0xb80
	.byte	0
	.uleb128 0x21
	.string	"osEE_tc_set_safety_endinit"
	.byte	0x2
	.uahalf	0x214
	.byte	0x1
	.byte	0x3
	.uaword	0x1c8c
	.uleb128 0x23
	.string	"pw"
	.byte	0x2
	.uahalf	0x214
	.uaword	0x1c5
	.uleb128 0x24
	.uaword	.LASF8
	.byte	0x2
	.uahalf	0x217
	.uaword	0xb80
	.byte	0
	.uleb128 0x25
	.string	"osEE_get_curr_core_id"
	.byte	0x4
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x305
	.byte	0x3
	.uaword	0x1cbf
	.uleb128 0x26
	.uleb128 0x27
	.string	"reg"
	.byte	0x4
	.uahalf	0x16f
	.uaword	0x28c
	.byte	0
	.byte	0
	.uleb128 0x25
	.string	"osEE_tc_get_cpu_wdt_pw"
	.byte	0x2
	.uahalf	0x169
	.byte	0x1
	.uaword	0x1c5
	.byte	0x3
	.uaword	0x1d08
	.uleb128 0x22
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x169
	.uaword	0x28c
	.uleb128 0x27
	.string	"pw"
	.byte	0x2
	.uahalf	0x16e
	.uaword	0x1c5
	.uleb128 0x24
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x16f
	.uaword	0x1c5
	.byte	0
	.uleb128 0x25
	.string	"osEE_tc_get_safety_wdt_pw"
	.byte	0x2
	.uahalf	0x175
	.byte	0x1
	.uaword	0x1c5
	.byte	0x3
	.uaword	0x1d48
	.uleb128 0x27
	.string	"pw"
	.byte	0x2
	.uahalf	0x17a
	.uaword	0x1c5
	.uleb128 0x24
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x17b
	.uaword	0x1c5
	.byte	0
	.uleb128 0x28
	.string	"osEE_set_SP"
	.byte	0x3
	.byte	0x70
	.byte	0x1
	.byte	0x3
	.uaword	0x1d68
	.uleb128 0x29
	.string	"sp"
	.byte	0x3
	.byte	0x70
	.uaword	0x1d68
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x29c
	.uleb128 0x2a
	.string	"osEE_tc_dsync"
	.byte	0x4
	.byte	0x9f
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"osEE_tc_set_pcache"
	.byte	0x2
	.uahalf	0x256
	.byte	0x1
	.byte	0x3
	.uaword	0x1de4
	.uleb128 0x23
	.string	"enable"
	.byte	0x2
	.uahalf	0x256
	.uaword	0x268
	.uleb128 0x24
	.uaword	.LASF10
	.byte	0x2
	.uahalf	0x258
	.uaword	0x1c5
	.uleb128 0x27
	.string	"core_id"
	.byte	0x2
	.uahalf	0x259
	.uaword	0x1de4
	.uleb128 0x24
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x25e
	.uaword	0x1de9
	.uleb128 0x27
	.string	"pcon0"
	.byte	0x2
	.uahalf	0x262
	.uaword	0x1de9
	.byte	0
	.uleb128 0x12
	.uaword	0x305
	.uleb128 0x12
	.uaword	0x28c
	.uleb128 0x21
	.string	"osEE_tc_set_dcache"
	.byte	0x2
	.uahalf	0x278
	.byte	0x1
	.byte	0x3
	.uaword	0x1e51
	.uleb128 0x23
	.string	"enable"
	.byte	0x2
	.uahalf	0x278
	.uaword	0x268
	.uleb128 0x24
	.uaword	.LASF10
	.byte	0x2
	.uahalf	0x27a
	.uaword	0x1c5
	.uleb128 0x27
	.string	"core_id"
	.byte	0x2
	.uahalf	0x27b
	.uaword	0x1de4
	.uleb128 0x24
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x280
	.uaword	0x1de9
	.uleb128 0x27
	.string	"dcon0"
	.byte	0x2
	.uahalf	0x286
	.uaword	0x1de9
	.byte	0
	.uleb128 0x21
	.string	"osEE_tc_csa_init_inline"
	.byte	0x2
	.uahalf	0x29c
	.byte	0x1
	.byte	0x3
	.uaword	0x1f0d
	.uleb128 0x23
	.string	"p_csa_begin"
	.byte	0x2
	.uahalf	0x29e
	.uaword	0x1f0d
	.uleb128 0x23
	.string	"p_csa_end"
	.byte	0x2
	.uahalf	0x29f
	.uaword	0x1f18
	.uleb128 0x27
	.string	"no_of_csas"
	.byte	0x2
	.uahalf	0x2a7
	.uaword	0x1f28
	.uleb128 0x27
	.string	"pcxi_val"
	.byte	0x2
	.uahalf	0x2aa
	.uaword	0x28c
	.uleb128 0x27
	.string	"fcd_needed_csa"
	.byte	0x2
	.uahalf	0x2b4
	.uaword	0x28c
	.uleb128 0x27
	.string	"i"
	.byte	0x2
	.uahalf	0x2b6
	.uaword	0x15f
	.uleb128 0x26
	.uleb128 0x27
	.string	"pcxi_s"
	.byte	0x2
	.uahalf	0x2bf
	.uaword	0x28c
	.uleb128 0x27
	.string	"pcxi_o"
	.byte	0x2
	.uahalf	0x2c1
	.uaword	0x28c
	.uleb128 0x27
	.string	"p_csa"
	.byte	0x2
	.uahalf	0x2c3
	.uaword	0x1f0d
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x1f12
	.uleb128 0xe
	.byte	0x4
	.uaword	0x5c1
	.uleb128 0x12
	.uaword	0x1f1d
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1f23
	.uleb128 0x12
	.uaword	0x5c1
	.uleb128 0x12
	.uaword	0x15f
	.uleb128 0x21
	.string	"osEE_tc_disable_cpu_wdt"
	.byte	0x2
	.uahalf	0x1d6
	.byte	0x1
	.byte	0x3
	.uaword	0x1f67
	.uleb128 0x22
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x1d6
	.uaword	0x28c
	.uleb128 0x23
	.string	"pw"
	.byte	0x2
	.uahalf	0x1d6
	.uaword	0x1c5
	.byte	0
	.uleb128 0x21
	.string	"osEE_tc_disable_safety_wdt"
	.byte	0x2
	.uahalf	0x23a
	.byte	0x1
	.byte	0x3
	.uaword	0x1f98
	.uleb128 0x23
	.string	"pw"
	.byte	0x2
	.uahalf	0x23a
	.uaword	0x1c5
	.byte	0
	.uleb128 0x21
	.string	"osEE_tc_C_init"
	.byte	0x1
	.uahalf	0x173
	.byte	0x1
	.byte	0x1
	.uaword	0x1fce
	.uleb128 0x2b
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x175
	.uaword	0x1fce
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x177
	.uaword	0x1fd9
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.uaword	0x1af4
	.uaword	0x1fd9
	.uleb128 0x1e
	.byte	0
	.uleb128 0x1d
	.uaword	0x1b3f
	.uaword	0x1fe4
	.uleb128 0x1e
	.byte	0
	.uleb128 0x2c
	.string	"osEE_tc_conf_clock_ctrl"
	.byte	0x2
	.uahalf	0x6d4
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"osEE_tc_conf_osc_ctrl"
	.byte	0x2
	.uahalf	0x6f4
	.byte	0x1
	.byte	0x3
	.uleb128 0x2d
	.byte	0x1
	.string	"_start"
	.byte	0x1
	.uahalf	0x1f5
	.byte	0x1
	.uaword	.LFB105
	.uaword	.LFE105
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x21
	.string	"osEE_tc_apply_clear_table"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.byte	0x1
	.uaword	0x20b9
	.uleb128 0x23
	.string	"p_clear_table_param"
	.byte	0x1
	.uahalf	0x108
	.uaword	0x20b9
	.uleb128 0x27
	.string	"p_clear_table"
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x20b9
	.uleb128 0x26
	.uleb128 0x24
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x1aaf
	.uleb128 0x24
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x12a2
	.uleb128 0x26
	.uleb128 0x27
	.string	"ull_cnt"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x12a2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x20bf
	.uleb128 0x12
	.uaword	0x1af4
	.uleb128 0x21
	.string	"osEE_tc_apply_copy_table"
	.byte	0x1
	.uahalf	0x139
	.byte	0x1
	.byte	0x1
	.uaword	0x2150
	.uleb128 0x23
	.string	"p_copy_table_param"
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x2150
	.uleb128 0x27
	.string	"p_copy_table"
	.byte	0x1
	.uahalf	0x13e
	.uaword	0x2150
	.uleb128 0x26
	.uleb128 0x24
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x140
	.uaword	0x1aaf
	.uleb128 0x24
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x141
	.uaword	0x1aaf
	.uleb128 0x24
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x142
	.uaword	0x12a2
	.uleb128 0x26
	.uleb128 0x27
	.string	"ull_cnt"
	.byte	0x1
	.uahalf	0x150
	.uaword	0x12a2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x2156
	.uleb128 0x12
	.uaword	0x1b3f
	.uleb128 0x2e
	.byte	0x1
	.string	"osEE_tc_core0_start"
	.byte	0x1
	.uahalf	0x21f
	.byte	0x1
	.uaword	.LFB106
	.uaword	.LFE106
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2808
	.uleb128 0x2f
	.string	"pcxi"
	.byte	0x1
	.uahalf	0x221
	.uaword	0x28c
	.uaword	.LLST0
	.uleb128 0x24
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x222
	.uaword	0x2808
	.uleb128 0x27
	.string	"safety_wdt_pw"
	.byte	0x1
	.uahalf	0x223
	.uaword	0x2808
	.uleb128 0x30
	.uaword	0x1cbf
	.uaword	.LBB156
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x222
	.uaword	0x21ea
	.uleb128 0x31
	.uaword	0x1ce4
	.byte	0
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x33
	.uaword	0x1cf0
	.uaword	.LLST1
	.uleb128 0x33
	.uaword	0x1cfb
	.uaword	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1d08
	.uaword	.LBB162
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x223
	.uaword	0x2215
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x33
	.uaword	0x1d30
	.uaword	.LLST3
	.uleb128 0x34
	.uaword	0x1d3b
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1d48
	.uaword	.LBB174
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x226
	.uaword	0x222f
	.uleb128 0x35
	.uaword	0x1d5d
	.byte	0
	.uleb128 0x36
	.uaword	0x1d6e
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x1
	.uahalf	0x22c
	.uleb128 0x37
	.uaword	.LBB182
	.uaword	.LBE182
	.uaword	0x225d
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.uahalf	0x234
	.uaword	0x28c
	.uaword	.LLST4
	.byte	0
	.uleb128 0x38
	.uaword	0x1d81
	.uaword	.LBB183
	.uaword	.LBE183
	.byte	0x1
	.uahalf	0x239
	.uaword	0x2367
	.uleb128 0x31
	.uaword	0x1d9e
	.byte	0x1
	.uleb128 0x39
	.uaword	.LBB184
	.uaword	.LBE184
	.uleb128 0x3a
	.uaword	0x1dad
	.uleb128 0x3a
	.uaword	0x1db9
	.uleb128 0x3a
	.uaword	0x1dc9
	.uleb128 0x3b
	.uaword	0x1dd5
	.byte	0
	.uleb128 0x38
	.uaword	0x1c8c
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x2
	.uahalf	0x259
	.uaword	0x22bd
	.uleb128 0x39
	.uaword	.LBB187
	.uaword	.LBE187
	.uleb128 0x33
	.uaword	0x1cb1
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1cbf
	.uaword	.LBB188
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x2
	.uahalf	0x26a
	.uaword	0x22ef
	.uleb128 0x35
	.uaword	0x1ce4
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x33
	.uaword	0x1cf0
	.uaword	.LLST6
	.uleb128 0x33
	.uaword	0x1cfb
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1b5a
	.uaword	.LBB192
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x2
	.uahalf	0x26e
	.uaword	0x232a
	.uleb128 0x3c
	.uaword	0x1b8a
	.uaword	.LLST7
	.uleb128 0x35
	.uaword	0x1b7e
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x33
	.uaword	0x1b95
	.uaword	.LLST9
	.uleb128 0x33
	.uaword	0x1ba1
	.uaword	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x1bbe
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x2
	.uahalf	0x270
	.uleb128 0x3c
	.uaword	0x1bec
	.uaword	.LLST11
	.uleb128 0x35
	.uaword	0x1be0
	.uleb128 0x39
	.uaword	.LBB201
	.uaword	.LBE201
	.uleb128 0x33
	.uaword	0x1bf7
	.uaword	.LLST12
	.uleb128 0x33
	.uaword	0x1c03
	.uaword	.LLST13
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1dee
	.uaword	.LBB202
	.uaword	.LBE202
	.byte	0x1
	.uahalf	0x23c
	.uaword	0x2471
	.uleb128 0x31
	.uaword	0x1e0b
	.byte	0x1
	.uleb128 0x39
	.uaword	.LBB203
	.uaword	.LBE203
	.uleb128 0x3a
	.uaword	0x1e1a
	.uleb128 0x3a
	.uaword	0x1e26
	.uleb128 0x3a
	.uaword	0x1e36
	.uleb128 0x3b
	.uaword	0x1e42
	.byte	0
	.uleb128 0x38
	.uaword	0x1c8c
	.uaword	.LBB204
	.uaword	.LBE204
	.byte	0x2
	.uahalf	0x27b
	.uaword	0x23c7
	.uleb128 0x39
	.uaword	.LBB206
	.uaword	.LBE206
	.uleb128 0x33
	.uaword	0x1cb1
	.uaword	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1cbf
	.uaword	.LBB207
	.uaword	.Ldebug_ranges0+0xb8
	.byte	0x2
	.uahalf	0x289
	.uaword	0x23f9
	.uleb128 0x35
	.uaword	0x1ce4
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0xb8
	.uleb128 0x33
	.uaword	0x1cf0
	.uaword	.LLST15
	.uleb128 0x33
	.uaword	0x1cfb
	.uaword	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1b5a
	.uaword	.LBB212
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x2
	.uahalf	0x28d
	.uaword	0x2434
	.uleb128 0x3c
	.uaword	0x1b8a
	.uaword	.LLST16
	.uleb128 0x35
	.uaword	0x1b7e
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0xe0
	.uleb128 0x33
	.uaword	0x1b95
	.uaword	.LLST18
	.uleb128 0x33
	.uaword	0x1ba1
	.uaword	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x1bbe
	.uaword	.LBB223
	.uaword	.LBE223
	.byte	0x2
	.uahalf	0x28f
	.uleb128 0x3c
	.uaword	0x1bec
	.uaword	.LLST20
	.uleb128 0x35
	.uaword	0x1be0
	.uleb128 0x39
	.uaword	.LBB224
	.uaword	.LBE224
	.uleb128 0x33
	.uaword	0x1bf7
	.uaword	.LLST21
	.uleb128 0x33
	.uaword	0x1c03
	.uaword	.LLST22
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1b5a
	.uaword	.LBB225
	.uaword	.LBE225
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x24b2
	.uleb128 0x3c
	.uaword	0x1b8a
	.uaword	.LLST23
	.uleb128 0x31
	.uaword	0x1b7e
	.byte	0
	.uleb128 0x39
	.uaword	.LBB226
	.uaword	.LBE226
	.uleb128 0x33
	.uaword	0x1b95
	.uaword	.LLST24
	.uleb128 0x3e
	.uaword	0x1ba1
	.sleb128 -268214016
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1bbe
	.uaword	.LBB227
	.uaword	.LBE227
	.byte	0x1
	.uahalf	0x24b
	.uaword	0x24f3
	.uleb128 0x3c
	.uaword	0x1bec
	.uaword	.LLST25
	.uleb128 0x31
	.uaword	0x1be0
	.byte	0
	.uleb128 0x39
	.uaword	.LBB228
	.uaword	.LBE228
	.uleb128 0x33
	.uaword	0x1bf7
	.uaword	.LLST26
	.uleb128 0x3e
	.uaword	0x1c03
	.sleb128 -268214016
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1e51
	.uaword	.LBB229
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.uahalf	0x25a
	.uaword	0x255d
	.uleb128 0x35
	.uaword	0x1e87
	.uleb128 0x35
	.uaword	0x1e73
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x108
	.uleb128 0x33
	.uaword	0x1e99
	.uaword	.LLST27
	.uleb128 0x33
	.uaword	0x1eac
	.uaword	.LLST28
	.uleb128 0x33
	.uaword	0x1ebd
	.uaword	.LLST29
	.uleb128 0x33
	.uaword	0x1ed4
	.uaword	.LLST30
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x120
	.uleb128 0x33
	.uaword	0x1edf
	.uaword	.LLST31
	.uleb128 0x33
	.uaword	0x1eee
	.uaword	.LLST32
	.uleb128 0x33
	.uaword	0x1efd
	.uaword	.LLST33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1f2d
	.uaword	.LBB234
	.uaword	.LBE234
	.byte	0x1
	.uahalf	0x25e
	.uaword	0x2606
	.uleb128 0x3c
	.uaword	0x1f5b
	.uaword	.LLST34
	.uleb128 0x3c
	.uaword	0x1f4f
	.uaword	.LLST35
	.uleb128 0x38
	.uaword	0x1b5a
	.uaword	.LBB236
	.uaword	.LBE236
	.byte	0x2
	.uahalf	0x1d8
	.uaword	0x25c6
	.uleb128 0x3c
	.uaword	0x1b8a
	.uaword	.LLST34
	.uleb128 0x3c
	.uaword	0x1b7e
	.uaword	.LLST35
	.uleb128 0x39
	.uaword	.LBB237
	.uaword	.LBE237
	.uleb128 0x33
	.uaword	0x1b95
	.uaword	.LLST38
	.uleb128 0x33
	.uaword	0x1ba1
	.uaword	.LLST39
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x1bbe
	.uaword	.LBB238
	.uaword	.LBE238
	.byte	0x2
	.uahalf	0x1db
	.uleb128 0x3c
	.uaword	0x1bec
	.uaword	.LLST40
	.uleb128 0x3c
	.uaword	0x1be0
	.uaword	.LLST41
	.uleb128 0x39
	.uaword	.LBB239
	.uaword	.LBE239
	.uleb128 0x33
	.uaword	0x1bf7
	.uaword	.LLST42
	.uleb128 0x33
	.uaword	0x1c03
	.uaword	.LLST43
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1f67
	.uaword	.LBB240
	.uaword	.LBE240
	.byte	0x1
	.uahalf	0x25f
	.uaword	0x2682
	.uleb128 0x3c
	.uaword	0x1f8c
	.uaword	.LLST44
	.uleb128 0x38
	.uaword	0x1c10
	.uaword	.LBB242
	.uaword	.LBE242
	.byte	0x2
	.uahalf	0x23c
	.uaword	0x2654
	.uleb128 0x3c
	.uaword	0x1c37
	.uaword	.LLST44
	.uleb128 0x39
	.uaword	.LBB243
	.uaword	.LBE243
	.uleb128 0x33
	.uaword	0x1c42
	.uaword	.LLST46
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x1c4f
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x2
	.uahalf	0x23f
	.uleb128 0x3c
	.uaword	0x1c74
	.uaword	.LLST47
	.uleb128 0x39
	.uaword	.LBB245
	.uaword	.LBE245
	.uleb128 0x33
	.uaword	0x1c7f
	.uaword	.LLST48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1f98
	.uaword	.LBB246
	.uaword	.LBE246
	.byte	0x1
	.uahalf	0x262
	.uaword	0x2760
	.uleb128 0x39
	.uaword	.LBB247
	.uaword	.LBE247
	.uleb128 0x3f
	.uaword	0x1fb1
	.byte	0x1
	.uleb128 0x3f
	.uaword	0x1fbf
	.byte	0x1
	.uleb128 0x38
	.uaword	0x2036
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x1
	.uahalf	0x179
	.uaword	0x26ff
	.uleb128 0x35
	.uaword	0x205a
	.uleb128 0x39
	.uaword	.LBB249
	.uaword	.LBE249
	.uleb128 0x33
	.uaword	0x2076
	.uaword	.LLST49
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x138
	.uleb128 0x33
	.uaword	0x208d
	.uaword	.LLST50
	.uleb128 0x33
	.uaword	0x2099
	.uaword	.LLST51
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x150
	.uleb128 0x33
	.uaword	0x20a6
	.uaword	.LLST52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x20c4
	.uaword	.LBB255
	.uaword	.LBE255
	.byte	0x1
	.uahalf	0x17a
	.uleb128 0x40
	.uaword	0x20e7
	.byte	0x1
	.byte	0x66
	.uleb128 0x39
	.uaword	.LBB256
	.uaword	.LBE256
	.uleb128 0x33
	.uaword	0x2102
	.uaword	.LLST53
	.uleb128 0x39
	.uaword	.LBB257
	.uaword	.LBE257
	.uleb128 0x33
	.uaword	0x2118
	.uaword	.LLST54
	.uleb128 0x33
	.uaword	0x2124
	.uaword	.LLST55
	.uleb128 0x33
	.uaword	0x2130
	.uaword	.LLST56
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x170
	.uleb128 0x33
	.uaword	0x213d
	.uaword	.LLST57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x1c10
	.uaword	.LBB260
	.uaword	.LBE260
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x2791
	.uleb128 0x3c
	.uaword	0x1c37
	.uaword	.LLST58
	.uleb128 0x39
	.uaword	.LBB261
	.uaword	.LBE261
	.uleb128 0x33
	.uaword	0x1c42
	.uaword	.LLST59
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x1fe4
	.uaword	.LBB262
	.uaword	.LBE262
	.byte	0x1
	.uahalf	0x26f
	.uleb128 0x36
	.uaword	0x2002
	.uaword	.LBB264
	.uaword	.LBE264
	.byte	0x1
	.uahalf	0x271
	.uleb128 0x30
	.uaword	0x1c4f
	.uaword	.LBB266
	.uaword	.Ldebug_ranges0+0x188
	.byte	0x1
	.uahalf	0x275
	.uaword	0x27de
	.uleb128 0x3c
	.uaword	0x1c74
	.uaword	.LLST60
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x188
	.uleb128 0x33
	.uaword	0x1c7f
	.uaword	.LLST61
	.byte	0
	.byte	0
	.uleb128 0x41
	.uaword	.LVL98
	.uaword	0x2923
	.uaword	0x27f5
	.uleb128 0x42
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0xbebc200
	.byte	0
	.uleb128 0x43
	.uaword	.LVL101
	.uaword	0x294c
	.uleb128 0x43
	.uaword	.LVL102
	.uaword	0x295b
	.byte	0
	.uleb128 0x12
	.uaword	0x1c5
	.uleb128 0x44
	.string	"osEE_kdb_var"
	.byte	0xc
	.byte	0x42
	.uaword	0x1a33
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"osEE_cdb_var"
	.byte	0xc
	.byte	0x5b
	.uaword	0x1950
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x175
	.uaword	0x1fce
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x177
	.uaword	0x1fd9
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.uaword	0x29c
	.uaword	0x2860
	.uleb128 0x1e
	.byte	0
	.uleb128 0x45
	.string	"__USTACK0"
	.byte	0x1
	.uahalf	0x211
	.uaword	0x2855
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"__ISTACK0"
	.byte	0x1
	.uahalf	0x212
	.uaword	0x2855
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.uaword	0x198
	.uaword	0x2893
	.uleb128 0x1e
	.byte	0
	.uleb128 0x45
	.string	"_SMALL_DATA_"
	.byte	0x1
	.uahalf	0x217
	.uaword	0x2888
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"_SMALL_DATA2_"
	.byte	0x1
	.uahalf	0x218
	.uaword	0x2888
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"_SMALL_DATA3_"
	.byte	0x1
	.uahalf	0x219
	.uaword	0x2888
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"_SMALL_DATA4_"
	.byte	0x1
	.uahalf	0x21a
	.uaword	0x2888
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.uaword	0x5c1
	.uaword	0x28fd
	.uleb128 0x1e
	.byte	0
	.uleb128 0x45
	.string	"__CSA0"
	.byte	0x1
	.uahalf	0x21c
	.uaword	0x28f2
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"__CSA0_END"
	.byte	0x1
	.uahalf	0x21d
	.uaword	0x28f2
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.byte	0x1
	.string	"osEE_tc_set_pll_fsource"
	.byte	0x2
	.uahalf	0x70c
	.byte	0x1
	.byte	0x1
	.uaword	0x294c
	.uleb128 0x47
	.uaword	0x28c
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.uaword	0x182
	.byte	0x1
	.uleb128 0x49
	.byte	0x1
	.string	"_exit"
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.uaword	0x182
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
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x11
	.sleb128 -1048576
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LVL70
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LFE106
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL102
	.uaword	.LFE106
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL3
	.uaword	.LFE106
	.uahalf	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL24
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL12
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x7
	.byte	0x82
	.sleb128 -268214016
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL16
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL16
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x7
	.byte	0x82
	.sleb128 -268214016
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LVL46
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL27
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL27
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LVL39
	.uahalf	0x7
	.byte	0x82
	.sleb128 -268214016
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL31
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL31
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LVL39
	.uahalf	0x7
	.byte	0x82
	.sleb128 -268214016
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL34
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL102
	.uaword	.LFE106
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL41
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL102
	.uaword	.LFE106
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL45
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL45
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL102
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x7f
	.sleb128 0
	.uaword	.LVL106
	.uaword	.LFE106
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL45
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL102
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LFE106
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL45
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x4c
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL107
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x4c
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x7
	.byte	0x82
	.sleb128 0
	.byte	0x4c
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LFE106
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x4c
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL107
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LFE106
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL102
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL108
	.uaword	.LFE106
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL52
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL52
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL52
	.uaword	.LVL102
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036100
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL57
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL57
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL57
	.uaword	.LVL102
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036100
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL60
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL65
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL70
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL71
	.uaword	.LVL73
	.uahalf	0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x3
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x5
	.byte	0x82
	.sleb128 8
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL71
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL80
	.uaword	.LVL98-1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL81
	.uaword	.LVL84
	.uahalf	0x3
	.byte	0x65
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x3
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x5
	.byte	0x82
	.sleb128 -8
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x5
	.byte	0x82
	.sleb128 8
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x3
	.byte	0x65
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x5
	.byte	0x85
	.sleb128 -2
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL90
	.uaword	.LVL98-1
	.uahalf	0x3
	.byte	0x65
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL82
	.uaword	.LVL84
	.uahalf	0x3
	.byte	0x64
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x3
	.byte	0x64
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL90
	.uaword	.LVL98-1
	.uahalf	0x3
	.byte	0x64
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL82
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL93
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL98
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	.LFB105
	.uaword	.LFE105-.LFB105
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	.LBB168
	.uaword	.LBE168
	.uaword	.LBB170
	.uaword	.LBE170
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	.LBB177
	.uaword	.LBE177
	.uaword	0
	.uaword	0
	.uaword	.LBB162
	.uaword	.LBE162
	.uaword	.LBB169
	.uaword	.LBE169
	.uaword	.LBB171
	.uaword	.LBE171
	.uaword	.LBB173
	.uaword	.LBE173
	.uaword	.LBB178
	.uaword	.LBE178
	.uaword	0
	.uaword	0
	.uaword	.LBB174
	.uaword	.LBE174
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	0
	.uaword	0
	.uaword	.LBB188
	.uaword	.LBE188
	.uaword	.LBB196
	.uaword	.LBE196
	.uaword	.LBB198
	.uaword	.LBE198
	.uaword	0
	.uaword	0
	.uaword	.LBB192
	.uaword	.LBE192
	.uaword	.LBB197
	.uaword	.LBE197
	.uaword	.LBB199
	.uaword	.LBE199
	.uaword	0
	.uaword	0
	.uaword	.LBB207
	.uaword	.LBE207
	.uaword	.LBB217
	.uaword	.LBE217
	.uaword	.LBB219
	.uaword	.LBE219
	.uaword	.LBB221
	.uaword	.LBE221
	.uaword	0
	.uaword	0
	.uaword	.LBB212
	.uaword	.LBE212
	.uaword	.LBB218
	.uaword	.LBE218
	.uaword	.LBB220
	.uaword	.LBE220
	.uaword	.LBB222
	.uaword	.LBE222
	.uaword	0
	.uaword	0
	.uaword	.LBB229
	.uaword	.LBE229
	.uaword	.LBB272
	.uaword	.LBE272
	.uaword	0
	.uaword	0
	.uaword	.LBB231
	.uaword	.LBE231
	.uaword	.LBB232
	.uaword	.LBE232
	.uaword	0
	.uaword	0
	.uaword	.LBB250
	.uaword	.LBE250
	.uaword	.LBB254
	.uaword	.LBE254
	.uaword	0
	.uaword	0
	.uaword	.LBB251
	.uaword	.LBE251
	.uaword	.LBB252
	.uaword	.LBE252
	.uaword	.LBB253
	.uaword	.LBE253
	.uaword	0
	.uaword	0
	.uaword	.LBB258
	.uaword	.LBE258
	.uaword	.LBB259
	.uaword	.LBE259
	.uaword	0
	.uaword	0
	.uaword	.LBB266
	.uaword	.LBE266
	.uaword	.LBB270
	.uaword	.LBE270
	.uaword	.LBB271
	.uaword	.LBE271
	.uaword	0
	.uaword	0
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.LFB105
	.uaword	.LFE105
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF5:
	.string	"core_index"
.LASF11:
	.string	"__clear_table"
.LASF4:
	.string	"block_dest"
.LASF8:
	.string	"safety_wdt_con0"
.LASF6:
	.string	"cpu_wdt_con0"
.LASF1:
	.string	"block_to_clear"
.LASF12:
	.string	"__copy_table"
.LASF3:
	.string	"block_src"
.LASF2:
	.string	"table_entry_length"
.LASF0:
	.string	"bits"
.LASF9:
	.string	"pw_toggled"
.LASF10:
	.string	"cpu_wdt_pw"
.LASF7:
	.string	"p_cpu_wdt"
	.extern	_exit,STT_FUNC,0
	.extern	main,STT_FUNC,0
	.extern	osEE_tc_set_pll_fsource,STT_FUNC,0
	.extern	__copy_table,STT_OBJECT,-1
	.extern	__clear_table,STT_OBJECT,-1
	.extern	__CSA0_END,STT_OBJECT,-1
	.extern	__CSA0,STT_OBJECT,-1
	.extern	_SMALL_DATA4_,STT_OBJECT,-1
	.extern	_SMALL_DATA3_,STT_OBJECT,-1
	.extern	_SMALL_DATA2_,STT_OBJECT,-1
	.extern	_SMALL_DATA_,STT_OBJECT,-1
	.extern	__ISTACK0,STT_OBJECT,-1
	.extern	__INTTAB0,STT_FUNC,0
	.extern	__TRAPTAB,STT_FUNC,0
	.extern	__USTACK0,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
