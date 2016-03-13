	.text
	.file	"z06.opt"
	.globl	OptimizeCase
	.align	16, 0x90
	.type	OptimizeCase,@function
OptimizeCase:                           # @OptimizeCase
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
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movzbl	32(%rdi), %eax
	cmpl	$52, %eax
	je	.LBB0_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_2:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rax
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_4
# BB#5:
	movl	$1, -68(%rbp)
	movq	$0, -56(%rbp)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$55, %eax
	jne	.LBB0_7
# BB#6:
	movq	-40(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	callq	check_yield
	jmp	.LBB0_22
.LBB0_7:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB0_21
# BB#8:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	-56(%rbp), %r14
	leaq	-68(%rbp), %rbx
	jmp	.LBB0_9
	.align	16, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB0_10
# BB#11:                                #   in Loop: Header=BB0_9 Depth=1
	cmpl	$0, -68(%rbp)
	setne	%al
	jmp	.LBB0_12
	.align	16, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=1
	xorl	%eax, %eax
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	testb	%al, %al
	je	.LBB0_22
# BB#13:                                #   in Loop: Header=BB0_9 Depth=1
	movq	-32(%rbp), %rax
	jmp	.LBB0_14
	.align	16, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-48(%rbp), %rax
.LBB0_14:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_15
# BB#16:                                #   in Loop: Header=BB0_9 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_20
# BB#17:                                #   in Loop: Header=BB0_9 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$55, %eax
	jne	.LBB0_19
# BB#18:                                #   in Loop: Header=BB0_9 Depth=1
	movq	-48(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	check_yield
	jmp	.LBB0_20
	.align	16, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$0, -68(%rbp)
	movq	$0, -56(%rbp)
	jmp	.LBB0_20
.LBB0_21:
	movl	$0, -68(%rbp)
	movq	$0, -56(%rbp)
.LBB0_22:
	cmpl	$0, -68(%rbp)
	je	.LBB0_36
# BB#23:
	cmpq	$0, -56(%rbp)
	je	.LBB0_36
# BB#24:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_25
	.align	16, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_25 Depth=1
	movq	-64(%rbp), %rax
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_26
# BB#27:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_29
# BB#28:
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
.LBB0_29:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_31
# BB#30:
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB0_31:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_33
# BB#32:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_34
.LBB0_33:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_35
.LBB0_36:
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_37
.LBB0_34:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_35:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-24(%rbp), %rdi
	callq	DisposeObject
.LBB0_37:
	movq	-64(%rbp), %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	OptimizeCase, .Lfunc_end0-OptimizeCase
	.cfi_endproc

	.align	16, 0x90
	.type	check_yield,@function
check_yield:                            # @check_yield
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp7:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_2
# BB#3:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_5
# BB#4:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_9
.LBB1_5:
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movq	BackEnd(%rip), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_7
# BB#6:
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.57, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_24
.LBB1_7:
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_24
# BB#8:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_24
.LBB1_9:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB1_23
# BB#10:
	movq	-32(%rbp), %rax
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_22:                               #   in Loop: Header=BB1_11 Depth=1
	movq	-40(%rbp), %rax
.LBB1_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB1_24
# BB#12:                                #   in Loop: Header=BB1_11 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_13 Depth=2
	movq	-48(%rbp), %rax
.LBB1_13:                               #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_14
# BB#15:                                #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_22
# BB#16:                                #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_18
# BB#17:                                #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_23
.LBB1_18:                               #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rdi
	addq	$64, %rdi
	movq	BackEnd(%rip), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_20
# BB#19:                                #   in Loop: Header=BB1_11 Depth=1
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.57, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_22
.LBB1_20:                               #   in Loop: Header=BB1_11 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_22
# BB#21:                                #   in Loop: Header=BB1_11 Depth=1
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_22
.LBB1_23:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB1_24:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	check_yield, .Lfunc_end1-check_yield
	.cfi_endproc

	.globl	SetScope
	.align	16, 0x90
	.type	SetScope,@function
SetScope:                               # @SetScope
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB2_2
# BB#1:
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	je	.LBB2_3
.LBB2_2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_3:
	movq	-8(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_20
# BB#4:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_5
	.align	16, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_5 Depth=1
	movq	-40(%rbp), %rax
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_6
# BB#7:
	movq	-40(%rbp), %rax
	cmpq	%rax, (%rax)
	jne	.LBB2_9
# BB#8:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_9:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	cmpq	8(%rax), %rcx
	je	.LBB2_11
# BB#10:
	movq	-8(%rbp), %rax
	jmp	.LBB2_12
.LBB2_11:
	movq	-40(%rbp), %rax
.LBB2_12:
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_14:                               #   in Loop: Header=BB2_13 Depth=1
	movq	-48(%rbp), %rax
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_14
# BB#15:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	je	.LBB2_17
# BB#16:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_17:
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%edx, %edx
	callq	SetScope
	movb	$1, %al
	cmpl	$0, -20(%rbp)
	jne	.LBB2_19
# BB#18:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	$0, 112(%rax)
	setne	%al
.LBB2_19:
	movzbl	%al, %edx
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	xorl	%esi, %esi
	callq	PushScope
	movq	-16(%rbp), %rax
	incl	(%rax)
.LBB2_20:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	SetScope, .Lfunc_end2-SetScope
	.cfi_endproc

	.globl	InitParser
	.align	16, 0x90
	.type	InitParser,@function
InitParser:                             # @InitParser
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	strlen
	cmpq	$2048, %rax             # imm = 0x800
	jb	.LBB3_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$6, %edi
	movl	$10, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_2:
	movq	-8(%rbp), %rsi
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	callq	MakeWord
	movq	%rax, cross_name(%rip)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB3_4
# BB#3:
	movq	no_fpos(%rip), %rsi
	movq	StartSym(%rip), %r9
	movl	$110, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$100, %r8d
	callq	NewToken
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB3_5
.LBB3_4:
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	InitParser, .Lfunc_end3-InitParser
	.cfi_endproc

	.globl	Parse
	.align	16, 0x90
	.type	Parse,@function
Parse:                                  # @Parse
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movl	ttop(%rip), %eax
	movl	%eax, -168(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_3
# BB#1:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	je	.LBB4_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_3:
	movl	$0, -172(%rbp)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_24
# BB#4:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_6
# BB#5:
	movl	$100, -188(%rbp)
	movl	$7, -192(%rbp)
	jmp	.LBB4_10
.LBB4_6:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_8
# BB#7:
	cmpl	$2, -172(%rbp)
	jne	.LBB4_9
.LBB4_8:
	movl	$101, -188(%rbp)
	movl	$7, -192(%rbp)
	jmp	.LBB4_10
.LBB4_9:
	movl	$101, -188(%rbp)
	movl	$103, -192(%rbp)
	jmp	.LBB4_10
	.align	16, 0x90
.LBB4_14:                               #   in Loop: Header=BB4_10 Depth=1
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_11
# BB#12:                                #   in Loop: Header=BB4_10 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-192(%rbp), %eax
	setge	%al
	jmp	.LBB4_13
	.align	16, 0x90
.LBB4_11:                               #   in Loop: Header=BB4_10 Depth=1
	xorl	%eax, %eax
.LBB4_13:                               #   in Loop: Header=BB4_10 Depth=1
	testb	%al, %al
	jne	.LBB4_14
# BB#15:
	cmpl	$0, -172(%rbp)
	je	.LBB4_24
# BB#16:
	movslq	-188(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_18
# BB#17:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_21
.LBB4_18:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_19
# BB#20:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_21
.LBB4_19:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_21:
	movb	-188(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-192(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_23
# BB#22:
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_24
.LBB4_23:
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_24:
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_26
# BB#25:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_27
.LBB4_26:
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_27:
	movl	$0, -172(%rbp)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB4_87
# BB#28:
	movq	-64(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	movl	$143, %edx
	callq	ReadDefinitions
	callq	ErrorSeen
	testl	%eax, %eax
	je	.LBB4_30
# BB#29:
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$14, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_30:
	movq	-64(%rbp), %rax
	cmpq	StartSym(%rip), %rax
	jne	.LBB4_87
# BB#31:
	movzbl	zz_lengths+82(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_33
# BB#32:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_36
.LBB4_33:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_34
# BB#35:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_36
.LBB4_34:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_36:
	movq	zz_hold(%rip), %rax
	movb	$82, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -112(%rbp)
	leaq	-80(%rbp), %r13
	leaq	-224(%rbp), %r14
	leaq	-200(%rbp), %r15
	leaq	-208(%rbp), %r12
	jmp	.LBB4_37
	.align	16, 0x90
.LBB4_71:                               #   in Loop: Header=BB4_37 Depth=1
	callq	LexGetToken
	movq	%rax, -80(%rbp)
.LBB4_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_56 Depth 2
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB4_46
# BB#38:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.10, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB4_44
# BB#39:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.11, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB4_44
# BB#40:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB4_44
# BB#41:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB4_44
# BB#42:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.14, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB4_44
# BB#43:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB4_44
	.align	16, 0x90
.LBB4_46:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$106, %eax
	jne	.LBB4_72
# BB#47:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_49
# BB#48:                                #   in Loop: Header=BB4_37 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_50
.LBB4_49:                               #   in Loop: Header=BB4_37 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_51
	.align	16, 0x90
.LBB4_44:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-64(%rbp), %rsi
	movl	$143, %edx
	movq	%r13, %rdi
	callq	ReadDefinitions
	callq	ErrorSeen
	testl	%eax, %eax
	je	.LBB4_37
# BB#45:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$39, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_37
	.align	16, 0x90
.LBB4_72:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$114, %eax
	je	.LBB4_74
# BB#73:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$115, %eax
	jne	.LBB4_80
.LBB4_74:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %edi
	movq	-64(%rbp), %rsi
	callq	ReadPrependDef
	jmp	.LBB4_75
.LBB4_50:                               #   in Loop: Header=BB4_37 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_51:                               #   in Loop: Header=BB4_37 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_53
# BB#52:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.18, (%rsp)
	movl	$6, %edi
	movl	$15, %esi
	movl	$.L.str.16, %edx
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_53:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-64(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	callq	Parse
	movq	%rax, -120(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB4_55
# BB#54:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	jne	.LBB4_64
.LBB4_55:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB4_56
	.align	16, 0x90
.LBB4_57:                               #   in Loop: Header=BB4_56 Depth=2
	movq	-232(%rbp), %rax
.LBB4_56:                               #   Parent Loop BB4_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_57
# BB#58:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB4_63
# BB#59:                                #   in Loop: Header=BB4_37 Depth=1
	movq	$0, -200(%rbp)
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	CrossExpand
	movq	%rax, -120(%rbp)
	cmpq	$0, -200(%rbp)
	je	.LBB4_61
# BB#60:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.21, (%rsp)
	movl	$6, %edi
	movl	$16, %esi
	movl	$.L.str.19, %edx
	movl	$1, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_61:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-120(%rbp), %rdi
	callq	HuntCommandOptions
	movq	-208(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	AttachEnv
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	jmp	.LBB4_62
.LBB4_63:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$17, %esi
	jmp	.LBB4_69
.LBB4_80:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$116, %eax
	je	.LBB4_82
# BB#81:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$117, %eax
	jne	.LBB4_83
.LBB4_82:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %edi
	movq	-64(%rbp), %rsi
	callq	ReadDatabaseDef
.LBB4_75:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_77
# BB#76:                                #   in Loop: Header=BB4_37 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_78
.LBB4_77:                               #   in Loop: Header=BB4_37 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_79
.LBB4_64:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB4_68
# BB#65:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	$0, 112(%rax)
	je	.LBB4_67
# BB#66:                                #   in Loop: Header=BB4_37 Depth=1
	movq	-120(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movq	$.L.str.18, (%rsp)
	movl	$6, %edi
	movl	$18, %esi
	movl	$.L.str.23, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB4_67:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-120(%rbp), %rax
	movq	80(%rax), %rcx
	movq	%rax, 112(%rcx)
	movq	-120(%rbp), %rdi
	callq	HuntCommandOptions
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	AttachEnv
	movq	-120(%rbp), %rdi
	xorl	%esi, %esi
.LBB4_62:                               #   in Loop: Header=BB4_37 Depth=1
	callq	SetEnv
	movq	%rax, -112(%rbp)
	jmp	.LBB4_70
.LBB4_78:                               #   in Loop: Header=BB4_37 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_79:                               #   in Loop: Header=BB4_37 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_71
.LBB4_68:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$19, %esi
.LBB4_69:                               #   in Loop: Header=BB4_37 Depth=1
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_70:                               #   in Loop: Header=BB4_37 Depth=1
	movq	-120(%rbp), %rax
	movq	80(%rax), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	PushScope
	jmp	.LBB4_71
.LBB4_83:
	cmpl	$0, AllowCrossDb(%rip)
	je	.LBB4_85
# BB#84:
	movq	cross_name(%rip), %rsi
	addq	$64, %rsi
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	callq	MakeWord
	movq	%rax, %rdi
	callq	DbCreate
	movq	%rax, NewCrossDb(%rip)
	movq	cross_name(%rip), %rdi
	movl	InMemoryDbIndexes(%rip), %r8d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	DbLoad
	movq	%rax, OldCrossDb(%rip)
	jmp	.LBB4_86
.LBB4_85:
	movq	$0, NewCrossDb(%rip)
	movq	$0, OldCrossDb(%rip)
.LBB4_86:
	callq	FlattenUses
	movq	-112(%rbp), %rdi
	callq	TransferInit
	jmp	.LBB4_87
	.align	16, 0x90
.LBB4_437:                              #   in Loop: Header=BB4_87 Depth=1
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB4_87:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_414 Depth 2
                                        #     Child Loop BB4_428 Depth 2
                                        #     Child Loop BB4_379 Depth 2
                                        #     Child Loop BB4_1014 Depth 2
                                        #     Child Loop BB4_1029 Depth 2
                                        #     Child Loop BB4_1047 Depth 2
                                        #     Child Loop BB4_620 Depth 2
                                        #       Child Loop BB4_622 Depth 3
                                        #     Child Loop BB4_641 Depth 2
                                        #     Child Loop BB4_590 Depth 2
                                        #     Child Loop BB4_599 Depth 2
                                        #     Child Loop BB4_570 Depth 2
                                        #     Child Loop BB4_530 Depth 2
                                        #     Child Loop BB4_502 Depth 2
                                        #     Child Loop BB4_472 Depth 2
                                        #     Child Loop BB4_445 Depth 2
                                        #     Child Loop BB4_357 Depth 2
                                        #     Child Loop BB4_344 Depth 2
                                        #     Child Loop BB4_271 Depth 2
                                        #     Child Loop BB4_258 Depth 2
                                        #     Child Loop BB4_304 Depth 2
                                        #     Child Loop BB4_328 Depth 2
                                        #     Child Loop BB4_142 Depth 2
                                        #     Child Loop BB4_177 Depth 2
                                        #     Child Loop BB4_202 Depth 2
                                        #     Child Loop BB4_128 Depth 2
                                        #     Child Loop BB4_101 Depth 2
                                        #     Child Loop BB4_233 Depth 2
                                        #     Child Loop BB4_220 Depth 2
                                        #     Child Loop BB4_709 Depth 2
                                        #     Child Loop BB4_695 Depth 2
                                        #     Child Loop BB4_738 Depth 2
                                        #       Child Loop BB4_761 Depth 3
                                        #         Child Loop BB4_763 Depth 4
                                        #       Child Loop BB4_778 Depth 3
                                        #       Child Loop BB4_781 Depth 3
                                        #         Child Loop BB4_783 Depth 4
                                        #     Child Loop BB4_754 Depth 2
                                        #       Child Loop BB4_756 Depth 3
                                        #       Child Loop BB4_809 Depth 3
                                        #         Child Loop BB4_811 Depth 4
                                        #     Child Loop BB4_833 Depth 2
                                        #     Child Loop BB4_855 Depth 2
                                        #     Child Loop BB4_934 Depth 2
                                        #     Child Loop BB4_876 Depth 2
                                        #     Child Loop BB4_893 Depth 2
                                        #     Child Loop BB4_899 Depth 2
                                        #     Child Loop BB4_965 Depth 2
                                        #     Child Loop BB4_989 Depth 2
                                        #     Child Loop BB4_678 Depth 2
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-2, %eax
	cmpl	$115, %eax
	ja	.LBB4_1067
# BB#88:                                #   in Loop: Header=BB4_87 Depth=1
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_219:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$2, %eax
	jb	.LBB4_220
# BB#226:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_248
# BB#227:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_229
# BB#228:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -268(%rbp)
	movl	$7, -272(%rbp)
	jmp	.LBB4_233
.LBB4_222:                              #   in Loop: Header=BB4_220 Depth=2
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	movl	$1, -172(%rbp)
	.align	16, 0x90
.LBB4_220:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_221
# BB#224:                               #   in Loop: Header=BB4_220 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	40(%rcx), %ecx
	incl	%ecx
	cmpl	%ecx, %eax
	jl	.LBB4_248
# BB#225:                               #   in Loop: Header=BB4_220 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	jne	.LBB4_220
	jmp	.LBB4_147
	.align	16, 0x90
.LBB4_221:                              #   in Loop: Header=BB4_220 Depth=2
	movq	-80(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jle	.LBB4_222
# BB#223:                               #   in Loop: Header=BB4_220 Depth=2
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movl	$1, -172(%rbp)
	jmp	.LBB4_220
	.align	16, 0x90
.LBB4_1067:                             #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %rbx
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.55, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.56, %r9d
	jmp	.LBB4_437
	.align	16, 0x90
.LBB4_141:                              #   in Loop: Header=BB4_142 Depth=2
	movl	$1, -172(%rbp)
	jmp	.LBB4_142
.LBB4_140:                              #   in Loop: Header=BB4_142 Depth=2
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_141
	.align	16, 0x90
.LBB4_142:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_143
# BB#145:                               #   in Loop: Header=BB4_142 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	40(%rcx), %ecx
	cmpl	%ecx, %eax
	jl	.LBB4_150
# BB#146:                               #   in Loop: Header=BB4_142 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	jne	.LBB4_142
	jmp	.LBB4_147
	.align	16, 0x90
.LBB4_143:                              #   in Loop: Header=BB4_142 Depth=2
	movq	-80(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_140
# BB#144:                               #   in Loop: Header=BB4_142 Depth=2
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	jmp	.LBB4_141
	.align	16, 0x90
.LBB4_427:                              #   in Loop: Header=BB4_428 Depth=2
	movl	$1, -172(%rbp)
	jmp	.LBB4_428
.LBB4_426:                              #   in Loop: Header=BB4_428 Depth=2
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_427
	.align	16, 0x90
.LBB4_428:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_429
# BB#431:                               #   in Loop: Header=BB4_428 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	40(%rcx), %ecx
	cmpl	%ecx, %eax
	jl	.LBB4_433
# BB#432:                               #   in Loop: Header=BB4_428 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	jne	.LBB4_428
	jmp	.LBB4_147
	.align	16, 0x90
.LBB4_429:                              #   in Loop: Header=BB4_428 Depth=2
	movq	-80(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_426
# BB#430:                               #   in Loop: Header=BB4_428 Depth=2
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	jmp	.LBB4_427
.LBB4_435:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movl	$6, %edi
	movl	$26, %esi
	movl	$.L.str.37, %edx
.LBB4_436:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$1, %ecx
	jmp	.LBB4_437
.LBB4_229:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_231
# BB#230:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_232
.LBB4_231:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -268(%rbp)
	movl	$7, -272(%rbp)
	jmp	.LBB4_233
.LBB4_257:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$2, %eax
	jb	.LBB4_258
# BB#264:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_285
# BB#265:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_267
# BB#266:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -276(%rbp)
	movl	$7, -280(%rbp)
	jmp	.LBB4_271
.LBB4_260:                              #   in Loop: Header=BB4_258 Depth=2
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	movl	$1, -172(%rbp)
	.align	16, 0x90
.LBB4_258:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_259
# BB#262:                               #   in Loop: Header=BB4_258 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	40(%rcx), %ecx
	incl	%ecx
	cmpl	%ecx, %eax
	jl	.LBB4_285
# BB#263:                               #   in Loop: Header=BB4_258 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	jne	.LBB4_258
	jmp	.LBB4_147
	.align	16, 0x90
.LBB4_259:                              #   in Loop: Header=BB4_258 Depth=2
	movq	-80(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jle	.LBB4_260
# BB#261:                               #   in Loop: Header=BB4_258 Depth=2
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movl	$1, -172(%rbp)
	jmp	.LBB4_258
.LBB4_343:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$2, %eax
	jb	.LBB4_344
# BB#350:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_248
# BB#351:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_353
# BB#352:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -300(%rbp)
	movl	$7, -304(%rbp)
	jmp	.LBB4_357
.LBB4_346:                              #   in Loop: Header=BB4_344 Depth=2
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	movl	$1, -172(%rbp)
	.align	16, 0x90
.LBB4_344:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_345
# BB#348:                               #   in Loop: Header=BB4_344 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	40(%rcx), %ecx
	cmpl	%ecx, %eax
	jl	.LBB4_248
# BB#349:                               #   in Loop: Header=BB4_344 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	jne	.LBB4_344
	jmp	.LBB4_147
	.align	16, 0x90
.LBB4_345:                              #   in Loop: Header=BB4_344 Depth=2
	movq	-80(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jle	.LBB4_346
# BB#347:                               #   in Loop: Header=BB4_344 Depth=2
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movl	$1, -172(%rbp)
	jmp	.LBB4_344
.LBB4_150:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_152
# BB#151:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_153
.LBB4_232:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -268(%rbp)
	movl	$103, -272(%rbp)
	jmp	.LBB4_233
	.align	16, 0x90
.LBB4_237:                              #   in Loop: Header=BB4_233 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_233:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_234
# BB#235:                               #   in Loop: Header=BB4_233 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-272(%rbp), %eax
	setge	%al
	jmp	.LBB4_236
	.align	16, 0x90
.LBB4_234:                              #   in Loop: Header=BB4_233 Depth=2
	xorl	%eax, %eax
.LBB4_236:                              #   in Loop: Header=BB4_233 Depth=2
	testb	%al, %al
	jne	.LBB4_237
# BB#238:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_248
# BB#239:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-268(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_241
# BB#240:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_244
.LBB4_241:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_242
# BB#243:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_244
.LBB4_242:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_244:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-268(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-272(%rbp), %cl
.LBB4_245:                              #   in Loop: Header=BB4_87 Depth=1
	movb	%cl, 40(%rax)
	movq	-80(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-80(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-80(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-80(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-80(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_247
# BB#246:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_248
.LBB4_247:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB4_248:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_250
# BB#249:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_251
.LBB4_250:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_251:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jb	.LBB4_252
	jmp	.LBB4_255
.LBB4_89:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$64, %eax
	jne	.LBB4_94
# BB#90:                                #   in Loop: Header=BB4_87 Depth=1
	cmpl	$1, -172(%rbp)
	jne	.LBB4_92
# BB#91:                                #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	42(%rax), %ecx
	movzbl	41(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_94
.LBB4_92:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$6, %edi
	movl	$20, %esi
	movl	$.L.str.24, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movl	unknown_count(%rip), %eax
	incl	%eax
	movl	%eax, unknown_count(%rip)
	cmpl	$26, %eax
	jl	.LBB4_94
# BB#93:                                #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$21, %esi
	movl	$.L.str.25, %edx
	movl	$1, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_94:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_116
# BB#95:                                #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_97
# BB#96:                                #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -236(%rbp)
	movl	$7, -240(%rbp)
	jmp	.LBB4_101
.LBB4_121:                              #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_116
# BB#122:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_124
# BB#123:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -244(%rbp)
	movl	$7, -248(%rbp)
	jmp	.LBB4_128
.LBB4_438:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	ParseEnvClosure
	movq	%rax, -136(%rbp)
	cmpl	$0, -172(%rbp)
	je	.LBB4_460
# BB#439:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-136(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_441
# BB#440:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -316(%rbp)
	movl	$7, -320(%rbp)
	jmp	.LBB4_445
.LBB4_461:                              #   in Loop: Header=BB4_87 Depth=1
	callq	LexNextTokenPos
	addl	$-5, %eax
	movl	%eax, -160(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_463
# BB#462:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_464
.LBB4_463:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_465
.LBB4_491:                              #   in Loop: Header=BB4_87 Depth=1
	callq	LexNextTokenPos
	addl	$-5, %eax
	movl	%eax, -160(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_493
# BB#492:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_494
.LBB4_493:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_495
.LBB4_514:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_516
# BB#515:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_517
.LBB4_516:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_518
.LBB4_545:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_547
# BB#546:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_548
.LBB4_547:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_549
.LBB4_585:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_587
# BB#586:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_588
.LBB4_587:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_589
.LBB4_656:                              #   in Loop: Header=BB4_87 Depth=1
	callq	SuppressVisible
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_658
# BB#657:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_659
.LBB4_658:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_660
.LBB4_611:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_613
# BB#612:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_614
.LBB4_613:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_615
.LBB4_1013:                             #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -104(%rbp)
	jmp	.LBB4_1014
.LBB4_1016:                             #   in Loop: Header=BB4_1014 Depth=2
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	movl	$1, -172(%rbp)
	.align	16, 0x90
.LBB4_1014:                             #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_1015
# BB#1018:                              #   in Loop: Header=BB4_1014 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	40(%rcx), %ecx
	incl	%ecx
	cmpl	%ecx, %eax
	jl	.LBB4_1020
# BB#1019:                              #   in Loop: Header=BB4_1014 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	jne	.LBB4_1014
	jmp	.LBB4_147
	.align	16, 0x90
.LBB4_1015:                             #   in Loop: Header=BB4_1014 Depth=2
	movq	-80(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jle	.LBB4_1016
# BB#1017:                              #   in Loop: Header=BB4_1014 Depth=2
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movl	$1, -172(%rbp)
	jmp	.LBB4_1014
.LBB4_370:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB4_372
# BB#371:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.17, (%rsp)
	movl	$6, %edi
	movl	$23, %esi
	movl	$.L.str.32, %edx
	movl	$2, %ecx
	movl	$.L.str.33, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-80(%rbp), %rax
	movb	$102, 32(%rax)
.LBB4_372:                              #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_393
# BB#373:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_375
# BB#374:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -308(%rbp)
	movl	$7, -312(%rbp)
	jmp	.LBB4_379
.LBB4_396:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB4_405
# BB#397:                               #   in Loop: Header=BB4_87 Depth=1
	callq	LexGetToken
	movq	%rax, -88(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB4_406
# BB#398:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	jmp	.LBB4_399
.LBB4_369:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$22, %esi
	movl	$.L.str.31, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_87
.LBB4_152:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_153:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$0, -172(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_165
# BB#154:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	jne	.LBB4_165
# BB#155:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$18, %eax
	jb	.LBB4_165
# BB#156:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-16(,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$110, %eax
	jne	.LBB4_165
# BB#157:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rdi
	callq	TransferComponent
	movzbl	zz_lengths+5(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_159
# BB#158:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_162
.LBB4_433:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_254
# BB#434:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_255
.LBB4_1020:                             #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_1022
# BB#1021:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_1023
.LBB4_375:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_377
# BB#376:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_378
.LBB4_377:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -308(%rbp)
	movl	$7, -312(%rbp)
	jmp	.LBB4_379
.LBB4_254:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_255:                              #   in Loop: Header=BB4_87 Depth=1
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	jne	.LBB4_253
	jmp	.LBB4_256
.LBB4_1022:                             #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_1023:                             #   in Loop: Header=BB4_87 Depth=1
	movl	$0, -172(%rbp)
	movslq	otop(%rip), %rax
	movq	obj_stack(,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB4_1025
# BB#1024:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack(,%rax,8), %rax
	jmp	.LBB4_1033
.LBB4_1025:                             #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack(,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB4_1027
# BB#1026:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack(,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	jne	.LBB4_1034
.LBB4_1027:                             #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack(,%rax,8), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB4_1034
# BB#1028:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack(,%rax,8), %rax
	movq	8(%rax), %rax
	jmp	.LBB4_1029
.LBB4_1030:                             #   in Loop: Header=BB4_1029 Depth=2
	movq	-96(%rbp), %rax
.LBB4_1029:                             #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_1030
# BB#1031:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB4_1034
# BB#1032:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
.LBB4_1033:                             #   in Loop: Header=BB4_87 Depth=1
	movq	80(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB4_1034:                             #   in Loop: Header=BB4_87 Depth=1
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB4_1035
# BB#1037:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	je	.LBB4_1040
# BB#1038:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_1040
# BB#1039:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$36, %esi
	movl	$.L.str.51, %edx
	jmp	.LBB4_1036
.LBB4_464:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_465:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	Parse
	movq	%rax, -96(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	SetEnv
	movq	%rax, -112(%rbp)
	cmpl	$0, -172(%rbp)
	je	.LBB4_487
# BB#466:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-112(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_468
# BB#467:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -324(%rbp)
	movl	$7, -328(%rbp)
	jmp	.LBB4_472
.LBB4_494:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_495:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rsi
	leaq	-80(%rbp), %rbx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	Parse
	movq	%rax, -112(%rbp)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	Parse
	movq	%rax, -136(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	SetEnv
	movq	%rax, -112(%rbp)
	cmpl	$0, -172(%rbp)
	je	.LBB4_487
# BB#496:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-112(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_498
# BB#497:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -332(%rbp)
	movl	$7, -336(%rbp)
	jmp	.LBB4_502
.LBB4_517:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_518:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movzbl	zz_lengths+82(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_520
# BB#519:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_523
.LBB4_520:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_521
# BB#522:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_523
.LBB4_548:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_549:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_551
# BB#550:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	leaq	-160(%rbp), %rdx
	leaq	-164(%rbp), %rcx
	movl	$.L.str.38, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	je	.LBB4_552
.LBB4_551:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$37, %esi
	movl	$.L.str.39, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_552:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movl	-160(%rbp), %esi
	movzwl	34(%rax), %edi
	leaq	-112(%rbp), %rdx
	callq	EnvReadRetrieve
	testl	%eax, %eax
	je	.LBB4_553
# BB#558:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_560
# BB#559:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_561
.LBB4_560:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_562
.LBB4_553:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movl	-160(%rbp), %esi
	movl	-164(%rbp), %ecx
	movzwl	34(%rax), %edi
	movl	$3, %edx
	movl	$1, %r8d
	callq	LexPush
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_555
# BB#554:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_556
.LBB4_555:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_557
.LBB4_588:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_589:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rsi
	leaq	-80(%rbp), %rbx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	Parse
	movq	%rax, -112(%rbp)
	movl	$0, -176(%rbp)
	movq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	xorl	%edx, %edx
	callq	SetScope
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	Parse
	movq	%rax, -136(%rbp)
	movl	$0, -156(%rbp)
	jmp	.LBB4_590
	.align	16, 0x90
.LBB4_591:                              #   in Loop: Header=BB4_590 Depth=2
	callq	PopScope
	incl	-156(%rbp)
.LBB4_590:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-156(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jl	.LBB4_591
# BB#592:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-112(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	AttachEnv
	cmpl	$0, -172(%rbp)
	je	.LBB4_460
# BB#593:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-136(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_595
# BB#594:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -356(%rbp)
	movl	$7, -360(%rbp)
	jmp	.LBB4_599
.LBB4_659:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_660:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	callq	UnSuppressVisible
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB4_662
# BB#661:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$29, %esi
	movl	$.L.str.40, %edx
	movl	$1, %ecx
	movl	$.L.str.43, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_662:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	80(%rax), %rdi
	movq	%rdi, -104(%rbp)
	movl	$1, %esi
	xorl	%edx, %edx
	callq	PushScope
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$107, %eax
	jne	.LBB4_668
# BB#663:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_665
# BB#664:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_666
.LBB4_665:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_667
.LBB4_668:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$1, -184(%rbp)
	jmp	.LBB4_669
.LBB4_614:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_615:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB4_617
# BB#616:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$27, %esi
	movl	$.L.str.40, %edx
	movl	$1, %ecx
	movl	$.L.str.41, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_617:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, 112(%rax)
	jne	.LBB4_619
# BB#618:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$28, %esi
	movl	$.L.str.42, %edx
	movl	$1, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_619:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movq	112(%rax), %rdi
	movq	no_fpos(%rip), %rsi
	callq	CopyObject
	movq	%rax, -88(%rbp)
	jmp	.LBB4_620
	.align	16, 0x90
.LBB4_1068:                             #   in Loop: Header=BB4_620 Depth=2
	movq	-128(%rbp), %rax
.LBB4_620:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_622 Depth 3
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB4_634
# BB#621:                               #   in Loop: Header=BB4_620 Depth=2
	movq	-128(%rbp), %rax
	jmp	.LBB4_622
	.align	16, 0x90
.LBB4_623:                              #   in Loop: Header=BB4_622 Depth=3
	movq	-120(%rbp), %rax
.LBB4_622:                              #   Parent Loop BB4_87 Depth=1
                                        #     Parent Loop BB4_620 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_623
# BB#624:                               #   in Loop: Header=BB4_620 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	jne	.LBB4_1068
# BB#625:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB4_627
# BB#626:                               #   in Loop: Header=BB4_87 Depth=1
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
.LBB4_627:                              #   in Loop: Header=BB4_87 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_629
# BB#628:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB4_629:                              #   in Loop: Header=BB4_87 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_631
# BB#630:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_632
.LBB4_631:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_633
.LBB4_666:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_667:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movl	$0, -184(%rbp)
.LBB4_669:                              #   in Loop: Header=BB4_87 Depth=1
	callq	PopScope
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB4_671
# BB#670:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	jne	.LBB4_694
.LBB4_671:                              #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_692
# BB#672:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_674
# BB#673:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -372(%rbp)
	movl	$7, -376(%rbp)
	jmp	.LBB4_678
.LBB4_694:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$2, %eax
	jb	.LBB4_695
# BB#702:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_723
# BB#703:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_705
# BB#704:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -380(%rbp)
	movl	$7, -384(%rbp)
	jmp	.LBB4_709
.LBB4_697:                              #   in Loop: Header=BB4_695 Depth=2
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	movl	$1, -172(%rbp)
	.align	16, 0x90
.LBB4_695:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_696
# BB#699:                               #   in Loop: Header=BB4_695 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	movq	-88(%rbp), %rcx
	movzbl	40(%rcx), %ecx
	movq	-104(%rbp), %rdx
	movzwl	41(%rdx), %edx
	shrl	$4, %edx
	andl	$1, %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB4_723
# BB#700:                               #   in Loop: Header=BB4_695 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	jne	.LBB4_695
	jmp	.LBB4_701
.LBB4_696:                              #   in Loop: Header=BB4_695 Depth=2
	movq	-88(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jle	.LBB4_697
# BB#698:                               #   in Loop: Header=BB4_695 Depth=2
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movl	$1, -172(%rbp)
	jmp	.LBB4_695
.LBB4_674:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_676
# BB#675:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_677
.LBB4_676:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -372(%rbp)
	movl	$7, -376(%rbp)
	jmp	.LBB4_678
.LBB4_1040:                             #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	PushScope
	movq	-64(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	Parse
	movq	%rax, -96(%rbp)
	cmpl	$0, -172(%rbp)
	je	.LBB4_1061
# BB#1041:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_1043
# BB#1042:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -428(%rbp)
	movl	$7, -432(%rbp)
	jmp	.LBB4_1047
.LBB4_97:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_99
# BB#98:                                #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_100
.LBB4_99:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -236(%rbp)
	movl	$7, -240(%rbp)
	jmp	.LBB4_101
.LBB4_124:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_126
# BB#125:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_127
.LBB4_126:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -244(%rbp)
	movl	$7, -248(%rbp)
	jmp	.LBB4_128
.LBB4_441:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_443
# BB#442:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_444
.LBB4_443:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -316(%rbp)
	movl	$7, -320(%rbp)
	jmp	.LBB4_445
.LBB4_468:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_470
# BB#469:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_471
.LBB4_470:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -324(%rbp)
	movl	$7, -328(%rbp)
	jmp	.LBB4_472
.LBB4_498:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_500
# BB#499:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_501
.LBB4_500:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -332(%rbp)
	movl	$7, -336(%rbp)
	jmp	.LBB4_502
.LBB4_595:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_597
# BB#596:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_598
.LBB4_597:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -356(%rbp)
	movl	$7, -360(%rbp)
	jmp	.LBB4_599
.LBB4_1035:                             #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$35, %esi
	movl	$.L.str.53, %edx
.LBB4_1036:                             #   in Loop: Header=BB4_87 Depth=1
	movl	$2, %ecx
	movl	$.L.str.54, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_87
.LBB4_406:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$53, %eax
	jne	.LBB4_408
# BB#407:                               #   in Loop: Header=BB4_87 Depth=1
	movq	VerbatimSym(%rip), %rax
	jmp	.LBB4_399
.LBB4_521:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_523:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$82, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -136(%rbp)
	cmpl	$0, -172(%rbp)
	je	.LBB4_544
# BB#524:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-136(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_526
# BB#525:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -340(%rbp)
	movl	$7, -344(%rbp)
	jmp	.LBB4_530
.LBB4_526:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_528
# BB#527:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_529
.LBB4_528:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -340(%rbp)
	movl	$7, -344(%rbp)
	jmp	.LBB4_530
.LBB4_267:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_269
# BB#268:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_270
.LBB4_269:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -276(%rbp)
	movl	$7, -280(%rbp)
	jmp	.LBB4_271
.LBB4_353:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_355
# BB#354:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_356
.LBB4_355:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -300(%rbp)
	movl	$7, -304(%rbp)
	jmp	.LBB4_357
.LBB4_561:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_562:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_563
.LBB4_632:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_633:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB4_634:                              #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_655
# BB#635:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_637
# BB#636:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -364(%rbp)
	movl	$7, -368(%rbp)
	jmp	.LBB4_641
.LBB4_637:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_639
# BB#638:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_640
.LBB4_639:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -364(%rbp)
	movl	$7, -368(%rbp)
	jmp	.LBB4_641
.LBB4_378:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -308(%rbp)
	movl	$103, -312(%rbp)
	jmp	.LBB4_379
	.align	16, 0x90
.LBB4_383:                              #   in Loop: Header=BB4_379 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_379:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_380
# BB#381:                               #   in Loop: Header=BB4_379 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-312(%rbp), %eax
	setge	%al
	jmp	.LBB4_382
	.align	16, 0x90
.LBB4_380:                              #   in Loop: Header=BB4_379 Depth=2
	xorl	%eax, %eax
.LBB4_382:                              #   in Loop: Header=BB4_379 Depth=2
	testb	%al, %al
	jne	.LBB4_383
# BB#384:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_393
# BB#385:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-308(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_387
# BB#386:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_390
.LBB4_387:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_388
# BB#389:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_390
.LBB4_388:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_390:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-308(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-312(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-80(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-80(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-80(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-80(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-80(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_392
# BB#391:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_393
.LBB4_392:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_393:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_395
# BB#394:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_252
.LBB4_395:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_252:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$0, -172(%rbp)
.LBB4_253:                              #   in Loop: Header=BB4_87 Depth=1
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	jmp	.LBB4_87
.LBB4_556:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_557:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	Parse
	movq	%rax, -112(%rbp)
	callq	LexPop
.LBB4_563:                              #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_584
# BB#564:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-112(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_566
# BB#565:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -348(%rbp)
	movl	$7, -352(%rbp)
	jmp	.LBB4_570
.LBB4_566:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_568
# BB#567:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_569
.LBB4_568:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -348(%rbp)
	movl	$7, -352(%rbp)
	jmp	.LBB4_570
.LBB4_408:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$54, %eax
	jne	.LBB4_410
# BB#409:                               #   in Loop: Header=BB4_87 Depth=1
	movq	RawVerbatimSym(%rip), %rax
.LBB4_399:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rcx
	movq	%rax, 80(%rcx)
.LBB4_400:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_402
# BB#401:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_403
.LBB4_402:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_404
.LBB4_677:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -372(%rbp)
	movl	$103, -376(%rbp)
	jmp	.LBB4_678
	.align	16, 0x90
.LBB4_682:                              #   in Loop: Header=BB4_678 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_678:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_679
# BB#680:                               #   in Loop: Header=BB4_678 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-376(%rbp), %eax
	setge	%al
	jmp	.LBB4_681
	.align	16, 0x90
.LBB4_679:                              #   in Loop: Header=BB4_678 Depth=2
	xorl	%eax, %eax
.LBB4_681:                              #   in Loop: Header=BB4_678 Depth=2
	testb	%al, %al
	jne	.LBB4_682
# BB#683:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_692
# BB#684:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-372(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_686
# BB#685:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_689
.LBB4_686:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_687
# BB#688:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_689
.LBB4_687:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_689:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-372(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-376(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-88(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-88(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-88(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-88(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-88(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_691
# BB#690:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	movq	-88(%rbp), %rax
	jmp	.LBB4_217
.LBB4_691:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_692:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB4_217
.LBB4_403:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_404:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB4_405:                              #   in Loop: Header=BB4_87 Depth=1
	movq	$0, -88(%rbp)
	jmp	.LBB4_414
.LBB4_100:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -236(%rbp)
	movl	$103, -240(%rbp)
	jmp	.LBB4_101
	.align	16, 0x90
.LBB4_105:                              #   in Loop: Header=BB4_101 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_101:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_102
# BB#103:                               #   in Loop: Header=BB4_101 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-240(%rbp), %eax
	setge	%al
	jmp	.LBB4_104
	.align	16, 0x90
.LBB4_102:                              #   in Loop: Header=BB4_101 Depth=2
	xorl	%eax, %eax
.LBB4_104:                              #   in Loop: Header=BB4_101 Depth=2
	testb	%al, %al
	jne	.LBB4_105
# BB#106:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_116
# BB#107:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-236(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_109
# BB#108:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_112
.LBB4_109:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_110
# BB#111:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_112
.LBB4_110:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_112:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-236(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-240(%rbp), %cl
	jmp	.LBB4_113
.LBB4_127:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -244(%rbp)
	movl	$103, -248(%rbp)
	jmp	.LBB4_128
	.align	16, 0x90
.LBB4_132:                              #   in Loop: Header=BB4_128 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_128:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_129
# BB#130:                               #   in Loop: Header=BB4_128 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-248(%rbp), %eax
	setge	%al
	jmp	.LBB4_131
	.align	16, 0x90
.LBB4_129:                              #   in Loop: Header=BB4_128 Depth=2
	xorl	%eax, %eax
.LBB4_131:                              #   in Loop: Header=BB4_128 Depth=2
	testb	%al, %al
	jne	.LBB4_132
# BB#133:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_116
# BB#134:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-244(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_136
# BB#135:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_139
.LBB4_136:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_137
# BB#138:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_139
.LBB4_137:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_139:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-244(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-248(%rbp), %cl
.LBB4_113:                              #   in Loop: Header=BB4_87 Depth=1
	movb	%cl, 40(%rax)
	movq	-80(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-80(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-80(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-80(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-80(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_115
# BB#114:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_116
.LBB4_115:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_116:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	jmp	.LBB4_117
.LBB4_444:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -316(%rbp)
	movl	$103, -320(%rbp)
	jmp	.LBB4_445
	.align	16, 0x90
.LBB4_449:                              #   in Loop: Header=BB4_445 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_445:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_446
# BB#447:                               #   in Loop: Header=BB4_445 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-320(%rbp), %eax
	setge	%al
	jmp	.LBB4_448
	.align	16, 0x90
.LBB4_446:                              #   in Loop: Header=BB4_445 Depth=2
	xorl	%eax, %eax
.LBB4_448:                              #   in Loop: Header=BB4_445 Depth=2
	testb	%al, %al
	jne	.LBB4_449
# BB#450:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_460
# BB#451:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-316(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_453
# BB#452:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_456
.LBB4_453:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_454
# BB#455:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_456
.LBB4_454:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_456:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-316(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-320(%rbp), %cl
	jmp	.LBB4_457
.LBB4_471:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -324(%rbp)
	movl	$103, -328(%rbp)
	jmp	.LBB4_472
	.align	16, 0x90
.LBB4_476:                              #   in Loop: Header=BB4_472 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_472:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_473
# BB#474:                               #   in Loop: Header=BB4_472 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-328(%rbp), %eax
	setge	%al
	jmp	.LBB4_475
	.align	16, 0x90
.LBB4_473:                              #   in Loop: Header=BB4_472 Depth=2
	xorl	%eax, %eax
.LBB4_475:                              #   in Loop: Header=BB4_472 Depth=2
	testb	%al, %al
	jne	.LBB4_476
# BB#477:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_487
# BB#478:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-324(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_480
# BB#479:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_483
.LBB4_480:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_481
# BB#482:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_483
.LBB4_481:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_483:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-324(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-328(%rbp), %cl
	jmp	.LBB4_484
.LBB4_501:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -332(%rbp)
	movl	$103, -336(%rbp)
	jmp	.LBB4_502
	.align	16, 0x90
.LBB4_506:                              #   in Loop: Header=BB4_502 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_502:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_503
# BB#504:                               #   in Loop: Header=BB4_502 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-336(%rbp), %eax
	setge	%al
	jmp	.LBB4_505
	.align	16, 0x90
.LBB4_503:                              #   in Loop: Header=BB4_502 Depth=2
	xorl	%eax, %eax
.LBB4_505:                              #   in Loop: Header=BB4_502 Depth=2
	testb	%al, %al
	jne	.LBB4_506
# BB#507:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_487
# BB#508:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-332(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_510
# BB#509:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_513
.LBB4_510:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_511
# BB#512:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_513
.LBB4_511:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_513:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-332(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-336(%rbp), %cl
.LBB4_484:                              #   in Loop: Header=BB4_87 Depth=1
	movb	%cl, 40(%rax)
	movq	-112(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-112(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-112(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-112(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-112(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_486
# BB#485:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_487
.LBB4_486:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_487:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_489
# BB#488:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	jmp	.LBB4_490
.LBB4_489:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_490:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$1, -172(%rbp)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movl	-160(%rbp), %esi
	movq	-112(%rbp), %rdx
	movzwl	34(%rax), %edi
	callq	EnvReadInsert
	jmp	.LBB4_87
.LBB4_598:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -356(%rbp)
	movl	$103, -360(%rbp)
	jmp	.LBB4_599
	.align	16, 0x90
.LBB4_603:                              #   in Loop: Header=BB4_599 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_599:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_600
# BB#601:                               #   in Loop: Header=BB4_599 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-360(%rbp), %eax
	setge	%al
	jmp	.LBB4_602
	.align	16, 0x90
.LBB4_600:                              #   in Loop: Header=BB4_599 Depth=2
	xorl	%eax, %eax
.LBB4_602:                              #   in Loop: Header=BB4_599 Depth=2
	testb	%al, %al
	jne	.LBB4_603
# BB#604:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_460
# BB#605:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-356(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_607
# BB#606:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_610
.LBB4_607:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_608
# BB#609:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_610
.LBB4_608:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_610:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-356(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-360(%rbp), %cl
.LBB4_457:                              #   in Loop: Header=BB4_87 Depth=1
	movb	%cl, 40(%rax)
	movq	-136(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-136(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-136(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-136(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-136(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_459
# BB#458:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	movq	-136(%rbp), %rax
	jmp	.LBB4_117
.LBB4_459:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_460:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-136(%rbp), %rax
	jmp	.LBB4_117
.LBB4_529:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -340(%rbp)
	movl	$103, -344(%rbp)
	jmp	.LBB4_530
	.align	16, 0x90
.LBB4_534:                              #   in Loop: Header=BB4_530 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_530:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_531
# BB#532:                               #   in Loop: Header=BB4_530 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-344(%rbp), %eax
	setge	%al
	jmp	.LBB4_533
	.align	16, 0x90
.LBB4_531:                              #   in Loop: Header=BB4_530 Depth=2
	xorl	%eax, %eax
.LBB4_533:                              #   in Loop: Header=BB4_530 Depth=2
	testb	%al, %al
	jne	.LBB4_534
# BB#535:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_544
# BB#536:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-340(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_538
# BB#537:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_541
.LBB4_538:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_539
# BB#540:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_541
.LBB4_539:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_541:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-340(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-344(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-136(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-136(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-136(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-136(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-136(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_543
# BB#542:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	movq	-136(%rbp), %rax
	jmp	.LBB4_217
.LBB4_543:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_544:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-136(%rbp), %rax
	jmp	.LBB4_217
.LBB4_640:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -364(%rbp)
	movl	$103, -368(%rbp)
	jmp	.LBB4_641
	.align	16, 0x90
.LBB4_645:                              #   in Loop: Header=BB4_641 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_641:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_642
# BB#643:                               #   in Loop: Header=BB4_641 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-368(%rbp), %eax
	setge	%al
	jmp	.LBB4_644
	.align	16, 0x90
.LBB4_642:                              #   in Loop: Header=BB4_641 Depth=2
	xorl	%eax, %eax
.LBB4_644:                              #   in Loop: Header=BB4_641 Depth=2
	testb	%al, %al
	jne	.LBB4_645
# BB#646:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_655
# BB#647:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-364(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_649
# BB#648:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_652
.LBB4_649:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_650
# BB#651:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_652
.LBB4_650:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_652:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-364(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-368(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-88(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-88(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-88(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-88(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-88(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_654
# BB#653:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	movq	-88(%rbp), %rax
	jmp	.LBB4_117
.LBB4_654:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_655:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB4_117
.LBB4_569:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -348(%rbp)
	movl	$103, -352(%rbp)
	jmp	.LBB4_570
	.align	16, 0x90
.LBB4_574:                              #   in Loop: Header=BB4_570 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_570:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_571
# BB#572:                               #   in Loop: Header=BB4_570 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-352(%rbp), %eax
	setge	%al
	jmp	.LBB4_573
	.align	16, 0x90
.LBB4_571:                              #   in Loop: Header=BB4_570 Depth=2
	xorl	%eax, %eax
.LBB4_573:                              #   in Loop: Header=BB4_570 Depth=2
	testb	%al, %al
	jne	.LBB4_574
# BB#575:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_584
# BB#576:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-348(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_578
# BB#577:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_581
.LBB4_578:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_579
# BB#580:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_581
.LBB4_579:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_581:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-348(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-352(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-112(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-112(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-112(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-112(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-112(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_583
# BB#582:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	movq	-112(%rbp), %rax
	jmp	.LBB4_117
.LBB4_583:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_584:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-112(%rbp), %rax
	jmp	.LBB4_117
.LBB4_1043:                             #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_1045
# BB#1044:                              #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_1046
.LBB4_1045:                             #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -428(%rbp)
	movl	$7, -432(%rbp)
	jmp	.LBB4_1047
.LBB4_410:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB4_413
# BB#411:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$64, %eax
	jne	.LBB4_413
# BB#412:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movq	$.L.str.35, (%rsp)
	movl	$6, %edi
	movl	$24, %esi
	movl	$.L.str.34, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-80(%rbp), %rax
	movq	$0, 80(%rax)
	jmp	.LBB4_400
.LBB4_159:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_160
# BB#161:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_162
.LBB4_705:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_707
# BB#706:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_708
.LBB4_707:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -380(%rbp)
	movl	$7, -384(%rbp)
	jmp	.LBB4_709
.LBB4_270:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -276(%rbp)
	movl	$103, -280(%rbp)
	jmp	.LBB4_271
	.align	16, 0x90
.LBB4_275:                              #   in Loop: Header=BB4_271 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_271:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_272
# BB#273:                               #   in Loop: Header=BB4_271 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-280(%rbp), %eax
	setge	%al
	jmp	.LBB4_274
	.align	16, 0x90
.LBB4_272:                              #   in Loop: Header=BB4_271 Depth=2
	xorl	%eax, %eax
.LBB4_274:                              #   in Loop: Header=BB4_271 Depth=2
	testb	%al, %al
	jne	.LBB4_275
# BB#276:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_285
# BB#277:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-276(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_279
# BB#278:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_282
.LBB4_279:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_280
# BB#281:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_282
.LBB4_280:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_282:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-276(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-280(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-80(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-80(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-80(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-80(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-80(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_284
# BB#283:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_285
.LBB4_284:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_285:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_287
# BB#286:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_288
.LBB4_287:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_288:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB4_290
# BB#289:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$0, -172(%rbp)
	jmp	.LBB4_291
.LBB4_290:                              #   in Loop: Header=BB4_87 Depth=1
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	je	.LBB4_256
.LBB4_291:                              #   in Loop: Header=BB4_87 Depth=1
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	je	.LBB4_294
# BB#292:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_294
# BB#293:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.30, (%rsp)
	movl	$6, %edi
	movl	$40, %esi
	movl	$.L.str.28, %edx
	movl	$1, %ecx
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_294:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$53, %eax
	jne	.LBB4_296
# BB#295:                               #   in Loop: Header=BB4_87 Depth=1
	movq	VerbatimSym(%rip), %rax
	jmp	.LBB4_297
.LBB4_296:                              #   in Loop: Header=BB4_87 Depth=1
	movq	RawVerbatimSym(%rip), %rax
.LBB4_297:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rcx
	movq	%rax, 80(%rcx)
	cmpl	$0, -172(%rbp)
	je	.LBB4_318
# BB#298:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_300
# BB#299:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -284(%rbp)
	movl	$7, -288(%rbp)
	jmp	.LBB4_304
.LBB4_300:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_302
# BB#301:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_303
.LBB4_302:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -284(%rbp)
	movl	$7, -288(%rbp)
	jmp	.LBB4_304
.LBB4_303:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -284(%rbp)
	movl	$103, -288(%rbp)
	jmp	.LBB4_304
	.align	16, 0x90
.LBB4_308:                              #   in Loop: Header=BB4_304 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_304:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_305
# BB#306:                               #   in Loop: Header=BB4_304 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-288(%rbp), %eax
	setge	%al
	jmp	.LBB4_307
	.align	16, 0x90
.LBB4_305:                              #   in Loop: Header=BB4_304 Depth=2
	xorl	%eax, %eax
.LBB4_307:                              #   in Loop: Header=BB4_304 Depth=2
	testb	%al, %al
	jne	.LBB4_308
# BB#309:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_318
# BB#310:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-284(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_312
# BB#311:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_315
.LBB4_312:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_313
# BB#314:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_315
.LBB4_313:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_315:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-284(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-288(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-80(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-80(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-80(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-80(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-80(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_317
# BB#316:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_318
.LBB4_317:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_318:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_320
# BB#319:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_321
.LBB4_320:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_321:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$0, -172(%rbp)
	movq	-80(%rbp), %rdx
	movzbl	32(%rdx), %eax
	addq	$32, %rdx
	cmpl	$104, %eax
	sete	%al
	movzbl	%al, %esi
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$54, %eax
	sete	%al
	movzbl	%al, %ecx
	xorl	%edi, %edi
	callq	LexScanVerbatim
	movq	%rax, -120(%rbp)
	cmpl	$0, -172(%rbp)
	je	.LBB4_342
# BB#322:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-120(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_324
# BB#323:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -292(%rbp)
	movl	$7, -296(%rbp)
	jmp	.LBB4_328
.LBB4_324:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_326
# BB#325:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_327
.LBB4_326:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -292(%rbp)
	movl	$7, -296(%rbp)
	jmp	.LBB4_328
.LBB4_327:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -292(%rbp)
	movl	$103, -296(%rbp)
	jmp	.LBB4_328
	.align	16, 0x90
.LBB4_332:                              #   in Loop: Header=BB4_328 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_328:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_329
# BB#330:                               #   in Loop: Header=BB4_328 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-296(%rbp), %eax
	setge	%al
	jmp	.LBB4_331
	.align	16, 0x90
.LBB4_329:                              #   in Loop: Header=BB4_328 Depth=2
	xorl	%eax, %eax
.LBB4_331:                              #   in Loop: Header=BB4_328 Depth=2
	testb	%al, %al
	jne	.LBB4_332
# BB#333:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_342
# BB#334:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-292(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_336
# BB#335:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_339
.LBB4_336:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_337
# BB#338:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_339
.LBB4_337:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_339:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-292(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-296(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-120(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-120(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-120(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-120(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-120(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_341
# BB#340:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	movq	-120(%rbp), %rax
	jmp	.LBB4_117
.LBB4_341:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_342:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-120(%rbp), %rax
.LBB4_117:                              #   in Loop: Header=BB4_87 Depth=1
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_119
# BB#118:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	movl	$1, -172(%rbp)
	jmp	.LBB4_253
.LBB4_119:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movl	$1, -172(%rbp)
	jmp	.LBB4_253
.LBB4_356:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -300(%rbp)
	movl	$103, -304(%rbp)
	jmp	.LBB4_357
	.align	16, 0x90
.LBB4_361:                              #   in Loop: Header=BB4_357 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_357:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_358
# BB#359:                               #   in Loop: Header=BB4_357 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-304(%rbp), %eax
	setge	%al
	jmp	.LBB4_360
	.align	16, 0x90
.LBB4_358:                              #   in Loop: Header=BB4_357 Depth=2
	xorl	%eax, %eax
.LBB4_360:                              #   in Loop: Header=BB4_357 Depth=2
	testb	%al, %al
	jne	.LBB4_361
# BB#362:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_248
# BB#363:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-300(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_365
# BB#364:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_368
.LBB4_365:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_366
# BB#367:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_368
.LBB4_366:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_368:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-300(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-304(%rbp), %cl
	jmp	.LBB4_245
.LBB4_413:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$25, %esi
	movl	$.L.str.36, %edx
	movl	$2, %ecx
	movl	$.L.str.35, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-80(%rbp), %rax
	movq	$0, 80(%rax)
	jmp	.LBB4_414
.LBB4_416:                              #   in Loop: Header=BB4_414 Depth=2
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	movl	$1, -172(%rbp)
	.align	16, 0x90
.LBB4_414:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_415
# BB#418:                               #   in Loop: Header=BB4_414 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	40(%rcx), %ecx
	cmpl	%ecx, %eax
	jl	.LBB4_420
# BB#419:                               #   in Loop: Header=BB4_414 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	jne	.LBB4_414
	jmp	.LBB4_147
	.align	16, 0x90
.LBB4_415:                              #   in Loop: Header=BB4_414 Depth=2
	movq	-80(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jle	.LBB4_416
# BB#417:                               #   in Loop: Header=BB4_414 Depth=2
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movl	$1, -172(%rbp)
	jmp	.LBB4_414
.LBB4_420:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_422
# BB#421:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_423
.LBB4_422:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_423:                              #   in Loop: Header=BB4_87 Depth=1
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	je	.LBB4_256
# BB#424:                               #   in Loop: Header=BB4_87 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB4_253
# BB#425:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB4_87
.LBB4_160:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_162:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$5, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-80(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-80(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_164
# BB#163:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	jmp	.LBB4_165
.LBB4_164:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_165:                              #   in Loop: Header=BB4_87 Depth=1
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_167
# BB#166:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_170
.LBB4_167:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_168
# BB#169:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_170
.LBB4_168:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_170:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$1, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rcx
	movq	80(%rcx), %rcx
	movzbl	43(%rcx), %ecx
	movzwl	44(%rax), %edx
	andl	$2, %ecx
	shll	$7, %ecx
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%ecx, %edx
	movw	%dx, 44(%rax)
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	43(%rax), %eax
	movq	-88(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$4, %eax
	shll	$7, %eax
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-80(%rbp), %rax
	movb	41(%rax), %al
	movq	-88(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-80(%rbp), %rax
	movb	42(%rax), %al
	movq	-88(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-88(%rbp), %rax
	movb	$102, 40(%rax)
	movq	-80(%rbp), %rax
	movw	34(%rax), %ax
	movq	-88(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-80(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-88(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-80(%rbp), %rax
	andl	36(%rax), %esi
	movq	-88(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	cmpl	$0, -172(%rbp)
	je	.LBB4_191
# BB#171:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_173
# BB#172:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -252(%rbp)
	movl	$7, -256(%rbp)
	jmp	.LBB4_177
.LBB4_173:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_175
# BB#174:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_176
.LBB4_175:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -252(%rbp)
	movl	$7, -256(%rbp)
	jmp	.LBB4_177
.LBB4_176:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -252(%rbp)
	movl	$103, -256(%rbp)
	jmp	.LBB4_177
	.align	16, 0x90
.LBB4_181:                              #   in Loop: Header=BB4_177 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_177:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_178
# BB#179:                               #   in Loop: Header=BB4_177 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-256(%rbp), %eax
	setge	%al
	jmp	.LBB4_180
	.align	16, 0x90
.LBB4_178:                              #   in Loop: Header=BB4_177 Depth=2
	xorl	%eax, %eax
.LBB4_180:                              #   in Loop: Header=BB4_177 Depth=2
	testb	%al, %al
	jne	.LBB4_181
# BB#182:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_191
# BB#183:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-252(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_185
# BB#184:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_188
.LBB4_185:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_186
# BB#187:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_188
.LBB4_186:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_188:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-252(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-256(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-88(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-88(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-88(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-88(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-88(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_190
# BB#189:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_191
.LBB4_190:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_191:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_193
# BB#192:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_194
.LBB4_193:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_194:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$0, -172(%rbp)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_87
# BB#195:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_216
# BB#196:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movzbl	41(%rax), %ebx
	movq	-88(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movzbl	42(%rax), %eax
	addl	%ebx, %eax
	jle	.LBB4_198
# BB#197:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -260(%rbp)
	movl	$7, -264(%rbp)
	jmp	.LBB4_202
.LBB4_198:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_200
# BB#199:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_201
.LBB4_200:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -260(%rbp)
	movl	$7, -264(%rbp)
	jmp	.LBB4_202
.LBB4_201:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -260(%rbp)
	movl	$103, -264(%rbp)
	jmp	.LBB4_202
	.align	16, 0x90
.LBB4_206:                              #   in Loop: Header=BB4_202 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_202:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_203
# BB#204:                               #   in Loop: Header=BB4_202 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-264(%rbp), %eax
	setge	%al
	jmp	.LBB4_205
	.align	16, 0x90
.LBB4_203:                              #   in Loop: Header=BB4_202 Depth=2
	xorl	%eax, %eax
.LBB4_205:                              #   in Loop: Header=BB4_202 Depth=2
	testb	%al, %al
	jne	.LBB4_206
# BB#207:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_216
# BB#208:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-260(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_210
# BB#209:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_213
.LBB4_210:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_211
# BB#212:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_213
.LBB4_211:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_213:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-260(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-264(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-88(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-88(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-88(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-88(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movl	$1048575, %ebx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ebx, %eax
	movq	-96(%rbp), %rcx
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-88(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	andl	36(%rax), %r14d
	movq	-96(%rbp), %rax
	andl	36(%rax), %ebx
	orl	%r14d, %ebx
	movl	%ebx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_215
# BB#214:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_216
.LBB4_215:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_216:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
.LBB4_217:                              #   in Loop: Header=BB4_87 Depth=1
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_693
# BB#218:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	movl	$1, -172(%rbp)
	jmp	.LBB4_87
.LBB4_693:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movl	$1, -172(%rbp)
	jmp	.LBB4_87
.LBB4_1046:                             #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -428(%rbp)
	movl	$103, -432(%rbp)
	jmp	.LBB4_1047
.LBB4_1051:                             #   in Loop: Header=BB4_1047 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_1047:                             #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_1048
# BB#1049:                              #   in Loop: Header=BB4_1047 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-432(%rbp), %eax
	setge	%al
	jmp	.LBB4_1050
.LBB4_1048:                             #   in Loop: Header=BB4_1047 Depth=2
	xorl	%eax, %eax
.LBB4_1050:                             #   in Loop: Header=BB4_1047 Depth=2
	testb	%al, %al
	jne	.LBB4_1051
# BB#1052:                              #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_1061
# BB#1053:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	-428(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_1055
# BB#1054:                              #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_1058
.LBB4_1055:                             #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_1056
# BB#1057:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_1058
.LBB4_1056:                             #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_1058:                             #   in Loop: Header=BB4_87 Depth=1
	movb	-428(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-432(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-96(%rbp), %rax
	movb	42(%rax), %cl
	movb	%cl, 42(%rax)
	movq	-96(%rbp), %rax
	movb	41(%rax), %cl
	movb	%cl, 41(%rax)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-96(%rbp), %rax
	movw	34(%rax), %cx
	movw	%cx, 34(%rax)
	movq	-96(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, 36(%rax)
	movq	-96(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_1060
# BB#1059:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_1061
.LBB4_1060:                             #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_1061:                             #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_1063
# BB#1062:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	jmp	.LBB4_1064
.LBB4_1063:                             #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_1064:                             #   in Loop: Header=BB4_87 Depth=1
	movl	$2, -172(%rbp)
	callq	PopScope
	cmpq	$0, -80(%rbp)
	jne	.LBB4_1066
# BB#1065:                              #   in Loop: Header=BB4_87 Depth=1
	callq	LexGetToken
	movq	%rax, -80(%rbp)
.LBB4_1066:                             #   in Loop: Header=BB4_87 Depth=1
	callq	Reduce
	movl	%eax, -172(%rbp)
	jmp	.LBB4_87
.LBB4_708:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -380(%rbp)
	movl	$103, -384(%rbp)
	jmp	.LBB4_709
.LBB4_713:                              #   in Loop: Header=BB4_709 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_709:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_710
# BB#711:                               #   in Loop: Header=BB4_709 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-384(%rbp), %eax
	setge	%al
	jmp	.LBB4_712
.LBB4_710:                              #   in Loop: Header=BB4_709 Depth=2
	xorl	%eax, %eax
.LBB4_712:                              #   in Loop: Header=BB4_709 Depth=2
	testb	%al, %al
	jne	.LBB4_713
# BB#714:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_723
# BB#715:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-380(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_717
# BB#716:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_720
.LBB4_717:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_718
# BB#719:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_720
.LBB4_718:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_720:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-380(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-384(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-88(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-88(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-88(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-88(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-88(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_722
# BB#721:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_723
.LBB4_722:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_723:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_725
# BB#724:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_726
.LBB4_725:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_726:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB4_728
# BB#727:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$0, -172(%rbp)
	jmp	.LBB4_729
.LBB4_728:                              #   in Loop: Header=BB4_87 Depth=1
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	je	.LBB4_256
.LBB4_729:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-64(%rbp), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB4_737
# BB#730:                               #   in Loop: Header=BB4_87 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB4_737
# BB#731:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$6, %eax
	jae	.LBB4_735
# BB#732:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-64(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$16, %ecx
	movb	%cl, 43(%rax)
	movq	-64(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	movb	$1, %al
	btl	$15, %edx
	jb	.LBB4_734
# BB#733:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %eax
	shrl	$15, %eax
.LBB4_734:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-64(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	41(%rcx), %edx
	movzbl	43(%rcx), %esi
	shll	$16, %esi
	orl	%edx, %esi
	shll	$15, %eax
	andl	$16744447, %esi         # imm = 0xFF7FFF
	leal	(%rax,%rsi), %eax
	shrl	$16, %esi
	movb	%sil, 43(%rcx)
	movw	%ax, 41(%rcx)
	jmp	.LBB4_737
.LBB4_735:                              #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -184(%rbp)
	je	.LBB4_737
# BB#736:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	InsertUses
.LBB4_737:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$0, -180(%rbp)
	leaq	-80(%rbp), %r14
	movb	$1, %r13b
	jmp	.LBB4_738
	.align	16, 0x90
.LBB4_805:                              #   in Loop: Header=BB4_738 Depth=2
	callq	PopScope
.LBB4_738:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_761 Depth 3
                                        #         Child Loop BB4_763 Depth 4
                                        #       Child Loop BB4_778 Depth 3
                                        #       Child Loop BB4_781 Depth 3
                                        #         Child Loop BB4_783 Depth 4
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB4_741
# BB#739:                               #   in Loop: Header=BB4_738 Depth=2
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movq	48(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB4_741
# BB#740:                               #   in Loop: Header=BB4_738 Depth=2
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$145, %ecx
	je	.LBB4_744
	.align	16, 0x90
.LBB4_741:                              #   in Loop: Header=BB4_738 Depth=2
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	jne	.LBB4_742
# BB#743:                               #   in Loop: Header=BB4_738 Depth=2
	movq	-80(%rbp), %rax
	movzbl	40(%rax), %eax
	cmpl	$3, %eax
	setne	%al
	jmp	.LBB4_744
.LBB4_742:                              #   in Loop: Header=BB4_738 Depth=2
	xorl	%eax, %eax
.LBB4_744:                              #   in Loop: Header=BB4_738 Depth=2
	testb	%al, %al
	je	.LBB4_752
# BB#745:                               #   in Loop: Header=BB4_738 Depth=2
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB4_758
# BB#746:                               #   in Loop: Header=BB4_738 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, -392(%rbp)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_759
	jmp	.LBB4_747
.LBB4_758:                              #   in Loop: Header=BB4_738 Depth=2
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rdi
	movzbl	40(%rax), %esi
	movzbl	41(%rax), %r15d
	movzbl	42(%rax), %r12d
	leaq	32(%rax), %rbx
	callq	ChildSymWithCode
	movl	$2, %edi
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movq	%rax, %r9
	callq	NewToken
	movq	%rax, -392(%rbp)
	movq	-80(%rbp), %rax
	movb	$3, 40(%rax)
.LBB4_759:                              #   in Loop: Header=BB4_738 Depth=2
	movl	$0, -176(%rbp)
	movq	-392(%rbp), %rax
	movq	80(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -144(%rbp)
	testq	%rax, %rax
	je	.LBB4_766
# BB#760:                               #   in Loop: Header=BB4_738 Depth=2
	movq	-144(%rbp), %rax
	jmp	.LBB4_761
	.align	16, 0x90
.LBB4_765:                              #   in Loop: Header=BB4_761 Depth=3
	movq	-120(%rbp), %rax
	movq	80(%rax), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	PushScope
	incl	-176(%rbp)
	movq	-128(%rbp), %rax
.LBB4_761:                              #   Parent Loop BB4_87 Depth=1
                                        #     Parent Loop BB4_738 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_763 Depth 4
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-144(%rbp), %rax
	je	.LBB4_766
# BB#762:                               #   in Loop: Header=BB4_761 Depth=3
	movq	-128(%rbp), %rax
	jmp	.LBB4_763
	.align	16, 0x90
.LBB4_764:                              #   in Loop: Header=BB4_763 Depth=4
	movq	-120(%rbp), %rax
.LBB4_763:                              #   Parent Loop BB4_87 Depth=1
                                        #     Parent Loop BB4_738 Depth=2
                                        #       Parent Loop BB4_761 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_764
	jmp	.LBB4_765
	.align	16, 0x90
.LBB4_766:                              #   in Loop: Header=BB4_738 Depth=2
	movq	-392(%rbp), %rax
	movq	80(%rax), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	PushScope
	movq	-64(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	Parse
	movq	%rax, -96(%rbp)
	callq	PopScope
	movq	-392(%rbp), %rax
	movb	$10, 32(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB4_768
# BB#767:                               #   in Loop: Header=BB4_738 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_771
.LBB4_768:                              #   in Loop: Header=BB4_738 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_769
# BB#770:                               #   in Loop: Header=BB4_738 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_771
.LBB4_769:                              #   in Loop: Header=BB4_738 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB4_771:                              #   in Loop: Header=BB4_738 Depth=2
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
	movq	-392(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_774
# BB#772:                               #   in Loop: Header=BB4_738 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB4_774
# BB#773:                               #   in Loop: Header=BB4_738 Depth=2
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
.LBB4_774:                              #   in Loop: Header=BB4_738 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_777
# BB#775:                               #   in Loop: Header=BB4_738 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB4_777
# BB#776:                               #   in Loop: Header=BB4_738 Depth=2
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
.LBB4_777:                              #   in Loop: Header=BB4_738 Depth=2
	movl	$0, -156(%rbp)
	jmp	.LBB4_778
	.align	16, 0x90
.LBB4_779:                              #   in Loop: Header=BB4_778 Depth=3
	callq	PopScope
	incl	-156(%rbp)
.LBB4_778:                              #   Parent Loop BB4_87 Depth=1
                                        #     Parent Loop BB4_738 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-156(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jl	.LBB4_779
# BB#780:                               #   in Loop: Header=BB4_738 Depth=2
	movq	-88(%rbp), %rax
	jmp	.LBB4_781
	.align	16, 0x90
.LBB4_1069:                             #   in Loop: Header=BB4_781 Depth=3
	movq	-128(%rbp), %rax
.LBB4_781:                              #   Parent Loop BB4_87 Depth=1
                                        #     Parent Loop BB4_738 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_783 Depth 4
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB4_789
# BB#782:                               #   in Loop: Header=BB4_781 Depth=3
	movq	-128(%rbp), %rax
	jmp	.LBB4_783
	.align	16, 0x90
.LBB4_784:                              #   in Loop: Header=BB4_783 Depth=4
	movq	-120(%rbp), %rax
.LBB4_783:                              #   Parent Loop BB4_87 Depth=1
                                        #     Parent Loop BB4_738 Depth=2
                                        #       Parent Loop BB4_781 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_784
# BB#785:                               #   in Loop: Header=BB4_781 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	je	.LBB4_787
# BB#786:                               #   in Loop: Header=BB4_781 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.45, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_787:                              #   in Loop: Header=BB4_781 Depth=3
	movq	-392(%rbp), %rax
	movq	80(%rax), %rax
	movq	-120(%rbp), %rcx
	cmpq	80(%rcx), %rax
	jne	.LBB4_1069
# BB#788:                               #   in Loop: Header=BB4_738 Depth=2
	movq	-392(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r15
	movq	-88(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movl	$6, %edi
	movl	$31, %esi
	movl	$.L.str.46, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r15, %r9
	callq	Error
	movq	-392(%rbp), %rdi
	callq	DisposeObject
	movq	$0, -392(%rbp)
.LBB4_789:                              #   in Loop: Header=BB4_738 Depth=2
	cmpq	$0, -392(%rbp)
	je	.LBB4_803
# BB#790:                               #   in Loop: Header=BB4_738 Depth=2
	movq	-392(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	126(%rax), %eax
	btl	$6, %eax
	jae	.LBB4_792
# BB#791:                               #   in Loop: Header=BB4_738 Depth=2
	incl	-180(%rbp)
.LBB4_792:                              #   in Loop: Header=BB4_738 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB4_794
# BB#793:                               #   in Loop: Header=BB4_738 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_797
.LBB4_794:                              #   in Loop: Header=BB4_738 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_795
# BB#796:                               #   in Loop: Header=BB4_738 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_797
.LBB4_795:                              #   in Loop: Header=BB4_738 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_797:                              #   in Loop: Header=BB4_738 Depth=2
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
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_800
# BB#798:                               #   in Loop: Header=BB4_738 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB4_800
# BB#799:                               #   in Loop: Header=BB4_738 Depth=2
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
.LBB4_800:                              #   in Loop: Header=BB4_738 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-392(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_803
# BB#801:                               #   in Loop: Header=BB4_738 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB4_803
# BB#802:                               #   in Loop: Header=BB4_738 Depth=2
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
.LBB4_803:                              #   in Loop: Header=BB4_738 Depth=2
	movq	-104(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	PushScope
	cmpq	$0, -80(%rbp)
	jne	.LBB4_805
# BB#804:                               #   in Loop: Header=BB4_738 Depth=2
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	jmp	.LBB4_805
.LBB4_747:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-392(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, (%rsp)
	movl	$6, %edi
	movl	$30, %esi
	movl	$.L.str.44, %edx
	movl	$2, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movq	-392(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_749
# BB#748:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_750
.LBB4_749:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_751
.LBB4_750:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_751:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB4_752:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	122(%rax), %eax
	cmpl	%eax, -180(%rbp)
	jge	.LBB4_819
# BB#753:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	jmp	.LBB4_754
	.align	16, 0x90
.LBB4_818:                              #   in Loop: Header=BB4_754 Depth=2
	movq	-152(%rbp), %rax
.LBB4_754:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_756 Depth 3
                                        #       Child Loop BB4_809 Depth 3
                                        #         Child Loop BB4_811 Depth 4
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB4_819
# BB#755:                               #   in Loop: Header=BB4_754 Depth=2
	movq	-152(%rbp), %rax
	jmp	.LBB4_756
	.align	16, 0x90
.LBB4_757:                              #   in Loop: Header=BB4_756 Depth=3
	movq	-96(%rbp), %rax
.LBB4_756:                              #   Parent Loop BB4_87 Depth=1
                                        #     Parent Loop BB4_754 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_757
# BB#806:                               #   in Loop: Header=BB4_754 Depth=2
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$145, %eax
	jne	.LBB4_818
# BB#807:                               #   in Loop: Header=BB4_754 Depth=2
	movq	-96(%rbp), %rax
	movzbl	126(%rax), %eax
	btl	$6, %eax
	jae	.LBB4_818
# BB#808:                               #   in Loop: Header=BB4_754 Depth=2
	movq	-88(%rbp), %rax
	jmp	.LBB4_809
	.align	16, 0x90
.LBB4_815:                              #   in Loop: Header=BB4_809 Depth=3
	movq	-128(%rbp), %rax
.LBB4_809:                              #   Parent Loop BB4_87 Depth=1
                                        #     Parent Loop BB4_754 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_811 Depth 4
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB4_816
# BB#810:                               #   in Loop: Header=BB4_809 Depth=3
	movq	-128(%rbp), %rax
	jmp	.LBB4_811
	.align	16, 0x90
.LBB4_812:                              #   in Loop: Header=BB4_811 Depth=4
	movq	-120(%rbp), %rax
.LBB4_811:                              #   Parent Loop BB4_87 Depth=1
                                        #     Parent Loop BB4_754 Depth=2
                                        #       Parent Loop BB4_809 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_812
# BB#813:                               #   in Loop: Header=BB4_809 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB4_815
# BB#814:                               #   in Loop: Header=BB4_809 Depth=3
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB4_815
.LBB4_816:                              #   in Loop: Header=BB4_754 Depth=2
	movq	-128(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_818
# BB#817:                               #   in Loop: Header=BB4_754 Depth=2
	movq	-88(%rbp), %rbx
	addq	$32, %rbx
	movq	-96(%rbp), %rdi
	callq	SymName
	movq	%rax, %r14
	movq	-104(%rbp), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movl	$6, %edi
	movl	$38, %esi
	movl	$.L.str.47, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	Error
	jmp	.LBB4_818
.LBB4_819:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	jne	.LBB4_823
# BB#820:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB4_821
# BB#822:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 80(%rcx)
	jmp	.LBB4_823
.LBB4_821:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rbx
	addq	$32, %rbx
	movq	-104(%rbp), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movl	$6, %edi
	movl	$32, %esi
	movl	$.L.str.48, %edx
	movl	$2, %ecx
	movl	$.L.str.33, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB4_823:                              #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -72(%rbp)
	je	.LBB4_955
# BB#824:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$6, %eax
	jae	.LBB4_955
# BB#825:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$14, %eax
	jb	.LBB4_955
# BB#826:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB4_955
# BB#827:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB4_829
# BB#828:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rdi
	movl	$146, %esi
	callq	ChildSym
	movzbl	124(%rax), %eax
	cmpl	$1, %eax
	jg	.LBB4_955
.LBB4_829:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB4_831
# BB#830:                               #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	decl	%eax
	jmp	.LBB4_832
.LBB4_831:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
.LBB4_832:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, -156(%rbp)
	jmp	.LBB4_833
.LBB4_838:                              #   in Loop: Header=BB4_833 Depth=2
	decl	-156(%rbp)
.LBB4_833:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-156(%rbp), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jl	.LBB4_835
# BB#834:                               #   in Loop: Header=BB4_833 Depth=2
	movslq	-156(%rbp), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$20, %ecx
	jl	.LBB4_837
.LBB4_835:                              #   in Loop: Header=BB4_833 Depth=2
	movslq	-156(%rbp), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$100, %ecx
	je	.LBB4_837
# BB#836:                               #   in Loop: Header=BB4_833 Depth=2
	movslq	-156(%rbp), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	setl	%al
.LBB4_837:                              #   in Loop: Header=BB4_833 Depth=2
	testb	%al, %al
	jne	.LBB4_838
# BB#839:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-156(%rbp), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_841
# BB#840:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-156(%rbp), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	jne	.LBB4_955
.LBB4_841:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	-156(%rbp), %rax
	movq	tok_stack-8(,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$110, %eax
	jne	.LBB4_955
# BB#842:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB4_873
# BB#843:                               #   in Loop: Header=BB4_87 Depth=1
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_845
# BB#844:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_848
.LBB4_845:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_846
# BB#847:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_848
.LBB4_846:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_848:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$2, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movq	InputSym(%rip), %rcx
	movq	%rcx, 80(%rax)
	movq	-80(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-80(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-80(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	cmpl	$0, -172(%rbp)
	je	.LBB4_869
# BB#849:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_851
# BB#850:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -396(%rbp)
	movl	$7, -400(%rbp)
	jmp	.LBB4_855
.LBB4_851:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_853
# BB#852:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_854
.LBB4_853:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -396(%rbp)
	movl	$7, -400(%rbp)
	jmp	.LBB4_855
.LBB4_854:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -396(%rbp)
	movl	$103, -400(%rbp)
	jmp	.LBB4_855
.LBB4_859:                              #   in Loop: Header=BB4_855 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_855:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_856
# BB#857:                               #   in Loop: Header=BB4_855 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-400(%rbp), %eax
	setge	%al
	jmp	.LBB4_858
.LBB4_856:                              #   in Loop: Header=BB4_855 Depth=2
	xorl	%eax, %eax
.LBB4_858:                              #   in Loop: Header=BB4_855 Depth=2
	testb	%al, %al
	jne	.LBB4_859
# BB#860:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_869
# BB#861:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-396(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_863
# BB#862:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_866
.LBB4_863:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_864
# BB#865:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_866
.LBB4_864:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_866:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-396(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-400(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-96(%rbp), %rax
	movb	42(%rax), %cl
	movb	%cl, 42(%rax)
	movq	-96(%rbp), %rax
	movb	41(%rax), %cl
	movb	%cl, 41(%rax)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-96(%rbp), %rax
	movw	34(%rax), %cx
	movw	%cx, 34(%rax)
	movq	-96(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, 36(%rax)
	movq	-96(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_868
# BB#867:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_869
.LBB4_868:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_869:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_871
# BB#870:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	jmp	.LBB4_872
.LBB4_871:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_872:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$1, -172(%rbp)
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_873:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rdi
	movq	%rdi, -88(%rbp)
	callq	TransferBegin
	movq	%rax, -88(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB4_927
# BB#874:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB4_924
# BB#875:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB4_876
.LBB4_877:                              #   in Loop: Header=BB4_876 Depth=2
	movq	-96(%rbp), %rax
.LBB4_876:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_877
# BB#878:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB4_880
# BB#879:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	je	.LBB4_881
.LBB4_880:                              #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.49, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_881:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB4_883
# BB#882:                               #   in Loop: Header=BB4_87 Depth=1
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
.LBB4_883:                              #   in Loop: Header=BB4_87 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_885
# BB#884:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB4_885:                              #   in Loop: Header=BB4_87 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_887
# BB#886:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_888
.LBB4_887:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_889
.LBB4_927:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$0, -172(%rbp)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_948
# BB#928:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_930
# BB#929:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -404(%rbp)
	movl	$7, -408(%rbp)
	jmp	.LBB4_934
.LBB4_924:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_926
# BB#925:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	movl	$1, -172(%rbp)
	jmp	.LBB4_955
.LBB4_930:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_932
# BB#931:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_933
.LBB4_932:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -404(%rbp)
	movl	$7, -408(%rbp)
	jmp	.LBB4_934
.LBB4_926:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movl	$1, -172(%rbp)
	jmp	.LBB4_955
.LBB4_888:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_889:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	xx_tmp(%rip), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB4_891
# BB#890:                               #   in Loop: Header=BB4_87 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB4_891:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$2, %eax
	jae	.LBB4_922
# BB#892:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB4_893
.LBB4_894:                              #   in Loop: Header=BB4_893 Depth=2
	movq	-96(%rbp), %rax
.LBB4_893:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_894
# BB#895:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB4_897
# BB#896:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$144, %eax
	je	.LBB4_898
.LBB4_897:                              #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.50, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_898:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB4_899
.LBB4_900:                              #   in Loop: Header=BB4_899 Depth=2
	movq	-96(%rbp), %rax
.LBB4_899:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_900
# BB#901:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_903
# BB#902:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	jmp	.LBB4_904
.LBB4_903:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_904:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB4_906
# BB#905:                               #   in Loop: Header=BB4_87 Depth=1
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
.LBB4_906:                              #   in Loop: Header=BB4_87 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_908
# BB#907:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB4_908:                              #   in Loop: Header=BB4_87 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_910
# BB#909:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_911
.LBB4_910:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_912
.LBB4_911:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_912:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB4_914
# BB#913:                               #   in Loop: Header=BB4_87 Depth=1
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
.LBB4_914:                              #   in Loop: Header=BB4_87 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_916
# BB#915:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB4_916:                              #   in Loop: Header=BB4_87 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_918
# BB#917:                               #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_919
.LBB4_918:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_920
.LBB4_919:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_920:                              #   in Loop: Header=BB4_87 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	xx_tmp(%rip), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB4_922
# BB#921:                               #   in Loop: Header=BB4_87 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB4_922:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_953
# BB#923:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_954
.LBB4_953:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_954
.LBB4_933:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -404(%rbp)
	movl	$103, -408(%rbp)
	jmp	.LBB4_934
.LBB4_938:                              #   in Loop: Header=BB4_934 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_934:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_935
# BB#936:                               #   in Loop: Header=BB4_934 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-408(%rbp), %eax
	setge	%al
	jmp	.LBB4_937
.LBB4_935:                              #   in Loop: Header=BB4_934 Depth=2
	xorl	%eax, %eax
.LBB4_937:                              #   in Loop: Header=BB4_934 Depth=2
	testb	%al, %al
	jne	.LBB4_938
# BB#939:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_948
# BB#940:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-404(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_942
# BB#941:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_945
.LBB4_942:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_943
# BB#944:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_945
.LBB4_943:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_945:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-404(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-408(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-88(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-88(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-88(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-88(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-88(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_947
# BB#946:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_948
.LBB4_947:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_948:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_950
# BB#949:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_951
.LBB4_950:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_951:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB4_952
.LBB4_954:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$0, -172(%rbp)
	jmp	.LBB4_955
.LBB4_952:                              #   in Loop: Header=BB4_87 Depth=1
	callq	Reduce
	movl	%eax, -172(%rbp)
	movl	ttop(%rip), %eax
	cmpl	-168(%rbp), %eax
	je	.LBB4_256
.LBB4_955:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB4_1005
# BB#956:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	je	.LBB4_958
# BB#957:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	jne	.LBB4_1004
.LBB4_958:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rdx
	movzbl	32(%rdx), %eax
	addq	$32, %rdx
	cmpl	$104, %eax
	sete	%al
	movzbl	%al, %edi
	movq	-104(%rbp), %rsi
	callq	FilterCreate
	movq	%rax, -96(%rbp)
	cmpl	$0, -172(%rbp)
	je	.LBB4_979
# BB#959:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_961
# BB#960:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -412(%rbp)
	movl	$7, -416(%rbp)
	jmp	.LBB4_965
.LBB4_1005:                             #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$8, %eax
	jae	.LBB4_87
# BB#1006:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	je	.LBB4_1008
# BB#1007:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	jne	.LBB4_1012
.LBB4_1008:                             #   in Loop: Header=BB4_87 Depth=1
	movq	-104(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	PushScope
	movq	-104(%rbp), %rdi
	movl	$146, %esi
	callq	ChildSym
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	PushScope
	movq	-64(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	Parse
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_1010
# BB#1009:                              #   in Loop: Header=BB4_87 Depth=1
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	jmp	.LBB4_1011
.LBB4_1004:                             #   in Loop: Header=BB4_87 Depth=1
	movq	-88(%rbp), %rbx
	addq	$32, %rbx
	movq	-104(%rbp), %rdi
	callq	SymName
	movq	%rax, %r9
	movl	$6, %edi
	movl	$33, %esi
	movl	$.L.str.51, %edx
	jmp	.LBB4_436
.LBB4_961:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_963
# BB#962:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_964
.LBB4_963:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -412(%rbp)
	movl	$7, -416(%rbp)
	jmp	.LBB4_965
.LBB4_1010:                             #   in Loop: Header=BB4_87 Depth=1
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_1011:                             #   in Loop: Header=BB4_87 Depth=1
	callq	Reduce
	movl	%eax, -172(%rbp)
	callq	PopScope
	callq	PopScope
	cmpq	$0, -80(%rbp)
	jne	.LBB4_87
	jmp	.LBB4_253
.LBB4_1012:                             #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rbx
	addq	$32, %rbx
	movq	-104(%rbp), %rdi
	callq	SymName
	movq	%rax, %r9
	movl	$6, %edi
	movl	$34, %esi
	movl	$.L.str.52, %edx
	movl	$2, %ecx
	jmp	.LBB4_437
.LBB4_964:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -412(%rbp)
	movl	$103, -416(%rbp)
	jmp	.LBB4_965
.LBB4_969:                              #   in Loop: Header=BB4_965 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_965:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_966
# BB#967:                               #   in Loop: Header=BB4_965 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-416(%rbp), %eax
	setge	%al
	jmp	.LBB4_968
.LBB4_966:                              #   in Loop: Header=BB4_965 Depth=2
	xorl	%eax, %eax
.LBB4_968:                              #   in Loop: Header=BB4_965 Depth=2
	testb	%al, %al
	jne	.LBB4_969
# BB#970:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_979
# BB#971:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-412(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_973
# BB#972:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_976
.LBB4_973:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_974
# BB#975:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_976
.LBB4_974:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_976:                              #   in Loop: Header=BB4_87 Depth=1
	movb	-412(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-416(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-80(%rbp), %rax
	movb	42(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-80(%rbp), %rax
	movb	41(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-80(%rbp), %rax
	movw	34(%rax), %ax
	movq	-96(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-80(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-80(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_978
# BB#977:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_979
.LBB4_978:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_979:                              #   in Loop: Header=BB4_87 Depth=1
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_981
# BB#980:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-80(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	jmp	.LBB4_982
.LBB4_981:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_982:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$0, -172(%rbp)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_1003
# BB#983:                               #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB4_985
# BB#984:                               #   in Loop: Header=BB4_87 Depth=1
	movl	$100, -420(%rbp)
	movl	$7, -424(%rbp)
	jmp	.LBB4_989
.LBB4_985:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_987
# BB#986:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$2, -172(%rbp)
	jne	.LBB4_988
.LBB4_987:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -420(%rbp)
	movl	$7, -424(%rbp)
	jmp	.LBB4_989
.LBB4_988:                              #   in Loop: Header=BB4_87 Depth=1
	movl	$101, -420(%rbp)
	movl	$103, -424(%rbp)
	jmp	.LBB4_989
.LBB4_993:                              #   in Loop: Header=BB4_989 Depth=2
	callq	Reduce
	movl	%eax, -172(%rbp)
.LBB4_989:                              #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -172(%rbp)
	je	.LBB4_990
# BB#991:                               #   in Loop: Header=BB4_989 Depth=2
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	40(%rax), %eax
	cmpl	-424(%rbp), %eax
	setge	%al
	jmp	.LBB4_992
.LBB4_990:                              #   in Loop: Header=BB4_989 Depth=2
	xorl	%eax, %eax
.LBB4_992:                              #   in Loop: Header=BB4_989 Depth=2
	testb	%al, %al
	jne	.LBB4_993
# BB#994:                               #   in Loop: Header=BB4_87 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB4_1003
# BB#995:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	-420(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_997
# BB#996:                               #   in Loop: Header=BB4_87 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_1000
.LBB4_997:                              #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_998
# BB#999:                               #   in Loop: Header=BB4_87 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_1000
.LBB4_998:                              #   in Loop: Header=BB4_87 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_1000:                             #   in Loop: Header=BB4_87 Depth=1
	movb	-420(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movb	-424(%rbp), %cl
	movb	%cl, 40(%rax)
	movq	-96(%rbp), %rax
	movb	42(%rax), %cl
	movb	%cl, 42(%rax)
	movq	-96(%rbp), %rax
	movb	41(%rax), %cl
	movb	%cl, 41(%rax)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-96(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-96(%rbp), %rax
	movw	34(%rax), %cx
	movw	%cx, 34(%rax)
	movq	-96(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, 36(%rax)
	movq	-96(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, 36(%rax)
	movl	ttop(%rip), %eax
	incl	%eax
	movl	%eax, ttop(%rip)
	cmpl	$99, %eax
	jg	.LBB4_1002
# BB#1001:                              #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	movslq	ttop(%rip), %rcx
	movq	%rax, tok_stack(,%rcx,8)
	movq	-96(%rbp), %rax
	jmp	.LBB4_117
.LBB4_1002:                             #   in Loop: Header=BB4_87 Depth=1
	movslq	ttop(%rip), %rax
	movq	tok_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$2, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_1003:                             #   in Loop: Header=BB4_87 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB4_117
.LBB4_147:
	movq	-80(%rbp), %rax
.LBB4_148:
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB4_149:
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_256:
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB4_149
.LBB4_701:
	movq	-88(%rbp), %rax
	jmp	.LBB4_148
.Lfunc_end4:
	.size	Parse, .Lfunc_end4-Parse
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_662
	.quad	.LBB4_1067
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_1067
	.quad	.LBB4_1067
	.quad	.LBB4_1067
	.quad	.LBB4_89
	.quad	.LBB4_121
	.quad	.LBB4_1067
	.quad	.LBB4_1067
	.quad	.LBB4_1067
	.quad	.LBB4_1067
	.quad	.LBB4_142
	.quad	.LBB4_142
	.quad	.LBB4_142
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_257
	.quad	.LBB4_257
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_1067
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_343
	.quad	.LBB4_343
	.quad	.LBB4_1067
	.quad	.LBB4_438
	.quad	.LBB4_461
	.quad	.LBB4_491
	.quad	.LBB4_514
	.quad	.LBB4_545
	.quad	.LBB4_585
	.quad	.LBB4_1067
	.quad	.LBB4_656
	.quad	.LBB4_611
	.quad	.LBB4_1067
	.quad	.LBB4_1013
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_219
	.quad	.LBB4_1067
	.quad	.LBB4_1067
	.quad	.LBB4_372
	.quad	.LBB4_428
	.quad	.LBB4_370
	.quad	.LBB4_396
	.quad	.LBB4_435
	.quad	.LBB4_435
	.quad	.LBB4_1067
	.quad	.LBB4_1067
	.quad	.LBB4_1067
	.quad	.LBB4_369
	.quad	.LBB4_1067
	.quad	.LBB4_1067
	.quad	.LBB4_435
	.quad	.LBB4_435
	.quad	.LBB4_435
	.quad	.LBB4_435

	.text
	.align	16, 0x90
	.type	Reduce,@function
Reduce:                                 # @Reduce
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
.Ltmp25:
	.cfi_offset %rbx, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
	movslq	ttop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, ttop(%rip)
	movq	tok_stack(,%rax,8), %rax
	movq	%rax, -80(%rbp)
	movl	$1, -84(%rbp)
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	decl	%eax
	cmpl	$109, %eax
	ja	.LBB5_268
# BB#1:
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_16:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB5_28
# BB#17:
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_19
# BB#18:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_22
.LBB5_268:
	movq	no_fpos(%rip), %rbx
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.55, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.68, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
.LBB5_269:
	callq	Error
	jmp	.LBB5_270
.LBB5_19:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_20
# BB#21:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_22
.LBB5_20:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_22:
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
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_25
# BB#23:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_25
# BB#24:
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
.LBB5_25:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_28
# BB#26:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_28
# BB#27:
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
.LBB5_28:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$2, %eax
	jae	.LBB5_41
# BB#29:
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -56(%rbp)
.LBB5_30:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_32
# BB#31:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_35
.LBB5_32:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_33
# BB#34:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_35
.LBB5_33:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_35:
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
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_38
# BB#36:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_38
# BB#37:
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
.LBB5_38:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_41
# BB#39:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_41
# BB#40:
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
.LBB5_41:
	movq	-80(%rbp), %rax
.LBB5_42:
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB5_267
# BB#43:
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	jmp	.LBB5_270
.LBB5_267:
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB5_270:
	movl	-84(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_187:
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movzbl	32(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB5_193
# BB#188:
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB5_190
# BB#189:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB5_191
.LBB5_190:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB5_192
.LBB5_70:
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_72
# BB#71:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_75
.LBB5_229:
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB5_247
# BB#230:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_232
# BB#231:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_235
.LBB5_2:
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rdi
	callq	TransferEnd
.LBB5_3:
	movzbl	zz_lengths+5(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_8
.LBB5_193:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_195
# BB#194:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_198
.LBB5_5:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_6
# BB#7:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_8
.LBB5_173:
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_175
# BB#174:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_178
.LBB5_94:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB5_122
# BB#95:
	movzbl	zz_lengths+10(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_97
# BB#96:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_100
.LBB5_44:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB5_56
# BB#45:
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_47
# BB#46:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_50
.LBB5_140:
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.60, (%rsp)
	movl	$6, %edi
	movl	$4, %esi
	movl	$.L.str.59, %edx
	movl	$2, %ecx
	movl	$.L.str.17, %r9d
	jmp	.LBB5_141
.LBB5_149:
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB5_150
# BB#155:
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	jne	.LBB5_159
# BB#156:
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzwl	34(%rax), %eax
	testl	%eax, %eax
	jle	.LBB5_158
# BB#157:
	movq	-80(%rbp), %rbx
	addq	$32, %rbx
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rdi
	addq	$32, %rdi
	callq	EchoFilePos
	movq	%rax, 8(%rsp)
	movq	$.L.str.33, 16(%rsp)
	movq	$.L.str.17, (%rsp)
	movl	$6, %edi
	movl	$5, %esi
	movl	$.L.str.62, %edx
	movl	$2, %ecx
	movl	$.L.str.60, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	jmp	.LBB5_142
.LBB5_148:
	movq	no_fpos(%rip), %r8
	movq	$.L.str.33, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.55, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.61, %r9d
	xorl	%eax, %eax
	jmp	.LBB5_269
.LBB5_161:
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	je	.LBB5_163
# BB#162:
	movq	no_fpos(%rip), %r8
	movq	$.L.str.35, (%rsp)
	jmp	.LBB5_160
.LBB5_72:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_73
# BB#74:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_75
.LBB5_195:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_196
# BB#197:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_198
.LBB5_6:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_8:
	movq	zz_hold(%rip), %rax
	movb	$5, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -32(%rbp)
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB5_10
# BB#9:
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	jmp	.LBB5_11
.LBB5_10:
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB5_11:
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB5_13
# BB#12:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB5_14
.LBB5_13:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB5_15
.LBB5_14:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB5_15:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_270
.LBB5_232:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_233
# BB#234:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_235
.LBB5_175:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_176
# BB#177:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_178
.LBB5_163:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movslq	ttop(%rip), %rcx
	movq	tok_stack(,%rcx,8), %rcx
	cmpq	80(%rcx), %rax
	je	.LBB5_150
# BB#164:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB5_165
# BB#166:
	movq	-80(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB5_167
# BB#170:
	movq	-80(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r14
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, %r15
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rdi
	addq	$32, %rdi
	callq	EchoFilePos
	movq	%rax, 32(%rsp)
	movq	%r15, 16(%rsp)
	movq	%r14, (%rsp)
	movq	$.L.str.33, 24(%rsp)
	movq	$.L.str.35, 8(%rsp)
	movl	$6, %edi
	movl	$9, %esi
	movl	$.L.str.67, %edx
	jmp	.LBB5_171
.LBB5_191:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB5_192:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_205
.LBB5_73:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_75:
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
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_78
# BB#76:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_78
# BB#77:
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
.LBB5_78:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_81
# BB#79:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_81
# BB#80:
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
.LBB5_81:
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_83
# BB#82:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_86
.LBB5_83:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_84
# BB#85:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_86
.LBB5_84:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_86:
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
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_89
# BB#87:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_89
# BB#88:
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
.LBB5_89:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_92
# BB#90:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_92
# BB#91:
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
.LBB5_92:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB5_41
# BB#93:
	movq	-56(%rbp), %rbx
	addq	$32, %rbx
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, %r9
	movl	$6, %edi
	movl	$3, %esi
	movl	$.L.str.58, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB5_41
.LBB5_97:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_98
# BB#99:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_100
.LBB5_47:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_48
# BB#49:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_50
.LBB5_196:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_198:
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
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_201
# BB#199:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_201
# BB#200:
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
.LBB5_201:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_204
# BB#202:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_204
# BB#203:
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
.LBB5_204:
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB5_205:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_207
# BB#206:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_210
.LBB5_207:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_208
# BB#209:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_210
.LBB5_208:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_210:
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
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_213
# BB#211:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_213
# BB#212:
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
.LBB5_213:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_216
# BB#214:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_216
# BB#215:
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
.LBB5_216:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_218
# BB#217:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_221
.LBB5_218:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_219
# BB#220:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_221
.LBB5_219:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_221:
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
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_224
# BB#222:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_224
# BB#223:
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
.LBB5_224:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-48(%rbp), %rax
	jmp	.LBB5_225
.LBB5_159:
	movq	no_fpos(%rip), %r8
	movq	$.L.str.60, (%rsp)
.LBB5_160:
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.55, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.61, %r9d
.LBB5_141:
	xorl	%eax, %eax
.LBB5_142:
	callq	Error
	jmp	.LBB5_143
.LBB5_233:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_235:
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
	movq	%rax, -72(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_237
# BB#236:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_240
.LBB5_237:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_238
# BB#239:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_240
.LBB5_176:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_178:
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
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_181
# BB#179:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_181
# BB#180:
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
.LBB5_181:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_184
# BB#182:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_184
# BB#183:
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
.LBB5_184:
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movl	otop(%rip), %eax
	incl	%eax
	movl	%eax, otop(%rip)
	cmpl	$99, %eax
	jg	.LBB5_186
# BB#185:
	movq	zz_hold(%rip), %rax
	movslq	otop(%rip), %rcx
	movq	%rax, obj_stack(,%rcx,8)
	movl	$0, -84(%rbp)
	jmp	.LBB5_270
.LBB5_186:
	movslq	otop(%rip), %rax
	movq	obj_stack-8(,%rax,8), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movl	$0, -84(%rbp)
	jmp	.LBB5_270
.LBB5_238:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_240:
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
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_243
# BB#241:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_243
# BB#242:
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
.LBB5_243:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_246
# BB#244:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_246
# BB#245:
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
.LBB5_246:
	movq	-32(%rbp), %rax
	movw	34(%rax), %ax
	movq	-72(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-32(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-72(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-32(%rbp), %rax
	andl	36(%rax), %esi
	movq	-72(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB5_247:
	movq	-80(%rbp), %rax
	movb	$1, 32(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_249
# BB#248:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_252
.LBB5_249:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_250
# BB#251:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_252
.LBB5_250:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_252:
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
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_255
# BB#253:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_255
# BB#254:
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
.LBB5_255:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_258
# BB#256:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_258
# BB#257:
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
.LBB5_258:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_260
# BB#259:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_263
.LBB5_260:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_261
# BB#262:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_263
.LBB5_261:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_263:
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
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_266
# BB#264:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_266
# BB#265:
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
.LBB5_266:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
.LBB5_225:
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_228
# BB#226:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_228
# BB#227:
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
.LBB5_228:
	movq	-32(%rbp), %rax
	jmp	.LBB5_42
.LBB5_165:
	movq	-80(%rbp), %rbx
	addq	$32, %rbx
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, %r14
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rdi
	addq	$32, %rdi
	callq	EchoFilePos
	movq	%rax, 16(%rsp)
	movq	%r14, (%rsp)
	movq	$.L.str.33, 8(%rsp)
	movl	$6, %edi
	movl	$7, %esi
	movl	$.L.str.64, %edx
.LBB5_171:
	movl	$2, %ecx
	movl	$.L.str.35, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB5_150
.LBB5_98:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_100:
	movq	zz_hold(%rip), %rax
	movb	$10, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -64(%rbp)
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_102
# BB#101:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_105
.LBB5_102:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_103
# BB#104:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_105
.LBB5_48:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_50:
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
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_53
# BB#51:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_53
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
.LBB5_53:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_56
# BB#54:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_56
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
.LBB5_56:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$2, %eax
	jae	.LBB5_41
# BB#57:
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_59
# BB#58:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_62
.LBB5_59:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_60
# BB#61:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_62
.LBB5_103:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_105:
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
	je	.LBB5_108
# BB#106:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_108
# BB#107:
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
.LBB5_108:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_111
# BB#109:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_111
# BB#110:
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
.LBB5_111:
	movq	-72(%rbp), %rax
	movw	34(%rax), %ax
	movq	-64(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-72(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-64(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-72(%rbp), %rax
	andl	36(%rax), %esi
	movq	-64(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-80(%rbp), %rax
	movq	80(%rax), %rdi
	movl	$146, %esi
	callq	ChildSym
	movq	-64(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_113
# BB#112:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_116
.LBB5_113:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_114
# BB#115:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_116
.LBB5_60:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_62:
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
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_65
# BB#63:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_65
# BB#64:
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
.LBB5_65:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_68
# BB#66:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_68
# BB#67:
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
.LBB5_68:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$56, %eax
	jne	.LBB5_41
# BB#69:
	movq	-80(%rbp), %rdi
	callq	OptimizeCase
	movq	%rax, -80(%rbp)
	jmp	.LBB5_41
.LBB5_114:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_116:
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
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_119
# BB#117:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_119
# BB#118:
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
.LBB5_119:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_122
# BB#120:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_122
# BB#121:
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
.LBB5_122:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$2, %eax
	jae	.LBB5_41
# BB#123:
	movzbl	zz_lengths+10(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_125
# BB#124:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_128
.LBB5_125:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_126
# BB#127:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_128
.LBB5_126:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_128:
	movq	zz_hold(%rip), %rax
	movb	$10, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -56(%rbp)
	movslq	otop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, otop(%rip)
	movq	obj_stack(,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_130
# BB#129:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_133
.LBB5_130:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_131
# BB#132:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_133
.LBB5_131:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_133:
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
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_136
# BB#134:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_136
# BB#135:
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
.LBB5_136:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_139
# BB#137:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_139
# BB#138:
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
.LBB5_139:
	movq	-72(%rbp), %rax
	movw	34(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-72(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-72(%rbp), %rax
	andl	36(%rax), %esi
	movq	-56(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-80(%rbp), %rax
	movq	80(%rax), %rdi
	movl	$144, %esi
	callq	ChildSym
	movq	-56(%rbp), %rcx
	movq	%rax, 80(%rcx)
	jmp	.LBB5_30
.LBB5_158:
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$6, %esi
	movl	$.L.str.63, %edx
	movl	$1, %ecx
	movl	$.L.str.60, %r9d
	jmp	.LBB5_141
.LBB5_167:
	movq	-80(%rbp), %r14
	addq	$32, %r14
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movl	$.L.str.66, %ebx
	cmpq	$0, 80(%rax)
	je	.LBB5_169
# BB#168:
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, %rbx
.LBB5_169:
	movslq	ttop(%rip), %rax
	movq	tok_stack(,%rax,8), %rdi
	addq	$32, %rdi
	callq	EchoFilePos
	movq	%rax, 24(%rsp)
	movq	%rbx, 8(%rsp)
	movq	$.L.str.33, 16(%rsp)
	movq	$.L.str.35, (%rsp)
	movl	$6, %edi
	movl	$8, %esi
	movl	$.L.str.65, %edx
	movl	$2, %ecx
	movl	$.L.str.35, %r9d
	xorl	%eax, %eax
	movq	%r14, %r8
	callq	Error
.LBB5_150:
	movslq	ttop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, ttop(%rip)
	movq	tok_stack(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB5_152
# BB#151:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB5_153
.LBB5_152:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB5_154
.LBB5_153:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB5_154:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB5_143:
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB5_145
# BB#144:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB5_146
.LBB5_145:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB5_147
.LBB5_146:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB5_147:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movl	$2, -84(%rbp)
	jmp	.LBB5_270
.Lfunc_end5:
	.size	Reduce, .Lfunc_end5-Reduce
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_173
	.quad	.LBB5_94
	.quad	.LBB5_268
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_70
	.quad	.LBB5_70
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_187
	.quad	.LBB5_187
	.quad	.LBB5_187
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_44
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_268
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_16
	.quad	.LBB5_229
	.quad	.LBB5_229
	.quad	.LBB5_140
	.quad	.LBB5_149
	.quad	.LBB5_148
	.quad	.LBB5_161
	.quad	.LBB5_268
	.quad	.LBB5_268
	.quad	.LBB5_3
	.quad	.LBB5_2
	.quad	.LBB5_2

	.text
	.align	16, 0x90
	.type	HuntCommandOptions,@function
HuntCommandOptions:                     # @HuntCommandOptions
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp31:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	80(%rdi), %rax
	movq	%rax, -72(%rbp)
	movq	CommandOptions(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movb	$1, %bl
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_64:                               #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #     Child Loop BB6_6 Depth 2
                                        #     Child Loop BB6_9 Depth 2
                                        #       Child Loop BB6_11 Depth 3
                                        #     Child Loop BB6_18 Depth 2
                                        #       Child Loop BB6_20 Depth 3
	movq	-24(%rbp), %rax
	cmpq	CommandOptions(%rip), %rax
	je	.LBB6_65
# BB#2:                                 #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB6_3
	.align	16, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_3 Depth=2
	movq	-32(%rbp), %rax
.LBB6_3:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_4
# BB#5:                                 #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB6_6
	.align	16, 0x90
.LBB6_7:                                #   in Loop: Header=BB6_6 Depth=2
	movq	-40(%rbp), %rax
.LBB6_6:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_7
# BB#8:                                 #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -76(%rbp)
	movq	-72(%rbp), %rax
	jmp	.LBB6_9
	.align	16, 0x90
.LBB6_66:                               #   in Loop: Header=BB6_9 Depth=2
	movq	-64(%rbp), %rax
.LBB6_9:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_11 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB6_16
# BB#10:                                #   in Loop: Header=BB6_9 Depth=2
	movq	-64(%rbp), %rax
	jmp	.LBB6_11
	.align	16, 0x90
.LBB6_12:                               #   in Loop: Header=BB6_11 Depth=3
	movq	-48(%rbp), %rax
.LBB6_11:                               #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_12
# BB#13:                                #   in Loop: Header=BB6_9 Depth=2
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$145, %eax
	jne	.LBB6_66
# BB#14:                                #   in Loop: Header=BB6_9 Depth=2
	movq	-48(%rbp), %rdi
	callq	SymName
	movq	-32(%rbp), %rsi
	addq	$64, %rsi
	movq	%rax, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB6_66
# BB#15:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$1, -76(%rbp)
.LBB6_16:                               #   in Loop: Header=BB6_1 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB6_64
# BB#17:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -76(%rbp)
	movq	-16(%rbp), %rax
	jmp	.LBB6_18
	.align	16, 0x90
.LBB6_67:                               #   in Loop: Header=BB6_18 Depth=2
	movq	-64(%rbp), %rax
.LBB6_18:                               #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_20 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB6_25
# BB#19:                                #   in Loop: Header=BB6_18 Depth=2
	movq	-64(%rbp), %rax
	jmp	.LBB6_20
	.align	16, 0x90
.LBB6_21:                               #   in Loop: Header=BB6_20 Depth=3
	movq	-56(%rbp), %rax
.LBB6_20:                               #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_21
# BB#22:                                #   in Loop: Header=BB6_18 Depth=2
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB6_67
# BB#23:                                #   in Loop: Header=BB6_18 Depth=2
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_67
# BB#24:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$1, -76(%rbp)
.LBB6_25:                               #   in Loop: Header=BB6_1 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB6_40
# BB#26:                                #   in Loop: Header=BB6_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB6_28
# BB#27:                                #   in Loop: Header=BB6_1 Depth=1
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
.LBB6_28:                               #   in Loop: Header=BB6_1 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB6_30
# BB#29:                                #   in Loop: Header=BB6_1 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB6_30:                               #   in Loop: Header=BB6_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_32
# BB#31:                                #   in Loop: Header=BB6_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_33
.LBB6_32:                               #   in Loop: Header=BB6_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB6_34
	.align	16, 0x90
.LBB6_40:                               #   in Loop: Header=BB6_1 Depth=1
	movzbl	zz_lengths+10(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB6_42
# BB#41:                                #   in Loop: Header=BB6_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_45
.LBB6_42:                               #   in Loop: Header=BB6_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_43
# BB#44:                                #   in Loop: Header=BB6_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_45
.LBB6_33:                               #   in Loop: Header=BB6_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB6_34:                               #   in Loop: Header=BB6_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	xx_tmp(%rip), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB6_36
# BB#35:                                #   in Loop: Header=BB6_1 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB6_36
.LBB6_43:                               #   in Loop: Header=BB6_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB6_45:                               #   in Loop: Header=BB6_1 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$10, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -56(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB6_47
# BB#46:                                #   in Loop: Header=BB6_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_50
.LBB6_47:                               #   in Loop: Header=BB6_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_48
# BB#49:                                #   in Loop: Header=BB6_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_50
.LBB6_48:                               #   in Loop: Header=BB6_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB6_50:                               #   in Loop: Header=BB6_1 Depth=1
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
	movq	-16(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_53
# BB#51:                                #   in Loop: Header=BB6_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB6_53
# BB#52:                                #   in Loop: Header=BB6_1 Depth=1
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
.LBB6_53:                               #   in Loop: Header=BB6_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_56
# BB#54:                                #   in Loop: Header=BB6_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB6_56
# BB#55:                                #   in Loop: Header=BB6_1 Depth=1
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
.LBB6_56:                               #   in Loop: Header=BB6_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 80(%rcx)
.LBB6_36:                               #   in Loop: Header=BB6_1 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB6_38
# BB#37:                                #   in Loop: Header=BB6_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_58
	.align	16, 0x90
.LBB6_38:                               #   in Loop: Header=BB6_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_39
# BB#57:                                #   in Loop: Header=BB6_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_58
.LBB6_39:                               #   in Loop: Header=BB6_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB6_58:                               #   in Loop: Header=BB6_1 Depth=1
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
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_61
# BB#59:                                #   in Loop: Header=BB6_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB6_61
# BB#60:                                #   in Loop: Header=BB6_1 Depth=1
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
.LBB6_61:                               #   in Loop: Header=BB6_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_64
# BB#62:                                #   in Loop: Header=BB6_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB6_64
# BB#63:                                #   in Loop: Header=BB6_1 Depth=1
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
	jmp	.LBB6_64
.LBB6_65:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	HuntCommandOptions, .Lfunc_end6-HuntCommandOptions
	.cfi_endproc

	.align	16, 0x90
	.type	ParseEnvClosure,@function
ParseEnvClosure:                        # @ParseEnvClosure
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp35:
	.cfi_offset %rbx, -32
.Ltmp36:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	je	.LBB7_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.69, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_2:
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	LexGetToken
	movq	%rax, -24(%rbp)
	leaq	-60(%rbp), %r14
	leaq	-24(%rbp), %rbx
	jmp	.LBB7_3
	.align	16, 0x90
.LBB7_12:                               #   in Loop: Header=BB7_3 Depth=1
	callq	SetEnv
	movq	%rax, -40(%rbp)
	callq	LexGetToken
	movq	%rax, -24(%rbp)
.LBB7_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$88, %eax
	je	.LBB7_15
# BB#4:                                 #   in Loop: Header=BB7_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	jne	.LBB7_5
# BB#13:                                #   in Loop: Header=BB7_3 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	ParseEnvClosure
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	jmp	.LBB7_12
	.align	16, 0x90
.LBB7_5:                                #   in Loop: Header=BB7_3 Depth=1
	cmpl	$102, %eax
	jne	.LBB7_14
# BB#6:                                 #   in Loop: Header=BB7_3 Depth=1
	movl	$0, -60(%rbp)
	movq	-40(%rbp), %rdi
	xorl	%edx, %edx
	movq	%r14, %rsi
	callq	SetScope
	movq	-32(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	Parse
	movq	%rax, -56(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB7_8
# BB#7:                                 #   in Loop: Header=BB7_3 Depth=1
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$11, %esi
	movl	$.L.str.70, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB7_8:                                #   in Loop: Header=BB7_3 Depth=1
	movl	$1, -64(%rbp)
	jmp	.LBB7_9
	.align	16, 0x90
.LBB7_10:                               #   in Loop: Header=BB7_9 Depth=2
	callq	PopScope
	incl	-64(%rbp)
.LBB7_9:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB7_10
# BB#11:                                #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	AttachEnv
	movq	-56(%rbp), %rdi
	xorl	%esi, %esi
	jmp	.LBB7_12
	.align	16, 0x90
.LBB7_14:                               #   in Loop: Header=BB7_3 Depth=1
	movq	-24(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$12, %esi
	movl	$.L.str.39, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_3
.LBB7_15:
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_17
# BB#16:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_18
.LBB7_17:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB7_19
.LBB7_18:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB7_19:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-40(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB7_21
# BB#20:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	je	.LBB7_22
.LBB7_21:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$6, %edi
	movl	$13, %esi
	movl	$.L.str.39, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB7_22:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB7_23
	.align	16, 0x90
.LBB7_24:                               #   in Loop: Header=BB7_23 Depth=1
	movq	-48(%rbp), %rax
.LBB7_23:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_24
# BB#25:
	movq	-40(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB7_26
	.align	16, 0x90
.LBB7_35:                               #   in Loop: Header=BB7_26 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB7_26:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB7_36
# BB#27:                                #   in Loop: Header=BB7_26 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB7_29
# BB#28:                                #   in Loop: Header=BB7_26 Depth=1
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
.LBB7_29:                               #   in Loop: Header=BB7_26 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB7_31
# BB#30:                                #   in Loop: Header=BB7_26 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB7_31:                               #   in Loop: Header=BB7_26 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_33
# BB#32:                                #   in Loop: Header=BB7_26 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_34
.LBB7_33:                               #   in Loop: Header=BB7_26 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB7_35
	.align	16, 0x90
.LBB7_34:                               #   in Loop: Header=BB7_26 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB7_35
	.align	16, 0x90
.LBB7_45:                               #   in Loop: Header=BB7_36 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB7_36:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB7_46
# BB#37:                                #   in Loop: Header=BB7_36 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB7_39
# BB#38:                                #   in Loop: Header=BB7_36 Depth=1
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
.LBB7_39:                               #   in Loop: Header=BB7_36 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB7_41
# BB#40:                                #   in Loop: Header=BB7_36 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB7_41:                               #   in Loop: Header=BB7_36 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_43
# BB#42:                                #   in Loop: Header=BB7_36 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_44
.LBB7_43:                               #   in Loop: Header=BB7_36 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB7_45
	.align	16, 0x90
.LBB7_44:                               #   in Loop: Header=BB7_36 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB7_45
.LBB7_46:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_48
# BB#47:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_49
.LBB7_48:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB7_50
.LBB7_49:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB7_50:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB7_52
# BB#51:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.71, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_52:
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ParseEnvClosure, .Lfunc_end7-ParseEnvClosure
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"OptimizeCase:  type(x) != CASE!"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"SetScope: type(env) != ENV!"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"SetScope: LastDown(y)!"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"SetScope: type(yenv) != ENV!"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"cross reference database file name %s is too long"
	.size	.L.str.5, 50

	.type	cross_name,@object      # @cross_name
	.local	cross_name
	.comm	cross_name,8,8
	.type	ttop,@object            # @ttop
	.data
	.align	4
ttop:
	.long	4294967295              # 0xffffffff
	.size	ttop, 4

	.type	tok_stack,@object       # @tok_stack
	.local	tok_stack
	.comm	tok_stack,800,16
	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"expression is too deeply nested"
	.size	.L.str.6, 32

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Parse: *token!"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"word is too long"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"exiting now"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"def"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"langdef"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"macro"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"import"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"extend"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"export"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s expected after %s"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"{"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"@Use"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s or %s tag not allowed here"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"preceding"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"following"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"invalid parameter of %s"
	.size	.L.str.22, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"symbol %s occurs in two %s clauses"
	.size	.L.str.23, 35

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"symbol %s unknown or misspelt"
	.size	.L.str.24, 30

	.type	unknown_count,@object   # @unknown_count
	.local	unknown_count
	.comm	unknown_count,4,4
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"too many errors (%s lines missing or out of order?)"
	.size	.L.str.25, 52

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"@SysInclude"
	.size	.L.str.26, 12

	.type	otop,@object            # @otop
	.data
	.align	4
otop:
	.long	4294967295              # 0xffffffff
	.size	otop, 4

	.type	obj_stack,@object       # @obj_stack
	.local	obj_stack
	.comm	obj_stack,800,16
	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.zero	1
	.size	.L.str.27, 1

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"right parameter of %s or %s must be enclosed in braces"
	.size	.L.str.28, 55

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"@Verbatim"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"@RawVerbatim"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"unexpected end of input"
	.size	.L.str.31, 24

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s replaced by %s"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"@Begin"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"unknown or misspelt symbol %s after %s deleted"
	.size	.L.str.34, 47

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"@End"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"symbol expected after %s"
	.size	.L.str.36, 25

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%s symbol out of place"
	.size	.L.str.37, 23

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%d %d"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"error in cross reference database"
	.size	.L.str.39, 34

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"symbol expected following %s"
	.size	.L.str.40, 29

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"@LUse"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%s clause(s) changed from previous run"
	.size	.L.str.42, 39

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"@@V"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%s must follow named parameter %s"
	.size	.L.str.44, 34

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Parse: type(y) != PAR!"
	.size	.L.str.45, 23

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"named parameter %s of %s appears twice"
	.size	.L.str.46, 39

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"compulsory option %s missing from %s"
	.size	.L.str.47, 37

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"%s out of place here (%s has no right parameter)"
	.size	.L.str.48, 49

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Parse: cannot undo rpar"
	.size	.L.str.49, 24

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Parse: cannot undo lpar"
	.size	.L.str.50, 24

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"right parameter of %s must be enclosed in braces"
	.size	.L.str.51, 49

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"body parameter of %s must be enclosed in braces"
	.size	.L.str.52, 48

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"invalid left parameter of %s"
	.size	.L.str.53, 29

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"@Open"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"assert failed in %s %s"
	.size	.L.str.55, 23

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Parse:"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"else"
	.size	.L.str.57, 5

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"left parameter of %s is not a symbol (or not visible)"
	.size	.L.str.58, 54

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"unmatched %s (inserted %s)"
	.size	.L.str.59, 27

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"}"
	.size	.L.str.60, 2

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Reduce: unmatched"
	.size	.L.str.61, 18

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"unmatched %s; inserted %s at%s (after %s)"
	.size	.L.str.62, 42

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"unmatched %s not enclosed in anything"
	.size	.L.str.63, 38

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"%s %s appended at end of file to match %s at%s"
	.size	.L.str.64, 47

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"%s replaced by %s %s to match %s at%s"
	.size	.L.str.65, 38

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"??"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"%s %s replaced by %s %s to match %s at%s"
	.size	.L.str.67, 41

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Reduce:"
	.size	.L.str.68, 8

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"ParseEnvClosure: type(t) != ENV!"
	.size	.L.str.69, 33

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"syntax error in cross reference database"
	.size	.L.str.70, 41

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"ParseEnvClosure: type(res) != CLOSURE!"
	.size	.L.str.71, 39


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
