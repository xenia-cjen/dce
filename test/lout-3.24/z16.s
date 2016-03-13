	.text
	.file	"z16.opt"
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
	subq	$168, %rsp
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
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%ecx, %edi
	callq	SetLengthDim
	leaq	-52(%rbp), %r12
	leaq	-56(%rbp), %r13
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_187:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_28 Depth 2
                                        #       Child Loop BB2_30 Depth 3
                                        #     Child Loop BB2_141 Depth 2
                                        #       Child Loop BB2_143 Depth 3
                                        #     Child Loop BB2_149 Depth 2
                                        #       Child Loop BB2_151 Depth 3
                                        #     Child Loop BB2_159 Depth 2
                                        #       Child Loop BB2_161 Depth 3
                                        #     Child Loop BB2_42 Depth 2
                                        #       Child Loop BB2_44 Depth 3
                                        #     Child Loop BB2_50 Depth 2
                                        #       Child Loop BB2_52 Depth 3
                                        #     Child Loop BB2_67 Depth 2
                                        #       Child Loop BB2_69 Depth 3
                                        #     Child Loop BB2_88 Depth 2
	movl	-52(%rbp), %ecx
	movslq	-60(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	$1, %al
	cmpl	48(%rsi,%rdx,4), %ecx
	jne	.LBB2_6
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	-56(%rbp), %ecx
	movslq	-60(%rbp), %rdx
	movq	-48(%rbp), %rsi
	cmpl	56(%rsi,%rdx,4), %ecx
	jne	.LBB2_6
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB2_4
# BB#5:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	setl	%al
	jmp	.LBB2_6
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	testb	%al, %al
	je	.LBB2_184
# BB#7:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
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
	cmpl	$0, -52(%rbp)
	js	.LBB2_11
# BB#10:                                #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -56(%rbp)
	jns	.LBB2_12
.LBB2_11:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %r8
	addq	$32, %r8
	movl	$16, %edi
	movl	$5, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_12:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	je	.LBB2_14
# BB#13:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$15, %eax
	je	.LBB2_14
# BB#24:                                #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB2_25
# BB#26:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB2_27
	.align	16, 0x90
.LBB2_25:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
.LBB2_27:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rax, -80(%rbp)
	movl	$0, -124(%rbp)
	movq	-80(%rbp), %rax
	jmp	.LBB2_28
	.align	16, 0x90
.LBB2_35:                               #   in Loop: Header=BB2_28 Depth=2
	movq	-88(%rbp), %rax
.LBB2_28:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_30 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	jne	.LBB2_36
# BB#29:                                #   in Loop: Header=BB2_28 Depth=2
	movq	-88(%rbp), %rax
	jmp	.LBB2_30
	.align	16, 0x90
.LBB2_31:                               #   in Loop: Header=BB2_30 Depth=3
	movq	-72(%rbp), %rax
.LBB2_30:                               #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_31
# BB#32:                                #   in Loop: Header=BB2_28 Depth=2
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_35
# BB#33:                                #   in Loop: Header=BB2_28 Depth=2
	movq	-72(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB2_35
# BB#34:                                #   in Loop: Header=BB2_28 Depth=2
	movl	$1, -124(%rbp)
	jmp	.LBB2_35
	.align	16, 0x90
.LBB2_36:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	movzbl	32(%rax), %eax
	addl	$-8, %eax
	cmpl	$91, %eax
	ja	.LBB2_185
# BB#37:                                #   in Loop: Header=BB2_1 Depth=1
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_138:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	sete	%al
	cmpl	$1, -60(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_140
# BB#139:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rdi
	movl	-124(%rbp), %ecx
	movq	-72(%rbp), %r8
	movl	-60(%rbp), %r9d
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	CatAdjustSize
	jmp	.LBB2_187
	.align	16, 0x90
.LBB2_185:                              #   in Loop: Header=BB2_1 Depth=1
	movq	no_fpos(%rip), %rbx
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.14, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
.LBB2_186:                              #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB2_187
.LBB2_130:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	sete	%al
	cmpl	$0, -60(%rbp)
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
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
.LBB2_133:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-72(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB2_135
# BB#134:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB2_136
.LBB2_111:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$26, %eax
	sete	%al
	cmpl	$0, -60(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_179
# BB#112:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	64(%rcx), %eax
	jg	.LBB2_115
# BB#113:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	addl	-56(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	68(%rcx), %eax
	jg	.LBB2_115
# BB#114:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-56(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jle	.LBB2_116
.LBB2_115:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rbx
	movl	64(%rbx), %edi
	addq	$32, %rbx
	callq	EchoLength
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %rax
	movl	68(%rax), %edi
	callq	EchoLength
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %rax
	movl	72(%rax), %edi
	callq	EchoLength
	movq	%rax, %r14
	movl	-52(%rbp), %edi
	callq	EchoLength
	movq	%rax, %r15
	movl	-56(%rbp), %edi
	callq	EchoLength
	movq	%rax, 24(%rsp)
	movq	%r15, 16(%rsp)
	movq	%r14, 8(%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$16, %edi
	movl	$2, %esi
	movl	$.L.str.11, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	-160(%rbp), %r9         # 8-byte Reload
	callq	Error
	movq	-72(%rbp), %rax
	movl	$8388607, 64(%rax)      # imm = 0x7FFFFF
	movl	-52(%rbp), %eax
	addl	-56(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movq	-72(%rbp), %rax
	movl	$8388607, 72(%rax)      # imm = 0x7FFFFF
.LBB2_116:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-72(%rbp), %rdx
	addq	$64, %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	EnlargeToConstraint
	jmp	.LBB2_187
.LBB2_118:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$28, %eax
	sete	%al
	cmpl	$0, -60(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_187
# BB#119:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-60(%rbp), %edx
	callq	FindShift
	movl	%eax, -132(%rbp)
	xorl	%ecx, %ecx
	addl	-52(%rbp), %eax
	jle	.LBB2_121
# BB#120:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %ecx
	addl	-132(%rbp), %ecx
.LBB2_121:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB2_124
# BB#122:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %ecx
	xorl	%eax, %eax
	addl	-132(%rbp), %ecx
	jle	.LBB2_124
# BB#123:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	addl	-132(%rbp), %eax
.LBB2_124:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	xorl	%ecx, %ecx
	cmpl	-132(%rbp), %eax
	jle	.LBB2_126
# BB#125:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-56(%rbp), %ecx
	subl	-132(%rbp), %ecx
.LBB2_126:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB2_129
# BB#127:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-56(%rbp), %ecx
	xorl	%eax, %eax
	cmpl	-132(%rbp), %ecx
	jle	.LBB2_129
# BB#128:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-56(%rbp), %eax
	subl	-132(%rbp), %eax
.LBB2_129:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -56(%rbp)
	jmp	.LBB2_187
.LBB2_98:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	cmpl	$0, -60(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-72(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$30, %ecx
	jmp	.LBB2_99
.LBB2_100:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	cmpl	$0, -60(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-72(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$32, %ecx
.LBB2_99:                               #   in Loop: Header=BB2_1 Depth=1
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_187
	jmp	.LBB2_184
.LBB2_117:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$38, %eax
	sete	%al
	cmpl	$0, -60(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jmp	.LBB2_179
.LBB2_178:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$1, -60(%rbp)
	jne	.LBB2_177
	jmp	.LBB2_179
.LBB2_176:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB2_179
.LBB2_177:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$16, %edi
	movl	$4, %esi
	movl	$.L.str.12, %edx
	movl	$2, %ecx
	jmp	.LBB2_186
	.align	16, 0x90
.LBB2_179:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	jmp	.LBB2_187
.LBB2_140:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rax
	jmp	.LBB2_141
	.align	16, 0x90
.LBB2_147:                              #   in Loop: Header=BB2_141 Depth=2
	movq	-96(%rbp), %rax
.LBB2_141:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_143 Depth 3
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB2_148
# BB#142:                               #   in Loop: Header=BB2_141 Depth=2
	movq	-96(%rbp), %rax
	jmp	.LBB2_143
	.align	16, 0x90
.LBB2_144:                              #   in Loop: Header=BB2_143 Depth=3
	movq	-112(%rbp), %rax
.LBB2_143:                              #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_144
# BB#145:                               #   in Loop: Header=BB2_141 Depth=2
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_147
# BB#146:                               #   in Loop: Header=BB2_141 Depth=2
	movq	-112(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB2_147
.LBB2_148:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rax
	jmp	.LBB2_149
	.align	16, 0x90
.LBB2_155:                              #   in Loop: Header=BB2_149 Depth=2
	movq	-104(%rbp), %rax
.LBB2_149:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_151 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB2_156
# BB#150:                               #   in Loop: Header=BB2_149 Depth=2
	movq	-104(%rbp), %rax
	jmp	.LBB2_151
	.align	16, 0x90
.LBB2_152:                              #   in Loop: Header=BB2_151 Depth=3
	movq	-112(%rbp), %rax
.LBB2_151:                              #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_152
# BB#153:                               #   in Loop: Header=BB2_149 Depth=2
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_155
# BB#154:                               #   in Loop: Header=BB2_149 Depth=2
	movq	-112(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB2_155
.LBB2_156:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB2_158
# BB#157:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-104(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB2_133
.LBB2_158:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -132(%rbp)
	movl	$0, -128(%rbp)
	movq	-96(%rbp), %rax
	jmp	.LBB2_159
	.align	16, 0x90
.LBB2_173:                              #   in Loop: Header=BB2_159 Depth=2
	movq	-80(%rbp), %rax
.LBB2_159:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_161 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB2_174
# BB#160:                               #   in Loop: Header=BB2_159 Depth=2
	movq	-80(%rbp), %rax
	jmp	.LBB2_161
	.align	16, 0x90
.LBB2_162:                              #   in Loop: Header=BB2_161 Depth=3
	movq	-112(%rbp), %rax
.LBB2_161:                              #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_162
# BB#163:                               #   in Loop: Header=BB2_159 Depth=2
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB2_173
# BB#164:                               #   in Loop: Header=BB2_159 Depth=2
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB2_166
# BB#165:                               #   in Loop: Header=BB2_159 Depth=2
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	jl	.LBB2_173
.LBB2_166:                              #   in Loop: Header=BB2_159 Depth=2
	movl	-128(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-112(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB2_168
# BB#167:                               #   in Loop: Header=BB2_159 Depth=2
	movslq	-60(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB2_169
.LBB2_168:                              #   in Loop: Header=BB2_159 Depth=2
	movl	-128(%rbp), %eax
.LBB2_169:                              #   in Loop: Header=BB2_159 Depth=2
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-112(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB2_171
# BB#170:                               #   in Loop: Header=BB2_159 Depth=2
	movslq	-60(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB2_172
.LBB2_171:                              #   in Loop: Header=BB2_159 Depth=2
	movl	-132(%rbp), %eax
.LBB2_172:                              #   in Loop: Header=BB2_159 Depth=2
	movl	%eax, -132(%rbp)
	jmp	.LBB2_173
.LBB2_174:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -52(%rbp)
	movl	-128(%rbp), %eax
	addl	-132(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-72(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jl	.LBB2_137
# BB#175:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-128(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB2_187
.LBB2_135:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
.LBB2_136:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-72(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB2_188
.LBB2_137:                              #   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB2_187
.LBB2_188:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB2_187
.LBB2_38:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movzbl	43(%rax), %eax
	testb	$1, %al
	je	.LBB2_39
# BB#40:                                #   in Loop: Header=BB2_1 Depth=1
	cmpl	$1, -60(%rbp)
	je	.LBB2_39
# BB#41:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rax
	jmp	.LBB2_42
	.align	16, 0x90
.LBB2_48:                               #   in Loop: Header=BB2_42 Depth=2
	movq	-96(%rbp), %rax
.LBB2_42:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_44 Depth 3
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB2_49
# BB#43:                                #   in Loop: Header=BB2_42 Depth=2
	movq	-96(%rbp), %rax
	jmp	.LBB2_44
	.align	16, 0x90
.LBB2_45:                               #   in Loop: Header=BB2_44 Depth=3
	movq	-112(%rbp), %rax
.LBB2_44:                               #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_45
# BB#46:                                #   in Loop: Header=BB2_42 Depth=2
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_48
# BB#47:                                #   in Loop: Header=BB2_42 Depth=2
	movq	-112(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB2_48
.LBB2_49:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rax
	jmp	.LBB2_50
	.align	16, 0x90
.LBB2_56:                               #   in Loop: Header=BB2_50 Depth=2
	movq	-104(%rbp), %rax
.LBB2_50:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_52 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB2_57
# BB#51:                                #   in Loop: Header=BB2_50 Depth=2
	movq	-104(%rbp), %rax
	jmp	.LBB2_52
	.align	16, 0x90
.LBB2_53:                               #   in Loop: Header=BB2_52 Depth=3
	movq	-112(%rbp), %rax
.LBB2_52:                               #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_53
# BB#54:                                #   in Loop: Header=BB2_50 Depth=2
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_56
# BB#55:                                #   in Loop: Header=BB2_50 Depth=2
	movq	-112(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB2_56
.LBB2_57:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB2_66
# BB#58:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-104(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB2_66
# BB#59:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$5, %eax
	jae	.LBB2_60
.LBB2_66:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -132(%rbp)
	movl	$0, -128(%rbp)
	movq	-96(%rbp), %rax
	jmp	.LBB2_67
	.align	16, 0x90
.LBB2_81:                               #   in Loop: Header=BB2_67 Depth=2
	movq	-80(%rbp), %rax
.LBB2_67:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_69 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB2_82
# BB#68:                                #   in Loop: Header=BB2_67 Depth=2
	movq	-80(%rbp), %rax
	jmp	.LBB2_69
	.align	16, 0x90
.LBB2_70:                               #   in Loop: Header=BB2_69 Depth=3
	movq	-112(%rbp), %rax
.LBB2_69:                               #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_70
# BB#71:                                #   in Loop: Header=BB2_67 Depth=2
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB2_81
# BB#72:                                #   in Loop: Header=BB2_67 Depth=2
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB2_74
# BB#73:                                #   in Loop: Header=BB2_67 Depth=2
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	jl	.LBB2_81
.LBB2_74:                               #   in Loop: Header=BB2_67 Depth=2
	movl	-128(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-112(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB2_76
# BB#75:                                #   in Loop: Header=BB2_67 Depth=2
	movslq	-60(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB2_77
.LBB2_76:                               #   in Loop: Header=BB2_67 Depth=2
	movl	-128(%rbp), %eax
.LBB2_77:                               #   in Loop: Header=BB2_67 Depth=2
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-112(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB2_79
# BB#78:                                #   in Loop: Header=BB2_67 Depth=2
	movslq	-60(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB2_80
.LBB2_79:                               #   in Loop: Header=BB2_67 Depth=2
	movl	-132(%rbp), %eax
.LBB2_80:                               #   in Loop: Header=BB2_67 Depth=2
	movl	%eax, -132(%rbp)
	jmp	.LBB2_81
.LBB2_101:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	cmpl	$0, -60(%rbp)
	je	.LBB2_102
# BB#104:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	addl	%eax, %ecx
	sarl	$7, %ecx
	imull	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-72(%rbp), %rax
	movl	72(%rax), %eax
	jmp	.LBB2_103
.LBB2_82:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -52(%rbp)
	movl	-128(%rbp), %eax
	addl	-132(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-72(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jl	.LBB2_64
# BB#83:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-128(%rbp), %eax
	addl	-132(%rbp), %eax
	jmp	.LBB2_84
.LBB2_102:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	addl	%eax, %ecx
	sarl	$7, %ecx
	imull	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-72(%rbp), %rax
	movl	64(%rax), %eax
.LBB2_103:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	addl	%eax, %ecx
	sarl	$7, %ecx
	imull	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB2_187
.LBB2_60:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-72(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB2_62
# BB#61:                                #   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB2_63
.LBB2_62:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
.LBB2_63:                               #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-72(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB2_65
.LBB2_64:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
.LBB2_84:                               #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -56(%rbp)
	movslq	-60(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB2_86
# BB#85:                                #   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	cmpl	-56(%rbp), %eax
	je	.LBB2_184
.LBB2_86:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-72(%rbp), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_184
# BB#87:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_88
	.align	16, 0x90
.LBB2_89:                               #   in Loop: Header=BB2_88 Depth=2
	movq	-120(%rbp), %rax
.LBB2_88:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_89
# BB#90:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$122, %eax
	jne	.LBB2_184
# BB#91:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
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
	movq	-120(%rbp), %rax
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
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	GalleySym(%rip), %rax
	je	.LBB2_97
# BB#96:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	ForceGalleySym(%rip), %rax
	jne	.LBB2_184
.LBB2_97:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB2_187
.LBB2_65:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LBB2_84
.LBB2_14:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	sete	%al
	cmpl	$0, -60(%rbp)
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
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-48(%rbp), %rax
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_23:                               #   in Loop: Header=BB2_17 Depth=1
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	callq	AdjustSize
	movq	-80(%rbp), %rax
.LBB2_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_184
# BB#18:                                #   in Loop: Header=BB2_17 Depth=1
	movq	-80(%rbp), %rax
	jmp	.LBB2_19
	.align	16, 0x90
.LBB2_20:                               #   in Loop: Header=BB2_19 Depth=2
	movq	-72(%rbp), %rax
.LBB2_19:                               #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_20
# BB#21:                                #   in Loop: Header=BB2_17 Depth=1
	movq	-72(%rbp), %rax
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
.LBB2_180:
	cmpl	$0, -60(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-72(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$13, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB2_182
# BB#181:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_182:
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-72(%rbp), %rdx
	jmp	.LBB2_183
.LBB2_105:
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-48(%rbp), %r8
	movq	-72(%rbp), %rax
	movl	76(%rax), %r9d
	leaq	-136(%rbp), %rdi
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-148(%rbp), %rcx
	callq	RotateSize
	movl	-136(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jne	.LBB2_107
# BB#106:
	movl	-140(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	56(%rcx), %eax
	je	.LBB2_108
.LBB2_107:
	movq	-72(%rbp), %rdi
	movl	-136(%rbp), %esi
	movl	-140(%rbp), %edx
	xorl	%ecx, %ecx
	callq	AdjustSize
.LBB2_108:
	movl	-144(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	52(%rcx), %eax
	jne	.LBB2_110
# BB#109:
	movl	-148(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	60(%rcx), %eax
	je	.LBB2_184
.LBB2_110:
	movq	-72(%rbp), %rdi
	movl	-144(%rbp), %esi
	movl	-148(%rbp), %edx
	movl	$1, %ecx
	callq	AdjustSize
	jmp	.LBB2_184
.LBB2_39:
	movl	-52(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdx
.LBB2_183:
	movl	%eax, 56(%rdx,%rcx,4)
.LBB2_184:
	addq	$168, %rsp
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
	.quad	.LBB2_179
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_180
	.quad	.LBB2_180
	.quad	.LBB2_130
	.quad	.LBB2_130
	.quad	.LBB2_138
	.quad	.LBB2_138
	.quad	.LBB2_138
	.quad	.LBB2_179
	.quad	.LBB2_179
	.quad	.LBB2_179
	.quad	.LBB2_179
	.quad	.LBB2_179
	.quad	.LBB2_179
	.quad	.LBB2_111
	.quad	.LBB2_111
	.quad	.LBB2_118
	.quad	.LBB2_118
	.quad	.LBB2_98
	.quad	.LBB2_98
	.quad	.LBB2_100
	.quad	.LBB2_100
	.quad	.LBB2_101
	.quad	.LBB2_179
	.quad	.LBB2_179
	.quad	.LBB2_179
	.quad	.LBB2_117
	.quad	.LBB2_117
	.quad	.LBB2_179
	.quad	.LBB2_179
	.quad	.LBB2_178
	.quad	.LBB2_176
	.quad	.LBB2_177
	.quad	.LBB2_178
	.quad	.LBB2_176
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_105
	.quad	.LBB2_179
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_185
	.quad	.LBB2_179
	.quad	.LBB2_179
	.quad	.LBB2_179
	.quad	.LBB2_179

	.text
	.align	16, 0x90
	.type	CatAdjustSize,@function
CatAdjustSize:                          # @CatAdjustSize
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp17:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	testl	%r9d, %r9d
	jne	.LBB3_4
# BB#1:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB3_4
# BB#2:
	movq	-48(%rbp), %rax
	movb	68(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$7, %eax
	jne	.LBB3_4
# BB#3:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB3_37
.LBB3_4:
	cmpl	$0, -52(%rbp)
	je	.LBB3_5
# BB#6:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	jmp	.LBB3_7
.LBB3_5:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
.LBB3_7:
	movq	%rdi, -64(%rbp)
	movl	-36(%rbp), %esi
	leaq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	callq	SetNeighbours
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB3_22
# BB#8:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jg	.LBB3_22
# BB#9:
	cmpq	$0, -72(%rbp)
	je	.LBB3_10
# BB#11:
	movslq	-52(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	jmp	.LBB3_12
.LBB3_22:
	cmpq	$0, -72(%rbp)
	je	.LBB3_23
# BB#24:
	movslq	-52(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, %ebx
	movslq	-52(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-16(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-72(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	subl	%eax, %ebx
	jmp	.LBB3_25
.LBB3_23:
	movq	-24(%rbp), %rax
	movl	(%rax), %ebx
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	subl	48(%rcx,%rax,4), %ebx
.LBB3_25:
	movl	%ebx, -100(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB3_26
# BB#27:
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	movslq	-52(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-88(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, %ebx
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-96(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-88(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	subl	%eax, %ebx
	jmp	.LBB3_28
.LBB3_26:
	movq	-32(%rbp), %rax
	movl	(%rax), %ebx
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	subl	56(%rcx,%rax,4), %ebx
.LBB3_28:
	movl	%ebx, -104(%rbp)
	movl	$0, -108(%rbp)
.LBB3_29:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movl	-112(%rbp), %eax
	cmpl	$153, %eax
	je	.LBB3_34
# BB#30:
	cmpl	$152, %eax
	jne	.LBB3_31
# BB#33:
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	addl	-100(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -116(%rbp)
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	addl	-104(%rbp), %eax
	jmp	.LBB3_35
.LBB3_34:
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -116(%rbp)
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	addl	-100(%rbp), %eax
	addl	-104(%rbp), %eax
	subl	-108(%rbp), %eax
	jmp	.LBB3_35
.LBB3_31:
	cmpl	$151, %eax
	jne	.LBB3_36
# BB#32:
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	addl	-100(%rbp), %eax
	addl	-104(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -116(%rbp)
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
.LBB3_35:
	movl	%eax, -120(%rbp)
.LBB3_36:
	movl	-116(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-120(%rbp), %eax
.LBB3_37:
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB3_10:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
.LBB3_12:
	movl	%eax, -100(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB3_13
# BB#14:
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	movslq	-52(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-88(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	jmp	.LBB3_15
.LBB3_13:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
.LBB3_15:
	movl	%eax, -104(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB3_16
# BB#18:
	cmpq	$0, -88(%rbp)
	je	.LBB3_19
# BB#20:
	movslq	-52(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-96(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-88(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	jmp	.LBB3_21
.LBB3_16:
	xorl	%eax, %eax
	cmpq	$0, -88(%rbp)
	je	.LBB3_21
# BB#17:
	movslq	-52(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB3_29
.LBB3_21:
	movl	%eax, -108(%rbp)
	jmp	.LBB3_29
.LBB3_19:
	movslq	-52(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB3_29
.Lfunc_end3:
	.size	CatAdjustSize, .Lfunc_end3-CatAdjustSize
	.cfi_endproc

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
