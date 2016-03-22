	.text
	.file	"z17.dce"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4640537203540230144     # double 180
.LCPI0_2:
	.quad	-4582834833314545664    # double -180
.LCPI0_4:
	.quad	4645040803167600640     # double 360
.LCPI0_5:
	.quad	-4578331233687175168    # double -360
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_3:
	.long	1124073472              # float 128
.LCPI0_6:
	.long	1166016512              # float 4096
.LCPI0_7:
	.long	1123024896              # float 120
.LCPI0_8:
	.long	1101004800              # float 20
.LCPI0_9:
	.long	1152647168              # float 1440
.LCPI0_10:
	.long	1141751808              # float 567
	.text
	.globl	GetGap
	.align	16, 0x90
	.type	GetGap,@function
GetGap:                                 # @GetGap
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	andw	$-129, (%rax)
	movq	-24(%rbp), %rax
	movw	$0, 2(%rax)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, (%rax)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, (%rax)
	movq	-32(%rbp), %rax
	movl	$158, (%rax)
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_3
# BB#1:
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_2
.LBB0_3:
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -48(%rbp)
	cmpb	$0, 64(%rax)
	je	.LBB0_72
# BB#4:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$43, %eax
	jne	.LBB0_6
# BB#5:
	movq	-32(%rbp), %rax
	movl	$159, (%rax)
	jmp	.LBB0_8
.LBB0_2:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$17, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_72
.LBB0_6:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB0_9
# BB#7:
	movq	-32(%rbp), %rax
	movl	$160, (%rax)
.LBB0_8:
	incq	-48(%rbp)
.LBB0_9:
	movq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rdx
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB0_11
# BB#10:
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$17, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.6, 8(%rsp)
	movq	$.L.str.5, (%rsp)
	movl	$17, %edi
	movl	$3, %esi
	movl	$.L.str.3, %edx
	movl	$2, %ecx
	movl	$.L.str.4, %r9d
	jmp	.LBB0_71
	.align	16, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=1
	incq	-48(%rbp)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$48, %eax
	jl	.LBB0_13
# BB#12:                                #   in Loop: Header=BB0_11 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movb	$1, %al
	cmpl	$58, %ecx
	jl	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$46, %eax
	sete	%al
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=1
	testb	%al, %al
	jne	.LBB0_15
# BB#16:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %eax
	addl	$-98, %eax
	cmpl	$24, %eax
	ja	.LBB0_42
