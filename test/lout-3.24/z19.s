	.text
	.file	"z19.dce"
	.globl	DetachGalley
	.align	16, 0x90
	.type	DetachGalley,@function
DetachGalley:                           # @DetachGalley
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
	movzbl	32(%rdi), %eax
	cmpl	$8, %eax
	jne	.LBB0_2
# BB#1:
	movq	-8(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB0_3
.LBB0_2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_3:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_5
# BB#6:
	movq	-16(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB0_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_8:
	movzbl	zz_lengths+120(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_10
# BB#9:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_13
.LBB0_10:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_11
# BB#12:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_13
.LBB0_11:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_13:
	movq	zz_hold(%rip), %rax
	movb	$120, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -24(%rbp)
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_15
# BB#14:
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
.LBB0_15:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_18
# BB#16:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_18
# BB#17:
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
.LBB0_18:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_20
# BB#19:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_23
.LBB0_20:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_21
# BB#22:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_23
.LBB0_21:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_23:
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
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_26
# BB#24:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_26
# BB#25:
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
.LBB0_26:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_29
# BB#27:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_29
# BB#28:
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
.LBB0_29:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	DetachGalley, .Lfunc_end0-DetachGalley
	.cfi_endproc

	.globl	SearchGalley
	.align	16, 0x90
	.type	SearchGalley,@function
SearchGalley:                           # @SearchGalley
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_3
# BB#1:
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	je	.LBB1_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_3:
	cmpl	$0, -20(%rbp)
	je	.LBB1_5
# BB#4:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_6
.LBB1_5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.LBB1_6:
	movq	%rax, -72(%rbp)
	movq	$0, -48(%rbp)
	jmp	.LBB1_7
	.align	16, 0x90
.LBB1_37:                               #   in Loop: Header=BB1_7 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
                                        #     Child Loop BB1_19 Depth 2
                                        #       Child Loop BB1_24 Depth 3
	cmpq	$0, -48(%rbp)
	je	.LBB1_9
# BB#8:                                 #   in Loop: Header=BB1_7 Depth=1
	xorl	%eax, %eax
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	setne	%al
.LBB1_10:                               #   in Loop: Header=BB1_7 Depth=1
	testb	%al, %al
	je	.LBB1_39
# BB#11:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-72(%rbp), %rax
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_12 Depth=2
	movq	-40(%rbp), %rax
.LBB1_12:                               #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_13
# BB#14:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$122, %eax
	je	.LBB1_17
# BB#15:                                #   in Loop: Header=BB1_7 Depth=1
	cmpl	$121, %eax
	jne	.LBB1_16
# BB#30:                                #   in Loop: Header=BB1_7 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB1_33
# BB#31:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB1_33
# BB#32:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	SearchUses
	testl	%eax, %eax
	jne	.LBB1_35
	.align	16, 0x90
.LBB1_33:                               #   in Loop: Header=BB1_7 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB1_34
	jmp	.LBB1_36
	.align	16, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_7 Depth=1
	cmpl	$120, %eax
	jne	.LBB1_36
.LBB1_17:                               #   in Loop: Header=BB1_7 Depth=1
	cmpl	$0, -24(%rbp)
	je	.LBB1_27
# BB#18:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB1_19
	.align	16, 0x90
.LBB1_26:                               #   in Loop: Header=BB1_19 Depth=2
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-32(%rbp), %r9d
	movl	$1, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	SearchGalley
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
.LBB1_19:                               #   Parent Loop BB1_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_24 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB1_20
# BB#21:                                #   in Loop: Header=BB1_19 Depth=2
	cmpq	$0, -48(%rbp)
	sete	%al
	jmp	.LBB1_22
	.align	16, 0x90
.LBB1_20:                               #   in Loop: Header=BB1_19 Depth=2
	xorl	%eax, %eax
.LBB1_22:                               #   in Loop: Header=BB1_19 Depth=2
	testb	%al, %al
	je	.LBB1_27
# BB#23:                                #   in Loop: Header=BB1_19 Depth=2
	movq	-64(%rbp), %rax
	jmp	.LBB1_24
	.align	16, 0x90
.LBB1_25:                               #   in Loop: Header=BB1_24 Depth=3
	movq	-56(%rbp), %rax
.LBB1_24:                               #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_25
	jmp	.LBB1_26
	.align	16, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_7 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB1_36
# BB#28:                                #   in Loop: Header=BB1_7 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB1_36
# BB#29:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$122, %eax
	jne	.LBB1_36
.LBB1_34:                               #   in Loop: Header=BB1_7 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	InputSym(%rip), %rax
	jne	.LBB1_36
.LBB1_35:                               #   in Loop: Header=BB1_7 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	.align	16, 0x90
.LBB1_36:                               #   in Loop: Header=BB1_7 Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB1_37
# BB#38:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB1_7
.LBB1_39:
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SearchGalley, .Lfunc_end1-SearchGalley
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4634204016564240384     # double 64
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_1:
	.long	1141751808              # float 567
	.text
	.globl	AttachGalley
	.align	16, 0x90
	.type	AttachGalley,@function
AttachGalley:                           # @AttachGalley
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
	subq	$840, %rsp              # imm = 0x348
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB2_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_2:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_3 Depth=1
	movq	-80(%rbp), %rax
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_4
# BB#5:
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$120, %eax
	je	.LBB2_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_7:
	movq	$0, -136(%rbp)
	movq	$0, -88(%rbp)
	movq	-56(%rbp), %rax
	movzwl	42(%rax), %eax
	shrl	%eax
	andl	$1, %eax
	movl	%eax, -236(%rbp)
	movq	-56(%rbp), %rax
	movzbl	43(%rax), %eax
	andl	$1, %eax
	movl	%eax, -240(%rbp)
	movb	$1, %r15b
	movl	$1048575, %r12d         # imm = 0xFFFFF
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
	leaq	-544(%rbp), %rbx
	jmp	.LBB2_8
	.align	16, 0x90
.LBB2_102:                              #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_133 Depth 2
                                        #     Child Loop BB2_201 Depth 2
                                        #       Child Loop BB2_203 Depth 3
                                        #       Child Loop BB2_209 Depth 3
                                        #       Child Loop BB2_233 Depth 3
                                        #       Child Loop BB2_247 Depth 3
                                        #       Child Loop BB2_255 Depth 3
                                        #       Child Loop BB2_265 Depth 3
                                        #     Child Loop BB2_285 Depth 2
                                        #       Child Loop BB2_287 Depth 3
                                        #       Child Loop BB2_294 Depth 3
                                        #       Child Loop BB2_304 Depth 3
                                        #       Child Loop BB2_321 Depth 3
                                        #         Child Loop BB2_323 Depth 4
                                        #       Child Loop BB2_329 Depth 3
                                        #       Child Loop BB2_339 Depth 3
                                        #     Child Loop BB2_385 Depth 2
                                        #     Child Loop BB2_411 Depth 2
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-56(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$1, %eax
	jae	.LBB2_69
# BB#9:                                 #   in Loop: Header=BB2_8 Depth=1
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-232(%rbp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	$1, %r9d
	callq	SearchGalley
	movq	%rax, -120(%rbp)
	testq	%rax, %rax
	je	.LBB2_10
# BB#31:                                #   in Loop: Header=BB2_8 Depth=1
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	InputSym(%rip), %rax
	jne	.LBB2_75
	jmp	.LBB2_32
	.align	16, 0x90
.LBB2_69:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rax
	movzbl	40(%rax), %eax
	cmpl	$133, %eax
	jne	.LBB2_71
# BB#70:                                #   in Loop: Header=BB2_8 Depth=1
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-232(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	SearchGalley
	movq	%rax, -120(%rbp)
	movl	$0, -140(%rbp)
	jmp	.LBB2_73
.LBB2_71:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-232(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	SearchGalley
	movq	%rax, -120(%rbp)
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -140(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB2_73
# BB#72:                                #   in Loop: Header=BB2_8 Depth=1
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-232(%rbp), %rsi
	movl	$1, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	SearchGalley
	movq	%rax, -120(%rbp)
	.align	16, 0x90
.LBB2_73:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB2_74
.LBB2_75:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$121, %eax
	je	.LBB2_77
# BB#76:                                #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_77:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -112(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB2_79
# BB#78:                                #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_79:                               #   in Loop: Header=BB2_8 Depth=1
	xorl	%edi, %edi
	callq	EnterErrorBlock
	movzbl	zz_lengths+8(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB2_81
# BB#80:                                #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_84
	.align	16, 0x90
.LBB2_81:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_82
# BB#83:                                #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_84
.LBB2_82:                               #   in Loop: Header=BB2_8 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_84:                               #   in Loop: Header=BB2_8 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$8, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -128(%rbp)
	andb	$-17, 43(%rax)
	movq	-128(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-128(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-128(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-128(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-128(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-128(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-112(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$3, %eax
	setae	%al
	movq	-128(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movq	-112(%rbp), %rax
	movw	34(%rax), %ax
	movq	-128(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-112(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r12d, %eax
	movq	-128(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-112(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-128(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-128(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-128(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-128(%rbp), %rax
	movb	$-127, 40(%rax)
	movq	-128(%rbp), %rax
	andw	$-129, 42(%rax)
	movq	-128(%rbp), %rax
	andw	$-3, 42(%rax)
	cmpl	$1, -240(%rbp)
	jne	.LBB2_103
# BB#85:                                #   in Loop: Header=BB2_8 Depth=1
	movq	-112(%rbp), %rdi
	movl	$1, %edx
	subl	-240(%rbp), %edx
	leaq	-184(%rbp), %rsi
	leaq	-264(%rbp), %rcx
	callq	Constrained
	cmpl	$8388607, -184(%rbp)    # imm = 0x7FFFFF
	jne	.LBB2_89
# BB#86:                                #   in Loop: Header=BB2_8 Depth=1
	cmpl	$8388607, -180(%rbp)    # imm = 0x7FFFFF
	jne	.LBB2_89
# BB#87:                                #   in Loop: Header=BB2_8 Depth=1
	cmpl	$8388607, -176(%rbp)    # imm = 0x7FFFFF
	jne	.LBB2_89
# BB#88:                                #   in Loop: Header=BB2_8 Depth=1
	movb	%r15b, %r13b
	movl	%r12d, %r15d
	movl	%r14d, %r12d
	movq	%rbx, %r14
	movq	-112(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movl	$19, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %rbx
	movl	%r12d, %r14d
	movl	%r15d, %r12d
	movb	%r13b, %r15b
	callq	Error
	.align	16, 0x90
.LBB2_89:                               #   in Loop: Header=BB2_8 Depth=1
	cmpl	$0, -184(%rbp)
	js	.LBB2_92
# BB#90:                                #   in Loop: Header=BB2_8 Depth=1
	cmpl	$0, -180(%rbp)
	js	.LBB2_92
# BB#91:                                #   in Loop: Header=BB2_8 Depth=1
	cmpl	$0, -176(%rbp)
	jns	.LBB2_104
	jmp	.LBB2_92
	.align	16, 0x90
.LBB2_103:                              #   in Loop: Header=BB2_8 Depth=1
	movabsq	$36028792732385279, %rax # imm = 0x7FFFFF007FFFFF
	movq	%rax, -184(%rbp)
	movl	$8388607, -176(%rbp)    # imm = 0x7FFFFF
.LBB2_104:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-112(%rbp), %rdi
	movq	no_fpos(%rip), %rsi
	callq	CopyObject
	movq	%rax, -208(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB2_106
# BB#105:                               #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_109
	.align	16, 0x90
.LBB2_106:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_107
# BB#108:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_109
.LBB2_107:                              #   in Loop: Header=BB2_8 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_109:                              #   in Loop: Header=BB2_8 Depth=1
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
	movq	-128(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_112
# BB#110:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_112
# BB#111:                               #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_112:                              #   in Loop: Header=BB2_8 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-208(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_115
# BB#113:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_115
# BB#114:                               #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_115:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-208(%rbp), %rdi
	callq	DetachEnv
	movq	%rax, %r8
	movq	%r8, -192(%rbp)
	movq	-128(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movb	$1, %al
	movzwl	42(%rcx), %ecx
	btl	$4, %ecx
	jb	.LBB2_117
# BB#116:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-112(%rbp), %rax
	movzwl	42(%rax), %eax
	shrl	$3, %eax
	andl	$1, %eax
.LBB2_117:                              #   in Loop: Header=BB2_8 Depth=1
	movzbl	%al, %r12d
	movq	-112(%rbp), %r15
	movzwl	42(%r15), %r14d
	shrl	$2, %r14d
	andl	$1, %r14d
	movq	-120(%rbp), %rax
	movzwl	42(%rax), %ebx
	movl	%ebx, %r13d
	andl	$1, %r13d
	shrl	$6, %ebx
	andl	$1, %ebx
	addq	$64, %r15
	movq	-56(%rbp), %rax
	movq	88(%rax), %rcx
	cmpq	$0, 136(%rax)
	movl	$0, %eax
	je	.LBB2_119
# BB#118:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rax
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	136(%rax), %rdi
	movq	no_fpos(%rip), %rsi
	movq	%r8, -736(%rbp)         # 8-byte Spill
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	callq	CopyObject
	movq	-744(%rbp), %rcx        # 8-byte Reload
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	-736(%rbp), %r8         # 8-byte Reload
.LBB2_119:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, 48(%rsp)
	leaq	-136(%rbp), %rax
	movq	%rax, 40(%rsp)
	leaq	-152(%rbp), %rax
	movq	%rax, 32(%rsp)
	leaq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, 16(%rsp)
	leaq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, (%rsp)
	movq	%r8, %rsi
	movl	%r12d, %edx
	movl	%r14d, %ecx
	movl	%r13d, %r8d
	movl	%ebx, %r9d
	callq	SizeGalley
	cmpq	$0, -152(%rbp)
	je	.LBB2_121
# BB#120:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-152(%rbp), %rdi
	callq	ExpandRecursives
.LBB2_121:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-104(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	40(%rax), %eax
	shrl	$29, %eax
	testb	$3, %al
	movb	$1, %r15b
	movl	$1048575, %r12d         # imm = 0xFFFFF
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
	leaq	-544(%rbp), %rbx
	jne	.LBB2_123
# BB#122:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-96(%rbp), %rax
	movl	40(%rax), %ecx
	movl	$-1610612737, %edx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	%edx, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
.LBB2_123:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$1, -240(%rbp)
	jne	.LBB2_131
# BB#124:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-96(%rbp), %rdi
	movl	$1, %edx
	subl	-240(%rbp), %edx
	leaq	-184(%rbp), %rsi
	leaq	-264(%rbp), %rcx
	callq	Constrained
	cmpl	$8388607, -184(%rbp)    # imm = 0x7FFFFF
	jne	.LBB2_128
# BB#125:                               #   in Loop: Header=BB2_8 Depth=1
	cmpl	$8388607, -180(%rbp)    # imm = 0x7FFFFF
	jne	.LBB2_128
# BB#126:                               #   in Loop: Header=BB2_8 Depth=1
	cmpl	$8388607, -176(%rbp)    # imm = 0x7FFFFF
	jne	.LBB2_128
# BB#127:                               #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB2_128:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$0, -184(%rbp)
	js	.LBB2_92
# BB#129:                               #   in Loop: Header=BB2_8 Depth=1
	cmpl	$0, -180(%rbp)
	js	.LBB2_92
# BB#130:                               #   in Loop: Header=BB2_8 Depth=1
	cmpl	$0, -176(%rbp)
	js	.LBB2_92
	.align	16, 0x90
.LBB2_131:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$1, %eax
	jb	.LBB2_195
# BB#132:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$1, %edi
	callq	EnterErrorBlock
	movq	$0, -200(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_133
	.align	16, 0x90
.LBB2_134:                              #   in Loop: Header=BB2_133 Depth=2
	movq	-168(%rbp), %rax
.LBB2_133:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_134
# BB#135:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %rdi
	callq	DetachEnv
	movq	%rax, -192(%rbp)
	movq	-56(%rbp), %rdi
	xorl	%ecx, %ecx
	cmpl	$1, -240(%rbp)
	jne	.LBB2_137
# BB#136:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-96(%rbp), %rcx
	movzwl	42(%rcx), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
.LBB2_137:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-120(%rbp), %rdx
	movzwl	42(%rdx), %r8d
	andl	$1, %r8d
	movq	-96(%rbp), %rdx
	addq	$64, %rdx
	leaq	-88(%rbp), %rsi
	movq	%rsi, 40(%rsp)
	leaq	-152(%rbp), %rsi
	movq	%rsi, 32(%rsp)
	leaq	-200(%rbp), %rsi
	movq	%rsi, 24(%rsp)
	leaq	-184(%rbp), %rsi
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 16(%rsp)
	movl	$1, %edx
	movl	$1, %r9d
	movq	%rax, %rsi
	callq	SizeGalley
	cmpq	$0, -152(%rbp)
	je	.LBB2_139
# BB#138:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-152(%rbp), %rdi
	callq	ExpandRecursives
.LBB2_139:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$0, -140(%rbp)
	je	.LBB2_194
# BB#140:                               #   in Loop: Header=BB2_8 Depth=1
	movzbl	zz_lengths+124(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB2_142
# BB#141:                               #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_145
	.align	16, 0x90
.LBB2_92:                               #   in Loop: Header=BB2_8 Depth=1
	movq	$0, -168(%rbp)
	jmp	.LBB2_93
.LBB2_142:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_143
# BB#144:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_145
.LBB2_143:                              #   in Loop: Header=BB2_8 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_145:                              #   in Loop: Header=BB2_8 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$124, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -272(%rbp)
	movzbl	zz_lengths+125(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB2_147
# BB#146:                               #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_150
.LBB2_147:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_148
# BB#149:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_150
.LBB2_148:                              #   in Loop: Header=BB2_8 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_150:                              #   in Loop: Header=BB2_8 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$125, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -280(%rbp)
	andb	$-33, 42(%rax)
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.12, %esi
	callq	MakeWord
	movq	%rax, -208(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB2_152
# BB#151:                               #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_155
.LBB2_152:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_153
# BB#154:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_155
.LBB2_153:                              #   in Loop: Header=BB2_8 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_155:                              #   in Loop: Header=BB2_8 Depth=1
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
	movq	-272(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_158
# BB#156:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_158
# BB#157:                               #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_158:                              #   in Loop: Header=BB2_8 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-208(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_161
# BB#159:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_161
# BB#160:                               #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_161:                              #   in Loop: Header=BB2_8 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB2_163
# BB#162:                               #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_166
.LBB2_163:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_164
# BB#165:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_166
.LBB2_164:                              #   in Loop: Header=BB2_8 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_166:                              #   in Loop: Header=BB2_8 Depth=1
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
	movq	-280(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_169
# BB#167:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_169
# BB#168:                               #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_169:                              #   in Loop: Header=BB2_8 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-208(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_172
# BB#170:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_172
# BB#171:                               #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_172:                              #   in Loop: Header=BB2_8 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB2_174
# BB#173:                               #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_177
.LBB2_174:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_175
# BB#176:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_177
.LBB2_175:                              #   in Loop: Header=BB2_8 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_177:                              #   in Loop: Header=BB2_8 Depth=1
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
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_180
# BB#178:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_180
# BB#179:                               #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_180:                              #   in Loop: Header=BB2_8 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-272(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_183
# BB#181:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_183
# BB#182:                               #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_183:                              #   in Loop: Header=BB2_8 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB2_185
# BB#184:                               #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_188
.LBB2_185:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_186
# BB#187:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_188
.LBB2_186:                              #   in Loop: Header=BB2_8 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_188:                              #   in Loop: Header=BB2_8 Depth=1
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
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_191
# BB#189:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_191
# BB#190:                               #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_191:                              #   in Loop: Header=BB2_8 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-280(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_194
# BB#192:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_194
# BB#193:                               #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_194:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$1, %edi
	callq	LeaveErrorBlock
.LBB2_195:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$1, -240(%rbp)
	jne	.LBB2_200
# BB#196:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	movl	48(%rax,%rcx,4), %eax
	cmpl	-184(%rbp), %eax
	jg	.LBB2_199
# BB#197:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	movl	48(%rax,%rcx,4), %edx
	addl	56(%rax,%rcx,4), %edx
	cmpl	-180(%rbp), %edx
	jg	.LBB2_199
# BB#198:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	movl	56(%rax,%rcx,4), %eax
	cmpl	-176(%rbp), %eax
	jg	.LBB2_199
.LBB2_200:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB2_201
	.align	16, 0x90
.LBB2_455:                              #   in Loop: Header=BB2_201 Depth=2
	movq	-160(%rbp), %rax
.LBB2_201:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_203 Depth 3
                                        #       Child Loop BB2_209 Depth 3
                                        #       Child Loop BB2_233 Depth 3
                                        #       Child Loop BB2_247 Depth 3
                                        #       Child Loop BB2_255 Depth 3
                                        #       Child Loop BB2_265 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB2_456
# BB#202:                               #   in Loop: Header=BB2_201 Depth=2
	movq	-160(%rbp), %rax
	jmp	.LBB2_203
	.align	16, 0x90
.LBB2_204:                              #   in Loop: Header=BB2_203 Depth=3
	movq	-168(%rbp), %rax
.LBB2_203:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_204
# BB#205:                               #   in Loop: Header=BB2_201 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB2_211
# BB#206:                               #   in Loop: Header=BB2_201 Depth=2
	cmpl	$0, -240(%rbp)
	je	.LBB2_207
# BB#208:                               #   in Loop: Header=BB2_201 Depth=2
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_209
.LBB2_207:                              #   in Loop: Header=BB2_201 Depth=2
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_209
	.align	16, 0x90
.LBB2_210:                              #   in Loop: Header=BB2_209 Depth=3
	movq	-168(%rbp), %rax
.LBB2_209:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_210
.LBB2_211:                              #   in Loop: Header=BB2_201 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	decl	%eax
	cmpl	$137, %eax
	ja	.LBB2_454
# BB#212:                               #   in Loop: Header=BB2_201 Depth=2
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_282:                              #   in Loop: Header=BB2_201 Depth=2
	movq	-96(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$1610612736, %edx       # imm = 0x60000000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-1610612737, %esi      # imm = 0xFFFFFFFF9FFFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-160(%rbp), %rax
	jmp	.LBB2_201
	.align	16, 0x90
.LBB2_454:                              #   in Loop: Header=BB2_201 Depth=2
	movq	no_fpos(%rip), %rbx
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.24, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB2_455
.LBB2_213:                              #   in Loop: Header=BB2_201 Depth=2
	cmpl	$0, -236(%rbp)
	je	.LBB2_455
# BB#214:                               #   in Loop: Header=BB2_201 Depth=2
	cmpq	$0, -88(%rbp)
	jne	.LBB2_221
# BB#215:                               #   in Loop: Header=BB2_201 Depth=2
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB2_217
# BB#216:                               #   in Loop: Header=BB2_201 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_220
.LBB2_280:                              #   in Loop: Header=BB2_201 Depth=2
	movq	-96(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$1610612736, %edx       # imm = 0x60000000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-1610612737, %esi      # imm = 0xFFFFFFFF9FFFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-168(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB2_455
# BB#281:                               #   in Loop: Header=BB2_201 Depth=2
	movq	-56(%rbp), %rax
	orw	$32, 42(%rax)
	movq	-160(%rbp), %rax
	jmp	.LBB2_201
.LBB2_232:                              #   in Loop: Header=BB2_201 Depth=2
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_233
	.align	16, 0x90
.LBB2_234:                              #   in Loop: Header=BB2_233 Depth=3
	movq	-208(%rbp), %rax
.LBB2_233:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_234
# BB#235:                               #   in Loop: Header=BB2_201 Depth=2
	movq	-208(%rbp), %rax
	movq	24(%rax), %rcx
	cmpq	16(%rax), %rcx
	je	.LBB2_236
# BB#246:                               #   in Loop: Header=BB2_201 Depth=2
	movq	-208(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	leaq	-544(%rbp), %rbx
	jmp	.LBB2_247
	.align	16, 0x90
.LBB2_248:                              #   in Loop: Header=BB2_247 Depth=3
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
.LBB2_247:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_248
# BB#249:                               #   in Loop: Header=BB2_201 Depth=2
	movq	-208(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$124, %eax
	je	.LBB2_251
# BB#250:                               #   in Loop: Header=BB2_201 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_251:                              #   in Loop: Header=BB2_201 Depth=2
	movq	-208(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	CheckComponentOrder
	cmpl	$157, %eax
	jne	.LBB2_252
# BB#254:                               #   in Loop: Header=BB2_201 Depth=2
	movq	-208(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_255
	.align	16, 0x90
.LBB2_264:                              #   in Loop: Header=BB2_255 Depth=3
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_255:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_265
# BB#256:                               #   in Loop: Header=BB2_255 Depth=3
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_258
# BB#257:                               #   in Loop: Header=BB2_255 Depth=3
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
.LBB2_258:                              #   in Loop: Header=BB2_255 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_260
# BB#259:                               #   in Loop: Header=BB2_255 Depth=3
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
.LBB2_260:                              #   in Loop: Header=BB2_255 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_262
# BB#261:                               #   in Loop: Header=BB2_255 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_263
.LBB2_262:                              #   in Loop: Header=BB2_255 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_264
	.align	16, 0x90
.LBB2_263:                              #   in Loop: Header=BB2_255 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_264
	.align	16, 0x90
.LBB2_274:                              #   in Loop: Header=BB2_265 Depth=3
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_265:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_275
# BB#266:                               #   in Loop: Header=BB2_265 Depth=3
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_268
# BB#267:                               #   in Loop: Header=BB2_265 Depth=3
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
.LBB2_268:                              #   in Loop: Header=BB2_265 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_270
# BB#269:                               #   in Loop: Header=BB2_265 Depth=3
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
.LBB2_270:                              #   in Loop: Header=BB2_265 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_272
# BB#271:                               #   in Loop: Header=BB2_265 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_273
.LBB2_272:                              #   in Loop: Header=BB2_265 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_274
	.align	16, 0x90
.LBB2_273:                              #   in Loop: Header=BB2_265 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_274
.LBB2_275:                              #   in Loop: Header=BB2_201 Depth=2
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_277
# BB#276:                               #   in Loop: Header=BB2_201 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_278
.LBB2_277:                              #   in Loop: Header=BB2_201 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_279
.LBB2_217:                              #   in Loop: Header=BB2_201 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_218
# BB#219:                               #   in Loop: Header=BB2_201 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_220
.LBB2_278:                              #   in Loop: Header=BB2_201 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_279:                              #   in Loop: Header=BB2_201 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_236:                              #   in Loop: Header=BB2_201 Depth=2
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB2_238
# BB#237:                               #   in Loop: Header=BB2_201 Depth=2
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
.LBB2_238:                              #   in Loop: Header=BB2_201 Depth=2
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_240
# BB#239:                               #   in Loop: Header=BB2_201 Depth=2
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
.LBB2_240:                              #   in Loop: Header=BB2_201 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_242
# BB#241:                               #   in Loop: Header=BB2_201 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_243
.LBB2_242:                              #   in Loop: Header=BB2_201 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_244
.LBB2_243:                              #   in Loop: Header=BB2_201 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_244:                              #   in Loop: Header=BB2_201 Depth=2
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
	jne	.LBB2_455
# BB#245:                               #   in Loop: Header=BB2_201 Depth=2
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	movq	-160(%rbp), %rax
	jmp	.LBB2_201
.LBB2_218:                              #   in Loop: Header=BB2_201 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_220:                              #   in Loop: Header=BB2_201 Depth=2
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
	movq	%rax, -88(%rbp)
.LBB2_221:                              #   in Loop: Header=BB2_201 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB2_223
# BB#222:                               #   in Loop: Header=BB2_201 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_226
.LBB2_223:                              #   in Loop: Header=BB2_201 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_224
# BB#225:                               #   in Loop: Header=BB2_201 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_226
.LBB2_224:                              #   in Loop: Header=BB2_201 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_226:                              #   in Loop: Header=BB2_201 Depth=2
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
	je	.LBB2_229
# BB#227:                               #   in Loop: Header=BB2_201 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB2_229
# BB#228:                               #   in Loop: Header=BB2_201 Depth=2
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
.LBB2_229:                              #   in Loop: Header=BB2_201 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_455
# BB#230:                               #   in Loop: Header=BB2_201 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB2_455
# BB#231:                               #   in Loop: Header=BB2_201 Depth=2
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
	movq	-160(%rbp), %rax
	jmp	.LBB2_201
.LBB2_252:                              #   in Loop: Header=BB2_201 Depth=2
	cmpl	$155, %eax
	je	.LBB2_93
# BB#253:                               #   in Loop: Header=BB2_201 Depth=2
	cmpl	$156, %eax
	jne	.LBB2_455
	jmp	.LBB2_522
.LBB2_199:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r14
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movl	$19, %edi
	movl	$3, %esi
	movl	$.L.str.13, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
	callq	Error
	leaq	-544(%rbp), %rbx
	.align	16, 0x90
.LBB2_93:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$1, %edi
	callq	LeaveErrorBlock
	cmpq	$0, -136(%rbp)
	je	.LBB2_95
# BB#94:                                #   in Loop: Header=BB2_8 Depth=1
	movq	-136(%rbp), %rdi
	callq	DisposeObject
	movq	$0, -136(%rbp)
.LBB2_95:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-128(%rbp), %rdi
	callq	DisposeObject
	movq	-56(%rbp), %rax
	movzbl	40(%rax), %eax
	cmpl	$133, %eax
	jne	.LBB2_518
# BB#96:                                #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$1, %eax
	jae	.LBB2_97
.LBB2_518:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_520
# BB#519:                               #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_520:                              #   in Loop: Header=BB2_8 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_100
.LBB2_97:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_99
# BB#98:                                #   in Loop: Header=BB2_8 Depth=1
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
.LBB2_99:                               #   in Loop: Header=BB2_8 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	.align	16, 0x90
.LBB2_100:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_8
# BB#101:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB2_102
	jmp	.LBB2_8
.LBB2_283:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-96(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$1610612736, %edx       # imm = 0x60000000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-1610612737, %esi      # imm = 0xFFFFFFFF9FFFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	cmpl	$1, -240(%rbp)
	jne	.LBB2_354
# BB#284:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-160(%rbp), %rax
	jmp	.LBB2_285
	.align	16, 0x90
.LBB2_351:                              #   in Loop: Header=BB2_285 Depth=2
	movq	-216(%rbp), %rax
.LBB2_285:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_287 Depth 3
                                        #       Child Loop BB2_294 Depth 3
                                        #       Child Loop BB2_304 Depth 3
                                        #       Child Loop BB2_321 Depth 3
                                        #         Child Loop BB2_323 Depth 4
                                        #       Child Loop BB2_329 Depth 3
                                        #       Child Loop BB2_339 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB2_352
# BB#286:                               #   in Loop: Header=BB2_285 Depth=2
	movq	-216(%rbp), %rax
	jmp	.LBB2_287
	.align	16, 0x90
.LBB2_288:                              #   in Loop: Header=BB2_287 Depth=3
	movq	-224(%rbp), %rax
.LBB2_287:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_288
# BB#289:                               #   in Loop: Header=BB2_285 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB2_349
# BB#290:                               #   in Loop: Header=BB2_285 Depth=2
	cmpl	$122, %eax
	jne	.LBB2_291
# BB#319:                               #   in Loop: Header=BB2_285 Depth=2
	movq	-224(%rbp), %rax
	testb	$1, 42(%rax)
	je	.LBB2_521
# BB#320:                               #   in Loop: Header=BB2_285 Depth=2
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB2_321
	.align	16, 0x90
.LBB2_327:                              #   in Loop: Header=BB2_321 Depth=3
	movq	-208(%rbp), %rdi
	callq	DetachGalley
	movq	-208(%rbp), %rdi
	xorl	%esi, %esi
	callq	KillGalley
.LBB2_321:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_285 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_323 Depth 4
	movq	-224(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_328
# BB#322:                               #   in Loop: Header=BB2_321 Depth=3
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_323
	.align	16, 0x90
.LBB2_324:                              #   in Loop: Header=BB2_323 Depth=4
	movq	-208(%rbp), %rax
.LBB2_323:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_285 Depth=2
                                        #       Parent Loop BB2_321 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_324
# BB#325:                               #   in Loop: Header=BB2_321 Depth=3
	movq	-208(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB2_327
# BB#326:                               #   in Loop: Header=BB2_321 Depth=3
	movq	-208(%rbp), %rax
	movq	104(%rax), %rdi
	callq	DisposeObject
	movq	-208(%rbp), %rax
	movq	$0, 104(%rax)
	jmp	.LBB2_327
	.align	16, 0x90
.LBB2_349:                              #   in Loop: Header=BB2_285 Depth=2
	movq	-224(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB2_351
# BB#350:                               #   in Loop: Header=BB2_285 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB2_351
	.align	16, 0x90
.LBB2_291:                              #   in Loop: Header=BB2_285 Depth=2
	cmpl	$121, %eax
	jne	.LBB2_351
# BB#292:                               #   in Loop: Header=BB2_285 Depth=2
	movq	-224(%rbp), %rax
	testb	$1, 42(%rax)
	je	.LBB2_521
# BB#293:                               #   in Loop: Header=BB2_285 Depth=2
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_294
	.align	16, 0x90
.LBB2_303:                              #   in Loop: Header=BB2_294 Depth=3
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_294:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_304
# BB#295:                               #   in Loop: Header=BB2_294 Depth=3
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_297
# BB#296:                               #   in Loop: Header=BB2_294 Depth=3
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
.LBB2_297:                              #   in Loop: Header=BB2_294 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_299
# BB#298:                               #   in Loop: Header=BB2_294 Depth=3
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
.LBB2_299:                              #   in Loop: Header=BB2_294 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_301
# BB#300:                               #   in Loop: Header=BB2_294 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_302
.LBB2_301:                              #   in Loop: Header=BB2_294 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_303
	.align	16, 0x90
.LBB2_302:                              #   in Loop: Header=BB2_294 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_303
	.align	16, 0x90
.LBB2_313:                              #   in Loop: Header=BB2_304 Depth=3
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_304:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_314
# BB#305:                               #   in Loop: Header=BB2_304 Depth=3
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_307
# BB#306:                               #   in Loop: Header=BB2_304 Depth=3
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
.LBB2_307:                              #   in Loop: Header=BB2_304 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_309
# BB#308:                               #   in Loop: Header=BB2_304 Depth=3
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
.LBB2_309:                              #   in Loop: Header=BB2_304 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_311
# BB#310:                               #   in Loop: Header=BB2_304 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_312
.LBB2_311:                              #   in Loop: Header=BB2_304 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_313
	.align	16, 0x90
.LBB2_312:                              #   in Loop: Header=BB2_304 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_313
	.align	16, 0x90
.LBB2_328:                              #   in Loop: Header=BB2_285 Depth=2
	movq	-224(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_329
	.align	16, 0x90
.LBB2_338:                              #   in Loop: Header=BB2_329 Depth=3
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_329:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_339
# BB#330:                               #   in Loop: Header=BB2_329 Depth=3
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_332
# BB#331:                               #   in Loop: Header=BB2_329 Depth=3
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
.LBB2_332:                              #   in Loop: Header=BB2_329 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_334
# BB#333:                               #   in Loop: Header=BB2_329 Depth=3
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
.LBB2_334:                              #   in Loop: Header=BB2_329 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_336
# BB#335:                               #   in Loop: Header=BB2_329 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_337
.LBB2_336:                              #   in Loop: Header=BB2_329 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_338
	.align	16, 0x90
.LBB2_337:                              #   in Loop: Header=BB2_329 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_338
	.align	16, 0x90
.LBB2_348:                              #   in Loop: Header=BB2_339 Depth=3
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_339:                              #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_314
# BB#340:                               #   in Loop: Header=BB2_339 Depth=3
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_342
# BB#341:                               #   in Loop: Header=BB2_339 Depth=3
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
.LBB2_342:                              #   in Loop: Header=BB2_339 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_344
# BB#343:                               #   in Loop: Header=BB2_339 Depth=3
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
.LBB2_344:                              #   in Loop: Header=BB2_339 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_346
# BB#345:                               #   in Loop: Header=BB2_339 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_347
.LBB2_346:                              #   in Loop: Header=BB2_339 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_348
	.align	16, 0x90
.LBB2_347:                              #   in Loop: Header=BB2_339 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_348
	.align	16, 0x90
.LBB2_314:                              #   in Loop: Header=BB2_285 Depth=2
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_316
# BB#315:                               #   in Loop: Header=BB2_285 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_317
.LBB2_316:                              #   in Loop: Header=BB2_285 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_318
.LBB2_317:                              #   in Loop: Header=BB2_285 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_318:                              #   in Loop: Header=BB2_285 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-216(%rbp), %rax
	jmp	.LBB2_285
.LBB2_352:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$18, %eax
	jne	.LBB2_354
# BB#353:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %rdi
	callq	VerticalHyphenate
.LBB2_354:                              #   in Loop: Header=BB2_8 Depth=1
	movq	$0, -256(%rbp)
	movq	-96(%rbp), %rdi
	movl	-240(%rbp), %edx
	leaq	-184(%rbp), %rsi
	leaq	-256(%rbp), %rcx
	callq	Constrained
	movslq	-240(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	cmpl	-184(%rbp), %eax
	leaq	-544(%rbp), %rbx
	jg	.LBB2_357
# BB#355:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	cmpl	-180(%rbp), %edx
	jg	.LBB2_357
# BB#356:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	cmpl	-176(%rbp), %eax
	jle	.LBB2_370
.LBB2_357:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$0, -284(%rbp)
	movq	-56(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$12, %eax
	jae	.LBB2_364
# BB#358:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	jle	.LBB2_364
# BB#359:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edi
	movl	56(%rcx,%rax,4), %esi
	leaq	-184(%rbp), %rdx
	callq	ScaleToConstraint
	movl	%eax, -288(%rbp)
	cvtsi2sdl	%eax, %xmm0
	ucomisd	.LCPI2_0(%rip), %xmm0
	jbe	.LBB2_364
# BB#360:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rbx, %r13
	movslq	-240(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movb	$1, %al
	leaq	-320(%rbp), %r14
	movq	%r14, %rdi
	callq	sprintf
	movl	-180(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	.LCPI2_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movb	$1, %al
	leaq	-352(%rbp), %rbx
	movq	%rbx, %rdi
	callq	sprintf
	cmpl	$1, -240(%rbp)
	jne	.LBB2_362
# BB#361:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	%rbx, (%rsp)
	movq	$.L.str.17, 8(%rsp)
	movl	$19, %edi
	movl	$4, %esi
	movl	$.L.str.16, %edx
	jmp	.LBB2_363
.LBB2_362:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	%rbx, (%rsp)
	movq	$.L.str.17, 8(%rsp)
	movl	$19, %edi
	movl	$5, %esi
	movl	$.L.str.18, %edx
.LBB2_363:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r9
	callq	Error
	movq	-168(%rbp), %rdi
	movl	-288(%rbp), %esi
	movl	-240(%rbp), %edx
	callq	InterposeScale
	movq	%rax, -168(%rbp)
	movl	$1, -284(%rbp)
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
	movq	%r13, %rbx
.LBB2_364:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB2_365
.LBB2_370:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$1, -240(%rbp)
	jne	.LBB2_372
# BB#371:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	movl	48(%rax,%rcx,4), %eax
	movl	%eax, -244(%rbp)
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	jmp	.LBB2_373
.LBB2_372:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-168(%rbp), %rax
	movl	48(%rax,%rcx,4), %eax
	movl	%eax, -244(%rbp)
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-168(%rbp), %rax
.LBB2_373:                              #   in Loop: Header=BB2_8 Depth=1
	movl	56(%rax,%rcx,4), %eax
	movl	%eax, -248(%rbp)
	movq	-96(%rbp), %rdi
	movl	$1, %edx
	subl	-240(%rbp), %edx
	leaq	-184(%rbp), %rsi
	leaq	-264(%rbp), %rcx
	callq	Constrained
	movl	-244(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jg	.LBB2_376
# BB#374:                               #   in Loop: Header=BB2_8 Depth=1
	movl	-244(%rbp), %eax
	addl	-248(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jg	.LBB2_376
# BB#375:                               #   in Loop: Header=BB2_8 Depth=1
	movl	-248(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jle	.LBB2_384
.LBB2_376:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$0, -420(%rbp)
	movq	-56(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$12, %eax
	jae	.LBB2_383
# BB#377:                               #   in Loop: Header=BB2_8 Depth=1
	movl	-244(%rbp), %eax
	addl	-248(%rbp), %eax
	jle	.LBB2_383
# BB#378:                               #   in Loop: Header=BB2_8 Depth=1
	movl	-244(%rbp), %edi
	movl	-248(%rbp), %esi
	leaq	-184(%rbp), %rdx
	callq	ScaleToConstraint
	movl	%eax, -424(%rbp)
	cvtsi2sdl	%eax, %xmm0
	ucomisd	.LCPI2_0(%rip), %xmm0
	jbe	.LBB2_383
# BB#379:                               #   in Loop: Header=BB2_8 Depth=1
	movl	-244(%rbp), %eax
	addl	-248(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movb	$1, %al
	leaq	-448(%rbp), %r14
	movq	%r14, %r13
	movq	%r13, %rdi
	callq	sprintf
	movl	-180(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	.LCPI2_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movb	$1, %al
	leaq	-480(%rbp), %r14
	movq	%r14, %rdi
	callq	sprintf
	cmpl	$0, -240(%rbp)
	jne	.LBB2_381
# BB#380:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	%r14, (%rsp)
	movq	$.L.str.17, 8(%rsp)
	movl	$19, %edi
	movl	$6, %esi
	movl	$.L.str.16, %edx
	jmp	.LBB2_382
.LBB2_365:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	jle	.LBB2_93
# BB#366:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rbx, %r13
	movslq	-240(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movb	$1, %al
	leaq	-384(%rbp), %rbx
	movq	%rbx, %r14
	movq	%r14, %rdi
	callq	sprintf
	movl	-180(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	.LCPI2_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movb	$1, %al
	leaq	-416(%rbp), %rbx
	movq	%rbx, %rdi
	callq	sprintf
	cmpl	$1, -240(%rbp)
	jne	.LBB2_369
# BB#367:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	%rbx, (%rsp)
	movl	$19, %edi
	movl	$12, %esi
	movl	$.L.str.19, %edx
	jmp	.LBB2_368
.LBB2_369:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	%rbx, (%rsp)
	movl	$19, %edi
	movl	$13, %esi
	movl	$.L.str.20, %edx
.LBB2_368:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r9
	callq	Error
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
	movq	%r13, %rbx
	jmp	.LBB2_93
.LBB2_381:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	%r14, (%rsp)
	movq	$.L.str.17, 8(%rsp)
	movl	$19, %edi
	movl	$7, %esi
	movl	$.L.str.18, %edx
.LBB2_382:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r13, %r9
	callq	Error
	movq	-168(%rbp), %rdi
	movl	-424(%rbp), %esi
	movl	$1, %edx
	subl	-240(%rbp), %edx
	callq	InterposeScale
	movq	%rax, -168(%rbp)
	movl	$1, -420(%rbp)
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
.LBB2_383:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$0, -420(%rbp)
	je	.LBB2_93
.LBB2_384:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-96(%rbp), %rdi
	movslq	-240(%rbp), %rcx
	movq	-168(%rbp), %rax
	movl	48(%rax,%rcx,4), %esi
	movl	56(%rax,%rcx,4), %edx
	callq	AdjustSize
	movq	-96(%rbp), %rdi
	movl	-244(%rbp), %esi
	movl	-248(%rbp), %edx
	movl	$1, %ecx
	subl	-240(%rbp), %ecx
	callq	AdjustSize
	movq	-112(%rbp), %rdi
	movl	-240(%rbp), %edx
	leaq	-184(%rbp), %rsi
	leaq	-256(%rbp), %rcx
	callq	Constrained
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_385
	.align	16, 0x90
.LBB2_386:                              #   in Loop: Header=BB2_385 Depth=2
	movq	-224(%rbp), %rax
.LBB2_385:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_386
# BB#387:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rbx, %r14
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB2_390
# BB#388:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$138, %eax
	jg	.LBB2_390
# BB#389:                               #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_390:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-224(%rbp), %rcx
	cmpl	$0, 48(%rcx,%rax,4)
	js	.LBB2_392
# BB#391:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-224(%rbp), %rcx
	cmpl	$0, 56(%rcx,%rax,4)
	jns	.LBB2_393
.LBB2_392:                              #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_393:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	cmpl	-184(%rbp), %eax
	jg	.LBB2_396
# BB#394:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	cmpl	-180(%rbp), %edx
	jg	.LBB2_396
# BB#395:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	cmpl	-176(%rbp), %eax
	jle	.LBB2_410
.LBB2_396:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$0, -484(%rbp)
	movq	-56(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$12, %eax
	jae	.LBB2_404
# BB#397:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	jle	.LBB2_404
# BB#398:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	-256(%rbp), %rax
	je	.LBB2_404
# BB#399:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edi
	movl	56(%rcx,%rax,4), %esi
	leaq	-184(%rbp), %rdx
	callq	ScaleToConstraint
	movl	%eax, -488(%rbp)
	cvtsi2sdl	%eax, %xmm0
	ucomisd	.LCPI2_0(%rip), %xmm0
	jbe	.LBB2_404
# BB#400:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movb	$1, %al
	leaq	-512(%rbp), %rbx
	movq	%rbx, %r13
	movq	%r13, %rdi
	callq	sprintf
	movl	-180(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	.LCPI2_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movb	$1, %al
	movq	%r14, %rdi
	callq	sprintf
	cmpl	$1, -240(%rbp)
	jne	.LBB2_402
# BB#401:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	%r14, (%rsp)
	movq	$.L.str.17, 8(%rsp)
	movl	$19, %edi
	movl	$8, %esi
	movl	$.L.str.16, %edx
	jmp	.LBB2_403
.LBB2_402:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	%r14, (%rsp)
	movq	$.L.str.17, 8(%rsp)
	movl	$19, %edi
	movl	$9, %esi
	movl	$.L.str.18, %edx
.LBB2_403:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r13, %r9
	callq	Error
	movq	-224(%rbp), %rdi
	movl	-240(%rbp), %esi
	callq	InterposeWideOrHigh
	movq	%rax, -224(%rbp)
	movl	-488(%rbp), %esi
	movl	-240(%rbp), %edx
	movq	%rax, %rdi
	callq	InterposeScale
	movq	%rax, -224(%rbp)
	movl	$1, -484(%rbp)
.LBB2_404:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$0, -484(%rbp)
	je	.LBB2_405
.LBB2_410:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-256(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 128(%rcx)
	movq	-112(%rbp), %rdi
	movl	$1, %edx
	subl	-240(%rbp), %edx
	leaq	-184(%rbp), %rsi
	leaq	-264(%rbp), %rcx
	callq	Constrained
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_411
	.align	16, 0x90
.LBB2_412:                              #   in Loop: Header=BB2_411 Depth=2
	movq	-224(%rbp), %rax
.LBB2_411:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_412
# BB#413:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB2_416
# BB#414:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$138, %eax
	jg	.LBB2_416
# BB#415:                               #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_416:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-224(%rbp), %rax
	cmpl	$0, 48(%rax,%rcx,4)
	movq	%r14, %rbx
	js	.LBB2_418
# BB#417:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-224(%rbp), %rax
	cmpl	$0, 56(%rax,%rcx,4)
	jns	.LBB2_419
.LBB2_418:                              #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_419:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-224(%rbp), %rax
	movl	48(%rax,%rcx,4), %eax
	cmpl	-184(%rbp), %eax
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
	jg	.LBB2_422
# BB#420:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-224(%rbp), %rax
	movl	48(%rax,%rcx,4), %edx
	addl	56(%rax,%rcx,4), %edx
	cmpl	-180(%rbp), %edx
	jg	.LBB2_422
# BB#421:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-224(%rbp), %rax
	movl	56(%rax,%rcx,4), %eax
	cmpl	-176(%rbp), %eax
	jle	.LBB2_430
.LBB2_422:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$0, -612(%rbp)
	movq	-56(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$12, %eax
	jae	.LBB2_429
# BB#423:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-224(%rbp), %rax
	movl	48(%rax,%rcx,4), %edx
	addl	56(%rax,%rcx,4), %edx
	jle	.LBB2_429
# BB#424:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-224(%rbp), %rax
	movl	48(%rax,%rcx,4), %edi
	movl	56(%rax,%rcx,4), %esi
	leaq	-184(%rbp), %rdx
	callq	ScaleToConstraint
	movl	%eax, -616(%rbp)
	cvtsi2sdl	%eax, %xmm0
	ucomisd	.LCPI2_0(%rip), %xmm0
	jbe	.LBB2_429
# BB#425:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-224(%rbp), %rax
	movl	48(%rax,%rcx,4), %edx
	addl	56(%rax,%rcx,4), %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movb	$1, %al
	leaq	-640(%rbp), %rbx
	movq	%rbx, %r14
	movq	%r14, %rdi
	callq	sprintf
	movl	-180(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	.LCPI2_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movb	$1, %al
	leaq	-672(%rbp), %rbx
	movq	%rbx, %rdi
	callq	sprintf
	cmpl	$0, -240(%rbp)
	jne	.LBB2_427
# BB#426:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	%rbx, (%rsp)
	movq	$.L.str.17, 8(%rsp)
	movl	$19, %edi
	movl	$10, %esi
	movl	$.L.str.16, %edx
	jmp	.LBB2_428
.LBB2_405:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-256(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 128(%rcx)
	movslq	-240(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	movq	%r14, %rbx
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
	jle	.LBB2_93
# BB#406:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-240(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	cvtsi2ssl	%edx, %xmm0
	movss	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movb	$1, %al
	leaq	-576(%rbp), %r14
	movq	%r14, %r13
	movq	%r13, %rdi
	callq	sprintf
	movl	-180(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	.LCPI2_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movb	$1, %al
	leaq	-608(%rbp), %r14
	movq	%r14, %rdi
	callq	sprintf
	cmpl	$1, -240(%rbp)
	jne	.LBB2_409
# BB#407:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	%r14, (%rsp)
	movl	$19, %edi
	movl	$14, %esi
	movl	$.L.str.19, %edx
	jmp	.LBB2_408
.LBB2_409:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	%r14, (%rsp)
	movl	$19, %edi
	movl	$15, %esi
	movl	$.L.str.20, %edx
.LBB2_408:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r13, %r9
	callq	Error
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
	jmp	.LBB2_93
.LBB2_427:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	%rbx, (%rsp)
	movq	$.L.str.17, 8(%rsp)
	movl	$19, %edi
	movl	$11, %esi
	movl	$.L.str.18, %edx
.LBB2_428:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r9
	callq	Error
	movq	-224(%rbp), %rdi
	movl	$1, %esi
	subl	-240(%rbp), %esi
	callq	InterposeWideOrHigh
	movq	%rax, -224(%rbp)
	movl	-616(%rbp), %esi
	movl	$1, %edx
	subl	-240(%rbp), %edx
	movq	%rax, %rdi
	callq	InterposeScale
	movq	%rax, -224(%rbp)
	movl	$1, -612(%rbp)
	leaq	-544(%rbp), %rbx
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
.LBB2_429:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$0, -612(%rbp)
	je	.LBB2_93
.LBB2_430:
	movq	-112(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$3, %eax
	jb	.LBB2_434
# BB#431:
	movq	-112(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$4, %eax
	jae	.LBB2_450
# BB#432:
	movq	-112(%rbp), %rdi
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-128(%rbp), %rdx
	jmp	.LBB2_433
.LBB2_456:
	cmpq	$0, -136(%rbp)
	je	.LBB2_458
# BB#457:
	movq	-136(%rbp), %rdi
	callq	DisposeObject
	movq	$0, -136(%rbp)
.LBB2_458:
	movq	-128(%rbp), %rdi
	callq	DisposeObject
	xorl	%edi, %edi
	callq	LeaveErrorBlock
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	movl	$246, %ebx
	jmp	.LBB2_459
	.align	16, 0x90
.LBB2_475:                              #   in Loop: Header=BB2_459 Depth=1
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
.LBB2_459:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_461 Depth 2
	movq	-160(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB2_476
# BB#460:                               #   in Loop: Header=BB2_459 Depth=1
	movq	-160(%rbp), %rax
	jmp	.LBB2_461
	.align	16, 0x90
.LBB2_462:                              #   in Loop: Header=BB2_461 Depth=2
	movq	-168(%rbp), %rax
.LBB2_461:                              #   Parent Loop BB2_459 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_462
# BB#463:                               #   in Loop: Header=BB2_459 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	ja	.LBB2_475
# BB#464:                               #   in Loop: Header=BB2_459 Depth=1
	btl	%eax, %ebx
	jae	.LBB2_475
# BB#465:                               #   in Loop: Header=BB2_459 Depth=1
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB2_467
# BB#466:                               #   in Loop: Header=BB2_459 Depth=1
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
.LBB2_467:                              #   in Loop: Header=BB2_459 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_469
# BB#468:                               #   in Loop: Header=BB2_459 Depth=1
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
.LBB2_469:                              #   in Loop: Header=BB2_459 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_471
# BB#470:                               #   in Loop: Header=BB2_459 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_472
.LBB2_471:                              #   in Loop: Header=BB2_459 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_473
.LBB2_472:                              #   in Loop: Header=BB2_459 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_473:                              #   in Loop: Header=BB2_459 Depth=1
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
	jne	.LBB2_475
# BB#474:                               #   in Loop: Header=BB2_459 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB2_475
.LBB2_476:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -688(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -696(%rbp)
	movq	-680(%rbp), %rax
	cmpq	-688(%rbp), %rax
	je	.LBB2_485
# BB#477:
	movq	-680(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_479
# BB#478:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_479:
	movq	-680(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-688(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_482
# BB#480:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_482
# BB#481:
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
.LBB2_482:
	movq	-680(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-696(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_485
# BB#483:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_485
# BB#484:
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
.LBB2_485:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_487
# BB#486:
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
.LBB2_487:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_490
# BB#488:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_490
# BB#489:
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
.LBB2_490:
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$120, %eax
	je	.LBB2_492
# BB#491:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.27, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_492:
	movq	-80(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_493
	.align	16, 0x90
.LBB2_502:                              #   in Loop: Header=BB2_493 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_493:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_503
# BB#494:                               #   in Loop: Header=BB2_493 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_496
# BB#495:                               #   in Loop: Header=BB2_493 Depth=1
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
.LBB2_496:                              #   in Loop: Header=BB2_493 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_498
# BB#497:                               #   in Loop: Header=BB2_493 Depth=1
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
.LBB2_498:                              #   in Loop: Header=BB2_493 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_500
# BB#499:                               #   in Loop: Header=BB2_493 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_501
.LBB2_500:                              #   in Loop: Header=BB2_493 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_502
	.align	16, 0x90
.LBB2_501:                              #   in Loop: Header=BB2_493 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_502
	.align	16, 0x90
.LBB2_512:                              #   in Loop: Header=BB2_503 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_503:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_513
# BB#504:                               #   in Loop: Header=BB2_503 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_506
# BB#505:                               #   in Loop: Header=BB2_503 Depth=1
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
.LBB2_506:                              #   in Loop: Header=BB2_503 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_508
# BB#507:                               #   in Loop: Header=BB2_503 Depth=1
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
.LBB2_508:                              #   in Loop: Header=BB2_503 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_510
# BB#509:                               #   in Loop: Header=BB2_503 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_511
.LBB2_510:                              #   in Loop: Header=BB2_503 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_512
	.align	16, 0x90
.LBB2_511:                              #   in Loop: Header=BB2_503 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_512
.LBB2_513:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_515
# BB#514:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_516
.LBB2_515:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_517
.LBB2_10:
	movq	-56(%rbp), %rax
	jmp	.LBB2_11
	.align	16, 0x90
.LBB2_23:                               #   in Loop: Header=BB2_11 Depth=1
	movq	-160(%rbp), %rax
.LBB2_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
                                        #     Child Loop BB2_19 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB2_24
# BB#12:                                #   in Loop: Header=BB2_11 Depth=1
	movq	-160(%rbp), %rax
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_14:                               #   in Loop: Header=BB2_13 Depth=2
	movq	-168(%rbp), %rax
.LBB2_13:                               #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_14
# BB#15:                                #   in Loop: Header=BB2_11 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB2_21
# BB#16:                                #   in Loop: Header=BB2_11 Depth=1
	cmpl	$0, -240(%rbp)
	je	.LBB2_17
# BB#18:                                #   in Loop: Header=BB2_11 Depth=1
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_19
.LBB2_17:                               #   in Loop: Header=BB2_11 Depth=1
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_19
	.align	16, 0x90
.LBB2_20:                               #   in Loop: Header=BB2_19 Depth=2
	movq	-168(%rbp), %rax
.LBB2_19:                               #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_20
.LBB2_21:                               #   in Loop: Header=BB2_11 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB2_23
# BB#22:                                #   in Loop: Header=BB2_11 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	jge	.LBB2_23
.LBB2_24:
	movq	-160(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB2_26
# BB#25:
	movq	-168(%rbp), %rbx
	addq	$32, %rbx
	movq	-56(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, %r9
	movl	$19, %edi
	movl	$1, %esi
	movl	$.L.str.7, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB2_26:
	cmpq	$0, -88(%rbp)
	je	.LBB2_28
# BB#27:
	movq	-88(%rbp), %rdi
	callq	DisposeObject
	movq	$0, -88(%rbp)
.LBB2_28:
	cmpq	$0, -136(%rbp)
	je	.LBB2_30
# BB#29:
	movq	-136(%rbp), %rdi
	callq	DisposeObject
	movq	$0, -136(%rbp)
.LBB2_30:
	movq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	KillGalley
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -44(%rbp)
	jmp	.LBB2_665
.LBB2_32:
	movq	-80(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_33
	.align	16, 0x90
.LBB2_42:                               #   in Loop: Header=BB2_33 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_33:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_43
# BB#34:                                #   in Loop: Header=BB2_33 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_36
# BB#35:                                #   in Loop: Header=BB2_33 Depth=1
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
.LBB2_36:                               #   in Loop: Header=BB2_33 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_38
# BB#37:                                #   in Loop: Header=BB2_33 Depth=1
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
.LBB2_38:                               #   in Loop: Header=BB2_33 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_40
# BB#39:                                #   in Loop: Header=BB2_33 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_41
.LBB2_40:                               #   in Loop: Header=BB2_33 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_42
	.align	16, 0x90
.LBB2_41:                               #   in Loop: Header=BB2_33 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_42
	.align	16, 0x90
.LBB2_52:                               #   in Loop: Header=BB2_43 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_43:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_53
# BB#44:                                #   in Loop: Header=BB2_43 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_46
# BB#45:                                #   in Loop: Header=BB2_43 Depth=1
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
.LBB2_46:                               #   in Loop: Header=BB2_43 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_48
# BB#47:                                #   in Loop: Header=BB2_43 Depth=1
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
.LBB2_48:                               #   in Loop: Header=BB2_43 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_50
# BB#49:                                #   in Loop: Header=BB2_43 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_51
.LBB2_50:                               #   in Loop: Header=BB2_43 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_52
	.align	16, 0x90
.LBB2_51:                               #   in Loop: Header=BB2_43 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_52
.LBB2_53:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_55
# BB#54:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_56
.LBB2_55:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_57
.LBB2_516:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_517:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$4, -44(%rbp)
	jmp	.LBB2_665
.LBB2_521:
	movq	-224(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB2_522:
	movq	-168(%rbp), %rax
	orw	$32, 42(%rax)
	xorl	%edi, %edi
	callq	LeaveErrorBlock
	cmpq	$0, -136(%rbp)
	je	.LBB2_524
# BB#523:
	movq	-136(%rbp), %rdi
	callq	DisposeObject
	movq	$0, -136(%rbp)
.LBB2_524:
	movq	-128(%rbp), %rdi
	callq	DisposeObject
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_526
# BB#525:
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
.LBB2_526:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_529
# BB#527:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_529
# BB#528:
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
.LBB2_529:
	cmpl	$0, -236(%rbp)
	je	.LBB2_533
# BB#530:
	cmpq	$0, -88(%rbp)
	je	.LBB2_532
# BB#531:
	movq	-88(%rbp), %rdi
	callq	DisposeObject
	movq	$0, -88(%rbp)
.LBB2_532:
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB2_534
.LBB2_74:
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$2, -44(%rbp)
	jmp	.LBB2_665
.LBB2_533:
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_534:
	movq	-168(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$3, -44(%rbp)
	jmp	.LBB2_665
.LBB2_56:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_57:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_59
# BB#58:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_62
.LBB2_59:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_60
# BB#61:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_62
.LBB2_60:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_62:
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
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_65
# BB#63:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_65
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
.LBB2_65:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_68
# BB#66:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_68
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
.LBB2_68:
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -44(%rbp)
.LBB2_665:
	movl	-44(%rbp), %eax
	addq	$840, %rsp              # imm = 0x348
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_450:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_451
.LBB2_452:                              #   in Loop: Header=BB2_451 Depth=1
	movq	-224(%rbp), %rax
.LBB2_451:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_452
# BB#453:
	movq	-112(%rbp), %rdi
	movslq	-240(%rbp), %rcx
	movq	-224(%rbp), %rax
	movl	48(%rax,%rcx,4), %esi
	movl	56(%rax,%rcx,4), %edx
	callq	AdjustSize
	movq	-112(%rbp), %rdi
	movslq	-240(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-224(%rbp), %rdx
.LBB2_433:
	movl	48(%rdx,%rcx,4), %esi
	movl	56(%rdx,%rcx,4), %edx
	movl	$1, %ecx
	subl	%eax, %ecx
	callq	AdjustSize
.LBB2_434:
	movl	$1, %edi
	callq	LeaveErrorBlock
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_436
# BB#435:
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
.LBB2_436:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_439
# BB#437:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_439
# BB#438:
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
.LBB2_439:
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$120, %eax
	je	.LBB2_441
# BB#440:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.27, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_441:
	movq	-80(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_442
.LBB2_536:                              #   in Loop: Header=BB2_442 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_442:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_537
# BB#443:                               #   in Loop: Header=BB2_442 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_445
# BB#444:                               #   in Loop: Header=BB2_442 Depth=1
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
.LBB2_445:                              #   in Loop: Header=BB2_442 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_447
# BB#446:                               #   in Loop: Header=BB2_442 Depth=1
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
.LBB2_447:                              #   in Loop: Header=BB2_442 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_449
# BB#448:                               #   in Loop: Header=BB2_442 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_535
.LBB2_449:                              #   in Loop: Header=BB2_442 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_536
.LBB2_535:                              #   in Loop: Header=BB2_442 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_536
.LBB2_546:                              #   in Loop: Header=BB2_537 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_537:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_547
# BB#538:                               #   in Loop: Header=BB2_537 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_540
# BB#539:                               #   in Loop: Header=BB2_537 Depth=1
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
.LBB2_540:                              #   in Loop: Header=BB2_537 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_542
# BB#541:                               #   in Loop: Header=BB2_537 Depth=1
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
.LBB2_542:                              #   in Loop: Header=BB2_537 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_544
# BB#543:                               #   in Loop: Header=BB2_537 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_545
.LBB2_544:                              #   in Loop: Header=BB2_537 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_546
.LBB2_545:                              #   in Loop: Header=BB2_537 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_546
.LBB2_547:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_549
# BB#548:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_550
.LBB2_549:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_551
.LBB2_550:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_551:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	cmpl	$1, -240(%rbp)
	jne	.LBB2_554
# BB#552:
	movq	-96(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$4, %eax
	jae	.LBB2_553
.LBB2_554:
	cmpl	$0, -240(%rbp)
	jne	.LBB2_562
# BB#555:
	movq	-96(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$3, %eax
	jb	.LBB2_562
# BB#556:
	movq	-96(%rbp), %rdi
	movq	-168(%rbp), %rdx
	movl	$17, %esi
	movq	%rdx, %rcx
	callq	Interpose
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_557
.LBB2_558:                              #   in Loop: Header=BB2_557 Depth=1
	movq	-264(%rbp), %rax
.LBB2_557:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_558
# BB#559:
	movq	-264(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB2_561
# BB#560:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_561:
	movq	-96(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-264(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-96(%rbp), %rax
	movzbl	65(%rax), %eax
	andl	$1, %eax
	movq	-264(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-96(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-264(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-96(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-264(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-96(%rbp), %rax
	movzwl	64(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-264(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-96(%rbp), %rax
	movw	66(%rax), %ax
	movq	-264(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-96(%rbp), %rax
	movb	68(%rax), %al
	andb	$3, %al
	movq	-264(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-96(%rbp), %rax
	movb	68(%rax), %al
	movq	-264(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-96(%rbp), %rax
	movb	68(%rax), %al
	movq	-264(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-96(%rbp), %rax
	movb	64(%rax), %al
	movq	-264(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-96(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-264(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-96(%rbp), %rax
	movzbl	69(%rax), %eax
	andl	$1, %eax
	movq	-264(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-96(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-264(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-96(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-264(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-96(%rbp), %rax
	movzwl	68(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-264(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-96(%rbp), %rax
	movw	70(%rax), %ax
	movq	-264(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-96(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	76(%rax), %ecx
	movq	-264(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-96(%rbp), %rax
	movq	-264(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	76(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-96(%rbp), %rax
	movq	-264(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	76(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-96(%rbp), %rax
	movq	-264(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	76(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-96(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	76(%rax), %ecx
	movq	-264(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-96(%rbp), %rax
	movq	-264(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	76(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-96(%rbp), %rax
	movb	64(%rax), %al
	andb	$1, %al
	movq	-264(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-96(%rbp), %rax
	movb	64(%rax), %al
	movq	-264(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-96(%rbp), %rax
	movb	64(%rax), %al
	movq	-264(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-96(%rbp), %rax
	movb	64(%rax), %al
	movq	-264(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-96(%rbp), %rax
	movw	72(%rax), %ax
	movq	-264(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-96(%rbp), %rax
	movw	74(%rax), %ax
	movq	-264(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-264(%rbp), %rax
	movb	64(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movzwl	42(%rax), %edx
	shll	$11, %ecx
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%ecx, %edx
	movw	%dx, 42(%rax)
	jmp	.LBB2_562
.LBB2_553:
	movq	-96(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movl	$19, %esi
	callq	Interpose
.LBB2_562:
	movq	-56(%rbp), %rdi
	cmpq	%rdi, -160(%rbp)
	je	.LBB2_563
# BB#564:
	movq	-160(%rbp), %rax
	movq	8(%rax), %rsi
	jmp	.LBB2_565
.LBB2_563:
	movq	-56(%rbp), %rsi
.LBB2_565:
	movq	-104(%rbp), %rdx
	movl	$1, %ecx
	callq	Promote
	movq	-112(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$4, %eax
	jb	.LBB2_571
# BB#566:
	movq	-112(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$3, %eax
	jb	.LBB2_571
# BB#567:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_568
.LBB2_569:                              #   in Loop: Header=BB2_568 Depth=1
	movq	-224(%rbp), %rax
.LBB2_568:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_569
# BB#570:
	movq	-112(%rbp), %rdi
	movq	-224(%rbp), %rdx
	movl	$19, %esi
	movq	%rdx, %rcx
	callq	Interpose
.LBB2_571:
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movl	$1, %ecx
	movq	%rdi, %rsi
	callq	Promote
	movq	-128(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_572
.LBB2_581:                              #   in Loop: Header=BB2_572 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_572:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_582
# BB#573:                               #   in Loop: Header=BB2_572 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_575
# BB#574:                               #   in Loop: Header=BB2_572 Depth=1
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
.LBB2_575:                              #   in Loop: Header=BB2_572 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_577
# BB#576:                               #   in Loop: Header=BB2_572 Depth=1
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
.LBB2_577:                              #   in Loop: Header=BB2_572 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_579
# BB#578:                               #   in Loop: Header=BB2_572 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_580
.LBB2_579:                              #   in Loop: Header=BB2_572 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_581
.LBB2_580:                              #   in Loop: Header=BB2_572 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_581
.LBB2_591:                              #   in Loop: Header=BB2_582 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_582:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_592
# BB#583:                               #   in Loop: Header=BB2_582 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_585
# BB#584:                               #   in Loop: Header=BB2_582 Depth=1
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
.LBB2_585:                              #   in Loop: Header=BB2_582 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_587
# BB#586:                               #   in Loop: Header=BB2_582 Depth=1
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
.LBB2_587:                              #   in Loop: Header=BB2_582 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_589
# BB#588:                               #   in Loop: Header=BB2_582 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_590
.LBB2_589:                              #   in Loop: Header=BB2_582 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_591
.LBB2_590:                              #   in Loop: Header=BB2_582 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_591
.LBB2_592:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_594
# BB#593:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_595
.LBB2_594:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_596
.LBB2_595:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_596:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-120(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_598
# BB#597:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_598:
	movq	-120(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$5, %eax
	jae	.LBB2_600
# BB#599:
	movq	-104(%rbp), %rax
	orw	$32, 42(%rax)
.LBB2_600:
	movq	-120(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_601
.LBB2_610:                              #   in Loop: Header=BB2_601 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_601:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_611
# BB#602:                               #   in Loop: Header=BB2_601 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_604
# BB#603:                               #   in Loop: Header=BB2_601 Depth=1
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
.LBB2_604:                              #   in Loop: Header=BB2_601 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_606
# BB#605:                               #   in Loop: Header=BB2_601 Depth=1
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
.LBB2_606:                              #   in Loop: Header=BB2_601 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_608
# BB#607:                               #   in Loop: Header=BB2_601 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_609
.LBB2_608:                              #   in Loop: Header=BB2_601 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_610
.LBB2_609:                              #   in Loop: Header=BB2_601 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_610
.LBB2_620:                              #   in Loop: Header=BB2_611 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_611:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_621
# BB#612:                               #   in Loop: Header=BB2_611 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_614
# BB#613:                               #   in Loop: Header=BB2_611 Depth=1
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
.LBB2_614:                              #   in Loop: Header=BB2_611 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_616
# BB#615:                               #   in Loop: Header=BB2_611 Depth=1
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
.LBB2_616:                              #   in Loop: Header=BB2_611 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_618
# BB#617:                               #   in Loop: Header=BB2_611 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_619
.LBB2_618:                              #   in Loop: Header=BB2_611 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_620
.LBB2_619:                              #   in Loop: Header=BB2_611 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_620
.LBB2_621:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_623
# BB#622:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_624
.LBB2_623:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_625
.LBB2_624:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_625:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	cmpq	$0, -136(%rbp)
	je	.LBB2_626
# BB#627:
	cmpq	$0, -88(%rbp)
	je	.LBB2_663
# BB#628:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -712(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	-704(%rbp), %rax
	cmpq	-712(%rbp), %rax
	je	.LBB2_637
# BB#629:
	movq	-704(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_631
# BB#630:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_631:
	movq	-704(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-712(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_634
# BB#632:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_634
# BB#633:
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
.LBB2_634:
	movq	-704(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-720(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_637
# BB#635:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_637
# BB#636:
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
.LBB2_637:
	movq	-88(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_638
.LBB2_647:                              #   in Loop: Header=BB2_638 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_638:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_648
# BB#639:                               #   in Loop: Header=BB2_638 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_641
# BB#640:                               #   in Loop: Header=BB2_638 Depth=1
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
.LBB2_641:                              #   in Loop: Header=BB2_638 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_643
# BB#642:                               #   in Loop: Header=BB2_638 Depth=1
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
.LBB2_643:                              #   in Loop: Header=BB2_638 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_645
# BB#644:                               #   in Loop: Header=BB2_638 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_646
.LBB2_645:                              #   in Loop: Header=BB2_638 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_647
.LBB2_646:                              #   in Loop: Header=BB2_638 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_647
.LBB2_657:                              #   in Loop: Header=BB2_648 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_648:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_658
# BB#649:                               #   in Loop: Header=BB2_648 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_651
# BB#650:                               #   in Loop: Header=BB2_648 Depth=1
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
.LBB2_651:                              #   in Loop: Header=BB2_648 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_653
# BB#652:                               #   in Loop: Header=BB2_648 Depth=1
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
.LBB2_653:                              #   in Loop: Header=BB2_648 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_655
# BB#654:                               #   in Loop: Header=BB2_648 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_656
.LBB2_655:                              #   in Loop: Header=BB2_648 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_657
.LBB2_656:                              #   in Loop: Header=BB2_648 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_657
.LBB2_658:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_660
# BB#659:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_661
.LBB2_660:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_662
.LBB2_626:
	movq	-88(%rbp), %rax
	jmp	.LBB2_664
.LBB2_661:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_662:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_663:
	movq	-136(%rbp), %rax
.LBB2_664:
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$5, -44(%rbp)
	jmp	.LBB2_665
.Lfunc_end2:
	.size	AttachGalley, .Lfunc_end2-AttachGalley
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_280
	.quad	.LBB2_282
	.quad	.LBB2_454
	.quad	.LBB2_282
	.quad	.LBB2_282
	.quad	.LBB2_282
	.quad	.LBB2_282
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_282
	.quad	.LBB2_282
	.quad	.LBB2_282
	.quad	.LBB2_282
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_283
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_454
	.quad	.LBB2_213
	.quad	.LBB2_522
	.quad	.LBB2_522
	.quad	.LBB2_454
	.quad	.LBB2_213
	.quad	.LBB2_232
	.quad	.LBB2_454
	.quad	.LBB2_455
	.quad	.LBB2_455
	.quad	.LBB2_455
	.quad	.LBB2_455
	.quad	.LBB2_455
	.quad	.LBB2_455
	.quad	.LBB2_455
	.quad	.LBB2_455
	.quad	.LBB2_455
	.quad	.LBB2_455
	.quad	.LBB2_455
	.quad	.LBB2_455

	.text
	.align	16, 0x90
	.type	InterposeScale,@function
InterposeScale:                         # @InterposeScale
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movzbl	zz_lengths+34(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_5
.LBB3_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_5
.LBB3_3:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_5:
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
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-8(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-24(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-8(%rbp), %rax
	andl	36(%rax), %esi
	movq	-24(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	cmpl	$0, -16(%rbp)
	je	.LBB3_6
# BB#7:
	movq	-24(%rbp), %rax
	movl	$128, 64(%rax)
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 72(%rcx)
	jmp	.LBB3_8
.LBB3_6:
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-24(%rbp), %rax
	movl	$128, 72(%rax)
.LBB3_8:
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	imull	-12(%rbp), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$25, %edx
	addl	%ecx, %edx
	sarl	$7, %edx
	movq	-24(%rbp), %rcx
	movl	%edx, 48(%rcx,%rax,4)
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	imull	-12(%rbp), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$25, %edx
	addl	%ecx, %edx
	sarl	$7, %edx
	movq	-24(%rbp), %rcx
	movl	%edx, 56(%rcx,%rax,4)
	movslq	-16(%rbp), %rax
	movl	$1, %ecx
	movl	$1, %edx
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	48(%rax,%rdx,4), %eax
	movq	-24(%rbp), %rsi
	movl	%eax, 48(%rsi,%rdx,4)
	movslq	-16(%rbp), %rax
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	56(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-8(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB3_10
# BB#9:
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
.LBB3_10:
	movq	%rax, xx_tmp(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_13
# BB#11:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_13
# BB#12:
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
.LBB3_13:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_15
# BB#14:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_18
.LBB3_15:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_16
# BB#17:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_18
.LBB3_16:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_18:
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
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_21
# BB#19:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_21
# BB#20:
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
.LBB3_21:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_24
# BB#22:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_24
# BB#23:
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
.LBB3_24:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	InterposeScale, .Lfunc_end3-InterposeScale
	.cfi_endproc

	.align	16, 0x90
	.type	InterposeWideOrHigh,@function
InterposeWideOrHigh:                    # @InterposeWideOrHigh
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$26, %eax
	testl	%esi, %esi
	je	.LBB4_2
# BB#1:                                 # %select.mid
	movl	$27, %eax
.LBB4_2:                                # %select.end
	cltq
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_7
.LBB4_4:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_5
# BB#6:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_7
.LBB4_5:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_7:
	movl	$26, %eax
	cmpl	$0, -12(%rbp)
	je	.LBB4_9
# BB#8:                                 # %select.mid2
	movl	$27, %eax
.LBB4_9:                                # %select.end1
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
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-8(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-24(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-8(%rbp), %rax
	andl	36(%rax), %esi
	movq	-24(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 48(%rdx,%rax,4)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 56(%rdx,%rax,4)
	movslq	-12(%rbp), %rax
	movl	$1, %ecx
	movl	$1, %edx
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	48(%rax,%rdx,4), %eax
	movq	-24(%rbp), %rsi
	movl	%eax, 48(%rsi,%rdx,4)
	movslq	-12(%rbp), %rax
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	56(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-24(%rbp), %rax
	movl	$8388607, 64(%rax)      # imm = 0x7FFFFF
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	movl	%edx, 68(%rcx)
	movq	-24(%rbp), %rax
	movl	$8388607, 72(%rax)      # imm = 0x7FFFFF
	movq	-8(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB4_11
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
.LBB4_11:
	movq	%rax, xx_tmp(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_14
# BB#12:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_14
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
.LBB4_14:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_16
# BB#15:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_19
.LBB4_16:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_17
# BB#18:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_19
.LBB4_17:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_19:
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
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_22
# BB#20:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_22
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
.LBB4_22:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_25
# BB#23:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_25
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
.LBB4_25:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	InterposeWideOrHigh, .Lfunc_end4-InterposeWideOrHigh
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DetachGalley: precondition!"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DetachGalley: parent!"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"word is too long"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"SearchGalley: start!"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"AttachGalley: no index!"
	.size	.L.str.5, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"AttachGalley: not UNATTACHED!"
	.size	.L.str.6, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"galley %s deleted from here (no target)"
	.size	.L.str.7, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"AttachGalley: target_index!"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"AttachGalley: target!"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"receptive symbol %s has unconstrained width"
	.size	.L.str.10, 44

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"AttachGalley: dest unconstrained!"
	.size	.L.str.11, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.zero	1
	.size	.L.str.12, 1

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"too little horizontal space for galley %s at %s"
	.size	.L.str.13, 48

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Attach: PRECEDES!"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%.1fc"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s object too high for %s space; %s inserted"
	.size	.L.str.16, 45

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"@Scale"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s object too wide for %s space; %s inserted"
	.size	.L.str.18, 45

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s object too high for %s space; will try elsewhere"
	.size	.L.str.19, 52

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s object too wide for %s space; will try elsewhere"
	.size	.L.str.20, 52

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"AttachGalley: is_index(z)!"
	.size	.L.str.21, 27

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"AttachGalley: z size!"
	.size	.L.str.22, 22

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"AttachGalley: z size (perpendicular)!"
	.size	.L.str.23, 38

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"assert failed in %s %s"
	.size	.L.str.24, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"AttachGalley:"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.26, 27

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"AttachGalley: type(hd_index)!"
	.size	.L.str.27, 30

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"AttachGalley: type(junk) != ACAT!"
	.size	.L.str.28, 34

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"AttachGalley: target_ind"
	.size	.L.str.29, 25


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
