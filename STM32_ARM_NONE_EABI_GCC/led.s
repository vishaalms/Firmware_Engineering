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
	.file	"led.c"
	.text
	.align	1
	.global	delay
	.syntax unified
	.thumb
	.thumb_func
	.type	delay, %function
delay:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L3
	nop
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	delay, .-delay
	.align	1
	.global	led_init_all
	.syntax unified
	.thumb
	.thumb_func
	.type	led_init_all, %function
led_init_all:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r3, .L5
	str	r3, [r7, #4]
	ldr	r3, .L5+4
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	orr	r2, r3, #16777216
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	orr	r2, r3, #67108864
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	orr	r2, r3, #268435456
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	orr	r2, r3, #1073741824
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r0, #12
	bl	led_off
	movs	r0, #13
	bl	led_off
	movs	r0, #14
	bl	led_off
	movs	r0, #15
	bl	led_off
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	1073887280
	.word	1073875968
	.size	led_init_all, .-led_init_all
	.align	1
	.global	led_on
	.syntax unified
	.thumb
	.thumb_func
	.type	led_on, %function
led_on:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r3, .L8
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L9:
	.align	2
.L8:
	.word	1073875988
	.size	led_on, .-led_on
	.align	1
	.global	led_off
	.syntax unified
	.thumb
	.thumb_func
	.type	led_off, %function
led_off:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r3, .L11
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mvns	r2, r2
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L12:
	.align	2
.L11:
	.word	1073875988
	.size	led_off, .-led_off
	.ident	"GCC: (15:13.2.rel1-2) 13.2.1 20231009"
