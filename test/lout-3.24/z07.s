	.text
	.file	"z07.dce"
	.globl	SplitIsDefinite
	.align	16, 0x90
	.type	SplitIsDefinite,@function
SplitIsDefinite:                        # @SplitIsDefinite
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
	cmpl	$9, %eax
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
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_4
# BB#5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-24(%rbp), %rax
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_7
# BB#8:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_9
# BB#10:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB0_11
# BB#12:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_13
# BB#14:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_15
.LBB0_9:
	xorl	%eax, %eax
	jmp	.LBB0_15
.LBB0_11:
	xorl	%eax, %eax
	jmp	.LBB0_15
.LBB0_13:
	xorl	%eax, %eax
.LBB0_15:
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	SplitIsDefinite, .Lfunc_end0-SplitIsDefinite
	.cfi_endproc

	.globl	DisposeObject
	.align	16, 0x90
	.type	DisposeObject,@function
DisposeObject:                          # @DisposeObject
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
	movq	%rdi, -48(%rbp)
	cmpq	%rdi, 24(%rdi)
	je	.LBB1_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_2:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB1_81
# BB#3:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	je	.LBB1_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_5:
	movq	-8(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_7:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	cmpq	8(%rax), %rcx
	jne	.LBB1_9
# BB#8:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_9:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	cmpq	8(%rax), %rcx
	je	.LBB1_11
# BB#10:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_11:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -16(%rbp)
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_12 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	incl	-16(%rbp)
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_13
# BB#14:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	jne	.LBB1_36
# BB#15:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$1, -12(%rbp)
	jmp	.LBB1_16
	.align	16, 0x90
.LBB1_91:                               #   in Loop: Header=BB1_81 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_81:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_92
# BB#82:                                #   in Loop: Header=BB1_81 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_84
# BB#83:                                #   in Loop: Header=BB1_81 Depth=1
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
.LBB1_84:                               #   in Loop: Header=BB1_81 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_86
# BB#85:                                #   in Loop: Header=BB1_81 Depth=1
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
.LBB1_86:                               #   in Loop: Header=BB1_81 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_88
# BB#87:                                #   in Loop: Header=BB1_81 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_89
.LBB1_88:                               #   in Loop: Header=BB1_81 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_90
	.align	16, 0x90
.LBB1_89:                               #   in Loop: Header=BB1_81 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_90:                               #   in Loop: Header=BB1_81 Depth=1
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
	jne	.LBB1_81
	jmp	.LBB1_91
	.align	16, 0x90
.LBB1_22:                               #   in Loop: Header=BB1_16 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	incl	-12(%rbp)
.LBB1_16:                               # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB1_17
# BB#18:                                #   in Loop: Header=BB1_16 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB1_19
# BB#20:                                #   in Loop: Header=BB1_16 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	setl	%al
	jmp	.LBB1_21
	.align	16, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_16 Depth=1
	xorl	%eax, %eax
	jmp	.LBB1_21
	.align	16, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_16 Depth=1
	xorl	%eax, %eax
.LBB1_21:                               #   in Loop: Header=BB1_16 Depth=1
	testb	%al, %al
	jne	.LBB1_22
# BB#23:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB1_25
# BB#24:
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_26
.LBB1_25:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_26:
	movq	-32(%rbp), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_28
# BB#27:
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
.LBB1_28:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_30
# BB#29:
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
.LBB1_30:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_32
# BB#31:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_33
.LBB1_32:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_34
.LBB1_92:
	movq	-48(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_94
# BB#93:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_95
.LBB1_94:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_96
.LBB1_95:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_96:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_97
.LBB1_33:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_34:
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
	jne	.LBB1_36
# BB#35:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_36:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_38
# BB#37:
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
.LBB1_38:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_40
# BB#39:
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
.LBB1_40:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_42
# BB#41:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_43
.LBB1_42:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_44
.LBB1_43:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_44:
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
	jne	.LBB1_46
# BB#45:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_46:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -16(%rbp)
	jmp	.LBB1_47
	.align	16, 0x90
.LBB1_48:                               #   in Loop: Header=BB1_47 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	incl	-16(%rbp)
.LBB1_47:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_48
# BB#49:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$15, %eax
	jne	.LBB1_71
# BB#50:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$1, -12(%rbp)
	jmp	.LBB1_51
	.align	16, 0x90
.LBB1_57:                               #   in Loop: Header=BB1_51 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	incl	-12(%rbp)
.LBB1_51:                               # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB1_52
# BB#53:                                #   in Loop: Header=BB1_51 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB1_54
# BB#55:                                #   in Loop: Header=BB1_51 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	setl	%al
	jmp	.LBB1_56
	.align	16, 0x90
.LBB1_52:                               #   in Loop: Header=BB1_51 Depth=1
	xorl	%eax, %eax
	jmp	.LBB1_56
	.align	16, 0x90
.LBB1_54:                               #   in Loop: Header=BB1_51 Depth=1
	xorl	%eax, %eax
.LBB1_56:                               #   in Loop: Header=BB1_51 Depth=1
	testb	%al, %al
	jne	.LBB1_57
# BB#58:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB1_60
# BB#59:
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_61
.LBB1_60:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_61:
	movq	-32(%rbp), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_63
# BB#62:
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
.LBB1_63:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_65
# BB#64:
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
.LBB1_65:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_67
# BB#66:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_68
.LBB1_67:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_69
.LBB1_68:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_69:
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
	jne	.LBB1_71
# BB#70:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_71:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_73
# BB#72:
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
.LBB1_73:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_75
# BB#74:
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
.LBB1_75:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_77
# BB#76:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_78
.LBB1_77:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_79
.LBB1_78:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_79:
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
	jne	.LBB1_97
# BB#80:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_97:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	DisposeObject, .Lfunc_end1-DisposeObject
	.cfi_endproc

	.globl	MakeWord
	.align	16, 0x90
	.type	MakeWord,@function
MakeWord:                               # @MakeWord
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	addl	$69, %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	decq	%rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, zz_size(%rip)
	cltq
	cmpq	$265, %rax              # imm = 0x109
	jb	.LBB2_2
# BB#1:
	movq	-24(%rbp), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_5
.LBB2_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_5
.LBB2_3:
	movl	zz_size(%rip), %edi
	movq	-24(%rbp), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_5:
	movb	zz_size(%rip), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 33(%rcx)
	movb	-4(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rdi
	movq	%rdi, 24(%rdi)
	movq	zz_hold(%rip), %rax
	movq	%rdi, 16(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rdi, 8(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rdi, (%rax)
	movq	%rdi, -32(%rbp)
	addq	$64, %rdi
	movq	-16(%rbp), %rsi
	callq	strcpy
	movq	-24(%rbp), %rax
	movw	2(%rax), %ax
	movq	-32(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-24(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	4(%rax), %eax
	andl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-24(%rbp), %rax
	andl	4(%rax), %esi
	movq	-32(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	MakeWord, .Lfunc_end2-MakeWord
	.cfi_endproc

	.globl	MakeWordTwo
	.align	16, 0x90
	.type	MakeWordTwo,@function
MakeWordTwo:                            # @MakeWordTwo
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %ecx
	leal	69(%rcx,%rax), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	decq	%rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, zz_size(%rip)
	cltq
	cmpq	$265, %rax              # imm = 0x109
	jb	.LBB3_2
# BB#1:
	movq	-32(%rbp), %r8
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
	movq	-32(%rbp), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_5:
	movb	zz_size(%rip), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 33(%rcx)
	movb	-4(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rdi
	movq	%rdi, 24(%rdi)
	movq	zz_hold(%rip), %rax
	movq	%rdi, 16(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rdi, 8(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rdi, (%rax)
	movq	%rdi, -48(%rbp)
	addq	$64, %rdi
	movq	-16(%rbp), %rsi
	callq	strcpy
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	leaq	64(%rcx,%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcpy
	movq	-32(%rbp), %rax
	movw	2(%rax), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-32(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	4(%rax), %eax
	andl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-32(%rbp), %rax
	andl	4(%rax), %esi
	movq	-48(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	MakeWordTwo, .Lfunc_end3-MakeWordTwo
	.cfi_endproc

	.globl	MakeWordThree
	.align	16, 0x90
	.type	MakeWordThree,@function
MakeWordThree:                          # @MakeWordThree
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %ecx
	addl	-32(%rbp), %ecx
	leal	69(%rax,%rcx), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	decq	%rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, zz_size(%rip)
	cltq
	cmpq	$265, %rax              # imm = 0x109
	jb	.LBB4_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_5
.LBB4_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_5
.LBB4_3:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_5:
	movb	zz_size(%rip), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 33(%rcx)
	movq	zz_hold(%rip), %rax
	movb	$11, 32(%rax)
	movq	zz_hold(%rip), %rdi
	movq	%rdi, 24(%rdi)
	movq	zz_hold(%rip), %rax
	movq	%rdi, 16(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rdi, 8(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rdi, (%rax)
	movq	%rdi, -48(%rbp)
	addq	$64, %rdi
	movq	-8(%rbp), %rsi
	callq	strcpy
	movslq	-28(%rbp), %rax
	movq	-48(%rbp), %rcx
	leaq	64(%rcx,%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcpy
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	leaq	64(%rax,%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	strcpy
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	MakeWordThree, .Lfunc_end4-MakeWordThree
	.cfi_endproc

	.globl	CopyObject
	.align	16, 0x90
	.type	CopyObject,@function
CopyObject:                             # @CopyObject
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
	pushq	%rbx
	subq	$56, %rsp
.Ltmp18:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	decl	%eax
	cmpl	$98, %eax
	ja	.LBB5_108
# BB#1:
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_28:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_30
# BB#29:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_33
.LBB5_108:
	movq	no_fpos(%rip), %rbx
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.6, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movq	$0, -48(%rbp)
	jmp	.LBB5_109
.LBB5_30:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_31
# BB#32:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_33
.LBB5_31:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_33:
	movq	-16(%rbp), %rax
	movb	32(%rax), %al
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
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movb	$1, %bl
	jmp	.LBB5_34
	.align	16, 0x90
.LBB5_49:                               #   in Loop: Header=BB5_34 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB5_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_36 Depth 2
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB5_109
# BB#35:                                #   in Loop: Header=BB5_34 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB5_36
	.align	16, 0x90
.LBB5_37:                               #   in Loop: Header=BB5_36 Depth=2
	movq	-32(%rbp), %rax
.LBB5_36:                               #   Parent Loop BB5_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_37
# BB#38:                                #   in Loop: Header=BB5_34 Depth=1
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	CopyObject
	movq	%rax, -56(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB5_40
# BB#39:                                #   in Loop: Header=BB5_34 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_43
	.align	16, 0x90
.LBB5_40:                               #   in Loop: Header=BB5_34 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_41
# BB#42:                                #   in Loop: Header=BB5_34 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_43
.LBB5_41:                               #   in Loop: Header=BB5_34 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB5_43:                               #   in Loop: Header=BB5_34 Depth=1
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
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_46
# BB#44:                                #   in Loop: Header=BB5_34 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB5_46
# BB#45:                                #   in Loop: Header=BB5_34 Depth=1
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
.LBB5_46:                               #   in Loop: Header=BB5_34 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_49
# BB#47:                                #   in Loop: Header=BB5_34 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB5_49
# BB#48:                                #   in Loop: Header=BB5_34 Depth=1
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
	jmp	.LBB5_49
.LBB5_2:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	addl	$69, %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	decq	%rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, zz_size(%rip)
	cltq
	cmpq	$265, %rax              # imm = 0x109
	jb	.LBB5_4
# BB#3:
	movq	-24(%rbp), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_7
.LBB5_8:
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_10
# BB#9:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_13
.LBB5_83:
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_85
# BB#84:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_88
.LBB5_73:
	movzbl	zz_lengths+10(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_75
# BB#74:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_78
.LBB5_50:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_52
# BB#51:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_55
.LBB5_72:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB5_109
.LBB5_4:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_5
# BB#6:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_7
.LBB5_10:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_11
# BB#12:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_13
.LBB5_85:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_86
# BB#87:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_88
.LBB5_75:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_76
# BB#77:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_78
.LBB5_52:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_53
# BB#54:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_55
.LBB5_5:
	movl	zz_size(%rip), %edi
	movq	-24(%rbp), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_7:
	movb	zz_size(%rip), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 33(%rcx)
	movq	-16(%rbp), %rax
	movb	32(%rax), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rdi
	movq	%rdi, 24(%rdi)
	movq	zz_hold(%rip), %rax
	movq	%rdi, 16(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rdi, 8(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rdi, (%rax)
	movq	%rdi, -48(%rbp)
	addq	$64, %rdi
	movq	-16(%rbp), %rsi
	addq	$64, %rsi
	callq	strcpy
	jmp	.LBB5_109
.LBB5_11:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_13:
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
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rcx
	movzbl	45(%rcx), %ecx
	andl	$1, %ecx
	movzwl	44(%rax), %edx
	shll	$8, %ecx
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%ecx, %edx
	movw	%dx, 44(%rax)
	movq	-16(%rbp), %rax
	movzwl	44(%rax), %eax
	movq	-48(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-16(%rbp), %rax
	movb	41(%rax), %al
	movq	-48(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-16(%rbp), %rax
	movb	42(%rax), %al
	movq	-48(%rbp), %rcx
	movb	%al, 42(%rcx)
	movq	-16(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB5_109
# BB#14:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB5_15
.LBB5_16:                               #   in Loop: Header=BB5_15 Depth=1
	movq	-32(%rbp), %rax
.LBB5_15:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_16
	jmp	.LBB5_17
.LBB5_86:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_88:
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
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movb	$1, %bl
	jmp	.LBB5_89
.LBB5_106:                              #   in Loop: Header=BB5_89 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB5_89:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_91 Depth 2
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB5_107
# BB#90:                                #   in Loop: Header=BB5_89 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB5_91
	.align	16, 0x90
.LBB5_92:                               #   in Loop: Header=BB5_91 Depth=2
	movq	-32(%rbp), %rax
.LBB5_91:                               #   Parent Loop BB5_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_92
# BB#93:                                #   in Loop: Header=BB5_89 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB5_95
# BB#94:                                #   in Loop: Header=BB5_89 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_95:                               #   in Loop: Header=BB5_89 Depth=1
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	CopyObject
	movq	%rax, -56(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB5_97
# BB#96:                                #   in Loop: Header=BB5_89 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_100
.LBB5_97:                               #   in Loop: Header=BB5_89 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_98
# BB#99:                                #   in Loop: Header=BB5_89 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_100
.LBB5_98:                               #   in Loop: Header=BB5_89 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_100:                              #   in Loop: Header=BB5_89 Depth=1
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
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_103
# BB#101:                               #   in Loop: Header=BB5_89 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB5_103
# BB#102:                               #   in Loop: Header=BB5_89 Depth=1
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
.LBB5_103:                              #   in Loop: Header=BB5_89 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_106
# BB#104:                               #   in Loop: Header=BB5_89 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB5_106
# BB#105:                               #   in Loop: Header=BB5_89 Depth=1
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
	jmp	.LBB5_106
.LBB5_107:
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-16(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-48(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-16(%rbp), %rax
	movzbl	65(%rax), %eax
	andl	$1, %eax
	movq	-48(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-16(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-48(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-16(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-48(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-16(%rbp), %rax
	movzwl	64(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-48(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-16(%rbp), %rax
	movw	66(%rax), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-16(%rbp), %rax
	movb	68(%rax), %al
	andb	$3, %al
	movq	-48(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-16(%rbp), %rax
	movb	68(%rax), %al
	movq	-48(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-16(%rbp), %rax
	movb	68(%rax), %al
	movq	-48(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-16(%rbp), %rax
	movb	64(%rax), %al
	movq	-48(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-16(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-48(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-16(%rbp), %rax
	movzbl	69(%rax), %eax
	andl	$1, %eax
	movq	-48(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-16(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-48(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-16(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-48(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-16(%rbp), %rax
	movzwl	68(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-48(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-16(%rbp), %rax
	movw	70(%rax), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-16(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	76(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	76(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	76(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	76(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-16(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	76(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	76(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-16(%rbp), %rax
	movb	64(%rax), %al
	andb	$1, %al
	movq	-48(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-16(%rbp), %rax
	movb	64(%rax), %al
	movq	-48(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-16(%rbp), %rax
	movb	64(%rax), %al
	movq	-48(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-16(%rbp), %rax
	movb	64(%rax), %al
	movq	-48(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-16(%rbp), %rax
	movw	72(%rax), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-16(%rbp), %rax
	movw	74(%rax), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 74(%rcx)
	jmp	.LBB5_109
.LBB5_76:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_78:
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
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, 80(%rax)
	movq	-16(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB5_80
# BB#79:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_80:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB5_81
.LBB5_82:                               #   in Loop: Header=BB5_81 Depth=1
	movq	-32(%rbp), %rax
.LBB5_81:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_82
.LBB5_17:
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	CopyObject
	movq	%rax, -56(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_19
# BB#18:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_22
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
	movq	-48(%rbp), %rax
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
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_109
# BB#26:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_109
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
	jmp	.LBB5_109
.LBB5_53:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_55:
	movq	-16(%rbp), %rax
	movb	32(%rax), %al
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
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movb	$1, %bl
	jmp	.LBB5_56
.LBB5_71:                               #   in Loop: Header=BB5_56 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB5_56:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_58 Depth 2
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB5_109
# BB#57:                                #   in Loop: Header=BB5_56 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB5_58
	.align	16, 0x90
.LBB5_59:                               #   in Loop: Header=BB5_58 Depth=2
	movq	-32(%rbp), %rax
.LBB5_58:                               #   Parent Loop BB5_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_59
# BB#60:                                #   in Loop: Header=BB5_56 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB5_62
# BB#61:                                #   in Loop: Header=BB5_56 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_65
.LBB5_62:                               #   in Loop: Header=BB5_56 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_63
# BB#64:                                #   in Loop: Header=BB5_56 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_65
.LBB5_63:                               #   in Loop: Header=BB5_56 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_65:                               #   in Loop: Header=BB5_56 Depth=1
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
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_68
# BB#66:                                #   in Loop: Header=BB5_56 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB5_68
# BB#67:                                #   in Loop: Header=BB5_56 Depth=1
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
.LBB5_68:                               #   in Loop: Header=BB5_56 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_71
# BB#69:                                #   in Loop: Header=BB5_56 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB5_71
# BB#70:                                #   in Loop: Header=BB5_56 Depth=1
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
	jmp	.LBB5_71
.LBB5_109:
	movq	-24(%rbp), %rax
	cmpq	no_fpos(%rip), %rax
	je	.LBB5_110
# BB#111:
	movq	-24(%rbp), %rax
	movw	2(%rax), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-24(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	4(%rax), %eax
	andl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-24(%rbp), %rax
	andl	4(%rax), %esi
	jmp	.LBB5_112
.LBB5_110:
	movq	-16(%rbp), %rax
	movw	34(%rax), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-16(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-16(%rbp), %rax
	andl	36(%rax), %esi
.LBB5_112:
	movq	-48(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-48(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	CopyObject, .Lfunc_end5-CopyObject
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_8
	.quad	.LBB5_83
	.quad	.LBB5_108
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_108
	.quad	.LBB5_108
	.quad	.LBB5_73
	.quad	.LBB5_2
	.quad	.LBB5_2
	.quad	.LBB5_108
	.quad	.LBB5_108
	.quad	.LBB5_108
	.quad	.LBB5_108
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_50
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_72
	.quad	.LBB5_108
	.quad	.LBB5_108
	.quad	.LBB5_108
	.quad	.LBB5_108
	.quad	.LBB5_108
	.quad	.LBB5_108
	.quad	.LBB5_108
	.quad	.LBB5_108
	.quad	.LBB5_108
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28

	.text
	.globl	InsertObject
	.align	16, 0x90
	.type	InsertObject,@function
InsertObject:                           # @InsertObject
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp22:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-2, %eax
	cmpl	$97, %eax
	ja	.LBB6_65
# BB#1:
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_33:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB6_34
	.align	16, 0x90
.LBB6_35:                               #   in Loop: Header=BB6_34 Depth=1
	movq	-48(%rbp), %rax
.LBB6_34:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_35
# BB#36:
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	InsertObject
	movq	%rax, -48(%rbp)
	jmp	.LBB6_66
.LBB6_65:
	movq	no_fpos(%rip), %rbx
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.6, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB6_66:
	movq	-16(%rbp), %rax
.LBB6_67:
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB6_24:
	movq	-16(%rbp), %rax
	jmp	.LBB6_25
	.align	16, 0x90
.LBB6_32:                               #   in Loop: Header=BB6_25 Depth=1
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	InsertObject
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
.LBB6_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_30 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB6_26
# BB#27:                                #   in Loop: Header=BB6_25 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%al
	jmp	.LBB6_28
	.align	16, 0x90
.LBB6_26:                               #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
.LBB6_28:                               #   in Loop: Header=BB6_25 Depth=1
	testb	%al, %al
	je	.LBB6_66
# BB#29:                                #   in Loop: Header=BB6_25 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB6_30
	.align	16, 0x90
.LBB6_31:                               #   in Loop: Header=BB6_30 Depth=2
	movq	-48(%rbp), %rax
.LBB6_30:                               #   Parent Loop BB6_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_31
	jmp	.LBB6_32
.LBB6_2:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_7
.LBB6_37:
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_39
# BB#38:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_42
.LBB6_4:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_5
# BB#6:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_7
.LBB6_39:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_40
# BB#41:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_42
.LBB6_5:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_7:
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
	movq	-16(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-16(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-64(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-16(%rbp), %rax
	andl	36(%rax), %esi
	movq	-64(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-16(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB6_9
# BB#8:
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
.LBB6_9:
	movq	%rax, xx_tmp(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_12
# BB#10:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_12
# BB#11:
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
.LBB6_12:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_14
# BB#13:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_17
.LBB6_14:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_15
# BB#16:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_17
.LBB6_15:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_17:
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
	je	.LBB6_20
# BB#18:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_20
# BB#19:
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
.LBB6_20:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_23
# BB#21:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_23
# BB#22:
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
.LBB6_23:
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-64(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-64(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-64(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-64(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-64(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-32(%rbp), %rax
	movw	2(%rax), %ax
	movq	-64(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-32(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-64(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-32(%rbp), %rax
	movb	4(%rax), %al
	movq	-64(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-32(%rbp), %rax
	movb	4(%rax), %al
	movq	-64(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	movq	-64(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-32(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-64(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-32(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-64(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-32(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-64(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-32(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-64(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-32(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-64(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-32(%rbp), %rax
	movw	6(%rax), %ax
	movq	-64(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-32(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-32(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-64(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	movq	-64(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	movq	-64(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	movq	-64(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-32(%rbp), %rax
	movw	8(%rax), %ax
	movq	-64(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-32(%rbp), %rax
	movw	10(%rax), %ax
	movq	-64(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	shrb	$2, %al
	andb	$1, %al
	movq	-64(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$11, %eax
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	InsertObject
	jmp	.LBB6_67
.LBB6_40:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_42:
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
	movq	%rax, -56(%rbp)
	andb	$127, 44(%rax)
	movq	-56(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-56(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-56(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-56(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 44(%rax)
	movq	-56(%rbp), %rax
	movw	$0, 46(%rax)
	movq	-56(%rbp), %rax
	movb	$0, 42(%rax)
	movq	-56(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-56(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_44
# BB#43:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_47
.LBB6_44:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_45
# BB#46:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_47
.LBB6_45:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_47:
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
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_50
# BB#48:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_50
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
.LBB6_50:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_53
# BB#51:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_53
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
.LBB6_53:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_55
# BB#54:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_58
.LBB6_55:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_56
# BB#57:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_58
.LBB6_56:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_58:
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
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_61
# BB#59:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_61
# BB#60:
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
.LBB6_61:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_64
# BB#62:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_64
# BB#63:
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
.LBB6_64:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB6_66
.Lfunc_end6:
	.size	InsertObject, .Lfunc_end6-InsertObject
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_66
	.quad	.LBB6_65
	.quad	.LBB6_66
	.quad	.LBB6_66
	.quad	.LBB6_66
	.quad	.LBB6_66
	.quad	.LBB6_66
	.quad	.LBB6_24
	.quad	.LBB6_65
	.quad	.LBB6_2
	.quad	.LBB6_2
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_24
	.quad	.LBB6_24
	.quad	.LBB6_37
	.quad	.LBB6_24
	.quad	.LBB6_24
	.quad	.LBB6_66
	.quad	.LBB6_66
	.quad	.LBB6_66
	.quad	.LBB6_66
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_66
	.quad	.LBB6_66
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_65
	.quad	.LBB6_66
	.quad	.LBB6_66
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33

	.text
	.globl	Meld
	.align	16, 0x90
	.type	Meld,@function
Meld:                                   # @Meld
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$3176, %rsp             # imm = 0xC68
.Ltmp26:
	.cfi_offset %rbx, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB7_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_2:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB7_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.10, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_4:
	movl	$0, -3160(%rbp)
	movslq	-3160(%rbp), %rax
	movq	$0, -2352(%rbp,%rax,8)
	incl	-3160(%rbp)
	movq	$0, -3152(%rbp)
	movl	$1, -3156(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB7_5
	.align	16, 0x90
.LBB7_13:                               #   in Loop: Header=BB7_5 Depth=1
	movzbl	%al, %eax
	movl	%eax, -3156(%rbp)
	movq	-3136(%rbp), %rax
.LBB7_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -3136(%rbp)
	movq	-3136(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB7_16
# BB#6:                                 #   in Loop: Header=BB7_5 Depth=1
	movq	-3136(%rbp), %rax
	jmp	.LBB7_7
	.align	16, 0x90
.LBB7_8:                                #   in Loop: Header=BB7_7 Depth=2
	movq	-3144(%rbp), %rax
.LBB7_7:                                #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -3144(%rbp)
	movq	-3144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_8
# BB#9:                                 #   in Loop: Header=BB7_5 Depth=1
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB7_14
# BB#10:                                #   in Loop: Header=BB7_5 Depth=1
	cmpl	$0, -3156(%rbp)
	je	.LBB7_11
# BB#12:                                #   in Loop: Header=BB7_5 Depth=1
	movq	-3144(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB7_13
	.align	16, 0x90
.LBB7_14:                               #   in Loop: Header=BB7_5 Depth=1
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB7_24
# BB#15:                                #   in Loop: Header=BB7_5 Depth=1
	movq	-3144(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB7_28
	jmp	.LBB7_16
	.align	16, 0x90
.LBB7_24:                               #   in Loop: Header=BB7_5 Depth=1
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB7_25
# BB#26:                                #   in Loop: Header=BB7_5 Depth=1
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB7_27
.LBB7_11:                               #   in Loop: Header=BB7_5 Depth=1
	xorl	%eax, %eax
	jmp	.LBB7_13
.LBB7_25:                               #   in Loop: Header=BB7_5 Depth=1
	xorl	%eax, %eax
.LBB7_27:                               #   in Loop: Header=BB7_5 Depth=1
	testb	%al, %al
	jne	.LBB7_16
.LBB7_28:                               #   in Loop: Header=BB7_5 Depth=1
	movq	-3136(%rbp), %rax
	jmp	.LBB7_5
.LBB7_41:                               #   in Loop: Header=BB7_16 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB7_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
                                        #       Child Loop BB7_22 Depth 3
	movq	-3136(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB7_42
# BB#17:                                #   in Loop: Header=BB7_16 Depth=1
	cmpl	$32, -3160(%rbp)
	jl	.LBB7_19
# BB#18:                                #   in Loop: Header=BB7_16 Depth=1
	movq	-32(%rbp), %r8
	addq	$32, %r8
	movl	$31, (%rsp)
	movl	$7, %edi
	movl	$1, %esi
	movl	$.L.str.11, %edx
	movl	$1, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_19:                               #   in Loop: Header=BB7_16 Depth=1
	movq	-3144(%rbp), %rax
	movslq	-3160(%rbp), %rcx
	movq	%rax, -2352(%rbp,%rcx,8)
	movq	-3152(%rbp), %rax
	movslq	-3160(%rbp), %rcx
	movq	%rax, -2864(%rbp,%rcx,8)
	incl	-3160(%rbp)
	movq	$0, -3152(%rbp)
	movl	$1, -3156(%rbp)
	jmp	.LBB7_20
	.align	16, 0x90
.LBB7_33:                               #   in Loop: Header=BB7_20 Depth=2
	movzbl	%al, %eax
	movl	%eax, -3156(%rbp)
.LBB7_20:                               #   Parent Loop BB7_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_22 Depth 3
	movq	-3136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -3136(%rbp)
	movq	-3136(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB7_16
# BB#21:                                #   in Loop: Header=BB7_20 Depth=2
	movq	-3136(%rbp), %rax
	jmp	.LBB7_22
	.align	16, 0x90
.LBB7_23:                               #   in Loop: Header=BB7_22 Depth=3
	movq	-3144(%rbp), %rax
.LBB7_22:                               #   Parent Loop BB7_16 Depth=1
                                        #     Parent Loop BB7_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -3144(%rbp)
	movq	-3144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_23
# BB#29:                                #   in Loop: Header=BB7_20 Depth=2
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB7_34
# BB#30:                                #   in Loop: Header=BB7_20 Depth=2
	movq	-3144(%rbp), %rax
	movq	%rax, -3152(%rbp)
	cmpl	$0, -3156(%rbp)
	je	.LBB7_31
# BB#32:                                #   in Loop: Header=BB7_20 Depth=2
	movq	-3144(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB7_33
	.align	16, 0x90
.LBB7_34:                               #   in Loop: Header=BB7_20 Depth=2
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB7_36
# BB#35:                                #   in Loop: Header=BB7_20 Depth=2
	movq	-3144(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB7_20
	jmp	.LBB7_40
	.align	16, 0x90
.LBB7_36:                               #   in Loop: Header=BB7_20 Depth=2
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB7_37
# BB#38:                                #   in Loop: Header=BB7_20 Depth=2
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB7_39
.LBB7_31:                               #   in Loop: Header=BB7_20 Depth=2
	xorl	%eax, %eax
	jmp	.LBB7_33
.LBB7_37:                               #   in Loop: Header=BB7_20 Depth=2
	xorl	%eax, %eax
.LBB7_39:                               #   in Loop: Header=BB7_20 Depth=2
	testb	%al, %al
	je	.LBB7_20
.LBB7_40:                               #   in Loop: Header=BB7_16 Depth=1
	cmpq	$0, -3152(%rbp)
	jne	.LBB7_16
	jmp	.LBB7_41
.LBB7_42:
	movl	$0, -3164(%rbp)
	movslq	-3164(%rbp), %rax
	movq	$0, -2608(%rbp,%rax,8)
	incl	-3164(%rbp)
	movq	$0, -3152(%rbp)
	movl	$1, -3156(%rbp)
	movq	-40(%rbp), %rax
	jmp	.LBB7_43
	.align	16, 0x90
.LBB7_51:                               #   in Loop: Header=BB7_43 Depth=1
	movzbl	%al, %eax
	movl	%eax, -3156(%rbp)
	movq	-3136(%rbp), %rax
.LBB7_43:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_45 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -3136(%rbp)
	movq	-3136(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB7_54
# BB#44:                                #   in Loop: Header=BB7_43 Depth=1
	movq	-3136(%rbp), %rax
	jmp	.LBB7_45
	.align	16, 0x90
.LBB7_46:                               #   in Loop: Header=BB7_45 Depth=2
	movq	-3144(%rbp), %rax
.LBB7_45:                               #   Parent Loop BB7_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -3144(%rbp)
	movq	-3144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_46
# BB#47:                                #   in Loop: Header=BB7_43 Depth=1
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB7_52
# BB#48:                                #   in Loop: Header=BB7_43 Depth=1
	cmpl	$0, -3156(%rbp)
	je	.LBB7_49
# BB#50:                                #   in Loop: Header=BB7_43 Depth=1
	movq	-3144(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB7_51
	.align	16, 0x90
.LBB7_52:                               #   in Loop: Header=BB7_43 Depth=1
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB7_62
# BB#53:                                #   in Loop: Header=BB7_43 Depth=1
	movq	-3144(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB7_66
	jmp	.LBB7_54
	.align	16, 0x90
.LBB7_62:                               #   in Loop: Header=BB7_43 Depth=1
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB7_63
# BB#64:                                #   in Loop: Header=BB7_43 Depth=1
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB7_65
.LBB7_49:                               #   in Loop: Header=BB7_43 Depth=1
	xorl	%eax, %eax
	jmp	.LBB7_51
.LBB7_63:                               #   in Loop: Header=BB7_43 Depth=1
	xorl	%eax, %eax
.LBB7_65:                               #   in Loop: Header=BB7_43 Depth=1
	testb	%al, %al
	jne	.LBB7_54
.LBB7_66:                               #   in Loop: Header=BB7_43 Depth=1
	movq	-3136(%rbp), %rax
	jmp	.LBB7_43
.LBB7_79:                               #   in Loop: Header=BB7_54 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB7_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_58 Depth 2
                                        #       Child Loop BB7_60 Depth 3
	movq	-3136(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB7_80
# BB#55:                                #   in Loop: Header=BB7_54 Depth=1
	cmpl	$32, -3164(%rbp)
	jl	.LBB7_57
# BB#56:                                #   in Loop: Header=BB7_54 Depth=1
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$31, (%rsp)
	movl	$7, %edi
	movl	$1, %esi
	movl	$.L.str.11, %edx
	movl	$1, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_57:                               #   in Loop: Header=BB7_54 Depth=1
	movq	-3144(%rbp), %rax
	movslq	-3164(%rbp), %rcx
	movq	%rax, -2608(%rbp,%rcx,8)
	movq	-3152(%rbp), %rax
	movslq	-3164(%rbp), %rcx
	movq	%rax, -3120(%rbp,%rcx,8)
	incl	-3164(%rbp)
	movq	$0, -3152(%rbp)
	movl	$1, -3156(%rbp)
	jmp	.LBB7_58
	.align	16, 0x90
.LBB7_71:                               #   in Loop: Header=BB7_58 Depth=2
	movzbl	%al, %eax
	movl	%eax, -3156(%rbp)
.LBB7_58:                               #   Parent Loop BB7_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_60 Depth 3
	movq	-3136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -3136(%rbp)
	movq	-3136(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB7_54
# BB#59:                                #   in Loop: Header=BB7_58 Depth=2
	movq	-3136(%rbp), %rax
	jmp	.LBB7_60
	.align	16, 0x90
.LBB7_61:                               #   in Loop: Header=BB7_60 Depth=3
	movq	-3144(%rbp), %rax
.LBB7_60:                               #   Parent Loop BB7_54 Depth=1
                                        #     Parent Loop BB7_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -3144(%rbp)
	movq	-3144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_61
# BB#67:                                #   in Loop: Header=BB7_58 Depth=2
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB7_72
# BB#68:                                #   in Loop: Header=BB7_58 Depth=2
	movq	-3144(%rbp), %rax
	movq	%rax, -3152(%rbp)
	cmpl	$0, -3156(%rbp)
	je	.LBB7_69
# BB#70:                                #   in Loop: Header=BB7_58 Depth=2
	movq	-3144(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB7_71
	.align	16, 0x90
.LBB7_72:                               #   in Loop: Header=BB7_58 Depth=2
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB7_74
# BB#73:                                #   in Loop: Header=BB7_58 Depth=2
	movq	-3144(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB7_58
	jmp	.LBB7_78
	.align	16, 0x90
.LBB7_74:                               #   in Loop: Header=BB7_58 Depth=2
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB7_75
# BB#76:                                #   in Loop: Header=BB7_58 Depth=2
	movq	-3144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB7_77
.LBB7_69:                               #   in Loop: Header=BB7_58 Depth=2
	xorl	%eax, %eax
	jmp	.LBB7_71
.LBB7_75:                               #   in Loop: Header=BB7_58 Depth=2
	xorl	%eax, %eax
.LBB7_77:                               #   in Loop: Header=BB7_58 Depth=2
	testb	%al, %al
	je	.LBB7_58
.LBB7_78:                               #   in Loop: Header=BB7_54 Depth=1
	cmpq	$0, -3152(%rbp)
	jne	.LBB7_54
	jmp	.LBB7_79
.LBB7_80:
	movb	$0, -1072(%rbp)
	movb	$0, -2096(%rbp)
	movl	$1, -3168(%rbp)
	jmp	.LBB7_81
	.align	16, 0x90
.LBB7_82:                               #   in Loop: Header=BB7_81 Depth=1
	movslq	-3168(%rbp), %rax
	shlq	$5, %rax
	movb	$0, -1072(%rbp,%rax)
	movslq	-3168(%rbp), %rax
	shlq	$5, %rax
	movb	$1, -2096(%rbp,%rax)
	incl	-3168(%rbp)
.LBB7_81:                               # =>This Inner Loop Header: Depth=1
	movl	-3168(%rbp), %eax
	cmpl	-3160(%rbp), %eax
	jl	.LBB7_82
# BB#83:
	movl	$1, -3172(%rbp)
	jmp	.LBB7_84
	.align	16, 0x90
.LBB7_85:                               #   in Loop: Header=BB7_84 Depth=1
	movslq	-3172(%rbp), %rax
	movb	$0, -1072(%rbp,%rax)
	movslq	-3172(%rbp), %rax
	movb	$2, -2096(%rbp,%rax)
	incl	-3172(%rbp)
.LBB7_84:                               # =>This Inner Loop Header: Depth=1
	movl	-3172(%rbp), %eax
	cmpl	-3164(%rbp), %eax
	jl	.LBB7_85
# BB#86:
	movl	$1, -3168(%rbp)
	jmp	.LBB7_87
	.align	16, 0x90
.LBB7_103:                              #   in Loop: Header=BB7_87 Depth=1
	incl	-3168(%rbp)
.LBB7_87:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_89 Depth 2
	movl	-3168(%rbp), %eax
	cmpl	-3160(%rbp), %eax
	jge	.LBB7_104
# BB#88:                                #   in Loop: Header=BB7_87 Depth=1
	movl	$1, -3172(%rbp)
	jmp	.LBB7_89
	.align	16, 0x90
.LBB7_99:                               #   in Loop: Header=BB7_89 Depth=2
	movslq	-3172(%rbp), %rax
	movslq	-3168(%rbp), %rcx
	shlq	$5, %rcx
	leaq	-1072(%rbp,%rcx), %rcx
	movzbl	-33(%rax,%rcx), %edx
	incl	%edx
	movb	%dl, (%rax,%rcx)
	movslq	-3172(%rbp), %rax
	movslq	-3168(%rbp), %rcx
	shlq	$5, %rcx
	leaq	-2096(%rbp,%rcx), %rcx
	movb	$3, (%rax,%rcx)
	incl	-3172(%rbp)
.LBB7_89:                               #   Parent Loop BB7_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-3172(%rbp), %eax
	cmpl	-3164(%rbp), %eax
	jge	.LBB7_103
# BB#90:                                #   in Loop: Header=BB7_89 Depth=2
	movslq	-3168(%rbp), %rax
	movq	-2352(%rbp,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_92
# BB#91:                                #   in Loop: Header=BB7_89 Depth=2
	movslq	-3168(%rbp), %rax
	movq	-2352(%rbp,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_97
.LBB7_92:                               #   in Loop: Header=BB7_89 Depth=2
	movslq	-3172(%rbp), %rax
	movq	-2608(%rbp,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_95
# BB#93:                                #   in Loop: Header=BB7_89 Depth=2
	movslq	-3172(%rbp), %rax
	movq	-2608(%rbp,%rax,8), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_94
.LBB7_95:                               #   in Loop: Header=BB7_89 Depth=2
	movslq	-3168(%rbp), %rax
	movq	-2352(%rbp,%rax,8), %rdi
	addq	$64, %rdi
	movslq	-3172(%rbp), %rax
	movq	-2608(%rbp,%rax,8), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.LBB7_98
	.align	16, 0x90
.LBB7_97:                               #   in Loop: Header=BB7_89 Depth=2
	movslq	-3168(%rbp), %rax
	movq	-2352(%rbp,%rax,8), %rax
	movzbl	32(%rax), %eax
	movslq	-3172(%rbp), %rcx
	movq	-2608(%rbp,%rcx,8), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	%ecx, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.LBB7_98
.LBB7_94:                               #   in Loop: Header=BB7_89 Depth=2
	xorl	%eax, %eax
	movzbl	%al, %eax
	.align	16, 0x90
.LBB7_98:                               #   in Loop: Header=BB7_89 Depth=2
	movl	%eax, -3124(%rbp)
	cmpl	$0, -3124(%rbp)
	jne	.LBB7_99
# BB#100:                               #   in Loop: Header=BB7_89 Depth=2
	movslq	-3172(%rbp), %rax
	movslq	-3168(%rbp), %rcx
	shlq	$5, %rcx
	leaq	-1072(%rbp,%rcx), %rcx
	movsbl	-32(%rax,%rcx), %edx
	movsbl	-1(%rax,%rcx), %eax
	cmpl	%eax, %edx
	jle	.LBB7_102
# BB#101:                               #   in Loop: Header=BB7_89 Depth=2
	movslq	-3172(%rbp), %rax
	movslq	-3168(%rbp), %rcx
	shlq	$5, %rcx
	leaq	-1072(%rbp,%rcx), %rcx
	movb	-32(%rax,%rcx), %dl
	movb	%dl, (%rax,%rcx)
	movslq	-3172(%rbp), %rax
	movslq	-3168(%rbp), %rcx
	shlq	$5, %rcx
	leaq	-2096(%rbp,%rcx), %rcx
	movb	$1, (%rax,%rcx)
	incl	-3172(%rbp)
	jmp	.LBB7_89
.LBB7_102:                              #   in Loop: Header=BB7_89 Depth=2
	movslq	-3172(%rbp), %rax
	movslq	-3168(%rbp), %rcx
	shlq	$5, %rcx
	leaq	-1072(%rbp,%rcx), %rcx
	movb	-1(%rax,%rcx), %dl
	movb	%dl, (%rax,%rcx)
	movslq	-3172(%rbp), %rax
	movslq	-3168(%rbp), %rcx
	shlq	$5, %rcx
	leaq	-2096(%rbp,%rcx), %rcx
	movb	$2, (%rax,%rcx)
	incl	-3172(%rbp)
	jmp	.LBB7_89
.LBB7_104:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB7_106
# BB#105:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_109
.LBB7_106:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_107
# BB#108:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_109
.LBB7_107:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB7_109:
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
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rcx
	movzwl	64(%rcx), %ecx
	movzwl	64(%rax), %edx
	andl	$128, %ecx
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%ecx, %edx
	movw	%dx, 64(%rax)
	movq	-32(%rbp), %rax
	movzbl	65(%rax), %eax
	andl	$1, %eax
	movq	-48(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-32(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-48(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-32(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-48(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-32(%rbp), %rax
	movzwl	64(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-48(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-32(%rbp), %rax
	movw	66(%rax), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-32(%rbp), %rax
	movb	68(%rax), %al
	andb	$3, %al
	movq	-48(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-32(%rbp), %rax
	movb	68(%rax), %al
	movq	-48(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-32(%rbp), %rax
	movb	68(%rax), %al
	movq	-48(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-32(%rbp), %rax
	movb	64(%rax), %al
	movq	-48(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-32(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-48(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-32(%rbp), %rax
	movzbl	69(%rax), %eax
	andl	$1, %eax
	movq	-48(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-32(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-48(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-32(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-48(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-32(%rbp), %rax
	movzwl	68(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-48(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-32(%rbp), %rax
	movw	70(%rax), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-32(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	76(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	76(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	76(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	76(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-32(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	76(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	76(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-32(%rbp), %rax
	movb	64(%rax), %al
	andb	$1, %al
	movq	-48(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-32(%rbp), %rax
	movb	64(%rax), %al
	movq	-48(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-32(%rbp), %rax
	movb	64(%rax), %al
	movq	-48(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-32(%rbp), %rax
	movb	64(%rax), %al
	movq	-48(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-32(%rbp), %rax
	movw	72(%rax), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-32(%rbp), %rax
	movw	74(%rax), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movl	-3160(%rbp), %eax
	decl	%eax
	movl	%eax, -3168(%rbp)
	movl	-3164(%rbp), %eax
	decl	%eax
	movl	%eax, -3172(%rbp)
	movb	$1, %bl
	movl	$1048575, %r14d         # imm = 0xFFFFF
	movl	$-1048576, %r15d        # imm = 0xFFFFFFFFFFF00000
	jmp	.LBB7_110
.LBB7_178:                              #   in Loop: Header=BB7_110 Depth=1
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
	.align	16, 0x90
.LBB7_110:                              # =>This Inner Loop Header: Depth=1
	movslq	-3172(%rbp), %rax
	movslq	-3168(%rbp), %rcx
	shlq	$5, %rcx
	leaq	-2096(%rbp,%rcx), %rcx
	cmpb	$0, (%rax,%rcx)
	je	.LBB7_181
# BB#111:                               #   in Loop: Header=BB7_110 Depth=1
	movslq	-3172(%rbp), %rax
	movslq	-3168(%rbp), %rcx
	shlq	$5, %rcx
	leaq	-2096(%rbp,%rcx), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$1, %eax
	je	.LBB7_138
# BB#112:                               #   in Loop: Header=BB7_110 Depth=1
	cmpl	$2, %eax
	jne	.LBB7_113
# BB#126:                               #   in Loop: Header=BB7_110 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_128
# BB#127:                               #   in Loop: Header=BB7_110 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_131
	.align	16, 0x90
.LBB7_138:                              #   in Loop: Header=BB7_110 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_140
# BB#139:                               #   in Loop: Header=BB7_110 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_143
	.align	16, 0x90
.LBB7_113:                              #   in Loop: Header=BB7_110 Depth=1
	cmpl	$3, %eax
	jne	.LBB7_150
# BB#114:                               #   in Loop: Header=BB7_110 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_116
# BB#115:                               #   in Loop: Header=BB7_110 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_119
.LBB7_128:                              #   in Loop: Header=BB7_110 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_129
# BB#130:                               #   in Loop: Header=BB7_110 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_131
.LBB7_140:                              #   in Loop: Header=BB7_110 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_141
# BB#142:                               #   in Loop: Header=BB7_110 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_143
.LBB7_116:                              #   in Loop: Header=BB7_110 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_117
# BB#118:                               #   in Loop: Header=BB7_110 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_119
.LBB7_129:                              #   in Loop: Header=BB7_110 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB7_131:                              #   in Loop: Header=BB7_110 Depth=1
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
	je	.LBB7_134
# BB#132:                               #   in Loop: Header=BB7_110 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_134
# BB#133:                               #   in Loop: Header=BB7_110 Depth=1
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
.LBB7_134:                              #   in Loop: Header=BB7_110 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movslq	-3172(%rbp), %rax
	movq	-2608(%rbp,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_137
# BB#135:                               #   in Loop: Header=BB7_110 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_137
# BB#136:                               #   in Loop: Header=BB7_110 Depth=1
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
.LBB7_137:                              #   in Loop: Header=BB7_110 Depth=1
	movslq	-3172(%rbp), %rax
	movq	-3120(%rbp,%rax,8), %rax
	movq	%rax, -3152(%rbp)
	decl	-3172(%rbp)
	jmp	.LBB7_150
.LBB7_141:                              #   in Loop: Header=BB7_110 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB7_143:                              #   in Loop: Header=BB7_110 Depth=1
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
	je	.LBB7_146
# BB#144:                               #   in Loop: Header=BB7_110 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_146
# BB#145:                               #   in Loop: Header=BB7_110 Depth=1
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
.LBB7_146:                              #   in Loop: Header=BB7_110 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movslq	-3168(%rbp), %rax
	movq	-2352(%rbp,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_149
# BB#147:                               #   in Loop: Header=BB7_110 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_149
# BB#148:                               #   in Loop: Header=BB7_110 Depth=1
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
.LBB7_149:                              #   in Loop: Header=BB7_110 Depth=1
	movslq	-3168(%rbp), %rax
	movq	-2864(%rbp,%rax,8), %rax
	movq	%rax, -3152(%rbp)
	decl	-3168(%rbp)
	jmp	.LBB7_150
.LBB7_117:                              #   in Loop: Header=BB7_110 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB7_119:                              #   in Loop: Header=BB7_110 Depth=1
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
	je	.LBB7_122
# BB#120:                               #   in Loop: Header=BB7_110 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_122
# BB#121:                               #   in Loop: Header=BB7_110 Depth=1
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
.LBB7_122:                              #   in Loop: Header=BB7_110 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movslq	-3168(%rbp), %rax
	movq	-2352(%rbp,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_125
# BB#123:                               #   in Loop: Header=BB7_110 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_125
# BB#124:                               #   in Loop: Header=BB7_110 Depth=1
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
.LBB7_125:                              #   in Loop: Header=BB7_110 Depth=1
	movslq	-3168(%rbp), %rax
	movq	-2864(%rbp,%rax,8), %rax
	movq	%rax, -3152(%rbp)
	decl	-3168(%rbp)
	decl	-3172(%rbp)
	.align	16, 0x90
.LBB7_150:                              #   in Loop: Header=BB7_110 Depth=1
	movslq	-3172(%rbp), %rax
	movslq	-3168(%rbp), %rcx
	shlq	$5, %rcx
	leaq	-2096(%rbp,%rcx), %rcx
	cmpb	$0, (%rax,%rcx)
	je	.LBB7_110
# BB#151:                               #   in Loop: Header=BB7_110 Depth=1
	cmpq	$0, -3152(%rbp)
	je	.LBB7_152
# BB#179:                               #   in Loop: Header=BB7_110 Depth=1
	movq	-3152(%rbp), %rax
	movq	24(%rax), %rcx
	cmpq	16(%rax), %rcx
	je	.LBB7_168
# BB#180:                               #   in Loop: Header=BB7_110 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_168
.LBB7_152:                              #   in Loop: Header=BB7_110 Depth=1
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_154
# BB#153:                               #   in Loop: Header=BB7_110 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_157
.LBB7_154:                              #   in Loop: Header=BB7_110 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_155
# BB#156:                               #   in Loop: Header=BB7_110 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_157
.LBB7_155:                              #   in Loop: Header=BB7_110 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB7_157:                              #   in Loop: Header=BB7_110 Depth=1
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
	movq	%rax, -3152(%rbp)
	movb	$1, 41(%rax)
	movq	-3152(%rbp), %rax
	movb	$0, 42(%rax)
	movq	no_fpos(%rip), %rax
	movw	2(%rax), %ax
	movq	-3152(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	no_fpos(%rip), %rax
	movl	4(%rax), %eax
	andl	%r14d, %eax
	movq	-3152(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	no_fpos(%rip), %rax
	movl	4(%rax), %eax
	andl	%r15d, %eax
	movq	-3152(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-3152(%rbp), %rax
	andw	$-129, 44(%rax)
	movq	-3152(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-3152(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-3152(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-3152(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 44(%rax)
	movq	-48(%rbp), %rax
	movw	70(%rax), %ax
	movq	-3152(%rbp), %rcx
	movw	%ax, 46(%rcx)
	movq	-3152(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.14, %esi
	callq	MakeWord
	movq	%rax, -3184(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_159
# BB#158:                               #   in Loop: Header=BB7_110 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_162
.LBB7_159:                              #   in Loop: Header=BB7_110 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_160
# BB#161:                               #   in Loop: Header=BB7_110 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_162
.LBB7_160:                              #   in Loop: Header=BB7_110 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB7_162:                              #   in Loop: Header=BB7_110 Depth=1
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
	movq	-3152(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_165
# BB#163:                               #   in Loop: Header=BB7_110 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_165
# BB#164:                               #   in Loop: Header=BB7_110 Depth=1
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
.LBB7_165:                              #   in Loop: Header=BB7_110 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-3184(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_168
# BB#166:                               #   in Loop: Header=BB7_110 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_168
# BB#167:                               #   in Loop: Header=BB7_110 Depth=1
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
	.align	16, 0x90
.LBB7_168:                              #   in Loop: Header=BB7_110 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_170
# BB#169:                               #   in Loop: Header=BB7_110 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_173
	.align	16, 0x90
.LBB7_170:                              #   in Loop: Header=BB7_110 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_171
# BB#172:                               #   in Loop: Header=BB7_110 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_173
.LBB7_171:                              #   in Loop: Header=BB7_110 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB7_173:                              #   in Loop: Header=BB7_110 Depth=1
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
	je	.LBB7_176
# BB#174:                               #   in Loop: Header=BB7_110 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_176
# BB#175:                               #   in Loop: Header=BB7_110 Depth=1
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
.LBB7_176:                              #   in Loop: Header=BB7_110 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-3152(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_110
# BB#177:                               #   in Loop: Header=BB7_110 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB7_178
	jmp	.LBB7_110
.LBB7_181:
	movq	-48(%rbp), %rax
	addq	$3176, %rsp             # imm = 0xC68
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Meld, .Lfunc_end7-Meld
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"SplitIsDefinite: x not a SPLIT!"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DisposeObject: x has a parent!"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"word is too long"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"CopyObject: PAR child!"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"CopyObject: CLOSURE!"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"assert failed in %s %s"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"CopyObject:"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"InsertObject:"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Meld: type(x) != ACAT"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Meld: type(y) != ACAT"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s: maximum paragraph length (%d) exceeded"
	.size	.L.str.11, 43

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"@Meld"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"NextDefiniteWithGap: g == nilobj!"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1s"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Meld: g!"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"DisposeSplitObject: type(x) != SPLIT!"
	.size	.L.str.16, 38

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"DisposeSplitObject: x has no children!"
	.size	.L.str.17, 39

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"DisposeSplitObject: x has one child!"
	.size	.L.str.18, 37

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"DisposeSplitObject: children!"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"DisposeSplitObject: link (a)!"
	.size	.L.str.20, 30

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"DisposeSplitObject: link (b)!"
	.size	.L.str.21, 30


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
