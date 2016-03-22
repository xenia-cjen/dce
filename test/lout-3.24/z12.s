	.text
	.file	"z12.dce"
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
	subq	$128, %rsp
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movq	%rdi, -64(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	je	.LBB0_3
# BB#1:
	movq	-64(%rbp), %rax
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
	cmpl	$0, -68(%rbp)
	je	.LBB0_4
# BB#5:
	movl	$15, -140(%rbp)
	movl	$19, -144(%rbp)
	jmp	.LBB0_6
.LBB0_4:
	movl	$16, -140(%rbp)
	movl	$18, -144(%rbp)
.LBB0_6:
	movq	$0, -128(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
	leaq	-120(%rbp), %r14
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_60:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #       Child Loop BB0_37 Depth 3
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_42 Depth 2
	movq	-96(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB0_61
# BB#8:                                 #   in Loop: Header=BB0_7 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_9
	.align	16, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-104(%rbp), %rax
.LBB0_9:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_10
# BB#11:                                #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB0_12
# BB#13:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB0_14
	.align	16, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_14
	.align	16, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-112(%rbp), %rax
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_15
# BB#16:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	-140(%rbp), %eax
	jne	.LBB0_59
# BB#17:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-112(%rbp), %rax
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
	cmpq	$0, -128(%rbp)
	je	.LBB0_20
# BB#22:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-112(%rbp), %rax
	movl	-68(%rbp), %ecx
	movl	-144(%rbp), %edx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%r14, -40(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB0_23
# BB#24:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB0_25
	.align	16, 0x90
.LBB0_59:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-104(%rbp), %rbx
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
	jmp	.LBB0_60
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=1
	movslq	-68(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB0_21
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
.LBB0_25:                               #   in Loop: Header=BB0_7 Depth=1
	movq	%rax, -48(%rbp)
	jmp	.LBB0_26
	.align	16, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_26 Depth=2
	movq	-56(%rbp), %rax
.LBB0_26:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_27
	jmp	.LBB0_28
	.align	16, 0x90
.LBB0_33:                               #   in Loop: Header=BB0_28 Depth=2
	cmpl	$0, -28(%rbp)
	je	.LBB0_34
# BB#35:                                #   in Loop: Header=BB0_28 Depth=2
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB0_36
	.align	16, 0x90
.LBB0_34:                               #   in Loop: Header=BB0_28 Depth=2
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
.LBB0_36:                               #   in Loop: Header=BB0_28 Depth=2
	movq	%rax, -48(%rbp)
	jmp	.LBB0_37
	.align	16, 0x90
.LBB0_38:                               #   in Loop: Header=BB0_37 Depth=3
	movq	-56(%rbp), %rax
.LBB0_37:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_38
.LBB0_28:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_37 Depth 3
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB0_31
# BB#29:                                #   in Loop: Header=BB0_28 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_30
.LBB0_31:                               #   in Loop: Header=BB0_28 Depth=2
	movq	-56(%rbp), %rax
	cmpq	%rax, 24(%rax)
	setne	%al
	jmp	.LBB0_32
.LBB0_30:                               #   in Loop: Header=BB0_28 Depth=2
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_32:                               #   in Loop: Header=BB0_28 Depth=2
	testb	%al, %al
	jne	.LBB0_33
# BB#39:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB0_46
# BB#40:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_41
.LBB0_46:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB0_55
# BB#47:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	movzbl	43(%rax), %eax
	andl	$1, %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB0_55
# BB#48:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_49
	.align	16, 0x90
.LBB0_55:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.LBB0_56:                               # %FindSpannerGap.exit
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_58
# BB#57:                                #   in Loop: Header=BB0_7 Depth=1
	movslq	-68(%rbp), %rax
	movq	-128(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-112(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-120(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	addl	%eax, -132(%rbp)
	jmp	.LBB0_21
.LBB0_58:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-104(%rbp), %rbx
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
	movslq	-68(%rbp), %rax
	movq	-128(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-112(%rbp), %rdx
	addl	48(%rdx,%rax,4), %ecx
	addl	%ecx, -132(%rbp)
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	movslq	-68(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB0_60
.LBB0_41:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB0_42
	.align	16, 0x90
.LBB0_43:                               #   in Loop: Header=BB0_42 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, (%rax)
.LBB0_42:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_43
# BB#44:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_56
# BB#45:                                #   in Loop: Header=BB0_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.46, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_56
.LBB0_49:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB0_50
	.align	16, 0x90
.LBB0_51:                               #   in Loop: Header=BB0_50 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, (%rax)
.LBB0_50:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_51
# BB#52:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_54
# BB#53:                                #   in Loop: Header=BB0_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.47, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_54:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	orw	$128, 44(%rax)
	jmp	.LBB0_56
.LBB0_61:
	movl	-132(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-136(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-64(%rbp), %rax
	movl	$8388607, 64(%rax)      # imm = 0x7FFFFF
	movl	-132(%rbp), %eax
	addl	-136(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movq	-64(%rbp), %rax
	movl	$8388607, 72(%rax)      # imm = 0x7FFFFF
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	SpannerAvailableSpace, .Lfunc_end0-SpannerAvailableSpace
	.cfi_endproc

	.globl	MinSize
	.align	16, 0x90
	.type	MinSize,@function
MinSize:                                # @MinSize
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1000, %rsp             # imm = 0x3E8
.Ltmp8:
	.cfi_offset %rbx, -56
.Ltmp9:
	.cfi_offset %r12, -48
.Ltmp10:
	.cfi_offset %r13, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-2, %eax
	cmpl	$97, %eax
	ja	.LBB1_1034
# BB#1:
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_121:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_122
	.align	16, 0x90
.LBB1_123:                              #   in Loop: Header=BB1_122 Depth=1
	movq	-176(%rbp), %rax
.LBB1_122:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_123
	jmp	.LBB1_523
.LBB1_1034:
	movq	no_fpos(%rip), %rbx
	movq	-152(%rbp), %rax
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
	jmp	.LBB1_1035
.LBB1_130:
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB1_133
# BB#131:
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	je	.LBB1_133
# BB#132:
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	jne	.LBB1_318
.LBB1_133:
	cmpl	$0, -156(%rbp)
	jne	.LBB1_318
# BB#134:
	movq	-152(%rbp), %rax
	movq	%rax, -56(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB1_138
# BB#135:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	je	.LBB1_138
# BB#136:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	je	.LBB1_138
# BB#137:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.48, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_138:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_139
	.align	16, 0x90
.LBB1_140:                              #   in Loop: Header=BB1_139 Depth=1
	movq	-136(%rbp), %rax
.LBB1_139:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_140
# BB#141:
	movq	-136(%rbp), %rax
	movq	24(%rax), %rcx
	cmpq	16(%rax), %rcx
	je	.LBB1_143
# BB#142:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.49, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_143:
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_145
# BB#144:
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
.LBB1_145:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_147
# BB#146:
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
.LBB1_147:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_149
# BB#148:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_150
.LBB1_149:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_151
.LBB1_382:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_383
	.align	16, 0x90
.LBB1_384:                              #   in Loop: Header=BB1_383 Depth=1
	movq	-176(%rbp), %rax
.LBB1_383:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_384
	jmp	.LBB1_523
.LBB1_4:
	cmpl	$1, -156(%rbp)
	jne	.LBB1_33
# BB#5:
	movq	-152(%rbp), %rax
	movzbl	41(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_10
.LBB1_2:
	cmpl	$0, -156(%rbp)
	jne	.LBB1_1035
# BB#3:
	movq	-152(%rbp), %rdi
	callq	FontWordSize
	jmp	.LBB1_1035
.LBB1_349:
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	sete	%al
	cmpl	$0, -156(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB1_351
# BB#350:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_351:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_352
	.align	16, 0x90
.LBB1_353:                              #   in Loop: Header=BB1_352 Depth=1
	movq	-176(%rbp), %rax
.LBB1_352:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_353
	jmp	.LBB1_523
.LBB1_379:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_380
	.align	16, 0x90
.LBB1_381:                              #   in Loop: Header=BB1_380 Depth=1
	movq	-176(%rbp), %rax
.LBB1_380:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_381
	jmp	.LBB1_523
.LBB1_375:
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	$0, 56(%rcx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	$0, 48(%rcx,%rax,4)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_376
	.align	16, 0x90
.LBB1_377:                              #   in Loop: Header=BB1_376 Depth=1
	movq	-176(%rbp), %rax
.LBB1_376:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_377
# BB#378:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	$0, 56(%rcx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	$0, 48(%rcx,%rax,4)
	jmp	.LBB1_1035
.LBB1_503:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_504
	.align	16, 0x90
.LBB1_505:                              #   in Loop: Header=BB1_504 Depth=1
	movq	-176(%rbp), %rax
.LBB1_504:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_505
# BB#506:
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	cmpl	$0, -156(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-152(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$28, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_402
# BB#507:
	movq	-152(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movl	-156(%rbp), %edx
	callq	FindShift
	movl	%eax, -232(%rbp)
	movslq	-156(%rbp), %rdx
	movq	-176(%rbp), %rsi
	xorl	%ecx, %ecx
	addl	48(%rsi,%rdx,4), %eax
	jle	.LBB1_509
# BB#508:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	addl	-232(%rbp), %ecx
.LBB1_509:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_512
# BB#510:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	xorl	%eax, %eax
	addl	-232(%rbp), %ecx
	jle	.LBB1_512
# BB#511:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	addl	-232(%rbp), %eax
.LBB1_512:
	movslq	-156(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	xorl	%ecx, %ecx
	cmpl	-232(%rbp), %eax
	jle	.LBB1_514
# BB#513:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	subl	-232(%rbp), %ecx
.LBB1_514:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_348
# BB#515:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	xorl	%eax, %eax
	cmpl	-232(%rbp), %ecx
	jle	.LBB1_348
# BB#516:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	subl	-232(%rbp), %eax
	jmp	.LBB1_348
.LBB1_398:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_399
	.align	16, 0x90
.LBB1_400:                              #   in Loop: Header=BB1_399 Depth=1
	movq	-176(%rbp), %rax
.LBB1_399:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_400
# BB#401:
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	cmpl	$0, -156(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-152(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$30, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB1_33
	jmp	.LBB1_402
.LBB1_385:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_386
	.align	16, 0x90
.LBB1_387:                              #   in Loop: Header=BB1_386 Depth=1
	movq	-176(%rbp), %rax
.LBB1_386:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_387
# BB#388:
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	cmpl	$0, -156(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-152(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$32, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_390
# BB#389:
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	$0, 56(%rcx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	$0, 48(%rcx,%rax,4)
	jmp	.LBB1_391
.LBB1_354:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_355
	.align	16, 0x90
.LBB1_356:                              #   in Loop: Header=BB1_355 Depth=1
	movq	-176(%rbp), %rax
.LBB1_355:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_356
# BB#357:
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	movslq	-156(%rbp), %rcx
	movl	48(%rax,%rcx,4), %eax
	movq	-152(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-152(%rbp), %rdx
	movl	%ecx, 56(%rdx,%rax,4)
	cmpl	$1, -156(%rbp)
	jne	.LBB1_1035
# BB#358:
	movzbl	zz_lengths+138(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_360
# BB#359:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_363
.LBB1_990:
	cmpl	$1, -156(%rbp)
	je	.LBB1_1035
# BB#991:
	movl	$0, -256(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_992
	.align	16, 0x90
.LBB1_993:                              #   in Loop: Header=BB1_992 Depth=1
	movq	-176(%rbp), %rax
.LBB1_992:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_993
# BB#994:
	movq	-176(%rbp), %rcx
	movq	-152(%rbp), %rax
	leaq	64(%rcx), %rdi
	addq	$32, %rcx
	movzbl	32(%rax), %esi
	leaq	-224(%rbp), %rdx
	leaq	-296(%rbp), %r8
	callq	OpenIncGraphicFile
	movq	%rax, -304(%rbp)
	testq	%rax, %rax
	jne	.LBB1_996
# BB#995:
	movl	$1, -256(%rbp)
.LBB1_996:
	movl	$1, -292(%rbp)
	leaq	-816(%rbp), %rbx
	leaq	-264(%rbp), %r14
	leaq	-268(%rbp), %r15
	leaq	-272(%rbp), %r12
	leaq	-276(%rbp), %r13
	jmp	.LBB1_997
.LBB1_1002:                             #   in Loop: Header=BB1_997 Depth=1
	movl	$2, -256(%rbp)
.LBB1_997:                              # =>This Inner Loop Header: Depth=1
	cmpl	$0, -256(%rbp)
	jne	.LBB1_1009
# BB#998:                               #   in Loop: Header=BB1_997 Depth=1
	movq	-304(%rbp), %rdi
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	__isoc99_fscanf
	movl	%eax, -260(%rbp)
	testl	%eax, %eax
	je	.LBB1_1009
# BB#999:                               #   in Loop: Header=BB1_997 Depth=1
	cmpl	$-1, -260(%rbp)
	je	.LBB1_1009
# BB#1000:                              #   in Loop: Header=BB1_997 Depth=1
	cmpl	$0, -292(%rbp)
	je	.LBB1_1003
# BB#1001:                              #   in Loop: Header=BB1_997 Depth=1
	movl	$.L.str.31, %esi
	movq	%rbx, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB1_1002
.LBB1_1003:                             #   in Loop: Header=BB1_997 Depth=1
	movl	$0, -292(%rbp)
	movzbl	-816(%rbp), %eax
	cmpl	$37, %eax
	jne	.LBB1_997
# BB#1004:                              #   in Loop: Header=BB1_997 Depth=1
	movl	$.L.str.32, %esi
	movq	%rbx, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB1_997
# BB#1005:                              #   in Loop: Header=BB1_997 Depth=1
	movl	$.L.str.33, %esi
	movq	%rbx, %rdi
	callq	StringContains
	testl	%eax, %eax
	jne	.LBB1_997
# BB#1006:                              #   in Loop: Header=BB1_997 Depth=1
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	movq	%r13, %r9
	callq	__isoc99_sscanf
	cmpl	$4, %eax
	jne	.LBB1_1008
# BB#1007:                              #   in Loop: Header=BB1_997 Depth=1
	movl	$4, -256(%rbp)
	cvttss2si	-264(%rbp), %eax
	movl	%eax, -240(%rbp)
	cvttss2si	-268(%rbp), %eax
	movl	%eax, -244(%rbp)
	cvttss2si	-272(%rbp), %eax
	movl	%eax, -248(%rbp)
	cvttss2si	-276(%rbp), %eax
	movl	%eax, -252(%rbp)
	jmp	.LBB1_997
.LBB1_1008:                             #   in Loop: Header=BB1_997 Depth=1
	movl	$3, -256(%rbp)
	jmp	.LBB1_997
.LBB1_101:
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$6, %eax
	jae	.LBB1_103
# BB#102:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_103:
	cmpl	$1, -156(%rbp)
	jne	.LBB1_120
# BB#104:
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$9, %eax
	jae	.LBB1_112
# BB#105:
	movzbl	zz_lengths+121(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_107
# BB#106:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_110
.LBB1_34:
	cmpl	$1, -156(%rbp)
	jne	.LBB1_33
# BB#35:
	movzbl	zz_lengths+135(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_37
# BB#36:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_40
.LBB1_41:
	cmpl	$1, -156(%rbp)
	jne	.LBB1_120
# BB#42:
	movzbl	zz_lengths+5(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_44
# BB#43:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_47
.LBB1_517:
	cmpl	$0, -156(%rbp)
	je	.LBB1_518
# BB#519:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_520
.LBB1_947:
	cmpl	$1, -156(%rbp)
	je	.LBB1_949
# BB#948:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.27, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_949:
	movq	-152(%rbp), %rax
	cmpb	$0, 41(%rax)
	jne	.LBB1_1035
# BB#950:
	movq	-152(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_952
# BB#951:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_952:
	movl	$0, -232(%rbp)
	movl	$0, -228(%rbp)
	movq	-152(%rbp), %rax
	jmp	.LBB1_953
.LBB1_970:                              #   in Loop: Header=BB1_953 Depth=1
	movq	-192(%rbp), %rax
.LBB1_953:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_955 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_971
# BB#954:                               #   in Loop: Header=BB1_953 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB1_955
	.align	16, 0x90
.LBB1_956:                              #   in Loop: Header=BB1_955 Depth=2
	movq	-176(%rbp), %rax
.LBB1_955:                              #   Parent Loop BB1_953 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_956
# BB#957:                               #   in Loop: Header=BB1_953 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_959
# BB#958:                               #   in Loop: Header=BB1_953 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_959:                              #   in Loop: Header=BB1_953 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB1_970
# BB#960:                               #   in Loop: Header=BB1_953 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	je	.LBB1_970
# BB#961:                               #   in Loop: Header=BB1_953 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	je	.LBB1_970
# BB#962:                               #   in Loop: Header=BB1_953 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	je	.LBB1_970
# BB#963:                               #   in Loop: Header=BB1_953 Depth=1
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	movl	-228(%rbp), %ecx
	movslq	-156(%rbp), %rdx
	cmpl	48(%rax,%rdx,4), %ecx
	jge	.LBB1_965
# BB#964:                               #   in Loop: Header=BB1_953 Depth=1
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB1_966
.LBB1_965:                              #   in Loop: Header=BB1_953 Depth=1
	movl	-228(%rbp), %eax
.LBB1_966:                              #   in Loop: Header=BB1_953 Depth=1
	movl	%eax, -228(%rbp)
	movl	-232(%rbp), %eax
	movslq	-156(%rbp), %rcx
	movq	-176(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB1_968
# BB#967:                               #   in Loop: Header=BB1_953 Depth=1
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB1_969
.LBB1_968:                              #   in Loop: Header=BB1_953 Depth=1
	movl	-232(%rbp), %eax
.LBB1_969:                              #   in Loop: Header=BB1_953 Depth=1
	movl	%eax, -232(%rbp)
	jmp	.LBB1_970
.LBB1_903:
	cmpl	$0, -156(%rbp)
	je	.LBB1_905
# BB#904:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_905:
	movq	-152(%rbp), %rax
	cmpb	$0, 41(%rax)
	jne	.LBB1_1035
# BB#906:
	movq	-152(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_908
# BB#907:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_908:
	movl	$0, -232(%rbp)
	movl	$0, -228(%rbp)
	movq	-152(%rbp), %rax
	jmp	.LBB1_909
.LBB1_926:                              #   in Loop: Header=BB1_909 Depth=1
	movq	-192(%rbp), %rax
.LBB1_909:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_911 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_927
# BB#910:                               #   in Loop: Header=BB1_909 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB1_911
	.align	16, 0x90
.LBB1_912:                              #   in Loop: Header=BB1_911 Depth=2
	movq	-176(%rbp), %rax
.LBB1_911:                              #   Parent Loop BB1_909 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_912
# BB#913:                               #   in Loop: Header=BB1_909 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_915
# BB#914:                               #   in Loop: Header=BB1_909 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_915:                              #   in Loop: Header=BB1_909 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB1_926
# BB#916:                               #   in Loop: Header=BB1_909 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	je	.LBB1_926
# BB#917:                               #   in Loop: Header=BB1_909 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	je	.LBB1_926
# BB#918:                               #   in Loop: Header=BB1_909 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	je	.LBB1_926
# BB#919:                               #   in Loop: Header=BB1_909 Depth=1
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	movl	-228(%rbp), %ecx
	movslq	-156(%rbp), %rdx
	cmpl	48(%rax,%rdx,4), %ecx
	jge	.LBB1_921
# BB#920:                               #   in Loop: Header=BB1_909 Depth=1
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB1_922
.LBB1_921:                              #   in Loop: Header=BB1_909 Depth=1
	movl	-228(%rbp), %eax
.LBB1_922:                              #   in Loop: Header=BB1_909 Depth=1
	movl	%eax, -228(%rbp)
	movl	-232(%rbp), %eax
	movslq	-156(%rbp), %rcx
	movq	-176(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB1_924
# BB#923:                               #   in Loop: Header=BB1_909 Depth=1
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB1_925
.LBB1_924:                              #   in Loop: Header=BB1_909 Depth=1
	movl	-232(%rbp), %eax
.LBB1_925:                              #   in Loop: Header=BB1_909 Depth=1
	movl	%eax, -232(%rbp)
	jmp	.LBB1_926
.LBB1_524:
	movq	-152(%rbp), %rax
	movb	68(%rax), %al
	shrb	$2, %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB1_694
# BB#525:
	movq	-152(%rbp), %rax
	jmp	.LBB1_526
.LBB1_551:                              #   in Loop: Header=BB1_526 Depth=1
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
.LBB1_526:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_528 Depth 2
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_552
# BB#527:                               #   in Loop: Header=BB1_526 Depth=1
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_528
	.align	16, 0x90
.LBB1_529:                              #   in Loop: Header=BB1_528 Depth=2
	movq	-176(%rbp), %rax
.LBB1_528:                              #   Parent Loop BB1_526 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_529
# BB#530:                               #   in Loop: Header=BB1_526 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB1_551
# BB#531:                               #   in Loop: Header=BB1_526 Depth=1
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -912(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -920(%rbp)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -928(%rbp)
	movq	-912(%rbp), %rax
	cmpq	-920(%rbp), %rax
	je	.LBB1_540
# BB#532:                               #   in Loop: Header=BB1_526 Depth=1
	movq	-912(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_534
# BB#533:                               #   in Loop: Header=BB1_526 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_534:                              #   in Loop: Header=BB1_526 Depth=1
	movq	-912(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-920(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_537
# BB#535:                               #   in Loop: Header=BB1_526 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_537
# BB#536:                               #   in Loop: Header=BB1_526 Depth=1
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
.LBB1_537:                              #   in Loop: Header=BB1_526 Depth=1
	movq	-912(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-928(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_540
# BB#538:                               #   in Loop: Header=BB1_526 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_540
# BB#539:                               #   in Loop: Header=BB1_526 Depth=1
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
.LBB1_540:                              #   in Loop: Header=BB1_526 Depth=1
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_542
# BB#541:                               #   in Loop: Header=BB1_526 Depth=1
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
.LBB1_542:                              #   in Loop: Header=BB1_526 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_544
# BB#543:                               #   in Loop: Header=BB1_526 Depth=1
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
.LBB1_544:                              #   in Loop: Header=BB1_526 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_546
# BB#545:                               #   in Loop: Header=BB1_526 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_547
.LBB1_546:                              #   in Loop: Header=BB1_526 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_548
.LBB1_547:                              #   in Loop: Header=BB1_526 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_548:                              #   in Loop: Header=BB1_526 Depth=1
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
	jne	.LBB1_550
# BB#549:                               #   in Loop: Header=BB1_526 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_550:                              #   in Loop: Header=BB1_526 Depth=1
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB1_551
.LBB1_486:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_487
	.align	16, 0x90
.LBB1_488:                              #   in Loop: Header=BB1_487 Depth=1
	movq	-176(%rbp), %rax
.LBB1_487:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_488
# BB#489:
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	cmpl	$0, -156(%rbp)
	jne	.LBB1_402
# BB#490:
	movq	-176(%rbp), %rdi
	movq	-152(%rbp), %rsi
	addq	$64, %rsi
	callq	BreakObject
	movq	%rax, -176(%rbp)
	movslq	-156(%rbp), %rcx
	movl	48(%rax,%rcx,4), %eax
	movq	-152(%rbp), %rcx
	cmpl	64(%rcx), %eax
	jg	.LBB1_493
# BB#491:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	movq	-152(%rbp), %rax
	cmpl	68(%rax), %edx
	jg	.LBB1_493
# BB#492:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movq	-152(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jle	.LBB1_494
.LBB1_493:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_494
.LBB1_495:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_496
	.align	16, 0x90
.LBB1_497:                              #   in Loop: Header=BB1_496 Depth=1
	movq	-176(%rbp), %rax
.LBB1_496:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_497
# BB#498:
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	cmpl	$1, -156(%rbp)
	jne	.LBB1_402
# BB#499:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movq	-152(%rbp), %rcx
	cmpl	64(%rcx), %eax
	jg	.LBB1_502
# BB#500:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	movq	-152(%rbp), %rax
	cmpl	68(%rax), %edx
	jg	.LBB1_502
# BB#501:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movq	-152(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jle	.LBB1_494
.LBB1_502:
	movq	-152(%rbp), %rbx
	movl	68(%rbx), %edi
	addq	$32, %rbx
	callq	EchoLength
	movq	%rax, %r14
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
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
	movq	-152(%rbp), %rax
	movl	$8388607, 64(%rax)      # imm = 0x7FFFFF
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	movq	-152(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-152(%rbp), %rax
	movl	$8388607, 72(%rax)      # imm = 0x7FFFFF
.LBB1_494:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-152(%rbp), %rdx
	movl	%ecx, 48(%rdx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-152(%rbp), %rdx
	movl	%ecx, 56(%rdx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rdx
	leaq	48(%rdx,%rax,4), %rdi
	leaq	56(%rdx,%rax,4), %rsi
	addq	$64, %rdx
	callq	EnlargeToConstraint
	jmp	.LBB1_1035
.LBB1_428:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_429
	.align	16, 0x90
.LBB1_430:                              #   in Loop: Header=BB1_429 Depth=1
	movq	-176(%rbp), %rax
.LBB1_429:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_430
# BB#431:
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	cmpl	$0, -156(%rbp)
	je	.LBB1_432
# BB#450:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-152(%rbp), %rdx
	imull	72(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%ecx, %esi
	sarl	$7, %esi
	movl	%esi, 48(%rdx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-152(%rbp), %rdx
	imull	72(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%ecx, %esi
	sarl	$7, %esi
	movl	%esi, 56(%rdx,%rax,4)
	movq	-152(%rbp), %rax
	orw	$1, 42(%rax)
	jmp	.LBB1_1035
.LBB1_451:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_452
	.align	16, 0x90
.LBB1_453:                              #   in Loop: Header=BB1_452 Depth=1
	movq	-176(%rbp), %rax
.LBB1_452:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_453
# BB#454:
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	cmpl	$0, -156(%rbp)
	jne	.LBB1_402
# BB#455:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-152(%rbp), %rdx
	movl	%ecx, 48(%rdx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-152(%rbp), %rdx
	movl	%ecx, 56(%rdx,%rax,4)
	movb	$0, -858(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_456
.LBB1_457:                              #   in Loop: Header=BB1_456 Depth=1
	movq	-176(%rbp), %rax
.LBB1_456:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_457
	jmp	.LBB1_458
.LBB1_459:                              #   in Loop: Header=BB1_458 Depth=1
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_460
	.align	16, 0x90
.LBB1_461:                              #   in Loop: Header=BB1_460 Depth=2
	movq	-176(%rbp), %rax
.LBB1_460:                              #   Parent Loop BB1_458 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_461
.LBB1_458:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_460 Depth 2
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_459
# BB#462:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_464
# BB#463:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_465
.LBB1_464:
	movq	-176(%rbp), %rax
	movb	64(%rax), %al
	movb	%al, -858(%rbp)
.LBB1_465:
	movb	$0, -857(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_466
.LBB1_467:                              #   in Loop: Header=BB1_466 Depth=1
	movq	-176(%rbp), %rax
.LBB1_466:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_467
	jmp	.LBB1_468
.LBB1_469:                              #   in Loop: Header=BB1_468 Depth=1
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_470
	.align	16, 0x90
.LBB1_471:                              #   in Loop: Header=BB1_470 Depth=2
	movq	-176(%rbp), %rax
.LBB1_470:                              #   Parent Loop BB1_468 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_471
.LBB1_468:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_470 Depth 2
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_469
# BB#472:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_474
# BB#473:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_475
.LBB1_474:
	movq	-176(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movq	-176(%rbp), %rcx
	movb	63(%rax,%rcx), %al
	movb	%al, -857(%rbp)
.LBB1_475:
	cmpb	$0, -857(%rbp)
	je	.LBB1_1035
# BB#476:
	cmpb	$0, -858(%rbp)
	je	.LBB1_1035
# BB#477:
	movq	-176(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	40(%rax), %ecx
	movb	-857(%rbp), %al
	movb	-858(%rbp), %dl
	movl	%ecx, -72(%rbp)
	movb	%al, -128(%rbp)
	movb	%dl, -136(%rbp)
	movl	-72(%rbp), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movzbl	60(%rax), %eax
	andl	$127, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	movq	MapTable(,%rax,8), %rax
	leaq	2945(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movzbl	-128(%rbp), %ecx
	movzbl	2945(%rax,%rcx), %eax
	movl	%eax, -96(%rbp)
	movzbl	-136(%rbp), %eax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movl	%eax, -104(%rbp)
	movslq	-96(%rbp), %rax
	movl	-72(%rbp), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	64(%rdx,%rcx), %rcx
	movzwl	(%rcx,%rax,2), %eax
	testl	%eax, %eax
	movl	%eax, -112(%rbp)
	je	.LBB1_478
# BB#479:
	movl	-72(%rbp), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	72(%rcx,%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB1_480
.LBB1_481:                              #   in Loop: Header=BB1_480 Depth=1
	incl	-120(%rbp)
.LBB1_480:                              # =>This Inner Loop Header: Depth=1
	movslq	-120(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	-104(%rbp), %eax
	jg	.LBB1_481
# BB#482:
	movslq	-120(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	xorl	%eax, %eax
	cmpl	-104(%rbp), %ecx
	jne	.LBB1_484
# BB#483:
	movslq	-120(%rbp), %rax
	movl	-72(%rbp), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	80(%rdx,%rcx), %rsi
	movq	88(%rdx,%rcx), %rcx
	movzbl	(%rsi,%rax), %eax
	movswl	(%rcx,%rax,2), %eax
.LBB1_484:
	movl	%eax, -80(%rbp)
	jmp	.LBB1_485
.LBB1_404:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_405
	.align	16, 0x90
.LBB1_406:                              #   in Loop: Header=BB1_405 Depth=1
	movq	-176(%rbp), %rax
.LBB1_405:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_406
# BB#407:
	cmpl	$0, -156(%rbp)
	je	.LBB1_408
# BB#414:
	movq	-152(%rbp), %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -840(%rbp)
	movq	-152(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -848(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -856(%rbp)
	movq	-840(%rbp), %rax
	cmpq	-848(%rbp), %rax
	je	.LBB1_423
# BB#415:
	movq	-840(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_417
# BB#416:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_417:
	movq	-840(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-848(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_420
# BB#418:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_420
# BB#419:
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
.LBB1_420:
	movq	-840(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-856(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_423
# BB#421:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_423
# BB#422:
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
.LBB1_423:
	movq	-152(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_425
# BB#424:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_426
.LBB1_425:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_427
.LBB1_124:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_125
	.align	16, 0x90
.LBB1_126:                              #   in Loop: Header=BB1_125 Depth=1
	movq	-176(%rbp), %rax
.LBB1_125:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_126
# BB#127:
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_128
	.align	16, 0x90
.LBB1_129:                              #   in Loop: Header=BB1_128 Depth=1
	movq	-176(%rbp), %rax
.LBB1_128:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_129
	jmp	.LBB1_523
.LBB1_390:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-152(%rbp), %rdx
	movl	%ecx, 48(%rdx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-152(%rbp), %rdx
	movl	%ecx, 56(%rdx,%rax,4)
.LBB1_391:
	cmpl	$1, -156(%rbp)
	jne	.LBB1_1035
# BB#392:
	movzbl	zz_lengths+137(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_394
# BB#393:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_397
.LBB1_1009:
	movl	-256(%rbp), %eax
	cmpq	$4, %rax
	ja	.LBB1_1033
# BB#1010:
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_1012:
	movq	-152(%rbp), %r8
	movzbl	32(%r8), %eax
	addq	$32, %r8
	cmpl	$94, %eax
	movl	$.L.str.36, %eax
	movl	$.L.str.37, %r9d
	cmoveq	%rax, %r9
	movq	-224(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$12, %edi
	movl	$6, %esi
	movl	$.L.str.38, %edx
	jmp	.LBB1_1013
.LBB1_120:
	movq	-152(%rbp), %rax
	andw	$-9, 42(%rax)
	movq	-152(%rbp), %rax
	andw	$-17, 42(%rax)
	jmp	.LBB1_33
.LBB1_7:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_8
# BB#9:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_10
.LBB1_360:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_361
# BB#362:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_363
.LBB1_552:
	movl	$1, -900(%rbp)
	movq	-152(%rbp), %rax
	jmp	.LBB1_553
.LBB1_561:                              #   in Loop: Header=BB1_553 Depth=1
	movzbl	%al, %eax
	movl	%eax, -900(%rbp)
	movq	-192(%rbp), %rax
.LBB1_553:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_555 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_564
# BB#554:                               #   in Loop: Header=BB1_553 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB1_555
	.align	16, 0x90
.LBB1_556:                              #   in Loop: Header=BB1_555 Depth=2
	movq	-176(%rbp), %rax
.LBB1_555:                              #   Parent Loop BB1_553 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_556
# BB#557:                               #   in Loop: Header=BB1_553 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_562
# BB#558:                               #   in Loop: Header=BB1_553 Depth=1
	cmpl	$0, -900(%rbp)
	je	.LBB1_559
# BB#560:                               #   in Loop: Header=BB1_553 Depth=1
	movq	-176(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB1_561
.LBB1_562:                              #   in Loop: Header=BB1_553 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB1_570
# BB#563:                               #   in Loop: Header=BB1_553 Depth=1
	movq	-176(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB1_574
	jmp	.LBB1_564
.LBB1_570:                              #   in Loop: Header=BB1_553 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB1_571
# BB#572:                               #   in Loop: Header=BB1_553 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB1_573
.LBB1_559:                              #   in Loop: Header=BB1_553 Depth=1
	xorl	%eax, %eax
	jmp	.LBB1_561
.LBB1_571:                              #   in Loop: Header=BB1_553 Depth=1
	xorl	%eax, %eax
.LBB1_573:                              #   in Loop: Header=BB1_553 Depth=1
	testb	%al, %al
	jne	.LBB1_564
.LBB1_574:                              #   in Loop: Header=BB1_553 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB1_553
.LBB1_394:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_395
# BB#396:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_397
.LBB1_564:
	movq	-192(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_694
# BB#565:
	movq	$0, -896(%rbp)
	movq	$0, -880(%rbp)
	movl	$1, -900(%rbp)
	jmp	.LBB1_566
.LBB1_579:                              #   in Loop: Header=BB1_566 Depth=1
	movzbl	%al, %eax
	movl	%eax, -900(%rbp)
.LBB1_566:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_568 Depth 2
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_588
# BB#567:                               #   in Loop: Header=BB1_566 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB1_568
	.align	16, 0x90
.LBB1_569:                              #   in Loop: Header=BB1_568 Depth=2
	movq	-176(%rbp), %rax
.LBB1_568:                              #   Parent Loop BB1_566 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_569
# BB#575:                               #   in Loop: Header=BB1_566 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_580
# BB#576:                               #   in Loop: Header=BB1_566 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -880(%rbp)
	cmpl	$0, -900(%rbp)
	je	.LBB1_577
# BB#578:                               #   in Loop: Header=BB1_566 Depth=1
	movq	-176(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB1_579
.LBB1_580:                              #   in Loop: Header=BB1_566 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB1_582
# BB#581:                               #   in Loop: Header=BB1_566 Depth=1
	movq	-176(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB1_566
	jmp	.LBB1_586
.LBB1_582:                              #   in Loop: Header=BB1_566 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB1_583
# BB#584:                               #   in Loop: Header=BB1_566 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB1_585
.LBB1_577:                              #   in Loop: Header=BB1_566 Depth=1
	xorl	%eax, %eax
	jmp	.LBB1_579
.LBB1_583:                              #   in Loop: Header=BB1_566 Depth=1
	xorl	%eax, %eax
.LBB1_585:                              #   in Loop: Header=BB1_566 Depth=1
	testb	%al, %al
	je	.LBB1_566
	jmp	.LBB1_586
.LBB1_150:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_151:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$44, %ecx
	je	.LBB1_153
# BB#152:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	sete	%al
.LBB1_153:
	movzbl	%al, %eax
	movl	%eax, -140(%rbp)
	testb	%al, %al
	je	.LBB1_223
# BB#154:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB1_155
	.align	16, 0x90
.LBB1_156:                              #   in Loop: Header=BB1_155 Depth=1
	movq	-120(%rbp), %rax
.LBB1_155:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_156
# BB#157:
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	je	.LBB1_160
# BB#158:
	movq	-56(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$12, %edi
	movl	$10, %esi
	movl	$.L.str.50, %edx
	jmp	.LBB1_159
.LBB1_223:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_224
# BB#225:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_226
.LBB1_160:
	movzbl	zz_lengths+13(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_161
# BB#162:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_163
.LBB1_518:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
.LBB1_520:
	movq	%rax, -192(%rbp)
	jmp	.LBB1_521
	.align	16, 0x90
.LBB1_522:                              #   in Loop: Header=BB1_521 Depth=1
	movq	-176(%rbp), %rax
.LBB1_521:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_522
.LBB1_523:
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	movslq	-156(%rbp), %rcx
	movl	48(%rax,%rcx,4), %eax
	movq	-152(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	jmp	.LBB1_403
.LBB1_971:
	movl	-228(%rbp), %eax
	movslq	-156(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-232(%rbp), %eax
	movslq	-156(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-152(%rbp), %rax
	movb	$1, 41(%rax)
	movq	-152(%rbp), %rax
	jmp	.LBB1_972
.LBB1_989:                              #   in Loop: Header=BB1_972 Depth=1
	movq	-192(%rbp), %rax
.LBB1_972:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_974 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_1035
# BB#973:                               #   in Loop: Header=BB1_972 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB1_974
	.align	16, 0x90
.LBB1_975:                              #   in Loop: Header=BB1_974 Depth=2
	movq	-176(%rbp), %rax
.LBB1_974:                              #   Parent Loop BB1_972 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_975
# BB#976:                               #   in Loop: Header=BB1_972 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_978
# BB#977:                               #   in Loop: Header=BB1_972 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_978:                              #   in Loop: Header=BB1_972 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB1_982
# BB#979:                               #   in Loop: Header=BB1_972 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	je	.LBB1_982
# BB#980:                               #   in Loop: Header=BB1_972 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	je	.LBB1_982
# BB#981:                               #   in Loop: Header=BB1_972 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	jne	.LBB1_989
.LBB1_982:                              #   in Loop: Header=BB1_972 Depth=1
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	movslq	-156(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	48(%rdx,%rcx,4), %edx
	cmpl	48(%rax,%rcx,4), %edx
	jge	.LBB1_984
# BB#983:                               #   in Loop: Header=BB1_972 Depth=1
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	jmp	.LBB1_985
.LBB1_984:                              #   in Loop: Header=BB1_972 Depth=1
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
.LBB1_985:                              #   in Loop: Header=BB1_972 Depth=1
	movl	48(%rcx,%rax,4), %eax
	movslq	-156(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-176(%rbp), %rdx
	cmpl	56(%rdx,%rax,4), %ecx
	jge	.LBB1_987
# BB#986:                               #   in Loop: Header=BB1_972 Depth=1
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	jmp	.LBB1_988
.LBB1_987:                              #   in Loop: Header=BB1_972 Depth=1
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
.LBB1_988:                              #   in Loop: Header=BB1_972 Depth=1
	movl	56(%rcx,%rax,4), %eax
	movslq	-156(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	jmp	.LBB1_989
.LBB1_927:
	movl	-228(%rbp), %eax
	movslq	-156(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-232(%rbp), %eax
	movslq	-156(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-152(%rbp), %rax
	movb	$1, 41(%rax)
	movq	-152(%rbp), %rax
	jmp	.LBB1_928
.LBB1_945:                              #   in Loop: Header=BB1_928 Depth=1
	movq	-192(%rbp), %rax
.LBB1_928:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_930 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_946
# BB#929:                               #   in Loop: Header=BB1_928 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB1_930
	.align	16, 0x90
.LBB1_931:                              #   in Loop: Header=BB1_930 Depth=2
	movq	-176(%rbp), %rax
.LBB1_930:                              #   Parent Loop BB1_928 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_931
# BB#932:                               #   in Loop: Header=BB1_928 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_934
# BB#933:                               #   in Loop: Header=BB1_928 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_934:                              #   in Loop: Header=BB1_928 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB1_938
# BB#935:                               #   in Loop: Header=BB1_928 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	je	.LBB1_938
# BB#936:                               #   in Loop: Header=BB1_928 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	je	.LBB1_938
# BB#937:                               #   in Loop: Header=BB1_928 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	jne	.LBB1_945
.LBB1_938:                              #   in Loop: Header=BB1_928 Depth=1
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
	movl	-228(%rbp), %ecx
	movslq	-156(%rbp), %rdx
	cmpl	48(%rax,%rdx,4), %ecx
	jge	.LBB1_940
# BB#939:                               #   in Loop: Header=BB1_928 Depth=1
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB1_941
.LBB1_940:                              #   in Loop: Header=BB1_928 Depth=1
	movl	-228(%rbp), %eax
.LBB1_941:                              #   in Loop: Header=BB1_928 Depth=1
	movl	%eax, -228(%rbp)
	movl	-232(%rbp), %eax
	movslq	-156(%rbp), %rcx
	movq	-176(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB1_943
# BB#942:                               #   in Loop: Header=BB1_928 Depth=1
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB1_944
.LBB1_943:                              #   in Loop: Header=BB1_928 Depth=1
	movl	-232(%rbp), %eax
.LBB1_944:                              #   in Loop: Header=BB1_928 Depth=1
	movl	%eax, -232(%rbp)
	jmp	.LBB1_945
.LBB1_432:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-152(%rbp), %rdx
	imull	64(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%ecx, %esi
	sarl	$7, %esi
	movl	%esi, 48(%rdx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-152(%rbp), %rdx
	imull	64(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%ecx, %esi
	sarl	$7, %esi
	movl	%esi, 56(%rdx,%rax,4)
	movq	-152(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB1_1035
# BB#433:
	movzbl	zz_lengths+136(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_435
# BB#434:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_438
.LBB1_408:
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rdx
	xorl	%esi, %esi
	callq	MinSize
	movq	%rax, -176(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_410
# BB#409:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_413
.LBB1_37:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_38
# BB#39:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_40
.LBB1_44:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_45
# BB#46:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_47
.LBB1_224:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_226:
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
	je	.LBB1_229
# BB#227:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_229
# BB#228:
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
.LBB1_229:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-136(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_232
# BB#230:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_232
# BB#231:
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
	jmp	.LBB1_232
.LBB1_161:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_163:
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
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-56(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-88(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-56(%rbp), %rax
	andl	36(%rax), %esi
	movq	-88(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-88(%rbp), %rax
	andl	$-4194305, 40(%rax)     # imm = 0xFFFFFFFFFFBFFFFF
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_164
# BB#165:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_166
.LBB1_164:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_166:
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
	je	.LBB1_169
# BB#167:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_169
# BB#168:
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
.LBB1_169:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_172
# BB#170:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_172
# BB#171:
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
.LBB1_172:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_173
# BB#174:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_175
.LBB1_173:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_175:
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
	je	.LBB1_178
# BB#176:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_178
# BB#177:
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
.LBB1_178:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-136(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_181
# BB#179:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_181
# BB#180:
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
.LBB1_181:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB1_182
.LBB1_183:                              #   in Loop: Header=BB1_182 Depth=1
	movq	-72(%rbp), %rax
.LBB1_182:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_183
# BB#184:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$15, %eax
	je	.LBB1_186
# BB#185:
	movq	-56(%rbp), %rbx
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
.LBB1_186:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$15, %eax
	je	.LBB1_188
# BB#187:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.52, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_188:
	movq	-88(%rbp), %rax
	andl	$-528482305, 40(%rax)   # imm = 0xFFFFFFFFE07FFFFF
	movq	-88(%rbp), %rax
	andl	$-4190209, 40(%rax)     # imm = 0xFFFFFFFFFFC00FFF
	movq	-88(%rbp), %rax
	movl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB1_189
.LBB1_194:                              #   in Loop: Header=BB1_189 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
.LBB1_189:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_191 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB1_200
# BB#190:                               #   in Loop: Header=BB1_189 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB1_191
	.align	16, 0x90
.LBB1_192:                              #   in Loop: Header=BB1_191 Depth=2
	movq	-80(%rbp), %rax
.LBB1_191:                              #   Parent Loop BB1_189 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_192
# BB#193:                               #   in Loop: Header=BB1_189 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	je	.LBB1_194
# BB#195:                               #   in Loop: Header=BB1_189 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB1_200
# BB#196:                               #   in Loop: Header=BB1_189 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	je	.LBB1_200
# BB#197:                               #   in Loop: Header=BB1_189 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	je	.LBB1_200
# BB#198:                               #   in Loop: Header=BB1_189 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	je	.LBB1_200
# BB#199:                               #   in Loop: Header=BB1_189 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB1_189
.LBB1_200:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$1048575, %r14d         # imm = 0xFFFFF
	movl	$-1048576, %ebx         # imm = 0xFFFFFFFFFFF00000
	jmp	.LBB1_201
.LBB1_222:                              #   in Loop: Header=BB1_201 Depth=1
	movq	-88(%rbp), %rax
	movl	40(%rax), %ecx
	leal	1(%rcx), %edx
	andl	$4095, %edx             # imm = 0xFFF
	andl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	orl	%edx, %ecx
	movl	%ecx, 40(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB1_201:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_203 Depth 2
	movq	-64(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB1_232
# BB#202:                               #   in Loop: Header=BB1_201 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB1_203
	.align	16, 0x90
.LBB1_204:                              #   in Loop: Header=BB1_203 Depth=2
	movq	-80(%rbp), %rax
.LBB1_203:                              #   Parent Loop BB1_201 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_204
# BB#205:                               #   in Loop: Header=BB1_201 Depth=1
	movzbl	zz_lengths+45(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_206
# BB#207:                               #   in Loop: Header=BB1_201 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_208
.LBB1_206:                              #   in Loop: Header=BB1_201 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_208:                              #   in Loop: Header=BB1_201 Depth=1
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
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-112(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%ebx, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	andl	%ebx, %eax
	movq	-112(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_210
# BB#209:                               #   in Loop: Header=BB1_201 Depth=1
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
.LBB1_210:                              #   in Loop: Header=BB1_201 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	-112(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_213
# BB#211:                               #   in Loop: Header=BB1_201 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_213
# BB#212:                               #   in Loop: Header=BB1_201 Depth=1
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
.LBB1_213:                              #   in Loop: Header=BB1_201 Depth=1
	movq	-80(%rbp), %rdi
	callq	DisposeObject
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_214
# BB#215:                               #   in Loop: Header=BB1_201 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_216
.LBB1_214:                              #   in Loop: Header=BB1_201 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_216:                              #   in Loop: Header=BB1_201 Depth=1
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
	movq	-112(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_219
# BB#217:                               #   in Loop: Header=BB1_201 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_219
# BB#218:                               #   in Loop: Header=BB1_201 Depth=1
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
.LBB1_219:                              #   in Loop: Header=BB1_201 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_222
# BB#220:                               #   in Loop: Header=BB1_201 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_222
# BB#221:                               #   in Loop: Header=BB1_201 Depth=1
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
	jmp	.LBB1_222
.LBB1_232:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$44, %ecx
	je	.LBB1_234
# BB#233:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	sete	%al
.LBB1_234:
	movzbl	%al, %eax
	movl	%eax, -144(%rbp)
	testb	%al, %al
	je	.LBB1_301
# BB#235:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB1_236
	.align	16, 0x90
.LBB1_237:                              #   in Loop: Header=BB1_236 Depth=1
	movq	-128(%rbp), %rax
.LBB1_236:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_237
# BB#238:
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$15, %eax
	je	.LBB1_240
# BB#239:
	movq	-56(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$12, %edi
	movl	$12, %esi
	movl	$.L.str.53, %edx
.LBB1_159:                              # %BuildSpanner.exit
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movl	$0, -44(%rbp)
	jmp	.LBB1_311
.LBB1_301:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_302
# BB#303:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_304
.LBB1_240:
	movzbl	zz_lengths+14(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_241
# BB#242:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_243
.LBB1_112:
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$10, %eax
	jae	.LBB1_119
# BB#113:
	movzbl	zz_lengths+123(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_115
# BB#114:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_118
.LBB1_8:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_10:
	movq	-152(%rbp), %rax
	movb	41(%rax), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	jmp	.LBB1_11
.LBB1_361:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_363:
	movq	zz_hold(%rip), %rax
	movb	$-118, 32(%rax)
	jmp	.LBB1_364
.LBB1_395:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_397:
	movq	zz_hold(%rip), %rax
	movb	$-119, 32(%rax)
.LBB1_364:
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -184(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_366
# BB#365:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_369
.LBB1_366:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_367
# BB#368:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_369
.LBB1_367:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_369:
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
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_372
# BB#370:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_372
# BB#371:
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
.LBB1_372:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-184(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1035
# BB#373:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1035
# BB#374:
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
	jmp	.LBB1_1035
.LBB1_410:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_411
# BB#412:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_413
.LBB1_302:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_304:
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
	je	.LBB1_307
# BB#305:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_307
# BB#306:
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
.LBB1_307:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-136(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_310
# BB#308:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_310
# BB#309:
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
	jmp	.LBB1_310
.LBB1_107:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_108
# BB#109:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_110
.LBB1_426:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_427:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_1035
.LBB1_241:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_243:
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
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-56(%rbp), %rax
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
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-96(%rbp), %rax
	andl	$-4194305, 40(%rax)     # imm = 0xFFFFFFFFFFBFFFFF
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_244
# BB#245:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_246
.LBB1_244:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_246:
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
	je	.LBB1_249
# BB#247:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_249
# BB#248:
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
.LBB1_249:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_252
# BB#250:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_252
# BB#251:
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
.LBB1_252:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_253
# BB#254:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_255
.LBB1_253:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_255:
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
	je	.LBB1_258
# BB#256:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_258
# BB#257:
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
.LBB1_258:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-136(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_261
# BB#259:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_261
# BB#260:
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
.LBB1_261:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB1_262
.LBB1_263:                              #   in Loop: Header=BB1_262 Depth=1
	movq	-72(%rbp), %rax
.LBB1_262:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_263
# BB#264:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	je	.LBB1_266
# BB#265:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.52, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_266:
	movq	-96(%rbp), %rax
	andl	$-528482305, 40(%rax)   # imm = 0xFFFFFFFFE07FFFFF
	movq	-96(%rbp), %rax
	andl	$-4190209, 40(%rax)     # imm = 0xFFFFFFFFFFC00FFF
	movq	-96(%rbp), %rax
	movl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB1_267
.LBB1_272:                              #   in Loop: Header=BB1_267 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
.LBB1_267:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_269 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB1_278
# BB#268:                               #   in Loop: Header=BB1_267 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB1_269
	.align	16, 0x90
.LBB1_270:                              #   in Loop: Header=BB1_269 Depth=2
	movq	-80(%rbp), %rax
.LBB1_269:                              #   Parent Loop BB1_267 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_270
# BB#271:                               #   in Loop: Header=BB1_267 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	je	.LBB1_272
# BB#273:                               #   in Loop: Header=BB1_267 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB1_278
# BB#274:                               #   in Loop: Header=BB1_267 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	je	.LBB1_278
# BB#275:                               #   in Loop: Header=BB1_267 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$43, %eax
	je	.LBB1_278
# BB#276:                               #   in Loop: Header=BB1_267 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	je	.LBB1_278
# BB#277:                               #   in Loop: Header=BB1_267 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB1_267
.LBB1_278:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$1048575, %r14d         # imm = 0xFFFFF
	movl	$-1048576, %ebx         # imm = 0xFFFFFFFFFFF00000
	jmp	.LBB1_279
.LBB1_300:                              #   in Loop: Header=BB1_279 Depth=1
	movq	-96(%rbp), %rax
	movl	40(%rax), %ecx
	leal	1(%rcx), %edx
	andl	$4095, %edx             # imm = 0xFFF
	andl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	orl	%edx, %ecx
	movl	%ecx, 40(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB1_279:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_281 Depth 2
	movq	-64(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB1_310
# BB#280:                               #   in Loop: Header=BB1_279 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB1_281
	.align	16, 0x90
.LBB1_282:                              #   in Loop: Header=BB1_281 Depth=2
	movq	-80(%rbp), %rax
.LBB1_281:                              #   Parent Loop BB1_279 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_282
# BB#283:                               #   in Loop: Header=BB1_279 Depth=1
	movzbl	zz_lengths+46(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_284
# BB#285:                               #   in Loop: Header=BB1_279 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_286
.LBB1_284:                              #   in Loop: Header=BB1_279 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_286:                              #   in Loop: Header=BB1_279 Depth=1
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
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-112(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%ebx, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	andl	%ebx, %eax
	movq	-112(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_288
# BB#287:                               #   in Loop: Header=BB1_279 Depth=1
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
.LBB1_288:                              #   in Loop: Header=BB1_279 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	-112(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_291
# BB#289:                               #   in Loop: Header=BB1_279 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_291
# BB#290:                               #   in Loop: Header=BB1_279 Depth=1
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
.LBB1_291:                              #   in Loop: Header=BB1_279 Depth=1
	movq	-80(%rbp), %rdi
	callq	DisposeObject
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_292
# BB#293:                               #   in Loop: Header=BB1_279 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_294
.LBB1_292:                              #   in Loop: Header=BB1_279 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_294:                              #   in Loop: Header=BB1_279 Depth=1
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
	movq	-112(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_297
# BB#295:                               #   in Loop: Header=BB1_279 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_297
# BB#296:                               #   in Loop: Header=BB1_279 Depth=1
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
.LBB1_297:                              #   in Loop: Header=BB1_279 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_300
# BB#298:                               #   in Loop: Header=BB1_279 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_300
# BB#299:                               #   in Loop: Header=BB1_279 Depth=1
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
	jmp	.LBB1_300
.LBB1_310:
	movl	$1, -44(%rbp)
.LBB1_311:                              # %BuildSpanner.exit
	cmpl	$0, -44(%rbp)
	je	.LBB1_312
.LBB1_318:
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$44, %eax
	je	.LBB1_320
# BB#319:
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$42, %eax
	jne	.LBB1_327
.LBB1_320:
	cmpl	$1, -156(%rbp)
	jne	.LBB1_327
# BB#321:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_322
	.align	16, 0x90
.LBB1_323:                              #   in Loop: Header=BB1_322 Depth=1
	movq	-208(%rbp), %rax
.LBB1_322:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_323
# BB#324:
	movq	-208(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	je	.LBB1_326
# BB#325:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_326:
	movq	-208(%rbp), %rdi
	leaq	-228(%rbp), %rdx
	leaq	-232(%rbp), %rcx
	xorl	%esi, %esi
	callq	SpannerAvailableSpace
	movl	$8388607, -832(%rbp)    # imm = 0x7FFFFF
	movl	-228(%rbp), %eax
	addl	-232(%rbp), %eax
	movl	%eax, -828(%rbp)
	movl	$8388607, -824(%rbp)    # imm = 0x7FFFFF
	movq	-208(%rbp), %rdi
	leaq	-832(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -208(%rbp)
	orb	$64, 42(%rax)
.LBB1_327:
	cmpl	$0, -156(%rbp)
	je	.LBB1_328
# BB#329:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_330
.LBB1_328:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_330
	.align	16, 0x90
.LBB1_331:                              #   in Loop: Header=BB1_330 Depth=1
	movq	-176(%rbp), %rax
.LBB1_330:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_331
# BB#332:
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB1_334
# BB#333:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	jne	.LBB1_336
.LBB1_334:
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	jne	.LBB1_338
# BB#335:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$14, %eax
	je	.LBB1_338
.LBB1_336:
	cmpl	$0, -156(%rbp)
	jne	.LBB1_33
# BB#337:
	movq	-152(%rbp), %rbx
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
	jmp	.LBB1_33
.LBB1_338:
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB1_340
# BB#339:
	cmpl	$1, -156(%rbp)
	je	.LBB1_33
.LBB1_340:
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$46, %eax
	jne	.LBB1_342
# BB#341:
	cmpl	$0, -156(%rbp)
	je	.LBB1_33
.LBB1_342:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	je	.LBB1_345
# BB#343:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$14, %eax
	je	.LBB1_345
# BB#344:
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
.LBB1_402:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %ecx
	movq	-152(%rbp), %rdx
	movl	%ecx, 48(%rdx,%rax,4)
.LBB1_403:
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
.LBB1_902:
	movq	-152(%rbp), %rdx
	movl	%ecx, 56(%rdx,%rax,4)
	jmp	.LBB1_1035
.LBB1_345:
	movq	-176(%rbp), %rax
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
	movq	-176(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jne	.LBB1_33
# BB#346:
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	leaq	-228(%rbp), %rdx
	leaq	-232(%rbp), %rcx
	callq	SpannerAvailableSpace
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	$0, 48(%rcx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	xorl	%eax, %eax
	cmpl	-228(%rbp), %edx
	js	.LBB1_348
# BB#347:
	movslq	-156(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movl	48(%rdx,%rcx,4), %eax
	addl	56(%rdx,%rcx,4), %eax
	subl	-228(%rbp), %eax
	jmp	.LBB1_348
.LBB1_312:
	movq	-152(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -208(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_314
# BB#313:
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
.LBB1_314:
	movq	%rax, xx_tmp(%rip)
	movq	-208(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_317
# BB#315:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_317
# BB#316:
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
.LBB1_317:
	movq	-208(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	$0, 56(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.LBB1_1035
.LBB1_1011:
	movq	-152(%rbp), %r8
	movzbl	32(%r8), %eax
	addq	$32, %r8
	cmpl	$94, %eax
	movl	$.L.str.36, %eax
	movl	$.L.str.37, %r9d
	cmoveq	%rax, %r9
	movq	-224(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$12, %edi
	movl	$5, %esi
	movl	$.L.str.35, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-152(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.LBB1_1033
.LBB1_1014:
	movq	-152(%rbp), %r8
	movzbl	32(%r8), %eax
	addq	$32, %r8
	cmpl	$94, %eax
	movl	$.L.str.36, %eax
	movl	$.L.str.37, %r9d
	cmoveq	%rax, %r9
	movq	-224(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$12, %edi
	movl	$7, %esi
	movl	$.L.str.40, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-152(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.LBB1_1031
.LBB1_1015:
	movq	-152(%rbp), %r8
	movzbl	32(%r8), %eax
	addq	$32, %r8
	cmpl	$94, %eax
	movl	$.L.str.36, %eax
	movl	$.L.str.37, %r9d
	cmoveq	%rax, %r9
	movq	-224(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$12, %edi
	movl	$8, %esi
	movl	$.L.str.41, %edx
.LBB1_1013:
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-176(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-176(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-176(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-176(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.LBB1_1030
.LBB1_1016:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1017
.LBB1_1018:                             #   in Loop: Header=BB1_1017 Depth=1
	movq	-176(%rbp), %rax
.LBB1_1017:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1018
# BB#1019:
	movl	-240(%rbp), %eax
	movq	-176(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	-248(%rbp), %eax
	movq	-176(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movl	-244(%rbp), %eax
	movq	-176(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movl	-252(%rbp), %eax
	movq	-176(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movl	-248(%rbp), %eax
	subl	-240(%rbp), %eax
	shll	$2, %eax
	leal	(%rax,%rax,4), %eax
	movl	%eax, -228(%rbp)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB1_1021
# BB#1020:
	movl	-228(%rbp), %ecx
.LBB1_1021:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_1024
# BB#1022:
	xorl	%eax, %eax
	cmpl	$0, -228(%rbp)
	jle	.LBB1_1024
# BB#1023:
	movl	-228(%rbp), %eax
.LBB1_1024:
	movl	%eax, -228(%rbp)
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movq	-152(%rbp), %rax
	movl	%ecx, 56(%rax)
	movq	-152(%rbp), %rax
	movl	%ecx, 48(%rax)
	movl	-252(%rbp), %eax
	subl	-244(%rbp), %eax
	shll	$2, %eax
	leal	(%rax,%rax,4), %eax
	movl	%eax, -228(%rbp)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB1_1026
# BB#1025:
	movl	-228(%rbp), %ecx
.LBB1_1026:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_1029
# BB#1027:
	xorl	%eax, %eax
	cmpl	$0, -228(%rbp)
	jle	.LBB1_1029
# BB#1028:
	movl	-228(%rbp), %eax
.LBB1_1029:
	movl	%eax, -228(%rbp)
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movq	-152(%rbp), %rax
	movl	%ecx, 60(%rax)
	movq	-152(%rbp), %rax
	movl	%ecx, 52(%rax)
.LBB1_1030:
	movq	-152(%rbp), %rax
	movb	$1, 41(%rax)
.LBB1_1031:
	movq	-304(%rbp), %rdi
	callq	fclose
	cmpl	$0, -296(%rbp)
	je	.LBB1_1033
# BB#1032:
	movl	$.L.str.39, %edi
	callq	remove
.LBB1_1033:
	movq	-224(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB1_1035
.LBB1_38:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_40:
	movq	zz_hold(%rip), %rax
	movb	$-121, 32(%rax)
.LBB1_11:
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -184(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_13
# BB#12:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_16
.LBB1_13:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_14
# BB#15:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_16
.LBB1_14:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_16:
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
	movq	-184(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_19
# BB#17:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_19
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
.LBB1_19:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-152(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_22
# BB#20:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_22
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
	jmp	.LBB1_22
.LBB1_45:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_47:
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
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-152(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-176(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-152(%rbp), %rax
	andl	36(%rax), %esi
	movq	-176(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-152(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_49
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
.LBB1_49:
	movq	%rax, xx_tmp(%rip)
	movq	-176(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_52
# BB#50:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_52
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
.LBB1_52:
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$14, %eax
	jae	.LBB1_73
# BB#53:
	movq	-152(%rbp), %rax
	movzbl	40(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_55
# BB#54:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_58
.LBB1_73:
	movzbl	zz_lengths+120(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_75
# BB#74:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_78
.LBB1_55:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_56
# BB#57:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_58
.LBB1_75:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_76
# BB#77:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_78
.LBB1_435:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_436
# BB#437:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_438
.LBB1_119:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_33
.LBB1_411:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_413:
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
	movq	-152(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-176(%rbp), %rdi
	movq	-152(%rbp), %rdx
	addq	$88, %rdx
	movl	$1, %esi
	callq	MinSize
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rcx
	movl	76(%rcx), %r9d
	leaq	48(%rcx), %rdi
	leaq	56(%rcx), %rsi
	leaq	52(%rcx), %rdx
	leaq	60(%rcx), %rcx
	movq	%rax, %r8
	callq	RotateSize
	jmp	.LBB1_1035
.LBB1_115:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_116
# BB#117:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_118
.LBB1_108:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_110:
	movq	zz_hold(%rip), %rax
	movb	$121, 32(%rax)
	jmp	.LBB1_111
.LBB1_56:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_58:
	movq	-152(%rbp), %rax
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
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rcx, 88(%rax)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_59
.LBB1_60:                               #   in Loop: Header=BB1_59 Depth=1
	movq	-208(%rbp), %rax
.LBB1_59:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_60
# BB#61:
	movq	-152(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-208(%rbp), %rsi
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %edx
	callq	CrossMake
	movq	-184(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_63
# BB#62:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_66
.LBB1_63:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_64
# BB#65:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_66
.LBB1_64:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_66:
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
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_69
# BB#67:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_69
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
.LBB1_69:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-184(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_72
# BB#70:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_72
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
.LBB1_72:
	movq	-152(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB1_100
.LBB1_478:
	movl	$0, -80(%rbp)
.LBB1_485:                              # %KernLength.exit
	movl	-80(%rbp), %eax
	movl	%eax, -864(%rbp)
	movslq	-156(%rbp), %rcx
	movq	-152(%rbp), %rdx
	addl	%eax, 56(%rdx,%rcx,4)
	jmp	.LBB1_1035
.LBB1_76:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_78:
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
	movq	%rax, -184(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_80
# BB#79:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_83
.LBB1_80:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_81
# BB#82:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_83
.LBB1_81:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_83:
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
	movq	-184(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_86
# BB#84:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_86
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
.LBB1_86:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-152(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_89
# BB#87:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_89
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
.LBB1_89:
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_91
# BB#90:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_94
.LBB1_91:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_92
# BB#93:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_94
.LBB1_92:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_94:
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
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_97
# BB#95:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_97
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
.LBB1_97:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-184(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_100
# BB#98:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_100
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
.LBB1_100:
	movq	-176(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	$0, 56(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.LBB1_33
.LBB1_436:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_438:
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
	movq	%rax, -184(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_440
# BB#439:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_443
.LBB1_440:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_441
# BB#442:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_443
.LBB1_441:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_443:
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
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_446
# BB#444:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_446
# BB#445:
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
.LBB1_446:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-184(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_449
# BB#447:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_449
# BB#448:
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
.LBB1_449:
	movq	-152(%rbp), %rax
	andw	$-2, 42(%rax)
	jmp	.LBB1_1035
.LBB1_116:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_118:
	movq	zz_hold(%rip), %rax
	movb	$123, 32(%rax)
.LBB1_111:
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -184(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, 80(%rax)
.LBB1_22:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_24
# BB#23:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_27
.LBB1_24:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_25
# BB#26:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_27
.LBB1_25:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_27:
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
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_30
# BB#28:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_30
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
.LBB1_30:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-184(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_33
# BB#31:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_33
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
.LBB1_33:
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	$0, 56(%rcx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	$0, 48(%rcx,%rax,4)
	jmp	.LBB1_1035
.LBB1_348:
	movslq	-156(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	jmp	.LBB1_1035
.LBB1_586:
	cmpq	$0, -880(%rbp)
	jne	.LBB1_588
# BB#587:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_588:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_666 Depth 2
                                        #       Child Loop BB1_668 Depth 3
	movq	-192(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_681
# BB#589:                               #   in Loop: Header=BB1_588 Depth=1
	movq	-880(%rbp), %rax
	movzwl	44(%rax), %eax
	testb	$-32, %ah
	je	.LBB1_665
# BB#590:                               #   in Loop: Header=BB1_588 Depth=1
	movq	-880(%rbp), %rax
	movzbl	42(%rax), %eax
	testl	%eax, %eax
	jg	.LBB1_593
# BB#591:                               #   in Loop: Header=BB1_588 Depth=1
	movq	-880(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$2, %eax
	jne	.LBB1_665
# BB#592:                               #   in Loop: Header=BB1_588 Depth=1
	movq	-880(%rbp), %rax
	movswl	46(%rax), %eax
	cmpl	$4097, %eax             # imm = 0x1001
	jl	.LBB1_665
.LBB1_593:                              #   in Loop: Header=BB1_588 Depth=1
	cmpq	$0, -896(%rbp)
	jne	.LBB1_604
# BB#594:                               #   in Loop: Header=BB1_588 Depth=1
	movzbl	zz_lengths+19(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_596
# BB#595:                               #   in Loop: Header=BB1_588 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_599
.LBB1_596:                              #   in Loop: Header=BB1_588 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_597
# BB#598:                               #   in Loop: Header=BB1_588 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_599
.LBB1_597:                              #   in Loop: Header=BB1_588 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_599:                              #   in Loop: Header=BB1_588 Depth=1
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
	movq	%rax, -896(%rbp)
	andb	$-9, 43(%rax)
	movq	-152(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_601
# BB#600:                               #   in Loop: Header=BB1_588 Depth=1
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
.LBB1_601:                              #   in Loop: Header=BB1_588 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	-896(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_604
# BB#602:                               #   in Loop: Header=BB1_588 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_604
# BB#603:                               #   in Loop: Header=BB1_588 Depth=1
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
.LBB1_604:                              #   in Loop: Header=BB1_588 Depth=1
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_606
# BB#605:                               #   in Loop: Header=BB1_588 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_609
.LBB1_606:                              #   in Loop: Header=BB1_588 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_607
# BB#608:                               #   in Loop: Header=BB1_588 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_609
.LBB1_607:                              #   in Loop: Header=BB1_588 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_609:                              #   in Loop: Header=BB1_588 Depth=1
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
	movq	%rax, -872(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -936(%rbp)
	movq	-880(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -944(%rbp)
	movq	-872(%rbp), %rax
	movq	%rax, -952(%rbp)
	movq	-936(%rbp), %rax
	cmpq	-944(%rbp), %rax
	je	.LBB1_618
# BB#610:                               #   in Loop: Header=BB1_588 Depth=1
	movq	-936(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_612
# BB#611:                               #   in Loop: Header=BB1_588 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_612:                              #   in Loop: Header=BB1_588 Depth=1
	movq	-936(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-944(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_615
# BB#613:                               #   in Loop: Header=BB1_588 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_615
# BB#614:                               #   in Loop: Header=BB1_588 Depth=1
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
.LBB1_615:                              #   in Loop: Header=BB1_588 Depth=1
	movq	-936(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-952(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_618
# BB#616:                               #   in Loop: Header=BB1_588 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_618
# BB#617:                               #   in Loop: Header=BB1_588 Depth=1
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
.LBB1_618:                              #   in Loop: Header=BB1_588 Depth=1
	movq	-152(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-872(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-152(%rbp), %rax
	movzbl	65(%rax), %eax
	andl	$1, %eax
	movq	-872(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-152(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-872(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-152(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-872(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-152(%rbp), %rax
	movzwl	64(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-872(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-152(%rbp), %rax
	movw	66(%rax), %ax
	movq	-872(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-152(%rbp), %rax
	movb	68(%rax), %al
	andb	$3, %al
	movq	-872(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-152(%rbp), %rax
	movb	68(%rax), %al
	movq	-872(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-152(%rbp), %rax
	movb	68(%rax), %al
	movq	-872(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-152(%rbp), %rax
	movb	64(%rax), %al
	movq	-872(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-152(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-872(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-152(%rbp), %rax
	movzbl	69(%rax), %eax
	andl	$1, %eax
	movq	-872(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-152(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-872(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-152(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-872(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-152(%rbp), %rax
	movzwl	68(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-872(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-152(%rbp), %rax
	movw	70(%rax), %ax
	movq	-872(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-152(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	76(%rax), %ecx
	movq	-872(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-152(%rbp), %rax
	movq	-872(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	76(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-152(%rbp), %rax
	movq	-872(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	76(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-152(%rbp), %rax
	movq	-872(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	76(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-152(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	76(%rax), %ecx
	movq	-872(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-152(%rbp), %rax
	movq	-872(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	76(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-152(%rbp), %rax
	movb	64(%rax), %al
	andb	$1, %al
	movq	-872(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-152(%rbp), %rax
	movb	64(%rax), %al
	movq	-872(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-152(%rbp), %rax
	movb	64(%rax), %al
	movq	-872(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-152(%rbp), %rax
	movb	64(%rax), %al
	movq	-872(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-152(%rbp), %rax
	movw	72(%rax), %ax
	movq	-872(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-152(%rbp), %rax
	movw	74(%rax), %ax
	movq	-872(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-152(%rbp), %rax
	movb	64(%rax), %al
	shrb	$2, %al
	andb	$1, %al
	movq	-872(%rbp), %rcx
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
	jne	.LBB1_620
# BB#619:                               #   in Loop: Header=BB1_588 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_623
.LBB1_620:                              #   in Loop: Header=BB1_588 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_621
# BB#622:                               #   in Loop: Header=BB1_588 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_623
.LBB1_621:                              #   in Loop: Header=BB1_588 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_623:                              #   in Loop: Header=BB1_588 Depth=1
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
	movq	-896(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_626
# BB#624:                               #   in Loop: Header=BB1_588 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_626
# BB#625:                               #   in Loop: Header=BB1_588 Depth=1
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
.LBB1_626:                              #   in Loop: Header=BB1_588 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-872(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_629
# BB#627:                               #   in Loop: Header=BB1_588 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_629
# BB#628:                               #   in Loop: Header=BB1_588 Depth=1
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
.LBB1_629:                              #   in Loop: Header=BB1_588 Depth=1
	movq	-880(%rbp), %rax
	movzbl	41(%rax), %eax
	testl	%eax, %eax
	jle	.LBB1_657
# BB#630:                               #   in Loop: Header=BB1_588 Depth=1
	movq	-880(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -888(%rbp)
	movq	-152(%rbp), %rcx
	movl	$4095, %edx             # imm = 0xFFF
	andl	76(%rcx), %edx
	movl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %ecx
	orl	%edx, %ecx
	movl	%ecx, 40(%rax)
	movq	-152(%rbp), %rax
	movq	-888(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	76(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-152(%rbp), %rax
	movq	-888(%rbp), %rcx
	movl	$4194304, %edx          # imm = 0x400000
	andl	76(%rax), %edx
	movl	$-4194305, %eax         # imm = 0xFFFFFFFFFFBFFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-152(%rbp), %rax
	movl	76(%rax), %eax
	shrl	%eax
	movq	-888(%rbp), %rcx
	andl	$528482304, %eax        # imm = 0x1F800000
	movl	$-528482305, %edx       # imm = 0xFFFFFFFFE07FFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-152(%rbp), %rax
	movb	68(%rax), %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-888(%rbp), %rcx
	shll	$31, %eax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-888(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movq	-888(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-888(%rbp), %rax
	movl	$0, 48(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_632
# BB#631:                               #   in Loop: Header=BB1_588 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_635
.LBB1_632:                              #   in Loop: Header=BB1_588 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_633
# BB#634:                               #   in Loop: Header=BB1_588 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_635
.LBB1_633:                              #   in Loop: Header=BB1_588 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_635:                              #   in Loop: Header=BB1_588 Depth=1
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
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_638
# BB#636:                               #   in Loop: Header=BB1_588 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_638
# BB#637:                               #   in Loop: Header=BB1_588 Depth=1
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
.LBB1_638:                              #   in Loop: Header=BB1_588 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-888(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_641
# BB#639:                               #   in Loop: Header=BB1_588 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_641
# BB#640:                               #   in Loop: Header=BB1_588 Depth=1
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
.LBB1_641:                              #   in Loop: Header=BB1_588 Depth=1
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_643
# BB#642:                               #   in Loop: Header=BB1_588 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_646
.LBB1_643:                              #   in Loop: Header=BB1_588 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_644
# BB#645:                               #   in Loop: Header=BB1_588 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_646
.LBB1_644:                              #   in Loop: Header=BB1_588 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_646:                              #   in Loop: Header=BB1_588 Depth=1
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
	movq	%rax, -888(%rbp)
	movq	-880(%rbp), %rcx
	movb	41(%rcx), %cl
	movb	%cl, 41(%rax)
	movq	-888(%rbp), %rax
	movb	$0, 42(%rax)
	movq	-888(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movq	-152(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-888(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-152(%rbp), %rax
	movzbl	69(%rax), %eax
	andl	$1, %eax
	movq	-888(%rbp), %rcx
	movzwl	44(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-152(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-888(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-152(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-888(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-152(%rbp), %rax
	movzwl	68(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-888(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-152(%rbp), %rax
	movw	70(%rax), %ax
	movq	-888(%rbp), %rcx
	movw	%ax, 46(%rcx)
	movq	-888(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzwl	46(%rax), %edx
	imull	%ecx, %edx
	movw	%dx, 46(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_648
# BB#647:                               #   in Loop: Header=BB1_588 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_651
.LBB1_648:                              #   in Loop: Header=BB1_588 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_649
# BB#650:                               #   in Loop: Header=BB1_588 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_651
.LBB1_649:                              #   in Loop: Header=BB1_588 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_651:                              #   in Loop: Header=BB1_588 Depth=1
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
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_654
# BB#652:                               #   in Loop: Header=BB1_588 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_654
# BB#653:                               #   in Loop: Header=BB1_588 Depth=1
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
.LBB1_654:                              #   in Loop: Header=BB1_588 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-888(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_657
# BB#655:                               #   in Loop: Header=BB1_588 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_657
# BB#656:                               #   in Loop: Header=BB1_588 Depth=1
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
.LBB1_657:                              #   in Loop: Header=BB1_588 Depth=1
	movq	-880(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_659
# BB#658:                               #   in Loop: Header=BB1_588 Depth=1
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
.LBB1_659:                              #   in Loop: Header=BB1_588 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-896(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_662
# BB#660:                               #   in Loop: Header=BB1_588 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_662
# BB#661:                               #   in Loop: Header=BB1_588 Depth=1
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
.LBB1_662:                              #   in Loop: Header=BB1_588 Depth=1
	movq	-152(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-880(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-152(%rbp), %rax
	movzbl	65(%rax), %eax
	andl	$1, %eax
	movq	-880(%rbp), %rcx
	movzwl	44(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-152(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-880(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-152(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-880(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-152(%rbp), %rax
	movzwl	64(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-880(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-152(%rbp), %rax
	movw	66(%rax), %ax
	movq	-880(%rbp), %rcx
	movw	%ax, 46(%rcx)
	movq	-880(%rbp), %rax
	movzbl	42(%rax), %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	jl	.LBB1_664
# BB#663:                               #   in Loop: Header=BB1_588 Depth=1
	movq	-880(%rbp), %rax
	movzbl	42(%rax), %eax
.LBB1_664:                              #   in Loop: Header=BB1_588 Depth=1
	movq	-880(%rbp), %rcx
	movzwl	46(%rcx), %edx
	imull	%eax, %edx
	movw	%dx, 46(%rcx)
.LBB1_665:                              #   in Loop: Header=BB1_588 Depth=1
	movq	$0, -880(%rbp)
	movl	$1, -900(%rbp)
	jmp	.LBB1_666
	.align	16, 0x90
.LBB1_674:                              #   in Loop: Header=BB1_666 Depth=2
	movzbl	%al, %eax
	movl	%eax, -900(%rbp)
.LBB1_666:                              #   Parent Loop BB1_588 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_668 Depth 3
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_588
# BB#667:                               #   in Loop: Header=BB1_666 Depth=2
	movq	-192(%rbp), %rax
	jmp	.LBB1_668
	.align	16, 0x90
.LBB1_669:                              #   in Loop: Header=BB1_668 Depth=3
	movq	-176(%rbp), %rax
.LBB1_668:                              #   Parent Loop BB1_588 Depth=1
                                        #     Parent Loop BB1_666 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_669
# BB#670:                               #   in Loop: Header=BB1_666 Depth=2
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_675
# BB#671:                               #   in Loop: Header=BB1_666 Depth=2
	movq	-176(%rbp), %rax
	movq	%rax, -880(%rbp)
	cmpl	$0, -900(%rbp)
	je	.LBB1_672
# BB#673:                               #   in Loop: Header=BB1_666 Depth=2
	movq	-176(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB1_674
	.align	16, 0x90
.LBB1_675:                              #   in Loop: Header=BB1_666 Depth=2
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB1_677
# BB#676:                               #   in Loop: Header=BB1_666 Depth=2
	movq	-176(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB1_666
	jmp	.LBB1_586
	.align	16, 0x90
.LBB1_677:                              #   in Loop: Header=BB1_666 Depth=2
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB1_678
# BB#679:                               #   in Loop: Header=BB1_666 Depth=2
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB1_680
.LBB1_672:                              #   in Loop: Header=BB1_666 Depth=2
	xorl	%eax, %eax
	jmp	.LBB1_674
.LBB1_678:                              #   in Loop: Header=BB1_666 Depth=2
	xorl	%eax, %eax
.LBB1_680:                              #   in Loop: Header=BB1_666 Depth=2
	testb	%al, %al
	je	.LBB1_666
	jmp	.LBB1_586
.LBB1_681:
	cmpq	$0, -896(%rbp)
	je	.LBB1_694
# BB#682:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_684
# BB#683:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_687
.LBB1_684:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_685
# BB#686:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_687
.LBB1_685:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_687:
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
	movq	-896(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_690
# BB#688:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_690
# BB#689:
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
.LBB1_690:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-152(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_693
# BB#691:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_693
# BB#692:
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
.LBB1_693:
	movq	-896(%rbp), %rax
	movq	%rax, -152(%rbp)
.LBB1_694:
	cmpl	$1, -156(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-152(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$19, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_838
# BB#695:
	movq	$0, -216(%rbp)
	movq	$0, -200(%rbp)
	movl	$0, -288(%rbp)
	movq	-152(%rbp), %rax
	andw	$-129, 42(%rax)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movl	$-2147483648, %r14d     # imm = 0xFFFFFFFF80000000
	movl	$2147483647, %r15d      # imm = 0x7FFFFFFF
	movl	$1610612736, %ebx       # imm = 0x60000000
	movl	$-1610612737, %r12d     # imm = 0xFFFFFFFF9FFFFFFF
	movb	$1, %r13b
	jmp	.LBB1_696
	.align	16, 0x90
.LBB1_827:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
.LBB1_696:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_698 Depth 2
	movq	-192(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_828
# BB#697:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB1_698
	.align	16, 0x90
.LBB1_699:                              #   in Loop: Header=BB1_698 Depth=2
	movq	-176(%rbp), %rax
.LBB1_698:                              #   Parent Loop BB1_696 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_699
# BB#700:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB1_708
# BB#701:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$138, %eax
	jg	.LBB1_708
# BB#702:                               #   in Loop: Header=BB1_696 Depth=1
	cmpl	$1, -156(%rbp)
	jne	.LBB1_827
# BB#703:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_705
# BB#704:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_705:                              #   in Loop: Header=BB1_696 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_827
# BB#706:                               #   in Loop: Header=BB1_696 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_827
# BB#707:                               #   in Loop: Header=BB1_696 Depth=1
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
	jmp	.LBB1_827
	.align	16, 0x90
.LBB1_708:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	movq	-152(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_728
# BB#709:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -960(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -968(%rbp)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -976(%rbp)
	movq	-960(%rbp), %rax
	cmpq	-968(%rbp), %rax
	je	.LBB1_718
# BB#710:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-960(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_712
# BB#711:                               #   in Loop: Header=BB1_696 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_712:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-960(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-968(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_715
# BB#713:                               #   in Loop: Header=BB1_696 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_715
# BB#714:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_715:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-960(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-976(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_718
# BB#716:                               #   in Loop: Header=BB1_696 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_718
# BB#717:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_718:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_720
# BB#719:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_720:                              #   in Loop: Header=BB1_696 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_722
# BB#721:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_722:                              #   in Loop: Header=BB1_696 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_724
# BB#723:                               #   in Loop: Header=BB1_696 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_725
.LBB1_724:                              #   in Loop: Header=BB1_696 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_726
.LBB1_728:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_730
# BB#729:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB1_827
.LBB1_730:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_732
# BB#731:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_796
.LBB1_732:                              #   in Loop: Header=BB1_696 Depth=1
	cmpl	$0, -156(%rbp)
	jne	.LBB1_797
# BB#733:                               #   in Loop: Header=BB1_696 Depth=1
	cmpq	$0, -200(%rbp)
	je	.LBB1_795
# BB#734:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	cmpw	$0, 46(%rax)
	jne	.LBB1_795
# BB#735:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	btl	$7, 44(%rax)
	jae	.LBB1_795
# BB#736:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB1_795
# BB#737:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_739
# BB#738:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_795
.LBB1_739:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzbl	42(%rax), %ecx
	movzbl	41(%rax), %eax
	addl	%ecx, %eax
	jne	.LBB1_795
# BB#740:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.LBB1_795
# BB#741:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$1, %eax
	jne	.LBB1_795
# BB#742:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	jne	.LBB1_795
# BB#743:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-200(%rbp), %rax
	movl	40(%rax), %eax
	movl	$4095, %edx             # imm = 0xFFF
	andl	%edx, %eax
	movq	-176(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	%edx, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_795
# BB#744:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-200(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movq	-176(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$12, %ecx
	andl	$1023, %ecx             # imm = 0x3FF
	cmpl	%ecx, %eax
	jne	.LBB1_795
# BB#745:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-200(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$22, %eax
	andl	$1, %eax
	movq	-176(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$22, %ecx
	andl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_795
# BB#746:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-200(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$23, %eax
	andl	$63, %eax
	movq	-176(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$23, %ecx
	andl	$63, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_795
# BB#747:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-200(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	movq	-176(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$29, %ecx
	andl	$3, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_795
# BB#748:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	cmpq	-192(%rbp), %rax
	je	.LBB1_749
.LBB1_795:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rdi
	callq	FontWordSize
	jmp	.LBB1_797
.LBB1_725:                              #   in Loop: Header=BB1_696 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_726:                              #   in Loop: Header=BB1_696 Depth=1
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
	jne	.LBB1_827
# BB#727:                               #   in Loop: Header=BB1_696 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB1_827
.LBB1_796:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
.LBB1_797:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB1_805
# BB#798:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jg	.LBB1_805
# BB#799:                               #   in Loop: Header=BB1_696 Depth=1
	cmpq	$0, -216(%rbp)
	je	.LBB1_802
# BB#800:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB1_802
# BB#801:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %r8
	addq	$32, %r8
	movl	$12, %edi
	movl	$3, %esi
	movl	$.L.str.18, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-216(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
.LBB1_802:                              #   in Loop: Header=BB1_696 Depth=1
	cmpq	$0, -216(%rbp)
	je	.LBB1_827
# BB#803:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	.LBB1_827
# BB#804:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %r8
	addq	$32, %r8
	movl	$12, %edi
	movl	$4, %esi
	movl	$.L.str.19, %edx
	movl	$2, %ecx
	movl	$119, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-216(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-216(%rbp), %rax
	movw	$0, 46(%rax)
	jmp	.LBB1_827
.LBB1_805:                              #   in Loop: Header=BB1_696 Depth=1
	cmpq	$0, -200(%rbp)
	je	.LBB1_806
# BB#807:                               #   in Loop: Header=BB1_696 Depth=1
	movslq	-156(%rbp), %rax
	movq	-200(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-216(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, -984(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB1_809
# BB#808:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzwl	44(%rax), %eax
	testb	$-32, %ah
	jne	.LBB1_810
.LBB1_809:                              #   in Loop: Header=BB1_696 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_810:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.LBB1_815
# BB#811:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB1_815
# BB#812:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movswl	46(%rax), %eax
	movslq	-156(%rbp), %rcx
	movq	-176(%rbp), %rdx
	addl	48(%rdx,%rcx,4), %eax
	movl	-232(%rbp), %ecx
	addl	-984(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_814
# BB#813:                               #   in Loop: Header=BB1_696 Depth=1
	movl	-232(%rbp), %eax
	addl	-984(%rbp), %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB1_816
.LBB1_815:                              #   in Loop: Header=BB1_696 Depth=1
	movl	-984(%rbp), %eax
	addl	%eax, -232(%rbp)
.LBB1_816:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$2, %eax
	jne	.LBB1_819
# BB#817:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movswl	46(%rax), %eax
	cmpl	$4097, %eax             # imm = 0x1001
	jl	.LBB1_819
# BB#818:                               #   in Loop: Header=BB1_696 Depth=1
	movl	$1, -288(%rbp)
.LBB1_819:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	jne	.LBB1_823
# BB#820:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB1_823
# BB#821:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movswl	46(%rax), %eax
	testl	%eax, %eax
	jle	.LBB1_823
# BB#822:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %r8
	addq	$32, %r8
	movl	$12, %edi
	movl	$9, %esi
	movl	$.L.str.21, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_823:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	je	.LBB1_826
# BB#824:                               #   in Loop: Header=BB1_696 Depth=1
	movl	-232(%rbp), %eax
	addl	%eax, -228(%rbp)
	jmp	.LBB1_825
.LBB1_806:                              #   in Loop: Header=BB1_696 Depth=1
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -228(%rbp)
.LBB1_825:                              #   in Loop: Header=BB1_696 Depth=1
	movl	$0, -232(%rbp)
.LBB1_826:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB1_827
.LBB1_814:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movswl	46(%rax), %eax
	movslq	-156(%rbp), %rcx
	movq	-176(%rbp), %rdx
	addl	48(%rdx,%rcx,4), %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB1_816
.LBB1_749:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-200(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	movq	-176(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	addq	-1016(%rbp), %rax       # 8-byte Folded Reload
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB1_751
# BB#750:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-200(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movq	-176(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$12, %edi
	movl	$2, %esi
	movl	$.L.str.17, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_751:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$12, %ecx
	je	.LBB1_753
# BB#752:                               #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	sete	%al
.LBB1_753:                              #   in Loop: Header=BB1_696 Depth=1
	movzbl	%al, %edi
	addl	$11, %edi
	movl	%edi, -980(%rbp)
	movq	-200(%rbp), %rcx
	movq	-176(%rbp), %rdx
	addq	$64, %rdx
	leaq	64(%rcx), %rsi
	addq	$32, %rcx
	callq	MakeWordTwo
	movq	%rax, -176(%rbp)
	movq	-200(%rbp), %rcx
	movl	40(%rcx), %ecx
	movl	$4095, %edx             # imm = 0xFFF
	andl	%edx, %ecx
	movl	40(%rax), %edx
	movl	$-4096, %esi            # imm = 0xFFFFFFFFFFFFF000
	andl	%esi, %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-200(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-200(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-200(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$528482304, %edx        # imm = 0x1F800000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-528482305, %esi       # imm = 0xFFFFFFFFE07FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-200(%rbp), %rax
	movl	40(%rax), %eax
	andl	%r14d, %eax
	movq	-176(%rbp), %rcx
	movl	40(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-200(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	40(%rax), %eax
	andl	%ebx, %eax
	movl	40(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-176(%rbp), %rdi
	callq	FontWordSize
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB1_755
# BB#754:                               #   in Loop: Header=BB1_696 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_758
.LBB1_755:                              #   in Loop: Header=BB1_696 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_756
# BB#757:                               #   in Loop: Header=BB1_696 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_758
.LBB1_756:                              #   in Loop: Header=BB1_696 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_758:                              #   in Loop: Header=BB1_696 Depth=1
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
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_761
# BB#759:                               #   in Loop: Header=BB1_696 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_761
# BB#760:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_761:                              #   in Loop: Header=BB1_696 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-176(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_764
# BB#762:                               #   in Loop: Header=BB1_696 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_764
# BB#763:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_764:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_766
# BB#765:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_766:                              #   in Loop: Header=BB1_696 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_768
# BB#767:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_768:                              #   in Loop: Header=BB1_696 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_770
# BB#769:                               #   in Loop: Header=BB1_696 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_771
.LBB1_770:                              #   in Loop: Header=BB1_696 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_772
.LBB1_771:                              #   in Loop: Header=BB1_696 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_772:                              #   in Loop: Header=BB1_696 Depth=1
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
	jne	.LBB1_774
# BB#773:                               #   in Loop: Header=BB1_696 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_774:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_776
# BB#775:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_776:                              #   in Loop: Header=BB1_696 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_778
# BB#777:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_778:                              #   in Loop: Header=BB1_696 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_780
# BB#779:                               #   in Loop: Header=BB1_696 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_781
.LBB1_780:                              #   in Loop: Header=BB1_696 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_782
.LBB1_781:                              #   in Loop: Header=BB1_696 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_782:                              #   in Loop: Header=BB1_696 Depth=1
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
	jne	.LBB1_784
# BB#783:                               #   in Loop: Header=BB1_696 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_784:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-192(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_786
# BB#785:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_786:                              #   in Loop: Header=BB1_696 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_788
# BB#787:                               #   in Loop: Header=BB1_696 Depth=1
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
.LBB1_788:                              #   in Loop: Header=BB1_696 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_790
# BB#789:                               #   in Loop: Header=BB1_696 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_791
.LBB1_790:                              #   in Loop: Header=BB1_696 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_792
.LBB1_791:                              #   in Loop: Header=BB1_696 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_792:                              #   in Loop: Header=BB1_696 Depth=1
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
	jne	.LBB1_794
# BB#793:                               #   in Loop: Header=BB1_696 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_794:                              #   in Loop: Header=BB1_696 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB1_827
.LBB1_838:
	movl	$0, -284(%rbp)
	movl	$0, -280(%rbp)
	movl	$0, -236(%rbp)
	movq	-152(%rbp), %rax
	jmp	.LBB1_839
	.align	16, 0x90
.LBB1_892:                              #   in Loop: Header=BB1_839 Depth=1
	movq	-192(%rbp), %rax
.LBB1_839:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_841 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_893
# BB#840:                               #   in Loop: Header=BB1_839 Depth=1
	movq	-192(%rbp), %rax
	jmp	.LBB1_841
	.align	16, 0x90
.LBB1_842:                              #   in Loop: Header=BB1_841 Depth=2
	movq	-176(%rbp), %rax
.LBB1_841:                              #   Parent Loop BB1_839 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_842
# BB#843:                               #   in Loop: Header=BB1_839 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB1_851
# BB#844:                               #   in Loop: Header=BB1_839 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$138, %eax
	jg	.LBB1_851
# BB#845:                               #   in Loop: Header=BB1_839 Depth=1
	cmpl	$1, -156(%rbp)
	jne	.LBB1_892
# BB#846:                               #   in Loop: Header=BB1_839 Depth=1
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_848
# BB#847:                               #   in Loop: Header=BB1_839 Depth=1
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
.LBB1_848:                              #   in Loop: Header=BB1_839 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_892
# BB#849:                               #   in Loop: Header=BB1_839 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_892
# BB#850:                               #   in Loop: Header=BB1_839 Depth=1
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
	movq	-192(%rbp), %rax
	jmp	.LBB1_839
	.align	16, 0x90
.LBB1_851:                              #   in Loop: Header=BB1_839 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	movq	-152(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_871
# BB#852:                               #   in Loop: Header=BB1_839 Depth=1
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -992(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -1000(%rbp)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1008(%rbp)
	movq	-992(%rbp), %rax
	cmpq	-1000(%rbp), %rax
	je	.LBB1_861
# BB#853:                               #   in Loop: Header=BB1_839 Depth=1
	movq	-992(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_855
# BB#854:                               #   in Loop: Header=BB1_839 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_855:                              #   in Loop: Header=BB1_839 Depth=1
	movq	-992(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-1000(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_858
# BB#856:                               #   in Loop: Header=BB1_839 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_858
# BB#857:                               #   in Loop: Header=BB1_839 Depth=1
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
.LBB1_858:                              #   in Loop: Header=BB1_839 Depth=1
	movq	-992(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-1008(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_861
# BB#859:                               #   in Loop: Header=BB1_839 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_861
# BB#860:                               #   in Loop: Header=BB1_839 Depth=1
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
.LBB1_861:                              #   in Loop: Header=BB1_839 Depth=1
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_863
# BB#862:                               #   in Loop: Header=BB1_839 Depth=1
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
.LBB1_863:                              #   in Loop: Header=BB1_839 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_865
# BB#864:                               #   in Loop: Header=BB1_839 Depth=1
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
.LBB1_865:                              #   in Loop: Header=BB1_839 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_867
# BB#866:                               #   in Loop: Header=BB1_839 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_868
.LBB1_867:                              #   in Loop: Header=BB1_839 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_869
.LBB1_871:                              #   in Loop: Header=BB1_839 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_879
# BB#872:                               #   in Loop: Header=BB1_839 Depth=1
	cmpl	$0, -284(%rbp)
	jne	.LBB1_874
# BB#873:                               #   in Loop: Header=BB1_839 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_874:                              #   in Loop: Header=BB1_839 Depth=1
	movq	-176(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB1_892
# BB#875:                               #   in Loop: Header=BB1_839 Depth=1
	movl	$1, -280(%rbp)
	movl	-228(%rbp), %eax
	addl	-232(%rbp), %eax
	cmpl	%eax, -236(%rbp)
	jge	.LBB1_877
# BB#876:                               #   in Loop: Header=BB1_839 Depth=1
	movl	-228(%rbp), %eax
	addl	-232(%rbp), %eax
	jmp	.LBB1_878
.LBB1_879:                              #   in Loop: Header=BB1_839 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_881
# BB#880:                               #   in Loop: Header=BB1_839 Depth=1
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_883
.LBB1_881:                              #   in Loop: Header=BB1_839 Depth=1
	cmpl	$0, -156(%rbp)
	jne	.LBB1_884
# BB#882:                               #   in Loop: Header=BB1_839 Depth=1
	movq	-176(%rbp), %rdi
	callq	FontWordSize
	jmp	.LBB1_884
.LBB1_868:                              #   in Loop: Header=BB1_839 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_869:                              #   in Loop: Header=BB1_839 Depth=1
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
	jne	.LBB1_892
# BB#870:                               #   in Loop: Header=BB1_839 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	movq	-192(%rbp), %rax
	jmp	.LBB1_839
.LBB1_883:                              #   in Loop: Header=BB1_839 Depth=1
	movq	-176(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	MinSize
	movq	%rax, -176(%rbp)
.LBB1_884:                              #   in Loop: Header=BB1_839 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB1_891
# BB#885:                               #   in Loop: Header=BB1_839 Depth=1
	movl	-228(%rbp), %eax
	movslq	-156(%rbp), %rcx
	movq	-176(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB1_887
# BB#886:                               #   in Loop: Header=BB1_839 Depth=1
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB1_888
.LBB1_891:                              #   in Loop: Header=BB1_839 Depth=1
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -228(%rbp)
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -232(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB1_892
.LBB1_887:                              #   in Loop: Header=BB1_839 Depth=1
	movl	-228(%rbp), %eax
.LBB1_888:                              #   in Loop: Header=BB1_839 Depth=1
	movl	%eax, -228(%rbp)
	movl	-232(%rbp), %eax
	movslq	-156(%rbp), %rcx
	movq	-176(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB1_890
# BB#889:                               #   in Loop: Header=BB1_839 Depth=1
	movslq	-156(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -232(%rbp)
	movq	-192(%rbp), %rax
	jmp	.LBB1_839
.LBB1_890:                              #   in Loop: Header=BB1_839 Depth=1
	movl	-232(%rbp), %eax
	movl	%eax, -232(%rbp)
	movq	-192(%rbp), %rax
	jmp	.LBB1_839
.LBB1_877:                              #   in Loop: Header=BB1_839 Depth=1
	movl	-236(%rbp), %eax
.LBB1_878:                              #   in Loop: Header=BB1_839 Depth=1
	movl	%eax, -236(%rbp)
	movl	$0, -284(%rbp)
	movq	-192(%rbp), %rax
	jmp	.LBB1_839
.LBB1_828:
	cmpq	$0, -200(%rbp)
	je	.LBB1_829
# BB#830:
	movslq	-156(%rbp), %rax
	movq	-200(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	addl	%eax, -232(%rbp)
	jmp	.LBB1_831
.LBB1_893:
	cmpl	$0, -284(%rbp)
	jne	.LBB1_895
# BB#894:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_895:
	cmpl	$0, -280(%rbp)
	je	.LBB1_946
# BB#896:
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	$0, 48(%rcx,%rax,4)
	movl	-228(%rbp), %eax
	addl	-232(%rbp), %eax
	cmpl	%eax, -236(%rbp)
	jge	.LBB1_898
# BB#897:
	movl	-228(%rbp), %eax
	addl	-232(%rbp), %eax
	jmp	.LBB1_899
.LBB1_946:
	movl	-228(%rbp), %eax
	movslq	-156(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-232(%rbp), %eax
	jmp	.LBB1_348
.LBB1_829:
	movl	$0, -232(%rbp)
	movl	$0, -228(%rbp)
.LBB1_831:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, -228(%rbp)    # imm = 0x7FFFFF
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB1_833
# BB#832:
	movl	-228(%rbp), %ecx
.LBB1_833:
	movslq	-156(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movl	%ecx, 48(%rsi,%rdx,4)
	cmpl	$8388607, -232(%rbp)    # imm = 0x7FFFFF
	jg	.LBB1_835
# BB#834:
	movl	-232(%rbp), %eax
.LBB1_835:
	movslq	-156(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB1_1035
# BB#836:
	cmpl	$0, -288(%rbp)
	je	.LBB1_1035
# BB#837:
	movq	-152(%rbp), %rax
	movl	$8388607, 56(%rax)      # imm = 0x7FFFFF
.LBB1_1035:
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	cmpl	$0, 48(%rcx,%rax,4)
	jns	.LBB1_1037
# BB#1036:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.44, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_1037:
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	cmpl	$0, 56(%rcx,%rax,4)
	jns	.LBB1_1039
# BB#1038:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.45, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_1039:
	movq	-152(%rbp), %rax
	addq	$1000, %rsp             # imm = 0x3E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_898:
	movl	-236(%rbp), %eax
.LBB1_899:
	movl	%eax, -236(%rbp)
	movl	$8388607, %ecx          # imm = 0x7FFFFF
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	jg	.LBB1_901
# BB#900:
	movl	-236(%rbp), %ecx
.LBB1_901:
	movslq	-156(%rbp), %rax
	jmp	.LBB1_902
.Lfunc_end1:
	.size	MinSize, .Lfunc_end1-MinSize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_101
	.quad	.LBB1_1034
	.quad	.LBB1_34
	.quad	.LBB1_33
	.quad	.LBB1_4
	.quad	.LBB1_4
	.quad	.LBB1_41
	.quad	.LBB1_517
	.quad	.LBB1_1034
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_349
	.quad	.LBB1_349
	.quad	.LBB1_947
	.quad	.LBB1_903
	.quad	.LBB1_524
	.quad	.LBB1_694
	.quad	.LBB1_694
	.quad	.LBB1_379
	.quad	.LBB1_375
	.quad	.LBB1_379
	.quad	.LBB1_375
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_486
	.quad	.LBB1_495
	.quad	.LBB1_503
	.quad	.LBB1_503
	.quad	.LBB1_398
	.quad	.LBB1_398
	.quad	.LBB1_385
	.quad	.LBB1_385
	.quad	.LBB1_428
	.quad	.LBB1_451
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_354
	.quad	.LBB1_354
	.quad	.LBB1_130
	.quad	.LBB1_130
	.quad	.LBB1_130
	.quad	.LBB1_130
	.quad	.LBB1_130
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_404
	.quad	.LBB1_124
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_1034
	.quad	.LBB1_990
	.quad	.LBB1_990
	.quad	.LBB1_382
	.quad	.LBB1_382
	.quad	.LBB1_382
	.quad	.LBB1_382
.LJTI1_1:
	.quad	.LBB1_1012
	.quad	.LBB1_1011
	.quad	.LBB1_1014
	.quad	.LBB1_1015
	.quad	.LBB1_1016

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
