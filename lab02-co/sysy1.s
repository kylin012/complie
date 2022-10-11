	.text
	.global	var1
	.data
	.align	2
	.type	var1, %object
	.size	var1, 4
var1:
	.word	1
	.align	2
	.type	var2, %object
	.size	var2, 4
var2:
	.word	2
	.global	var3
	.section	.rodata
	.align	2
	.type	var3, %object
	.size	var3, 4
var3:
	.word	3
	.text
	.align	1
	.global	if_stmt
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	if_stmt, %function
if_stmt:
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L5
.LPIC0:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L2
	ldr	r3, .L5+4
.LPIC1:
	add	r3, pc
	mov	r2, r3
	movs	r3, #2
	str	r3, [r2]
	b	.L4
.L2:
	ldr	r3, .L5+8
.LPIC2:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
.L4:
	nop
	mov	sp, r7
	ldr	r7, [sp], #4
	bx	lr
.L6:
	.align	2
.L5:
	.word	var1-(.LPIC0+4)
	.word	var1-(.LPIC1+4)
	.word	var1-(.LPIC2+4)
	.size	if_stmt, .-if_stmt
	.align	1
	.global	for_stmt
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	for_stmt, %function
for_stmt:
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L8
.L9:
	ldr	r3, .L10
.LPIC3:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r3, [r2]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L8:
	ldr	r3, [r7, #4]
	cmp	r3, #9
	ble	.L9
	nop
	adds	r7, r7, #12
	mov	sp, r7
	ldr	r7, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	var1-(.LPIC3+4)
	.size	for_stmt, .-for_stmt
	.align	1
	.global	while_stmt
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	while_stmt, %function
while_stmt:
	push	{r7}
	add	r7, sp, #0
	b	.L13
.L14:
	ldr	r3, .L15
.LPIC4:
	add	r3, pc
	mov	r2, r3
	movs	r3, #2
	str	r3, [r2]
.L13:
	ldr	r3, .L15+4
.LPIC5:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L14
	nop
	mov	sp, r7
	ldr	r7, [sp], #4
	bx	lr
.L16:
	.align	2
.L15:
	.word	var1-(.LPIC4+4)
	.word	var1-(.LPIC5+4)
	.size	while_stmt, .-while_stmt
	.align	1
	.global	break_continue
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	break_continue, %function
break_continue:
	push	{r7}
	add	r7, sp, #0
.L19:
	ldr	r3, .L22
.LPIC6:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #4
	bgt	.L21
	ldr	r3, .L22+4
.LPIC7:
	add	r3, pc
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L22+8
.LPIC8:
	add	r2, pc
	str	r3, [r2]
	b	.L19
.L21:
	nop
	nop
	mov	sp, r7
	ldr	r7, [sp], #4
	bx	lr
.L23:
	.align	2
.L22:
	.word	var1-(.LPIC6+4)
	.word	var1-(.LPIC7+4)
	.word	var1-(.LPIC8+4)
	.size	break_continue, .-break_continue
	.align	1
	.global	return_stmt
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	return_stmt, %function
return_stmt:
	push	{r7}
	add	r7, sp, #0
	movs	r3, #1
	mov	r0, r3
	mov	sp, r7
	ldr	r7, [sp], #4
	bx	lr
	.size	return_stmt, .-return_stmt
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.align	1
	.global	expr
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	expr, %function
expr:
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	ldr	r3, .L32
.LPIC9:
	add	r3, pc
	ldr	r3, [r3]
	movs	r2, #3
	add	r3, r3, r2
	ldr	r2, .L32+4
.LPIC10:
	add	r2, pc
	str	r3, [r2]
	ldr	r3, .L32+8
.LPIC11:
	add	r3, pc
	ldr	r3, [r3]
	movs	r2, #3
	subs	r3, r3, r2
	ldr	r2, .L32+12
.LPIC12:
	add	r2, pc
	str	r3, [r2]
	ldr	r3, .L32+16
.LPIC13:
	add	r3, pc
	ldr	r3, [r3]
	movs	r2, #3
	mul	r3, r2, r3
	ldr	r2, .L32+20
.LPIC14:
	add	r2, pc
	str	r3, [r2]
	ldr	r3, .L32+24
.LPIC15:
	add	r3, pc
	ldr	r3, [r3]
	movs	r2, #3
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L32+28
.LPIC16:
	add	r3, pc
	str	r2, [r3]
	ldr	r3, .L32+32
.LPIC17:
	add	r3, pc
	ldr	r3, [r3]
	movs	r2, #3
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	ldr	r3, .L32+36
.LPIC18:
	add	r3, pc
	str	r2, [r3]
	ldr	r3, .L32+40
.LPIC19:
	add	r3, pc
	ldr	r3, [r3]
	negs	r3, r3
	ldr	r2, .L32+44
.LPIC20:
	add	r2, pc
	str	r3, [r2]
	ldr	r3, .L32+48
.LPIC21:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L32+52
.LPIC22:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7]
	ldr	r3, .L32+56
