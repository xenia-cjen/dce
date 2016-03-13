	.text
	.file	"z12.opt"
	.globl	SpannerAvailableSpace
	.align	16, 0x90
	.type	SpannerAvailableSpace,@function
SpannerAvailableSpace:                  # @SpannerAvailableSpace
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
	subq	$96, %rsp
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	je	.LBB0_3
# BB#1:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$14, %eax
	je	.LBB0_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_3:
	cmpl	$0, -28(%rbp)
	je	.LBB0_4
# BB#5:
	movl	$15, -100(%rbp)
	movl	$19, -104(%rbp)
	jmp	.LBB0_6
.LBB0_4:
	movl	$16, -100(%rbp)
	movl	$18, -104(%rbp)
.LBB0_6:
	movq	$0, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	-80(%rbp), %r14
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_14 Depth 2
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB0_27
# BB#8:                                 #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB0_9
	.align	16, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-64(%rbp), %rax
.LBB0_9:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_10
# BB#11:                                #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB0_12
# BB#13:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB0_14
	.align	16, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_14
	.align	16, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-72(%rbp), %rax
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_15
# BB#16:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	-100(%rbp), %eax
	jne	.LBB0_25
# BB#17:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-72(%rbp), %rax
	movzbl	41(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_19
# BB#18:                                #   in Loop: Header=BB0_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB0_20
# BB#22:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-72(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-104(%rbp), %edx
	movq	%r14, %rcx
	callq	FindSpannerGap
	testl	%eax, %eax
	je	.LBB0_24
# BB#23:                                #   in Loop: Header=BB0_7 Depth=1
	movslq	-28(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-80(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	addl	%eax, -92(%rbp)
	jmp	.LBB0_21
	.align	16, 0x90
.LBB0_25:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-64(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$12, %edi
	movl	$14, %esi
	movl	$.L.str.4, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB0_26
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=1
	movslq	-28(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB0_21
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-64(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$12, %edi
	movl	$13, %esi
	movl	$.L.str.3, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movslq	-28(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-72(%rbp), %rdx
	addl	48(%rdx,%rax,4), %ecx
	addl	%ecx, -92(%rbp)
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	movslq	-28(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB0_26
.LBB0_27:
	movl	-92(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-96(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rax
	movl	$8388607, 64(%rax)      # imm = 0x7FFFFF
	movl	-92(%rbp), %eax
	addl	-96(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movq	-24(%rbp), %rax
	movl	$8388607, 72(%rax)      # imm = 0x7FFFFF
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	SpannerAvailableSpace, .Lfunc_end0-SpannerAvailableSpace
	.cfi_endproc

	.align	16, 0x90
	.type	FindSpannerGap,@function
FindSpannerGap:                         # @FindSpannerGap
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB1_1
# BB#2:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB1_3
.LBB1_1:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
.LBB1_3:
	movq	%rax, -32(%rbp)
	jmp	.LBB1_4
	.align	16, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_4 Depth=1
	movq	-40(%rbp), %rax
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_5
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_6 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB1_12
# BB#13:                                #   in Loop: Header=BB1_6 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_6 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
.LBB1_14:                               #   in Loop: Header=BB1_6 Depth=1
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_15 Depth=2
	movq	-40(%rbp), %rax
.LBB1_15:                               #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_16
.LBB1_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB1_9
# BB#7:                                 #   in Loop: Header=BB1_6 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_8
.LBB1_9:                                #   in Loop: Header=BB1_6 Depth=1
	movq	-40(%rbp), %rax
	cmpq	%rax, 24(%rax)
	setne	%al
	jmp	.LBB1_10
.LBB1_8:                                #   in Loop: Header=BB1_6 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_6 Depth=1
	testb	%al, %al
	jne	.LBB1_11
# BB#17:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB1_24
# BB#18:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_19
.LBB1_24:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB1_33
# BB#25:
	movq	-40(%rbp), %rax
	movzbl	43(%rax), %eax
	andl	$1, %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB1_33
# BB#26:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_27
.LBB1_33:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB1_34:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB1_19:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_21:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, (%rax)
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_21
# BB#22:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_34
# BB#23:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.46, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_34
.LBB1_27:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_28
	.align	16, 0x90
.LBB1_29:                               #   in Loop: Header=BB1_28 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, (%rax)
.LBB1_28:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_29
# BB#30:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_32
# BB#31:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.47, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_32:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	orw	$128, 44(%rax)
	jmp	.LBB1_34
.Lfunc_end1:
	.size	FindSpannerGap, .Lfunc_end1-FindSpannerGap
	.cfi_endproc

	.globl	MinSize
	.align	16, 0x90
	.type	MinSize,@function
MinSize:                                # @MinSize
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$904, %rsp              # imm = 0x388
.Ltmp11:
	.cfi_offset %rbx, -56
.Ltmp12:
	.cfi_offset %r12, -48
.Ltmp13:
	.cfi_offset %r13, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-2, %eax
	cmpl	$97, %eax
	ja	.LBB2_849
# BB#1:
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_121:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_122
	.align	16, 0x90
.LBB2_123:                              #   in Loop: Header=BB2_122 Depth=1
	movq	-72(%rbp), %rax
.LBB2_122:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_123
	jmp	.LBB2_338
.LBB2_849:
	movq	no_fpos(%rip), %rbx
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.42, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.43, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB2_850
.LBB2_130:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB2_133
# BB#131:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	je	.LBB2_133
# BB#132:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	jne	.LBB2_141
.LBB2_133:
	cmpl	$0, -52(%rbp)
	jne	.LBB2_141
# BB#134:
	movq	-48(%rbp), %rdi
	callq	BuildSpanner
	testl	%eax, %eax
	je	.LBB2_135
.LBB2_141:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB2_143
# BB#142:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	jne	.LBB2_150
.LBB2_143:
	cmpl	$1, -52(%rbp)
	jne	.LBB2_150
# BB#144:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_145
	.align	16, 0x90
.LBB2_146:                              #   in Loop: Header=BB2_145 Depth=1
	movq	-104(%rbp), %rax
.LBB2_145:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_146
# BB#147:
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	je	.LBB2_149
# BB#148:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_149:
	movq	-104(%rbp), %rdi
	leaq	-124(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	xorl	%esi, %esi
	callq	SpannerAvailableSpace
	movl	$8388607, -736(%rbp)    # imm = 0x7FFFFF
	movl	-124(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -732(%rbp)
	movl	$8388607, -728(%rbp)    # imm = 0x7FFFFF
	movq	-104(%rbp), %rdi
	leaq	-736(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -104(%rbp)
	orb	$64, 42(%rax)
.LBB2_150:
	cmpl	$0, -52(%rbp)
	je	.LBB2_151
# BB#152:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_153
.LBB2_205:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_206
	.align	16, 0x90
.LBB2_207:                              #   in Loop: Header=BB2_206 Depth=1
	movq	-72(%rbp), %rax
.LBB2_206:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_207
	jmp	.LBB2_338
.LBB2_4:
	cmpl	$1, -52(%rbp)
	jne	.LBB2_33
# BB#5:
	movq	-48(%rbp), %rax
	movzbl	41(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_10
.LBB2_2:
	cmpl	$0, -52(%rbp)
	jne	.LBB2_850
# BB#3:
	movq	-48(%rbp), %rdi
	callq	FontWordSize
	jmp	.LBB2_850
.LBB2_172:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	sete	%al
	cmpl	$0, -52(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB2_174
# BB#173:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_174:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_175
	.align	16, 0x90
.LBB2_176:                              #   in Loop: Header=BB2_175 Depth=1
	movq	-72(%rbp), %rax
.LBB2_175:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_176
	jmp	.LBB2_338
.LBB2_202:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_203
	.align	16, 0x90
.LBB2_204:                              #   in Loop: Header=BB2_203 Depth=1
	movq	-72(%rbp), %rax
.LBB2_203:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_204
	jmp	.LBB2_338
.LBB2_198:
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$0, 56(%rcx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$0, 48(%rcx,%rax,4)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_199
	.align	16, 0x90
.LBB2_200:                              #   in Loop: Header=BB2_199 Depth=1
	movq	-72(%rbp), %rax
.LBB2_199:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_200
# BB#201:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	$0, 56(%rcx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	$0, 48(%rcx,%rax,4)
	jmp	.LBB2_850
.LBB2_318:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_319
	.align	16, 0x90
.LBB2_320:                              #   in Loop: Header=BB2_319 Depth=1
	movq	-72(%rbp), %rax
.LBB2_319:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_320
# BB#321:
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-48(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$28, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_225
# BB#322:
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-52(%rbp), %edx
	callq	FindShift
	movl	%eax, -128(%rbp)
	movslq	-52(%rbp), %rdx
	movq	-72(%rbp), %rsi
	xorl	%ecx, %ecx
	addl	48(%rsi,%rdx,4), %eax
	jle	.LBB2_324
# BB#323:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	addl	-128(%rbp), %ecx
.LBB2_324:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB2_327
# BB#325:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	xorl	%eax, %eax
	addl	-128(%rbp), %ecx
	jle	.LBB2_327
# BB#326:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	addl	-128(%rbp), %eax
.LBB2_327:
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	xorl	%ecx, %ecx
	cmpl	-128(%rbp), %eax
	jle	.LBB2_329
# BB#328:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	subl	-128(%rbp), %ecx
.LBB2_329:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB2_171
# BB#330:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	xorl	%eax, %eax
	cmpl	-128(%rbp), %ecx
	jle	.LBB2_171
# BB#331:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	subl	-128(%rbp), %eax
	jmp	.LBB2_171
.LBB2_221:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_222
	.align	16, 0x90
.LBB2_223:                              #   in Loop: Header=BB2_222 Depth=1
	movq	-72(%rbp), %rax
.LBB2_222:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_223
# BB#224:
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-48(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$30, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB2_33
	jmp	.LBB2_225
.LBB2_208:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_209
	.align	16, 0x90
.LBB2_210:                              #   in Loop: Header=BB2_209 Depth=1
	movq	-72(%rbp), %rax
.LBB2_209:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_210
# BB#211:
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-48(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$32, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_213
# BB#212:
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$0, 56(%rcx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$0, 48(%rcx,%rax,4)
	jmp	.LBB2_214
.LBB2_177:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_178
	.align	16, 0x90
.LBB2_179:                              #   in Loop: Header=BB2_178 Depth=1
	movq	-72(%rbp), %rax
.LBB2_178:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_179
# BB#180:
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	movslq	-52(%rbp), %rcx
	movl	48(%rax,%rcx,4), %eax
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, 56(%rdx,%rax,4)
	cmpl	$1, -52(%rbp)
	jne	.LBB2_850
# BB#181:
	movzbl	zz_lengths+138(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_183
# BB#182:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_186
.LBB2_805:
	cmpl	$1, -52(%rbp)
	je	.LBB2_850
# BB#806:
	movl	$0, -152(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_807
	.align	16, 0x90
.LBB2_808:                              #   in Loop: Header=BB2_807 Depth=1
	movq	-72(%rbp), %rax
.LBB2_807:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_808
# BB#809:
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rax
	leaq	64(%rcx), %rdi
	addq	$32, %rcx
	movzbl	32(%rax), %esi
	leaq	-120(%rbp), %rdx
	leaq	-192(%rbp), %r8
	callq	OpenIncGraphicFile
	movq	%rax, -200(%rbp)
	testq	%rax, %rax
	jne	.LBB2_811
# BB#810:
	movl	$1, -152(%rbp)
.LBB2_811:
	movl	$1, -188(%rbp)
	leaq	-720(%rbp), %rbx
	leaq	-160(%rbp), %r14
	leaq	-164(%rbp), %r15
	leaq	-168(%rbp), %r12
	leaq	-172(%rbp), %r13
	jmp	.LBB2_812
.LBB2_817:                              #   in Loop: Header=BB2_812 Depth=1
	movl	$2, -152(%rbp)
.LBB2_812:                              # =>This Inner Loop Header: Depth=1
	cmpl	$0, -152(%rbp)
	jne	.LBB2_824
# BB#813:                               #   in Loop: Header=BB2_812 Depth=1
	movq	-200(%rbp), %rdi
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	__isoc99_fscanf
	movl	%eax, -156(%rbp)
	testl	%eax, %eax
	je	.LBB2_824
# BB#814:                               #   in Loop: Header=BB2_812 Depth=1
	cmpl	$-1, -156(%rbp)
	je	.LBB2_824
# BB#815:                               #   in Loop: Header=BB2_812 Depth=1
	cmpl	$0, -188(%rbp)
	je	.LBB2_818
# BB#816:                               #   in Loop: Header=BB2_812 Depth=1
	movl	$.L.str.31, %esi
	movq	%rbx, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB2_817
.LBB2_818:                              #   in Loop: Header=BB2_812 Depth=1
	movl	$0, -188(%rbp)
	movzbl	-720(%rbp), %eax
	cmpl	$37, %eax
	jne	.LBB2_812
# BB#819:                               #   in Loop: Header=BB2_812 Depth=1
	movl	$.L.str.32, %esi
	movq	%rbx, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB2_812
# BB#820:                               #   in Loop: Header=BB2_812 Depth=1
	movl	$.L.str.33, %esi
	movq	%rbx, %rdi
	callq	StringContains
	testl	%eax, %eax
	jne	.LBB2_812
# BB#821:                               #   in Loop: Header=BB2_812 Depth=1
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	movq	%r13, %r9
	callq	__isoc99_sscanf
	cmpl	$4, %eax
	jne	.LBB2_823
# BB#822:                               #   in Loop: Header=BB2_812 Depth=1
	movl	$4, -152(%rbp)
	cvttss2si	-160(%rbp), %eax
	movl	%eax, -136(%rbp)
	cvttss2si	-164(%rbp), %eax
	movl	%eax, -140(%rbp)
	cvttss2si	-168(%rbp), %eax
	movl	%eax, -144(%rbp)
	cvttss2si	-172(%rbp), %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB2_812
.LBB2_823:                              #   in Loop: Header=BB2_812 Depth=1
	movl	$3, -152(%rbp)
	jmp	.LBB2_812
.LBB2_151:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_153
	.align	16, 0x90
.LBB2_154:                              #   in Loop: Header=BB2_153 Depth=1
	movq	-72(%rbp), %rax
.LBB2_153:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_154
# BB#155:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB2_157
# BB#156:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	jne	.LBB2_159
.LBB2_157:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	jne	.LBB2_161
# BB#158:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$14, %eax
	je	.LBB2_161
.LBB2_159:
	cmpl	$0, -52(%rbp)
	jne	.LBB2_33
# BB#160:
	movq	-48(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$12, %edi
	movl	$15, %esi
	movl	$.L.str.10, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB2_33
.LBB2_161:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB2_163
# BB#162:
	cmpl	$1, -52(%rbp)
	je	.LBB2_33
.LBB2_163:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	jne	.LBB2_165
# BB#164:
	cmpl	$0, -52(%rbp)
	je	.LBB2_33
.LBB2_165:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	je	.LBB2_168
# BB#166:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$14, %eax
	je	.LBB2_168
# BB#167:
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	jmp	.LBB2_225
.LBB2_168:
	movq	-72(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %edx
	shrl	$12, %edx
	incl	%edx
	andl	$1023, %edx             # imm = 0x3FF
	movl	%edx, %esi
	shll	$12, %esi
	andl	$-4190209, %ecx         # imm = 0xFFFFFFFFFFC00FFF
	orl	%esi, %ecx
	movl	%ecx, 40(%rax)
	movq	-72(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jne	.LBB2_33
# BB#169:
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	leaq	-124(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	callq	SpannerAvailableSpace
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$0, 48(%rcx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	xorl	%eax, %eax
	cmpl	-124(%rbp), %edx
	js	.LBB2_171
# BB#170:
	movslq	-52(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	48(%rdx,%rcx,4), %eax
	addl	56(%rdx,%rcx,4), %eax
	subl	-124(%rbp), %eax
	jmp	.LBB2_171
.LBB2_101:
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$6, %eax
	jae	.LBB2_103
# BB#102:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_103:
	cmpl	$1, -52(%rbp)
	jne	.LBB2_120
# BB#104:
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$9, %eax
	jae	.LBB2_112
# BB#105:
	movzbl	zz_lengths+121(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_107
# BB#106:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_110
.LBB2_34:
	cmpl	$1, -52(%rbp)
	jne	.LBB2_33
# BB#35:
	movzbl	zz_lengths+135(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_37
# BB#36:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_40
.LBB2_41:
	cmpl	$1, -52(%rbp)
	jne	.LBB2_120
# BB#42:
	movzbl	zz_lengths+5(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_44
# BB#43:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_47
.LBB2_332:
	cmpl	$0, -52(%rbp)
	je	.LBB2_333
# BB#334:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_335
.LBB2_762:
	cmpl	$1, -52(%rbp)
	je	.LBB2_764
# BB#763:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.27, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_764:
	movq	-48(%rbp), %rax
	cmpb	$0, 41(%rax)
	jne	.LBB2_850
# BB#765:
	movq	-48(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB2_767
# BB#766:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_767:
	movl	$0, -128(%rbp)
	movl	$0, -124(%rbp)
	movq	-48(%rbp), %rax
	jmp	.LBB2_768
.LBB2_785:                              #   in Loop: Header=BB2_768 Depth=1
	movq	-88(%rbp), %rax
.LBB2_768:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_770 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_786
# BB#769:                               #   in Loop: Header=BB2_768 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB2_770
	.align	16, 0x90
.LBB2_771:                              #   in Loop: Header=BB2_770 Depth=2
	movq	-72(%rbp), %rax
.LBB2_770:                              #   Parent Loop BB2_768 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_771
# BB#772:                               #   in Loop: Header=BB2_768 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_774
# BB#773:                               #   in Loop: Header=BB2_768 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_774:                              #   in Loop: Header=BB2_768 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB2_785
# BB#775:                               #   in Loop: Header=BB2_768 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	je	.LBB2_785
# BB#776:                               #   in Loop: Header=BB2_768 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	je	.LBB2_785
# BB#777:                               #   in Loop: Header=BB2_768 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	je	.LBB2_785
# BB#778:                               #   in Loop: Header=BB2_768 Depth=1
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	movl	-124(%rbp), %ecx
	movslq	-52(%rbp), %rdx
	cmpl	48(%rax,%rdx,4), %ecx
	jge	.LBB2_780
# BB#779:                               #   in Loop: Header=BB2_768 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB2_781
.LBB2_780:                              #   in Loop: Header=BB2_768 Depth=1
	movl	-124(%rbp), %eax
.LBB2_781:                              #   in Loop: Header=BB2_768 Depth=1
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-72(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB2_783
# BB#782:                               #   in Loop: Header=BB2_768 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB2_784
.LBB2_783:                              #   in Loop: Header=BB2_768 Depth=1
	movl	-128(%rbp), %eax
.LBB2_784:                              #   in Loop: Header=BB2_768 Depth=1
	movl	%eax, -128(%rbp)
	jmp	.LBB2_785
.LBB2_718:
	cmpl	$0, -52(%rbp)
	je	.LBB2_720
# BB#719:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_720:
	movq	-48(%rbp), %rax
	cmpb	$0, 41(%rax)
	jne	.LBB2_850
# BB#721:
	movq	-48(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB2_723
# BB#722:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_723:
	movl	$0, -128(%rbp)
	movl	$0, -124(%rbp)
	movq	-48(%rbp), %rax
	jmp	.LBB2_724
.LBB2_741:                              #   in Loop: Header=BB2_724 Depth=1
	movq	-88(%rbp), %rax
.LBB2_724:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_726 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_742
# BB#725:                               #   in Loop: Header=BB2_724 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB2_726
	.align	16, 0x90
.LBB2_727:                              #   in Loop: Header=BB2_726 Depth=2
	movq	-72(%rbp), %rax
.LBB2_726:                              #   Parent Loop BB2_724 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_727
# BB#728:                               #   in Loop: Header=BB2_724 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_730
# BB#729:                               #   in Loop: Header=BB2_724 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_730:                              #   in Loop: Header=BB2_724 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB2_741
# BB#731:                               #   in Loop: Header=BB2_724 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	je	.LBB2_741
# BB#732:                               #   in Loop: Header=BB2_724 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	je	.LBB2_741
# BB#733:                               #   in Loop: Header=BB2_724 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	je	.LBB2_741
# BB#734:                               #   in Loop: Header=BB2_724 Depth=1
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	movl	-124(%rbp), %ecx
	movslq	-52(%rbp), %rdx
	cmpl	48(%rax,%rdx,4), %ecx
	jge	.LBB2_736
# BB#735:                               #   in Loop: Header=BB2_724 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB2_737
.LBB2_736:                              #   in Loop: Header=BB2_724 Depth=1
	movl	-124(%rbp), %eax
.LBB2_737:                              #   in Loop: Header=BB2_724 Depth=1
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-72(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB2_739
# BB#738:                               #   in Loop: Header=BB2_724 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB2_740
.LBB2_739:                              #   in Loop: Header=BB2_724 Depth=1
	movl	-128(%rbp), %eax
.LBB2_740:                              #   in Loop: Header=BB2_724 Depth=1
	movl	%eax, -128(%rbp)
	jmp	.LBB2_741
.LBB2_339:
	movq	-48(%rbp), %rax
	movb	68(%rax), %al
	shrb	$2, %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB2_509
# BB#340:
	movq	-48(%rbp), %rax
	jmp	.LBB2_341
.LBB2_366:                              #   in Loop: Header=BB2_341 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
.LBB2_341:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_343 Depth 2
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_367
# BB#342:                               #   in Loop: Header=BB2_341 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_343
	.align	16, 0x90
.LBB2_344:                              #   in Loop: Header=BB2_343 Depth=2
	movq	-72(%rbp), %rax
.LBB2_343:                              #   Parent Loop BB2_341 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_344
# BB#345:                               #   in Loop: Header=BB2_341 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB2_366
# BB#346:                               #   in Loop: Header=BB2_341 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -816(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -824(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-816(%rbp), %rax
	cmpq	-824(%rbp), %rax
	je	.LBB2_355
# BB#347:                               #   in Loop: Header=BB2_341 Depth=1
	movq	-816(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_349
# BB#348:                               #   in Loop: Header=BB2_341 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_349:                              #   in Loop: Header=BB2_341 Depth=1
	movq	-816(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-824(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_352
# BB#350:                               #   in Loop: Header=BB2_341 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_352
# BB#351:                               #   in Loop: Header=BB2_341 Depth=1
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
.LBB2_352:                              #   in Loop: Header=BB2_341 Depth=1
	movq	-816(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-832(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_355
# BB#353:                               #   in Loop: Header=BB2_341 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_355
# BB#354:                               #   in Loop: Header=BB2_341 Depth=1
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
.LBB2_355:                              #   in Loop: Header=BB2_341 Depth=1
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB2_357
# BB#356:                               #   in Loop: Header=BB2_341 Depth=1
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
.LBB2_357:                              #   in Loop: Header=BB2_341 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_359
# BB#358:                               #   in Loop: Header=BB2_341 Depth=1
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
.LBB2_359:                              #   in Loop: Header=BB2_341 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_361
# BB#360:                               #   in Loop: Header=BB2_341 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_362
.LBB2_361:                              #   in Loop: Header=BB2_341 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_363
.LBB2_362:                              #   in Loop: Header=BB2_341 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_363:                              #   in Loop: Header=BB2_341 Depth=1
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
	jne	.LBB2_365
# BB#364:                               #   in Loop: Header=BB2_341 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB2_365:                              #   in Loop: Header=BB2_341 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB2_366
.LBB2_301:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_302
	.align	16, 0x90
.LBB2_303:                              #   in Loop: Header=BB2_302 Depth=1
	movq	-72(%rbp), %rax
.LBB2_302:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_303
# BB#304:
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB2_225
# BB#305:
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rsi
	addq	$64, %rsi
	callq	BreakObject
	movq	%rax, -72(%rbp)
	movslq	-52(%rbp), %rcx
	movl	48(%rax,%rcx,4), %eax
	movq	-48(%rbp), %rcx
	cmpl	64(%rcx), %eax
	jg	.LBB2_308
# BB#306:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	movq	-48(%rbp), %rax
	cmpl	68(%rax), %edx
	jg	.LBB2_308
# BB#307:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movq	-48(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jle	.LBB2_309
.LBB2_308:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_309
.LBB2_310:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_311
	.align	16, 0x90
.LBB2_312:                              #   in Loop: Header=BB2_311 Depth=1
	movq	-72(%rbp), %rax
.LBB2_311:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_312
# BB#313:
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	cmpl	$1, -52(%rbp)
	jne	.LBB2_225
# BB#314:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movq	-48(%rbp), %rcx
	cmpl	64(%rcx), %eax
	jg	.LBB2_317
# BB#315:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	movq	-48(%rbp), %rax
	cmpl	68(%rax), %edx
	jg	.LBB2_317
# BB#316:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movq	-48(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jle	.LBB2_309
.LBB2_317:
	movq	-48(%rbp), %rbx
	movl	68(%rbx), %edi
	addq	$32, %rbx
	callq	EchoLength
	movq	%rax, %r14
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edi
	addl	56(%rcx,%rax,4), %edi
	callq	EchoLength
	movq	%rax, 8(%rsp)
	movq	%r14, (%rsp)
	movl	$12, %edi
	movl	$1, %esi
	movl	$.L.str.14, %edx
	movl	$2, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movq	-48(%rbp), %rax
	movl	$8388607, 64(%rax)      # imm = 0x7FFFFF
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-48(%rbp), %rax
	movl	$8388607, 72(%rax)      # imm = 0x7FFFFF
.LBB2_309:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, 48(%rdx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, 56(%rdx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rdx
	leaq	48(%rdx,%rax,4), %rdi
	leaq	56(%rdx,%rax,4), %rsi
	addq	$64, %rdx
	callq	EnlargeToConstraint
	jmp	.LBB2_850
.LBB2_251:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_252
	.align	16, 0x90
.LBB2_253:                              #   in Loop: Header=BB2_252 Depth=1
	movq	-72(%rbp), %rax
.LBB2_252:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_253
# BB#254:
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_255
# BB#273:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	imull	72(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%ecx, %esi
	sarl	$7, %esi
	movl	%esi, 48(%rdx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	imull	72(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%ecx, %esi
	sarl	$7, %esi
	movl	%esi, 56(%rdx,%rax,4)
	movq	-48(%rbp), %rax
	orw	$1, 42(%rax)
	jmp	.LBB2_850
.LBB2_274:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_275
	.align	16, 0x90
.LBB2_276:                              #   in Loop: Header=BB2_275 Depth=1
	movq	-72(%rbp), %rax
.LBB2_275:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_276
# BB#277:
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_278
.LBB2_225:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, 48(%rdx,%rax,4)
	jmp	.LBB2_226
.LBB2_227:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_228
	.align	16, 0x90
.LBB2_229:                              #   in Loop: Header=BB2_228 Depth=1
	movq	-72(%rbp), %rax
.LBB2_228:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_229
# BB#230:
	cmpl	$0, -52(%rbp)
	je	.LBB2_231
# BB#237:
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -744(%rbp)
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -752(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -760(%rbp)
	movq	-744(%rbp), %rax
	cmpq	-752(%rbp), %rax
	je	.LBB2_246
# BB#238:
	movq	-744(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_240
# BB#239:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_240:
	movq	-744(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-752(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_243
# BB#241:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_243
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
.LBB2_243:
	movq	-744(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-760(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_246
# BB#244:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_246
# BB#245:
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
.LBB2_246:
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_248
# BB#247:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_249
.LBB2_248:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_250
.LBB2_124:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_125
	.align	16, 0x90
.LBB2_126:                              #   in Loop: Header=BB2_125 Depth=1
	movq	-72(%rbp), %rax
.LBB2_125:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_126
# BB#127:
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_128
	.align	16, 0x90
.LBB2_129:                              #   in Loop: Header=BB2_128 Depth=1
	movq	-72(%rbp), %rax
.LBB2_128:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_129
	jmp	.LBB2_338
.LBB2_213:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, 48(%rdx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, 56(%rdx,%rax,4)
.LBB2_214:
	cmpl	$1, -52(%rbp)
	jne	.LBB2_850
# BB#215:
	movzbl	zz_lengths+137(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_217
# BB#216:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_220
.LBB2_824:
	movl	-152(%rbp), %eax
	cmpq	$4, %rax
	ja	.LBB2_848
# BB#825:
	jmpq	*.LJTI2_1(,%rax,8)
.LBB2_827:
	movq	-48(%rbp), %r8
	movzbl	32(%r8), %eax
	addq	$32, %r8
	cmpl	$94, %eax
	movl	$.L.str.36, %eax
	movl	$.L.str.37, %r9d
	cmoveq	%rax, %r9
	movq	-120(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$12, %edi
	movl	$6, %esi
	movl	$.L.str.38, %edx
	jmp	.LBB2_828
.LBB2_120:
	movq	-48(%rbp), %rax
	andw	$-9, 42(%rax)
	movq	-48(%rbp), %rax
	andw	$-17, 42(%rax)
	jmp	.LBB2_33
.LBB2_135:
	movq	-48(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB2_137
# BB#136:
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
.LBB2_137:
	movq	%rax, xx_tmp(%rip)
	movq	-104(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_140
# BB#138:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_140
# BB#139:
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
.LBB2_140:
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, 56(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.LBB2_850
.LBB2_7:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_8
# BB#9:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_10
.LBB2_183:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_184
# BB#185:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_186
.LBB2_367:
	movl	$1, -804(%rbp)
	movq	-48(%rbp), %rax
	jmp	.LBB2_368
.LBB2_376:                              #   in Loop: Header=BB2_368 Depth=1
	movzbl	%al, %eax
	movl	%eax, -804(%rbp)
	movq	-88(%rbp), %rax
.LBB2_368:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_370 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_379
# BB#369:                               #   in Loop: Header=BB2_368 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB2_370
	.align	16, 0x90
.LBB2_371:                              #   in Loop: Header=BB2_370 Depth=2
	movq	-72(%rbp), %rax
.LBB2_370:                              #   Parent Loop BB2_368 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_371
# BB#372:                               #   in Loop: Header=BB2_368 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_377
# BB#373:                               #   in Loop: Header=BB2_368 Depth=1
	cmpl	$0, -804(%rbp)
	je	.LBB2_374
# BB#375:                               #   in Loop: Header=BB2_368 Depth=1
	movq	-72(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB2_376
.LBB2_377:                              #   in Loop: Header=BB2_368 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB2_385
# BB#378:                               #   in Loop: Header=BB2_368 Depth=1
	movq	-72(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB2_389
	jmp	.LBB2_379
.LBB2_385:                              #   in Loop: Header=BB2_368 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB2_386
# BB#387:                               #   in Loop: Header=BB2_368 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB2_388
.LBB2_374:                              #   in Loop: Header=BB2_368 Depth=1
	xorl	%eax, %eax
	jmp	.LBB2_376
.LBB2_386:                              #   in Loop: Header=BB2_368 Depth=1
	xorl	%eax, %eax
.LBB2_388:                              #   in Loop: Header=BB2_368 Depth=1
	testb	%al, %al
	jne	.LBB2_379
.LBB2_389:                              #   in Loop: Header=BB2_368 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB2_368
.LBB2_217:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_218
# BB#219:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_220
.LBB2_379:
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_509
# BB#380:
	movq	$0, -800(%rbp)
	movq	$0, -784(%rbp)
	movl	$1, -804(%rbp)
	jmp	.LBB2_381
.LBB2_394:                              #   in Loop: Header=BB2_381 Depth=1
	movzbl	%al, %eax
	movl	%eax, -804(%rbp)
.LBB2_381:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_383 Depth 2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_403
# BB#382:                               #   in Loop: Header=BB2_381 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB2_383
	.align	16, 0x90
.LBB2_384:                              #   in Loop: Header=BB2_383 Depth=2
	movq	-72(%rbp), %rax
.LBB2_383:                              #   Parent Loop BB2_381 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_384
# BB#390:                               #   in Loop: Header=BB2_381 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_395
# BB#391:                               #   in Loop: Header=BB2_381 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -784(%rbp)
	cmpl	$0, -804(%rbp)
	je	.LBB2_392
# BB#393:                               #   in Loop: Header=BB2_381 Depth=1
	movq	-72(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB2_394
.LBB2_395:                              #   in Loop: Header=BB2_381 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB2_397
# BB#396:                               #   in Loop: Header=BB2_381 Depth=1
	movq	-72(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB2_381
	jmp	.LBB2_401
.LBB2_397:                              #   in Loop: Header=BB2_381 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB2_398
# BB#399:                               #   in Loop: Header=BB2_381 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB2_400
.LBB2_392:                              #   in Loop: Header=BB2_381 Depth=1
	xorl	%eax, %eax
	jmp	.LBB2_394
.LBB2_398:                              #   in Loop: Header=BB2_381 Depth=1
	xorl	%eax, %eax
.LBB2_400:                              #   in Loop: Header=BB2_381 Depth=1
	testb	%al, %al
	je	.LBB2_381
	jmp	.LBB2_401
.LBB2_333:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
.LBB2_335:
	movq	%rax, -88(%rbp)
	jmp	.LBB2_336
	.align	16, 0x90
.LBB2_337:                              #   in Loop: Header=BB2_336 Depth=1
	movq	-72(%rbp), %rax
.LBB2_336:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_337
.LBB2_338:
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	movslq	-52(%rbp), %rcx
	movl	48(%rax,%rcx,4), %eax
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
.LBB2_226:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
.LBB2_717:
	movq	-48(%rbp), %rdx
	movl	%ecx, 56(%rdx,%rax,4)
	jmp	.LBB2_850
.LBB2_786:
	movl	-124(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-128(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-48(%rbp), %rax
	movb	$1, 41(%rax)
	movq	-48(%rbp), %rax
	jmp	.LBB2_787
.LBB2_804:                              #   in Loop: Header=BB2_787 Depth=1
	movq	-88(%rbp), %rax
.LBB2_787:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_789 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_850
# BB#788:                               #   in Loop: Header=BB2_787 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB2_789
	.align	16, 0x90
.LBB2_790:                              #   in Loop: Header=BB2_789 Depth=2
	movq	-72(%rbp), %rax
.LBB2_789:                              #   Parent Loop BB2_787 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_790
# BB#791:                               #   in Loop: Header=BB2_787 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_793
# BB#792:                               #   in Loop: Header=BB2_787 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_793:                              #   in Loop: Header=BB2_787 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB2_797
# BB#794:                               #   in Loop: Header=BB2_787 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	je	.LBB2_797
# BB#795:                               #   in Loop: Header=BB2_787 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	je	.LBB2_797
# BB#796:                               #   in Loop: Header=BB2_787 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	jne	.LBB2_804
.LBB2_797:                              #   in Loop: Header=BB2_787 Depth=1
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	48(%rdx,%rcx,4), %edx
	cmpl	48(%rax,%rcx,4), %edx
	jge	.LBB2_799
# BB#798:                               #   in Loop: Header=BB2_787 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	jmp	.LBB2_800
.LBB2_799:                              #   in Loop: Header=BB2_787 Depth=1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
.LBB2_800:                              #   in Loop: Header=BB2_787 Depth=1
	movl	48(%rcx,%rax,4), %eax
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-72(%rbp), %rdx
	cmpl	56(%rdx,%rax,4), %ecx
	jge	.LBB2_802
# BB#801:                               #   in Loop: Header=BB2_787 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	jmp	.LBB2_803
.LBB2_802:                              #   in Loop: Header=BB2_787 Depth=1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
.LBB2_803:                              #   in Loop: Header=BB2_787 Depth=1
	movl	56(%rcx,%rax,4), %eax
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	jmp	.LBB2_804
.LBB2_742:
	movl	-124(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-128(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-48(%rbp), %rax
	movb	$1, 41(%rax)
	movq	-48(%rbp), %rax
	jmp	.LBB2_743
.LBB2_760:                              #   in Loop: Header=BB2_743 Depth=1
	movq	-88(%rbp), %rax
.LBB2_743:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_745 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_761
# BB#744:                               #   in Loop: Header=BB2_743 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB2_745
	.align	16, 0x90
.LBB2_746:                              #   in Loop: Header=BB2_745 Depth=2
	movq	-72(%rbp), %rax
.LBB2_745:                              #   Parent Loop BB2_743 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_746
# BB#747:                               #   in Loop: Header=BB2_743 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_749
# BB#748:                               #   in Loop: Header=BB2_743 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_749:                              #   in Loop: Header=BB2_743 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB2_753
# BB#750:                               #   in Loop: Header=BB2_743 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	je	.LBB2_753
# BB#751:                               #   in Loop: Header=BB2_743 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	je	.LBB2_753
# BB#752:                               #   in Loop: Header=BB2_743 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	jne	.LBB2_760
.LBB2_753:                              #   in Loop: Header=BB2_743 Depth=1
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
	movl	-124(%rbp), %ecx
	movslq	-52(%rbp), %rdx
	cmpl	48(%rax,%rdx,4), %ecx
	jge	.LBB2_755
# BB#754:                               #   in Loop: Header=BB2_743 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB2_756
.LBB2_755:                              #   in Loop: Header=BB2_743 Depth=1
	movl	-124(%rbp), %eax
.LBB2_756:                              #   in Loop: Header=BB2_743 Depth=1
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-72(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB2_758
# BB#757:                               #   in Loop: Header=BB2_743 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB2_759
.LBB2_758:                              #   in Loop: Header=BB2_743 Depth=1
	movl	-128(%rbp), %eax
.LBB2_759:                              #   in Loop: Header=BB2_743 Depth=1
	movl	%eax, -128(%rbp)
	jmp	.LBB2_760
.LBB2_255:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	imull	64(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%ecx, %esi
	sarl	$7, %esi
	movl	%esi, 48(%rdx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	imull	64(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%ecx, %esi
	sarl	$7, %esi
	movl	%esi, 56(%rdx,%rax,4)
	movq	-48(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB2_850
# BB#256:
	movzbl	zz_lengths+136(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_258
# BB#257:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_261
.LBB2_278:
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, 48(%rdx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, 56(%rdx,%rax,4)
	movb	$0, -762(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_279
.LBB2_280:                              #   in Loop: Header=BB2_279 Depth=1
	movq	-72(%rbp), %rax
.LBB2_279:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_280
	jmp	.LBB2_281
.LBB2_282:                              #   in Loop: Header=BB2_281 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_283
	.align	16, 0x90
.LBB2_284:                              #   in Loop: Header=BB2_283 Depth=2
	movq	-72(%rbp), %rax
.LBB2_283:                              #   Parent Loop BB2_281 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_284
.LBB2_281:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_283 Depth 2
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB2_282
# BB#285:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_287
# BB#286:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_288
.LBB2_287:
	movq	-72(%rbp), %rax
	movb	64(%rax), %al
	movb	%al, -762(%rbp)
.LBB2_288:
	movb	$0, -761(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_289
.LBB2_290:                              #   in Loop: Header=BB2_289 Depth=1
	movq	-72(%rbp), %rax
.LBB2_289:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_290
	jmp	.LBB2_291
.LBB2_292:                              #   in Loop: Header=BB2_291 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_293
	.align	16, 0x90
.LBB2_294:                              #   in Loop: Header=BB2_293 Depth=2
	movq	-72(%rbp), %rax
.LBB2_293:                              #   Parent Loop BB2_291 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_294
.LBB2_291:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_293 Depth 2
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB2_292
# BB#295:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_297
# BB#296:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_298
.LBB2_297:
	movq	-72(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movq	-72(%rbp), %rcx
	movb	63(%rax,%rcx), %al
	movb	%al, -761(%rbp)
.LBB2_298:
	cmpb	$0, -761(%rbp)
	je	.LBB2_850
# BB#299:
	cmpb	$0, -762(%rbp)
	je	.LBB2_850
# BB#300:
	movq	-72(%rbp), %rax
	movl	$4095, %edi             # imm = 0xFFF
	andl	40(%rax), %edi
	movzbl	-762(%rbp), %edx
	movzbl	-761(%rbp), %esi
	callq	KernLength
	movl	%eax, -768(%rbp)
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addl	%eax, 56(%rdx,%rcx,4)
	jmp	.LBB2_850
.LBB2_231:
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rdx
	xorl	%esi, %esi
	callq	MinSize
	movq	%rax, -72(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_233
# BB#232:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_236
.LBB2_37:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_38
# BB#39:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_40
.LBB2_44:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_45
# BB#46:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_47
.LBB2_112:
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$10, %eax
	jae	.LBB2_119
# BB#113:
	movzbl	zz_lengths+123(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_115
# BB#114:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_118
.LBB2_8:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_10:
	movq	-48(%rbp), %rax
	movb	41(%rax), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	jmp	.LBB2_11
.LBB2_184:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_186:
	movq	zz_hold(%rip), %rax
	movb	$-118, 32(%rax)
	jmp	.LBB2_187
.LBB2_218:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_220:
	movq	zz_hold(%rip), %rax
	movb	$-119, 32(%rax)
.LBB2_187:
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_189
# BB#188:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_192
.LBB2_189:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_190
# BB#191:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_192
.LBB2_190:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_192:
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
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_195
# BB#193:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_195
# BB#194:
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
.LBB2_195:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_850
# BB#196:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_850
# BB#197:
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
	jmp	.LBB2_850
.LBB2_233:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_234
# BB#235:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_236
.LBB2_107:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_108
# BB#109:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_110
.LBB2_249:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_250:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_850
.LBB2_826:
	movq	-48(%rbp), %r8
	movzbl	32(%r8), %eax
	addq	$32, %r8
	cmpl	$94, %eax
	movl	$.L.str.36, %eax
	movl	$.L.str.37, %r9d
	cmoveq	%rax, %r9
	movq	-120(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$12, %edi
	movl	$5, %esi
	movl	$.L.str.35, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-48(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.LBB2_848
.LBB2_829:
	movq	-48(%rbp), %r8
	movzbl	32(%r8), %eax
	addq	$32, %r8
	cmpl	$94, %eax
	movl	$.L.str.36, %eax
	movl	$.L.str.37, %r9d
	cmoveq	%rax, %r9
	movq	-120(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$12, %edi
	movl	$7, %esi
	movl	$.L.str.40, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-48(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.LBB2_846
.LBB2_830:
	movq	-48(%rbp), %r8
	movzbl	32(%r8), %eax
	addq	$32, %r8
	cmpl	$94, %eax
	movl	$.L.str.36, %eax
	movl	$.L.str.37, %r9d
	cmoveq	%rax, %r9
	movq	-120(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$12, %edi
	movl	$8, %esi
	movl	$.L.str.41, %edx
.LBB2_828:
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-72(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.LBB2_845
.LBB2_831:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_832
.LBB2_833:                              #   in Loop: Header=BB2_832 Depth=1
	movq	-72(%rbp), %rax
.LBB2_832:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_833
# BB#834:
	movl	-136(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	-144(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movl	-140(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movl	-148(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movl	-144(%rbp), %eax
	subl	-136(%rbp), %eax
	shll	$2, %eax
	leal	(%rax,%rax,4), %eax
	movl	%eax, -124(%rbp)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB2_836
# BB#835:
	movl	-124(%rbp), %ecx
.LBB2_836:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB2_839
# BB#837:
	xorl	%eax, %eax
	cmpl	$0, -124(%rbp)
	jle	.LBB2_839
# BB#838:
	movl	-124(%rbp), %eax
.LBB2_839:
	movl	%eax, -124(%rbp)
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 56(%rax)
	movq	-48(%rbp), %rax
	movl	%ecx, 48(%rax)
	movl	-148(%rbp), %eax
	subl	-140(%rbp), %eax
	shll	$2, %eax
	leal	(%rax,%rax,4), %eax
	movl	%eax, -124(%rbp)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB2_841
# BB#840:
	movl	-124(%rbp), %ecx
.LBB2_841:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB2_844
# BB#842:
	xorl	%eax, %eax
	cmpl	$0, -124(%rbp)
	jle	.LBB2_844
# BB#843:
	movl	-124(%rbp), %eax
.LBB2_844:
	movl	%eax, -124(%rbp)
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 60(%rax)
	movq	-48(%rbp), %rax
	movl	%ecx, 52(%rax)
.LBB2_845:
	movq	-48(%rbp), %rax
	movb	$1, 41(%rax)
.LBB2_846:
	movq	-200(%rbp), %rdi
	callq	fclose
	cmpl	$0, -192(%rbp)
	je	.LBB2_848
# BB#847:
	movl	$.L.str.39, %edi
	callq	remove
.LBB2_848:
	movq	-120(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB2_850
.LBB2_38:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_40:
	movq	zz_hold(%rip), %rax
	movb	$-121, 32(%rax)
.LBB2_11:
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_13
# BB#12:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_16
.LBB2_13:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_14
# BB#15:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_16
.LBB2_14:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_16:
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
	je	.LBB2_19
# BB#17:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_19
# BB#18:
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
.LBB2_19:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_22
# BB#20:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_22
# BB#21:
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
	jmp	.LBB2_22
.LBB2_45:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_47:
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
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-48(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-72(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-48(%rbp), %rax
	andl	36(%rax), %esi
	movq	-72(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB2_49
# BB#48:
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
.LBB2_49:
	movq	%rax, xx_tmp(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_52
# BB#50:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_52
# BB#51:
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
.LBB2_52:
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$14, %eax
	jae	.LBB2_73
# BB#53:
	movq	-48(%rbp), %rax
	movzbl	40(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_55
# BB#54:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_58
.LBB2_73:
	movzbl	zz_lengths+120(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_75
# BB#74:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_78
.LBB2_55:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_56
# BB#57:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_58
.LBB2_75:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_76
# BB#77:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_78
.LBB2_258:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_259
# BB#260:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_261
.LBB2_119:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_33
.LBB2_234:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_236:
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
	movq	-48(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rdx
	addq	$88, %rdx
	movl	$1, %esi
	callq	MinSize
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rcx
	movl	76(%rcx), %r9d
	leaq	48(%rcx), %rdi
	leaq	56(%rcx), %rsi
	leaq	52(%rcx), %rdx
	leaq	60(%rcx), %rcx
	movq	%rax, %r8
	callq	RotateSize
	jmp	.LBB2_850
.LBB2_115:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_116
# BB#117:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_118
.LBB2_108:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_110:
	movq	zz_hold(%rip), %rax
	movb	$121, 32(%rax)
	jmp	.LBB2_111
.LBB2_56:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_58:
	movq	-48(%rbp), %rax
	movb	40(%rax), %al
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
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, 88(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_59
.LBB2_60:                               #   in Loop: Header=BB2_59 Depth=1
	movq	-104(%rbp), %rax
.LBB2_59:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_60
# BB#61:
	movq	-48(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-104(%rbp), %rsi
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %edx
	callq	CrossMake
	movq	-80(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_63
# BB#62:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_66
.LBB2_63:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_64
# BB#65:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_66
.LBB2_64:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_66:
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
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_69
# BB#67:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_69
# BB#68:
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
.LBB2_69:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_72
# BB#70:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_72
# BB#71:
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
.LBB2_72:
	movq	-48(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB2_100
.LBB2_76:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_78:
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
	movq	%rax, -80(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_80
# BB#79:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_83
.LBB2_80:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_81
# BB#82:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_83
.LBB2_81:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_83:
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
	je	.LBB2_86
# BB#84:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_86
# BB#85:
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
.LBB2_86:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_89
# BB#87:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_89
# BB#88:
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
.LBB2_89:
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_91
# BB#90:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_94
.LBB2_91:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_92
# BB#93:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_94
.LBB2_92:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_94:
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
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_97
# BB#95:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_97
# BB#96:
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
.LBB2_97:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_100
# BB#98:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_100
# BB#99:
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
.LBB2_100:
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, 56(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.LBB2_33
.LBB2_259:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_261:
	movq	zz_hold(%rip), %rax
	movb	$-120, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_263
# BB#262:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_266
.LBB2_263:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_264
# BB#265:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_266
.LBB2_264:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_266:
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
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_269
# BB#267:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_269
# BB#268:
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
.LBB2_269:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_272
# BB#270:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_272
# BB#271:
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
.LBB2_272:
	movq	-48(%rbp), %rax
	andw	$-2, 42(%rax)
	jmp	.LBB2_850
.LBB2_116:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_118:
	movq	zz_hold(%rip), %rax
	movb	$123, 32(%rax)
.LBB2_111:
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, 80(%rax)
.LBB2_22:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_24
# BB#23:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_27
.LBB2_24:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_25
# BB#26:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_27
.LBB2_25:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_27:
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
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_30
# BB#28:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_30
# BB#29:
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
.LBB2_30:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_33
# BB#31:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_33
# BB#32:
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
.LBB2_33:
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$0, 56(%rcx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$0, 48(%rcx,%rax,4)
	jmp	.LBB2_850
.LBB2_171:
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	jmp	.LBB2_850
.LBB2_401:
	cmpq	$0, -784(%rbp)
	jne	.LBB2_403
# BB#402:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_403:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_481 Depth 2
                                        #       Child Loop BB2_483 Depth 3
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_496
# BB#404:                               #   in Loop: Header=BB2_403 Depth=1
	movq	-784(%rbp), %rax
	movzwl	44(%rax), %eax
	testb	$-32, %ah
	je	.LBB2_480
# BB#405:                               #   in Loop: Header=BB2_403 Depth=1
	movq	-784(%rbp), %rax
	movzbl	42(%rax), %eax
	testl	%eax, %eax
	jg	.LBB2_408
# BB#406:                               #   in Loop: Header=BB2_403 Depth=1
	movq	-784(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$2, %eax
	jne	.LBB2_480
# BB#407:                               #   in Loop: Header=BB2_403 Depth=1
	movq	-784(%rbp), %rax
	movswl	46(%rax), %eax
	cmpl	$4097, %eax             # imm = 0x1001
	jl	.LBB2_480
.LBB2_408:                              #   in Loop: Header=BB2_403 Depth=1
	cmpq	$0, -800(%rbp)
	jne	.LBB2_419
# BB#409:                               #   in Loop: Header=BB2_403 Depth=1
	movzbl	zz_lengths+19(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_411
# BB#410:                               #   in Loop: Header=BB2_403 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_414
.LBB2_411:                              #   in Loop: Header=BB2_403 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_412
# BB#413:                               #   in Loop: Header=BB2_403 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_414
.LBB2_412:                              #   in Loop: Header=BB2_403 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_414:                              #   in Loop: Header=BB2_403 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$19, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -800(%rbp)
	andb	$-9, 43(%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB2_416
# BB#415:                               #   in Loop: Header=BB2_403 Depth=1
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
.LBB2_416:                              #   in Loop: Header=BB2_403 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	-800(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_419
# BB#417:                               #   in Loop: Header=BB2_403 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_419
# BB#418:                               #   in Loop: Header=BB2_403 Depth=1
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
.LBB2_419:                              #   in Loop: Header=BB2_403 Depth=1
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_421
# BB#420:                               #   in Loop: Header=BB2_403 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_424
.LBB2_421:                              #   in Loop: Header=BB2_403 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_422
# BB#423:                               #   in Loop: Header=BB2_403 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_424
.LBB2_422:                              #   in Loop: Header=BB2_403 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_424:                              #   in Loop: Header=BB2_403 Depth=1
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
	movq	%rax, -776(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -840(%rbp)
	movq	-784(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -848(%rbp)
	movq	-776(%rbp), %rax
	movq	%rax, -856(%rbp)
	movq	-840(%rbp), %rax
	cmpq	-848(%rbp), %rax
	je	.LBB2_433
# BB#425:                               #   in Loop: Header=BB2_403 Depth=1
	movq	-840(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_427
# BB#426:                               #   in Loop: Header=BB2_403 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_427:                              #   in Loop: Header=BB2_403 Depth=1
	movq	-840(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-848(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_430
# BB#428:                               #   in Loop: Header=BB2_403 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_430
# BB#429:                               #   in Loop: Header=BB2_403 Depth=1
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
.LBB2_430:                              #   in Loop: Header=BB2_403 Depth=1
	movq	-840(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-856(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_433
# BB#431:                               #   in Loop: Header=BB2_403 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_433
# BB#432:                               #   in Loop: Header=BB2_403 Depth=1
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
.LBB2_433:                              #   in Loop: Header=BB2_403 Depth=1
	movq	-48(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-776(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movzbl	65(%rax), %eax
	andl	$1, %eax
	movq	-776(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-776(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-776(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movzwl	64(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-776(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movw	66(%rax), %ax
	movq	-776(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-48(%rbp), %rax
	movb	68(%rax), %al
	andb	$3, %al
	movq	-776(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-48(%rbp), %rax
	movb	68(%rax), %al
	movq	-776(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-48(%rbp), %rax
	movb	68(%rax), %al
	movq	-776(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-48(%rbp), %rax
	movb	64(%rax), %al
	movq	-776(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-776(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movzbl	69(%rax), %eax
	andl	$1, %eax
	movq	-776(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-776(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-776(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movzwl	68(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-776(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movw	70(%rax), %ax
	movq	-776(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-48(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	76(%rax), %ecx
	movq	-776(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-48(%rbp), %rax
	movq	-776(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	76(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-48(%rbp), %rax
	movq	-776(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	76(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-48(%rbp), %rax
	movq	-776(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	76(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-48(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	76(%rax), %ecx
	movq	-776(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-48(%rbp), %rax
	movq	-776(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	76(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-48(%rbp), %rax
	movb	64(%rax), %al
	andb	$1, %al
	movq	-776(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movb	64(%rax), %al
	movq	-776(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movb	64(%rax), %al
	movq	-776(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movb	64(%rax), %al
	movq	-776(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movw	72(%rax), %ax
	movq	-776(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-48(%rbp), %rax
	movw	74(%rax), %ax
	movq	-776(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-48(%rbp), %rax
	movb	64(%rax), %al
	shrb	$2, %al
	andb	$1, %al
	movq	-776(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$11, %eax
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_435
# BB#434:                               #   in Loop: Header=BB2_403 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_438
.LBB2_435:                              #   in Loop: Header=BB2_403 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_436
# BB#437:                               #   in Loop: Header=BB2_403 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_438
.LBB2_436:                              #   in Loop: Header=BB2_403 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_438:                              #   in Loop: Header=BB2_403 Depth=1
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
	movq	-800(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_441
# BB#439:                               #   in Loop: Header=BB2_403 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_441
# BB#440:                               #   in Loop: Header=BB2_403 Depth=1
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
.LBB2_441:                              #   in Loop: Header=BB2_403 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-776(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_444
# BB#442:                               #   in Loop: Header=BB2_403 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_444
# BB#443:                               #   in Loop: Header=BB2_403 Depth=1
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
.LBB2_444:                              #   in Loop: Header=BB2_403 Depth=1
	movq	-784(%rbp), %rax
	movzbl	41(%rax), %eax
	testl	%eax, %eax
	jle	.LBB2_472
# BB#445:                               #   in Loop: Header=BB2_403 Depth=1
	movq	-784(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -792(%rbp)
	movq	-48(%rbp), %rcx
	movl	$4095, %edx             # imm = 0xFFF
	andl	76(%rcx), %edx
	movl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %ecx
	orl	%edx, %ecx
	movl	%ecx, 40(%rax)
	movq	-48(%rbp), %rax
	movq	-792(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	76(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-48(%rbp), %rax
	movq	-792(%rbp), %rcx
	movl	$4194304, %edx          # imm = 0x400000
	andl	76(%rax), %edx
	movl	$-4194305, %eax         # imm = 0xFFFFFFFFFFBFFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-48(%rbp), %rax
	movl	76(%rax), %eax
	shrl	%eax
	movq	-792(%rbp), %rcx
	andl	$528482304, %eax        # imm = 0x1F800000
	movl	$-528482305, %edx       # imm = 0xFFFFFFFFE07FFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-48(%rbp), %rax
	movb	68(%rax), %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-792(%rbp), %rcx
	shll	$31, %eax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-792(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movq	-792(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-792(%rbp), %rax
	movl	$0, 48(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_447
# BB#446:                               #   in Loop: Header=BB2_403 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_450
.LBB2_447:                              #   in Loop: Header=BB2_403 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_448
# BB#449:                               #   in Loop: Header=BB2_403 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_450
.LBB2_448:                              #   in Loop: Header=BB2_403 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_450:                              #   in Loop: Header=BB2_403 Depth=1
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
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_453
# BB#451:                               #   in Loop: Header=BB2_403 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_453
# BB#452:                               #   in Loop: Header=BB2_403 Depth=1
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
.LBB2_453:                              #   in Loop: Header=BB2_403 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-792(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_456
# BB#454:                               #   in Loop: Header=BB2_403 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_456
# BB#455:                               #   in Loop: Header=BB2_403 Depth=1
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
.LBB2_456:                              #   in Loop: Header=BB2_403 Depth=1
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_458
# BB#457:                               #   in Loop: Header=BB2_403 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_461
.LBB2_458:                              #   in Loop: Header=BB2_403 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_459
# BB#460:                               #   in Loop: Header=BB2_403 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_461
.LBB2_459:                              #   in Loop: Header=BB2_403 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_461:                              #   in Loop: Header=BB2_403 Depth=1
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
	movq	%rax, -792(%rbp)
	movq	-784(%rbp), %rcx
	movb	41(%rcx), %cl
	movb	%cl, 41(%rax)
	movq	-792(%rbp), %rax
	movb	$0, 42(%rax)
	movq	-792(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movq	-48(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-792(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-48(%rbp), %rax
	movzbl	69(%rax), %eax
	andl	$1, %eax
	movq	-792(%rbp), %rcx
	movzwl	44(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-48(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-792(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-48(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-792(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-48(%rbp), %rax
	movzwl	68(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-792(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-48(%rbp), %rax
	movw	70(%rax), %ax
	movq	-792(%rbp), %rcx
	movw	%ax, 46(%rcx)
	movq	-792(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzwl	46(%rax), %edx
	imull	%ecx, %edx
	movw	%dx, 46(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_463
# BB#462:                               #   in Loop: Header=BB2_403 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_466
.LBB2_463:                              #   in Loop: Header=BB2_403 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_464
# BB#465:                               #   in Loop: Header=BB2_403 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_466
.LBB2_464:                              #   in Loop: Header=BB2_403 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_466:                              #   in Loop: Header=BB2_403 Depth=1
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
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_469
# BB#467:                               #   in Loop: Header=BB2_403 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_469
# BB#468:                               #   in Loop: Header=BB2_403 Depth=1
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
.LBB2_469:                              #   in Loop: Header=BB2_403 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-792(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_472
# BB#470:                               #   in Loop: Header=BB2_403 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_472
# BB#471:                               #   in Loop: Header=BB2_403 Depth=1
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
.LBB2_472:                              #   in Loop: Header=BB2_403 Depth=1
	movq	-784(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_474
# BB#473:                               #   in Loop: Header=BB2_403 Depth=1
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
.LBB2_474:                              #   in Loop: Header=BB2_403 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-800(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_477
# BB#475:                               #   in Loop: Header=BB2_403 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_477
# BB#476:                               #   in Loop: Header=BB2_403 Depth=1
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
.LBB2_477:                              #   in Loop: Header=BB2_403 Depth=1
	movq	-48(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-784(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-48(%rbp), %rax
	movzbl	65(%rax), %eax
	andl	$1, %eax
	movq	-784(%rbp), %rcx
	movzwl	44(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-48(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-784(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-48(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-784(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-48(%rbp), %rax
	movzwl	64(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-784(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-48(%rbp), %rax
	movw	66(%rax), %ax
	movq	-784(%rbp), %rcx
	movw	%ax, 46(%rcx)
	movq	-784(%rbp), %rax
	movzbl	42(%rax), %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	jl	.LBB2_479
# BB#478:                               #   in Loop: Header=BB2_403 Depth=1
	movq	-784(%rbp), %rax
	movzbl	42(%rax), %eax
.LBB2_479:                              #   in Loop: Header=BB2_403 Depth=1
	movq	-784(%rbp), %rcx
	movzwl	46(%rcx), %edx
	imull	%eax, %edx
	movw	%dx, 46(%rcx)
.LBB2_480:                              #   in Loop: Header=BB2_403 Depth=1
	movq	$0, -784(%rbp)
	movl	$1, -804(%rbp)
	jmp	.LBB2_481
	.align	16, 0x90
.LBB2_489:                              #   in Loop: Header=BB2_481 Depth=2
	movzbl	%al, %eax
	movl	%eax, -804(%rbp)
.LBB2_481:                              #   Parent Loop BB2_403 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_483 Depth 3
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_403
# BB#482:                               #   in Loop: Header=BB2_481 Depth=2
	movq	-88(%rbp), %rax
	jmp	.LBB2_483
	.align	16, 0x90
.LBB2_484:                              #   in Loop: Header=BB2_483 Depth=3
	movq	-72(%rbp), %rax
.LBB2_483:                              #   Parent Loop BB2_403 Depth=1
                                        #     Parent Loop BB2_481 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_484
# BB#485:                               #   in Loop: Header=BB2_481 Depth=2
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_490
# BB#486:                               #   in Loop: Header=BB2_481 Depth=2
	movq	-72(%rbp), %rax
	movq	%rax, -784(%rbp)
	cmpl	$0, -804(%rbp)
	je	.LBB2_487
# BB#488:                               #   in Loop: Header=BB2_481 Depth=2
	movq	-72(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB2_489
	.align	16, 0x90
.LBB2_490:                              #   in Loop: Header=BB2_481 Depth=2
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB2_492
# BB#491:                               #   in Loop: Header=BB2_481 Depth=2
	movq	-72(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB2_481
	jmp	.LBB2_401
	.align	16, 0x90
.LBB2_492:                              #   in Loop: Header=BB2_481 Depth=2
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB2_493
# BB#494:                               #   in Loop: Header=BB2_481 Depth=2
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB2_495
.LBB2_487:                              #   in Loop: Header=BB2_481 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_489
.LBB2_493:                              #   in Loop: Header=BB2_481 Depth=2
	xorl	%eax, %eax
.LBB2_495:                              #   in Loop: Header=BB2_481 Depth=2
	testb	%al, %al
	je	.LBB2_481
	jmp	.LBB2_401
.LBB2_496:
	cmpq	$0, -800(%rbp)
	je	.LBB2_509
# BB#497:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_499
# BB#498:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_502
.LBB2_499:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_500
# BB#501:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_502
.LBB2_500:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_502:
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
	movq	-800(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_505
# BB#503:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_505
# BB#504:
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
.LBB2_505:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_508
# BB#506:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_508
# BB#507:
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
.LBB2_508:
	movq	-800(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB2_509:
	cmpl	$1, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-48(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$19, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_653
# BB#510:
	movq	$0, -112(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -184(%rbp)
	movq	-48(%rbp), %rax
	andw	$-129, 42(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$-2147483648, %r14d     # imm = 0xFFFFFFFF80000000
	movl	$2147483647, %r15d      # imm = 0x7FFFFFFF
	movl	$1610612736, %ebx       # imm = 0x60000000
	movl	$-1610612737, %r12d     # imm = 0xFFFFFFFF9FFFFFFF
	movb	$1, %r13b
	jmp	.LBB2_511
	.align	16, 0x90
.LBB2_642:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB2_511:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_513 Depth 2
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_643
# BB#512:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB2_513
	.align	16, 0x90
.LBB2_514:                              #   in Loop: Header=BB2_513 Depth=2
	movq	-72(%rbp), %rax
.LBB2_513:                              #   Parent Loop BB2_511 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_514
# BB#515:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB2_523
# BB#516:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$138, %eax
	jg	.LBB2_523
# BB#517:                               #   in Loop: Header=BB2_511 Depth=1
	cmpl	$1, -52(%rbp)
	jne	.LBB2_642
# BB#518:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_520
# BB#519:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_520:                              #   in Loop: Header=BB2_511 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_642
# BB#521:                               #   in Loop: Header=BB2_511 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_642
# BB#522:                               #   in Loop: Header=BB2_511 Depth=1
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
	jmp	.LBB2_642
	.align	16, 0x90
.LBB2_523:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	movq	-48(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_543
# BB#524:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -864(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -872(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -880(%rbp)
	movq	-864(%rbp), %rax
	cmpq	-872(%rbp), %rax
	je	.LBB2_533
# BB#525:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-864(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_527
# BB#526:                               #   in Loop: Header=BB2_511 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_527:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-864(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-872(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_530
# BB#528:                               #   in Loop: Header=BB2_511 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_530
# BB#529:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_530:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-864(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-880(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_533
# BB#531:                               #   in Loop: Header=BB2_511 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_533
# BB#532:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_533:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB2_535
# BB#534:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_535:                              #   in Loop: Header=BB2_511 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_537
# BB#536:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_537:                              #   in Loop: Header=BB2_511 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_539
# BB#538:                               #   in Loop: Header=BB2_511 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_540
.LBB2_539:                              #   in Loop: Header=BB2_511 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_541
.LBB2_543:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_545
# BB#544:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB2_642
.LBB2_545:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_547
# BB#546:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_611
.LBB2_547:                              #   in Loop: Header=BB2_511 Depth=1
	cmpl	$0, -52(%rbp)
	jne	.LBB2_612
# BB#548:                               #   in Loop: Header=BB2_511 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB2_610
# BB#549:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	cmpw	$0, 46(%rax)
	jne	.LBB2_610
# BB#550:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	btl	$7, 44(%rax)
	jae	.LBB2_610
# BB#551:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB2_610
# BB#552:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_554
# BB#553:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_610
.LBB2_554:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzbl	42(%rax), %ecx
	movzbl	41(%rax), %eax
	addl	%ecx, %eax
	jne	.LBB2_610
# BB#555:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.LBB2_610
# BB#556:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$1, %eax
	jne	.LBB2_610
# BB#557:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	jne	.LBB2_610
# BB#558:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	movl	$4095, %edx             # imm = 0xFFF
	andl	%edx, %eax
	movq	-72(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	%edx, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_610
# BB#559:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movq	-72(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$12, %ecx
	andl	$1023, %ecx             # imm = 0x3FF
	cmpl	%ecx, %eax
	jne	.LBB2_610
# BB#560:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$22, %eax
	andl	$1, %eax
	movq	-72(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$22, %ecx
	andl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_610
# BB#561:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$23, %eax
	andl	$63, %eax
	movq	-72(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$23, %ecx
	andl	$63, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_610
# BB#562:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	movq	-72(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$29, %ecx
	andl	$3, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_610
# BB#563:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB2_564
.LBB2_610:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rdi
	callq	FontWordSize
	jmp	.LBB2_612
.LBB2_540:                              #   in Loop: Header=BB2_511 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_541:                              #   in Loop: Header=BB2_511 Depth=1
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
	jne	.LBB2_642
# BB#542:                               #   in Loop: Header=BB2_511 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB2_642
.LBB2_611:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
.LBB2_612:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB2_620
# BB#613:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jg	.LBB2_620
# BB#614:                               #   in Loop: Header=BB2_511 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB2_617
# BB#615:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB2_617
# BB#616:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %r8
	addq	$32, %r8
	movl	$12, %edi
	movl	$3, %esi
	movl	$.L.str.18, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-112(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
.LBB2_617:                              #   in Loop: Header=BB2_511 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB2_642
# BB#618:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	.LBB2_642
# BB#619:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %r8
	addq	$32, %r8
	movl	$12, %edi
	movl	$4, %esi
	movl	$.L.str.19, %edx
	movl	$2, %ecx
	movl	$119, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-112(%rbp), %rax
	movw	$0, 46(%rax)
	jmp	.LBB2_642
.LBB2_620:                              #   in Loop: Header=BB2_511 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB2_621
# BB#622:                               #   in Loop: Header=BB2_511 Depth=1
	movslq	-52(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-112(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, -888(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB2_624
# BB#623:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	testb	$-32, %ah
	jne	.LBB2_625
.LBB2_624:                              #   in Loop: Header=BB2_511 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_625:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.LBB2_630
# BB#626:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB2_630
# BB#627:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movswl	46(%rax), %eax
	movslq	-52(%rbp), %rcx
	movq	-72(%rbp), %rdx
	addl	48(%rdx,%rcx,4), %eax
	movl	-128(%rbp), %ecx
	addl	-888(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_629
# BB#628:                               #   in Loop: Header=BB2_511 Depth=1
	movl	-128(%rbp), %eax
	addl	-888(%rbp), %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB2_631
.LBB2_630:                              #   in Loop: Header=BB2_511 Depth=1
	movl	-888(%rbp), %eax
	addl	%eax, -128(%rbp)
.LBB2_631:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$2, %eax
	jne	.LBB2_634
# BB#632:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movswl	46(%rax), %eax
	cmpl	$4097, %eax             # imm = 0x1001
	jl	.LBB2_634
# BB#633:                               #   in Loop: Header=BB2_511 Depth=1
	movl	$1, -184(%rbp)
.LBB2_634:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	jne	.LBB2_638
# BB#635:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB2_638
# BB#636:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movswl	46(%rax), %eax
	testl	%eax, %eax
	jle	.LBB2_638
# BB#637:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %r8
	addq	$32, %r8
	movl	$12, %edi
	movl	$9, %esi
	movl	$.L.str.21, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_638:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB2_641
# BB#639:                               #   in Loop: Header=BB2_511 Depth=1
	movl	-128(%rbp), %eax
	addl	%eax, -124(%rbp)
	jmp	.LBB2_640
.LBB2_621:                              #   in Loop: Header=BB2_511 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -124(%rbp)
.LBB2_640:                              #   in Loop: Header=BB2_511 Depth=1
	movl	$0, -128(%rbp)
.LBB2_641:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB2_642
.LBB2_629:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movswl	46(%rax), %eax
	movslq	-52(%rbp), %rcx
	movq	-72(%rbp), %rdx
	addl	48(%rdx,%rcx,4), %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB2_631
.LBB2_564:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-96(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movq	%rax, -920(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	addq	-920(%rbp), %rax        # 8-byte Folded Reload
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB2_566
# BB#565:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-96(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movq	-72(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$12, %edi
	movl	$2, %esi
	movl	$.L.str.17, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_566:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$12, %ecx
	je	.LBB2_568
# BB#567:                               #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	sete	%al
.LBB2_568:                              #   in Loop: Header=BB2_511 Depth=1
	movzbl	%al, %edi
	addl	$11, %edi
	movl	%edi, -884(%rbp)
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	addq	$64, %rdx
	leaq	64(%rcx), %rsi
	addq	$32, %rcx
	callq	MakeWordTwo
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rcx
	movl	40(%rcx), %ecx
	movl	$4095, %edx             # imm = 0xFFF
	andl	%edx, %ecx
	movl	40(%rax), %edx
	movl	$-4096, %esi            # imm = 0xFFFFFFFFFFFFF000
	andl	%esi, %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$528482304, %edx        # imm = 0x1F800000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-528482305, %esi       # imm = 0xFFFFFFFFE07FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	andl	%r14d, %eax
	movq	-72(%rbp), %rcx
	movl	40(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	andl	%ebx, %eax
	movl	40(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-72(%rbp), %rdi
	callq	FontWordSize
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_570
# BB#569:                               #   in Loop: Header=BB2_511 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_573
.LBB2_570:                              #   in Loop: Header=BB2_511 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_571
# BB#572:                               #   in Loop: Header=BB2_511 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_573
.LBB2_571:                              #   in Loop: Header=BB2_511 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_573:                              #   in Loop: Header=BB2_511 Depth=1
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
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_576
# BB#574:                               #   in Loop: Header=BB2_511 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_576
# BB#575:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_576:                              #   in Loop: Header=BB2_511 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_579
# BB#577:                               #   in Loop: Header=BB2_511 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_579
# BB#578:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_579:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB2_581
# BB#580:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_581:                              #   in Loop: Header=BB2_511 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_583
# BB#582:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_583:                              #   in Loop: Header=BB2_511 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_585
# BB#584:                               #   in Loop: Header=BB2_511 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_586
.LBB2_585:                              #   in Loop: Header=BB2_511 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_587
.LBB2_586:                              #   in Loop: Header=BB2_511 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_587:                              #   in Loop: Header=BB2_511 Depth=1
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
	jne	.LBB2_589
# BB#588:                               #   in Loop: Header=BB2_511 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB2_589:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB2_591
# BB#590:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_591:                              #   in Loop: Header=BB2_511 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_593
# BB#592:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_593:                              #   in Loop: Header=BB2_511 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_595
# BB#594:                               #   in Loop: Header=BB2_511 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_596
.LBB2_595:                              #   in Loop: Header=BB2_511 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_597
.LBB2_596:                              #   in Loop: Header=BB2_511 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_597:                              #   in Loop: Header=BB2_511 Depth=1
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
	jne	.LBB2_599
# BB#598:                               #   in Loop: Header=BB2_511 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB2_599:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB2_601
# BB#600:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_601:                              #   in Loop: Header=BB2_511 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_603
# BB#602:                               #   in Loop: Header=BB2_511 Depth=1
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
.LBB2_603:                              #   in Loop: Header=BB2_511 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_605
# BB#604:                               #   in Loop: Header=BB2_511 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_606
.LBB2_605:                              #   in Loop: Header=BB2_511 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_607
.LBB2_606:                              #   in Loop: Header=BB2_511 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_607:                              #   in Loop: Header=BB2_511 Depth=1
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
	jne	.LBB2_609
# BB#608:                               #   in Loop: Header=BB2_511 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB2_609:                              #   in Loop: Header=BB2_511 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB2_642
.LBB2_653:
	movl	$0, -180(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -132(%rbp)
	movq	-48(%rbp), %rax
	jmp	.LBB2_654
	.align	16, 0x90
.LBB2_707:                              #   in Loop: Header=BB2_654 Depth=1
	movq	-88(%rbp), %rax
.LBB2_654:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_656 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_708
# BB#655:                               #   in Loop: Header=BB2_654 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB2_656
	.align	16, 0x90
.LBB2_657:                              #   in Loop: Header=BB2_656 Depth=2
	movq	-72(%rbp), %rax
.LBB2_656:                              #   Parent Loop BB2_654 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_657
# BB#658:                               #   in Loop: Header=BB2_654 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB2_666
# BB#659:                               #   in Loop: Header=BB2_654 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$138, %eax
	jg	.LBB2_666
# BB#660:                               #   in Loop: Header=BB2_654 Depth=1
	cmpl	$1, -52(%rbp)
	jne	.LBB2_707
# BB#661:                               #   in Loop: Header=BB2_654 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_663
# BB#662:                               #   in Loop: Header=BB2_654 Depth=1
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
.LBB2_663:                              #   in Loop: Header=BB2_654 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_707
# BB#664:                               #   in Loop: Header=BB2_654 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_707
# BB#665:                               #   in Loop: Header=BB2_654 Depth=1
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
	movq	-88(%rbp), %rax
	jmp	.LBB2_654
	.align	16, 0x90
.LBB2_666:                              #   in Loop: Header=BB2_654 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	movq	-48(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_686
# BB#667:                               #   in Loop: Header=BB2_654 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -896(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -904(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -912(%rbp)
	movq	-896(%rbp), %rax
	cmpq	-904(%rbp), %rax
	je	.LBB2_676
# BB#668:                               #   in Loop: Header=BB2_654 Depth=1
	movq	-896(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_670
# BB#669:                               #   in Loop: Header=BB2_654 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_670:                              #   in Loop: Header=BB2_654 Depth=1
	movq	-896(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-904(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_673
# BB#671:                               #   in Loop: Header=BB2_654 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_673
# BB#672:                               #   in Loop: Header=BB2_654 Depth=1
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
.LBB2_673:                              #   in Loop: Header=BB2_654 Depth=1
	movq	-896(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-912(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_676
# BB#674:                               #   in Loop: Header=BB2_654 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_676
# BB#675:                               #   in Loop: Header=BB2_654 Depth=1
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
.LBB2_676:                              #   in Loop: Header=BB2_654 Depth=1
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB2_678
# BB#677:                               #   in Loop: Header=BB2_654 Depth=1
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
.LBB2_678:                              #   in Loop: Header=BB2_654 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_680
# BB#679:                               #   in Loop: Header=BB2_654 Depth=1
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
.LBB2_680:                              #   in Loop: Header=BB2_654 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_682
# BB#681:                               #   in Loop: Header=BB2_654 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_683
.LBB2_682:                              #   in Loop: Header=BB2_654 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_684
.LBB2_686:                              #   in Loop: Header=BB2_654 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_694
# BB#687:                               #   in Loop: Header=BB2_654 Depth=1
	cmpl	$0, -180(%rbp)
	jne	.LBB2_689
# BB#688:                               #   in Loop: Header=BB2_654 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_689:                              #   in Loop: Header=BB2_654 Depth=1
	movq	-72(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB2_707
# BB#690:                               #   in Loop: Header=BB2_654 Depth=1
	movl	$1, -176(%rbp)
	movl	-124(%rbp), %eax
	addl	-128(%rbp), %eax
	cmpl	%eax, -132(%rbp)
	jge	.LBB2_692
# BB#691:                               #   in Loop: Header=BB2_654 Depth=1
	movl	-124(%rbp), %eax
	addl	-128(%rbp), %eax
	jmp	.LBB2_693
.LBB2_694:                              #   in Loop: Header=BB2_654 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_696
# BB#695:                               #   in Loop: Header=BB2_654 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_698
.LBB2_696:                              #   in Loop: Header=BB2_654 Depth=1
	cmpl	$0, -52(%rbp)
	jne	.LBB2_699
# BB#697:                               #   in Loop: Header=BB2_654 Depth=1
	movq	-72(%rbp), %rdi
	callq	FontWordSize
	jmp	.LBB2_699
.LBB2_683:                              #   in Loop: Header=BB2_654 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_684:                              #   in Loop: Header=BB2_654 Depth=1
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
	jne	.LBB2_707
# BB#685:                               #   in Loop: Header=BB2_654 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	movq	-88(%rbp), %rax
	jmp	.LBB2_654
.LBB2_698:                              #   in Loop: Header=BB2_654 Depth=1
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	MinSize
	movq	%rax, -72(%rbp)
.LBB2_699:                              #   in Loop: Header=BB2_654 Depth=1
	cmpl	$0, -180(%rbp)
	je	.LBB2_706
# BB#700:                               #   in Loop: Header=BB2_654 Depth=1
	movl	-124(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-72(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB2_702
# BB#701:                               #   in Loop: Header=BB2_654 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB2_703
.LBB2_706:                              #   in Loop: Header=BB2_654 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -124(%rbp)
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -128(%rbp)
	movl	$1, -180(%rbp)
	jmp	.LBB2_707
.LBB2_702:                              #   in Loop: Header=BB2_654 Depth=1
	movl	-124(%rbp), %eax
.LBB2_703:                              #   in Loop: Header=BB2_654 Depth=1
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-72(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB2_705
# BB#704:                               #   in Loop: Header=BB2_654 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -128(%rbp)
	movq	-88(%rbp), %rax
	jmp	.LBB2_654
.LBB2_705:                              #   in Loop: Header=BB2_654 Depth=1
	movl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-88(%rbp), %rax
	jmp	.LBB2_654
.LBB2_692:                              #   in Loop: Header=BB2_654 Depth=1
	movl	-132(%rbp), %eax
.LBB2_693:                              #   in Loop: Header=BB2_654 Depth=1
	movl	%eax, -132(%rbp)
	movl	$0, -180(%rbp)
	movq	-88(%rbp), %rax
	jmp	.LBB2_654
.LBB2_643:
	cmpq	$0, -96(%rbp)
	je	.LBB2_644
# BB#645:
	movslq	-52(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	addl	%eax, -128(%rbp)
	jmp	.LBB2_646
.LBB2_708:
	cmpl	$0, -180(%rbp)
	jne	.LBB2_710
# BB#709:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_710:
	cmpl	$0, -176(%rbp)
	je	.LBB2_761
# BB#711:
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$0, 48(%rcx,%rax,4)
	movl	-124(%rbp), %eax
	addl	-128(%rbp), %eax
	cmpl	%eax, -132(%rbp)
	jge	.LBB2_713
# BB#712:
	movl	-124(%rbp), %eax
	addl	-128(%rbp), %eax
	jmp	.LBB2_714
.LBB2_761:
	movl	-124(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-128(%rbp), %eax
	jmp	.LBB2_171
.LBB2_644:
	movl	$0, -128(%rbp)
	movl	$0, -124(%rbp)
.LBB2_646:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -124(%rbp)    # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB2_648
# BB#647:
	movl	-124(%rbp), %ecx
.LBB2_648:
	movslq	-52(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%ecx, 48(%rsi,%rdx,4)
	cmpl	$8388607, -128(%rbp)    # imm = 0x7FFFFF
	jg	.LBB2_650
# BB#649:
	movl	-128(%rbp), %eax
.LBB2_650:
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB2_850
# BB#651:
	cmpl	$0, -184(%rbp)
	je	.LBB2_850
# BB#652:
	movq	-48(%rbp), %rax
	movl	$8388607, 56(%rax)      # imm = 0x7FFFFF
.LBB2_850:
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, 48(%rcx,%rax,4)
	jns	.LBB2_852
# BB#851:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.44, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_852:
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, 56(%rcx,%rax,4)
	jns	.LBB2_854
# BB#853:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.45, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_854:
	movq	-48(%rbp), %rax
	addq	$904, %rsp              # imm = 0x388
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_713:
	movl	-132(%rbp), %eax
.LBB2_714:
	movl	%eax, -132(%rbp)
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	jg	.LBB2_716
# BB#715:
	movl	-132(%rbp), %ecx
.LBB2_716:
	movslq	-52(%rbp), %rax
	jmp	.LBB2_717
.Lfunc_end2:
	.size	MinSize, .Lfunc_end2-MinSize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_101
	.quad	.LBB2_849
	.quad	.LBB2_34
	.quad	.LBB2_33
	.quad	.LBB2_4
	.quad	.LBB2_4
	.quad	.LBB2_41
	.quad	.LBB2_332
	.quad	.LBB2_849
	.quad	.LBB2_2
	.quad	.LBB2_2
	.quad	.LBB2_172
	.quad	.LBB2_172
	.quad	.LBB2_762
	.quad	.LBB2_718
	.quad	.LBB2_339
	.quad	.LBB2_509
	.quad	.LBB2_509
	.quad	.LBB2_202
	.quad	.LBB2_198
	.quad	.LBB2_202
	.quad	.LBB2_198
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_301
	.quad	.LBB2_310
	.quad	.LBB2_318
	.quad	.LBB2_318
	.quad	.LBB2_221
	.quad	.LBB2_221
	.quad	.LBB2_208
	.quad	.LBB2_208
	.quad	.LBB2_251
	.quad	.LBB2_274
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_177
	.quad	.LBB2_177
	.quad	.LBB2_130
	.quad	.LBB2_130
	.quad	.LBB2_130
	.quad	.LBB2_130
	.quad	.LBB2_130
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_227
	.quad	.LBB2_124
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_849
	.quad	.LBB2_805
	.quad	.LBB2_805
	.quad	.LBB2_205
	.quad	.LBB2_205
	.quad	.LBB2_205
	.quad	.LBB2_205
.LJTI2_1:
	.quad	.LBB2_827
	.quad	.LBB2_826
	.quad	.LBB2_829
	.quad	.LBB2_830
	.quad	.LBB2_831

	.text
	.align	16, 0x90
	.type	BuildSpanner,@function
BuildSpanner:                           # @BuildSpanner
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
.Ltmp19:
	.cfi_offset %rbx, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movzbl	32(%rdi), %eax
	cmpl	$44, %eax
	je	.LBB3_4
# BB#1:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	je	.LBB3_4
# BB#2:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	je	.LBB3_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.48, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_4:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_6:                                #   in Loop: Header=BB3_5 Depth=1
	movq	-120(%rbp), %rax
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_6
# BB#7:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rcx
	cmpq	16(%rax), %rcx
	je	.LBB3_9
# BB#8:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.49, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_9:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB3_11
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
.LBB3_11:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_13
# BB#12:
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
.LBB3_13:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_15
# BB#14:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_16
.LBB3_15:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_17
.LBB3_16:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_17:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$44, %ecx
	je	.LBB3_19
# BB#18:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	sete	%al
.LBB3_19:
	movzbl	%al, %eax
	movl	%eax, -124(%rbp)
	testb	%al, %al
	je	.LBB3_99
# BB#20:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB3_21
	.align	16, 0x90
.LBB3_22:                               #   in Loop: Header=BB3_21 Depth=1
	movq	-104(%rbp), %rax
.LBB3_21:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_22
# BB#23:
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	je	.LBB3_26
# BB#24:
	movq	-40(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$12, %edi
	movl	$10, %esi
	movl	$.L.str.50, %edx
	jmp	.LBB3_25
.LBB3_99:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_101
# BB#100:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_104
.LBB3_26:
	movzbl	zz_lengths+13(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_28
# BB#27:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_31
.LBB3_101:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_102
# BB#103:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_104
.LBB3_28:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_29
# BB#30:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_31
.LBB3_102:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_104:
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
	je	.LBB3_107
# BB#105:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_107
# BB#106:
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
.LBB3_107:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_110
# BB#108:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_110
# BB#109:
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
	jmp	.LBB3_110
.LBB3_29:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_31:
	movq	zz_hold(%rip), %rax
	movb	$13, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-40(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-72(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-40(%rbp), %rax
	andl	36(%rax), %esi
	movq	-72(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-72(%rbp), %rax
	andl	$-4194305, 40(%rax)     # imm = 0xFFFFFFFFFFBFFFFF
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_33
# BB#32:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_36
.LBB3_33:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_34
# BB#35:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_36
.LBB3_34:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_36:
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
	je	.LBB3_39
# BB#37:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_39
# BB#38:
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
.LBB3_39:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_42
# BB#40:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_42
# BB#41:
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
.LBB3_42:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_44
# BB#43:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_47
.LBB3_44:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_45
# BB#46:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_47
.LBB3_45:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_47:
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
	je	.LBB3_50
# BB#48:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_50
# BB#49:
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
.LBB3_50:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_53
# BB#51:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_53
# BB#52:
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
.LBB3_53:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB3_54
	.align	16, 0x90
.LBB3_55:                               #   in Loop: Header=BB3_54 Depth=1
	movq	-56(%rbp), %rax
.LBB3_54:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_55
# BB#56:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$15, %eax
	je	.LBB3_58
# BB#57:
	movq	-40(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$12, %edi
	movl	$11, %esi
	movl	$.L.str.51, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_58:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$15, %eax
	je	.LBB3_60
# BB#59:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.52, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_60:
	movq	-72(%rbp), %rax
	andl	$-528482305, 40(%rax)   # imm = 0xFFFFFFFFE07FFFFF
	movq	-72(%rbp), %rax
	andl	$-4190209, 40(%rax)     # imm = 0xFFFFFFFFFFC00FFF
	movq	-72(%rbp), %rax
	movl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB3_61
	.align	16, 0x90
.LBB3_66:                               #   in Loop: Header=BB3_61 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
.LBB3_61:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_63 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB3_72
# BB#62:                                #   in Loop: Header=BB3_61 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB3_63
	.align	16, 0x90
.LBB3_64:                               #   in Loop: Header=BB3_63 Depth=2
	movq	-64(%rbp), %rax
.LBB3_63:                               #   Parent Loop BB3_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_64
# BB#65:                                #   in Loop: Header=BB3_61 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	je	.LBB3_66
# BB#67:                                #   in Loop: Header=BB3_61 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB3_72
# BB#68:                                #   in Loop: Header=BB3_61 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	je	.LBB3_72
# BB#69:                                #   in Loop: Header=BB3_61 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	je	.LBB3_72
# BB#70:                                #   in Loop: Header=BB3_61 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	je	.LBB3_72
# BB#71:                                #   in Loop: Header=BB3_61 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB3_61
.LBB3_72:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movb	$1, %r14b
	movl	$1048575, %r15d         # imm = 0xFFFFF
	movl	$-1048576, %ebx         # imm = 0xFFFFFFFFFFF00000
	jmp	.LBB3_73
	.align	16, 0x90
.LBB3_98:                               #   in Loop: Header=BB3_73 Depth=1
	movq	-72(%rbp), %rax
	movl	40(%rax), %ecx
	leal	1(%rcx), %edx
	andl	$4095, %edx             # imm = 0xFFF
	andl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	orl	%edx, %ecx
	movl	%ecx, 40(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB3_73:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_75 Depth 2
	movq	-48(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB3_110
# BB#74:                                #   in Loop: Header=BB3_73 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB3_75
	.align	16, 0x90
.LBB3_76:                               #   in Loop: Header=BB3_75 Depth=2
	movq	-64(%rbp), %rax
.LBB3_75:                               #   Parent Loop BB3_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_76
# BB#77:                                #   in Loop: Header=BB3_73 Depth=1
	movzbl	zz_lengths+45(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r14b, %r14b
	jne	.LBB3_79
# BB#78:                                #   in Loop: Header=BB3_73 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_82
	.align	16, 0x90
.LBB3_79:                               #   in Loop: Header=BB3_73 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_80
# BB#81:                                #   in Loop: Header=BB3_73 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_82
.LBB3_80:                               #   in Loop: Header=BB3_73 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_82:                               #   in Loop: Header=BB3_73 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$45, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-64(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r15d, %eax
	movq	-96(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%ebx, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-64(%rbp), %rax
	movl	36(%rax), %eax
	andl	%ebx, %eax
	movq	-96(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB3_84
# BB#83:                                #   in Loop: Header=BB3_73 Depth=1
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
.LBB3_84:                               #   in Loop: Header=BB3_73 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_87
# BB#85:                                #   in Loop: Header=BB3_73 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_87
# BB#86:                                #   in Loop: Header=BB3_73 Depth=1
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
.LBB3_87:                               #   in Loop: Header=BB3_73 Depth=1
	movq	-64(%rbp), %rdi
	callq	DisposeObject
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r14b, %r14b
	jne	.LBB3_89
# BB#88:                                #   in Loop: Header=BB3_73 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_92
	.align	16, 0x90
.LBB3_89:                               #   in Loop: Header=BB3_73 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_90
# BB#91:                                #   in Loop: Header=BB3_73 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_92
.LBB3_90:                               #   in Loop: Header=BB3_73 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_92:                               #   in Loop: Header=BB3_73 Depth=1
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
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_95
# BB#93:                                #   in Loop: Header=BB3_73 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_95
# BB#94:                                #   in Loop: Header=BB3_73 Depth=1
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
.LBB3_95:                               #   in Loop: Header=BB3_73 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_98
# BB#96:                                #   in Loop: Header=BB3_73 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_98
# BB#97:                                #   in Loop: Header=BB3_73 Depth=1
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
	jmp	.LBB3_98
.LBB3_110:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$44, %ecx
	je	.LBB3_112
# BB#111:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	sete	%al
.LBB3_112:
	movzbl	%al, %eax
	movl	%eax, -128(%rbp)
	testb	%al, %al
	je	.LBB3_189
# BB#113:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB3_114
	.align	16, 0x90
.LBB3_115:                              #   in Loop: Header=BB3_114 Depth=1
	movq	-112(%rbp), %rax
.LBB3_114:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_115
# BB#116:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$15, %eax
	je	.LBB3_118
# BB#117:
	movq	-40(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$12, %edi
	movl	$12, %esi
	movl	$.L.str.53, %edx
.LBB3_25:
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movl	$0, -28(%rbp)
	jmp	.LBB3_201
.LBB3_189:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_191
# BB#190:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_194
.LBB3_118:
	movzbl	zz_lengths+14(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_120
# BB#119:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_123
.LBB3_191:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_192
# BB#193:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_194
.LBB3_120:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_121
# BB#122:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_123
.LBB3_192:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_194:
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
	je	.LBB3_197
# BB#195:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_197
# BB#196:
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
.LBB3_197:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_200
# BB#198:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_200
# BB#199:
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
	jmp	.LBB3_200
.LBB3_121:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_123:
	movq	zz_hold(%rip), %rax
	movb	$14, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-40(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-80(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-40(%rbp), %rax
	andl	36(%rax), %esi
	movq	-80(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-80(%rbp), %rax
	andl	$-4194305, 40(%rax)     # imm = 0xFFFFFFFFFFBFFFFF
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_125
# BB#124:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_128
.LBB3_125:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_126
# BB#127:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_128
.LBB3_126:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_128:
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
	je	.LBB3_131
# BB#129:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_131
# BB#130:
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
.LBB3_131:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_134
# BB#132:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_134
# BB#133:
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
.LBB3_134:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_136
# BB#135:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_139
.LBB3_136:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_137
# BB#138:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_139
.LBB3_137:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_139:
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
	je	.LBB3_142
# BB#140:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_142
# BB#141:
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
.LBB3_142:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_145
# BB#143:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_145
# BB#144:
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
.LBB3_145:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB3_146
	.align	16, 0x90
.LBB3_147:                              #   in Loop: Header=BB3_146 Depth=1
	movq	-56(%rbp), %rax
.LBB3_146:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_147
# BB#148:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	je	.LBB3_150
# BB#149:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.52, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_150:
	movq	-80(%rbp), %rax
	andl	$-528482305, 40(%rax)   # imm = 0xFFFFFFFFE07FFFFF
	movq	-80(%rbp), %rax
	andl	$-4190209, 40(%rax)     # imm = 0xFFFFFFFFFFC00FFF
	movq	-80(%rbp), %rax
	movl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB3_151
	.align	16, 0x90
.LBB3_156:                              #   in Loop: Header=BB3_151 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
.LBB3_151:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_153 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB3_162
# BB#152:                               #   in Loop: Header=BB3_151 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB3_153
	.align	16, 0x90
.LBB3_154:                              #   in Loop: Header=BB3_153 Depth=2
	movq	-64(%rbp), %rax
.LBB3_153:                              #   Parent Loop BB3_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_154
# BB#155:                               #   in Loop: Header=BB3_151 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	je	.LBB3_156
# BB#157:                               #   in Loop: Header=BB3_151 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB3_162
# BB#158:                               #   in Loop: Header=BB3_151 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	je	.LBB3_162
# BB#159:                               #   in Loop: Header=BB3_151 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	je	.LBB3_162
# BB#160:                               #   in Loop: Header=BB3_151 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	je	.LBB3_162
# BB#161:                               #   in Loop: Header=BB3_151 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB3_151
.LBB3_162:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movb	$1, %r14b
	movl	$1048575, %r15d         # imm = 0xFFFFF
	movl	$-1048576, %ebx         # imm = 0xFFFFFFFFFFF00000
	jmp	.LBB3_163
	.align	16, 0x90
.LBB3_188:                              #   in Loop: Header=BB3_163 Depth=1
	movq	-80(%rbp), %rax
	movl	40(%rax), %ecx
	leal	1(%rcx), %edx
	andl	$4095, %edx             # imm = 0xFFF
	andl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	orl	%edx, %ecx
	movl	%ecx, 40(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB3_163:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_165 Depth 2
	movq	-48(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB3_200
# BB#164:                               #   in Loop: Header=BB3_163 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB3_165
	.align	16, 0x90
.LBB3_166:                              #   in Loop: Header=BB3_165 Depth=2
	movq	-64(%rbp), %rax
.LBB3_165:                              #   Parent Loop BB3_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_166
# BB#167:                               #   in Loop: Header=BB3_163 Depth=1
	movzbl	zz_lengths+46(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r14b, %r14b
	jne	.LBB3_169
# BB#168:                               #   in Loop: Header=BB3_163 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_172
	.align	16, 0x90
.LBB3_169:                              #   in Loop: Header=BB3_163 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_170
# BB#171:                               #   in Loop: Header=BB3_163 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_172
.LBB3_170:                              #   in Loop: Header=BB3_163 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_172:                              #   in Loop: Header=BB3_163 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$46, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-64(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r15d, %eax
	movq	-96(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%ebx, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-64(%rbp), %rax
	movl	36(%rax), %eax
	andl	%ebx, %eax
	movq	-96(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB3_174
# BB#173:                               #   in Loop: Header=BB3_163 Depth=1
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
.LBB3_174:                              #   in Loop: Header=BB3_163 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_177
# BB#175:                               #   in Loop: Header=BB3_163 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_177
# BB#176:                               #   in Loop: Header=BB3_163 Depth=1
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
.LBB3_177:                              #   in Loop: Header=BB3_163 Depth=1
	movq	-64(%rbp), %rdi
	callq	DisposeObject
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r14b, %r14b
	jne	.LBB3_179
# BB#178:                               #   in Loop: Header=BB3_163 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_182
	.align	16, 0x90
.LBB3_179:                              #   in Loop: Header=BB3_163 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_180
# BB#181:                               #   in Loop: Header=BB3_163 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_182
.LBB3_180:                              #   in Loop: Header=BB3_163 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_182:                              #   in Loop: Header=BB3_163 Depth=1
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
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_185
# BB#183:                               #   in Loop: Header=BB3_163 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_185
# BB#184:                               #   in Loop: Header=BB3_163 Depth=1
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
.LBB3_185:                              #   in Loop: Header=BB3_163 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_188
# BB#186:                               #   in Loop: Header=BB3_163 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_188
# BB#187:                               #   in Loop: Header=BB3_163 Depth=1
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
	jmp	.LBB3_188
.LBB3_200:
	movl	$1, -28(%rbp)
.LBB3_201:
	movl	-28(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	BuildSpanner, .Lfunc_end3-BuildSpanner
	.cfi_endproc

	.align	16, 0x90
	.type	KernLength,@function
KernLength:                             # @KernLength
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
	movl	%edi, -4(%rbp)
	movb	%sil, -5(%rbp)
	movb	%dl, -6(%rbp)
	movl	-4(%rbp), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movzbl	60(%rax), %eax
	andl	$127, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movq	MapTable(,%rax,8), %rax
	leaq	2945(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movzbl	-5(%rbp), %ecx
	movzbl	2945(%rax,%rcx), %eax
	movl	%eax, -28(%rbp)
	movzbl	-6(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movl	%eax, -32(%rbp)
	movslq	-28(%rbp), %rax
	movl	-4(%rbp), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	64(%rdx,%rcx), %rcx
	movzwl	(%rcx,%rax,2), %eax
	testl	%eax, %eax
	movl	%eax, -36(%rbp)
	je	.LBB4_1
# BB#2:
	movl	-4(%rbp), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	72(%rcx,%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_3 Depth=1
	incl	-40(%rbp)
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movslq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB4_4
# BB#5:
	movslq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	xorl	%eax, %eax
	cmpl	-32(%rbp), %ecx
	jne	.LBB4_7
# BB#6:
	movslq	-40(%rbp), %rax
	movl	-4(%rbp), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	80(%rdx,%rcx), %rsi
	movq	88(%rdx,%rcx), %rcx
	movzbl	(%rsi,%rax), %eax
	movswl	(%rcx,%rax,2), %eax
.LBB4_7:
	movl	%eax, -12(%rbp)
	jmp	.LBB4_8
.LBB4_1:
	movl	$0, -12(%rbp)
.LBB4_8:
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	KernLength, .Lfunc_end4-KernLength
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"SpannerAvail!"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"SpannerAvailableSpace: thr_state!"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"search for gap preceding %s failed, using zero"
	.size	.L.str.3, 47

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s deleted (out of place)"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"word is too long"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"MinSize: CLOSURE has target!"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"MinSize: definite non-recursive closure"
	.size	.L.str.7, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"MinSize/SPAN: type(t) != HSPANNER!"
	.size	.L.str.9, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s replaced by empty object (out of place)"
	.size	.L.str.10, 43

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"MinSize: SPANNER!"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"MinSize: BreakObject failed to fit!"
	.size	.L.str.13, 36

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"forced to enlarge %s from %s to %s"
	.size	.L.str.14, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"@High"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"NextDefiniteWithGap: g == nilobj!"
	.size	.L.str.16, 34

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"word %s%s is too long"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"^ deleted (it may not precede this object)"
	.size	.L.str.18, 43

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gap replaced by 0i (%c unit not allowed here)"
	.size	.L.str.19, 46

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"MinSize: NO_MODE!"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"mark alignment incompatible with centring or right justification"
	.size	.L.str.21, 65

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"MinSize/VCAT/perp: !found!"
	.size	.L.str.22, 27

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"MinSize/VCAT/perp: !found (2)!"
	.size	.L.str.23, 31

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"MinSize/COL_THR: dim!"
	.size	.L.str.24, 22

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"MinSize/COL_THR: Down(x)!"
	.size	.L.str.25, 26

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"MinSize/COL_THR: GAP_OBJ!"
	.size	.L.str.26, 26

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"MinSize/ROW_THR: dim!"
	.size	.L.str.27, 22

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"MinSize/ROW_THR: Down(x)!"
	.size	.L.str.28, 26

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"MinSize/ROW_THR: GAP_OBJ!"
	.size	.L.str.29, 26

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%[^\n\r]%*c"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%!"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%%BoundingBox:"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"(atend)"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%%%%BoundingBox: %f %f %f %f"
	.size	.L.str.34, 29

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%s deleted (cannot open file %s)"
	.size	.L.str.35, 33

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"@IncludeGraphic"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"@SysIncludeGraphic"
	.size	.L.str.37, 19

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%s given zero size (no BoundingBox line in file %s)"
	.size	.L.str.38, 52

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"lout.eps"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%s deleted (bad first line in file %s)"
	.size	.L.str.40, 39

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%s given zero size (bad BoundingBox line in file %s)"
	.size	.L.str.41, 53

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"assert failed in %s %s"
	.size	.L.str.42, 23

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"MinSize"
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"MinSize: back(x, dim) < 0!"
	.size	.L.str.44, 27

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"MinSize: fwd(x, dim) < 0!"
	.size	.L.str.45, 26

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"FindSpannerGap: type(*res)!"
	.size	.L.str.46, 28

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"FindSpannerGap (HEAD): type(*res)!"
	.size	.L.str.47, 35

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"BuildSpanner: type(x) != SPAN!"
	.size	.L.str.48, 31

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"BuildSpanner: spanobj!"
	.size	.L.str.49, 23

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%s deleted (not in column)"
	.size	.L.str.50, 27

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"%s symbol out of place"
	.size	.L.str.51, 23

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"BuildSpanner: type(prnt)!"
	.size	.L.str.52, 26

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%s deleted (not in row)"
	.size	.L.str.53, 24


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
