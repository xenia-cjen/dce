	.text
	.file	"z11.opt"
	.globl	SpaceChange
	.align	16, 0x90
	.type	SpaceChange,@function
SpaceChange:                            # @SpaceChange
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movzbl	32(%rsi), %eax
	leal	-11(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB0_1
# BB#8:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_19
# BB#9:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	changespace
	jmp	.LBB0_19
.LBB0_1:
	cmpl	$5, %eax
	je	.LBB0_19
# BB#2:
	cmpl	$17, %eax
	jne	.LBB0_18
# BB#3:
	movq	-16(%rbp), %rax
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB0_19
# BB#5:                                 #   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
.LBB0_6:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_7
# BB#10:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_17
# BB#11:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$5, %eax
	je	.LBB0_17
# BB#12:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_14
# BB#13:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_17
# BB#15:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	changespace
	movq	-24(%rbp), %rax
	jmp	.LBB0_4
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$11, %edi
	movl	$3, %esi
	movl	$.L.str.1, %edx
	movl	$2, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_17
.LBB0_18:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$11, %edi
	movl	$4, %esi
	movl	$.L.str.1, %edx
	movl	$2, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_19:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	SpaceChange, .Lfunc_end0-SpaceChange
	.cfi_endproc

	.align	16, 0x90
	.type	changespace,@function
changespace:                            # @changespace
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movzbl	32(%rsi), %eax
	cmpl	$11, %eax
	je	.LBB1_3
# BB#1:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB1_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_3:
	movq	-16(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$97, %eax
	jl	.LBB1_16
# BB#4:
	movq	-16(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$122, %eax
	jg	.LBB1_16
# BB#5:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.9, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_6
# BB#7:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.10, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_8
# BB#9:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.11, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_10
# BB#11:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_12
# BB#13:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_14
# BB#15:
	movq	-16(%rbp), %rax
	leaq	32(%rax), %r8
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$11, %edi
	movl	$1, %esi
	movl	$.L.str.14, %edx
	movl	$2, %ecx
	movl	$.L.str.2, %r9d
	jmp	.LBB1_19
.LBB1_16:
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	callq	GetGap
	cmpl	$158, -28(%rbp)
	je	.LBB1_20
# BB#17:
	movzwl	-24(%rbp), %eax
	shrl	$10, %eax
	andl	$7, %eax
	movq	-8(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	shrl	$10, %ecx
	andl	$7, %ecx
	cmpl	%ecx, %eax
	je	.LBB1_20
# BB#18:
	movq	-16(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$11, %edi
	movl	$2, %esi
	movl	$.L.str.15, %edx
	movl	$2, %ecx
.LBB1_19:
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_27
.LBB1_20:
	movzwl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzwl	4(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 4(%rcx)
	movzwl	-24(%rbp), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-8(%rbp), %rcx
	movzwl	4(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 4(%rcx)
	cmpl	$158, -28(%rbp)
	jne	.LBB1_22
# BB#21:
	movswl	-22(%rbp), %eax
	jmp	.LBB1_26
.LBB1_22:
	cmpl	$159, -28(%rbp)
	jne	.LBB1_24
# BB#23:
	movq	-8(%rbp), %rax
	movswl	6(%rax), %ecx
	movswl	-22(%rbp), %eax
	addl	%ecx, %eax
	jmp	.LBB1_26
.LBB1_24:
	movq	-8(%rbp), %rax
	movswl	6(%rax), %ecx
	movswl	-22(%rbp), %edx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	js	.LBB1_26
# BB#25:
	movq	-8(%rbp), %rax
	movswl	6(%rax), %eax
	movswl	-22(%rbp), %ecx
	subl	%ecx, %eax
.LBB1_26:
	movq	-8(%rbp), %rcx
	movw	%ax, 6(%rcx)
.LBB1_27:
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB1_6:
	movq	-8(%rbp), %rax
	andb	$-113, (%rax)
	jmp	.LBB1_27
.LBB1_8:
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	andb	$-113, %cl
	orb	$16, %cl
	movb	%cl, (%rax)
	jmp	.LBB1_27
.LBB1_10:
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	andb	$-113, %cl
	orb	$32, %cl
	movb	%cl, (%rax)
	jmp	.LBB1_27
.LBB1_12:
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	andb	$-113, %cl
	orb	$48, %cl
	movb	%cl, (%rax)
	jmp	.LBB1_27
.LBB1_14:
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	andb	$-113, %cl
	orb	$64, %cl
	movb	%cl, (%rax)
	jmp	.LBB1_27
.Lfunc_end1:
	.size	changespace, .Lfunc_end1-changespace
	.cfi_endproc

	.globl	BreakChange
	.align	16, 0x90
	.type	BreakChange,@function
BreakChange:                            # @BreakChange
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movzbl	32(%rsi), %eax
	leal	-11(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB2_1
# BB#8:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_19
# BB#9:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	changebreak
	jmp	.LBB2_19
.LBB2_1:
	cmpl	$5, %eax
	je	.LBB2_19
# BB#2:
	cmpl	$17, %eax
	jne	.LBB2_18
# BB#3:
	movq	-16(%rbp), %rax
	jmp	.LBB2_4
	.align	16, 0x90
.LBB2_17:                               #   in Loop: Header=BB2_4 Depth=1
	movq	-24(%rbp), %rax
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB2_19
# BB#5:                                 #   in Loop: Header=BB2_4 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB2_6
	.align	16, 0x90
.LBB2_7:                                #   in Loop: Header=BB2_6 Depth=2
	movq	-32(%rbp), %rax
.LBB2_6:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_7
# BB#10:                                #   in Loop: Header=BB2_4 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB2_17
# BB#11:                                #   in Loop: Header=BB2_4 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$5, %eax
	je	.LBB2_17
# BB#12:                                #   in Loop: Header=BB2_4 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_14
# BB#13:                                #   in Loop: Header=BB2_4 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_16
.LBB2_14:                               #   in Loop: Header=BB2_4 Depth=1
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_17
# BB#15:                                #   in Loop: Header=BB2_4 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	changebreak
	movq	-24(%rbp), %rax
	jmp	.LBB2_4
.LBB2_16:                               #   in Loop: Header=BB2_4 Depth=1
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$11, %edi
	movl	$7, %esi
	movl	$.L.str.1, %edx
	movl	$2, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_17
.LBB2_18:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$11, %edi
	movl	$8, %esi
	movl	$.L.str.1, %edx
	movl	$2, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_19:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	BreakChange, .Lfunc_end2-BreakChange
	.cfi_endproc

	.align	16, 0x90
	.type	changebreak,@function
changebreak:                            # @changebreak
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movzbl	64(%rsi), %eax
	cmpl	$97, %eax
	jl	.LBB3_36
# BB#1:
	movq	-16(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$122, %eax
	jg	.LBB3_36
# BB#2:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_3
# BB#4:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.17, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_5
# BB#6:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.18, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_7
# BB#8:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.19, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_9
# BB#10:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.20, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_11
# BB#13:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.21, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_14
# BB#16:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.22, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_17
# BB#19:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.23, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_20
# BB#21:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.24, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_22
# BB#23:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.25, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_24
# BB#25:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.26, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_26
# BB#27:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.27, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_28
# BB#29:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.28, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_30
# BB#31:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.29, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_32
# BB#33:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.30, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_34
# BB#35:
	movq	-16(%rbp), %rax
	leaq	32(%rax), %r8
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$11, %edi
	movl	$5, %esi
	movl	$.L.str.14, %edx
	movl	$2, %ecx
	movl	$.L.str.3, %r9d
	jmp	.LBB3_39
.LBB3_36:
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	callq	GetGap
	cmpl	$158, -28(%rbp)
	je	.LBB3_40
# BB#37:
	movzwl	-24(%rbp), %eax
	shrl	$10, %eax
	andl	$7, %eax
	movq	-8(%rbp), %rcx
	movzwl	(%rcx), %ecx
	shrl	$10, %ecx
	andl	$7, %ecx
	cmpl	%ecx, %eax
	je	.LBB3_40
# BB#38:
	movq	-16(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$11, %edi
	movl	$6, %esi
	movl	$.L.str.31, %edx
	movl	$2, %ecx
.LBB3_39:
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_47
.LBB3_40:
	movzwl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzwl	(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, (%rcx)
	movzwl	-24(%rbp), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-8(%rbp), %rcx
	movzwl	(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, (%rcx)
	cmpl	$158, -28(%rbp)
	jne	.LBB3_42
# BB#41:
	movswl	-22(%rbp), %eax
	jmp	.LBB3_46
.LBB3_42:
	cmpl	$159, -28(%rbp)
	jne	.LBB3_44
# BB#43:
	movq	-8(%rbp), %rax
	movswl	2(%rax), %ecx
	movswl	-22(%rbp), %eax
	addl	%ecx, %eax
	jmp	.LBB3_46
.LBB3_44:
	movq	-8(%rbp), %rax
	movswl	2(%rax), %ecx
	movswl	-22(%rbp), %edx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	js	.LBB3_46
# BB#45:
	movq	-8(%rbp), %rax
	movswl	2(%rax), %eax
	movswl	-22(%rbp), %ecx
	subl	%ecx, %eax
.LBB3_46:
	movq	-8(%rbp), %rcx
	movw	%ax, 2(%rcx)
.LBB3_47:
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB3_3:
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-4, %cl
	orb	$2, %cl
	movb	%cl, 4(%rax)
	jmp	.LBB3_47
.LBB3_5:
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-4, %cl
	orb	$1, %cl
	movb	%cl, 4(%rax)
	jmp	.LBB3_47
.LBB3_7:
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-13, %cl
	orb	$8, %cl
	movb	%cl, 4(%rax)
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-113, %cl
	orb	$16, %cl
	movb	%cl, 4(%rax)
	jmp	.LBB3_47
.LBB3_9:
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-13, %cl
	orb	$8, %cl
	movb	%cl, 4(%rax)
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-113, %cl
	orb	$32, %cl
	movb	%cl, 4(%rax)
	jmp	.LBB3_47
.LBB3_11:
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-13, %cl
	orb	$8, %cl
.LBB3_12:
	movb	%cl, 4(%rax)
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-113, %cl
	orb	$64, %cl
	movb	%cl, 4(%rax)
	jmp	.LBB3_47
.LBB3_14:
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-13, %cl
	orb	$8, %cl
.LBB3_15:
	movb	%cl, 4(%rax)
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-113, %cl
	orb	$80, %cl
	movb	%cl, 4(%rax)
	jmp	.LBB3_47
.LBB3_17:
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-13, %cl
	orb	$8, %cl
.LBB3_18:
	movb	%cl, 4(%rax)
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-113, %cl
	orb	$96, %cl
	movb	%cl, 4(%rax)
	jmp	.LBB3_47
.LBB3_20:
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-13, %cl
	orb	$8, %cl
	movb	%cl, 4(%rax)
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-113, %cl
	orb	$48, %cl
	movb	%cl, 4(%rax)
	jmp	.LBB3_47
.LBB3_22:
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-13, %cl
	orb	$4, %cl
	jmp	.LBB3_12
.LBB3_24:
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-13, %cl
	orb	$4, %cl
	jmp	.LBB3_15
.LBB3_26:
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	andb	$-13, %cl
	orb	$4, %cl
	jmp	.LBB3_18
.LBB3_28:
	movq	-8(%rbp), %rax
	orl	$-2147483648, 12(%rax)  # imm = 0xFFFFFFFF80000000
	jmp	.LBB3_47
.LBB3_30:
	movq	-8(%rbp), %rax
	andl	$2147483647, 12(%rax)   # imm = 0x7FFFFFFF
	jmp	.LBB3_47
.LBB3_32:
	movq	-8(%rbp), %rax
	orl	$1073741824, 12(%rax)   # imm = 0x40000000
	jmp	.LBB3_47
.LBB3_34:
	movq	-8(%rbp), %rax
	andl	$-1073741825, 12(%rax)  # imm = 0xFFFFFFFFBFFFFFFF
	jmp	.LBB3_47
.Lfunc_end3:
	.size	changebreak, .Lfunc_end3-changebreak
	.cfi_endproc

	.globl	YUnitChange
	.align	16, 0x90
	.type	YUnitChange,@function
YUnitChange:                            # @YUnitChange
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	GetGap
	movzwl	-24(%rbp), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.LBB4_2
# BB#1:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$11, %edi
	movl	$9, %esi
	movl	$.L.str.4, %edx
	movl	$2, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_9
.LBB4_2:
	cmpl	$158, -28(%rbp)
	jne	.LBB4_4
# BB#3:
	movw	-22(%rbp), %ax
	movq	-8(%rbp), %rcx
	movw	%ax, 8(%rcx)
	jmp	.LBB4_9
.LBB4_4:
	cmpl	$159, -28(%rbp)
	jne	.LBB4_6
# BB#5:
	movzwl	-22(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzwl	8(%rcx), %edx
	addl	%eax, %edx
	movw	%dx, 8(%rcx)
	jmp	.LBB4_9
.LBB4_6:
	movq	-8(%rbp), %rax
	movswl	8(%rax), %ecx
	movswl	-22(%rbp), %edx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	js	.LBB4_8
# BB#7:
	movq	-8(%rbp), %rax
	movswl	8(%rax), %eax
	movswl	-22(%rbp), %ecx
	subl	%ecx, %eax
.LBB4_8:
	movq	-8(%rbp), %rcx
	movw	%ax, 8(%rcx)
.LBB4_9:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	YUnitChange, .Lfunc_end4-YUnitChange
	.cfi_endproc

	.globl	ZUnitChange
	.align	16, 0x90
	.type	ZUnitChange,@function
ZUnitChange:                            # @ZUnitChange
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	GetGap
	movzwl	-24(%rbp), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.LBB5_2
# BB#1:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$11, %edi
	movl	$10, %esi
	movl	$.L.str.4, %edx
	movl	$2, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_9
.LBB5_2:
	cmpl	$158, -28(%rbp)
	jne	.LBB5_4
# BB#3:
	movw	-22(%rbp), %ax
	movq	-8(%rbp), %rcx
	movw	%ax, 10(%rcx)
	jmp	.LBB5_9
.LBB5_4:
	cmpl	$159, -28(%rbp)
	jne	.LBB5_6
# BB#5:
	movzwl	-22(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzwl	10(%rcx), %edx
	addl	%eax, %edx
	movw	%dx, 10(%rcx)
	jmp	.LBB5_9
.LBB5_6:
	movq	-8(%rbp), %rax
	movswl	10(%rax), %ecx
	movswl	-22(%rbp), %edx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	js	.LBB5_8
# BB#7:
	movq	-8(%rbp), %rax
	movswl	10(%rax), %eax
	movswl	-22(%rbp), %ecx
	subl	%ecx, %eax
.LBB5_8:
	movq	-8(%rbp), %rcx
	movw	%ax, 10(%rcx)
.LBB5_9:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ZUnitChange, .Lfunc_end5-ZUnitChange
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"invalid left parameter of %s"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"@Space"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"@Break"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"this unit not allowed with %s symbol"
	.size	.L.str.4, 37

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"@YUnit"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"@ZUnit"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"assert failed in %s"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"changespace: type(x)!"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"lout"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"compress"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"separate"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"troff"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"tex"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"unknown option to %s symbol (%s)"
	.size	.L.str.14, 33

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"spacing %s is not compatible with current spacing"
	.size	.L.str.15, 50

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"hyphen"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"nohyphen"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"adjust"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"outdent"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"ragged"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"cragged"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"rragged"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"oragged"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"lines"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"clines"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"rlines"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"unbreakablefirst"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"breakablefirst"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"unbreakablelast"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"breakablelast"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"line spacing %s is not compatible with current spacing"
	.size	.L.str.31, 55


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