.LPIC23:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L32+60
.LPIC24:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r2, r3
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	str	r3, [r7]
	ldr	r3, .L32+64
.LPIC25:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L32+68
.LPIC26:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r2, r3
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	str	r3, [r7]
	ldr	r3, .L32+72
.LPIC27:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L32+76
.LPIC28:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	str	r3, [r7]
	ldr	r3, .L32+80
.LPIC29:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L32+84
.LPIC30:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r2, r3
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	str	r3, [r7]
	ldr	r3, .L32+88
.LPIC31:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L32+92
.LPIC32:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [r7]
	movs	r3, #1
	str	r3, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	mov	r3, #256
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L27
	movs	r3, #1
	b	.L28
.L27:
	movs	r3, #0
.L28:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L29
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L30
.L29:
	movs	r3, #1
	b	.L31
.L30:
	movs	r3, #0
.L31:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	str	r3, [r7]
	ldr	r3, [r7, #12]
	asrs	r3, r3, #4
	str	r3, [r7]
	nop
	adds	r7, r7, #16
	mov	sp, r7
	pop	{r7, pc}
.L33:
	.align	2
.L32:
	.word	var2-(.LPIC9+4)
	.word	var1-(.LPIC10+4)
	.word	var2-(.LPIC11+4)
	.word	var1-(.LPIC12+4)
	.word	var2-(.LPIC13+4)
	.word	var1-(.LPIC14+4)
	.word	var2-(.LPIC15+4)
	.word	var1-(.LPIC16+4)
	.word	var2-(.LPIC17+4)
	.word	var1-(.LPIC18+4)
	.word	var2-(.LPIC19+4)
	.word	var1-(.LPIC20+4)
	.word	var1-(.LPIC21+4)
	.word	var2-(.LPIC22+4)
	.word	var1-(.LPIC23+4)
	.word	var2-(.LPIC24+4)
	.word	var1-(.LPIC25+4)
	.word	var2-(.LPIC26+4)
	.word	var1-(.LPIC27+4)
	.word	var2-(.LPIC28+4)
	.word	var1-(.LPIC29+4)
	.word	var2-(.LPIC30+4)
	.word	var1-(.LPIC31+4)
	.word	var2-(.LPIC32+4)
	.size	expr, .-expr
	.section	.rodata
	.align	2
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	2
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	2
	.word	3
	.word	4
	.word	5
	.word	3
	.word	4
	.word	5
	.word	6
	.word	4
	.word	5
	.word	6
	.word	7
	.text
	.align	1
	.global	array_decl_access
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	array_decl_access, %function
array_decl_access:
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #92
	add	r7, sp, #0
	ldr	r6, .L36
.LPIC33:
	add	r6, pc
	ldr	r3, .L36+4
	ldr	r3, [r6, r3]
	ldr	r3, [r3]
	str	r3, [r7, #84]
	ldr	r3, .L36+8
.LPIC34:
	add	r3, pc
	adds	r4, r7, #4
	ldm	r3, {r0, r1, r2, r3}
	stm	r4, {r0, r1, r2, r3}
	ldr	r3, .L36+12
.LPIC35:
	add	r3, pc
	add	r4, r7, #20
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	stm	r4, {r0, r1, r2, r3}
	movs	r3, #4
	str	r3, [r7, #12]
	movs	r3, #6
	str	r3, [r7, #64]
	nop
	ldr	r3, .L36+4
	ldr	r3, [r6, r3]
	ldr	r2, [r7, #84]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L35
	bl	__stack_chk_fail(PLT)
.L35:
	adds	r7, r7, #92
	mov	sp, r7
	pop	{r4, r5, r6, r7, pc}
.L37:
	.align	2
.L36:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC34+4)
	.word	.LC1-(.LPIC35+4)
	.size	array_decl_access, .-array_decl_access
	.align	1
	.global	ptr
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	ptr, %function
ptr:
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	ldr	r3, .L40
.LPIC36:
	add	r3, pc
	ldr	r2, .L40+4
	ldr	r2, [r3, r2]
	ldr	r2, [r2]
	str	r2, [r7, #12]
	movs	r2, #1
	str	r2, [r7, #4]
	adds	r2, r7, #4
	str	r2, [r7, #8]
	nop
	ldr	r2, .L40+4
	ldr	r3, [r3, r2]
	ldr	r2, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L39
	bl	__stack_chk_fail(PLT)
.L39:
	adds	r7, r7, #16
	mov	sp, r7
	pop	{r7, pc}
.L41:
	.align	2
.L40:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+4)
	.word	__stack_chk_guard(GOT)
	.size	ptr, .-ptr
	.align	1
	.global	callee_noreturn
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	callee_noreturn, %function
callee_noreturn:
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	ldr	r7, [sp], #4
	bx	lr
	.size	callee_noreturn, .-callee_noreturn
	.align	1
	.global	callee_void
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	callee_void, %function
callee_void:
	push	{r7}
	add	r7, sp, #0
	movs	r3, #1
	mov	r0, r3
	mov	sp, r7
	ldr	r7, [sp], #4
	bx	lr
	.size	callee_void, .-callee_void
	.align	1
	.global	callee_args
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	callee_args, %function
callee_args:
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	ldr	r7, [sp], #4
	bx	lr
	.size	callee_args, .-callee_args
	.align	1
	.global	caller
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	caller, %function
caller:
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	bl	callee_noreturn(PLT)
	bl	callee_void(PLT)
	str	r0, [r7, #4]
	movs	r1, #2
	movs	r0, #1
	bl	callee_args(PLT)
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #8
	mov	sp, r7
	pop	{r7, pc}
	.size	caller, .-caller
	.align	1
	.global	float_impl
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	float_impl, %function
float_impl:
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, #1065353216
	str	r3, [r7]	
	mov	r3, #1073741824
	str	r3, [r7, #4]	
	vldr.32	s14, [r7]
	vldr.32	s15, [r7, #4]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [r7, #8]
	vldr.32	s14, [r7]
	vldr.32	s15, [r7, #4]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [r7, #8]
	vldr.32	s14, [r7]
	vldr.32	s15, [r7, #4]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [r7, #8]
	vldr.32	s13, [r7]
	vldr.32	s14, [r7, #4]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #8]
	vldr.32	s14, [r7]
	vldr.32	s15, [r7, #4]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	vldr.32	s14, [r7]
	vldr.32	s15, [r7, #4]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	vldr.32	s14, [r7]
	vldr.32	s15, [r7, #4]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	vldr.32	s14, [r7]
	vldr.32	s15, [r7, #4]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	vldr.32	s14, [r7]
	vldr.32	s15, [r7, #4]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	vldr.32	s14, [r7]
	vldr.32	s15, [r7, #4]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	ldr	r7, [sp], #4
	bx	lr
	.size	float_impl, .-float_impl
	.section	.rodata
	.align	2
.LC2:
	.ascii	"%d\000"
	.align	2
.LC3:
	.ascii	"%d\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L51
.LPIC37:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L51+4
.LPIC38:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, .L51+8
.LPIC39:
	add	r3, pc
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L51+12
.LPIC40:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	pop	{r7, pc}
.L52:
	.align	2
.L51:
	.word	var1-(.LPIC37+4)
	.word	.LC2-(.LPIC38+4)
	.word	var1-(.LPIC39+4)
	.word	.LC3-(.LPIC40+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
