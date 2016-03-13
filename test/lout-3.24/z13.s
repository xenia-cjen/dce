	.text
	.file	"z13.opt"
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
	subq	$104, %rsp
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpl	$0, (%rsi)
	js	.LBB0_3
# BB#1:
	movq	-48(%rbp), %rax
	cmpl	$0, 4(%rax)
	js	.LBB0_3
# BB#2:
	movq	-48(%rbp), %rax
	cmpl	$0, 8(%rax)
	js	.LBB0_3
# BB#9:
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	movq	-48(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB0_12
# BB#10:
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	4(%rax), %ecx
	jg	.LBB0_12
# BB#11:
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	movq	-48(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB0_152
.LBB0_12:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-9, %eax
	cmpl	$90, %eax
	ja	.LBB0_147
# BB#13:
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_78:
	movq	-40(%rbp), %rax
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
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_81
.LBB0_3:
	movq	-40(%rbp), %rbx
	addq	$32, %rbx
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	EchoLength
	movq	%rax, %r14
	movq	-48(%rbp), %rax
	movl	4(%rax), %edi
	callq	EchoLength
	movq	%rax, %r15
	movq	-48(%rbp), %rax
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
	movq	-40(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.1, %esi
	callq	MakeWord
	movq	%rax, -64(%rbp)
	movl	$0, 56(%rax)
	movq	-64(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-40(%rbp), %rax
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
	movq	-64(%rbp), %rax
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
	movq	-40(%rbp), %rdi
	callq	DisposeObject
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_153:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.align	16, 0x90
.LBB0_82:                               #   in Loop: Header=BB0_81 Depth=1
	movq	-64(%rbp), %rax
.LBB0_81:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_82
	jmp	.LBB0_125
.LBB0_147:
	movq	no_fpos(%rip), %rbx
	movq	-40(%rbp), %rax
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
	jmp	.LBB0_148
.LBB0_89:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_90
	.align	16, 0x90
.LBB0_91:                               #   in Loop: Header=BB0_90 Depth=1
	movq	-64(%rbp), %rax
.LBB0_90:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_91
# BB#92:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	jne	.LBB0_125
# BB#93:
	movq	-40(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	8(%rax), %ecx
	jge	.LBB0_95
# BB#94:
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	jmp	.LBB0_96
.LBB0_119:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_120
.LBB0_121:                              #   in Loop: Header=BB0_120 Depth=1
	movq	-64(%rbp), %rax
.LBB0_120:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_121
	jmp	.LBB0_125
.LBB0_34:
	movq	-40(%rbp), %rax
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_117
.LBB0_118:                              #   in Loop: Header=BB0_117 Depth=1
	movq	-64(%rbp), %rax
.LBB0_117:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_118
	jmp	.LBB0_125
.LBB0_71:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_77
# BB#72:
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	InsertScale
	testl	%eax, %eax
	je	.LBB0_77
# BB#73:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_74
.LBB0_75:                               #   in Loop: Header=BB0_74 Depth=1
	movq	-40(%rbp), %rax
.LBB0_74:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_75
# BB#76:
	movq	-40(%rbp), %rax
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
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB0_96
.LBB0_77:
	movq	-40(%rbp), %r8
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
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_123
.LBB0_124:                              #   in Loop: Header=BB0_123 Depth=1
	movq	-64(%rbp), %rax
.LBB0_123:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_124
	jmp	.LBB0_125
.LBB0_145:
	movq	-40(%rbp), %r9
	movq	(%r9), %rsi
	movq	8(%r9), %rdi
	movq	-48(%rbp), %rcx
	leaq	48(%r9), %r8
	addq	$56, %r9
	xorl	%edx, %edx
	callq	BreakJoinedGroup
	jmp	.LBB0_148
.LBB0_126:
	movq	-40(%rbp), %rax
	cmpl	$0, 48(%rax)
	jle	.LBB0_143
# BB#127:
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movl	%ecx, -100(%rbp)
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_129
# BB#128:
	movl	-100(%rbp), %eax
.LBB0_129:
	movq	-40(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-40(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	jmp	.LBB0_130
.LBB0_137:                              #   in Loop: Header=BB0_130 Depth=1
	movq	-56(%rbp), %rax
.LBB0_130:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_132 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB0_138
# BB#131:                               #   in Loop: Header=BB0_130 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB0_132
	.align	16, 0x90
.LBB0_133:                              #   in Loop: Header=BB0_132 Depth=2
	movq	-64(%rbp), %rax
.LBB0_132:                              #   Parent Loop BB0_130 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_133
# BB#134:                               #   in Loop: Header=BB0_130 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_137
# BB#135:                               #   in Loop: Header=BB0_130 Depth=1
	movq	-64(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB0_137
# BB#136:                               #   in Loop: Header=BB0_130 Depth=1
	movq	-64(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB0_137
.LBB0_144:
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	BreakTable
	movq	%rax, -40(%rbp)
	jmp	.LBB0_148
.LBB0_146:
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	BreakVcat
	movq	%rax, -40(%rbp)
	jmp	.LBB0_148
.LBB0_67:
	movq	-40(%rbp), %rdi
	addq	$64, %rdi
	movq	-48(%rbp), %rsi
	callq	MinConstraint
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_68
.LBB0_69:                               #   in Loop: Header=BB0_68 Depth=1
	movq	-64(%rbp), %rax
.LBB0_68:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_69
# BB#70:
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	addq	$64, %rsi
	callq	BreakObject
	movq	%rax, -64(%rbp)
	movl	48(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-64(%rbp), %rax
	movl	56(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-40(%rbp), %rax
	leaq	48(%rax), %rdi
	leaq	56(%rax), %rsi
	leaq	64(%rax), %rdx
	callq	EnlargeToConstraint
	jmp	.LBB0_148
.LBB0_97:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_98
.LBB0_99:                               #   in Loop: Header=BB0_98 Depth=1
	movq	-64(%rbp), %rax
.LBB0_98:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_99
# BB#100:
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	xorl	%edx, %edx
	callq	FindShift
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	4(%rax), %ecx
	jge	.LBB0_102
# BB#101:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	jmp	.LBB0_103
.LBB0_27:
	movq	-40(%rbp), %rax
	movl	64(%rax), %esi
	movq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rdi
	callq	InvScaleConstraint
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_28
.LBB0_29:                               #   in Loop: Header=BB0_28 Depth=1
	movq	-64(%rbp), %rax
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_29
# BB#30:
	movq	-64(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -64(%rbp)
	movl	48(%rax), %eax
	movq	-40(%rbp), %rcx
	imull	64(%rcx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$25, %edx
	addl	%eax, %edx
	sarl	$7, %edx
	movl	%edx, 48(%rcx)
	movq	-64(%rbp), %rax
	movl	56(%rax), %eax
	movq	-40(%rbp), %rcx
	imull	64(%rcx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$25, %edx
	addl	%eax, %edx
	sarl	$7, %edx
	movl	%edx, 56(%rcx)
	jmp	.LBB0_148
.LBB0_31:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_32
.LBB0_33:                               #   in Loop: Header=BB0_32 Depth=1
	movq	-64(%rbp), %rax
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_33
	jmp	.LBB0_125
.LBB0_14:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_20
# BB#15:
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	InsertScale
	testl	%eax, %eax
	je	.LBB0_20
# BB#16:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_17
.LBB0_18:                               #   in Loop: Header=BB0_17 Depth=1
	movq	-40(%rbp), %rax
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_18
# BB#19:
	movq	-40(%rbp), %r8
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
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_84
.LBB0_85:                               #   in Loop: Header=BB0_84 Depth=1
	movq	-64(%rbp), %rax
.LBB0_84:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_85
# BB#86:
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_87
.LBB0_88:                               #   in Loop: Header=BB0_87 Depth=1
	movq	-64(%rbp), %rax
.LBB0_87:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_88
.LBB0_125:
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -64(%rbp)
	movl	48(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-64(%rbp), %rax
	movl	56(%rax), %eax
.LBB0_96:
	movq	-40(%rbp), %rcx
	movl	%eax, 56(%rcx)
.LBB0_148:
	movq	-40(%rbp), %rax
	cmpl	$0, 48(%rax)
	jns	.LBB0_150
# BB#149:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_150:
	movq	-40(%rbp), %rax
	cmpl	$0, 56(%rax)
	jns	.LBB0_152
# BB#151:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_152:
	movq	-40(%rbp), %rax
	jmp	.LBB0_153
.LBB0_57:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_65
# BB#58:
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	InsertScale
	testl	%eax, %eax
	je	.LBB0_65
# BB#59:
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_60
.LBB0_61:                               #   in Loop: Header=BB0_60 Depth=1
	movq	-40(%rbp), %rax
.LBB0_60:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_61
# BB#62:
	movq	-40(%rbp), %r8
	movq	-96(%rbp), %r9
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
	jmp	.LBB0_148
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
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	movq	-48(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB0_142
# BB#139:
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	4(%rax), %ecx
	jg	.LBB0_142
# BB#140:
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	movq	-48(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jg	.LBB0_142
# BB#141:
	movq	-112(%rbp), %r8
	addq	$32, %r8
	movl	$13, %edi
	movl	$9, %esi
	movl	$.L.str.14, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_148
.LBB0_20:
	movq	-40(%rbp), %r8
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
	movq	-112(%rbp), %r8
	addq	$32, %r8
	movl	$13, %edi
	movl	$10, %esi
	movl	$.L.str.15, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_143:
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	-88(%rbp), %rax
	movq	%rax, (%rsp)
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	FillObject
	movq	%rax, -40(%rbp)
	jmp	.LBB0_148
.LBB0_102:
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
.LBB0_103:
	subl	-84(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	4(%rax), %ecx
	jge	.LBB0_105
# BB#104:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB0_106
.LBB0_105:
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
.LBB0_106:
	addl	-84(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	BreakObject
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	callq	FindShift
	movl	%eax, -84(%rbp)
	movq	-64(%rbp), %rcx
	addl	48(%rcx), %eax
	jle	.LBB0_108
# BB#107:
	movq	-64(%rbp), %rax
	movl	48(%rax), %ebx
	addl	-84(%rbp), %ebx
.LBB0_108:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ebx          # imm = 0x7FFFFF
	jg	.LBB0_111
# BB#109:
	movq	-64(%rbp), %rax
	movl	48(%rax), %ecx
	xorl	%eax, %eax
	addl	-84(%rbp), %ecx
	jle	.LBB0_111
# BB#110:
	movq	-64(%rbp), %rax
	movl	48(%rax), %eax
	addl	-84(%rbp), %eax
.LBB0_111:
	movq	-40(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-64(%rbp), %rax
	movl	56(%rax), %eax
	xorl	%ecx, %ecx
	cmpl	-84(%rbp), %eax
	jle	.LBB0_113
# BB#112:
	movq	-64(%rbp), %rax
	movl	56(%rax), %ecx
	subl	-84(%rbp), %ecx
.LBB0_113:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_96
# BB#114:
	movq	-64(%rbp), %rax
	movl	56(%rax), %ecx
	xorl	%eax, %eax
	cmpl	-84(%rbp), %ecx
	jle	.LBB0_96
# BB#115:
	movq	-64(%rbp), %rax
	movl	56(%rax), %eax
	subl	-84(%rbp), %eax
	jmp	.LBB0_96
.LBB0_65:
	movq	-40(%rbp), %r9
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
	movq	-40(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.1, %esi
	callq	MakeWord
	movq	%rax, -64(%rbp)
	movl	$0, 56(%rax)
	movq	-64(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-40(%rbp), %rax
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
	movq	-64(%rbp), %rax
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
	movq	-40(%rbp), %rdi
	callq	DisposeObject
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_148
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
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-40(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-64(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-40(%rbp), %rax
	andl	36(%rax), %esi
	movq	-64(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-40(%rbp), %rax
	movl	52(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-64(%rbp), %rax
	andw	$-129, 64(%rax)
	movq	-64(%rbp), %rax
	andw	$-257, 64(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-64(%rbp), %rax
	andw	$-513, 64(%rax)         # imm = 0xFFFFFFFFFFFFFDFF
	movq	-64(%rbp), %rax
	movzwl	64(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 64(%rax)
	movq	-64(%rbp), %rax
	movzwl	64(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$24576, %ecx            # imm = 0x6000
	movw	%cx, 64(%rax)
	movq	-40(%rbp), %rsi
	movl	$4095, %ebx             # imm = 0xFFF
	movl	40(%rsi), %edi
	andl	%ebx, %edi
	callq	FontSize
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI0_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-64(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-64(%rbp), %rax
	andw	$-129, 68(%rax)
	movq	-64(%rbp), %rax
	andw	$-257, 68(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-64(%rbp), %rax
	orw	$512, 68(%rax)          # imm = 0x200
	movq	-64(%rbp), %rax
	movzwl	68(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 68(%rax)
	movq	-64(%rbp), %rax
	movzwl	68(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 68(%rax)
	movq	-64(%rbp), %rax
	movw	$0, 70(%rax)
	movq	-64(%rbp), %rax
	movb	68(%rax), %cl
	andb	$-4, %cl
	orb	$2, %cl
	movb	%cl, 68(%rax)
	movq	-64(%rbp), %rax
	movb	68(%rax), %cl
	andb	$-13, %cl
	orb	$8, %cl
	movb	%cl, 68(%rax)
	movq	-64(%rbp), %rax
	movb	68(%rax), %cl
	andb	$-113, %cl
	orb	$64, %cl
	movb	%cl, 68(%rax)
	movq	-64(%rbp), %rax
	andb	$-9, 64(%rax)
	movq	-40(%rbp), %rax
	andl	40(%rax), %ebx
	movq	-64(%rbp), %rax
	movl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %ecx
	orl	%ebx, %ecx
	movl	%ecx, 76(%rax)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	40(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$4194304, %edx          # imm = 0x400000
	andl	40(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	addl	%eax, %eax
	movq	-64(%rbp), %rcx
	andl	$1056964608, %eax       # imm = 0x3F000000
	movl	$-1056964609, %edx      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 76(%rcx)
	movq	-40(%rbp), %rcx
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
	movq	-64(%rbp), %rax
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
	movq	-64(%rbp), %rax
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
	movq	-40(%rbp), %rax
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
	movq	-64(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-48(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -40(%rbp)
	jmp	.LBB0_148
.Lfunc_end0:
	.size	BreakObject, .Lfunc_end0-BreakObject
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_122
	.quad	.LBB0_147
	.quad	.LBB0_34
	.quad	.LBB0_34
	.quad	.LBB0_78
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_145
	.quad	.LBB0_126
	.quad	.LBB0_144
	.quad	.LBB0_146
	.quad	.LBB0_116
	.quad	.LBB0_148
	.quad	.LBB0_116
	.quad	.LBB0_148
	.quad	.LBB0_78
	.quad	.LBB0_78
	.quad	.LBB0_67
	.quad	.LBB0_78
	.quad	.LBB0_97
	.quad	.LBB0_78
	.quad	.LBB0_147
	.quad	.LBB0_78
	.quad	.LBB0_147
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
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_14
	.quad	.LBB0_83
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_71
	.quad	.LBB0_71
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_119

	.text
	.align	16, 0x90
	.type	BreakTable,@function
BreakTable:                             # @BreakTable
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
	subq	$200, %rsp
.Ltmp9:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -184(%rbp)
	movl	$0, -148(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-176(%rbp), %rax
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_2
# BB#3:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_5:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB1_8
# BB#6:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$138, %eax
	jg	.LBB1_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_8:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB1_9
# BB#10:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	setl	%al
	jmp	.LBB1_11
.LBB1_9:
	xorl	%eax, %eax
.LBB1_11:
	movzbl	%al, %eax
	movq	-176(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-176(%rbp), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB1_13
# BB#12:
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	$1, -40(%rbp)
.LBB1_13:
	movq	-16(%rbp), %rax
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_40:                               #   in Loop: Header=BB1_14 Depth=1
	movq	-168(%rbp), %rax
.LBB1_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
                                        #     Child Loop BB1_23 Depth 2
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB1_41
# BB#15:                                #   in Loop: Header=BB1_14 Depth=1
	movq	-168(%rbp), %rax
	jmp	.LBB1_16
	.align	16, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_16 Depth=2
	movq	-192(%rbp), %rax
.LBB1_16:                               #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_17
# BB#18:                                #   in Loop: Header=BB1_14 Depth=1
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_20
# BB#19:                                #   in Loop: Header=BB1_14 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_20:                               #   in Loop: Header=BB1_14 Depth=1
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB1_22
# BB#21:                                #   in Loop: Header=BB1_14 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_22:                               #   in Loop: Header=BB1_14 Depth=1
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_23
	.align	16, 0x90
.LBB1_24:                               #   in Loop: Header=BB1_23 Depth=2
	movq	-176(%rbp), %rax
.LBB1_23:                               #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_24
# BB#25:                                #   in Loop: Header=BB1_14 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_27
# BB#26:                                #   in Loop: Header=BB1_14 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_27:                               #   in Loop: Header=BB1_14 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB1_30
# BB#28:                                #   in Loop: Header=BB1_14 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$138, %eax
	jg	.LBB1_30
# BB#29:                                #   in Loop: Header=BB1_14 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_30:                               #   in Loop: Header=BB1_14 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB1_31
# BB#32:                                #   in Loop: Header=BB1_14 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	setl	%al
	jmp	.LBB1_33
	.align	16, 0x90
.LBB1_31:                               #   in Loop: Header=BB1_14 Depth=1
	xorl	%eax, %eax
.LBB1_33:                               #   in Loop: Header=BB1_14 Depth=1
	movzbl	%al, %eax
	movq	-176(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-176(%rbp), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB1_40
# BB#34:                                #   in Loop: Header=BB1_14 Depth=1
	cmpq	$0, -184(%rbp)
	je	.LBB1_35
# BB#36:                                #   in Loop: Header=BB1_14 Depth=1
	movq	-192(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB1_38
# BB#37:                                #   in Loop: Header=BB1_14 Depth=1
	movl	-40(%rbp), %eax
	addl	%eax, -36(%rbp)
	movl	-32(%rbp), %ebx
	movq	-192(%rbp), %rcx
	addq	$44, %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	MinGap
	addl	%ebx, %eax
	addl	%eax, -28(%rbp)
	movl	$1, -40(%rbp)
	movl	$0, -32(%rbp)
	jmp	.LBB1_39
.LBB1_35:                               #   in Loop: Header=BB1_14 Depth=1
	movl	$1, -40(%rbp)
	jmp	.LBB1_39
.LBB1_38:                               #   in Loop: Header=BB1_14 Depth=1
	movq	-192(%rbp), %rcx
	addq	$44, %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	MinGap
	addl	%eax, -32(%rbp)
	incl	-40(%rbp)
.LBB1_39:                               #   in Loop: Header=BB1_14 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB1_40
.LBB1_41:
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB1_44
# BB#42:
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jg	.LBB1_44
# BB#43:
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB1_53
.LBB1_44:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$13, %edi
	movl	$2, %esi
	movl	$.L.str.23, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-16(%rbp), %rax
	jmp	.LBB1_45
	.align	16, 0x90
.LBB1_51:                               #   in Loop: Header=BB1_45 Depth=1
	movq	-168(%rbp), %rax
.LBB1_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_47 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB1_52
# BB#46:                                #   in Loop: Header=BB1_45 Depth=1
	movq	-168(%rbp), %rax
	jmp	.LBB1_47
	.align	16, 0x90
.LBB1_48:                               #   in Loop: Header=BB1_47 Depth=2
	movq	-192(%rbp), %rax
.LBB1_47:                               #   Parent Loop BB1_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_48
# BB#49:                                #   in Loop: Header=BB1_45 Depth=1
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_51
# BB#50:                                #   in Loop: Header=BB1_45 Depth=1
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %ecx
	movw	%cx, 44(%rax)
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %ecx
	movw	%cx, 44(%rax)
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %ecx
	movw	%cx, 44(%rax)
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 44(%rax)
	movq	-192(%rbp), %rax
	movw	$0, 46(%rax)
	jmp	.LBB1_51
.LBB1_52:
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB1_53
	.align	16, 0x90
.LBB1_149:                              #   in Loop: Header=BB1_53 Depth=1
	addl	%eax, -32(%rbp)
	decl	-40(%rbp)
.LBB1_53:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_62 Depth 2
                                        #       Child Loop BB1_63 Depth 3
                                        #       Child Loop BB1_73 Depth 3
	movl	-36(%rbp), %eax
	addl	-40(%rbp), %eax
	jle	.LBB1_54
# BB#55:                                #   in Loop: Header=BB1_53 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB1_56
# BB#57:                                #   in Loop: Header=BB1_53 Depth=1
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jg	.LBB1_58
# BB#59:                                #   in Loop: Header=BB1_53 Depth=1
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	setle	%al
	jmp	.LBB1_60
	.align	16, 0x90
.LBB1_54:                               #   in Loop: Header=BB1_53 Depth=1
	xorl	%eax, %eax
	jmp	.LBB1_60
	.align	16, 0x90
.LBB1_56:                               #   in Loop: Header=BB1_53 Depth=1
	xorl	%eax, %eax
	jmp	.LBB1_60
.LBB1_58:                               #   in Loop: Header=BB1_53 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_60:                               #   in Loop: Header=BB1_53 Depth=1
	testb	%al, %al
	je	.LBB1_151
# BB#61:                                #   in Loop: Header=BB1_53 Depth=1
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-16(%rbp), %rax
	jmp	.LBB1_62
	.align	16, 0x90
.LBB1_79:                               #   in Loop: Header=BB1_62 Depth=2
	movq	-168(%rbp), %rax
.LBB1_62:                               #   Parent Loop BB1_53 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_63 Depth 3
                                        #       Child Loop BB1_73 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	jmp	.LBB1_63
	.align	16, 0x90
.LBB1_64:                               #   in Loop: Header=BB1_63 Depth=3
	movq	-176(%rbp), %rax
.LBB1_63:                               #   Parent Loop BB1_53 Depth=1
                                        #     Parent Loop BB1_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_64
# BB#65:                                #   in Loop: Header=BB1_62 Depth=2
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_67
# BB#66:                                #   in Loop: Header=BB1_62 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_67:                               #   in Loop: Header=BB1_62 Depth=2
	movq	-176(%rbp), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB1_71
# BB#68:                                #   in Loop: Header=BB1_62 Depth=2
	movq	-176(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	cmpl	-68(%rbp), %ecx
	jl	.LBB1_70
# BB#69:                                #   in Loop: Header=BB1_62 Depth=2
	cmpq	$0, -56(%rbp)
	jne	.LBB1_71
.LBB1_70:                               #   in Loop: Header=BB1_62 Depth=2
	movq	-176(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -60(%rbp)
.LBB1_71:                               #   in Loop: Header=BB1_62 Depth=2
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
	cmpq	-16(%rbp), %rax
	je	.LBB1_80
# BB#72:                                #   in Loop: Header=BB1_62 Depth=2
	movq	-168(%rbp), %rax
	jmp	.LBB1_73
	.align	16, 0x90
.LBB1_74:                               #   in Loop: Header=BB1_73 Depth=3
	movq	-192(%rbp), %rax
.LBB1_73:                               #   Parent Loop BB1_53 Depth=1
                                        #     Parent Loop BB1_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_74
# BB#75:                                #   in Loop: Header=BB1_62 Depth=2
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_77
# BB#76:                                #   in Loop: Header=BB1_62 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_77:                               #   in Loop: Header=BB1_62 Depth=2
	movq	-192(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB1_79
# BB#78:                                #   in Loop: Header=BB1_62 Depth=2
	movl	$1, -60(%rbp)
	jmp	.LBB1_79
	.align	16, 0x90
.LBB1_80:                               #   in Loop: Header=BB1_53 Depth=1
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %esi
	leaq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	leaq	-112(%rbp), %r8
	leaq	-120(%rbp), %r9
	callq	SetNeighbours
	xorl	%ebx, %ebx
	cmpq	$0, -96(%rbp)
	movl	$0, %eax
	je	.LBB1_84
# BB#81:                                #   in Loop: Header=BB1_53 Depth=1
	movq	-104(%rbp), %rax
	xorl	%edi, %edi
	cmpl	$0, 52(%rax)
	je	.LBB1_83
# BB#82:                                #   in Loop: Header=BB1_53 Depth=1
	movq	-104(%rbp), %rax
	movl	56(%rax), %edi
.LBB1_83:                               #   in Loop: Header=BB1_53 Depth=1
	movq	-96(%rbp), %rdx
	addq	$44, %rdx
	xorl	%esi, %esi
	movl	$151, %ecx
	callq	ExtraGap
.LBB1_84:                               #   in Loop: Header=BB1_53 Depth=1
	movl	%eax, -124(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB1_88
# BB#85:                                #   in Loop: Header=BB1_53 Depth=1
	movq	-120(%rbp), %rax
	xorl	%esi, %esi
	cmpl	$0, 52(%rax)
	je	.LBB1_87
# BB#86:                                #   in Loop: Header=BB1_53 Depth=1
	movq	-120(%rbp), %rax
	movl	48(%rax), %esi
.LBB1_87:                               #   in Loop: Header=BB1_53 Depth=1
	movq	-112(%rbp), %rdx
	addq	$44, %rdx
	xorl	%edi, %edi
	movl	$153, %ecx
	callq	ExtraGap
	movl	%eax, %ebx
.LBB1_88:                               #   in Loop: Header=BB1_53 Depth=1
	movl	%ebx, -128(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	subl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-40(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -132(%rbp)
	movl	-64(%rbp), %eax
	cmpl	$153, %eax
	je	.LBB1_117
# BB#89:                                #   in Loop: Header=BB1_53 Depth=1
	cmpl	$152, %eax
	jne	.LBB1_90
# BB#104:                               #   in Loop: Header=BB1_53 Depth=1
	movq	-24(%rbp), %rax
	movl	-132(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, 8(%rax)
	jge	.LBB1_106
# BB#105:                               #   in Loop: Header=BB1_53 Depth=1
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB1_107
	.align	16, 0x90
.LBB1_117:                              #   in Loop: Header=BB1_53 Depth=1
	movq	-24(%rbp), %rax
	movl	-132(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, 8(%rax)
	jge	.LBB1_119
# BB#118:                               #   in Loop: Header=BB1_53 Depth=1
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB1_120
	.align	16, 0x90
.LBB1_90:                               #   in Loop: Header=BB1_53 Depth=1
	cmpl	$151, %eax
	jne	.LBB1_130
# BB#91:                                #   in Loop: Header=BB1_53 Depth=1
	movq	-24(%rbp), %rax
	movl	-132(%rbp), %ecx
	imull	-36(%rbp), %ecx
	addl	-28(%rbp), %ecx
	cmpl	%ecx, (%rax)
	jge	.LBB1_93
# BB#92:                                #   in Loop: Header=BB1_53 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	jmp	.LBB1_94
.LBB1_106:                              #   in Loop: Header=BB1_53 Depth=1
	movl	-132(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	-32(%rbp), %eax
.LBB1_107:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%eax, -136(%rbp)
	subl	-32(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	movl	%eax, -144(%rbp)
	cmpl	-148(%rbp), %eax
	jle	.LBB1_110
# BB#108:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %eax
	subl	-148(%rbp), %eax
	cmpl	$19, %eax
	jg	.LBB1_110
# BB#109:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, -144(%rbp)
.LBB1_110:                              #   in Loop: Header=BB1_53 Depth=1
	movl	-124(%rbp), %ecx
	movq	-56(%rbp), %rax
	addl	48(%rax), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_112
# BB#111:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-124(%rbp), %ecx
	movq	-56(%rbp), %rdx
	addl	48(%rdx), %ecx
.LBB1_112:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%ecx, -88(%rbp)
	movl	-124(%rbp), %ecx
	movq	-56(%rbp), %rdx
	addl	48(%rdx), %ecx
	addl	-144(%rbp), %ecx
	addl	-128(%rbp), %ecx
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_114
# BB#113:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-124(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	48(%rcx), %eax
	addl	-144(%rbp), %eax
	addl	-128(%rbp), %eax
.LBB1_114:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%eax, -84(%rbp)
	movl	-144(%rbp), %ecx
	addl	-128(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_116
# BB#115:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %eax
	addl	-128(%rbp), %eax
.LBB1_116:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%eax, -80(%rbp)
	jmp	.LBB1_131
.LBB1_119:                              #   in Loop: Header=BB1_53 Depth=1
	movl	-132(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	-32(%rbp), %eax
.LBB1_120:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%eax, -136(%rbp)
	subl	-32(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	movl	%eax, -144(%rbp)
	cmpl	-148(%rbp), %eax
	jle	.LBB1_123
# BB#121:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %eax
	subl	-148(%rbp), %eax
	cmpl	$19, %eax
	jg	.LBB1_123
# BB#122:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, -144(%rbp)
.LBB1_123:                              #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %ecx
	addl	-124(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_125
# BB#124:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %ecx
	addl	-124(%rbp), %ecx
.LBB1_125:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%ecx, -88(%rbp)
	movl	-144(%rbp), %ecx
	addl	-124(%rbp), %ecx
	addl	-128(%rbp), %ecx
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_127
# BB#126:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %eax
	addl	-124(%rbp), %eax
	addl	-128(%rbp), %eax
.LBB1_127:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%eax, -84(%rbp)
	movl	-144(%rbp), %ecx
	addl	-128(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_129
# BB#128:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %eax
	addl	-128(%rbp), %eax
.LBB1_129:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%eax, -80(%rbp)
	jmp	.LBB1_131
.LBB1_130:                              #   in Loop: Header=BB1_53 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_131
.LBB1_93:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-132(%rbp), %eax
	imull	-36(%rbp), %eax
	addl	-28(%rbp), %eax
.LBB1_94:                               #   in Loop: Header=BB1_53 Depth=1
	movl	%eax, -140(%rbp)
	subl	-28(%rbp), %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, -144(%rbp)
	cmpl	-148(%rbp), %eax
	jle	.LBB1_97
# BB#95:                                #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %eax
	subl	-148(%rbp), %eax
	cmpl	$19, %eax
	jg	.LBB1_97
# BB#96:                                #   in Loop: Header=BB1_53 Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, -144(%rbp)
.LBB1_97:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %ecx
	addl	-124(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_99
# BB#98:                                #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %ecx
	addl	-124(%rbp), %ecx
.LBB1_99:                               #   in Loop: Header=BB1_53 Depth=1
	movl	%ecx, -88(%rbp)
	movl	-144(%rbp), %ecx
	addl	-124(%rbp), %ecx
	addl	-128(%rbp), %ecx
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_101
# BB#100:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %eax
	addl	-124(%rbp), %eax
	addl	-128(%rbp), %eax
.LBB1_101:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%eax, -84(%rbp)
	movl	-144(%rbp), %ecx
	addl	-128(%rbp), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_103
# BB#102:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %eax
	addl	-128(%rbp), %eax
.LBB1_103:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%eax, -80(%rbp)
	.align	16, 0x90
.LBB1_131:                              #   in Loop: Header=BB1_53 Depth=1
	movl	-144(%rbp), %eax
	movl	%eax, -148(%rbp)
	movq	-56(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -56(%rbp)
	movl	$1, 52(%rax)
	cmpq	$0, -96(%rbp)
	je	.LBB1_135
# BB#132:                               #   in Loop: Header=BB1_53 Depth=1
	movq	-104(%rbp), %rax
	xorl	%edi, %edi
	cmpl	$0, 52(%rax)
	je	.LBB1_134
# BB#133:                               #   in Loop: Header=BB1_53 Depth=1
	movq	-104(%rbp), %rax
	movl	56(%rax), %edi
.LBB1_134:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%edi, -196(%rbp)
	movq	-56(%rbp), %rax
	movl	48(%rax), %esi
	movl	56(%rax), %edx
	movq	-96(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, %ebx
	movl	-196(%rbp), %edi
	movq	-96(%rbp), %rcx
	addq	$44, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	MinGap
	subl	%eax, %ebx
	movl	%ebx, -152(%rbp)
	jmp	.LBB1_136
	.align	16, 0x90
.LBB1_135:                              #   in Loop: Header=BB1_53 Depth=1
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -152(%rbp)
.LBB1_136:                              #   in Loop: Header=BB1_53 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB1_142
# BB#137:                               #   in Loop: Header=BB1_53 Depth=1
	movq	-120(%rbp), %rax
	xorl	%edx, %edx
	cmpl	$0, 52(%rax)
	movl	$0, %eax
	je	.LBB1_139
# BB#138:                               #   in Loop: Header=BB1_53 Depth=1
	movq	-120(%rbp), %rax
	movl	48(%rax), %eax
.LBB1_139:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%eax, -196(%rbp)
	movq	-120(%rbp), %rax
	cmpl	$0, 52(%rax)
	je	.LBB1_141
# BB#140:                               #   in Loop: Header=BB1_53 Depth=1
	movq	-120(%rbp), %rax
	movl	56(%rax), %edx
.LBB1_141:                              #   in Loop: Header=BB1_53 Depth=1
	movl	%edx, -200(%rbp)
	movq	-56(%rbp), %rax
	movl	56(%rax), %edi
	movl	-196(%rbp), %esi
	movq	-112(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, %ebx
	movl	-196(%rbp), %esi
	movl	-200(%rbp), %edx
	movq	-112(%rbp), %rcx
	addq	$44, %rcx
	xorl	%edi, %edi
	callq	MinGap
	subl	%eax, %ebx
	movl	%ebx, -156(%rbp)
	jmp	.LBB1_143
	.align	16, 0x90
.LBB1_142:                              #   in Loop: Header=BB1_53 Depth=1
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -156(%rbp)
.LBB1_143:                              #   in Loop: Header=BB1_53 Depth=1
	movl	-64(%rbp), %eax
	cmpl	$153, %eax
	je	.LBB1_148
# BB#144:                               #   in Loop: Header=BB1_53 Depth=1
	cmpl	$152, %eax
	jne	.LBB1_145
# BB#147:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-152(%rbp), %eax
	addl	%eax, -28(%rbp)
	movl	-156(%rbp), %eax
	jmp	.LBB1_149
	.align	16, 0x90
.LBB1_148:                              #   in Loop: Header=BB1_53 Depth=1
	movl	-152(%rbp), %eax
	addl	-156(%rbp), %eax
	jmp	.LBB1_149
	.align	16, 0x90
.LBB1_145:                              #   in Loop: Header=BB1_53 Depth=1
	cmpl	$151, %eax
	jne	.LBB1_150
# BB#146:                               #   in Loop: Header=BB1_53 Depth=1
	movl	-152(%rbp), %eax
	addl	-156(%rbp), %eax
	addl	%eax, -28(%rbp)
	decl	-36(%rbp)
	jmp	.LBB1_53
.LBB1_150:                              #   in Loop: Header=BB1_53 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_53
.LBB1_151:
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-16(%rbp), %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	BreakTable, .Lfunc_end1-BreakTable
	.cfi_endproc

	.align	16, 0x90
	.type	BreakJoinedGroup,@function
BreakJoinedGroup:                       # @BreakJoinedGroup
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp13:
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
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_14:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB2_15
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_3 Depth=2
	movq	-64(%rbp), %rax
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_4
# BB#5:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB2_14
# BB#6:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB2_14
# BB#7:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	-84(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB2_9
# BB#8:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movl	48(%rax), %eax
	jmp	.LBB2_10
.LBB2_9:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-84(%rbp), %eax
.LBB2_10:                               #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -84(%rbp)
	movl	-88(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB2_12
# BB#11:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movl	56(%rax), %eax
	jmp	.LBB2_13
.LBB2_12:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-88(%rbp), %eax
.LBB2_13:                               #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -88(%rbp)
	jmp	.LBB2_14
.LBB2_15:
	movl	-84(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB2_17
# BB#16:
	movl	-84(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB2_18
.LBB2_17:
	movl	$0, -76(%rbp)
.LBB2_18:
	movl	$0, -80(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	subl	-80(%rbp), %ecx
	cmpl	%ecx, (%rax)
	jge	.LBB2_20
# BB#19:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	jmp	.LBB2_21
.LBB2_20:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	subl	-80(%rbp), %eax
.LBB2_21:
	movl	%eax, -104(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	subl	-76(%rbp), %ecx
	cmpl	%ecx, 8(%rax)
	jge	.LBB2_23
# BB#22:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB2_24
.LBB2_23:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	subl	-76(%rbp), %eax
.LBB2_24:
	movl	%eax, -96(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_31
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
	jge	.LBB2_27
# BB#26:
	movl	-104(%rbp), %eax
	jmp	.LBB2_28
.LBB2_31:
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
	jmp	.LBB2_32
.LBB2_27:
	movl	-100(%rbp), %eax
	subl	-80(%rbp), %eax
.LBB2_28:
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	subl	-76(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jge	.LBB2_30
# BB#29:
	movl	-96(%rbp), %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB2_32
.LBB2_30:
	movl	-100(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, -96(%rbp)
.LBB2_32:
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-104(%rbp), %rbx
	jmp	.LBB2_33
	.align	16, 0x90
.LBB2_53:                               #   in Loop: Header=BB2_33 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB2_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_35 Depth 2
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB2_54
# BB#34:                                #   in Loop: Header=BB2_33 Depth=1
	movq	-72(%rbp), %rax
	jmp	.LBB2_35
	.align	16, 0x90
.LBB2_36:                               #   in Loop: Header=BB2_35 Depth=2
	movq	-64(%rbp), %rax
.LBB2_35:                               #   Parent Loop BB2_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_36
# BB#37:                                #   in Loop: Header=BB2_33 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB2_53
# BB#38:                                #   in Loop: Header=BB2_33 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB2_53
# BB#39:                                #   in Loop: Header=BB2_33 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB2_53
# BB#40:                                #   in Loop: Header=BB2_33 Depth=1
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	BreakObject
	movq	%rax, -64(%rbp)
	movl	-76(%rbp), %ecx
	cmpl	48(%rax), %ecx
	jge	.LBB2_42
# BB#41:                                #   in Loop: Header=BB2_33 Depth=1
	movq	-64(%rbp), %rax
	movl	48(%rax), %eax
	jmp	.LBB2_43
.LBB2_42:                               #   in Loop: Header=BB2_33 Depth=1
	movl	-76(%rbp), %eax
.LBB2_43:                               #   in Loop: Header=BB2_33 Depth=1
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB2_45
# BB#44:                                #   in Loop: Header=BB2_33 Depth=1
	movq	-64(%rbp), %rax
	movl	56(%rax), %eax
	jmp	.LBB2_46
.LBB2_45:                               #   in Loop: Header=BB2_33 Depth=1
	movl	-80(%rbp), %eax
.LBB2_46:                               #   in Loop: Header=BB2_33 Depth=1
	movl	%eax, -80(%rbp)
	movl	-100(%rbp), %ecx
	subl	%eax, %ecx
	cmpl	%ecx, -104(%rbp)
	jge	.LBB2_48
# BB#47:                                #   in Loop: Header=BB2_33 Depth=1
	movl	-104(%rbp), %eax
	jmp	.LBB2_49
.LBB2_48:                               #   in Loop: Header=BB2_33 Depth=1
	movl	-100(%rbp), %eax
	subl	-80(%rbp), %eax
.LBB2_49:                               #   in Loop: Header=BB2_33 Depth=1
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	subl	-76(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jge	.LBB2_51
# BB#50:                                #   in Loop: Header=BB2_33 Depth=1
	movl	-96(%rbp), %eax
	jmp	.LBB2_52
.LBB2_51:                               #   in Loop: Header=BB2_33 Depth=1
	movl	-100(%rbp), %eax
	subl	-76(%rbp), %eax
.LBB2_52:                               #   in Loop: Header=BB2_33 Depth=1
	movl	%eax, -96(%rbp)
	jmp	.LBB2_53
.LBB2_54:
	movl	-76(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB2_57
# BB#55:
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jg	.LBB2_57
# BB#56:
	movl	-80(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB2_63
.LBB2_57:
	cmpq	$0, -32(%rbp)
	je	.LBB2_59
# BB#58:
	movq	-32(%rbp), %r8
	addq	$32, %r8
	jmp	.LBB2_62
.LBB2_59:
	cmpq	$0, -64(%rbp)
	je	.LBB2_61
# BB#60:
	movq	-64(%rbp), %r8
	addq	$32, %r8
	jmp	.LBB2_62
.LBB2_61:
	movq	no_fpos(%rip), %r8
.LBB2_62:
	movl	$13, %edi
	movl	$1, %esi
	movl	$.L.str.27, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_63:
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
.Lfunc_end2:
	.size	BreakJoinedGroup, .Lfunc_end2-BreakJoinedGroup
	.cfi_endproc

	.align	16, 0x90
	.type	BreakVcat,@function
BreakVcat:                              # @BreakVcat
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$88, %rsp
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB3_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_2:
	movl	$8388607, -104(%rbp)    # imm = 0x7FFFFF
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	8(%rax), %ecx
	jge	.LBB3_4
# BB#3:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	jmp	.LBB3_5
.LBB3_4:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
.LBB3_5:
	movl	%eax, -100(%rbp)
	movl	$8388607, -96(%rbp)     # imm = 0x7FFFFF
	movl	$0, -108(%rbp)
	movl	$0, -84(%rbp)
	movq	$0, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	-104(%rbp), %r14
	leaq	-76(%rbp), %r15
	leaq	-80(%rbp), %rbx
	jmp	.LBB3_6
	.align	16, 0x90
.LBB3_34:                               #   in Loop: Header=BB3_6 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB3_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB3_35
# BB#7:                                 #   in Loop: Header=BB3_6 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB3_8
	.align	16, 0x90
.LBB3_9:                                #   in Loop: Header=BB3_8 Depth=2
	movq	-48(%rbp), %rax
.LBB3_8:                                #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_9
# BB#10:                                #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB3_12
# BB#11:                                #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	jl	.LBB3_34
.LBB3_12:                               #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB3_24
# BB#13:                                #   in Loop: Header=BB3_6 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB3_15
# BB#14:                                #   in Loop: Header=BB3_6 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_15:                               #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB3_34
# BB#16:                                #   in Loop: Header=BB3_6 Depth=1
	movl	-76(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jg	.LBB3_19
# BB#17:                                #   in Loop: Header=BB3_6 Depth=1
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jg	.LBB3_19
# BB#18:                                #   in Loop: Header=BB3_6 Depth=1
	movl	-80(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jle	.LBB3_20
.LBB3_19:                               #   in Loop: Header=BB3_6 Depth=1
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	movq	%rbx, %r9
	callq	BreakJoinedGroup
.LBB3_20:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$1, -108(%rbp)
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	cmpl	%eax, -84(%rbp)
	jge	.LBB3_22
# BB#21:                                #   in Loop: Header=BB3_6 Depth=1
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	jmp	.LBB3_23
	.align	16, 0x90
.LBB3_24:                               #   in Loop: Header=BB3_6 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB3_25
# BB#26:                                #   in Loop: Header=BB3_6 Depth=1
	movl	-76(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB3_28
# BB#27:                                #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	48(%rax), %eax
	jmp	.LBB3_29
.LBB3_25:                               #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB3_33
.LBB3_28:                               #   in Loop: Header=BB3_6 Depth=1
	movl	-76(%rbp), %eax
.LBB3_29:                               #   in Loop: Header=BB3_6 Depth=1
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB3_31
# BB#30:                                #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	56(%rax), %eax
	jmp	.LBB3_32
.LBB3_31:                               #   in Loop: Header=BB3_6 Depth=1
	movl	-80(%rbp), %eax
.LBB3_32:                               #   in Loop: Header=BB3_6 Depth=1
	movl	%eax, -80(%rbp)
	movq	-48(%rbp), %rax
	movl	56(%rax), %eax
	movq	-72(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jle	.LBB3_34
.LBB3_33:                               #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB3_34
.LBB3_22:                               #   in Loop: Header=BB3_6 Depth=1
	movl	-84(%rbp), %eax
.LBB3_23:                               #   in Loop: Header=BB3_6 Depth=1
	movl	%eax, -84(%rbp)
	movq	$0, -64(%rbp)
	jmp	.LBB3_34
.LBB3_35:
	cmpq	$0, -64(%rbp)
	jne	.LBB3_37
# BB#36:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.30, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_37:
	cmpl	$0, -108(%rbp)
	je	.LBB3_47
# BB#38:
	movl	-76(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jg	.LBB3_41
# BB#39:
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jg	.LBB3_41
# BB#40:
	movl	-80(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jle	.LBB3_42
.LBB3_41:
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	leaq	-76(%rbp), %r8
	leaq	-80(%rbp), %r9
	callq	BreakJoinedGroup
.LBB3_42:
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	cmpl	%eax, -84(%rbp)
	jge	.LBB3_44
# BB#43:
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	jmp	.LBB3_45
.LBB3_47:
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rcx
	leaq	-76(%rbp), %r8
	leaq	-80(%rbp), %r9
	callq	BreakJoinedGroup
	movl	-76(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	-80(%rbp), %eax
	jmp	.LBB3_48
.LBB3_44:
	movl	-84(%rbp), %eax
.LBB3_45:
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 48(%rax)
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -84(%rbp)     # imm = 0x7FFFFF
	jg	.LBB3_48
# BB#46:
	movl	-84(%rbp), %eax
.LBB3_48:
	movq	-32(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-32(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	BreakVcat, .Lfunc_end3-BreakVcat
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
