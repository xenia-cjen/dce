	.text
	.file	"z13.dce"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1124073472              # float 128
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4607632778762754458     # double 1.1000000000000001
	.text
	.globl	BreakObject
	.align	16, 0x90
	.type	BreakObject,@function
BreakObject:                            # @BreakObject
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	cmpl	$0, (%rsi)
	js	.LBB0_3
# BB#1:
	movq	-240(%rbp), %rax
	cmpl	$0, 4(%rax)
	js	.LBB0_3
# BB#2:
	movq	-240(%rbp), %rax
	cmpl	$0, 8(%rax)
	js	.LBB0_3
# BB#9:
	movq	-232(%rbp), %rax
	movl	48(%rax), %eax
	movq	-240(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB0_12
# BB#10:
	movq	-232(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movq	-240(%rbp), %rax
	cmpl	4(%rax), %ecx
	jg	.LBB0_12
# BB#11:
	movq	-232(%rbp), %rax
	movl	56(%rax), %eax
	movq	-240(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB0_351
.LBB0_12:
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-9, %eax
	cmpl	$90, %eax
	ja	.LBB0_346
# BB#13:
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_78:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	je	.LBB0_80
# BB#79:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_80:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_81
.LBB0_3:
	movq	-232(%rbp), %rbx
	addq	$32, %rbx
	movq	-240(%rbp), %rax
	movl	(%rax), %edi
	callq	EchoLength
	movq	%rax, %r14
	movq	-240(%rbp), %rax
	movl	4(%rax), %edi
	callq	EchoLength
	movq	%rax, %r15
	movq	-240(%rbp), %rax
	movl	8(%rax), %edi
	callq	EchoLength
	movq	%rax, 8(%rsp)
	movq	%r15, (%rsp)
	xorl	%r15d, %r15d
	movl	$13, %edi
	movl	$11, %esi
	movl	$.L.str, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	Error
	movq	-232(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.1, %esi
	callq	MakeWord
	movq	%rax, -256(%rbp)
	movl	$0, 56(%rax)
	movq	-256(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-232(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_5
# BB#4:
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
	movq	zz_res(%rip), %r15
.LBB0_5:
	movq	%r15, xx_tmp(%rip)
	movq	-256(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_8
# BB#6:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_8
# BB#7:
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
.LBB0_8:
	movq	-232(%rbp), %rdi
	callq	DisposeObject
	movq	-256(%rbp), %rax
	movq	%rax, -232(%rbp)
.LBB0_352:
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.align	16, 0x90
.LBB0_82:                               #   in Loop: Header=BB0_81 Depth=1
	movq	-256(%rbp), %rax
.LBB0_81:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_82
	jmp	.LBB0_125
.LBB0_346:
	movq	no_fpos(%rip), %rbx
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.16, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB0_347
.LBB0_89:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_90
	.align	16, 0x90
.LBB0_91:                               #   in Loop: Header=BB0_90 Depth=1
	movq	-256(%rbp), %rax
.LBB0_90:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_91
# BB#92:
	movq	-256(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	jne	.LBB0_125
# BB#93:
	movq	-232(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-240(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	8(%rax), %ecx
	jge	.LBB0_95
# BB#94:
	movq	-240(%rbp), %rax
	movl	4(%rax), %eax
	jmp	.LBB0_96
.LBB0_119:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_120
.LBB0_121:                              #   in Loop: Header=BB0_120 Depth=1
	movq	-256(%rbp), %rax
.LBB0_120:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_121
	jmp	.LBB0_125
.LBB0_34:
	movq	-232(%rbp), %rax
	testl	$-2147483648, 40(%rax)  # imm = 0xFFFFFFFF80000000
	je	.LBB0_57
# BB#35:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_37
# BB#36:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_40
.LBB0_116:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_117
.LBB0_118:                              #   in Loop: Header=BB0_117 Depth=1
	movq	-256(%rbp), %rax
.LBB0_117:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_118
	jmp	.LBB0_125
.LBB0_71:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_77
# BB#72:
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	InsertScale
	testl	%eax, %eax
	je	.LBB0_77
# BB#73:
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_74
.LBB0_75:                               #   in Loop: Header=BB0_74 Depth=1
	movq	-232(%rbp), %rax
.LBB0_74:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_75
# BB#76:
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %ecx
	cmpl	$94, %ecx
	movl	$.L.str.9, %ecx
	movl	$.L.str.10, %r9d
	cmoveq	%rcx, %r9
	cvtsi2ssl	64(%rax), %xmm0
	leaq	32(%rax), %r8
	divss	.LCPI0_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$13, %edi
	movl	$7, %esi
	movl	$.L.str.8, %edx
	jmp	.LBB0_63
.LBB0_95:
	movq	-240(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB0_96
.LBB0_77:
	movq	-232(%rbp), %r8
	movzbl	32(%r8), %eax
	addq	$32, %r8
	cmpl	$94, %eax
	movl	$.L.str.9, %eax
	movl	$.L.str.10, %r9d
	cmoveq	%rax, %r9
	xorl	%ebx, %ebx
	movl	$13, %edi
	movl	$8, %esi
	movl	$.L.str.11, %edx
	movl	$2, %ecx
	jmp	.LBB0_21
.LBB0_122:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_123
.LBB0_124:                              #   in Loop: Header=BB0_123 Depth=1
	movq	-256(%rbp), %rax
.LBB0_123:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_124
	jmp	.LBB0_125
.LBB0_296:
	movq	-232(%rbp), %r9
	movq	(%r9), %rsi
	movq	8(%r9), %rdi
	movq	-240(%rbp), %rcx
	leaq	48(%r9), %r8
	addq	$56, %r9
	xorl	%edx, %edx
	callq	BreakJoinedGroup
	jmp	.LBB0_347
.LBB0_126:
	movq	-232(%rbp), %rax
	cmpl	$0, 48(%rax)
	jle	.LBB0_143
# BB#127:
	movq	-232(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movl	%ecx, -292(%rbp)
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_129
# BB#128:
	movl	-292(%rbp), %eax
.LBB0_129:
	movq	-232(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-232(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-232(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-232(%rbp), %rax
	jmp	.LBB0_130
.LBB0_137:                              #   in Loop: Header=BB0_130 Depth=1
	movq	-248(%rbp), %rax
.LBB0_130:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_132 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpq	-232(%rbp), %rax
	je	.LBB0_138
# BB#131:                               #   in Loop: Header=BB0_130 Depth=1
	movq	-248(%rbp), %rax
	jmp	.LBB0_132
	.align	16, 0x90
.LBB0_133:                              #   in Loop: Header=BB0_132 Depth=2
	movq	-256(%rbp), %rax
.LBB0_132:                              #   Parent Loop BB0_130 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_133
# BB#134:                               #   in Loop: Header=BB0_130 Depth=1
	movq	-256(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_137
# BB#135:                               #   in Loop: Header=BB0_130 Depth=1
	movq	-256(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB0_137
# BB#136:                               #   in Loop: Header=BB0_130 Depth=1
	movq	-256(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-256(%rbp), %rax
	movq	%rax, -304(%rbp)
	jmp	.LBB0_137
.LBB0_144:
	movq	-232(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	movq	$0, -200(%rbp)
	movl	$0, -164(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_145
.LBB0_146:                              #   in Loop: Header=BB0_145 Depth=1
	movq	-192(%rbp), %rax
.LBB0_145:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_146
# BB#147:
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_149
# BB#148:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_149:
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB0_152
# BB#150:
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$138, %eax
	jg	.LBB0_152
# BB#151:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_152:
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB0_153
# BB#154:
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	setl	%al
	jmp	.LBB0_155
.LBB0_297:
	movq	-232(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB0_299
# BB#298:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_299:
	movl	$8388607, -88(%rbp)     # imm = 0x7FFFFF
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	8(%rax), %ecx
	jge	.LBB0_301
# BB#300:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	jmp	.LBB0_302
.LBB0_67:
	movq	-232(%rbp), %rdi
	addq	$64, %rdi
	movq	-240(%rbp), %rsi
	callq	MinConstraint
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_68
.LBB0_69:                               #   in Loop: Header=BB0_68 Depth=1
	movq	-256(%rbp), %rax
.LBB0_68:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_69
# BB#70:
	movq	-256(%rbp), %rdi
	movq	-232(%rbp), %rsi
	addq	$64, %rsi
	callq	BreakObject
	movq	%rax, -256(%rbp)
	movl	48(%rax), %eax
	movq	-232(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-256(%rbp), %rax
	movl	56(%rax), %eax
	movq	-232(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-232(%rbp), %rax
	leaq	48(%rax), %rdi
	leaq	56(%rax), %rsi
	leaq	64(%rax), %rdx
	callq	EnlargeToConstraint
	jmp	.LBB0_347
.LBB0_97:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_98
.LBB0_99:                               #   in Loop: Header=BB0_98 Depth=1
	movq	-256(%rbp), %rax
.LBB0_98:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_99
# BB#100:
	movq	-232(%rbp), %rdi
	movq	-256(%rbp), %rsi
	xorl	%edx, %edx
	callq	FindShift
	movl	%eax, -276(%rbp)
	movq	-240(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	4(%rax), %ecx
	jge	.LBB0_102
# BB#101:
	movq	-240(%rbp), %rax
	movl	(%rax), %eax
	jmp	.LBB0_103
.LBB0_27:
	movq	-232(%rbp), %rax
	movl	64(%rax), %esi
	movq	-240(%rbp), %rdx
	leaq	-272(%rbp), %rdi
	callq	InvScaleConstraint
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_28
.LBB0_29:                               #   in Loop: Header=BB0_28 Depth=1
	movq	-256(%rbp), %rax
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_29
# BB#30:
	movq	-256(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -256(%rbp)
	movl	48(%rax), %eax
	movq	-232(%rbp), %rcx
	imull	64(%rcx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$25, %edx
	addl	%eax, %edx
	sarl	$7, %edx
	movl	%edx, 48(%rcx)
	movq	-256(%rbp), %rax
	movl	56(%rax), %eax
	movq	-232(%rbp), %rcx
	imull	64(%rcx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$25, %edx
	addl	%eax, %edx
	sarl	$7, %edx
	movl	%edx, 56(%rcx)
	jmp	.LBB0_347
.LBB0_31:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_32
.LBB0_33:                               #   in Loop: Header=BB0_32 Depth=1
	movq	-256(%rbp), %rax
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_33
	jmp	.LBB0_125
.LBB0_14:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_20
# BB#15:
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	InsertScale
	testl	%eax, %eax
	je	.LBB0_20
# BB#16:
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_17
.LBB0_18:                               #   in Loop: Header=BB0_17 Depth=1
	movq	-232(%rbp), %rax
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_18
# BB#19:
	movq	-232(%rbp), %r8
	cvtsi2ssl	64(%r8), %xmm0
	addq	$32, %r8
	divss	.LCPI0_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$13, %edi
	movl	$3, %esi
	movl	$.L.str.2, %edx
	movl	$2, %ecx
	movl	$.L.str.3, %r9d
	jmp	.LBB0_64
.LBB0_83:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_84
.LBB0_85:                               #   in Loop: Header=BB0_84 Depth=1
	movq	-256(%rbp), %rax
.LBB0_84:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_85
# BB#86:
	movq	-256(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -256(%rbp)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_87
.LBB0_88:                               #   in Loop: Header=BB0_87 Depth=1
	movq	-256(%rbp), %rax
.LBB0_87:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_88
.LBB0_125:
	movq	-256(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -256(%rbp)
	movl	48(%rax), %eax
	movq	-232(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-256(%rbp), %rax
	movl	56(%rax), %eax
.LBB0_96:
	movq	-232(%rbp), %rcx
	movl	%eax, 56(%rcx)
.LBB0_347:
	movq	-232(%rbp), %rax
	cmpl	$0, 48(%rax)
	jns	.LBB0_349
# BB#348:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_349:
	movq	-232(%rbp), %rax
	cmpl	$0, 56(%rax)
	jns	.LBB0_351
# BB#350:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_351:
	movq	-232(%rbp), %rax
	jmp	.LBB0_352
.LBB0_57:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_65
# BB#58:
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	InsertScale
	testl	%eax, %eax
	je	.LBB0_65
# BB#59:
	movq	-232(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_60
.LBB0_61:                               #   in Loop: Header=BB0_60 Depth=1
	movq	-232(%rbp), %rax
.LBB0_60:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_61
# BB#62:
	movq	-232(%rbp), %r8
	movq	-288(%rbp), %r9
	addq	$64, %r9
	cvtsi2ssl	64(%r8), %xmm0
	addq	$32, %r8
	divss	.LCPI0_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$13, %edi
	movl	$5, %esi
	movl	$.L.str.6, %edx
.LBB0_63:
	movl	$2, %ecx
.LBB0_64:
	movb	$1, %al
	callq	Error
	jmp	.LBB0_347
.LBB0_37:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_38
# BB#39:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_40
.LBB0_138:
	movq	-232(%rbp), %rax
	movl	48(%rax), %eax
	movq	-240(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB0_142
# BB#139:
	movq	-232(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movq	-240(%rbp), %rax
	cmpl	4(%rax), %ecx
	jg	.LBB0_142
# BB#140:
	movq	-232(%rbp), %rax
	movl	56(%rax), %eax
	movq	-240(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jg	.LBB0_142
# BB#141:
	movq	-304(%rbp), %r8
	addq	$32, %r8
	movl	$13, %edi
	movl	$9, %esi
	movl	$.L.str.14, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_347
.LBB0_20:
	movq	-232(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.3, (%rsp)
	xorl	%ebx, %ebx
	movl	$13, %edi
	movl	$4, %esi
	movl	$.L.str.4, %edx
	movl	$2, %ecx
	movl	$.L.str.3, %r9d
	jmp	.LBB0_21
.LBB0_142:
	movq	-304(%rbp), %r8
	addq	$32, %r8
	movl	$13, %edi
	movl	$10, %esi
	movl	$.L.str.15, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_143:
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	leaq	-280(%rbp), %rax
	movq	%rax, (%rsp)
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	FillObject
	movq	%rax, -232(%rbp)
	jmp	.LBB0_347
.LBB0_153:
	xorl	%eax, %eax
.LBB0_155:
	movzbl	%al, %eax
	movq	-192(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-192(%rbp), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB0_157
# BB#156:
	movq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$1, -104(%rbp)
.LBB0_157:
	movq	-32(%rbp), %rax
	jmp	.LBB0_158
.LBB0_184:                              #   in Loop: Header=BB0_158 Depth=1
	movq	-184(%rbp), %rax
.LBB0_158:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_160 Depth 2
                                        #     Child Loop BB0_167 Depth 2
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_185
# BB#159:                               #   in Loop: Header=BB0_158 Depth=1
	movq	-184(%rbp), %rax
	jmp	.LBB0_160
	.align	16, 0x90
.LBB0_161:                              #   in Loop: Header=BB0_160 Depth=2
	movq	-208(%rbp), %rax
.LBB0_160:                              #   Parent Loop BB0_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_161
# BB#162:                               #   in Loop: Header=BB0_158 Depth=1
	movq	-208(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_164
# BB#163:                               #   in Loop: Header=BB0_158 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_164:                              #   in Loop: Header=BB0_158 Depth=1
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_166
# BB#165:                               #   in Loop: Header=BB0_158 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_166:                              #   in Loop: Header=BB0_158 Depth=1
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_167
	.align	16, 0x90
.LBB0_168:                              #   in Loop: Header=BB0_167 Depth=2
	movq	-192(%rbp), %rax
.LBB0_167:                              #   Parent Loop BB0_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_168
# BB#169:                               #   in Loop: Header=BB0_158 Depth=1
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_171
# BB#170:                               #   in Loop: Header=BB0_158 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_171:                              #   in Loop: Header=BB0_158 Depth=1
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB0_174
# BB#172:                               #   in Loop: Header=BB0_158 Depth=1
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$138, %eax
	jg	.LBB0_174
# BB#173:                               #   in Loop: Header=BB0_158 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_174:                              #   in Loop: Header=BB0_158 Depth=1
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB0_175
# BB#176:                               #   in Loop: Header=BB0_158 Depth=1
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	setl	%al
	jmp	.LBB0_177
.LBB0_175:                              #   in Loop: Header=BB0_158 Depth=1
	xorl	%eax, %eax
.LBB0_177:                              #   in Loop: Header=BB0_158 Depth=1
	movzbl	%al, %eax
	movq	-192(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-192(%rbp), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB0_184
# BB#178:                               #   in Loop: Header=BB0_158 Depth=1
	cmpq	$0, -200(%rbp)
	je	.LBB0_179
# BB#180:                               #   in Loop: Header=BB0_158 Depth=1
	movq	-208(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB0_182
# BB#181:                               #   in Loop: Header=BB0_158 Depth=1
	movl	-104(%rbp), %eax
	addl	%eax, -100(%rbp)
	movl	-96(%rbp), %ebx
	movq	-208(%rbp), %rcx
	addq	$44, %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	MinGap
	addl	%ebx, %eax
	addl	%eax, -92(%rbp)
	movl	$1, -104(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LBB0_183
.LBB0_179:                              #   in Loop: Header=BB0_158 Depth=1
	movl	$1, -104(%rbp)
	jmp	.LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_158 Depth=1
	movq	-208(%rbp), %rcx
	addq	$44, %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	MinGap
	addl	%eax, -96(%rbp)
	incl	-104(%rbp)
.LBB0_183:                              #   in Loop: Header=BB0_158 Depth=1
	movq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB0_184
.LBB0_185:
	movl	-92(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB0_188
# BB#186:
	movl	-92(%rbp), %eax
	addl	-96(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jg	.LBB0_188
# BB#187:
	movl	-96(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB0_197
.LBB0_188:
	movq	-32(%rbp), %r8
	addq	$32, %r8
	movl	$13, %edi
	movl	$2, %esi
	movl	$.L.str.23, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-32(%rbp), %rax
	jmp	.LBB0_189
.LBB0_195:                              #   in Loop: Header=BB0_189 Depth=1
	movq	-184(%rbp), %rax
.LBB0_189:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_191 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_196
# BB#190:                               #   in Loop: Header=BB0_189 Depth=1
	movq	-184(%rbp), %rax
	jmp	.LBB0_191
	.align	16, 0x90
.LBB0_192:                              #   in Loop: Header=BB0_191 Depth=2
	movq	-208(%rbp), %rax
.LBB0_191:                              #   Parent Loop BB0_189 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_192
# BB#193:                               #   in Loop: Header=BB0_189 Depth=1
	movq	-208(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_195
# BB#194:                               #   in Loop: Header=BB0_189 Depth=1
	movq	-208(%rbp), %rax
	movzwl	44(%rax), %ecx
	movw	%cx, 44(%rax)
	movq	-208(%rbp), %rax
	movzwl	44(%rax), %ecx
	movw	%cx, 44(%rax)
	movq	-208(%rbp), %rax
	movzwl	44(%rax), %ecx
	movw	%cx, 44(%rax)
	movq	-208(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-208(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 44(%rax)
	movq	-208(%rbp), %rax
	movw	$0, 46(%rax)
	jmp	.LBB0_195
.LBB0_196:
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	jmp	.LBB0_197
.LBB0_293:                              #   in Loop: Header=BB0_197 Depth=1
	addl	%eax, -96(%rbp)
	decl	-104(%rbp)
.LBB0_197:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_206 Depth 2
                                        #       Child Loop BB0_207 Depth 3
                                        #       Child Loop BB0_230 Depth 3
	movl	-100(%rbp), %eax
	addl	-104(%rbp), %eax
	jle	.LBB0_198
# BB#199:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-92(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB0_200
# BB#201:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-92(%rbp), %eax
	addl	-96(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jg	.LBB0_202
# BB#203:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-96(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	8(%rcx), %eax
	setle	%al
	jmp	.LBB0_204
.LBB0_198:                              #   in Loop: Header=BB0_197 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_204
.LBB0_200:                              #   in Loop: Header=BB0_197 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_204
.LBB0_202:                              #   in Loop: Header=BB0_197 Depth=1
	xorl	%eax, %eax
.LBB0_204:                              #   in Loop: Header=BB0_197 Depth=1
	testb	%al, %al
	je	.LBB0_295
# BB#205:                               #   in Loop: Header=BB0_197 Depth=1
	movq	$0, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movl	%ecx, -116(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB0_206
	.align	16, 0x90
.LBB0_236:                              #   in Loop: Header=BB0_206 Depth=2
	movq	-184(%rbp), %rax
.LBB0_206:                              #   Parent Loop BB0_197 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_207 Depth 3
                                        #       Child Loop BB0_230 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	jmp	.LBB0_207
	.align	16, 0x90
.LBB0_208:                              #   in Loop: Header=BB0_207 Depth=3
	movq	-192(%rbp), %rax
.LBB0_207:                              #   Parent Loop BB0_197 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_208
# BB#209:                               #   in Loop: Header=BB0_206 Depth=2
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_211
# BB#210:                               #   in Loop: Header=BB0_206 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_211:                              #   in Loop: Header=BB0_206 Depth=2
	movq	-192(%rbp), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB0_215
# BB#212:                               #   in Loop: Header=BB0_206 Depth=2
	movq	-192(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	cmpl	-116(%rbp), %ecx
	jl	.LBB0_214
# BB#213:                               #   in Loop: Header=BB0_206 Depth=2
	cmpq	$0, -56(%rbp)
	jne	.LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_206 Depth=2
	movq	-192(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movl	%ecx, -116(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -108(%rbp)
.LBB0_215:                              #   in Loop: Header=BB0_206 Depth=2
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	cmpq	-32(%rbp), %rax
	je	.LBB0_216
# BB#229:                               #   in Loop: Header=BB0_206 Depth=2
	movq	-184(%rbp), %rax
	jmp	.LBB0_230
	.align	16, 0x90
.LBB0_231:                              #   in Loop: Header=BB0_230 Depth=3
	movq	-208(%rbp), %rax
.LBB0_230:                              #   Parent Loop BB0_197 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_231
# BB#232:                               #   in Loop: Header=BB0_206 Depth=2
	movq	-208(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_234
# BB#233:                               #   in Loop: Header=BB0_206 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_234:                              #   in Loop: Header=BB0_206 Depth=2
	movq	-208(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB0_236
# BB#235:                               #   in Loop: Header=BB0_206 Depth=2
	movl	$1, -108(%rbp)
	jmp	.LBB0_236
.LBB0_216:                              #   in Loop: Header=BB0_197 Depth=1
	movq	-48(%rbp), %rdi
	movl	-108(%rbp), %esi
	leaq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-128(%rbp), %r8
	leaq	-136(%rbp), %r9
	callq	SetNeighbours
	xorl	%ebx, %ebx
	cmpq	$0, -64(%rbp)
	movl	$0, %eax
	je	.LBB0_220
# BB#217:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-72(%rbp), %rax
	xorl	%edi, %edi
	cmpl	$0, 52(%rax)
	je	.LBB0_219
# BB#218:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-72(%rbp), %rax
	movl	56(%rax), %edi
.LBB0_219:                              #   in Loop: Header=BB0_197 Depth=1
	movq	-64(%rbp), %rdx
	addq	$44, %rdx
	xorl	%esi, %esi
	movl	$151, %ecx
	callq	ExtraGap
.LBB0_220:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%eax, -140(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB0_224
# BB#221:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-136(%rbp), %rax
	xorl	%esi, %esi
	cmpl	$0, 52(%rax)
	je	.LBB0_223
# BB#222:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-136(%rbp), %rax
	movl	48(%rax), %esi
.LBB0_223:                              #   in Loop: Header=BB0_197 Depth=1
	movq	-128(%rbp), %rdx
	addq	$44, %rdx
	xorl	%edi, %edi
	movl	$153, %ecx
	callq	ExtraGap
	movl	%eax, %ebx
.LBB0_224:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%ebx, -144(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	subl	-92(%rbp), %eax
	subl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	addl	-104(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -148(%rbp)
	movl	-112(%rbp), %eax
	cmpl	$153, %eax
	je	.LBB0_261
# BB#225:                               #   in Loop: Header=BB0_197 Depth=1
	cmpl	$152, %eax
	jne	.LBB0_226
# BB#248:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-40(%rbp), %rax
	movl	-148(%rbp), %ecx
	imull	-104(%rbp), %ecx
	addl	-96(%rbp), %ecx
	cmpl	%ecx, 8(%rax)
	jge	.LBB0_250
# BB#249:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB0_251
.LBB0_261:                              #   in Loop: Header=BB0_197 Depth=1
	movq	-40(%rbp), %rax
	movl	-148(%rbp), %ecx
	imull	-104(%rbp), %ecx
	addl	-96(%rbp), %ecx
	cmpl	%ecx, 8(%rax)
	jge	.LBB0_263
# BB#262:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB0_264
.LBB0_226:                              #   in Loop: Header=BB0_197 Depth=1
	cmpl	$151, %eax
	jne	.LBB0_274
# BB#227:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-40(%rbp), %rax
	movl	-148(%rbp), %ecx
	imull	-100(%rbp), %ecx
	addl	-92(%rbp), %ecx
	cmpl	%ecx, (%rax)
	jge	.LBB0_237
# BB#228:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	jmp	.LBB0_238
.LBB0_250:                              #   in Loop: Header=BB0_197 Depth=1
	movl	-148(%rbp), %eax
	imull	-104(%rbp), %eax
	addl	-96(%rbp), %eax
.LBB0_251:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%eax, -152(%rbp)
	subl	-96(%rbp), %eax
	cltd
	idivl	-104(%rbp)
	movl	%eax, -160(%rbp)
	cmpl	-164(%rbp), %eax
	jle	.LBB0_254
# BB#252:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %eax
	subl	-164(%rbp), %eax
	cmpl	$19, %eax
	jg	.LBB0_254
# BB#253:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-164(%rbp), %eax
	movl	%eax, -160(%rbp)
.LBB0_254:                              #   in Loop: Header=BB0_197 Depth=1
	movl	-140(%rbp), %ecx
	movq	-56(%rbp), %rax
	addl	48(%rax), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_256
# BB#255:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-140(%rbp), %ecx
	movq	-56(%rbp), %rdx
	addl	48(%rdx), %ecx
.LBB0_256:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%ecx, -88(%rbp)
	movl	-140(%rbp), %ecx
	movq	-56(%rbp), %rdx
	addl	48(%rdx), %ecx
	addl	-160(%rbp), %ecx
	addl	-144(%rbp), %ecx
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_258
# BB#257:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-140(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	48(%rcx), %eax
	addl	-160(%rbp), %eax
	addl	-144(%rbp), %eax
.LBB0_258:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%eax, -84(%rbp)
	movl	-160(%rbp), %ecx
	addl	-144(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_260
# BB#259:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %eax
	addl	-144(%rbp), %eax
.LBB0_260:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%eax, -80(%rbp)
	jmp	.LBB0_275
.LBB0_263:                              #   in Loop: Header=BB0_197 Depth=1
	movl	-148(%rbp), %eax
	imull	-104(%rbp), %eax
	addl	-96(%rbp), %eax
.LBB0_264:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%eax, -152(%rbp)
	subl	-96(%rbp), %eax
	cltd
	idivl	-104(%rbp)
	movl	%eax, -160(%rbp)
	cmpl	-164(%rbp), %eax
	jle	.LBB0_267
# BB#265:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %eax
	subl	-164(%rbp), %eax
	cmpl	$19, %eax
	jg	.LBB0_267
# BB#266:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-164(%rbp), %eax
	movl	%eax, -160(%rbp)
.LBB0_267:                              #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %ecx
	addl	-140(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_269
# BB#268:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %ecx
	addl	-140(%rbp), %ecx
.LBB0_269:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%ecx, -88(%rbp)
	movl	-160(%rbp), %ecx
	addl	-140(%rbp), %ecx
	addl	-144(%rbp), %ecx
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_271
# BB#270:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %eax
	addl	-140(%rbp), %eax
	addl	-144(%rbp), %eax
.LBB0_271:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%eax, -84(%rbp)
	movl	-160(%rbp), %ecx
	addl	-144(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_273
# BB#272:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %eax
	addl	-144(%rbp), %eax
.LBB0_273:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%eax, -80(%rbp)
	jmp	.LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_197 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_275
.LBB0_237:                              #   in Loop: Header=BB0_197 Depth=1
	movl	-148(%rbp), %eax
	imull	-100(%rbp), %eax
	addl	-92(%rbp), %eax
.LBB0_238:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%eax, -156(%rbp)
	subl	-92(%rbp), %eax
	cltd
	idivl	-100(%rbp)
	movl	%eax, -160(%rbp)
	cmpl	-164(%rbp), %eax
	jle	.LBB0_241
# BB#239:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %eax
	subl	-164(%rbp), %eax
	cmpl	$19, %eax
	jg	.LBB0_241
# BB#240:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-164(%rbp), %eax
	movl	%eax, -160(%rbp)
.LBB0_241:                              #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %ecx
	addl	-140(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_243
# BB#242:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %ecx
	addl	-140(%rbp), %ecx
.LBB0_243:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%ecx, -88(%rbp)
	movl	-160(%rbp), %ecx
	addl	-140(%rbp), %ecx
	addl	-144(%rbp), %ecx
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_245
# BB#244:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %eax
	addl	-140(%rbp), %eax
	addl	-144(%rbp), %eax
.LBB0_245:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%eax, -84(%rbp)
	movl	-160(%rbp), %ecx
	addl	-144(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_247
# BB#246:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %eax
	addl	-144(%rbp), %eax
.LBB0_247:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%eax, -80(%rbp)
.LBB0_275:                              #   in Loop: Header=BB0_197 Depth=1
	movl	-160(%rbp), %eax
	movl	%eax, -164(%rbp)
	movq	-56(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -56(%rbp)
	movl	$1, 52(%rax)
	cmpq	$0, -64(%rbp)
	je	.LBB0_279
# BB#276:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-72(%rbp), %rax
	xorl	%edi, %edi
	cmpl	$0, 52(%rax)
	je	.LBB0_278
# BB#277:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-72(%rbp), %rax
	movl	56(%rax), %edi
.LBB0_278:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%edi, -212(%rbp)
	movq	-56(%rbp), %rax
	movl	48(%rax), %esi
	movl	56(%rax), %edx
	movq	-64(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, %ebx
	movl	-212(%rbp), %edi
	movq	-64(%rbp), %rcx
	addq	$44, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	MinGap
	subl	%eax, %ebx
	movl	%ebx, -168(%rbp)
	jmp	.LBB0_280
.LBB0_279:                              #   in Loop: Header=BB0_197 Depth=1
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -168(%rbp)
.LBB0_280:                              #   in Loop: Header=BB0_197 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_286
# BB#281:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-136(%rbp), %rax
	xorl	%edx, %edx
	cmpl	$0, 52(%rax)
	movl	$0, %eax
	je	.LBB0_283
# BB#282:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-136(%rbp), %rax
	movl	48(%rax), %eax
.LBB0_283:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%eax, -212(%rbp)
	movq	-136(%rbp), %rax
	cmpl	$0, 52(%rax)
	je	.LBB0_285
# BB#284:                               #   in Loop: Header=BB0_197 Depth=1
	movq	-136(%rbp), %rax
	movl	56(%rax), %edx
.LBB0_285:                              #   in Loop: Header=BB0_197 Depth=1
	movl	%edx, -216(%rbp)
	movq	-56(%rbp), %rax
	movl	56(%rax), %edi
	movl	-212(%rbp), %esi
	movq	-128(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, %ebx
	movl	-212(%rbp), %esi
	movl	-216(%rbp), %edx
	movq	-128(%rbp), %rcx
	addq	$44, %rcx
	xorl	%edi, %edi
	callq	MinGap
	subl	%eax, %ebx
	movl	%ebx, -172(%rbp)
	jmp	.LBB0_287
.LBB0_286:                              #   in Loop: Header=BB0_197 Depth=1
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -172(%rbp)
.LBB0_287:                              #   in Loop: Header=BB0_197 Depth=1
	movl	-112(%rbp), %eax
	cmpl	$153, %eax
	je	.LBB0_292
# BB#288:                               #   in Loop: Header=BB0_197 Depth=1
	cmpl	$152, %eax
	jne	.LBB0_289
# BB#291:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-168(%rbp), %eax
	addl	%eax, -92(%rbp)
	movl	-172(%rbp), %eax
	jmp	.LBB0_293
.LBB0_292:                              #   in Loop: Header=BB0_197 Depth=1
	movl	-168(%rbp), %eax
	addl	-172(%rbp), %eax
	jmp	.LBB0_293
.LBB0_289:                              #   in Loop: Header=BB0_197 Depth=1
	cmpl	$151, %eax
	jne	.LBB0_294
# BB#290:                               #   in Loop: Header=BB0_197 Depth=1
	movl	-168(%rbp), %eax
	addl	-172(%rbp), %eax
	addl	%eax, -92(%rbp)
	decl	-100(%rbp)
	jmp	.LBB0_197
.LBB0_294:                              #   in Loop: Header=BB0_197 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_197
.LBB0_295:                              # %BreakTable.exit
	movl	-92(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	-96(%rbp), %eax
	jmp	.LBB0_345
.LBB0_301:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
.LBB0_302:
	movl	%eax, -84(%rbp)
	movl	$8388607, -80(%rbp)     # imm = 0x7FFFFF
	movl	$0, -192(%rbp)
	movl	$0, -184(%rbp)
	movq	$0, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	-88(%rbp), %r14
	leaq	-128(%rbp), %r15
	leaq	-136(%rbp), %rbx
	jmp	.LBB0_303
.LBB0_331:                              #   in Loop: Header=BB0_303 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB0_303:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_305 Depth 2
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_332
# BB#304:                               #   in Loop: Header=BB0_303 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB0_305
	.align	16, 0x90
.LBB0_306:                              #   in Loop: Header=BB0_305 Depth=2
	movq	-48(%rbp), %rax
.LBB0_305:                              #   Parent Loop BB0_303 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_306
# BB#307:                               #   in Loop: Header=BB0_303 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB0_309
# BB#308:                               #   in Loop: Header=BB0_303 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	jl	.LBB0_331
.LBB0_309:                              #   in Loop: Header=BB0_303 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_321
# BB#310:                               #   in Loop: Header=BB0_303 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB0_312
# BB#311:                               #   in Loop: Header=BB0_303 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_312:                              #   in Loop: Header=BB0_303 Depth=1
	movq	-48(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB0_331
# BB#313:                               #   in Loop: Header=BB0_303 Depth=1
	movl	-128(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jg	.LBB0_316
# BB#314:                               #   in Loop: Header=BB0_303 Depth=1
	movl	-128(%rbp), %eax
	addl	-136(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jg	.LBB0_316
# BB#315:                               #   in Loop: Header=BB0_303 Depth=1
	movl	-136(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.LBB0_317
.LBB0_316:                              #   in Loop: Header=BB0_303 Depth=1
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	movq	%rbx, %r9
	callq	BreakJoinedGroup
.LBB0_317:                              #   in Loop: Header=BB0_303 Depth=1
	movl	$1, -192(%rbp)
	movl	-128(%rbp), %eax
	addl	-136(%rbp), %eax
	cmpl	%eax, -184(%rbp)
	jge	.LBB0_319
# BB#318:                               #   in Loop: Header=BB0_303 Depth=1
	movl	-128(%rbp), %eax
	addl	-136(%rbp), %eax
	jmp	.LBB0_320
.LBB0_321:                              #   in Loop: Header=BB0_303 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB0_322
# BB#323:                               #   in Loop: Header=BB0_303 Depth=1
	movl	-128(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB0_325
# BB#324:                               #   in Loop: Header=BB0_303 Depth=1
	movq	-48(%rbp), %rax
	movl	48(%rax), %eax
	jmp	.LBB0_326
.LBB0_322:                              #   in Loop: Header=BB0_303 Depth=1
	movq	-48(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -128(%rbp)
	movq	-48(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_330
.LBB0_325:                              #   in Loop: Header=BB0_303 Depth=1
	movl	-128(%rbp), %eax
.LBB0_326:                              #   in Loop: Header=BB0_303 Depth=1
	movl	%eax, -128(%rbp)
	movl	-136(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB0_328
# BB#327:                               #   in Loop: Header=BB0_303 Depth=1
	movq	-48(%rbp), %rax
	movl	56(%rax), %eax
	jmp	.LBB0_329
.LBB0_328:                              #   in Loop: Header=BB0_303 Depth=1
	movl	-136(%rbp), %eax
.LBB0_329:                              #   in Loop: Header=BB0_303 Depth=1
	movl	%eax, -136(%rbp)
	movq	-48(%rbp), %rax
	movl	56(%rax), %eax
	movq	-72(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jle	.LBB0_331
.LBB0_330:                              #   in Loop: Header=BB0_303 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_331
.LBB0_319:                              #   in Loop: Header=BB0_303 Depth=1
	movl	-184(%rbp), %eax
.LBB0_320:                              #   in Loop: Header=BB0_303 Depth=1
	movl	%eax, -184(%rbp)
	movq	$0, -64(%rbp)
	jmp	.LBB0_331
.LBB0_332:
	cmpq	$0, -64(%rbp)
	jne	.LBB0_334
# BB#333:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.30, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_334:
	cmpl	$0, -192(%rbp)
	je	.LBB0_344
# BB#335:
	movl	-128(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jg	.LBB0_338
# BB#336:
	movl	-128(%rbp), %eax
	addl	-136(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jg	.LBB0_338
# BB#337:
	movl	-136(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.LBB0_339
.LBB0_338:
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-128(%rbp), %r8
	leaq	-136(%rbp), %r9
	callq	BreakJoinedGroup
.LBB0_339:
	movl	-128(%rbp), %eax
	addl	-136(%rbp), %eax
	cmpl	%eax, -184(%rbp)
	jge	.LBB0_341
# BB#340:
	movl	-128(%rbp), %eax
	addl	-136(%rbp), %eax
	jmp	.LBB0_342
.LBB0_102:
	movq	-240(%rbp), %rax
	movl	4(%rax), %eax
.LBB0_103:
	subl	-276(%rbp), %eax
	movl	%eax, -272(%rbp)
	movq	-240(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -268(%rbp)
	movq	-240(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	4(%rax), %ecx
	jge	.LBB0_105
# BB#104:
	movq	-240(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB0_106
.LBB0_105:
	movq	-240(%rbp), %rax
	movl	4(%rax), %eax
.LBB0_106:
	addl	-276(%rbp), %eax
	movl	%eax, -264(%rbp)
	movq	-256(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	callq	BreakObject
	movq	-232(%rbp), %rdi
	movq	-256(%rbp), %rsi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	callq	FindShift
	movl	%eax, -276(%rbp)
	movq	-256(%rbp), %rcx
	addl	48(%rcx), %eax
	jle	.LBB0_108
# BB#107:
	movq	-256(%rbp), %rax
	movl	48(%rax), %ebx
	addl	-276(%rbp), %ebx
.LBB0_108:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ebx          # imm = 0x7FFFFF
	jg	.LBB0_111
# BB#109:
	movq	-256(%rbp), %rax
	movl	48(%rax), %ecx
	xorl	%eax, %eax
	addl	-276(%rbp), %ecx
	jle	.LBB0_111
# BB#110:
	movq	-256(%rbp), %rax
	movl	48(%rax), %eax
	addl	-276(%rbp), %eax
.LBB0_111:
	movq	-232(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-256(%rbp), %rax
	movl	56(%rax), %eax
	xorl	%ecx, %ecx
	cmpl	-276(%rbp), %eax
	jle	.LBB0_113
# BB#112:
	movq	-256(%rbp), %rax
	movl	56(%rax), %ecx
	subl	-276(%rbp), %ecx
.LBB0_113:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_96
# BB#114:
	movq	-256(%rbp), %rax
	movl	56(%rax), %ecx
	xorl	%eax, %eax
	cmpl	-276(%rbp), %ecx
	jle	.LBB0_96
# BB#115:
	movq	-256(%rbp), %rax
	movl	56(%rax), %eax
	subl	-276(%rbp), %eax
	jmp	.LBB0_96
.LBB0_65:
	movq	-232(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	xorl	%ebx, %ebx
	movl	$13, %edi
	movl	$6, %esi
	movl	$.L.str.7, %edx
	movl	$2, %ecx
.LBB0_21:
	xorl	%eax, %eax
	callq	Error
	movq	-232(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.1, %esi
	callq	MakeWord
	movq	%rax, -256(%rbp)
	movl	$0, 56(%rax)
	movq	-256(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-232(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_23
# BB#22:
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
	movq	zz_res(%rip), %rbx
.LBB0_23:
	movq	%rbx, xx_tmp(%rip)
	movq	-256(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_26
# BB#24:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_26
# BB#25:
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
.LBB0_26:
	movq	-232(%rbp), %rdi
	callq	DisposeObject
	movq	-256(%rbp), %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB0_347
.LBB0_344:
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rcx
	leaq	-128(%rbp), %r8
	leaq	-136(%rbp), %r9
	callq	BreakJoinedGroup
	movl	-128(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	-136(%rbp), %eax
	jmp	.LBB0_345
.LBB0_341:
	movl	-184(%rbp), %eax
.LBB0_342:
	movl	%eax, -184(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 48(%rax)
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -184(%rbp)    # imm = 0x7FFFFF
	jg	.LBB0_345
# BB#343:
	movl	-184(%rbp), %eax
.LBB0_345:                              # %BreakVcat.exit
	movq	-32(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB0_347
.LBB0_38:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_40:
	movq	zz_hold(%rip), %rax
	movb	$17, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -256(%rbp)
	movq	-232(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-232(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-256(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-232(%rbp), %rax
	andl	36(%rax), %esi
	movq	-256(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-232(%rbp), %rax
	movl	48(%rax), %eax
	movq	-256(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-232(%rbp), %rax
	movl	56(%rax), %eax
	movq	-256(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-232(%rbp), %rax
	movl	52(%rax), %eax
	movq	-256(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-232(%rbp), %rax
	movl	60(%rax), %eax
	movq	-256(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-256(%rbp), %rax
	andw	$-129, 64(%rax)
	movq	-256(%rbp), %rax
	andw	$-257, 64(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-256(%rbp), %rax
	andw	$-513, 64(%rax)         # imm = 0xFFFFFFFFFFFFFDFF
	movq	-256(%rbp), %rax
	movzwl	64(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 64(%rax)
	movq	-256(%rbp), %rax
	movzwl	64(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$24576, %ecx            # imm = 0x6000
	movw	%cx, 64(%rax)
	movq	-232(%rbp), %rsi
	movl	$4095, %ebx             # imm = 0xFFF
	movl	40(%rsi), %edi
	andl	%ebx, %edi
	callq	FontSize
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI0_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-256(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-256(%rbp), %rax
	andw	$-129, 68(%rax)
	movq	-256(%rbp), %rax
	andw	$-257, 68(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-256(%rbp), %rax
	orw	$512, 68(%rax)          # imm = 0x200
	movq	-256(%rbp), %rax
	movzwl	68(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 68(%rax)
	movq	-256(%rbp), %rax
	movzwl	68(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 68(%rax)
	movq	-256(%rbp), %rax
	movw	$0, 70(%rax)
	movq	-256(%rbp), %rax
	movb	68(%rax), %cl
	andb	$-4, %cl
	orb	$2, %cl
	movb	%cl, 68(%rax)
	movq	-256(%rbp), %rax
	movb	68(%rax), %cl
	andb	$-13, %cl
	orb	$8, %cl
	movb	%cl, 68(%rax)
	movq	-256(%rbp), %rax
	movb	68(%rax), %cl
	andb	$-113, %cl
	orb	$64, %cl
	movb	%cl, 68(%rax)
	movq	-256(%rbp), %rax
	andb	$-9, 64(%rax)
	movq	-232(%rbp), %rax
	andl	40(%rax), %ebx
	movq	-256(%rbp), %rax
	movl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %ecx
	orl	%ebx, %ecx
	movl	%ecx, 76(%rax)
	movq	-232(%rbp), %rax
	movq	-256(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	40(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-232(%rbp), %rax
	movq	-256(%rbp), %rcx
	movl	$4194304, %edx          # imm = 0x400000
	andl	40(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-232(%rbp), %rax
	movl	40(%rax), %eax
	addl	%eax, %eax
	movq	-256(%rbp), %rcx
	andl	$1056964608, %eax       # imm = 0x3F000000
	movl	$-1056964609, %edx      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 76(%rcx)
	movq	-232(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_42
# BB#41:
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
.LBB0_42:
	movq	%rax, xx_tmp(%rip)
	movq	-256(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_45
# BB#43:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_45
# BB#44:
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
.LBB0_45:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_47
# BB#46:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_50
.LBB0_47:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_48
# BB#49:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_50
.LBB0_48:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_50:
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
	movq	-256(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_53
# BB#51:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_53
# BB#52:
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
.LBB0_53:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-232(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_56
# BB#54:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_56
# BB#55:
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
.LBB0_56:
	movq	-256(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	movq	-240(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -232(%rbp)
	jmp	.LBB0_347
.Lfunc_end0:
	.size	BreakObject, .Lfunc_end0-BreakObject
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_122
	.quad	.LBB0_346
	.quad	.LBB0_34
	.quad	.LBB0_34
	.quad	.LBB0_78
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_296
	.quad	.LBB0_126
	.quad	.LBB0_144
	.quad	.LBB0_297
	.quad	.LBB0_116
	.quad	.LBB0_347
	.quad	.LBB0_116
	.quad	.LBB0_347
	.quad	.LBB0_78
	.quad	.LBB0_78
	.quad	.LBB0_67
	.quad	.LBB0_78
	.quad	.LBB0_97
	.quad	.LBB0_78
	.quad	.LBB0_346
	.quad	.LBB0_78
	.quad	.LBB0_346
	.quad	.LBB0_78
	.quad	.LBB0_27
	.quad	.LBB0_31
	.quad	.LBB0_78
	.quad	.LBB0_78
	.quad	.LBB0_78
	.quad	.LBB0_78
	.quad	.LBB0_78
	.quad	.LBB0_78
	.quad	.LBB0_89
	.quad	.LBB0_89
	.quad	.LBB0_89
	.quad	.LBB0_89
	.quad	.LBB0_89
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_14
	.quad	.LBB0_83
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_346
	.quad	.LBB0_71
	.quad	.LBB0_71
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_119

	.text
	.align	16, 0x90
	.type	BreakJoinedGroup,@function
BreakJoinedGroup:                       # @BreakJoinedGroup
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp9:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -84(%rbp)
	movq	-16(%rbp), %rax
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB1_15
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movq	-72(%rbp), %rax
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_3 Depth=2
	movq	-64(%rbp), %rax
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_4
# BB#5:                                 #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB1_14
# BB#6:                                 #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB1_14
# BB#7:                                 #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB1_9
# BB#8:                                 #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax
	movl	48(%rax), %eax
	jmp	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax
.LBB1_10:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, -84(%rbp)
	movl	-88(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB1_12
# BB#11:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax
	movl	56(%rax), %eax
	jmp	.LBB1_13
.LBB1_12:                               #   in Loop: Header=BB1_1 Depth=1
	movl	-88(%rbp), %eax
.LBB1_13:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, -88(%rbp)
	jmp	.LBB1_14
.LBB1_15:
	movl	-84(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB1_17
# BB#16:
	movl	-84(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB1_18
.LBB1_17:
	movl	$0, -76(%rbp)
.LBB1_18:
	movl	$0, -80(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	subl	-80(%rbp), %ecx
	cmpl	%ecx, (%rax)
	jge	.LBB1_20
# BB#19:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	jmp	.LBB1_21
.LBB1_20:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	subl	-80(%rbp), %eax
.LBB1_21:
	movl	%eax, -104(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	subl	-76(%rbp), %ecx
	cmpl	%ecx, 8(%rax)
	jge	.LBB1_23
# BB#22:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB1_24
.LBB1_23:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	subl	-76(%rbp), %eax
.LBB1_24:
	movl	%eax, -96(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_31
# BB#25:
	movq	-32(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -32(%rbp)
	movl	48(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	-32(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -80(%rbp)
	movl	-100(%rbp), %ecx
	subl	%eax, %ecx
	cmpl	%ecx, -104(%rbp)
	jge	.LBB1_27
# BB#26:
	movl	-104(%rbp), %eax
	jmp	.LBB1_28
.LBB1_31:
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
	jmp	.LBB1_32
.LBB1_27:
	movl	-100(%rbp), %eax
	subl	-80(%rbp), %eax
.LBB1_28:
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	subl	-76(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jge	.LBB1_30
# BB#29:
	movl	-96(%rbp), %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB1_32
.LBB1_30:
	movl	-100(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, -96(%rbp)
.LBB1_32:
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-104(%rbp), %rbx
	jmp	.LBB1_33
	.align	16, 0x90
.LBB1_53:                               #   in Loop: Header=BB1_33 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB1_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_35 Depth 2
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB1_54
# BB#34:                                #   in Loop: Header=BB1_33 Depth=1
	movq	-72(%rbp), %rax
	jmp	.LBB1_35
	.align	16, 0x90
.LBB1_36:                               #   in Loop: Header=BB1_35 Depth=2
	movq	-64(%rbp), %rax
.LBB1_35:                               #   Parent Loop BB1_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_36
# BB#37:                                #   in Loop: Header=BB1_33 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB1_53
# BB#38:                                #   in Loop: Header=BB1_33 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB1_53
# BB#39:                                #   in Loop: Header=BB1_33 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB1_53
# BB#40:                                #   in Loop: Header=BB1_33 Depth=1
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	BreakObject
	movq	%rax, -64(%rbp)
	movl	-76(%rbp), %ecx
	cmpl	48(%rax), %ecx
	jge	.LBB1_42
# BB#41:                                #   in Loop: Header=BB1_33 Depth=1
	movq	-64(%rbp), %rax
	movl	48(%rax), %eax
	jmp	.LBB1_43
.LBB1_42:                               #   in Loop: Header=BB1_33 Depth=1
	movl	-76(%rbp), %eax
.LBB1_43:                               #   in Loop: Header=BB1_33 Depth=1
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB1_45
# BB#44:                                #   in Loop: Header=BB1_33 Depth=1
	movq	-64(%rbp), %rax
	movl	56(%rax), %eax
	jmp	.LBB1_46
.LBB1_45:                               #   in Loop: Header=BB1_33 Depth=1
	movl	-80(%rbp), %eax
.LBB1_46:                               #   in Loop: Header=BB1_33 Depth=1
	movl	%eax, -80(%rbp)
	movl	-100(%rbp), %ecx
	subl	%eax, %ecx
	cmpl	%ecx, -104(%rbp)
	jge	.LBB1_48
# BB#47:                                #   in Loop: Header=BB1_33 Depth=1
	movl	-104(%rbp), %eax
	jmp	.LBB1_49
.LBB1_48:                               #   in Loop: Header=BB1_33 Depth=1
	movl	-100(%rbp), %eax
	subl	-80(%rbp), %eax
.LBB1_49:                               #   in Loop: Header=BB1_33 Depth=1
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	subl	-76(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jge	.LBB1_51
# BB#50:                                #   in Loop: Header=BB1_33 Depth=1
	movl	-96(%rbp), %eax
	jmp	.LBB1_52
.LBB1_51:                               #   in Loop: Header=BB1_33 Depth=1
	movl	-100(%rbp), %eax
	subl	-76(%rbp), %eax
.LBB1_52:                               #   in Loop: Header=BB1_33 Depth=1
	movl	%eax, -96(%rbp)
	jmp	.LBB1_53
.LBB1_54:
	movl	-76(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB1_57
# BB#55:
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jg	.LBB1_57
# BB#56:
	movl	-80(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB1_63
.LBB1_57:
	cmpq	$0, -32(%rbp)
	je	.LBB1_59
# BB#58:
	movq	-32(%rbp), %r8
	addq	$32, %r8
	jmp	.LBB1_62
.LBB1_59:
	cmpq	$0, -64(%rbp)
	je	.LBB1_61
# BB#60:
	movq	-64(%rbp), %r8
	addq	$32, %r8
	jmp	.LBB1_62
.LBB1_61:
	movq	no_fpos(%rip), %r8
.LBB1_62:
	movl	$13, %edi
	movl	$1, %esi
	movl	$.L.str.27, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_63:
	movl	-76(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-80(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	BreakJoinedGroup, .Lfunc_end1-BreakJoinedGroup
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"replacing with empty object: negative size constraint %s,%s,%s"
	.size	.L.str, 63

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s object scaled horizontally by factor %.2f (too wide)"
	.size	.L.str.2, 56

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"@Rotate"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s deleted (too wide; cannot break %s)"
	.size	.L.str.4, 39

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"word is too long"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"word %s scaled horizontally by factor %.2f (too wide)"
	.size	.L.str.6, 54

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"word %s deleted (too wide)"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s scaled horizontally by factor %.2f (too wide)"
	.size	.L.str.8, 49

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"@IncludeGraphic"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"@SysIncludeGraphic"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s deleted (too wide)"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"assert failed in %s"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"BreakObject: downs!"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"column mark of unbroken paragraph moved left"
	.size	.L.str.14, 45

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"column mark of paragraph moved left before breaking"
	.size	.L.str.15, 52

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"assert failed in %s %s"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"BreakObject:"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"BreakObject: back(x, COLM) < 0!"
	.size	.L.str.18, 32

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"BreakObject: fwd(x, COLM) < 0!"
	.size	.L.str.19, 31

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"BreakTable: GAP_OBJ!"
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"BreakTable: index!"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"BreakTable: GAP_OBJ is last!"
	.size	.L.str.22, 29

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"reducing column gaps to 0i (object is too wide)"
	.size	.L.str.23, 48

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"BreakTable: type(y) == GAP_OBJ!"
	.size	.L.str.24, 32

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"BreakTable: type(g) != GAP_OBJ!"
	.size	.L.str.25, 32

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"BreakTable: mside"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"failed to break column to fit into its available space"
	.size	.L.str.27, 55

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"BreakVcat: Down(x) == x!"
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"BreakVcat: start_group == nilobj!"
	.size	.L.str.29, 34

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"BreakVcat: start_group == nilobj (2)!"
	.size	.L.str.30, 38


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
