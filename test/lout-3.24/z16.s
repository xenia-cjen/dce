	.text
	.file	"z16.dce"
	.globl	FindShift
	.align	16, 0x90
	.type	FindShift,@function
FindShift:                              # @FindShift
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movzwl	64(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	.LBB0_1
# BB#3:
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	movq	-8(%rbp), %rax
	movswl	66(%rax), %eax
	imull	%edx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$20, %ecx
	addl	%eax, %ecx
	sarl	$12, %ecx
	movl	%ecx, -24(%rbp)
	jmp	.LBB0_5
.LBB0_1:
	cmpl	$1, %eax
	jne	.LBB0_4
# BB#2:
	movq	-8(%rbp), %rax
	movswl	66(%rax), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_5:
	movq	-8(%rbp), %rax
	movswl	70(%rax), %eax
	cmpl	$160, %eax
	je	.LBB0_10
# BB#6:
	cmpl	$159, %eax
	jne	.LBB0_7
# BB#9:
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_12
.LBB0_10:
	xorl	%eax, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_12
.LBB0_7:
	cmpl	$158, %eax
	jne	.LBB0_11
# BB#8:
	movl	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_12:
	movl	-28(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	FindShift, .Lfunc_end0-FindShift
	.cfi_endproc

	.globl	SetNeighbours
	.align	16, 0x90
	.type	SetNeighbours,@function
SetNeighbours:                          # @SetNeighbours
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
	subq	$80, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	jne	.LBB1_24
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_3 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, (%rax)
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_4
# BB#5:                                 #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB1_8
# BB#6:                                 #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB1_7
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB1_9
# BB#10:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
.LBB1_11:                               #   in Loop: Header=BB1_1 Depth=1
	testb	%al, %al
	je	.LBB1_7
.LBB1_12:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, (%rax)
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_14
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_15 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_21:                               #   in Loop: Header=BB1_20 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, (%rax)
.LBB1_20:                               #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_21
.LBB1_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_20 Depth 2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB1_16
# BB#17:                                #   in Loop: Header=BB1_15 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	setl	%al
	jmp	.LBB1_18
	.align	16, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_15 Depth=1
	xorl	%eax, %eax
.LBB1_18:                               #   in Loop: Header=BB1_15 Depth=1
	testb	%al, %al
	jne	.LBB1_19
# BB#22:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_24
# BB#23:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_24:
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	jmp	.LBB1_25
	.align	16, 0x90
.LBB1_31:                               #   in Loop: Header=BB1_25 Depth=1
	movq	-72(%rbp), %rax
.LBB1_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_27 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	jne	.LBB1_48
# BB#26:                                #   in Loop: Header=BB1_25 Depth=1
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_27
	.align	16, 0x90
.LBB1_28:                               #   in Loop: Header=BB1_27 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, (%rax)
.LBB1_27:                               #   Parent Loop BB1_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_28
# BB#29:                                #   in Loop: Header=BB1_25 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB1_32
# BB#30:                                #   in Loop: Header=BB1_25 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB1_31
	jmp	.LBB1_36
	.align	16, 0x90
.LBB1_32:                               #   in Loop: Header=BB1_25 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB1_33
# BB#34:                                #   in Loop: Header=BB1_25 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB1_35
	.align	16, 0x90
.LBB1_33:                               #   in Loop: Header=BB1_25 Depth=1
	xorl	%eax, %eax
.LBB1_35:                               #   in Loop: Header=BB1_25 Depth=1
	testb	%al, %al
	je	.LBB1_31
.LBB1_36:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_37
	.align	16, 0x90
.LBB1_38:                               #   in Loop: Header=BB1_37 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, (%rax)
.LBB1_37:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_38
	jmp	.LBB1_39
	.align	16, 0x90
.LBB1_43:                               #   in Loop: Header=BB1_39 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_44
	.align	16, 0x90
.LBB1_45:                               #   in Loop: Header=BB1_44 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, (%rax)
.LBB1_44:                               #   Parent Loop BB1_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_45
.LBB1_39:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_44 Depth 2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB1_40
# BB#41:                                #   in Loop: Header=BB1_39 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	setl	%al
	jmp	.LBB1_42
	.align	16, 0x90
.LBB1_40:                               #   in Loop: Header=BB1_39 Depth=1
	xorl	%eax, %eax
.LBB1_42:                               #   in Loop: Header=BB1_39 Depth=1
	testb	%al, %al
	jne	.LBB1_43
# BB#46:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_48
# BB#47:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_48:
	movl	$151, %eax
	cmpl	$0, -12(%rbp)
	jne	.LBB1_52
# BB#49:
	movq	-24(%rbp), %rcx
	movb	$1, %al
	cmpq	$0, (%rcx)
	je	.LBB1_51
# BB#50:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	45(%rax), %eax
	andl	$1, %eax
.LBB1_51:
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	orl	$152, %eax
.LBB1_52:
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SetNeighbours, .Lfunc_end1-SetNeighbours
	.cfi_endproc

	.globl	AdjustSize
	.align	16, 0x90
	.type	AdjustSize,@function
AdjustSize:                             # @AdjustSize
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
	movq	%rdi, -160(%rbp)
	movl	%esi, -164(%rbp)
	movl	%edx, -168(%rbp)
	movl	%ecx, -172(%rbp)
	movl	%ecx, %edi
	callq	SetLengthDim
	leaq	-164(%rbp), %r14
	leaq	-168(%rbp), %r15
	leaq	-144(%rbp), %r12
	leaq	-104(%rbp), %r13
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_224:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -160(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_28 Depth 2
                                        #       Child Loop BB2_30 Depth 3
                                        #     Child Loop BB2_178 Depth 2
                                        #       Child Loop BB2_180 Depth 3
                                        #     Child Loop BB2_186 Depth 2
                                        #       Child Loop BB2_188 Depth 3
                                        #     Child Loop BB2_196 Depth 2
                                        #       Child Loop BB2_198 Depth 3
                                        #     Child Loop BB2_42 Depth 2
                                        #       Child Loop BB2_44 Depth 3
                                        #     Child Loop BB2_50 Depth 2
                                        #       Child Loop BB2_52 Depth 3
                                        #     Child Loop BB2_67 Depth 2
                                        #       Child Loop BB2_69 Depth 3
                                        #     Child Loop BB2_88 Depth 2
	movl	-164(%rbp), %ecx
	movslq	-172(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movb	$1, %al
	cmpl	48(%rsi,%rdx,4), %ecx
	jne	.LBB2_6
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	-168(%rbp), %ecx
	movslq	-172(%rbp), %rdx
	movq	-160(%rbp), %rsi
	cmpl	56(%rsi,%rdx,4), %ecx
	jne	.LBB2_6
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB2_4
# BB#5:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	setl	%al
	jmp	.LBB2_6
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	testb	%al, %al
	je	.LBB2_221
# BB#7:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-160(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB2_9
# BB#8:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_9:                                #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -164(%rbp)
	js	.LBB2_11
# BB#10:                                #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -168(%rbp)
	jns	.LBB2_12
.LBB2_11:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-160(%rbp), %r8
	addq	$32, %r8
	movl	$16, %edi
	movl	$5, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_12:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	je	.LBB2_14
# BB#13:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$15, %eax
	je	.LBB2_14
# BB#24:                                #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB2_25
# BB#26:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB2_27
	.align	16, 0x90
.LBB2_25:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-160(%rbp), %rax
	movq	24(%rax), %rax
.LBB2_27:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rax, -192(%rbp)
	movl	$0, -236(%rbp)
	movq	-192(%rbp), %rax
	jmp	.LBB2_28
	.align	16, 0x90
.LBB2_35:                               #   in Loop: Header=BB2_28 Depth=2
	movq	-200(%rbp), %rax
.LBB2_28:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_30 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	cmpb	$0, 32(%rax)
	jne	.LBB2_36
# BB#29:                                #   in Loop: Header=BB2_28 Depth=2
	movq	-200(%rbp), %rax
	jmp	.LBB2_30
	.align	16, 0x90
.LBB2_31:                               #   in Loop: Header=BB2_30 Depth=3
	movq	-184(%rbp), %rax
.LBB2_30:                               #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_31
# BB#32:                                #   in Loop: Header=BB2_28 Depth=2
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_35
# BB#33:                                #   in Loop: Header=BB2_28 Depth=2
	movq	-184(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB2_35
# BB#34:                                #   in Loop: Header=BB2_28 Depth=2
	movl	$1, -236(%rbp)
	jmp	.LBB2_35
	.align	16, 0x90
.LBB2_36:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-200(%rbp), %rax
	movq	%rax, -184(%rbp)
	movzbl	32(%rax), %eax
	addl	$-8, %eax
	cmpl	$91, %eax
	ja	.LBB2_222
# BB#37:                                #   in Loop: Header=BB2_1 Depth=1
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_138:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	sete	%al
	cmpl	$1, -172(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_177
# BB#139:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-160(%rbp), %rax
	movl	-236(%rbp), %ecx
	movq	-184(%rbp), %rdx
	movl	-172(%rbp), %esi
	movq	%rax, -48(%rbp)
	movq	%r14, -56(%rbp)
	movq	%r15, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movl	%esi, -84(%rbp)
	testl	%esi, %esi
	jne	.LBB2_143
# BB#140:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB2_143
# BB#141:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rax
	movb	68(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$7, %eax
	jne	.LBB2_143
# BB#142:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movslq	-84(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movslq	-84(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB2_176
	.align	16, 0x90
.LBB2_222:                              #   in Loop: Header=BB2_1 Depth=1
	movq	no_fpos(%rip), %rbx
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.14, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
.LBB2_223:                              #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB2_224
.LBB2_130:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	sete	%al
	cmpl	$0, -172(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB2_132
# BB#131:                               #   in Loop: Header=BB2_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_132:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
.LBB2_133:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-184(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB2_135
# BB#134:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	-172(%rbp), %rax
	movq	-184(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB2_136
.LBB2_111:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$26, %eax
	sete	%al
	cmpl	$0, -172(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_216
# BB#112:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movq	-184(%rbp), %rcx
	cmpl	64(%rcx), %eax
	jg	.LBB2_115
# BB#113:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	addl	-168(%rbp), %eax
	movq	-184(%rbp), %rcx
	cmpl	68(%rcx), %eax
	jg	.LBB2_115
# BB#114:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-168(%rbp), %eax
	movq	-184(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jle	.LBB2_116
.LBB2_115:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %r12
	movl	64(%r12), %edi
	addq	$32, %r12
	callq	EchoLength
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	-184(%rbp), %rax
	movl	68(%rax), %edi
	callq	EchoLength
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	-184(%rbp), %rax
	movl	72(%rax), %edi
	callq	EchoLength
	movq	%r14, %r13
	movq	%rax, %r14
	movl	-164(%rbp), %edi
	callq	EchoLength
	movq	%r15, %rbx
	movq	%rax, %r15
	movl	-168(%rbp), %edi
	callq	EchoLength
	movq	%rax, 24(%rsp)
	movq	%r15, 16(%rsp)
	movq	%rbx, %r15
	movq	%r14, 8(%rsp)
	movq	%r13, %r14
	leaq	-104(%rbp), %r13
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$16, %edi
	movl	$2, %esi
	movl	$.L.str.11, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r12, %r8
	leaq	-144(%rbp), %r12
	movq	-272(%rbp), %r9         # 8-byte Reload
	callq	Error
	movq	-184(%rbp), %rax
	movl	$8388607, 64(%rax)      # imm = 0x7FFFFF
	movl	-164(%rbp), %eax
	addl	-168(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movq	-184(%rbp), %rax
	movl	$8388607, 72(%rax)      # imm = 0x7FFFFF
.LBB2_116:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-184(%rbp), %rdx
	addq	$64, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	EnlargeToConstraint
	jmp	.LBB2_224
.LBB2_118:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$28, %eax
	sete	%al
	cmpl	$0, -172(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_224
# BB#119:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-172(%rbp), %edx
	callq	FindShift
	movl	%eax, -244(%rbp)
	xorl	%ecx, %ecx
	addl	-164(%rbp), %eax
	jle	.LBB2_121
# BB#120:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %ecx
	addl	-244(%rbp), %ecx
.LBB2_121:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB2_124
# BB#122:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %ecx
	xorl	%eax, %eax
	addl	-244(%rbp), %ecx
	jle	.LBB2_124
# BB#123:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	addl	-244(%rbp), %eax
.LBB2_124:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -164(%rbp)
	movl	-168(%rbp), %eax
	xorl	%ecx, %ecx
	cmpl	-244(%rbp), %eax
	jle	.LBB2_126
# BB#125:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-168(%rbp), %ecx
	subl	-244(%rbp), %ecx
.LBB2_126:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB2_129
# BB#127:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-168(%rbp), %ecx
	xorl	%eax, %eax
	cmpl	-244(%rbp), %ecx
	jle	.LBB2_129
# BB#128:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-168(%rbp), %eax
	subl	-244(%rbp), %eax
.LBB2_129:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -168(%rbp)
	jmp	.LBB2_224
.LBB2_98:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	cmpl	$0, -172(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-184(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$30, %ecx
	jmp	.LBB2_99
.LBB2_100:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	cmpl	$0, -172(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-184(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$32, %ecx
.LBB2_99:                               #   in Loop: Header=BB2_1 Depth=1
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_224
	jmp	.LBB2_221
.LBB2_117:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$38, %eax
	sete	%al
	cmpl	$0, -172(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jmp	.LBB2_216
.LBB2_215:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$1, -172(%rbp)
	jne	.LBB2_214
	jmp	.LBB2_216
.LBB2_213:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB2_216
.LBB2_214:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$16, %edi
	movl	$4, %esi
	movl	$.L.str.12, %edx
	movl	$2, %ecx
	jmp	.LBB2_223
	.align	16, 0x90
.LBB2_216:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	jmp	.LBB2_224
.LBB2_177:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB2_178
	.align	16, 0x90
.LBB2_184:                              #   in Loop: Header=BB2_178 Depth=2
	movq	-208(%rbp), %rax
.LBB2_178:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_180 Depth 3
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpq	-184(%rbp), %rax
	je	.LBB2_185
# BB#179:                               #   in Loop: Header=BB2_178 Depth=2
	movq	-208(%rbp), %rax
	jmp	.LBB2_180
	.align	16, 0x90
.LBB2_181:                              #   in Loop: Header=BB2_180 Depth=3
	movq	-224(%rbp), %rax
.LBB2_180:                              #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_178 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_181
# BB#182:                               #   in Loop: Header=BB2_178 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_184
# BB#183:                               #   in Loop: Header=BB2_178 Depth=2
	movq	-224(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB2_184
.LBB2_185:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB2_186
	.align	16, 0x90
.LBB2_192:                              #   in Loop: Header=BB2_186 Depth=2
	movq	-216(%rbp), %rax
.LBB2_186:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_188 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	cmpq	-184(%rbp), %rax
	je	.LBB2_193
# BB#187:                               #   in Loop: Header=BB2_186 Depth=2
	movq	-216(%rbp), %rax
	jmp	.LBB2_188
	.align	16, 0x90
.LBB2_189:                              #   in Loop: Header=BB2_188 Depth=3
	movq	-224(%rbp), %rax
.LBB2_188:                              #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_186 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_189
# BB#190:                               #   in Loop: Header=BB2_186 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_192
# BB#191:                               #   in Loop: Header=BB2_186 Depth=2
	movq	-224(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB2_192
.LBB2_193:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-208(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB2_195
# BB#194:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-216(%rbp), %rax
	cmpq	-184(%rbp), %rax
	je	.LBB2_133
.LBB2_195:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -244(%rbp)
	movl	$0, -240(%rbp)
	movq	-208(%rbp), %rax
	jmp	.LBB2_196
	.align	16, 0x90
.LBB2_210:                              #   in Loop: Header=BB2_196 Depth=2
	movq	-192(%rbp), %rax
.LBB2_196:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_198 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-216(%rbp), %rax
	je	.LBB2_211
# BB#197:                               #   in Loop: Header=BB2_196 Depth=2
	movq	-192(%rbp), %rax
	jmp	.LBB2_198
	.align	16, 0x90
.LBB2_199:                              #   in Loop: Header=BB2_198 Depth=3
	movq	-224(%rbp), %rax
.LBB2_198:                              #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_199
# BB#200:                               #   in Loop: Header=BB2_196 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB2_210
# BB#201:                               #   in Loop: Header=BB2_196 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB2_203
# BB#202:                               #   in Loop: Header=BB2_196 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	jl	.LBB2_210
.LBB2_203:                              #   in Loop: Header=BB2_196 Depth=2
	movl	-240(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-224(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB2_205
# BB#204:                               #   in Loop: Header=BB2_196 Depth=2
	movslq	-172(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB2_206
.LBB2_205:                              #   in Loop: Header=BB2_196 Depth=2
	movl	-240(%rbp), %eax
.LBB2_206:                              #   in Loop: Header=BB2_196 Depth=2
	movl	%eax, -240(%rbp)
	movl	-244(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-224(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB2_208
# BB#207:                               #   in Loop: Header=BB2_196 Depth=2
	movslq	-172(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB2_209
.LBB2_208:                              #   in Loop: Header=BB2_196 Depth=2
	movl	-244(%rbp), %eax
.LBB2_209:                              #   in Loop: Header=BB2_196 Depth=2
	movl	%eax, -244(%rbp)
	jmp	.LBB2_210
.LBB2_143:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -84(%rbp)
	je	.LBB2_144
# BB#145:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	jmp	.LBB2_146
.LBB2_211:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -164(%rbp)
	movl	-240(%rbp), %eax
	addl	-244(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-184(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jl	.LBB2_137
# BB#212:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-240(%rbp), %eax
	addl	-244(%rbp), %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB2_224
.LBB2_135:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
.LBB2_136:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -164(%rbp)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-184(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB2_225
.LBB2_137:                              #   in Loop: Header=BB2_1 Depth=1
	movslq	-172(%rbp), %rax
	movq	-184(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB2_224
.LBB2_225:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-168(%rbp), %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB2_224
.LBB2_38:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rax
	movzbl	43(%rax), %eax
	testb	$1, %al
	je	.LBB2_39
# BB#40:                                #   in Loop: Header=BB2_1 Depth=1
	cmpl	$1, -172(%rbp)
	je	.LBB2_39
# BB#41:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB2_42
	.align	16, 0x90
.LBB2_48:                               #   in Loop: Header=BB2_42 Depth=2
	movq	-208(%rbp), %rax
.LBB2_42:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_44 Depth 3
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpq	-184(%rbp), %rax
	je	.LBB2_49
# BB#43:                                #   in Loop: Header=BB2_42 Depth=2
	movq	-208(%rbp), %rax
	jmp	.LBB2_44
	.align	16, 0x90
.LBB2_45:                               #   in Loop: Header=BB2_44 Depth=3
	movq	-224(%rbp), %rax
.LBB2_44:                               #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_45
# BB#46:                                #   in Loop: Header=BB2_42 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_48
# BB#47:                                #   in Loop: Header=BB2_42 Depth=2
	movq	-224(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB2_48
.LBB2_49:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB2_50
	.align	16, 0x90
.LBB2_56:                               #   in Loop: Header=BB2_50 Depth=2
	movq	-216(%rbp), %rax
.LBB2_50:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_52 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	cmpq	-184(%rbp), %rax
	je	.LBB2_57
# BB#51:                                #   in Loop: Header=BB2_50 Depth=2
	movq	-216(%rbp), %rax
	jmp	.LBB2_52
	.align	16, 0x90
.LBB2_53:                               #   in Loop: Header=BB2_52 Depth=3
	movq	-224(%rbp), %rax
.LBB2_52:                               #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_53
# BB#54:                                #   in Loop: Header=BB2_50 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_56
# BB#55:                                #   in Loop: Header=BB2_50 Depth=2
	movq	-224(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB2_56
.LBB2_57:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-208(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB2_66
# BB#58:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-216(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB2_66
# BB#59:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$5, %eax
	jae	.LBB2_60
.LBB2_66:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -244(%rbp)
	movl	$0, -240(%rbp)
	movq	-208(%rbp), %rax
	jmp	.LBB2_67
	.align	16, 0x90
.LBB2_81:                               #   in Loop: Header=BB2_67 Depth=2
	movq	-192(%rbp), %rax
.LBB2_67:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_69 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-216(%rbp), %rax
	je	.LBB2_82
# BB#68:                                #   in Loop: Header=BB2_67 Depth=2
	movq	-192(%rbp), %rax
	jmp	.LBB2_69
	.align	16, 0x90
.LBB2_70:                               #   in Loop: Header=BB2_69 Depth=3
	movq	-224(%rbp), %rax
.LBB2_69:                               #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_70
# BB#71:                                #   in Loop: Header=BB2_67 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB2_81
# BB#72:                                #   in Loop: Header=BB2_67 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB2_74
# BB#73:                                #   in Loop: Header=BB2_67 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	jl	.LBB2_81
.LBB2_74:                               #   in Loop: Header=BB2_67 Depth=2
	movl	-240(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-224(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB2_76
# BB#75:                                #   in Loop: Header=BB2_67 Depth=2
	movslq	-172(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB2_77
.LBB2_76:                               #   in Loop: Header=BB2_67 Depth=2
	movl	-240(%rbp), %eax
.LBB2_77:                               #   in Loop: Header=BB2_67 Depth=2
	movl	%eax, -240(%rbp)
	movl	-244(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-224(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB2_79
# BB#78:                                #   in Loop: Header=BB2_67 Depth=2
	movslq	-172(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB2_80
.LBB2_79:                               #   in Loop: Header=BB2_67 Depth=2
	movl	-244(%rbp), %eax
.LBB2_80:                               #   in Loop: Header=BB2_67 Depth=2
	movl	%eax, -244(%rbp)
	jmp	.LBB2_81
.LBB2_101:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	cmpl	$0, -172(%rbp)
	je	.LBB2_102
# BB#104:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	addl	%eax, %ecx
	sarl	$7, %ecx
	imull	-164(%rbp), %ecx
	movl	%ecx, -164(%rbp)
	movq	-184(%rbp), %rax
	movl	72(%rax), %eax
	jmp	.LBB2_103
.LBB2_82:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -164(%rbp)
	movl	-240(%rbp), %eax
	addl	-244(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-184(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jl	.LBB2_64
# BB#83:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-240(%rbp), %eax
	addl	-244(%rbp), %eax
	jmp	.LBB2_84
.LBB2_144:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
.LBB2_146:                              #   in Loop: Header=BB2_1 Depth=1
	movq	%rdi, -96(%rbp)
	movl	-68(%rbp), %esi
	movq	%r12, (%rsp)
	movq	%r13, %rdx
	leaq	-112(%rbp), %rcx
	leaq	-120(%rbp), %r8
	leaq	-128(%rbp), %r9
	callq	SetNeighbours
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB2_161
# BB#147:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jg	.LBB2_161
# BB#148:                               #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB2_149
# BB#150:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	-84(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-56(%rbp), %rax
	movl	(%rax), %esi
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	jmp	.LBB2_151
.LBB2_161:                              #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB2_162
# BB#163:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	-84(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-56(%rbp), %rax
	movl	(%rax), %esi
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, %ebx
	movslq	-84(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-48(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-104(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	subl	%eax, %ebx
	jmp	.LBB2_164
.LBB2_162:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %ebx
	movslq	-84(%rbp), %rax
	movq	-48(%rbp), %rcx
	subl	48(%rcx,%rax,4), %ebx
.LBB2_164:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%ebx, -132(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB2_165
# BB#166:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movl	(%rax), %edi
	movslq	-84(%rbp), %rax
	movq	-128(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-120(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, %ebx
	movslq	-84(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-128(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-120(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	subl	%eax, %ebx
	jmp	.LBB2_167
.LBB2_165:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movl	(%rax), %ebx
	movslq	-84(%rbp), %rax
	movq	-48(%rbp), %rcx
	subl	56(%rcx,%rax,4), %ebx
.LBB2_167:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%ebx, -136(%rbp)
	movl	$0, -140(%rbp)
.LBB2_168:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movslq	-84(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movslq	-84(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movl	-144(%rbp), %eax
	cmpl	$153, %eax
	je	.LBB2_173
# BB#169:                               #   in Loop: Header=BB2_1 Depth=1
	cmpl	$152, %eax
	jne	.LBB2_170
# BB#172:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	addl	-132(%rbp), %eax
	subl	-140(%rbp), %eax
	movl	%eax, -148(%rbp)
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	addl	-136(%rbp), %eax
	jmp	.LBB2_174
.LBB2_173:                              #   in Loop: Header=BB2_1 Depth=1
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -148(%rbp)
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	addl	-132(%rbp), %eax
	addl	-136(%rbp), %eax
	subl	-140(%rbp), %eax
	jmp	.LBB2_174
.LBB2_170:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$151, %eax
	jne	.LBB2_175
# BB#171:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	addl	-132(%rbp), %eax
	addl	-136(%rbp), %eax
	subl	-140(%rbp), %eax
	movl	%eax, -148(%rbp)
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
.LBB2_174:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -152(%rbp)
.LBB2_175:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-148(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-152(%rbp), %eax
.LBB2_176:                              # %CatAdjustSize.exit
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB2_224
.LBB2_102:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	addl	%eax, %ecx
	sarl	$7, %ecx
	imull	-164(%rbp), %ecx
	movl	%ecx, -164(%rbp)
	movq	-184(%rbp), %rax
	movl	64(%rax), %eax
.LBB2_103:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	addl	%eax, %ecx
	sarl	$7, %ecx
	imull	-168(%rbp), %ecx
	movl	%ecx, -168(%rbp)
	jmp	.LBB2_224
.LBB2_149:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
.LBB2_151:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -132(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB2_152
# BB#153:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movl	(%rax), %edi
	movslq	-84(%rbp), %rax
	movq	-128(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-120(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	jmp	.LBB2_154
.LBB2_152:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
.LBB2_154:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -136(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB2_155
# BB#157:                               #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB2_158
# BB#159:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	-84(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-128(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-120(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	jmp	.LBB2_160
.LBB2_155:                              #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	cmpq	$0, -120(%rbp)
	je	.LBB2_160
# BB#156:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	-84(%rbp), %rax
	movq	-128(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB2_168
.LBB2_160:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -140(%rbp)
	jmp	.LBB2_168
.LBB2_158:                              #   in Loop: Header=BB2_1 Depth=1
	movslq	-84(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB2_168
.LBB2_60:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-184(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB2_62
# BB#61:                                #   in Loop: Header=BB2_1 Depth=1
	movslq	-172(%rbp), %rax
	movq	-184(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB2_63
.LBB2_62:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
.LBB2_63:                               #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -164(%rbp)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-184(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB2_65
.LBB2_64:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	-172(%rbp), %rax
	movq	-184(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
.LBB2_84:                               #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -168(%rbp)
	movslq	-172(%rbp), %rax
	movq	-184(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	cmpl	-164(%rbp), %eax
	jne	.LBB2_86
# BB#85:                                #   in Loop: Header=BB2_1 Depth=1
	movslq	-172(%rbp), %rax
	movq	-184(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	cmpl	-168(%rbp), %eax
	je	.LBB2_221
.LBB2_86:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-184(%rbp), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_221
# BB#87:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_88
	.align	16, 0x90
.LBB2_89:                               #   in Loop: Header=BB2_88 Depth=2
	movq	-232(%rbp), %rax
.LBB2_88:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_89
# BB#90:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$122, %eax
	jne	.LBB2_221
# BB#91:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-232(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB2_93
# BB#92:                                #   in Loop: Header=BB2_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_93:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-232(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB2_95
# BB#94:                                #   in Loop: Header=BB2_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.10, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_95:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-232(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	GalleySym(%rip), %rax
	je	.LBB2_97
# BB#96:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-232(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	ForceGalleySym(%rip), %rax
	jne	.LBB2_221
.LBB2_97:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-232(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB2_224
.LBB2_65:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-168(%rbp), %eax
	jmp	.LBB2_84
.LBB2_14:
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	sete	%al
	cmpl	$0, -172(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB2_16
# BB#15:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_16:
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-160(%rbp), %rax
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_23:                               #   in Loop: Header=BB2_17 Depth=1
	movq	-184(%rbp), %rdi
	movl	-164(%rbp), %esi
	movl	-168(%rbp), %edx
	movl	-172(%rbp), %ecx
	callq	AdjustSize
	movq	-192(%rbp), %rax
.LBB2_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
	movq	24(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-160(%rbp), %rax
	je	.LBB2_221
# BB#18:                                #   in Loop: Header=BB2_17 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB2_19
	.align	16, 0x90
.LBB2_20:                               #   in Loop: Header=BB2_19 Depth=2
	movq	-184(%rbp), %rax
.LBB2_19:                               #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_20
# BB#21:                                #   in Loop: Header=BB2_17 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	je	.LBB2_23
# BB#22:                                #   in Loop: Header=BB2_17 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_23
.LBB2_217:
	cmpl	$0, -172(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-184(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$13, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB2_219
# BB#218:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_219:
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-184(%rbp), %rdx
	jmp	.LBB2_220
.LBB2_105:
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-160(%rbp), %r8
	movq	-184(%rbp), %rax
	movl	76(%rax), %r9d
	leaq	-248(%rbp), %rdi
	leaq	-252(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	leaq	-260(%rbp), %rcx
	callq	RotateSize
	movl	-248(%rbp), %eax
	movq	-184(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jne	.LBB2_107
# BB#106:
	movl	-252(%rbp), %eax
	movq	-184(%rbp), %rcx
	cmpl	56(%rcx), %eax
	je	.LBB2_108
.LBB2_107:
	movq	-184(%rbp), %rdi
	movl	-248(%rbp), %esi
	movl	-252(%rbp), %edx
	xorl	%ecx, %ecx
	callq	AdjustSize
.LBB2_108:
	movl	-256(%rbp), %eax
	movq	-184(%rbp), %rcx
	cmpl	52(%rcx), %eax
	jne	.LBB2_110
# BB#109:
	movl	-260(%rbp), %eax
	movq	-184(%rbp), %rcx
	cmpl	60(%rcx), %eax
	je	.LBB2_221
.LBB2_110:
	movq	-184(%rbp), %rdi
	movl	-256(%rbp), %esi
	movl	-260(%rbp), %edx
	movl	$1, %ecx
	callq	AdjustSize
	jmp	.LBB2_221
.LBB2_39:
	movl	-164(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-168(%rbp), %eax
	movslq	-172(%rbp), %rcx
	movq	-160(%rbp), %rdx
.LBB2_220:
	movl	%eax, 56(%rdx,%rcx,4)
.LBB2_221:
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	AdjustSize, .Lfunc_end2-AdjustSize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_38
	.quad	.LBB2_216
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_217
	.quad	.LBB2_217
	.quad	.LBB2_130
	.quad	.LBB2_130
	.quad	.LBB2_138
	.quad	.LBB2_138
	.quad	.LBB2_138
	.quad	.LBB2_216
	.quad	.LBB2_216
	.quad	.LBB2_216
	.quad	.LBB2_216
	.quad	.LBB2_216
	.quad	.LBB2_216
	.quad	.LBB2_111
	.quad	.LBB2_111
	.quad	.LBB2_118
	.quad	.LBB2_118
	.quad	.LBB2_98
	.quad	.LBB2_98
	.quad	.LBB2_100
	.quad	.LBB2_100
	.quad	.LBB2_101
	.quad	.LBB2_216
	.quad	.LBB2_216
	.quad	.LBB2_216
	.quad	.LBB2_117
	.quad	.LBB2_117
	.quad	.LBB2_216
	.quad	.LBB2_216
	.quad	.LBB2_215
	.quad	.LBB2_213
	.quad	.LBB2_214
	.quad	.LBB2_215
	.quad	.LBB2_213
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_105
	.quad	.LBB2_216
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_222
	.quad	.LBB2_216
	.quad	.LBB2_216
	.quad	.LBB2_216
	.quad	.LBB2_216

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"FindShift: units"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"FindShift: type"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"SetNeighbours: type(*pg)!"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"SetNeighbours: type(*sg)!"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"AdjustSize: Up(x) == x!"
	.size	.L.str.5, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cannot recover from earlier errors"
	.size	.L.str.6, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"AdjustSize: COL_THR!"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"AdjustSize: type(y) != SPLIT!"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"AdjustSize: actual(index)==nilobj!"
	.size	.L.str.9, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"AdjustSize: index non-C!"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"size constraint %s,%s,%s broken by %s,%s"
	.size	.L.str.11, 41

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"size adjustment of %s not implemented"
	.size	.L.str.12, 38

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"AdjustSize: span"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"assert failed in %s %s"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"AdjustSize:"
	.size	.L.str.15, 12


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