# BB#17:
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_29:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_6(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$2048, %ecx             # imm = 0x800
	jmp	.LBB0_44
.LBB0_42:
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$17, %edi
	movl	$4, %esi
	movl	$.L.str.9, %edx
	jmp	.LBB0_70
.LBB0_18:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_10(%rip), %xmm0
	jmp	.LBB0_25
.LBB0_31:
	movq	-32(%rbp), %rax
	cmpl	$160, (%rax)
	jne	.LBB0_33
# BB#32:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI0_0(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
.LBB0_33:
	movq	-32(%rbp), %rax
	movl	$158, (%rax)
	movsd	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_34
	.align	16, 0x90
.LBB0_73:                               #   in Loop: Header=BB0_34 Depth=1
	movss	-40(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -40(%rbp)
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	movss	-40(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	ucomisd	.LCPI0_1(%rip), %xmm1
	ja	.LBB0_73
# BB#35:
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB0_36
	.align	16, 0x90
.LBB0_37:                               #   in Loop: Header=BB0_36 Depth=1
	movss	-40(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -40(%rbp)
.LBB0_36:                               # =>This Inner Loop Header: Depth=1
	movss	-40(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm0
	ja	.LBB0_37
# BB#38:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	.LCPI0_2(%rip), %xmm0
	jb	.LBB0_40
# BB#39:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB0_41
.LBB0_40:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_41:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_3(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$4096, %ecx             # imm = 0x1000
	jmp	.LBB0_44
.LBB0_22:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)        # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	$4095, %edi             # imm = 0xFFF
	andl	12(%rax), %edi
	movq	-8(%rbp), %rsi
	callq	FontSize
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-52(%rbp), %xmm0        # 4-byte Folded Reload
	jmp	.LBB0_25
.LBB0_19:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_9(%rip), %xmm0
	jmp	.LBB0_25
.LBB0_21:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_7(%rip), %xmm0
	jmp	.LBB0_25
.LBB0_20:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_8(%rip), %xmm0
	jmp	.LBB0_25
.LBB0_30:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_6(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$3072, %ecx             # imm = 0xC00
	jmp	.LBB0_44
.LBB0_23:
	movq	-16(%rbp), %rax
	movswl	6(%rax), %eax
	jmp	.LBB0_24
.LBB0_26:
	movq	-16(%rbp), %rax
	movswl	2(%rax), %eax
	jmp	.LBB0_24
.LBB0_43:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_6(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$5120, %ecx             # imm = 0x1400
	jmp	.LBB0_44
.LBB0_27:
	movq	-16(%rbp), %rax
	movswl	8(%rax), %eax
	jmp	.LBB0_24
.LBB0_28:
	movq	-16(%rbp), %rax
	movswl	10(%rax), %eax
.LBB0_24:
	cvtsi2ssl	%eax, %xmm0
	mulss	-40(%rbp), %xmm0
.LBB0_25:
	cvttss2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
.LBB0_44:
	movw	%cx, (%rax)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	jne	.LBB0_47
# BB#45:
	cmpl	$4097, -36(%rbp)        # imm = 0x1001
	jl	.LBB0_47
# BB#46:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$17, %edi
	movl	$5, %esi
	movl	$.L.str.10, %edx
	movl	$2, %ecx
	movb	$1, %al
	callq	Error
	movl	$4096, -36(%rbp)        # imm = 0x1000
.LBB0_47:
	movw	-36(%rbp), %ax
	movq	-24(%rbp), %rcx
	movw	%ax, 2(%rcx)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$106, %eax
	jg	.LBB0_52
# BB#48:
	testl	%eax, %eax
	je	.LBB0_62
# BB#49:
	cmpl	$101, %eax
	jne	.LBB0_50
# BB#56:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	jmp	.LBB0_57
.LBB0_52:
	leal	-111(%rax), %ecx
	cmpl	$9, %ecx
	jbe	.LBB0_55
# BB#53:
	cmpl	$107, %eax
	jne	.LBB0_61
# BB#54:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$40960, %ecx            # imm = 0xA000
	jmp	.LBB0_57
.LBB0_55:
	jmpq	*.LJTI0_1(,%rcx,8)
.LBB0_59:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$32768, %ecx            # imm = 0x8000
	jmp	.LBB0_57
.LBB0_62:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, (%rax)
	jmp	.LBB0_63
.LBB0_50:
	cmpl	$104, %eax
	jne	.LBB0_61
# BB#51:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$16384, %ecx            # imm = 0x4000
	jmp	.LBB0_57
.LBB0_61:
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$17, %edi
	movl	$7, %esi
	movl	$.L.str.11, %edx
	jmp	.LBB0_70
.LBB0_60:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$49152, %ecx            # imm = 0xC000
	jmp	.LBB0_57
.LBB0_58:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$24576, %ecx            # imm = 0x6000
.LBB0_57:
	movw	%cx, (%rax)
	incq	-48(%rbp)
.LBB0_63:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$117, %eax
	jne	.LBB0_68
# BB#64:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	shrl	$13, %eax
	cmpl	$2, %eax
	jne	.LBB0_66
# BB#65:
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$17, %edi
	movl	$9, %esi
	movl	$.L.str.12, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_67
.LBB0_66:
	movq	-24(%rbp), %rax
	orw	$128, (%rax)
.LBB0_67:
	incq	-48(%rbp)
.LBB0_68:
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_72
# BB#69:
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$17, %edi
	movl	$8, %esi
	movl	$.L.str.13, %edx
.LBB0_70:
	movl	$2, %ecx
.LBB0_71:
	xorl	%eax, %eax
	callq	Error
.LBB0_72:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	GetGap, .Lfunc_end0-GetGap
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_29
	.quad	.LBB0_18
	.quad	.LBB0_31
	.quad	.LBB0_42
	.quad	.LBB0_22
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_19
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_21
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_20
	.quad	.LBB0_42
	.quad	.LBB0_30
	.quad	.LBB0_23
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_26
	.quad	.LBB0_43
	.quad	.LBB0_42
	.quad	.LBB0_27
	.quad	.LBB0_28
.LJTI0_1:
	.quad	.LBB0_59
	.quad	.LBB0_61
	.quad	.LBB0_61
	.quad	.LBB0_61
	.quad	.LBB0_61
	.quad	.LBB0_60
	.quad	.LBB0_62
	.quad	.LBB0_61
	.quad	.LBB0_61
	.quad	.LBB0_58

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	MinGap
	.align	16, 0x90
	.type	MinGap,@function
MinGap:                                 # @MinGap
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movzwl	(%rcx), %eax
	shrl	$10, %eax
	andl	$7, %eax
	decl	%eax
	cmpl	$4, %eax
	ja	.LBB1_5
# BB#1:
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_3:
	movl	$0, -32(%rbp)
	jmp	.LBB1_6
.LBB1_5:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_6:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	shrl	$13, %eax
	cmpl	$7, %eax
	jbe	.LBB1_7
# BB#25:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.16, %r9d
.LBB1_26:
	xorl	%eax, %eax
	callq	Error
	movl	$0, -28(%rbp)
	jmp	.LBB1_27
.LBB1_7:
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_9:
	movl	-4(%rbp), %ecx
	addl	-32(%rbp), %ecx
	addl	-8(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_11
# BB#10:
	movl	-4(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	-8(%rbp), %eax
.LBB1_11:
	movl	%eax, -28(%rbp)
	jmp	.LBB1_27
.LBB1_2:
	movq	-24(%rbp), %rax
	movswl	2(%rax), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB1_6
.LBB1_4:
	movq	-24(%rbp), %rax
	movswl	2(%rax), %eax
	movl	-8(%rbp), %ecx
	addl	-12(%rbp), %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$20, %eax
	addl	%ecx, %eax
	sarl	$12, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB1_6
.LBB1_8:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	jmp	.LBB1_26
.LBB1_12:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 36(%rax)
	je	.LBB1_15
# BB#13:
	movl	-32(%rbp), %eax
	movl	-4(%rbp), %ecx
	addl	-8(%rbp), %ecx
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI1_0(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jge	.LBB1_21
# BB#14:
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-32(%rbp), %xmm0
	mulsd	.LCPI1_0(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB1_27
.LBB1_17:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB1_19
# BB#18:
	movl	-8(%rbp), %eax
	jmp	.LBB1_20
.LBB1_19:
	movl	-4(%rbp), %eax
.LBB1_20:
	cmpl	-32(%rbp), %eax
	jl	.LBB1_21
# BB#22:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB1_24
# BB#23:
	movl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_27
.LBB1_15:
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jge	.LBB1_21
.LBB1_16:
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_27
.LBB1_21:
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB1_27:
	movl	-28(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB1_24:
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_27
.Lfunc_end1:
	.size	MinGap, .Lfunc_end1-MinGap
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_3
	.quad	.LBB1_5
	.quad	.LBB1_4
.LJTI1_1:
	.quad	.LBB1_8
	.quad	.LBB1_9
	.quad	.LBB1_9
	.quad	.LBB1_12
	.quad	.LBB1_21
	.quad	.LBB1_17
	.quad	.LBB1_16
	.quad	.LBB1_9

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4606281698874543309     # double 0.90000000000000002
	.text
	.globl	ExtraGap
	.align	16, 0x90
	.type	ExtraGap,@function
ExtraGap:                               # @ExtraGap
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	$10, %ecx
	andl	$7, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB2_2
# BB#1:
	movq	-16(%rbp), %rax
	movswl	2(%rax), %eax
.LBB2_2:
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	shrl	$13, %eax
	cmpl	$7, %eax
	jbe	.LBB2_3
# BB#24:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
.LBB2_25:
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_26
.LBB2_3:
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_26:
	movl	$0, -28(%rbp)
.LBB2_27:
	movl	-28(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB2_4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.17, %r9d
	jmp	.LBB2_25
.LBB2_5:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 36(%rax)
	je	.LBB2_9
# BB#6:
	cvtsi2sdl	-32(%rbp), %xmm0
	mulsd	.LCPI2_0(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	subl	-4(%rbp), %ecx
	xorl	%eax, %eax
	cmpl	-8(%rbp), %ecx
	jle	.LBB2_8
# BB#7:
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-32(%rbp), %xmm0
	mulsd	.LCPI2_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	subl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
.LBB2_8:
	movl	%eax, -28(%rbp)
	jmp	.LBB2_27
.LBB2_12:
	movl	$8388607, -28(%rbp)     # imm = 0x7FFFFF
	jmp	.LBB2_27
.LBB2_13:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	cmpl	-32(%rbp), %ecx
	jge	.LBB2_15
# BB#14:
	movl	-32(%rbp), %ecx
	jmp	.LBB2_16
.LBB2_15:
	movl	-8(%rbp), %ecx
.LBB2_16:
	cmpl	%ecx, %eax
	jge	.LBB2_20
# BB#17:
	movl	-8(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB2_19
# BB#18:
	movl	-32(%rbp), %eax
	jmp	.LBB2_21
.LBB2_20:
	movl	-4(%rbp), %eax
	jmp	.LBB2_21
.LBB2_9:
	movl	-32(%rbp), %ecx
	subl	-4(%rbp), %ecx
	xorl	%eax, %eax
	cmpl	-8(%rbp), %ecx
	jle	.LBB2_11
# BB#10:
	movl	-32(%rbp), %eax
	subl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
.LBB2_11:
	movl	%eax, -28(%rbp)
	jmp	.LBB2_27
.LBB2_19:
	movl	-8(%rbp), %eax
.LBB2_21:
	movl	%eax, -24(%rbp)
	cmpl	$151, -20(%rbp)
	jne	.LBB2_23
# BB#22:
	movl	-24(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_27
.LBB2_23:
	movl	-24(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_27
.Lfunc_end2:
	.size	ExtraGap, .Lfunc_end2-ExtraGap
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_4
	.quad	.LBB2_26
	.quad	.LBB2_26
	.quad	.LBB2_5
	.quad	.LBB2_12
	.quad	.LBB2_13
	.quad	.LBB2_26
	.quad	.LBB2_26

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	ActualGap
	.align	16, 0x90
	.type	ActualGap,@function
ActualGap:                              # @ActualGap
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	decl	%eax
	cmpl	$4, %eax
	ja	.LBB3_10
# BB#1:
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_2:
	movq	-24(%rbp), %rax
	movswl	2(%rax), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB3_11
.LBB3_10:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_11:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	shrl	$13, %eax
	cmpl	$7, %eax
	jbe	.LBB3_12
# BB#31:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
.LBB3_32:
	xorl	%eax, %eax
	callq	Error
	movl	$0, -44(%rbp)
	jmp	.LBB3_33
.LBB3_12:
	jmpq	*.LJTI3_1(,%rax,8)
.LBB3_14:
	movl	-4(%rbp), %eax
	addl	-40(%rbp), %eax
	jmp	.LBB3_20
.LBB3_3:
	movq	-24(%rbp), %rax
	movswl	2(%rax), %eax
	cmpl	$4097, %eax             # imm = 0x1001
	jl	.LBB3_5
# BB#4:
	movl	$8388607, -40(%rbp)     # imm = 0x7FFFFF
	jmp	.LBB3_11
.LBB3_6:
	movq	-24(%rbp), %rax
	movswl	2(%rax), %eax
	movl	-28(%rbp), %ecx
	subl	-8(%rbp), %ecx
	subl	-12(%rbp), %ecx
	imull	%eax, %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$20, %edx
	addl	%ecx, %edx
	xorl	%eax, %eax
	sarl	$12, %edx
	movl	%edx, -40(%rbp)
	js	.LBB3_8
# BB#7:
	movl	-40(%rbp), %eax
.LBB3_8:
	movl	%eax, -40(%rbp)
	jmp	.LBB3_11
.LBB3_9:
	movq	-24(%rbp), %rax
	movswl	2(%rax), %eax
	movl	-8(%rbp), %ecx
	addl	-12(%rbp), %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$20, %eax
	addl	%ecx, %eax
	sarl	$12, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB3_11
.LBB3_13:
	movq	no_fpos(%rip), %r8
	movl	$17, %edi
	movl	$10, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	jmp	.LBB3_32
.LBB3_15:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 36(%rax)
	je	.LBB3_18
# BB#16:
	movl	-40(%rbp), %eax
	movl	-4(%rbp), %ecx
	addl	-8(%rbp), %ecx
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI3_0(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jge	.LBB3_25
# BB#17:
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-40(%rbp), %xmm0
	mulsd	.LCPI3_0(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB3_33
.LBB3_21:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB3_23
# BB#22:
	movl	-8(%rbp), %eax
	jmp	.LBB3_24
.LBB3_29:
	movl	-40(%rbp), %eax
	addl	-8(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-4(%rbp), %ecx
	addl	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB3_19
# BB#30:
	movl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB3_33
.LBB3_5:
	movq	-24(%rbp), %rax
	movswl	2(%rax), %eax
	imull	-28(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$20, %ecx
	addl	%eax, %ecx
	sarl	$12, %ecx
	movl	%ecx, -40(%rbp)
	jmp	.LBB3_11
.LBB3_23:
	movl	-4(%rbp), %eax
.LBB3_24:
	cmpl	-40(%rbp), %eax
	jl	.LBB3_25
# BB#26:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB3_28
# BB#27:
	movl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB3_33
.LBB3_18:
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	cmpl	%eax, -40(%rbp)
	jge	.LBB3_25
.LBB3_19:
	movl	-4(%rbp), %eax
.LBB3_20:
	addl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB3_33
.LBB3_25:
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB3_33:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -44(%rbp)     # imm = 0x7FFFFF
	jg	.LBB3_35
# BB#34:
	movl	-44(%rbp), %eax
.LBB3_35:
	movl	%eax, -36(%rbp)
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB3_28:
	movl	-4(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB3_33
.Lfunc_end3:
	.size	ActualGap, .Lfunc_end3-ActualGap
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_2
	.quad	.LBB3_3
	.quad	.LBB3_6
	.quad	.LBB3_10
	.quad	.LBB3_9
.LJTI3_1:
	.quad	.LBB3_13
	.quad	.LBB3_14
	.quad	.LBB3_14
	.quad	.LBB3_15
	.quad	.LBB3_25
	.quad	.LBB3_21
	.quad	.LBB3_29
	.quad	.LBB3_14

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gap is not a simple word"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%f"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"width missing from %s"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s, %s and %s must be enclosed in double quotes"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"/"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"|"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"&"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"assert failed in %s"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GetGap: dg!"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"units letter missing from %s"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%.1fr too large (1.0r substituted)"
	.size	.L.str.10, 35

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"unknown gap mode in %s"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"replacing self-contradictory gap %s by breakable version"
	.size	.L.str.12, 57

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"invalid width or gap %s"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"MinGap: units"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"MinGap: NO_MODE"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"MinGap: mode"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ExtraGap: NO_MODE"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"ExtraGap: mode"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"ActualGap: units"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"cannot continue after previous error(s)"
	.size	.L.str.20, 40

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"ActualGap: NO_MODE"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"ActualGap: mode"
	.size	.L.str.22, 16


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
