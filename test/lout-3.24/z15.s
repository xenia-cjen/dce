	.text
	.file	"z15.opt"
	.globl	MinConstraint
	.align	16, 0x90
	.type	MinConstraint,@function
MinConstraint:                          # @MinConstraint
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	(%rsi), %eax
	jge	.LBB0_2
# BB#1:
	movq	-8(%rbp), %rax
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
.LBB0_3:
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB0_5
# BB#4:
	movq	-8(%rbp), %rax
	jmp	.LBB0_6
.LBB0_5:
	movq	-16(%rbp), %rax
.LBB0_6:
	movl	4(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB0_8
# BB#7:
	movq	-8(%rbp), %rax
	jmp	.LBB0_9
.LBB0_8:
	movq	-16(%rbp), %rax
.LBB0_9:
	movl	8(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	MinConstraint, .Lfunc_end0-MinConstraint
	.cfi_endproc

	.globl	SetSizeToMaxForwardConstraint
	.align	16, 0x90
	.type	SetSizeToMaxForwardConstraint,@function
SetSizeToMaxForwardConstraint:          # @SetSizeToMaxForwardConstraint
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	4(%rdx), %eax
	cmpl	8(%rdx), %eax
	jge	.LBB1_2
# BB#1:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	jmp	.LBB1_3
.LBB1_2:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
.LBB1_3:
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rdx
	subl	(%rdx), %ecx
	cmpl	%ecx, (%rax)
	jge	.LBB1_5
# BB#4:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	jmp	.LBB1_6
.LBB1_5:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	subl	(%rcx), %eax
.LBB1_6:
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SetSizeToMaxForwardConstraint, .Lfunc_end1-SetSizeToMaxForwardConstraint
	.cfi_endproc

	.globl	EnlargeToConstraint
	.align	16, 0x90
	.type	EnlargeToConstraint,@function
EnlargeToConstraint:                    # @EnlargeToConstraint
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	4(%rdx), %eax
	movq	-8(%rbp), %rcx
	subl	(%rcx), %eax
	cmpl	8(%rdx), %eax
	jge	.LBB2_2
# BB#1:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movq	-8(%rbp), %rcx
	subl	(%rcx), %eax
	jmp	.LBB2_3
.LBB2_2:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
.LBB2_3:
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	EnlargeToConstraint, .Lfunc_end2-EnlargeToConstraint
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1124073472              # float 128
	.text
	.globl	ScaleToConstraint
	.align	16, 0x90
	.type	ScaleToConstraint,@function
ScaleToConstraint:                      # @ScaleToConstraint
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	$1065353216, -20(%rbp)  # imm = 0x3F800000
	cmpl	$0, -4(%rbp)
	jle	.LBB3_5
# BB#1:
	movq	-16(%rbp), %rax
	cvtsi2ssl	(%rax), %xmm0
	cvtsi2ssl	-4(%rbp), %xmm1
	divss	%xmm1, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jbe	.LBB3_3
# BB#2:
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB3_4
.LBB3_3:
	movq	-16(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%rax), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-4(%rbp), %xmm1
	divss	%xmm1, %xmm0
.LBB3_4:
	movss	%xmm0, -20(%rbp)
.LBB3_5:
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	jle	.LBB3_10
# BB#6:
	movq	-16(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	4(%rax), %xmm0
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jbe	.LBB3_8
# BB#7:
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB3_9
.LBB3_8:
	movq	-16(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	4(%rax), %xmm0
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
.LBB3_9:
	movss	%xmm0, -20(%rbp)
.LBB3_10:
	cmpl	$0, -8(%rbp)
	jle	.LBB3_15
# BB#11:
	movq	-16(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	8(%rax), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-8(%rbp), %xmm1
	divss	%xmm1, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jbe	.LBB3_13
# BB#12:
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB3_14
.LBB3_13:
	movq	-16(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	8(%rax), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-8(%rbp), %xmm1
	divss	%xmm1, %xmm0
.LBB3_14:
	movss	%xmm0, -20(%rbp)
.LBB3_15:
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI3_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ScaleToConstraint, .Lfunc_end3-ScaleToConstraint
	.cfi_endproc

	.globl	InvScaleConstraint
	.align	16, 0x90
	.type	InvScaleConstraint,@function
InvScaleConstraint:                     # @InvScaleConstraint
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.LBB4_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_2:
	movq	-24(%rbp), %rax
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	cmpl	$8388607, (%rax)        # imm = 0x7FFFFF
	movl	$8388607, %eax          # imm = 0x7FFFFF
	je	.LBB4_5
# BB#3:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	shll	$7, %eax
	cltd
	idivl	-12(%rbp)
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	movl	$8388607, %eax          # imm = 0x7FFFFF
	jg	.LBB4_5
# BB#4:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	shll	$7, %eax
	cltd
	idivl	-12(%rbp)
.LBB4_5:
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	cmpl	$8388607, 4(%rax)       # imm = 0x7FFFFF
	je	.LBB4_8
# BB#6:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	shll	$7, %eax
	cltd
	idivl	-12(%rbp)
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	jg	.LBB4_8
# BB#7:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	shll	$7, %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, %ecx
.LBB4_8:
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	cmpl	$8388607, 8(%rax)       # imm = 0x7FFFFF
	je	.LBB4_11
# BB#9:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	shll	$7, %eax
	cltd
	idivl	-12(%rbp)
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	jg	.LBB4_11
# BB#10:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	shll	$7, %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, %ecx
.LBB4_11:
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	InvScaleConstraint, .Lfunc_end4-InvScaleConstraint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI5_1:
	.quad	4676566000559194112     # double 46080
.LCPI5_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI5_3:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI5_4:
	.quad	4616991696741409234     # double 4.7123889803846897
.LCPI5_5:
	.quad	-4606380340113366574    # double -4.7123889803846897
.LCPI5_6:
	.quad	-4609115380302729960    # double -3.1415926535897931
.LCPI5_7:
	.quad	-4613618979930100456    # double -1.5707963267948966
.LCPI5_8:
	.quad	-4604611780675359464    # double -6.2831853071795862
	.text
	.globl	RotateConstraint
	.align	16, 0x90
	.type	RotateConstraint,@function
RotateConstraint:                       # @RotateConstraint
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Ltmp18:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	cvtsi2ssl	-28(%rbp), %xmm0
	addss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI5_0(%rip), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -124(%rbp)
	xorps	%xmm1, %xmm1
	movsd	.LCPI5_2(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_21:                               #   in Loop: Header=BB5_1 Depth=1
	movss	-124(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -124(%rbp)
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ucomiss	-124(%rbp), %xmm1
	ja	.LBB5_21
# BB#2:
	movsd	.LCPI5_8(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB5_3
	.align	16, 0x90
.LBB5_4:                                #   in Loop: Header=BB5_3 Depth=1
	movss	-124(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -124(%rbp)
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	movss	-124(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	ucomisd	.LCPI5_2(%rip), %xmm2
	jae	.LBB5_4
# BB#5:
	movss	-124(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jb	.LBB5_7
# BB#6:
	movss	-124(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jae	.LBB5_8
.LBB5_7:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_8:
	movss	-124(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI5_3(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB5_11
# BB#9:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -88(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB5_17
.LBB5_11:
	movss	-124(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI5_0(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jb	.LBB5_13
# BB#12:
	movss	-124(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI5_7(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -124(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -88(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB5_17
.LBB5_13:
	movss	-124(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI5_4(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jb	.LBB5_15
# BB#14:
	movss	-124(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI5_6(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -124(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -88(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rax
	jmp	.LBB5_16
.LBB5_15:
	movss	-124(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI5_5(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -124(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -88(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rax
.LBB5_16:
	movl	(%rax), %eax
.LBB5_17:
	movl	%eax, -80(%rbp)
	movss	-124(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -128(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_18
# BB#19:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	48(%rax), %esi
	movl	56(%rax), %edx
	movss	-128(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	leaq	-72(%rbp), %rcx
	callq	SemiRotateConstraint
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movl	56(%rax), %esi
	movss	-124(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	leaq	-120(%rbp), %rbx
	leaq	-88(%rbp), %rcx
	jmp	.LBB5_20
.LBB5_18:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	52(%rax), %esi
	movl	60(%rax), %edx
	movss	-124(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	leaq	-72(%rbp), %rcx
	callq	SemiRotateConstraint
	movl	-80(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-24(%rbp), %rax
	movl	52(%rax), %edx
	movl	60(%rax), %esi
	movss	-128(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	leaq	-120(%rbp), %rbx
	leaq	-104(%rbp), %rcx
.LBB5_20:
	movq	%rbx, %rdi
	callq	SemiRotateConstraint
	movq	-16(%rbp), %rdi
	movq	%rbx, %rsi
	callq	MinConstraint
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	RotateConstraint, .Lfunc_end5-RotateConstraint
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_1:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_2:
	.long	1258291198              # float 8388607
	.text
	.align	16, 0x90
	.type	SemiRotateConstraint,@function
SemiRotateConstraint:                   # @SemiRotateConstraint
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	cos
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	sin
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	andpd	.LCPI6_0(%rip), %xmm0
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_2
# BB#1:
	movq	-8(%rbp), %rax
	movl	$8388607, (%rax)        # imm = 0x7FFFFF
	movq	-8(%rbp), %rax
	movl	$8388607, 4(%rax)       # imm = 0x7FFFFF
	movq	-8(%rbp), %rax
	movl	$8388607, 8(%rax)       # imm = 0x7FFFFF
	jmp	.LBB6_9
.LBB6_2:
	movq	-32(%rbp), %rax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	(%rax), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-12(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	subss	%xmm0, %xmm1
	divss	-36(%rbp), %xmm1
	movss	.LCPI6_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movaps	%xmm0, %xmm1
	ja	.LBB6_4
# BB#3:
	movq	-32(%rbp), %rax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	(%rax), %xmm1
	cvtsi2ssl	-12(%rbp), %xmm2
	mulss	-40(%rbp), %xmm2
	subss	%xmm2, %xmm1
	divss	-36(%rbp), %xmm1
.LBB6_4:
	cvttss2si	%xmm1, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	4(%rax), %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	-12(%rbp), %xmm2
	movss	-40(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	-16(%rbp), %xmm2
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	divss	-36(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	movaps	%xmm0, %xmm1
	ja	.LBB6_6
# BB#5:
	movq	-32(%rbp), %rax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	4(%rax), %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	-12(%rbp), %xmm2
	movss	-40(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	-16(%rbp), %xmm2
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	divss	-36(%rbp), %xmm1
.LBB6_6:
	cvttss2si	%xmm1, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-32(%rbp), %rax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	8(%rax), %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	-16(%rbp), %xmm2
	mulss	-40(%rbp), %xmm2
	subss	%xmm2, %xmm1
	divss	-36(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB6_8
# BB#7:
	movq	-32(%rbp), %rax
	cvtsi2ssl	8(%rax), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-16(%rbp), %xmm1
	mulss	-40(%rbp), %xmm1
	subss	%xmm1, %xmm0
	divss	-36(%rbp), %xmm0
.LBB6_8:
	cvttss2si	%xmm0, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB6_9:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	SemiRotateConstraint, .Lfunc_end6-SemiRotateConstraint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4627898977085921690     # double 25.600000000000001
	.text
	.globl	InsertScale
	.align	16, 0x90
	.type	InsertScale,@function
InsertScale:                            # @InsertScale
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rsi, %rax
	movq	%rdi, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movl	48(%rcx), %edi
	movl	56(%rcx), %esi
	movq	%rax, %rdx
	callq	ScaleToConstraint
	movl	%eax, -28(%rbp)
	cvtsi2sdl	%eax, %xmm0
	ucomisd	.LCPI7_0(%rip), %xmm0
	jb	.LBB7_26
# BB#1:
	movzbl	zz_lengths+34(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB7_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_6
.LBB7_26:
	movl	$0, -4(%rbp)
	jmp	.LBB7_27
.LBB7_3:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_4
# BB#5:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_6
.LBB7_4:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB7_6:
	movq	zz_hold(%rip), %rax
	movb	$34, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rcx
	movl	$1610612736, %edx       # imm = 0x60000000
	andl	40(%rcx), %edx
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	%edx, %ecx
	movl	%ecx, 40(%rax)
	movq	-16(%rbp), %rax
	movw	34(%rax), %ax
	movq	-40(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-16(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-16(%rbp), %rax
	andl	36(%rax), %esi
	movq	-40(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	imull	-28(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	addl	%eax, %ecx
	sarl	$7, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rdx
	subl	48(%rdx), %ecx
	cmpl	8(%rax), %ecx
	jge	.LBB7_8
# BB#7:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movq	-40(%rbp), %rcx
	subl	48(%rcx), %eax
	jmp	.LBB7_9
.LBB7_8:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
.LBB7_9:
	movq	-40(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-40(%rbp), %rax
	movl	$128, 72(%rax)
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB7_11
# BB#10:
	movq	zz_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_res(%rip), %rax
.LBB7_11:
	movq	%rax, xx_tmp(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_14
# BB#12:
	cmpq	$0, zz_res(%rip)
	je	.LBB7_14
# BB#13:
	movq	zz_hold(%rip), %rax
	movq	16(%rax), %rax
	movq	%rax, zz_tmp(%rip)
	movq	zz_res(%rip), %rax
	movq	16(%rax), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rax
	movq	zz_res(%rip), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	zz_tmp(%rip), %rax
	movq	zz_res(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_res(%rip), %rax
	movq	zz_tmp(%rip), %rcx
	movq	%rax, 24(%rcx)
.LBB7_14:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB7_16
# BB#15:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_19
.LBB7_16:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_17
# BB#18:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_19
.LBB7_17:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB7_19:
	movq	zz_hold(%rip), %rax
	movb	$0, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_22
# BB#20:
	cmpq	$0, zz_res(%rip)
	je	.LBB7_22
# BB#21:
	movq	zz_hold(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, zz_tmp(%rip)
	movq	zz_res(%rip), %rax
	movq	(%rax), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movq	zz_res(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_tmp(%rip), %rax
	movq	zz_res(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_res(%rip), %rax
	movq	zz_tmp(%rip), %rcx
	movq	%rax, 8(%rcx)
.LBB7_22:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_25
# BB#23:
	cmpq	$0, zz_res(%rip)
	je	.LBB7_25
# BB#24:
	movq	zz_hold(%rip), %rax
	movq	16(%rax), %rax
	movq	%rax, zz_tmp(%rip)
	movq	zz_res(%rip), %rax
	movq	16(%rax), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rax
	movq	zz_res(%rip), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	zz_tmp(%rip), %rax
	movq	zz_res(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_res(%rip), %rax
	movq	zz_tmp(%rip), %rcx
	movq	%rax, 24(%rcx)
.LBB7_25:
	movl	$1, -4(%rbp)
.LBB7_27:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	InsertScale, .Lfunc_end7-InsertScale
	.cfi_endproc

	.globl	Constrained
	.align	16, 0x90
	.type	Constrained,@function
Constrained:                            # @Constrained
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$192, %rsp
.Ltmp28:
	.cfi_offset %rbx, -32
.Ltmp29:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	-36(%rbp), %edi
	callq	SetLengthDim
	movq	-24(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB8_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_2:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB8_7
# BB#3:
	cmpl	$1, -36(%rbp)
	jne	.LBB8_5
# BB#4:
	movq	-24(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$4, %eax
	jb	.LBB8_6
.LBB8_5:
	movq	-24(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$3, %eax
	jb	.LBB8_6
.LBB8_7:
	cmpl	$0, -36(%rbp)
	je	.LBB8_8
# BB#9:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB8_10
.LBB8_8:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
.LBB8_10:
	movq	%rax, -64(%rbp)
	movl	$0, -156(%rbp)
	movq	-64(%rbp), %rax
	jmp	.LBB8_11
	.align	16, 0x90
.LBB8_18:                               #   in Loop: Header=BB8_11 Depth=1
	movq	-96(%rbp), %rax
.LBB8_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_13 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	jne	.LBB8_19
# BB#12:                                #   in Loop: Header=BB8_11 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB8_13
	.align	16, 0x90
.LBB8_14:                               #   in Loop: Header=BB8_13 Depth=2
	movq	-104(%rbp), %rax
.LBB8_13:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_14
# BB#15:                                #   in Loop: Header=BB8_11 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB8_18
# BB#16:                                #   in Loop: Header=BB8_11 Depth=1
	movq	-104(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB8_18
# BB#17:                                #   in Loop: Header=BB8_11 Depth=1
	movl	$1, -156(%rbp)
	jmp	.LBB8_18
.LBB8_19:
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movzbl	32(%rax), %eax
	addl	$-8, %eax
	cmpl	$91, %eax
	ja	.LBB8_134
# BB#20:
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_76:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	sete	%al
	cmpl	$1, -36(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB8_78
# BB#77:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-156(%rbp), %edx
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movq	-48(%rbp), %r9
	callq	CatConstrained
	jmp	.LBB8_135
.LBB8_134:
	movq	no_fpos(%rip), %rbx
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.6, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB8_135
.LBB8_51:
	movq	-56(%rbp), %rax
	movl	64(%rax), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-56(%rbp), %rax
	movl	72(%rax), %eax
	jmp	.LBB8_60
.LBB8_63:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	sete	%al
	cmpl	$0, -36(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB8_65
# BB#64:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_65:
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	leaq	-120(%rbp), %rsi
	callq	Constrained
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -116(%rbp)    # imm = 0x7FFFFF
	je	.LBB8_67
# BB#66:
	movl	-116(%rbp), %eax
	movslq	-36(%rbp), %rcx
	movq	-56(%rbp), %rdx
	subl	56(%rdx,%rcx,4), %eax
.LBB8_67:
	movl	%eax, -168(%rbp)
	cmpl	%eax, -120(%rbp)
	jge	.LBB8_69
# BB#68:
	movl	-120(%rbp), %eax
	jmp	.LBB8_70
.LBB8_32:
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	callq	Constrained
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$26, %eax
	sete	%al
	cmpl	$0, -36(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB8_135
# BB#33:
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	addq	$64, %rsi
	callq	MinConstraint
	jmp	.LBB8_34
.LBB8_52:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$28, %eax
	sete	%al
	cmpl	$0, -36(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB8_23
# BB#53:
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	leaq	-120(%rbp), %rsi
	callq	Constrained
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	FindShift
	movl	%eax, -172(%rbp)
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB8_55
# BB#54:
	movl	-120(%rbp), %eax
	jmp	.LBB8_56
.LBB8_21:
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-56(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$30, %ecx
	jmp	.LBB8_22
.LBB8_24:
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-56(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$32, %ecx
.LBB8_22:
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB8_6
	jmp	.LBB8_23
.LBB8_35:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$38, %eax
	sete	%al
	cmpl	$0, -36(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB8_23
# BB#36:
	movl	$1, -188(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movslq	-36(%rbp), %rcx
	movl	48(%rax,%rcx,4), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movslq	-36(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
	movslq	-36(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movabsq	$14224982114816, %rax   # imm = 0xCF003018200
	movl	$24576, %ecx            # imm = 0x6000
	jmp	.LBB8_37
.LBB8_23:
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	callq	Constrained
	jmp	.LBB8_135
.LBB8_50:                               #   in Loop: Header=BB8_37 Depth=1
	movl	$0, -188(%rbp)
.LBB8_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_44 Depth 2
	cmpl	$0, -188(%rbp)
	je	.LBB8_38
# BB#39:                                #   in Loop: Header=BB8_37 Depth=1
	movq	-88(%rbp), %rdx
	cmpq	%rdx, 24(%rdx)
	setne	%dl
	jmp	.LBB8_40
.LBB8_38:                               #   in Loop: Header=BB8_37 Depth=1
	xorl	%edx, %edx
.LBB8_40:                               #   in Loop: Header=BB8_37 Depth=1
	testb	%dl, %dl
	je	.LBB8_34
# BB#41:                                #   in Loop: Header=BB8_37 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB8_42
# BB#43:                                #   in Loop: Header=BB8_37 Depth=1
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	jmp	.LBB8_44
.LBB8_42:                               #   in Loop: Header=BB8_37 Depth=1
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	jmp	.LBB8_44
	.align	16, 0x90
.LBB8_45:                               #   in Loop: Header=BB8_44 Depth=2
	movq	-88(%rbp), %rdx
.LBB8_44:                               #   Parent Loop BB8_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx), %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rdx
	cmpb	$0, 32(%rdx)
	je	.LBB8_45
# BB#46:                                #   in Loop: Header=BB8_37 Depth=1
	movq	-88(%rbp), %rdx
	movzbl	32(%rdx), %edx
	cmpl	$43, %edx
	ja	.LBB8_50
# BB#47:                                #   in Loop: Header=BB8_37 Depth=1
	btq	%rdx, %rax
	jae	.LBB8_48
# BB#136:                               #   in Loop: Header=BB8_37 Depth=1
	movslq	-36(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movl	48(%rsi,%rdx,4), %edx
	movq	-32(%rbp), %rsi
	movl	%edx, (%rsi)
	movslq	-36(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movl	48(%rsi,%rdx,4), %edi
	addl	56(%rsi,%rdx,4), %edi
	movq	-32(%rbp), %rdx
	movl	%edi, 4(%rdx)
	movslq	-36(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movl	56(%rsi,%rdx,4), %edx
	movq	-32(%rbp), %rsi
	movl	%edx, 8(%rsi)
	jmp	.LBB8_37
.LBB8_48:                               #   in Loop: Header=BB8_37 Depth=1
	btq	%rdx, %rcx
	jae	.LBB8_50
# BB#49:                                #   in Loop: Header=BB8_37 Depth=1
	movq	-88(%rbp), %rdx
	movl	64(%rdx), %edx
	movq	-32(%rbp), %rsi
	movl	%edx, (%rsi)
	movq	-88(%rbp), %rdx
	movl	68(%rdx), %edx
	movq	-32(%rbp), %rsi
	movl	%edx, 4(%rsi)
	movq	-88(%rbp), %rdx
	movl	72(%rdx), %edx
	movq	-32(%rbp), %rsi
	movl	%edx, 8(%rsi)
	jmp	.LBB8_50
.LBB8_34:
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB8_135
.LBB8_78:
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	leaq	-120(%rbp), %rsi
	callq	Constrained
	cmpl	$8388607, -120(%rbp)    # imm = 0x7FFFFF
	jne	.LBB8_81
# BB#79:
	cmpl	$8388607, -116(%rbp)    # imm = 0x7FFFFF
	jne	.LBB8_81
# BB#80:
	cmpl	$8388607, -112(%rbp)    # imm = 0x7FFFFF
	je	.LBB8_6
	jmp	.LBB8_81
.LBB8_61:
	cmpl	$1, -36(%rbp)
	je	.LBB8_6
# BB#62:
	movq	-56(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -112(%rbp)
.LBB8_81:
	movq	-64(%rbp), %rax
	jmp	.LBB8_82
	.align	16, 0x90
.LBB8_88:                               #   in Loop: Header=BB8_82 Depth=1
	movq	-72(%rbp), %rax
.LBB8_82:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_84 Depth 2
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB8_89
# BB#83:                                #   in Loop: Header=BB8_82 Depth=1
	movq	-72(%rbp), %rax
	jmp	.LBB8_84
	.align	16, 0x90
.LBB8_85:                               #   in Loop: Header=BB8_84 Depth=2
	movq	-88(%rbp), %rax
.LBB8_84:                               #   Parent Loop BB8_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_85
# BB#86:                                #   in Loop: Header=BB8_82 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB8_88
# BB#87:                                #   in Loop: Header=BB8_82 Depth=1
	movq	-88(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB8_88
.LBB8_89:
	movq	-64(%rbp), %rax
	jmp	.LBB8_90
	.align	16, 0x90
.LBB8_96:                               #   in Loop: Header=BB8_90 Depth=1
	movq	-80(%rbp), %rax
.LBB8_90:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_92 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB8_97
# BB#91:                                #   in Loop: Header=BB8_90 Depth=1
	movq	-80(%rbp), %rax
	jmp	.LBB8_92
	.align	16, 0x90
.LBB8_93:                               #   in Loop: Header=BB8_92 Depth=2
	movq	-88(%rbp), %rax
.LBB8_92:                               #   Parent Loop BB8_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_93
# BB#94:                                #   in Loop: Header=BB8_90 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB8_96
# BB#95:                                #   in Loop: Header=BB8_90 Depth=1
	movq	-88(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB8_96
.LBB8_97:
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_110
# BB#98:
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_110
# BB#99:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_101
# BB#100:
	movq	-56(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$5, %eax
	jae	.LBB8_101
.LBB8_110:
	movl	$0, -164(%rbp)
	movl	$0, -160(%rbp)
	movq	-72(%rbp), %rax
	jmp	.LBB8_111
	.align	16, 0x90
.LBB8_125:                              #   in Loop: Header=BB8_111 Depth=1
	movq	-64(%rbp), %rax
.LBB8_111:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_113 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB8_126
# BB#112:                               #   in Loop: Header=BB8_111 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB8_113
	.align	16, 0x90
.LBB8_114:                              #   in Loop: Header=BB8_113 Depth=2
	movq	-88(%rbp), %rax
.LBB8_113:                              #   Parent Loop BB8_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_114
# BB#115:                               #   in Loop: Header=BB8_111 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB8_125
# BB#116:                               #   in Loop: Header=BB8_111 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB8_118
# BB#117:                               #   in Loop: Header=BB8_111 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	jl	.LBB8_125
.LBB8_118:                              #   in Loop: Header=BB8_111 Depth=1
	movl	-160(%rbp), %eax
	movslq	-36(%rbp), %rcx
	movq	-88(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB8_120
# BB#119:                               #   in Loop: Header=BB8_111 Depth=1
	movslq	-36(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB8_121
.LBB8_120:                              #   in Loop: Header=BB8_111 Depth=1
	movl	-160(%rbp), %eax
.LBB8_121:                              #   in Loop: Header=BB8_111 Depth=1
	movl	%eax, -160(%rbp)
	movl	-164(%rbp), %eax
	movslq	-36(%rbp), %rcx
	movq	-88(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB8_123
# BB#122:                               #   in Loop: Header=BB8_111 Depth=1
	movslq	-36(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB8_124
.LBB8_123:                              #   in Loop: Header=BB8_111 Depth=1
	movl	-164(%rbp), %eax
.LBB8_124:                              #   in Loop: Header=BB8_111 Depth=1
	movl	%eax, -164(%rbp)
	jmp	.LBB8_125
.LBB8_126:
	movl	-116(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB8_128
# BB#127:
	movl	-116(%rbp), %ecx
	jmp	.LBB8_129
.LBB8_25:
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	leaq	-120(%rbp), %rsi
	callq	Constrained
	cmpl	$0, -36(%rbp)
	jne	.LBB8_27
# BB#26:
	movq	-56(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB8_6
.LBB8_27:
	movq	-32(%rbp), %rdi
	cmpl	$0, -36(%rbp)
	je	.LBB8_28
# BB#29:
	movq	-56(%rbp), %rax
	movl	72(%rax), %esi
	jmp	.LBB8_30
.LBB8_6:
	movq	-32(%rbp), %rax
	movl	$8388607, (%rax)        # imm = 0x7FFFFF
	movq	-32(%rbp), %rax
	movl	$8388607, 4(%rax)       # imm = 0x7FFFFF
	movq	-32(%rbp), %rax
	movl	$8388607, 8(%rax)       # imm = 0x7FFFFF
.LBB8_135:
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB8_31:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	leaq	-136(%rbp), %r14
	xorl	%edx, %edx
	movq	%r14, %rsi
	callq	Constrained
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	leaq	-152(%rbp), %rbx
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	Constrained
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	76(%rax), %edx
	movl	-36(%rbp), %r9d
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	RotateConstraint
	jmp	.LBB8_135
.LBB8_69:
	movl	-168(%rbp), %eax
.LBB8_70:
	movl	%eax, -168(%rbp)
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -116(%rbp)    # imm = 0x7FFFFF
	je	.LBB8_72
# BB#71:
	movl	-116(%rbp), %eax
	movslq	-36(%rbp), %rcx
	movq	-56(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
.LBB8_72:
	movl	%eax, -172(%rbp)
	cmpl	%eax, -112(%rbp)
	jge	.LBB8_74
# BB#73:
	movl	-112(%rbp), %eax
	jmp	.LBB8_75
.LBB8_128:
	movl	-112(%rbp), %ecx
.LBB8_129:
	movl	%ecx, -176(%rbp)
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	je	.LBB8_131
# BB#130:
	movl	-176(%rbp), %ecx
	subl	-164(%rbp), %ecx
.LBB8_131:
	movl	%ecx, -180(%rbp)
	cmpl	$8388607, -176(%rbp)    # imm = 0x7FFFFF
	je	.LBB8_133
# BB#132:
	movl	-176(%rbp), %eax
	subl	-160(%rbp), %eax
.LBB8_133:
	movl	%eax, -184(%rbp)
	movl	-180(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-176(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-184(%rbp), %eax
	jmp	.LBB8_60
.LBB8_55:
	movl	-116(%rbp), %eax
.LBB8_56:
	subl	-172(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-116(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB8_58
# BB#57:
	movl	-112(%rbp), %eax
	jmp	.LBB8_59
.LBB8_58:
	movl	-116(%rbp), %eax
.LBB8_59:
	addl	-172(%rbp), %eax
	jmp	.LBB8_60
.LBB8_28:
	movq	-56(%rbp), %rax
	movl	64(%rax), %esi
.LBB8_30:
	leaq	-120(%rbp), %rdx
	callq	InvScaleConstraint
	jmp	.LBB8_135
.LBB8_101:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -116(%rbp)    # imm = 0x7FFFFF
	je	.LBB8_103
# BB#102:
	movl	-116(%rbp), %eax
	movslq	-36(%rbp), %rcx
	movq	-56(%rbp), %rdx
	subl	56(%rdx,%rcx,4), %eax
.LBB8_103:
	movl	%eax, -168(%rbp)
	cmpl	%eax, -120(%rbp)
	jge	.LBB8_105
# BB#104:
	movl	-120(%rbp), %eax
	jmp	.LBB8_106
.LBB8_105:
	movl	-168(%rbp), %eax
.LBB8_106:
	movl	%eax, -168(%rbp)
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -116(%rbp)    # imm = 0x7FFFFF
	je	.LBB8_108
# BB#107:
	movl	-116(%rbp), %eax
	movslq	-36(%rbp), %rcx
	movq	-56(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
.LBB8_108:
	movl	%eax, -172(%rbp)
	cmpl	%eax, -112(%rbp)
	jge	.LBB8_74
# BB#109:
	movl	-112(%rbp), %eax
	jmp	.LBB8_75
.LBB8_74:
	movl	-172(%rbp), %eax
.LBB8_75:
	movl	%eax, -172(%rbp)
	movl	-168(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-116(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-172(%rbp), %eax
.LBB8_60:
	movq	-32(%rbp), %rcx
	movl	%eax, 8(%rcx)
	jmp	.LBB8_135
.Lfunc_end8:
	.size	Constrained, .Lfunc_end8-Constrained
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_61
	.quad	.LBB8_23
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_51
	.quad	.LBB8_51
	.quad	.LBB8_63
	.quad	.LBB8_63
	.quad	.LBB8_76
	.quad	.LBB8_76
	.quad	.LBB8_76
	.quad	.LBB8_23
	.quad	.LBB8_134
	.quad	.LBB8_23
	.quad	.LBB8_134
	.quad	.LBB8_23
	.quad	.LBB8_23
	.quad	.LBB8_32
	.quad	.LBB8_32
	.quad	.LBB8_52
	.quad	.LBB8_52
	.quad	.LBB8_21
	.quad	.LBB8_21
	.quad	.LBB8_24
	.quad	.LBB8_24
	.quad	.LBB8_25
	.quad	.LBB8_23
	.quad	.LBB8_23
	.quad	.LBB8_23
	.quad	.LBB8_35
	.quad	.LBB8_35
	.quad	.LBB8_23
	.quad	.LBB8_23
	.quad	.LBB8_23
	.quad	.LBB8_23
	.quad	.LBB8_23
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_31
	.quad	.LBB8_23
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_134
	.quad	.LBB8_23
	.quad	.LBB8_23
	.quad	.LBB8_23
	.quad	.LBB8_23

	.text
	.align	16, 0x90
	.type	CatConstrained,@function
CatConstrained:                         # @CatConstrained
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp33:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %edx
	leaq	-80(%rbp), %rsi
	movq	%r9, %rcx
	callq	Constrained
	cmpl	$8388607, -80(%rbp)     # imm = 0x7FFFFF
	jne	.LBB9_3
# BB#1:
	cmpl	$8388607, -76(%rbp)     # imm = 0x7FFFFF
	jne	.LBB9_3
# BB#2:
	cmpl	$8388607, -72(%rbp)     # imm = 0x7FFFFF
	je	.LBB9_88
.LBB9_3:
	cmpl	$0, -44(%rbp)
	je	.LBB9_4
# BB#5:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	jmp	.LBB9_6
.LBB9_4:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
.LBB9_6:
	movq	%rdi, -120(%rbp)
	movl	-28(%rbp), %esi
	leaq	-60(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-136(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-128(%rbp), %r8
	leaq	-152(%rbp), %r9
	callq	SetNeighbours
	xorl	%ebx, %ebx
	cmpq	$0, -136(%rbp)
	movl	$0, %eax
	je	.LBB9_8
# BB#7:
	movslq	-44(%rbp), %rax
	movq	-144(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-136(%rbp), %rdx
	addq	$44, %rdx
	xorl	%esi, %esi
	movl	$151, %ecx
	callq	ExtraGap
.LBB9_8:
	movl	%eax, -92(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB9_10
# BB#9:
	movslq	-44(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movq	-128(%rbp), %rdx
	addq	$44, %rdx
	xorl	%edi, %edi
	movl	$153, %ecx
	callq	ExtraGap
	movl	%eax, %ebx
.LBB9_10:
	movl	%ebx, -96(%rbp)
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB9_28
# BB#11:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jg	.LBB9_28
# BB#12:
	xorl	%ebx, %ebx
	cmpq	$0, -136(%rbp)
	movl	$0, %eax
	je	.LBB9_14
# BB#13:
	movslq	-44(%rbp), %rax
	movq	-144(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-136(%rbp), %rcx
	addq	$44, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	MinGap
.LBB9_14:
	movl	%eax, -100(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB9_16
# BB#15:
	movslq	-44(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-128(%rbp), %rcx
	addq	$44, %rcx
	xorl	%edi, %edi
	callq	MinGap
	movl	%eax, %ebx
.LBB9_16:
	movl	%ebx, -104(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB9_17
# BB#19:
	cmpq	$0, -128(%rbp)
	je	.LBB9_20
# BB#21:
	movslq	-44(%rbp), %rax
	movq	-144(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-152(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-128(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	jmp	.LBB9_22
.LBB9_28:
	cmpq	$0, -136(%rbp)
	je	.LBB9_29
# BB#30:
	movslq	-44(%rbp), %rax
	movq	-144(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-16(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, %ebx
	movslq	-44(%rbp), %rax
	movq	-144(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-136(%rbp), %rcx
	addq	$44, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	MinGap
	subl	%eax, %ebx
	jmp	.LBB9_31
.LBB9_29:
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ebx
.LBB9_31:
	movl	%ebx, -100(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB9_32
# BB#33:
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-152(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-128(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, %ebx
	movslq	-44(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-128(%rbp), %rcx
	addq	$44, %rcx
	xorl	%edi, %edi
	callq	MinGap
	subl	%eax, %ebx
	jmp	.LBB9_34
.LBB9_32:
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ebx
.LBB9_34:
	movl	%ebx, -104(%rbp)
	movl	-60(%rbp), %eax
	cmpl	$153, %eax
	je	.LBB9_40
# BB#35:
	cmpl	$152, %eax
	jne	.LBB9_36
# BB#39:
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -84(%rbp)
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB9_41
.LBB9_40:
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -84(%rbp)
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	subl	-100(%rbp), %eax
.LBB9_41:
	subl	-104(%rbp), %eax
	jmp	.LBB9_42
.LBB9_36:
	cmpl	$151, %eax
	jne	.LBB9_43
# BB#37:
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	subl	-100(%rbp), %eax
	subl	-104(%rbp), %eax
	jmp	.LBB9_38
.LBB9_88:
	movq	-24(%rbp), %rax
	movl	$8388607, (%rax)        # imm = 0x7FFFFF
	movq	-24(%rbp), %rax
	movl	$8388607, 4(%rax)       # imm = 0x7FFFFF
	movq	-24(%rbp), %rax
	movl	$8388607, 8(%rax)       # imm = 0x7FFFFF
	jmp	.LBB9_89
.LBB9_17:
	xorl	%eax, %eax
	cmpq	$0, -128(%rbp)
	je	.LBB9_22
# BB#18:
	movslq	-44(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB9_22
.LBB9_20:
	movslq	-44(%rbp), %rax
	movq	-144(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
.LBB9_22:
	movl	%eax, -108(%rbp)
	movl	-60(%rbp), %eax
	cmpl	$153, %eax
	je	.LBB9_27
# BB#23:
	cmpl	$152, %eax
	jne	.LBB9_24
# BB#26:
	movl	$0, -84(%rbp)
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	addl	-104(%rbp), %eax
	jmp	.LBB9_42
.LBB9_27:
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -84(%rbp)
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	addl	-100(%rbp), %eax
	addl	-104(%rbp), %eax
	subl	-108(%rbp), %eax
	jmp	.LBB9_42
.LBB9_24:
	cmpl	$151, %eax
	jne	.LBB9_43
# BB#25:
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	addl	-100(%rbp), %eax
	addl	-104(%rbp), %eax
	subl	-108(%rbp), %eax
.LBB9_38:
	movl	%eax, -84(%rbp)
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
.LBB9_42:
	movl	%eax, -88(%rbp)
.LBB9_43:
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jg	.LBB9_46
# BB#44:
	movl	-84(%rbp), %eax
	addl	-88(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	.LBB9_46
# BB#45:
	movl	-88(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jg	.LBB9_46
# BB#47:
	movl	-60(%rbp), %eax
	cmpl	$153, %eax
	je	.LBB9_82
# BB#48:
	cmpl	$152, %eax
	jne	.LBB9_49
# BB#64:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -80(%rbp)     # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	je	.LBB9_66
# BB#65:
	movl	-80(%rbp), %ecx
	subl	-84(%rbp), %ecx
.LBB9_66:
	movl	%ecx, -168(%rbp)
	cmpl	$8388607, -76(%rbp)     # imm = 0x7FFFFF
	je	.LBB9_68
# BB#67:
	movl	-76(%rbp), %eax
	subl	-84(%rbp), %eax
	subl	-88(%rbp), %eax
.LBB9_68:
	movl	%eax, -172(%rbp)
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -72(%rbp)     # imm = 0x7FFFFF
	je	.LBB9_70
# BB#69:
	movl	-72(%rbp), %eax
	subl	-88(%rbp), %eax
.LBB9_70:
	movl	%eax, -176(%rbp)
	movl	-168(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB9_72
# BB#71:
	movl	-168(%rbp), %eax
	jmp	.LBB9_73
.LBB9_46:
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 4(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 8(%rax)
.LBB9_89:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB9_82:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -72(%rbp)     # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	je	.LBB9_84
# BB#83:
	movl	-72(%rbp), %ecx
	subl	-88(%rbp), %ecx
.LBB9_84:
	movl	%ecx, -176(%rbp)
	cmpl	$8388607, -76(%rbp)     # imm = 0x7FFFFF
	je	.LBB9_86
# BB#85:
	movl	-76(%rbp), %eax
	subl	-84(%rbp), %eax
	subl	-88(%rbp), %eax
.LBB9_86:
	movl	%eax, -172(%rbp)
	cmpl	%eax, -176(%rbp)
	jge	.LBB9_56
# BB#87:
	movl	-176(%rbp), %ecx
	jmp	.LBB9_57
.LBB9_49:
	cmpl	$151, %eax
	jne	.LBB9_89
# BB#50:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -80(%rbp)     # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	je	.LBB9_52
# BB#51:
	movl	-80(%rbp), %ecx
	subl	-84(%rbp), %ecx
.LBB9_52:
	movl	%ecx, -168(%rbp)
	cmpl	$8388607, -76(%rbp)     # imm = 0x7FFFFF
	je	.LBB9_54
# BB#53:
	movl	-76(%rbp), %eax
	subl	-84(%rbp), %eax
	subl	-88(%rbp), %eax
.LBB9_54:
	movl	%eax, -172(%rbp)
	cmpl	%eax, -168(%rbp)
	jge	.LBB9_56
# BB#55:
	movl	-168(%rbp), %ecx
	jmp	.LBB9_57
.LBB9_56:
	movl	-172(%rbp), %ecx
.LBB9_57:
	movl	%ecx, -180(%rbp)
	addl	-92(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB9_59
# BB#58:
	movl	-92(%rbp), %ecx
	addl	-180(%rbp), %ecx
.LBB9_59:
	movl	%ecx, -156(%rbp)
	movl	-92(%rbp), %ecx
	addl	-96(%rbp), %ecx
	addl	-180(%rbp), %ecx
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB9_61
# BB#60:
	movl	-92(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	-180(%rbp), %eax
.LBB9_61:
	movl	%eax, -160(%rbp)
	movl	-96(%rbp), %ecx
	addl	-180(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB9_63
# BB#62:
	movl	-96(%rbp), %eax
	addl	-180(%rbp), %eax
	jmp	.LBB9_63
.LBB9_72:
	movl	-172(%rbp), %eax
.LBB9_73:
	movl	%eax, -180(%rbp)
	movl	-176(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB9_75
# BB#74:
	movl	-176(%rbp), %eax
	jmp	.LBB9_76
.LBB9_75:
	movl	-172(%rbp), %eax
.LBB9_76:
	movl	%eax, -184(%rbp)
	movl	-92(%rbp), %ecx
	addl	-180(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB9_78
# BB#77:
	movl	-92(%rbp), %ecx
	addl	-180(%rbp), %ecx
.LBB9_78:
	movl	%ecx, -156(%rbp)
	movl	-92(%rbp), %ecx
	addl	-96(%rbp), %ecx
	addl	-172(%rbp), %ecx
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB9_80
# BB#79:
	movl	-92(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	-172(%rbp), %eax
.LBB9_80:
	movl	%eax, -160(%rbp)
	movl	-96(%rbp), %ecx
	addl	-184(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB9_63
# BB#81:
	movl	-96(%rbp), %eax
	addl	-184(%rbp), %eax
.LBB9_63:
	movl	%eax, -164(%rbp)
	movl	-156(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-160(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-164(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 8(%rcx)
	jmp	.LBB9_89
.Lfunc_end9:
	.size	CatConstrained, .Lfunc_end9-CatConstrained
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"InvScaleConstraint: sf <= 0!"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"RotateConstraint: theta!"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"word is too long"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Constrained: x has no parent!"
	.size	.L.str.4, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Constrained: COL_THR!"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"assert failed in %s %s"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Constrained:"
	.size	.L.str.7, 13


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
