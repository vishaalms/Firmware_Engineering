	.cpu cortex-m4
	.arch armv7e-m
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"startup.c"
	.text
	.global	vectorss
	.section	.isr_vector,"aw"
	.align	2
	.type	vectorss, %object
	.size	vectorss, 64
vectorss:
	.word	537001984
	.word	reset_handl
	.word	0
	.word	HardFault_Handler
	.word	MemManage_Handler
	.word	BusFault_Handler
	.word	UsageFault_Handler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	PendSV_Handler
	.word	SysTick_Handler
	.text
	.align	1
	.global	reset_handl
	.syntax unified
	.thumb
	.thumb_func
	.type	reset_handl, %function
reset_handl:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	ldr	r2, .L6
	ldr	r3, .L6+4
	subs	r3, r2, r3
	str	r3, [r7, #4]
	ldr	r3, .L6+4
	str	r3, [r7, #20]
	ldr	r3, .L6+8
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r2, [r7, #16]
	adds	r3, r2, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L3
	ldr	r2, .L6+12
	ldr	r3, .L6+16
	subs	r3, r2, r3
	str	r3, [r7, #4]
	ldr	r3, .L6+16
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L4
.L5:
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L4:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L5
	bl	main
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	_edata
	.word	_sdata
	.word	_la_data
	.word	_ebss
	.word	_sbss
	.size	reset_handl, .-reset_handl
	.ident	"GCC: (15:13.2.rel1-2) 13.2.1 20231009"
