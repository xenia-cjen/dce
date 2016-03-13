	.text
	.file	"z21.opt"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1124073472              # float 128
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4636737291354636288     # double 100
.LCPI0_2:
	.quad	4576918229304087675     # double 0.01
	.text
	.globl	SizeGalley
	.align	16, 0x90
	.type	SizeGalley,@function
SizeGalley:                             # @SizeGalley
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movq	64(%rbp), %r10
	movq	56(%rbp), %r11
	movq	48(%rbp), %r14
	movq	40(%rbp), %r15
	movq	32(%rbp), %r12
	movq	24(%rbp), %rbx
	movq	16(%rbp), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r12, -96(%rbp)
	movq	%r15, -104(%rbp)
	movq	%r14, -112(%rbp)
	movq	%r11, -120(%rbp)
	movq	%r10, -128(%rbp)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB0_2
# BB#1:
	movq	-48(%rbp), %rax
	cmpq	%rax, 8(%rax)
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
	movq	-48(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$1, %eax
	jae	.LBB0_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_5:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-136(%rbp), %rax
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_7
# BB#8:
	movq	-96(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -240(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
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
	movb	$17, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -264(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_15
# BB#14:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_18
.LBB0_15:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_16
# BB#17:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_18
.LBB0_16:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_18:
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
	movq	-264(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_21
# BB#19:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_21
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
.LBB0_21:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_24
# BB#22:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_24
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
.LBB0_24:
	cmpl	$0, AllowCrossDb(%rip)
	je	.LBB0_29
# BB#25:
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB0_29
# BB#26:
	movq	-136(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	126(%rax), %eax
	btl	$1, %eax
	jae	.LBB0_29
# BB#27:
	movq	-136(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	FindOptimize
	testl	%eax, %eax
	je	.LBB0_29
# BB#28:
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	SetOptimize
.LBB0_29:
	cmpl	$0, -64(%rbp)
	je	.LBB0_54
# BB#30:
	movzbl	zz_lengths+139(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_32
# BB#31:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_35
.LBB0_54:
	movq	-136(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movzwl	42(%rax), %eax
	shrl	$7, %eax
	andl	$1, %eax
	leaq	-224(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	movl	%eax, 16(%rsp)
	leaq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$0, 32(%rsp)
	movl	$1, 8(%rsp)
	leaq	-240(%rbp), %rcx
	leaq	-256(%rbp), %r8
	leaq	-216(%rbp), %r9
	callq	Manifest
	movq	%rax, -136(%rbp)
	jmp	.LBB0_55
.LBB0_32:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_33
# BB#34:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_35
.LBB0_33:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_35:
	movq	zz_hold(%rip), %rax
	movb	$-117, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -240(%rbp)
	movzbl	zz_lengths+139(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_37
# BB#36:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_40
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
.LBB0_38:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_40:
	movq	zz_hold(%rip), %rax
	movb	$-117, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -256(%rbp)
	movq	-136(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movzwl	42(%rax), %eax
	shrl	$7, %eax
	andl	$1, %eax
	leaq	-224(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	movl	%eax, 16(%rsp)
	leaq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$0, 32(%rsp)
	movl	$1, 8(%rsp)
	leaq	-240(%rbp), %rcx
	leaq	-256(%rbp), %r8
	leaq	-216(%rbp), %r9
	callq	Manifest
	movq	%rax, -136(%rbp)
	movq	-240(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_42
# BB#41:
	movq	-256(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB0_43
.LBB0_42:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_43:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_44
	.align	16, 0x90
.LBB0_45:                               #   in Loop: Header=BB0_44 Depth=1
	movq	-216(%rbp), %rax
.LBB0_44:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_45
# BB#46:
	movq	-256(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_47
	.align	16, 0x90
.LBB0_48:                               #   in Loop: Header=BB0_47 Depth=1
	movq	-224(%rbp), %rax
.LBB0_47:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_48
# BB#49:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	jne	.LBB0_52
# BB#50:
	movq	-256(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	jne	.LBB0_52
# BB#51:
	movq	-216(%rbp), %rax
	cmpq	-224(%rbp), %rax
	je	.LBB0_53
.LBB0_52:
	movq	-136(%rbp), %rbx
	addq	$32, %rbx
	movq	-48(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, %r9
	movl	$21, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB0_53:
	movq	-240(%rbp), %rdi
	callq	DisposeObject
	movq	-256(%rbp), %rdi
	callq	DisposeObject
.LBB0_55:
	movq	-264(%rbp), %rdi
	callq	DisposeObject
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_57
# BB#56:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_60
.LBB0_57:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_58
# BB#59:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_60
.LBB0_58:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_60:
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
	movq	%rax, -208(%rbp)
	movq	-136(%rbp), %rdi
	leaq	-208(%rbp), %rdx
	xorl	%esi, %esi
	callq	MinSize
	movq	%rax, -136(%rbp)
	movq	-48(%rbp), %rax
	testb	$1, 43(%rax)
	je	.LBB0_69
# BB#61:
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-88(%rbp), %rax
	movl	4(%rax), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movq	-136(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	BreakObject
	movq	%rax, -136(%rbp)
	movl	48(%rax), %eax
	movq	-88(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB0_64
# BB#62:
	movq	-136(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movq	-88(%rbp), %rax
	cmpl	4(%rax), %ecx
	jg	.LBB0_64
# BB#63:
	movq	-136(%rbp), %rax
	movl	56(%rax), %eax
	movq	-88(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB0_65
.LBB0_64:
	movq	-136(%rbp), %rbx
	movl	48(%rbx), %edi
	addq	$32, %rbx
	callq	EchoLength
	movq	%rax, %r14
	movq	-136(%rbp), %rax
	movl	56(%rax), %edi
	callq	EchoLength
	movq	%rax, (%rsp)
	movl	$21, %edi
	movl	$13, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	Error
.LBB0_65:
	movq	-136(%rbp), %rax
	movl	48(%rax), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-136(%rbp), %rax
	movl	56(%rax), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-48(%rbp), %rax
	movl	48(%rax), %eax
	movq	-88(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB0_68
# BB#66:
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movq	-88(%rbp), %rax
	cmpl	4(%rax), %ecx
	jg	.LBB0_68
# BB#67:
	movq	-48(%rbp), %rax
	movl	56(%rax), %eax
	movq	-88(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB0_73
.LBB0_68:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_73
.LBB0_69:
	movq	-48(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB0_73
# BB#70:
	movq	-48(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$9, %eax
	jae	.LBB0_73
# BB#71:
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB0_73
# BB#72:
	movq	-136(%rbp), %rdi
	callq	Hyphenate
	movq	%rax, -136(%rbp)
.LBB0_73:
	movq	-48(%rbp), %rax
	andw	$-33, 42(%rax)
	cmpl	$0, -60(%rbp)
	je	.LBB0_211
# BB#74:
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)
	movb	$1, %bl
	jmp	.LBB0_75
	.align	16, 0x90
.LBB0_210:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
.LBB0_75:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_77 Depth 2
                                        #     Child Loop BB0_117 Depth 2
                                        #     Child Loop BB0_124 Depth 2
                                        #     Child Loop BB0_129 Depth 2
                                        #     Child Loop BB0_134 Depth 2
                                        #       Child Loop BB0_136 Depth 3
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_211
# BB#76:                                #   in Loop: Header=BB0_75 Depth=1
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_77
	.align	16, 0x90
.LBB0_78:                               #   in Loop: Header=BB0_77 Depth=2
	movq	-136(%rbp), %rax
.LBB0_77:                               #   Parent Loop BB0_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_78
# BB#79:                                #   in Loop: Header=BB0_75 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	leal	-1(%rax), %ecx
	cmpl	$8, %ecx
	jbe	.LBB0_392
# BB#80:                                #   in Loop: Header=BB0_75 Depth=1
	cmpl	$17, %eax
	je	.LBB0_106
# BB#81:                                #   in Loop: Header=BB0_75 Depth=1
	cmpl	$19, %eax
	jne	.LBB0_210
# BB#82:                                #   in Loop: Header=BB0_75 Depth=1
	movq	-48(%rbp), %rax
	testb	$1, 43(%rax)
	je	.LBB0_210
# BB#83:                                #   in Loop: Header=BB0_75 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-280(%rbp), %rax
	cmpq	-288(%rbp), %rax
	je	.LBB0_93
# BB#84:                                #   in Loop: Header=BB0_75 Depth=1
	movq	-280(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_86
# BB#85:                                #   in Loop: Header=BB0_75 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_86:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-280(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-288(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_89
# BB#87:                                #   in Loop: Header=BB0_75 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_89
# BB#88:                                #   in Loop: Header=BB0_75 Depth=1
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
.LBB0_89:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-280(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-296(%rbp), %rax
	jmp	.LBB0_90
	.align	16, 0x90
.LBB0_392:                              #   in Loop: Header=BB0_75 Depth=1
	jmpq	*.LJTI0_1(,%rcx,8)
.LBB0_206:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-48(%rbp), %rax
	movzbl	43(%rax), %eax
	testb	$1, %al
	je	.LBB0_207
# BB#208:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-136(%rbp), %rax
	jmp	.LBB0_209
.LBB0_100:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-136(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB0_210
# BB#101:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-48(%rbp), %rax
	orw	$32, 42(%rax)
	jmp	.LBB0_210
.LBB0_114:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-136(%rbp), %rax
	movq	24(%rax), %rcx
	cmpq	16(%rax), %rcx
	je	.LBB0_116
# BB#115:                               #   in Loop: Header=BB0_75 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_116:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_117
	.align	16, 0x90
.LBB0_118:                              #   in Loop: Header=BB0_117 Depth=2
	movq	-152(%rbp), %rax
.LBB0_117:                              #   Parent Loop BB0_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_118
# BB#119:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB0_122
# BB#120:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jg	.LBB0_122
# BB#121:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-152(%rbp), %rax
.LBB0_209:                              #   in Loop: Header=BB0_75 Depth=1
	orw	$16, 42(%rax)
	jmp	.LBB0_210
.LBB0_106:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-48(%rbp), %rax
	movzbl	43(%rax), %eax
	testb	$1, %al
	jne	.LBB0_210
# BB#107:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-304(%rbp), %rax
	cmpq	-312(%rbp), %rax
	je	.LBB0_93
# BB#108:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-304(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_110
# BB#109:                               #   in Loop: Header=BB0_75 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_110:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-304(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-312(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_113
# BB#111:                               #   in Loop: Header=BB0_75 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_113
# BB#112:                               #   in Loop: Header=BB0_75 Depth=1
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
.LBB0_113:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-304(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-320(%rbp), %rax
.LBB0_90:                               #   in Loop: Header=BB0_75 Depth=1
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_93
# BB#91:                                #   in Loop: Header=BB0_75 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_93
# BB#92:                                #   in Loop: Header=BB0_75 Depth=1
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
	jmp	.LBB0_93
.LBB0_207:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-136(%rbp), %rax
	orw	$8, 42(%rax)
	jmp	.LBB0_210
.LBB0_122:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	jne	.LBB0_210
# BB#123:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_124
	.align	16, 0x90
.LBB0_125:                              #   in Loop: Header=BB0_124 Depth=2
	movq	-328(%rbp), %rax
.LBB0_124:                              #   Parent Loop BB0_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_125
# BB#126:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-328(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	je	.LBB0_128
# BB#127:                               #   in Loop: Header=BB0_75 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.10, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_128:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_129
	.align	16, 0x90
.LBB0_130:                              #   in Loop: Header=BB0_129 Depth=2
	movq	-336(%rbp), %rax
.LBB0_129:                              #   Parent Loop BB0_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_130
# BB#131:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-328(%rbp), %rax
	cmpq	-336(%rbp), %rax
	je	.LBB0_133
# BB#132:                               #   in Loop: Header=BB0_75 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_133:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-152(%rbp), %rax
	jmp	.LBB0_134
	.align	16, 0x90
.LBB0_195:                              #   in Loop: Header=BB0_134 Depth=2
	movq	-176(%rbp), %rax
.LBB0_134:                              #   Parent Loop BB0_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_136 Depth 3
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB0_196
# BB#135:                               #   in Loop: Header=BB0_134 Depth=2
	movq	-176(%rbp), %rax
	jmp	.LBB0_136
	.align	16, 0x90
.LBB0_137:                              #   in Loop: Header=BB0_136 Depth=3
	movq	-168(%rbp), %rax
.LBB0_136:                              #   Parent Loop BB0_75 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_137
# BB#138:                               #   in Loop: Header=BB0_134 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_145
# BB#139:                               #   in Loop: Header=BB0_134 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_141
# BB#140:                               #   in Loop: Header=BB0_134 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_144
	.align	16, 0x90
.LBB0_145:                              #   in Loop: Header=BB0_134 Depth=2
	movzbl	zz_lengths+9(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_147
# BB#146:                               #   in Loop: Header=BB0_134 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_150
	.align	16, 0x90
.LBB0_141:                              #   in Loop: Header=BB0_134 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_142
# BB#143:                               #   in Loop: Header=BB0_134 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_144
	.align	16, 0x90
.LBB0_147:                              #   in Loop: Header=BB0_134 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_148
# BB#149:                               #   in Loop: Header=BB0_134 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_150
.LBB0_142:                              #   in Loop: Header=BB0_134 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_144:                              #   in Loop: Header=BB0_134 Depth=2
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
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_189
.LBB0_148:                              #   in Loop: Header=BB0_134 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_150:                              #   in Loop: Header=BB0_134 Depth=2
	movq	zz_hold(%rip), %rax
	movb	$9, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -192(%rbp)
	movq	-328(%rbp), %rcx
	movl	48(%rcx), %ecx
	movl	%ecx, 48(%rax)
	movq	-328(%rbp), %rax
	movl	56(%rax), %eax
	movq	-192(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_152
# BB#151:                               #   in Loop: Header=BB0_134 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_155
	.align	16, 0x90
.LBB0_152:                              #   in Loop: Header=BB0_134 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_153
# BB#154:                               #   in Loop: Header=BB0_134 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_155
.LBB0_153:                              #   in Loop: Header=BB0_134 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_155:                              #   in Loop: Header=BB0_134 Depth=2
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
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_158
# BB#156:                               #   in Loop: Header=BB0_134 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_158
# BB#157:                               #   in Loop: Header=BB0_134 Depth=2
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
.LBB0_158:                              #   in Loop: Header=BB0_134 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-192(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_161
# BB#159:                               #   in Loop: Header=BB0_134 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_161
# BB#160:                               #   in Loop: Header=BB0_134 Depth=2
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
.LBB0_161:                              #   in Loop: Header=BB0_134 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_163
# BB#162:                               #   in Loop: Header=BB0_134 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_166
	.align	16, 0x90
.LBB0_163:                              #   in Loop: Header=BB0_134 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_164
# BB#165:                               #   in Loop: Header=BB0_134 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_166
.LBB0_164:                              #   in Loop: Header=BB0_134 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_166:                              #   in Loop: Header=BB0_134 Depth=2
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
	movq	-192(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_169
# BB#167:                               #   in Loop: Header=BB0_134 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_169
# BB#168:                               #   in Loop: Header=BB0_134 Depth=2
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
.LBB0_169:                              #   in Loop: Header=BB0_134 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-344(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_172
# BB#170:                               #   in Loop: Header=BB0_134 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_172
# BB#171:                               #   in Loop: Header=BB0_134 Depth=2
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
.LBB0_172:                              #   in Loop: Header=BB0_134 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_174
# BB#173:                               #   in Loop: Header=BB0_134 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_177
	.align	16, 0x90
.LBB0_174:                              #   in Loop: Header=BB0_134 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_175
# BB#176:                               #   in Loop: Header=BB0_134 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_177
.LBB0_175:                              #   in Loop: Header=BB0_134 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_177:                              #   in Loop: Header=BB0_134 Depth=2
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
	movq	-352(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_180
# BB#178:                               #   in Loop: Header=BB0_134 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_180
# BB#179:                               #   in Loop: Header=BB0_134 Depth=2
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
.LBB0_180:                              #   in Loop: Header=BB0_134 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_183
# BB#181:                               #   in Loop: Header=BB0_134 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_183
# BB#182:                               #   in Loop: Header=BB0_134 Depth=2
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
.LBB0_183:                              #   in Loop: Header=BB0_134 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_185
# BB#184:                               #   in Loop: Header=BB0_134 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_188
	.align	16, 0x90
.LBB0_185:                              #   in Loop: Header=BB0_134 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_186
# BB#187:                               #   in Loop: Header=BB0_134 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_188
.LBB0_186:                              #   in Loop: Header=BB0_134 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_188:                              #   in Loop: Header=BB0_134 Depth=2
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
	movq	-192(%rbp), %rax
.LBB0_189:                              #   in Loop: Header=BB0_134 Depth=2
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_192
# BB#190:                               #   in Loop: Header=BB0_134 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_192
# BB#191:                               #   in Loop: Header=BB0_134 Depth=2
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
.LBB0_192:                              #   in Loop: Header=BB0_134 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_195
# BB#193:                               #   in Loop: Header=BB0_134 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_195
# BB#194:                               #   in Loop: Header=BB0_134 Depth=2
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
	jmp	.LBB0_195
.LBB0_196:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-352(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_198
# BB#197:                               #   in Loop: Header=BB0_75 Depth=1
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
.LBB0_198:                              #   in Loop: Header=BB0_75 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_200
# BB#199:                               #   in Loop: Header=BB0_75 Depth=1
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
.LBB0_200:                              #   in Loop: Header=BB0_75 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_202
# BB#201:                               #   in Loop: Header=BB0_75 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_203
.LBB0_202:                              #   in Loop: Header=BB0_75 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_204
.LBB0_203:                              #   in Loop: Header=BB0_75 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_204:                              #   in Loop: Header=BB0_75 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-136(%rbp), %rax
	movq	24(%rax), %rcx
	cmpq	16(%rax), %rcx
	je	.LBB0_93
# BB#205:                               #   in Loop: Header=BB0_75 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_93:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_95
# BB#94:                                #   in Loop: Header=BB0_75 Depth=1
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
.LBB0_95:                               #   in Loop: Header=BB0_75 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_97
# BB#96:                                #   in Loop: Header=BB0_75 Depth=1
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
.LBB0_97:                               #   in Loop: Header=BB0_75 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_99
# BB#98:                                #   in Loop: Header=BB0_75 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_102
.LBB0_99:                               #   in Loop: Header=BB0_75 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_103
.LBB0_102:                              #   in Loop: Header=BB0_75 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_103:                              #   in Loop: Header=BB0_75 Depth=1
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
	jne	.LBB0_105
# BB#104:                               #   in Loop: Header=BB0_75 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_105:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB0_210
.LBB0_211:
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	leaq	-368(%rbp), %r14
	leaq	-200(%rbp), %rbx
	jmp	.LBB0_212
	.align	16, 0x90
.LBB0_250:                              #   in Loop: Header=BB0_212 Depth=1
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
.LBB0_212:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_214 Depth 2
                                        #     Child Loop BB0_224 Depth 2
	movq	-144(%rbp), %rax
	cmpq	-208(%rbp), %rax
	je	.LBB0_251
# BB#213:                               #   in Loop: Header=BB0_212 Depth=1
	movq	-144(%rbp), %rax
	jmp	.LBB0_214
	.align	16, 0x90
.LBB0_215:                              #   in Loop: Header=BB0_214 Depth=2
	movq	-136(%rbp), %rax
.LBB0_214:                              #   Parent Loop BB0_212 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_215
# BB#216:                               #   in Loop: Header=BB0_212 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$136, %eax
	jne	.LBB0_250
# BB#217:                               #   in Loop: Header=BB0_212 Depth=1
	movq	-136(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -152(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$34, %eax
	je	.LBB0_219
# BB#218:                               #   in Loop: Header=BB0_212 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_219:                              #   in Loop: Header=BB0_212 Depth=1
	movq	-152(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB0_221
# BB#220:                               #   in Loop: Header=BB0_212 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_221:                              #   in Loop: Header=BB0_212 Depth=1
	movq	-152(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB0_223
# BB#222:                               #   in Loop: Header=BB0_212 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_223:                              #   in Loop: Header=BB0_212 Depth=1
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_224
	.align	16, 0x90
.LBB0_225:                              #   in Loop: Header=BB0_224 Depth=2
	movq	-376(%rbp), %rax
.LBB0_224:                              #   Parent Loop BB0_212 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_225
# BB#226:                               #   in Loop: Header=BB0_212 Depth=1
	movq	-48(%rbp), %rax
	movzbl	43(%rax), %eax
	testb	$1, %al
	jne	.LBB0_228
# BB#227:                               #   in Loop: Header=BB0_212 Depth=1
	movq	-152(%rbp), %r8
	addq	$32, %r8
	movl	$21, %edi
	movl	$2, %esi
	movl	$.L.str.16, %edx
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_228:                              #   in Loop: Header=BB0_212 Depth=1
	movq	-152(%rbp), %rdi
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%rbx, %rcx
	callq	Constrained
	cmpl	$8388607, -368(%rbp)    # imm = 0x7FFFFF
	jne	.LBB0_233
# BB#229:                               #   in Loop: Header=BB0_212 Depth=1
	cmpl	$8388607, -364(%rbp)    # imm = 0x7FFFFF
	jne	.LBB0_233
# BB#230:                               #   in Loop: Header=BB0_212 Depth=1
	cmpl	$8388607, -360(%rbp)    # imm = 0x7FFFFF
	je	.LBB0_231
	.align	16, 0x90
.LBB0_233:                              #   in Loop: Header=BB0_212 Depth=1
	movq	-376(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	je	.LBB0_234
# BB#235:                               #   in Loop: Header=BB0_212 Depth=1
	cvtsi2ssl	-364(%rbp), %xmm0
	movq	-376(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	cvtsi2ssl	%ecx, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	ucomisd	.LCPI0_1(%rip), %xmm0
	jbe	.LBB0_237
# BB#236:                               #   in Loop: Header=BB0_212 Depth=1
	movq	-152(%rbp), %r8
	addq	$32, %r8
	movl	$21, %edi
	movl	$5, %esi
	movl	$.L.str.20, %edx
	jmp	.LBB0_232
.LBB0_234:                              #   in Loop: Header=BB0_212 Depth=1
	movq	-152(%rbp), %r8
	addq	$32, %r8
	movl	$21, %edi
	movl	$4, %esi
	movl	$.L.str.19, %edx
	jmp	.LBB0_232
.LBB0_237:                              #   in Loop: Header=BB0_212 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-364(%rbp), %xmm0
	movq	-376(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_247
# BB#238:                               #   in Loop: Header=BB0_212 Depth=1
	cmpl	$0, -364(%rbp)
	je	.LBB0_239
# BB#240:                               #   in Loop: Header=BB0_212 Depth=1
	movq	-152(%rbp), %r8
	addq	$32, %r8
	movl	$21, %edi
	movl	$7, %esi
	movl	$.L.str.22, %edx
	jmp	.LBB0_241
.LBB0_247:                              #   in Loop: Header=BB0_212 Depth=1
	movl	-364(%rbp), %eax
	shll	$7, %eax
	movq	-376(%rbp), %rcx
	movl	48(%rcx), %esi
	addl	56(%rcx), %esi
	cltd
	idivl	%esi
	movq	-152(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movq	-152(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB0_248
.LBB0_231:                              #   in Loop: Header=BB0_212 Depth=1
	movq	-152(%rbp), %r8
	addq	$32, %r8
	movl	$21, %edi
	movl	$3, %esi
	movl	$.L.str.18, %edx
	.align	16, 0x90
.LBB0_232:                              #   in Loop: Header=BB0_212 Depth=1
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-152(%rbp), %rax
	movl	$128, 72(%rax)
	movq	-152(%rbp), %rax
	movl	$128, 64(%rax)
.LBB0_248:                              #   in Loop: Header=BB0_212 Depth=1
	movq	-376(%rbp), %rax
	movl	48(%rax), %eax
	movq	-152(%rbp), %rcx
	imull	72(%rcx), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	addl	%eax, %ecx
	sarl	$7, %ecx
	movl	%ecx, -380(%rbp)
	movq	-376(%rbp), %rax
	movl	56(%rax), %eax
	movq	-152(%rbp), %rcx
	imull	72(%rcx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$25, %edx
	addl	%eax, %edx
	sarl	$7, %edx
	movl	%edx, -384(%rbp)
	movq	-152(%rbp), %rdi
	movl	-380(%rbp), %esi
	xorl	%ecx, %ecx
	callq	AdjustSize
	movq	-152(%rbp), %rax
	testb	$1, 42(%rax)
	je	.LBB0_250
# BB#249:                               #   in Loop: Header=BB0_212 Depth=1
	movq	-376(%rbp), %rax
	movl	52(%rax), %eax
	movq	-152(%rbp), %rcx
	imull	72(%rcx), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	addl	%eax, %ecx
	sarl	$7, %ecx
	movl	%ecx, -380(%rbp)
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	movq	-152(%rbp), %rcx
	imull	72(%rcx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$25, %edx
	addl	%eax, %edx
	sarl	$7, %edx
	movl	%edx, -384(%rbp)
	movq	-152(%rbp), %rdi
	movl	-380(%rbp), %esi
	movl	$1, %ecx
	callq	AdjustSize
	jmp	.LBB0_250
.LBB0_239:                              #   in Loop: Header=BB0_212 Depth=1
	movq	-152(%rbp), %r8
	addq	$32, %r8
	movl	$21, %edi
	movl	$6, %esi
	movl	$.L.str.21, %edx
.LBB0_241:                              #   in Loop: Header=BB0_212 Depth=1
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-152(%rbp), %rax
	movl	$128, 72(%rax)
	movq	-152(%rbp), %rax
	movl	$128, 64(%rax)
	movq	-376(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.23, %esi
	callq	MakeWord
	movq	%rax, -192(%rbp)
	movl	$0, 56(%rax)
	movq	-192(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-192(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-192(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-192(%rbp), %rax
	andl	$-528482305, 40(%rax)   # imm = 0xFFFFFFFFE07FFFFF
	movq	-192(%rbp), %rax
	andl	$-4190209, 40(%rax)     # imm = 0xFFFFFFFFFFC00FFF
	movq	-192(%rbp), %rax
	andl	$-4096, 40(%rax)        # imm = 0xFFFFFFFFFFFFF000
	movq	-192(%rbp), %rax
	andl	$-4194305, 40(%rax)     # imm = 0xFFFFFFFFFFBFFFFF
	movq	-192(%rbp), %rax
	andl	$2147483647, 40(%rax)   # imm = 0x7FFFFFFF
	movq	-376(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_243
# BB#242:                               #   in Loop: Header=BB0_212 Depth=1
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
.LBB0_243:                              #   in Loop: Header=BB0_212 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	-192(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_246
# BB#244:                               #   in Loop: Header=BB0_212 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_246
# BB#245:                               #   in Loop: Header=BB0_212 Depth=1
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
.LBB0_246:                              #   in Loop: Header=BB0_212 Depth=1
	movq	-376(%rbp), %rdi
	callq	DisposeObject
	movq	-192(%rbp), %rax
	movq	%rax, -376(%rbp)
	jmp	.LBB0_248
.LBB0_251:
	movq	-208(%rbp), %rdi
	callq	DisposeObject
	movq	-104(%rbp), %rax
	movq	$0, (%rax)
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	movq	-112(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -268(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movb	$1, %r14b
	leaq	-208(%rbp), %r12
	leaq	-200(%rbp), %r15
	jmp	.LBB0_252
	.align	16, 0x90
.LBB0_376:                              #   in Loop: Header=BB0_252 Depth=1
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
.LBB0_252:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_254 Depth 2
                                        #     Child Loop BB0_265 Depth 2
                                        #       Child Loop BB0_267 Depth 3
                                        #       Child Loop BB0_320 Depth 3
                                        #       Child Loop BB0_322 Depth 3
                                        #         Child Loop BB0_328 Depth 4
                                        #       Child Loop BB0_331 Depth 3
	movq	-144(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_377
# BB#253:                               #   in Loop: Header=BB0_252 Depth=1
	movq	-144(%rbp), %rax
	jmp	.LBB0_254
	.align	16, 0x90
.LBB0_255:                              #   in Loop: Header=BB0_254 Depth=2
	movq	-136(%rbp), %rax
.LBB0_254:                              #   Parent Loop BB0_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_255
# BB#256:                               #   in Loop: Header=BB0_252 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_376
# BB#257:                               #   in Loop: Header=BB0_252 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB0_259
# BB#258:                               #   in Loop: Header=BB0_252 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	jl	.LBB0_376
.LBB0_259:                              #   in Loop: Header=BB0_252 Depth=1
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r14b, %r14b
	jne	.LBB0_261
# BB#260:                               #   in Loop: Header=BB0_252 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_264
.LBB0_261:                              #   in Loop: Header=BB0_252 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_262
# BB#263:                               #   in Loop: Header=BB0_252 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_264
.LBB0_262:                              #   in Loop: Header=BB0_252 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_264:                              #   in Loop: Header=BB0_252 Depth=1
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
	movq	%rax, -208(%rbp)
	movq	-136(%rbp), %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	callq	MinSize
	movq	%rax, -136(%rbp)
	movq	-208(%rbp), %rax
	jmp	.LBB0_265
	.align	16, 0x90
.LBB0_358:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-184(%rbp), %rax
.LBB0_265:                              #   Parent Loop BB0_252 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_267 Depth 3
                                        #       Child Loop BB0_320 Depth 3
                                        #       Child Loop BB0_322 Depth 3
                                        #         Child Loop BB0_328 Depth 4
                                        #       Child Loop BB0_331 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpq	-208(%rbp), %rax
	je	.LBB0_359
# BB#266:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-184(%rbp), %rax
	jmp	.LBB0_267
	.align	16, 0x90
.LBB0_268:                              #   in Loop: Header=BB0_267 Depth=3
	movq	-152(%rbp), %rax
.LBB0_267:                              #   Parent Loop BB0_252 Depth=1
                                        #     Parent Loop BB0_265 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_268
# BB#269:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-152(%rbp), %rax
	andw	$-33, 42(%rax)
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-120, %eax
	cmpl	$18, %eax
	ja	.LBB0_357
# BB#270:                               #   in Loop: Header=BB0_265 Depth=2
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_300:                              #   in Loop: Header=BB0_265 Depth=2
	cmpl	$0, -268(%rbp)
	jne	.LBB0_358
# BB#301:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_308
# BB#302:                               #   in Loop: Header=BB0_265 Depth=2
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r14b, %r14b
	jne	.LBB0_304
# BB#303:                               #   in Loop: Header=BB0_265 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_307
	.align	16, 0x90
.LBB0_357:                              #   in Loop: Header=BB0_265 Depth=2
	movq	no_fpos(%rip), %rbx
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.28, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB0_358
.LBB0_271:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$11, %eax
	jae	.LBB0_272
# BB#273:                               #   in Loop: Header=BB0_265 Depth=2
	cmpl	$0, -72(%rbp)
	setne	%al
	jmp	.LBB0_274
.LBB0_281:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_288
# BB#282:                               #   in Loop: Header=BB0_265 Depth=2
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r14b, %r14b
	jne	.LBB0_284
# BB#283:                               #   in Loop: Header=BB0_265 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_287
.LBB0_314:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -392(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$32, %eax
	jne	.LBB0_316
# BB#315:                               #   in Loop: Header=BB0_265 Depth=2
	movl	$0, -412(%rbp)
	movl	$16, -416(%rbp)
	movl	$19, -420(%rbp)
	movl	$19, -424(%rbp)
	movl	$30, -432(%rbp)
	movl	$24, -436(%rbp)
	jmp	.LBB0_317
.LBB0_316:                              #   in Loop: Header=BB0_265 Depth=2
	movl	$1, -412(%rbp)
	movl	$15, -416(%rbp)
	movl	$17, -420(%rbp)
	movl	$18, -424(%rbp)
	movl	$31, -432(%rbp)
	movl	$25, -436(%rbp)
.LBB0_317:                              #   in Loop: Header=BB0_265 Depth=2
	cmpl	$0, -412(%rbp)
	je	.LBB0_318
# BB#319:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-392(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB0_320
.LBB0_272:                              #   in Loop: Header=BB0_265 Depth=2
	xorl	%eax, %eax
.LBB0_274:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-152(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$6, %eax
	andl	$65471, %edx            # imm = 0xFFBF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movzwl	-68(%rbp), %eax
	movq	-152(%rbp), %rcx
	movzwl	42(%rcx), %edx
	andl	$1, %eax
	andl	$65534, %edx            # imm = 0xFFFE
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	GalleySym(%rip), %rax
	je	.LBB0_276
# BB#275:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	ForceGalleySym(%rip), %rax
	jne	.LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-152(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB0_277:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	GalleySym(%rip), %rax
	je	.LBB0_280
# BB#278:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	ForceGalleySym(%rip), %rax
	je	.LBB0_280
# BB#279:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	InputSym(%rip), %rax
	jne	.LBB0_358
.LBB0_280:                              #   in Loop: Header=BB0_265 Depth=2
	movl	$1, -268(%rbp)
	movq	-184(%rbp), %rax
	jmp	.LBB0_265
.LBB0_318:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-392(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_320
	.align	16, 0x90
.LBB0_321:                              #   in Loop: Header=BB0_320 Depth=3
	movq	-400(%rbp), %rax
.LBB0_320:                              #   Parent Loop BB0_252 Depth=1
                                        #     Parent Loop BB0_265 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_321
	jmp	.LBB0_322
	.align	16, 0x90
.LBB0_325:                              #   in Loop: Header=BB0_322 Depth=3
	cmpl	$0, -412(%rbp)
	je	.LBB0_326
# BB#327:                               #   in Loop: Header=BB0_322 Depth=3
	movq	-400(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB0_328
	.align	16, 0x90
.LBB0_326:                              #   in Loop: Header=BB0_322 Depth=3
	movq	-400(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_328
	.align	16, 0x90
.LBB0_329:                              #   in Loop: Header=BB0_328 Depth=4
	movq	-400(%rbp), %rax
.LBB0_328:                              #   Parent Loop BB0_252 Depth=1
                                        #     Parent Loop BB0_265 Depth=2
                                        #       Parent Loop BB0_322 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_329
.LBB0_322:                              #   Parent Loop BB0_252 Depth=1
                                        #     Parent Loop BB0_265 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_328 Depth 4
	movq	-400(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$9, %ecx
	je	.LBB0_324
# BB#323:                               #   in Loop: Header=BB0_322 Depth=3
	movq	-400(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	-416(%rbp), %eax
	sete	%al
.LBB0_324:                              #   in Loop: Header=BB0_322 Depth=3
	testb	%al, %al
	jne	.LBB0_325
# BB#330:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_331
	.align	16, 0x90
.LBB0_332:                              #   in Loop: Header=BB0_331 Depth=3
	movq	-408(%rbp), %rax
.LBB0_331:                              #   Parent Loop BB0_252 Depth=1
                                        #     Parent Loop BB0_265 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_332
# BB#333:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-400(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	-420(%rbp), %eax
	je	.LBB0_337
# BB#334:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-400(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	-424(%rbp), %eax
	je	.LBB0_337
# BB#335:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-392(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r13
	movl	-432(%rbp), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$21, %edi
	movl	$8, %esi
	movl	$.L.str.24, %edx
	jmp	.LBB0_336
.LBB0_337:                              #   in Loop: Header=BB0_265 Depth=2
	movslq	-412(%rbp), %rax
	movq	-408(%rbp), %rcx
	cmpl	$0, 48(%rcx,%rax,4)
	jne	.LBB0_341
# BB#338:                               #   in Loop: Header=BB0_265 Depth=2
	movslq	-412(%rbp), %rax
	movq	-408(%rbp), %rcx
	cmpl	$0, 56(%rcx,%rax,4)
	je	.LBB0_339
.LBB0_341:                              #   in Loop: Header=BB0_265 Depth=2
	movslq	-412(%rbp), %rax
	movq	-408(%rbp), %rcx
	cmpl	$0, 48(%rcx,%rax,4)
	je	.LBB0_343
# BB#342:                               #   in Loop: Header=BB0_265 Depth=2
	movslq	-412(%rbp), %rax
	movq	-408(%rbp), %rcx
	cmpl	$0, 56(%rcx,%rax,4)
	je	.LBB0_343
# BB#344:                               #   in Loop: Header=BB0_265 Depth=2
	movslq	-412(%rbp), %rax
	movq	-400(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
	addl	56(%rcx,%rax,4), %edx
	je	.LBB0_345
# BB#346:                               #   in Loop: Header=BB0_265 Depth=2
	movslq	-412(%rbp), %rax
	movq	-400(%rbp), %rcx
	cvtsi2ssl	48(%rcx,%rax,4), %xmm0
	movq	-408(%rbp), %rcx
	cvtsi2ssl	48(%rcx,%rax,4), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -440(%rbp)
	movslq	-412(%rbp), %rax
	movq	-400(%rbp), %rcx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	56(%rcx,%rax,4), %xmm0
	movq	-408(%rbp), %rcx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	56(%rcx,%rax,4), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -444(%rbp)
	ucomiss	-440(%rbp), %xmm0
	jbe	.LBB0_348
# BB#347:                               #   in Loop: Header=BB0_265 Depth=2
	movss	-444(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_349
.LBB0_343:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-392(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r13
	movl	-432(%rbp), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$21, %edi
	movl	$9, %esi
	movl	$.L.str.25, %edx
	jmp	.LBB0_336
.LBB0_284:                              #   in Loop: Header=BB0_265 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_285
# BB#286:                               #   in Loop: Header=BB0_265 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_287
.LBB0_339:                              #   in Loop: Header=BB0_265 Depth=2
	movb	-436(%rbp), %al
	jmp	.LBB0_340
.LBB0_345:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-392(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r13
	movl	-432(%rbp), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$21, %edi
	movl	$10, %esi
	movl	$.L.str.26, %edx
	jmp	.LBB0_336
.LBB0_348:                              #   in Loop: Header=BB0_265 Depth=2
	movss	-440(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
.LBB0_349:                              #   in Loop: Header=BB0_265 Depth=2
	mulss	.LCPI0_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -428(%rbp)
	movslq	-412(%rbp), %rcx
	movq	-408(%rbp), %rdx
	imull	48(%rdx,%rcx,4), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	addl	%eax, %ecx
	sarl	$7, %ecx
	movl	%ecx, -468(%rbp)
	movslq	-412(%rbp), %rax
	movq	-408(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	imull	-428(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	addl	%eax, %ecx
	sarl	$7, %ecx
	movl	%ecx, -472(%rbp)
	movq	-392(%rbp), %rdi
	movl	-412(%rbp), %edx
	leaq	-464(%rbp), %rsi
	movq	%r15, %rcx
	callq	Constrained
	movl	-468(%rbp), %eax
	cmpl	-464(%rbp), %eax
	jg	.LBB0_356
# BB#350:                               #   in Loop: Header=BB0_265 Depth=2
	movl	-468(%rbp), %eax
	addl	-472(%rbp), %eax
	cmpl	-460(%rbp), %eax
	jg	.LBB0_356
# BB#351:                               #   in Loop: Header=BB0_265 Depth=2
	movl	-472(%rbp), %eax
	cmpl	-456(%rbp), %eax
	jg	.LBB0_356
# BB#352:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-392(%rbp), %rax
	movb	$34, 32(%rax)
	cmpl	$0, -412(%rbp)
	je	.LBB0_353
# BB#354:                               #   in Loop: Header=BB0_265 Depth=2
	movq	-392(%rbp), %rax
	movl	$128, 64(%rax)
	movl	-428(%rbp), %eax
	movq	-392(%rbp), %rcx
	movl	%eax, 72(%rcx)
	jmp	.LBB0_355
.LBB0_356:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-392(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r13
	movl	-432(%rbp), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$21, %edi
	movl	$11, %esi
	movl	$.L.str.27, %edx
.LBB0_336:                              #   in Loop: Header=BB0_265 Depth=2
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r13, %r9
	callq	Error
	movb	-432(%rbp), %al
.LBB0_340:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-392(%rbp), %rcx
	movb	%al, 32(%rcx)
	movq	-184(%rbp), %rax
	jmp	.LBB0_265
.LBB0_304:                              #   in Loop: Header=BB0_265 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_305
# BB#306:                               #   in Loop: Header=BB0_265 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_307
.LBB0_285:                              #   in Loop: Header=BB0_265 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_287:                              #   in Loop: Header=BB0_265 Depth=2
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
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB0_288:                              #   in Loop: Header=BB0_265 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r14b, %r14b
	jne	.LBB0_290
# BB#289:                               #   in Loop: Header=BB0_265 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_293
.LBB0_290:                              #   in Loop: Header=BB0_265 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_291
# BB#292:                               #   in Loop: Header=BB0_265 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_293
.LBB0_291:                              #   in Loop: Header=BB0_265 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_293:                              #   in Loop: Header=BB0_265 Depth=2
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
	jmp	.LBB0_294
.LBB0_305:                              #   in Loop: Header=BB0_265 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_307:                              #   in Loop: Header=BB0_265 Depth=2
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
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB0_308:                              #   in Loop: Header=BB0_265 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r14b, %r14b
	jne	.LBB0_310
# BB#309:                               #   in Loop: Header=BB0_265 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_313
.LBB0_310:                              #   in Loop: Header=BB0_265 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_311
# BB#312:                               #   in Loop: Header=BB0_265 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_313
.LBB0_311:                              #   in Loop: Header=BB0_265 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_313:                              #   in Loop: Header=BB0_265 Depth=2
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
.LBB0_294:                              #   in Loop: Header=BB0_265 Depth=2
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_297
# BB#295:                               #   in Loop: Header=BB0_265 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_297
# BB#296:                               #   in Loop: Header=BB0_265 Depth=2
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
.LBB0_297:                              #   in Loop: Header=BB0_265 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-152(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_358
# BB#298:                               #   in Loop: Header=BB0_265 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_358
# BB#299:                               #   in Loop: Header=BB0_265 Depth=2
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
	movq	-184(%rbp), %rax
	jmp	.LBB0_265
.LBB0_353:                              #   in Loop: Header=BB0_265 Depth=2
	movl	-428(%rbp), %eax
	movq	-392(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-392(%rbp), %rax
	movl	$128, 72(%rax)
.LBB0_355:                              #   in Loop: Header=BB0_265 Depth=2
	movq	-392(%rbp), %rdi
	movl	-468(%rbp), %esi
	movl	-472(%rbp), %edx
	movl	-412(%rbp), %ecx
	callq	AdjustSize
	movq	-184(%rbp), %rax
	jmp	.LBB0_265
	.align	16, 0x90
.LBB0_359:                              #   in Loop: Header=BB0_252 Depth=1
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	-480(%rbp), %rax
	cmpq	-488(%rbp), %rax
	je	.LBB0_368
# BB#360:                               #   in Loop: Header=BB0_252 Depth=1
	movq	-480(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_362
# BB#361:                               #   in Loop: Header=BB0_252 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_362:                              #   in Loop: Header=BB0_252 Depth=1
	movq	-480(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-488(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_365
# BB#363:                               #   in Loop: Header=BB0_252 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_365
# BB#364:                               #   in Loop: Header=BB0_252 Depth=1
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
.LBB0_365:                              #   in Loop: Header=BB0_252 Depth=1
	movq	-480(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-496(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_368
# BB#366:                               #   in Loop: Header=BB0_252 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_368
# BB#367:                               #   in Loop: Header=BB0_252 Depth=1
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
.LBB0_368:                              #   in Loop: Header=BB0_252 Depth=1
	movq	-208(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB0_370
# BB#369:                               #   in Loop: Header=BB0_252 Depth=1
	movq	-208(%rbp), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB0_371
.LBB0_370:                              #   in Loop: Header=BB0_252 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.30, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_371:                              #   in Loop: Header=BB0_252 Depth=1
	movq	-208(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_373
# BB#372:                               #   in Loop: Header=BB0_252 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_374
.LBB0_373:                              #   in Loop: Header=BB0_252 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_375
.LBB0_374:                              #   in Loop: Header=BB0_252 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_375:                              #   in Loop: Header=BB0_252 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_376
.LBB0_377:
	cmpq	$0, -160(%rbp)
	je	.LBB0_388
# BB#378:
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-504(%rbp), %rax
	cmpq	-512(%rbp), %rax
	je	.LBB0_387
# BB#379:
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_381
# BB#380:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_381:
	movq	-504(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-512(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_384
# BB#382:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_384
# BB#383:
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
.LBB0_384:
	movq	-504(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-520(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_387
# BB#385:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_387
# BB#386:
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
.LBB0_387:
	movq	-160(%rbp), %rdi
	callq	DisposeObject
.LBB0_388:
	cmpq	$0, -96(%rbp)
	je	.LBB0_391
# BB#389:
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_391
# BB#390:
	movq	-48(%rbp), %rbx
	addq	$32, %rbx
	movq	-96(%rbp), %rdi
	callq	SymName
	movq	%rax, %r14
	movq	-48(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movl	$21, %edi
	movl	$12, %esi
	movl	$.L.str.31, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	Error
.LBB0_391:
	movq	-48(%rbp), %rax
	orw	$2, 42(%rax)
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	SizeGalley, .Lfunc_end0-SizeGalley
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_300
	.quad	.LBB0_271
	.quad	.LBB0_357
	.quad	.LBB0_281
	.quad	.LBB0_357
	.quad	.LBB0_357
	.quad	.LBB0_357
	.quad	.LBB0_358
	.quad	.LBB0_358
	.quad	.LBB0_358
	.quad	.LBB0_358
	.quad	.LBB0_358
	.quad	.LBB0_358
	.quad	.LBB0_358
	.quad	.LBB0_358
	.quad	.LBB0_358
	.quad	.LBB0_358
	.quad	.LBB0_314
	.quad	.LBB0_358
.LJTI0_1:
	.quad	.LBB0_100
	.quad	.LBB0_206
	.quad	.LBB0_210
	.quad	.LBB0_210
	.quad	.LBB0_210
	.quad	.LBB0_210
	.quad	.LBB0_210
	.quad	.LBB0_206
	.quad	.LBB0_114

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"SizeGalley: precondition!"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"SizeGalley: already sized!"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"word is too long"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"SizeGalley: threads!"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"galley %s must have just one column mark"
	.size	.L.str.5, 41

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s,%s object too wide for available space"
	.size	.L.str.6, 42

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"SizeGalley: BreakObject failed to fit!"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"SizeGalley COL_THR: Up(y)!=LastUp(y)!"
	.size	.L.str.9, 38

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"SizeGalley: missing COL_THR!"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"SizeGalley/SPLIT: hor != thor!"
	.size	.L.str.11, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"SizeGalley COL_THR: Up(y) != LastUp(y)!"
	.size	.L.str.12, 40

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"SizeObject: type(z) != SCALE!"
	.size	.L.str.13, 30

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"SizeObject: bc(constraint(z)) != 0"
	.size	.L.str.14, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"SizeObject SCALE: Down(z) == z!"
	.size	.L.str.15, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s with unspecified scale factor in horizontal galley"
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"@Scale"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"replacing infinite scale factor (unconstrained width) by 1.0"
	.size	.L.str.18, 61

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"replacing infinite scale factor (zero width object) by 1.0"
	.size	.L.str.19, 59

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"replacing very large scale factor (over 100) by 1.0"
	.size	.L.str.20, 52

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"object deleted (scale factor is zero)"
	.size	.L.str.21, 38

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"object deleted (scale factor is smaller than 0.01)"
	.size	.L.str.22, 51

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.zero	1
	.size	.L.str.23, 1

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s replaced by %s (mark not shared)"
	.size	.L.str.24, 36

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s replaced by %s (infinite scale factor)"
	.size	.L.str.25, 42

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s replaced by %s (zero scale factor)"
	.size	.L.str.26, 38

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s replaced by %s (insufficient space)"
	.size	.L.str.27, 39

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"assert failed in %s %s"
	.size	.L.str.28, 23

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"SizeGalley:"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"SizeG: extras!"
	.size	.L.str.30, 15

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"unexpected absence of %s from the body of %s"
	.size	.L.str.31, 45


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
