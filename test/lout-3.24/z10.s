	.text
	.file	"z10.opt"
	.globl	CrossInit
	.align	16, 0x90
	.type	CrossInit,@function
CrossInit:                              # @CrossInit
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movzbl	zz_lengths+140(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_5
.LBB0_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_5
.LBB0_3:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_5:
	movq	zz_hold(%rip), %rax
	movb	$-116, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -16(%rbp)
	movb	$0, 33(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-16(%rbp), %rax
	movw	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 88(%rcx)
	cmpq	$0, RootCross(%rip)
	jne	.LBB0_12
# BB#6:
	movzbl	zz_lengths+141(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_11
.LBB0_8:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_9
# BB#10:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_11
.LBB0_9:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_11:
	movq	zz_hold(%rip), %rax
	movb	$-115, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, RootCross(%rip)
.LBB0_12:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_14
# BB#13:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_17
.LBB0_14:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_15
# BB#16:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_17
.LBB0_15:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_17:
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
	movq	RootCross(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_20
# BB#18:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_20
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
.LBB0_20:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_23
# BB#21:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_23
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
.LBB0_23:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	CrossInit, .Lfunc_end0-CrossInit
	.cfi_endproc

	.globl	CrossMake
	.align	16, 0x90
	.type	CrossMake,@function
CrossMake:                              # @CrossMake
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
	movl	%edx, -20(%rbp)
	movzbl	zz_lengths+6(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_5
.LBB1_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_5
.LBB1_3:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_5:
	movq	zz_hold(%rip), %rax
	movb	$6, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -40(%rbp)
	movb	-20(%rbp), %cl
	movb	%cl, 41(%rax)
	movq	-40(%rbp), %rax
	andw	$-5, 42(%rax)
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_10
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
.LBB1_8:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_10:
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
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_12
# BB#11:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_15
.LBB1_12:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_13
# BB#14:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_15
.LBB1_13:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_15:
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
	je	.LBB1_18
# BB#16:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_18
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
.LBB1_18:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_21
# BB#19:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_21
# BB#20:
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
.LBB1_21:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_23
# BB#22:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_26
.LBB1_23:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_24
# BB#25:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_26
.LBB1_24:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_26:
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
	je	.LBB1_29
# BB#27:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_29
# BB#28:
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
.LBB1_29:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_32
# BB#30:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_32
# BB#31:
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
.LBB1_32:
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	CrossMake, .Lfunc_end1-CrossMake
	.cfi_endproc

	.globl	GallTargEval
	.align	16, 0x90
	.type	GallTargEval,@function
GallTargEval:                           # @GallTargEval
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
	pushq	%r14
	pushq	%rbx
	subq	$560, %rsp              # imm = 0x230
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB2_2
# BB#1:
	movq	-24(%rbp), %rdi
	callq	CrossInit
.LBB2_2:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rcx
	movzwl	2(%rcx), %ecx
	movzwl	80(%rax), %eax
	cmpl	%eax, %ecx
	je	.LBB2_4
# BB#3:
	movq	-32(%rbp), %rax
	movw	2(%rax), %ax
	movq	-40(%rbp), %rcx
	movw	%ax, 80(%rcx)
	movq	-40(%rbp), %rax
	movl	$0, 60(%rax)
.LBB2_4:
	movq	-40(%rbp), %rax
	movzwl	80(%rax), %edi
	callq	FileName
	movq	%rax, -568(%rbp)
	movq	-40(%rbp), %rax
	incl	60(%rax)
	movq	-568(%rbp), %rdi
	callq	strlen
	addq	$6, %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB2_6
# BB#5:
	movq	-32(%rbp), %r8
	movq	-568(%rbp), %r9
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, (%rsp)
	movl	$10, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_6:
	movq	-568(%rbp), %rsi
	leaq	-560(%rbp), %r14
	movq	%r14, %rdi
	callq	strcpy
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	strcat
	movq	-40(%rbp), %rax
	movl	60(%rax), %edi
	callq	StringInt
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	strcat
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rdx
	movl	$11, %edi
	movq	%r14, %rsi
	callq	MakeWord
	movl	$132, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	CrossMake
	movq	%rax, -48(%rbp)
	addq	$560, %rsp              # imm = 0x230
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	GallTargEval, .Lfunc_end2-GallTargEval
	.cfi_endproc

	.globl	CrossAddTag
	.align	16, 0x90
	.type	CrossAddTag,@function
CrossAddTag:                            # @CrossAddTag
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	8(%rdi), %rax
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_82:                               #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB3_24
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_3 Depth=2
	movq	-24(%rbp), %rax
.LBB3_3:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_4
# BB#5:                                 #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB3_82
# BB#6:                                 #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %eax
	testb	$1, %al
	je	.LBB3_82
# BB#7:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_8
	.align	16, 0x90
.LBB3_9:                                #   in Loop: Header=BB3_8 Depth=1
	movq	-40(%rbp), %rax
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_9
# BB#10:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_12
# BB#11:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_24
.LBB3_12:
	movq	-40(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_24
# BB#13:
	movq	-16(%rbp), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB3_15
# BB#14:
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
.LBB3_15:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_17
# BB#16:
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
.LBB3_17:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_19
# BB#18:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_20
.LBB3_19:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_21
.LBB3_20:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_21:
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
	jne	.LBB3_23
# BB#22:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB3_23:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB3_24:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB3_81
# BB#25:
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	jmp	.LBB3_26
	.align	16, 0x90
.LBB3_83:                               #   in Loop: Header=BB3_26 Depth=1
	movq	-16(%rbp), %rax
.LBB3_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_28 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	80(%rcx), %rax
	je	.LBB3_34
# BB#27:                                #   in Loop: Header=BB3_26 Depth=1
	movq	-16(%rbp), %rax
	jmp	.LBB3_28
	.align	16, 0x90
.LBB3_29:                               #   in Loop: Header=BB3_28 Depth=2
	movq	-40(%rbp), %rax
.LBB3_28:                               #   Parent Loop BB3_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_29
# BB#30:                                #   in Loop: Header=BB3_26 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$144, %eax
	jl	.LBB3_83
# BB#31:                                #   in Loop: Header=BB3_26 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	jg	.LBB3_83
# BB#32:                                #   in Loop: Header=BB3_26 Depth=1
	movq	-40(%rbp), %rax
	movzwl	41(%rax), %eax
	testb	$1, %al
	je	.LBB3_83
# BB#33:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB3_34:
	cmpq	$0, -32(%rbp)
	je	.LBB3_81
# BB#35:
	movzbl	zz_lengths+10(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_37
# BB#36:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_40
.LBB3_37:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_38
# BB#39:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_40
.LBB3_38:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_40:
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
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movq	-8(%rbp), %rdi
	callq	CrossGenTag
	movq	%rax, -40(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_42
# BB#41:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_45
.LBB3_42:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_43
# BB#44:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_45
.LBB3_43:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_45:
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
	je	.LBB3_48
# BB#46:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_48
# BB#47:
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
.LBB3_48:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_51
# BB#49:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_51
# BB#50:
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
.LBB3_51:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	je	.LBB3_65
# BB#52:
	cmpl	$145, %eax
	jne	.LBB3_53
# BB#58:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB3_56
# BB#59:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_60
	.align	16, 0x90
.LBB3_61:                               #   in Loop: Header=BB3_60 Depth=1
	movq	-40(%rbp), %rax
.LBB3_60:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_61
# BB#62:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB3_56
# BB#63:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$144, %eax
	jne	.LBB3_56
# BB#64:
	movq	-16(%rbp), %rax
	jmp	.LBB3_55
.LBB3_65:
	movq	-8(%rbp), %rax
	jmp	.LBB3_66
	.align	16, 0x90
.LBB3_71:                               #   in Loop: Header=BB3_66 Depth=1
	movq	-16(%rbp), %rax
.LBB3_66:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_68 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB3_56
# BB#67:                                #   in Loop: Header=BB3_66 Depth=1
	movq	-16(%rbp), %rax
	jmp	.LBB3_68
	.align	16, 0x90
.LBB3_69:                               #   in Loop: Header=BB3_68 Depth=2
	movq	-40(%rbp), %rax
.LBB3_68:                               #   Parent Loop BB3_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_69
# BB#70:                                #   in Loop: Header=BB3_66 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	je	.LBB3_71
	jmp	.LBB3_56
.LBB3_53:
	cmpl	$144, %eax
	jne	.LBB3_56
# BB#54:
	movq	-8(%rbp), %rax
.LBB3_55:
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB3_56:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_72
# BB#57:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_75
.LBB3_72:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_73
# BB#74:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_75
.LBB3_73:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_75:
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
	je	.LBB3_78
# BB#76:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_78
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
.LBB3_78:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_81
# BB#79:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_81
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
.LBB3_81:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	CrossAddTag, .Lfunc_end3-CrossAddTag
	.cfi_endproc

	.align	16, 0x90
	.type	CrossGenTag,@function
CrossGenTag:                            # @CrossGenTag
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
	subq	$552, %rsp              # imm = 0x228
.Ltmp17:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	80(%rdi), %rax
	movq	%rax, -544(%rbp)
	cmpq	$0, 88(%rax)
	jne	.LBB4_2
# BB#1:
	movq	-544(%rbp), %rdi
	callq	CrossInit
.LBB4_2:
	movq	-16(%rbp), %rax
	movw	34(%rax), %ax
	movw	%ax, -554(%rbp)
	movzwl	-554(%rbp), %edi
	callq	FileName
	movq	%rax, -536(%rbp)
	movq	-544(%rbp), %rdi
	movzwl	-554(%rbp), %esi
	movl	$crossref_tab, %edx
	callq	crtab_getnext
	movl	%eax, -560(%rbp)
	movq	-536(%rbp), %rdi
	callq	strlen
	addq	$20, %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB4_4
# BB#3:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movq	-536(%rbp), %r9
	movl	$10, %edi
	movl	$3, %esi
	movl	$.L.str.57, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_4:
	movq	-544(%rbp), %rax
	movzwl	34(%rax), %edx
	movl	$1048575, %ecx          # imm = 0xFFFFF
	andl	36(%rax), %ecx
	movq	-536(%rbp), %r8
	movl	-560(%rbp), %r9d
	leaq	-528(%rbp), %rbx
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movl	$12, %edi
	movq	%rbx, %rsi
	callq	MakeWord
	movq	%rax, -552(%rbp)
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	CrossGenTag, .Lfunc_end4-CrossGenTag
	.cfi_endproc

	.globl	CrossExpand
	.align	16, 0x90
	.type	CrossExpand,@function
CrossExpand:                            # @CrossExpand
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1256, %rsp             # imm = 0x4E8
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movl	$0, -1216(%rbp)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB5_3
# BB#1:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	je	.LBB5_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_3:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	8(%rcx), %rcx
	cmpq	(%rax), %rcx
	je	.LBB5_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_5:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB5_6
	.align	16, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_6 Depth=1
	movq	-104(%rbp), %rax
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_7
# BB#8:
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$0, 32(%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -104(%rbp)
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB5_9
	.align	16, 0x90
.LBB5_10:                               #   in Loop: Header=BB5_9 Depth=1
	movq	-112(%rbp), %rax
.LBB5_9:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_10
# BB#11:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB5_13
# BB#12:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_13:
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB5_15
# BB#14:
	movq	-104(%rbp), %rax
	movl	$1, %ecx
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB5_19
.LBB5_15:
	movq	-104(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	movl	$2, %ecx
	testl	%eax, %eax
	je	.LBB5_19
# BB#16:
	movq	-104(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.8, %esi
	callq	strcmp
	movl	$134, %ecx
	testl	%eax, %eax
	je	.LBB5_19
# BB#17:
	movq	-104(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.9, %esi
	callq	strcmp
	movl	$128, %ecx
	testl	%eax, %eax
	je	.LBB5_19
# BB#18:
	movq	-104(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.10, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ecx
	orl	$126, %ecx
.LBB5_19:
	movl	%ecx, -156(%rbp)
	movq	$0, -96(%rbp)
	movl	-156(%rbp), %eax
	cmpl	$126, %eax
	jg	.LBB5_28
# BB#20:
	cmpl	$1, %eax
	je	.LBB5_41
# BB#21:
	cmpl	$2, %eax
	jne	.LBB5_22
# BB#43:
	movq	-104(%rbp), %r8
	addq	$32, %r8
	movl	$10, %edi
	movl	$5, %esi
	movl	$.L.str.13, %edx
	jmp	.LBB5_42
.LBB5_28:
	leal	-127(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB5_30
# BB#29:
	cmpl	$134, %eax
	jne	.LBB5_99
.LBB5_30:
	movq	-88(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$1, %eax
	jae	.LBB5_98
# BB#31:
	movq	-88(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB5_33
# BB#32:
	movq	-88(%rbp), %rdi
	callq	CrossInit
.LBB5_33:
	movq	-88(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -120(%rbp)
	testq	%rax, %rax
	jne	.LBB5_35
# BB#34:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_35:
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	je	.LBB5_37
# BB#36:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_37:
	movq	-104(%rbp), %rax
	movw	34(%rax), %ax
	movw	%ax, -1210(%rbp)
	movq	-88(%rbp), %rdi
	movzwl	-1210(%rbp), %esi
	movl	$crossref_tab, %edx
	callq	crtab_getnext
	movl	%eax, -1240(%rbp)
	movzwl	-1210(%rbp), %edi
	callq	FileName
	movq	%rax, -1208(%rbp)
	movq	%rax, %rdi
	callq	strlen
	addq	$5, %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB5_39
# BB#38:
	movq	-48(%rbp), %r8
	addq	$32, %r8
	movq	-1208(%rbp), %r9
	movl	-1240(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$10, %edi
	movl	$7, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB5_39:
	movq	-1208(%rbp), %rsi
	leaq	-688(%rbp), %r14
	movq	%r14, %rdi
	callq	strcpy
	movl	$.L.str.21, %esi
	movq	%r14, %rdi
	callq	strcat
	movl	-1240(%rbp), %edi
	callq	StringInt
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	strcat
	movq	-88(%rbp), %rbx
	movq	-104(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movq	%r14, %rsi
	callq	MakeWord
	movl	-156(%rbp), %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	CrossMake
	movq	%rax, -144(%rbp)
	movslq	-156(%rbp), %rax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_63
# BB#40:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_66
.LBB5_41:
	movq	-104(%rbp), %r8
	addq	$32, %r8
	movl	$10, %edi
	movl	$4, %esi
	movl	$.L.str.11, %edx
.LBB5_42:
	movl	$2, %ecx
	movl	$.L.str.12, %r9d
	jmp	.LBB5_100
.LBB5_22:
	cmpl	$126, %eax
	jne	.LBB5_99
# BB#23:
	movq	-88(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB5_25
# BB#24:
	movq	-88(%rbp), %rdi
	callq	CrossInit
.LBB5_25:
	movq	-88(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-88(%rbp), %rax
	cmpq	MomentSym(%rip), %rax
	jne	.LBB5_44
# BB#26:
	movq	-104(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.14, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB5_27
.LBB5_44:
	movq	-88(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$1, %eax
	jb	.LBB5_46
# BB#45:
	movq	-48(%rbp), %rbx
	addq	$32, %rbx
	movq	-88(%rbp), %rdi
	callq	SymName
	movq	%rax, %r9
	movq	$.L.str.16, (%rsp)
	movl	$10, %edi
	movl	$6, %esi
	movl	$.L.str.15, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movl	$1, -1216(%rbp)
.LBB5_46:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -128(%rbp)
	leaq	-1224(%rbp), %r15
	leaq	-1236(%rbp), %r12
	leaq	-1232(%rbp), %r13
	leaq	-1200(%rbp), %r14
	leaq	-1212(%rbp), %rbx
	jmp	.LBB5_47
	.align	16, 0x90
.LBB5_62:                               #   in Loop: Header=BB5_47 Depth=1
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -128(%rbp)
.LBB5_47:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_49 Depth 2
	movq	-128(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.LBB5_101
# BB#48:                                #   in Loop: Header=BB5_47 Depth=1
	movq	-128(%rbp), %rax
	jmp	.LBB5_49
	.align	16, 0x90
.LBB5_50:                               #   in Loop: Header=BB5_49 Depth=2
	movq	-136(%rbp), %rax
.LBB5_49:                               #   Parent Loop BB5_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_50
# BB#51:                                #   in Loop: Header=BB5_47 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB5_54
# BB#52:                                #   in Loop: Header=BB5_47 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB5_54
# BB#53:                                #   in Loop: Header=BB5_47 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_54:                               #   in Loop: Header=BB5_47 Depth=1
	movq	-136(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rcx
	addq	$64, %rcx
	movq	%r15, 16(%rsp)
	movq	%r12, 8(%rsp)
	movq	%r13, (%rsp)
	movl	$0, %esi
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	DbRetrieve
	testl	%eax, %eax
	je	.LBB5_62
# BB#55:
	xorl	%edi, %edi
	callq	SwitchScope
	movl	$0, -160(%rbp)
	movq	-136(%rbp), %rax
	cmpq	OldCrossDb(%rip), %rax
	je	.LBB5_57
# BB#56:
	movq	-56(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	xorl	%edx, %edx
	callq	SetScope
.LBB5_57:
	movq	-1232(%rbp), %rsi
	movl	-1236(%rbp), %edx
	movzwl	-1212(%rbp), %edi
	callq	ReadFromFile
	movq	%rax, -96(%rbp)
	movl	$1, -164(%rbp)
	jmp	.LBB5_58
	.align	16, 0x90
.LBB5_59:                               #   in Loop: Header=BB5_58 Depth=1
	callq	PopScope
	incl	-164(%rbp)
.LBB5_58:                               # =>This Inner Loop Header: Depth=1
	movl	-164(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jle	.LBB5_59
# BB#60:
	xorl	%edi, %edi
	callq	UnSwitchScope
	movq	-136(%rbp), %rax
	cmpq	OldCrossDb(%rip), %rax
	je	.LBB5_101
# BB#61:
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	AttachEnv
	jmp	.LBB5_101
.LBB5_99:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
.LBB5_100:
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_101
.LBB5_98:
	movq	-48(%rbp), %rbx
	addq	$32, %rbx
	movq	-88(%rbp), %rdi
	callq	SymName
	movq	%rax, %r9
	movq	$.L.str.16, (%rsp)
	movl	$10, %edi
	movl	$8, %esi
	movl	$.L.str.15, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movl	$1, -1216(%rbp)
	jmp	.LBB5_101
.LBB5_63:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_64
# BB#65:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_66
.LBB5_64:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_66:
	movb	-156(%rbp), %al
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
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_68
# BB#67:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_71
.LBB5_68:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_69
# BB#70:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_71
.LBB5_69:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_71:
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
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_74
# BB#72:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_74
# BB#73:
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
.LBB5_74:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-144(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_77
# BB#75:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_77
# BB#76:
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
.LBB5_77:
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_84
# BB#78:
	movzbl	zz_lengths+148(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_80
# BB#79:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_83
.LBB5_80:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_81
# BB#82:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_83
.LBB5_81:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_83:
	movq	zz_hold(%rip), %rax
	movb	$-108, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB5_84:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_86
# BB#85:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_89
.LBB5_86:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_87
# BB#88:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_89
.LBB5_87:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_89:
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
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_92
# BB#90:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_92
# BB#91:
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
.LBB5_92:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-152(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_95
# BB#93:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_95
# BB#94:
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
.LBB5_95:
	cmpl	$0, AllowCrossDb(%rip)
	je	.LBB5_101
# BB#96:
	movq	OldCrossDb(%rip), %rdi
	movq	-88(%rbp), %rdx
	leaq	-1224(%rbp), %rax
	movq	%rax, 16(%rsp)
	leaq	-1236(%rbp), %rax
	movq	%rax, 8(%rsp)
	leaq	-1232(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-688(%rbp), %rcx
	leaq	-1200(%rbp), %r8
	leaq	-1212(%rbp), %r9
	movl	$0, %esi
	callq	DbRetrieve
	testl	%eax, %eax
	je	.LBB5_101
# BB#97:
	xorl	%edi, %edi
	callq	SwitchScope
	movq	-1232(%rbp), %rsi
	movl	-1236(%rbp), %edx
	movzwl	-1212(%rbp), %edi
	callq	ReadFromFile
	movq	%rax, -96(%rbp)
	xorl	%edi, %edi
	callq	UnSwitchScope
.LBB5_101:
	cmpq	$0, -96(%rbp)
	jne	.LBB5_134
# BB#102:
	cmpl	$2, -156(%rbp)
	jl	.LBB5_105
# BB#103:
	cmpl	$0, -1216(%rbp)
	jne	.LBB5_105
# BB#104:
	movq	-48(%rbp), %rbx
	addq	$32, %rbx
	movq	-88(%rbp), %rdi
	callq	SymName
	movq	%rax, %r9
	movq	-104(%rbp), %rax
	addq	$64, %rax
	movq	%rax, 8(%rsp)
	movq	$.L.str.12, (%rsp)
	movl	$10, %edi
	movl	$9, %esi
	movl	$.L.str.23, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB5_105:
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_107
# BB#106:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_110
.LBB5_107:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_108
# BB#109:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_110
.LBB5_108:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_110:
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
	movq	-88(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movb	$1, %bl
	jmp	.LBB5_111
	.align	16, 0x90
.LBB5_117:                              #   in Loop: Header=BB5_111 Depth=1
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
	movq	%rax, -144(%rbp)
	movq	-112(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, 80(%rax)
	movq	-144(%rbp), %rdi
	xorl	%esi, %esi
	callq	SetEnv
	movq	%rax, -1248(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	AttachEnv
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB5_111:                              # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	movq	48(%rax), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB5_118
# BB#112:                               #   in Loop: Header=BB5_111 Depth=1
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB5_114
# BB#113:                               #   in Loop: Header=BB5_111 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_117
	.align	16, 0x90
.LBB5_114:                              #   in Loop: Header=BB5_111 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_115
# BB#116:                               #   in Loop: Header=BB5_111 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_117
.LBB5_115:                              #   in Loop: Header=BB5_111 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	jmp	.LBB5_117
.LBB5_118:
	movzbl	zz_lengths+82(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_120
# BB#119:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_123
.LBB5_120:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_121
# BB#122:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_123
.LBB5_121:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_123:
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
	movq	%rax, -1248(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_125
# BB#124:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
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
	je	.LBB5_131
# BB#129:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_131
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
.LBB5_131:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-1248(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_134
# BB#132:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_134
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
.LBB5_134:
	movq	-96(%rbp), %rdi
	callq	DetachEnv
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB5_136
# BB#135:
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
.LBB5_136:
	movq	%rax, xx_tmp(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
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
	movq	-48(%rbp), %rdi
	callq	DisposeObject
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB5_141
# BB#140:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_141:
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB5_143
# BB#142:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_143:
	movq	-96(%rbp), %rax
	addq	$1256, %rsp             # imm = 0x4E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_27:
	callq	StartMoment
	movq	%rax, -96(%rbp)
	jmp	.LBB5_101
.Lfunc_end5:
	.size	CrossExpand, .Lfunc_end5-CrossExpand
	.cfi_endproc

	.align	16, 0x90
	.type	crtab_getnext,@function
crtab_getnext:                          # @crtab_getnext
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movw	%si, -18(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, (%rdx)
	jne	.LBB6_2
# BB#1:
	movl	$100, %edi
	callq	crtab_new
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB6_2:
	movzwl	-18(%rbp), %eax
	addq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	(%rcx), %rcx
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax,%rdx,8), %rax
	jmp	.LBB6_3
	.align	16, 0x90
.LBB6_7:                                #   in Loop: Header=BB6_3 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB6_8
# BB#4:                                 #   in Loop: Header=BB6_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB6_7
# BB#5:                                 #   in Loop: Header=BB6_3 Depth=1
	movq	-40(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	-18(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB6_7
# BB#6:
	movq	-40(%rbp), %rax
	movl	20(%rax), %ecx
	incl	%ecx
	movl	%ecx, 20(%rax)
	movl	%ecx, -4(%rbp)
	jmp	.LBB6_14
.LBB6_8:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %ecx
	cmpl	(%rax), %ecx
	jne	.LBB6_10
# BB#9:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	(%rdi), %esi
	addl	%esi, %esi
	callq	crtab_rehash
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movzwl	-18(%rbp), %eax
	addq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	(%rcx), %rcx
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, -56(%rbp)
.LBB6_10:
	movl	$24, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_11
# BB#12:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	%rax, -48(%rbp)
	movq	zz_hold(%rip), %rax
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_13
.LBB6_11:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, -48(%rbp)
.LBB6_13:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movw	-18(%rbp), %ax
	movq	-40(%rbp), %rcx
	movw	%ax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	incl	4(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 20(%rax)
	movl	$1, -4(%rbp)
.LBB6_14:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	crtab_getnext, .Lfunc_end6-crtab_getnext
	.cfi_endproc

	.globl	CrossSequence
	.align	16, 0x90
	.type	CrossSequence,@function
CrossSequence:                          # @CrossSequence
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$760, %rsp              # imm = 0x2F8
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	cmpl	$0, AllowCrossDb(%rip)
	je	.LBB7_1
# BB#3:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB7_6
# BB#4:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	je	.LBB7_6
# BB#5:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_6:
	movq	-48(%rbp), %rax
	movzbl	41(%rax), %eax
	movl	%eax, -148(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB7_7
	.align	16, 0x90
.LBB7_8:                                #   in Loop: Header=BB7_7 Depth=1
	movq	-80(%rbp), %rax
.LBB7_7:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_8
# BB#9:
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB7_11
# BB#10:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.27, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_11:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, 88(%rax)
	jne	.LBB7_13
# BB#12:
	movq	-56(%rbp), %rdi
	callq	CrossInit
.LBB7_13:
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -88(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	je	.LBB7_15
# BB#14:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_15:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB7_16
	.align	16, 0x90
.LBB7_17:                               #   in Loop: Header=BB7_16 Depth=1
	movq	-64(%rbp), %rax
.LBB7_16:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_17
# BB#18:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB7_20
# BB#19:
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
.LBB7_20:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB7_22
# BB#21:
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
.LBB7_22:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_24
# BB#23:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_25
.LBB7_24:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB7_26
.LBB7_1:
	movq	-48(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB7_272
# BB#2:
	movq	-48(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB7_272
.LBB7_25:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB7_26:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-48(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB7_28
# BB#27:
	movq	-48(%rbp), %rdi
	callq	DisposeObject
.LBB7_28:
	movl	-148(%rbp), %eax
	addl	$-127, %eax
	cmpl	$7, %eax
	jbe	.LBB7_29
# BB#269:
	movq	no_fpos(%rip), %rbx
	movl	-148(%rbp), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.48, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.49, %r9d
.LBB7_270:
	xorl	%eax, %eax
	movq	%rbx, %r8
.LBB7_271:
	callq	Error
	jmp	.LBB7_272
.LBB7_29:
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_30:
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB7_32
# BB#31:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_32:
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$14, %eax
	jae	.LBB7_102
# BB#33:
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movb	$1, %bl
	leaq	-744(%rbp), %r13
	leaq	-720(%rbp), %r14
	leaq	-736(%rbp), %r15
	leaq	-752(%rbp), %r12
	jmp	.LBB7_34
	.align	16, 0x90
.LBB7_101:                              #   in Loop: Header=BB7_34 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB7_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_36 Depth 2
	movq	-120(%rbp), %rax
	movq	-72(%rbp), %rcx
	cmpq	80(%rcx), %rax
	je	.LBB7_102
# BB#35:                                #   in Loop: Header=BB7_34 Depth=1
	movq	-120(%rbp), %rax
	jmp	.LBB7_36
	.align	16, 0x90
.LBB7_37:                               #   in Loop: Header=BB7_36 Depth=2
	movq	-128(%rbp), %rax
.LBB7_36:                               #   Parent Loop BB7_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_37
# BB#38:                                #   in Loop: Header=BB7_34 Depth=1
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$13, %eax
	jae	.LBB7_101
# BB#39:                                #   in Loop: Header=BB7_34 Depth=1
	movq	$0, -728(%rbp)
	movq	$0, -712(%rbp)
	movq	$0, -736(%rbp)
	movq	$0, -720(%rbp)
	movq	$0, -760(%rbp)
	movq	$0, -752(%rbp)
	movq	$0, -744(%rbp)
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_41
# BB#40:                                #   in Loop: Header=BB7_34 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_44
	.align	16, 0x90
.LBB7_41:                               #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_42
# BB#43:                                #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_44
.LBB7_42:                               #   in Loop: Header=BB7_34 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB7_44:                               #   in Loop: Header=BB7_34 Depth=1
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
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_46
# BB#45:                                #   in Loop: Header=BB7_34 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_49
	.align	16, 0x90
.LBB7_46:                               #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_47
# BB#48:                                #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_49
.LBB7_47:                               #   in Loop: Header=BB7_34 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB7_49:                               #   in Loop: Header=BB7_34 Depth=1
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
	movq	%rax, -112(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_51
# BB#50:                                #   in Loop: Header=BB7_34 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_54
	.align	16, 0x90
.LBB7_51:                               #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_52
# BB#53:                                #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_54
.LBB7_52:                               #   in Loop: Header=BB7_34 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB7_54:                               #   in Loop: Header=BB7_34 Depth=1
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
	je	.LBB7_57
# BB#55:                                #   in Loop: Header=BB7_34 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_57
# BB#56:                                #   in Loop: Header=BB7_34 Depth=1
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
.LBB7_57:                               #   in Loop: Header=BB7_34 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_60
# BB#58:                                #   in Loop: Header=BB7_34 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_60
# BB#59:                                #   in Loop: Header=BB7_34 Depth=1
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
.LBB7_60:                               #   in Loop: Header=BB7_34 Depth=1
	movzbl	zz_lengths+82(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_62
# BB#61:                                #   in Loop: Header=BB7_34 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_65
	.align	16, 0x90
.LBB7_62:                               #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_63
# BB#64:                                #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_65
.LBB7_63:                               #   in Loop: Header=BB7_34 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB7_65:                               #   in Loop: Header=BB7_34 Depth=1
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
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_67
# BB#66:                                #   in Loop: Header=BB7_34 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_70
	.align	16, 0x90
.LBB7_67:                               #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_68
# BB#69:                                #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_70
.LBB7_68:                               #   in Loop: Header=BB7_34 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB7_70:                               #   in Loop: Header=BB7_34 Depth=1
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
	movq	-136(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_73
# BB#71:                                #   in Loop: Header=BB7_34 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_73
# BB#72:                                #   in Loop: Header=BB7_34 Depth=1
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
.LBB7_73:                               #   in Loop: Header=BB7_34 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_76
# BB#74:                                #   in Loop: Header=BB7_34 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_76
# BB#75:                                #   in Loop: Header=BB7_34 Depth=1
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
.LBB7_76:                               #   in Loop: Header=BB7_34 Depth=1
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_78
# BB#77:                                #   in Loop: Header=BB7_34 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_81
	.align	16, 0x90
.LBB7_78:                               #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_79
# BB#80:                                #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_81
.LBB7_79:                               #   in Loop: Header=BB7_34 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB7_81:                               #   in Loop: Header=BB7_34 Depth=1
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
	movq	%rax, -144(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB7_83
# BB#82:                                #   in Loop: Header=BB7_34 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_86
	.align	16, 0x90
.LBB7_83:                               #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_84
# BB#85:                                #   in Loop: Header=BB7_34 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_86
.LBB7_84:                               #   in Loop: Header=BB7_34 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB7_86:                               #   in Loop: Header=BB7_34 Depth=1
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
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_89
# BB#87:                                #   in Loop: Header=BB7_34 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_89
# BB#88:                                #   in Loop: Header=BB7_34 Depth=1
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
.LBB7_89:                               #   in Loop: Header=BB7_34 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-136(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_92
# BB#90:                                #   in Loop: Header=BB7_34 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_92
# BB#91:                                #   in Loop: Header=BB7_34 Depth=1
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
.LBB7_92:                               #   in Loop: Header=BB7_34 Depth=1
	movq	-104(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-72(%rbp), %rdx
	addq	$64, %rdx
	leaq	-760(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, (%rsp)
	movl	$0, 32(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	%r14, %rcx
	movq	%r15, %r8
	movq	%r12, %r9
	callq	Manifest
	movq	%rax, -104(%rbp)
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -104(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB7_94
# BB#93:                                #   in Loop: Header=BB7_34 Depth=1
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
.LBB7_94:                               #   in Loop: Header=BB7_34 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB7_96
# BB#95:                                #   in Loop: Header=BB7_34 Depth=1
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
.LBB7_96:                               #   in Loop: Header=BB7_34 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_98
# BB#97:                                #   in Loop: Header=BB7_34 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_99
.LBB7_98:                               #   in Loop: Header=BB7_34 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB7_100
.LBB7_99:                               #   in Loop: Header=BB7_34 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB7_100:                              #   in Loop: Header=BB7_34 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-144(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB7_101
.LBB7_102:
	movq	-72(%rbp), %rdi
	addq	$32, %rdi
	callq	DatabaseFileNum
	movw	%ax, -682(%rbp)
	movq	-72(%rbp), %rdi
	movzwl	-682(%rbp), %esi
	leaq	-688(%rbp), %rdx
	leaq	-692(%rbp), %rcx
	callq	AppendToFile
	cmpq	$0, -104(%rbp)
	je	.LBB7_103
# BB#104:
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_108
# BB#105:
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_106
.LBB7_108:
	movq	-104(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB7_109
# BB#110:
	movq	-104(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -680(%rbp)
	jmp	.LBB7_111
.LBB7_180:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_183
# BB#181:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_182
.LBB7_183:
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB7_272
# BB#184:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB7_186
# BB#185:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_189
.LBB7_103:
	movq	-88(%rbp), %rax
	incl	60(%rax)
	movq	-88(%rbp), %rax
	movl	60(%rax), %edi
	callq	StringFiveInt
	leaq	-672(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rbx, -680(%rbp)
	jmp	.LBB7_111
.LBB7_196:
	movq	-88(%rbp), %rax
	movzbl	33(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB7_198
# BB#197:
	movq	-88(%rbp), %rax
	movq	40(%rax), %rdi
	callq	DisposeObject
.LBB7_198:
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-64(%rbp), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB7_200
# BB#199:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.43, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_200:
	movq	-64(%rbp), %rdi
	addq	$32, %rdi
	callq	DatabaseFileNum
	movq	-88(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-88(%rbp), %rax
	movb	$1, 33(%rax)
	movq	$0, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB7_202
# BB#201:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.44, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_202:
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movb	$1, %r14b
	movl	$49153, %r15d           # imm = 0xC001
	movl	$137440, %r12d          # imm = 0x218E0
	jmp	.LBB7_203
	.align	16, 0x90
.LBB7_242:                              #   in Loop: Header=BB7_203 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB7_203:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_205 Depth 2
                                        #     Child Loop BB7_231 Depth 2
                                        #     Child Loop BB7_212 Depth 2
	movq	-120(%rbp), %rax
	movq	-88(%rbp), %rcx
	cmpq	40(%rcx), %rax
	je	.LBB7_243
# BB#204:                               #   in Loop: Header=BB7_203 Depth=1
	movq	-120(%rbp), %rax
	jmp	.LBB7_205
	.align	16, 0x90
.LBB7_206:                              #   in Loop: Header=BB7_205 Depth=2
	movq	-96(%rbp), %rax
.LBB7_205:                              #   Parent Loop BB7_203 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_206
# BB#207:                               #   in Loop: Header=BB7_203 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB7_242
# BB#208:                               #   in Loop: Header=BB7_203 Depth=1
	movq	-96(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB7_210
# BB#209:                               #   in Loop: Header=BB7_203 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.45, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_210:                              #   in Loop: Header=BB7_203 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %eax
	testb	$1, %al
	je	.LBB7_229
# BB#211:                               #   in Loop: Header=BB7_203 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB7_212
	.align	16, 0x90
.LBB7_213:                              #   in Loop: Header=BB7_212 Depth=2
	movq	-64(%rbp), %rax
.LBB7_212:                              #   Parent Loop BB7_203 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_213
# BB#214:                               #   in Loop: Header=BB7_203 Depth=1
	movq	-64(%rbp), %rdi
	movl	$1, %esi
	callq	ReplaceWithTidy
	movq	%rax, -64(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_217
# BB#215:                               #   in Loop: Header=BB7_203 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_216
.LBB7_217:                              #   in Loop: Header=BB7_203 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB7_242
# BB#218:                               #   in Loop: Header=BB7_203 Depth=1
	movq	-64(%rbp), %rax
	movw	34(%rax), %cx
	movw	%cx, 50(%rax)
	movq	-64(%rbp), %rax
	movb	$126, 48(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r14b, %r14b
	jne	.LBB7_220
# BB#219:                               #   in Loop: Header=BB7_203 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_223
.LBB7_229:                              #   in Loop: Header=BB7_203 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	jne	.LBB7_242
# BB#230:                               #   in Loop: Header=BB7_203 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB7_231
	.align	16, 0x90
.LBB7_232:                              #   in Loop: Header=BB7_231 Depth=2
	movq	-128(%rbp), %rax
.LBB7_231:                              #   Parent Loop BB7_203 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_232
# BB#233:                               #   in Loop: Header=BB7_203 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	ja	.LBB7_234
# BB#273:                               #   in Loop: Header=BB7_203 Depth=1
	btl	%eax, %r12d
	jb	.LBB7_242
.LBB7_234:                              #   in Loop: Header=BB7_203 Depth=1
	addl	$-78, %eax
	cmpl	$15, %eax
	ja	.LBB7_236
# BB#235:                               #   in Loop: Header=BB7_203 Depth=1
	btl	%eax, %r15d
	jb	.LBB7_242
.LBB7_236:                              #   in Loop: Header=BB7_203 Depth=1
	movq	-128(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.46, %esi
	callq	MakeWord
	movq	%rax, -80(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB7_238
# BB#237:                               #   in Loop: Header=BB7_203 Depth=1
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
.LBB7_238:                              #   in Loop: Header=BB7_203 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_241
# BB#239:                               #   in Loop: Header=BB7_203 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_241
# BB#240:                               #   in Loop: Header=BB7_203 Depth=1
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
.LBB7_241:                              #   in Loop: Header=BB7_203 Depth=1
	movq	-128(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB7_242
.LBB7_216:                              #   in Loop: Header=BB7_203 Depth=1
	movq	-64(%rbp), %rbx
	addq	$32, %rbx
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, %r9
	movl	$10, %edi
	movl	$15, %esi
	movl	$.L.str.42, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB7_242
.LBB7_220:                              #   in Loop: Header=BB7_203 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_221
# BB#222:                               #   in Loop: Header=BB7_203 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_223
.LBB7_221:                              #   in Loop: Header=BB7_203 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB7_223:                              #   in Loop: Header=BB7_203 Depth=1
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
	je	.LBB7_226
# BB#224:                               #   in Loop: Header=BB7_203 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_226
# BB#225:                               #   in Loop: Header=BB7_203 Depth=1
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
.LBB7_226:                              #   in Loop: Header=BB7_203 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_242
# BB#227:                               #   in Loop: Header=BB7_203 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_242
# BB#228:                               #   in Loop: Header=BB7_203 Depth=1
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
	jmp	.LBB7_242
.LBB7_135:
	movq	-88(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB7_137
# BB#136:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rdi
	callq	DisposeObject
.LBB7_137:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_139
# BB#138:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_140
.LBB7_139:
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB7_140
# BB#141:
	movq	-64(%rbp), %rax
	jmp	.LBB7_142
.LBB7_171:
	movq	-88(%rbp), %rax
	cmpb	$0, 33(%rax)
	je	.LBB7_172
# BB#173:
	movq	-88(%rbp), %rax
	movzbl	33(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB7_175
# BB#174:
	movq	-88(%rbp), %rax
	movq	40(%rax), %rdi
	movzwl	34(%rax), %esi
	leaq	52(%rax), %rdx
	leaq	56(%rax), %rcx
	callq	AppendToFile
	movq	-88(%rbp), %rax
	movq	40(%rax), %rdi
	callq	DisposeObject
	movq	-88(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-88(%rbp), %rax
	movb	$2, 33(%rax)
.LBB7_175:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_177
# BB#176:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_178
.LBB7_177:
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB7_179
.LBB7_178:
	movq	-64(%rbp), %rdi
	callq	DisposeObject
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.36, %esi
	callq	MakeWord
	movq	%rax, -64(%rbp)
.LBB7_179:
	movq	NewCrossDb(%rip), %rdi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %r8
	leaq	64(%r8), %rcx
	addq	$32, %r8
	movq	-88(%rbp), %rax
	movslq	52(%rax), %rsi
	movl	56(%rax), %ebx
	movzwl	34(%rax), %eax
	movl	%ebx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 24(%rsp)
	xorl	%esi, %esi
	movl	$.L.str.41, %r9d
	callq	DbInsert
	movq	-64(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB7_272
.LBB7_243:
	movq	-88(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB7_272
# BB#244:
	movq	-88(%rbp), %rax
	movq	40(%rax), %rdi
	movzwl	34(%rax), %esi
	leaq	52(%rax), %rdx
	leaq	56(%rax), %rcx
	callq	AppendToFile
	movq	-88(%rbp), %rax
	movq	40(%rax), %rdi
	callq	DisposeObject
	movq	-88(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	$7, %r15d
	movl	$152, %r14d
	jmp	.LBB7_245
	.align	16, 0x90
.LBB7_267:                              #   in Loop: Header=BB7_245 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB7_245:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_247 Depth 2
	movq	-120(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB7_268
# BB#246:                               #   in Loop: Header=BB7_245 Depth=1
	movq	-120(%rbp), %rax
	jmp	.LBB7_247
	.align	16, 0x90
.LBB7_248:                              #   in Loop: Header=BB7_247 Depth=2
	movq	-64(%rbp), %rax
.LBB7_247:                              #   Parent Loop BB7_245 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_248
# BB#249:                               #   in Loop: Header=BB7_245 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_251
# BB#250:                               #   in Loop: Header=BB7_245 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_252
.LBB7_251:                              #   in Loop: Header=BB7_245 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB7_253
.LBB7_252:                              #   in Loop: Header=BB7_245 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.47, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_253:                              #   in Loop: Header=BB7_245 Depth=1
	movq	-64(%rbp), %rax
	movzbl	48(%rax), %eax
	addl	$-126, %eax
	cmpl	$7, %eax
	ja	.LBB7_256
# BB#254:                               #   in Loop: Header=BB7_245 Depth=1
	btl	%eax, %r15d
	jae	.LBB7_255
# BB#257:                               #   in Loop: Header=BB7_245 Depth=1
	movq	NewCrossDb(%rip), %rdi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %r8
	leaq	64(%r8), %rcx
	addq	$32, %r8
	movq	-88(%rbp), %rax
	movslq	52(%rax), %rsi
	movl	56(%rax), %ebx
	movzwl	34(%rax), %eax
	movl	%ebx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 24(%rsp)
	movl	$0, %esi
	movl	$.L.str.41, %r9d
	callq	DbInsert
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB7_259
# BB#258:                               #   in Loop: Header=BB7_245 Depth=1
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
.LBB7_259:                              #   in Loop: Header=BB7_245 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB7_261
# BB#260:                               #   in Loop: Header=BB7_245 Depth=1
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
.LBB7_261:                              #   in Loop: Header=BB7_245 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_263
# BB#262:                               #   in Loop: Header=BB7_245 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_264
.LBB7_263:                              #   in Loop: Header=BB7_245 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB7_265
.LBB7_255:                              #   in Loop: Header=BB7_245 Depth=1
	btl	%eax, %r14d
	jb	.LBB7_267
	.align	16, 0x90
.LBB7_256:                              #   in Loop: Header=BB7_245 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.39, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_267
.LBB7_264:                              #   in Loop: Header=BB7_245 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB7_265:                              #   in Loop: Header=BB7_245 Depth=1
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
	jne	.LBB7_267
# BB#266:                               #   in Loop: Header=BB7_245 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB7_267
.LBB7_268:
	movq	-88(%rbp), %rax
	movb	$2, 33(%rax)
	jmp	.LBB7_272
.LBB7_140:
	movq	-64(%rbp), %rdi
	callq	DisposeObject
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.36, %esi
	callq	MakeWord
.LBB7_142:
	movq	-88(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	$263, %r15d             # imm = 0x107
	movl	$152, %r14d
	jmp	.LBB7_143
	.align	16, 0x90
.LBB7_170:                              #   in Loop: Header=BB7_143 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB7_143:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_145 Depth 2
                                        #     Child Loop BB7_156 Depth 2
	movq	-120(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB7_272
# BB#144:                               #   in Loop: Header=BB7_143 Depth=1
	movq	-120(%rbp), %rax
	jmp	.LBB7_145
	.align	16, 0x90
.LBB7_146:                              #   in Loop: Header=BB7_145 Depth=2
	movq	-128(%rbp), %rax
.LBB7_145:                              #   Parent Loop BB7_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_146
# BB#147:                               #   in Loop: Header=BB7_143 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_149
# BB#148:                               #   in Loop: Header=BB7_143 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_150
.LBB7_149:                              #   in Loop: Header=BB7_143 Depth=1
	movq	-128(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB7_151
.LBB7_150:                              #   in Loop: Header=BB7_143 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.38, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_151:                              #   in Loop: Header=BB7_143 Depth=1
	movq	-128(%rbp), %rax
	movzbl	48(%rax), %eax
	addl	$-126, %eax
	cmpl	$8, %eax
	ja	.LBB7_169
# BB#152:                               #   in Loop: Header=BB7_143 Depth=1
	btl	%eax, %r15d
	jb	.LBB7_170
# BB#153:                               #   in Loop: Header=BB7_143 Depth=1
	btl	%eax, %r14d
	jae	.LBB7_169
# BB#154:                               #   in Loop: Header=BB7_143 Depth=1
	movq	-128(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB7_158
# BB#155:                               #   in Loop: Header=BB7_143 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB7_156
	.align	16, 0x90
.LBB7_157:                              #   in Loop: Header=BB7_156 Depth=2
	movq	-72(%rbp), %rax
.LBB7_156:                              #   Parent Loop BB7_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_157
	jmp	.LBB7_159
	.align	16, 0x90
.LBB7_169:                              #   in Loop: Header=BB7_143 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.39, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_170
.LBB7_158:                              #   in Loop: Header=BB7_143 Depth=1
	movq	$0, -72(%rbp)
.LBB7_159:                              #   in Loop: Header=BB7_143 Depth=1
	movq	NewCrossDb(%rip), %rdi
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	72(%rax), %rcx
	addq	$64, %rcx
	movq	no_fpos(%rip), %r8
	movq	-128(%rbp), %rax
	movslq	52(%rax), %r10
	movl	56(%rax), %ebx
	movzwl	50(%rax), %esi
	leaq	64(%rax), %r9
	movl	%ebx, 16(%rsp)
	movq	%r10, 8(%rsp)
	movl	%esi, (%rsp)
	movl	$0, 24(%rsp)
	movl	$1, %esi
	callq	DbInsert
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB7_161
# BB#160:                               #   in Loop: Header=BB7_143 Depth=1
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
.LBB7_161:                              #   in Loop: Header=BB7_143 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB7_163
# BB#162:                               #   in Loop: Header=BB7_143 Depth=1
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
.LBB7_163:                              #   in Loop: Header=BB7_143 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_165
# BB#164:                               #   in Loop: Header=BB7_143 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_166
.LBB7_165:                              #   in Loop: Header=BB7_143 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB7_167
.LBB7_166:                              #   in Loop: Header=BB7_143 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB7_167:                              #   in Loop: Header=BB7_143 Depth=1
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
	jne	.LBB7_170
# BB#168:                               #   in Loop: Header=BB7_143 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB7_170
.LBB7_109:
	movq	-104(%rbp), %r8
	addq	$32, %r8
	movl	$10, %edi
	movl	$11, %esi
	movl	$.L.str.33, %edx
	jmp	.LBB7_107
.LBB7_182:
	movq	-64(%rbp), %rbx
	addq	$32, %rbx
	movq	-88(%rbp), %rax
	movq	64(%rax), %rdi
	callq	SymName
	movq	%rax, %r9
	movl	$10, %edi
	movl	$14, %esi
	movl	$.L.str.42, %edx
	movl	$2, %ecx
	jmp	.LBB7_270
.LBB7_106:
	movq	-104(%rbp), %r8
	addq	$32, %r8
	movl	$10, %edi
	movl	$10, %esi
	movl	$.L.str.30, %edx
.LBB7_107:
	movl	$2, %ecx
	movl	$.L.str.31, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	$.L.str.32, -680(%rbp)
.LBB7_111:
	cmpl	$133, -148(%rbp)
	jne	.LBB7_122
# BB#112:
	movq	-88(%rbp), %rax
	cmpq	$0, 72(%rax)
	jne	.LBB7_117
# BB#113:
	cmpl	$133, -148(%rbp)
	jne	.LBB7_115
# BB#114:
	movq	-72(%rbp), %rbx
	addq	$32, %rbx
	movq	-56(%rbp), %rdi
	callq	SymName
	movq	%rax, %r14
	movq	-56(%rbp), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movq	$.L.str.8, 16(%rsp)
	movq	$.L.str.12, 8(%rsp)
	movl	$10, %edi
	movl	$12, %esi
	movl	$.L.str.34, %edx
	jmp	.LBB7_116
.LBB7_122:
	movq	-680(%rbp), %rsi
	movq	-72(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	callq	MakeWord
	movq	%rax, -80(%rbp)
	movb	-148(%rbp), %cl
	movb	%cl, 48(%rax)
	movw	-682(%rbp), %ax
	movq	-80(%rbp), %rcx
	movw	%ax, 50(%rcx)
	movl	-688(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movl	-692(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB7_124
# BB#123:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_127
.LBB7_124:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_125
# BB#126:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_127
.LBB7_186:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_187
# BB#188:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_189
.LBB7_172:
	movq	-64(%rbp), %rbx
	addq	$32, %rbx
	movq	-56(%rbp), %rdi
	callq	SymName
	movq	%rax, %r14
	movq	-56(%rbp), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movq	$.L.str.8, 16(%rsp)
	movq	$.L.str.12, 8(%rsp)
	movl	$10, %edi
	movl	$13, %esi
	movl	$.L.str.40, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	jmp	.LBB7_271
.LBB7_115:
	movq	-72(%rbp), %rbx
	addq	$32, %rbx
	movq	-56(%rbp), %rdi
	callq	SymName
	movq	%rax, %r14
	movq	-56(%rbp), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movq	$.L.str.9, 16(%rsp)
	movq	$.L.str.12, 8(%rsp)
	movl	$10, %edi
	movl	$22, %esi
	movl	$.L.str.35, %edx
.LBB7_116:
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	Error
	movq	-72(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.36, %esi
	callq	MakeWord
	movq	-88(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB7_117:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_119
# BB#118:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB7_120
.LBB7_119:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rdi
	addq	$64, %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB7_121
.LBB7_120:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.37, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_121:
	movq	NewCrossDb(%rip), %rdi
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	72(%rax), %rcx
	addq	$64, %rcx
	movq	no_fpos(%rip), %r8
	movq	-680(%rbp), %r9
	movslq	-688(%rbp), %rax
	movl	-692(%rbp), %esi
	movzwl	-682(%rbp), %ebx
	movl	%esi, 16(%rsp)
	movq	%rax, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	$0, 24(%rsp)
	movl	$1, %esi
	callq	DbInsert
	jmp	.LBB7_133
.LBB7_125:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB7_127:
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
	je	.LBB7_130
# BB#128:
	cmpq	$0, zz_res(%rip)
	je	.LBB7_130
# BB#129:
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
.LBB7_130:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_133
# BB#131:
	cmpq	$0, zz_res(%rip)
	je	.LBB7_133
# BB#132:
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
.LBB7_133:
	movq	-72(%rbp), %rdi
	callq	DisposeObject
	cmpq	$0, -112(%rbp)
	je	.LBB7_272
# BB#134:
	movq	-112(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB7_272
.LBB7_187:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB7_189:
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
	je	.LBB7_192
# BB#190:
	cmpq	$0, zz_res(%rip)
	je	.LBB7_192
# BB#191:
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
.LBB7_192:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_195
# BB#193:
	cmpq	$0, zz_res(%rip)
	je	.LBB7_195
# BB#194:
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
.LBB7_195:
	movq	-64(%rbp), %rax
	movw	34(%rax), %cx
	movw	%cx, 50(%rax)
	movb	-148(%rbp), %al
	movq	-64(%rbp), %rcx
	movb	%al, 48(%rcx)
.LBB7_272:
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	CrossSequence, .Lfunc_end7-CrossSequence
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_180
	.quad	.LBB7_180
	.quad	.LBB7_30
	.quad	.LBB7_30
	.quad	.LBB7_196
	.quad	.LBB7_135
	.quad	.LBB7_30
	.quad	.LBB7_171

	.text
	.globl	CrossClose
	.align	16, 0x90
	.type	CrossClose,@function
CrossClose:                             # @CrossClose
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1656, %rsp             # imm = 0x678
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
	cmpl	$0, AllowCrossDb(%rip)
	je	.LBB8_54
# BB#1:
	cmpq	$0, RootCross(%rip)
	je	.LBB8_48
# BB#2:
	movq	RootCross(%rip), %rax
	jmp	.LBB8_3
	.align	16, 0x90
.LBB8_47:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-48(%rbp), %rax
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
                                        #     Child Loop BB8_10 Depth 2
                                        #       Child Loop BB8_12 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	RootCross(%rip), %rax
	je	.LBB8_48
# BB#4:                                 #   in Loop: Header=BB8_3 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB8_5
	.align	16, 0x90
.LBB8_6:                                #   in Loop: Header=BB8_5 Depth=2
	movq	-56(%rbp), %rax
.LBB8_5:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_6
# BB#7:                                 #   in Loop: Header=BB8_3 Depth=1
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	je	.LBB8_9
# BB#8:                                 #   in Loop: Header=BB8_3 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.50, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_9:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -92(%rbp)
	movq	-56(%rbp), %rax
	jmp	.LBB8_10
	.align	16, 0x90
.LBB8_45:                               #   in Loop: Header=BB8_10 Depth=2
	callq	Error
	movq	-64(%rbp), %rax
.LBB8_10:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_12 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB8_47
# BB#11:                                #   in Loop: Header=BB8_10 Depth=2
	movq	-64(%rbp), %rax
	jmp	.LBB8_12
	.align	16, 0x90
.LBB8_13:                               #   in Loop: Header=BB8_12 Depth=3
	movq	-72(%rbp), %rax
.LBB8_12:                               #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_13
# BB#14:                                #   in Loop: Header=BB8_10 Depth=2
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB8_16
# BB#15:                                #   in Loop: Header=BB8_10 Depth=2
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB8_17
.LBB8_16:                               #   in Loop: Header=BB8_10 Depth=2
	movq	-72(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB8_18
.LBB8_17:                               #   in Loop: Header=BB8_10 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.51, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_18:                               #   in Loop: Header=BB8_10 Depth=2
	movq	-72(%rbp), %rax
	movzbl	48(%rax), %eax
	addl	$-127, %eax
	cmpl	$3, %eax
	jbe	.LBB8_19
# BB#44:                                #   in Loop: Header=BB8_10 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.56, %r9d
	xorl	%eax, %eax
	jmp	.LBB8_45
	.align	16, 0x90
.LBB8_19:                               #   in Loop: Header=BB8_10 Depth=2
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_20:                               #   in Loop: Header=BB8_10 Depth=2
	cmpl	$4, -92(%rbp)
	jg	.LBB8_22
# BB#21:                                #   in Loop: Header=BB8_10 Depth=2
	movq	-72(%rbp), %rbx
	addq	$32, %rbx
	movq	-80(%rbp), %rdi
	callq	SymName
	movq	%rax, %r14
	movq	-80(%rbp), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movq	$.L.str.10, 16(%rsp)
	movq	$.L.str.12, 8(%rsp)
	movl	$10, %edi
	movl	$16, %esi
	movl	$.L.str.52, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	jmp	.LBB8_24
.LBB8_26:                               #   in Loop: Header=BB8_10 Depth=2
	movq	-56(%rbp), %rax
	cmpb	$0, 33(%rax)
	je	.LBB8_27
# BB#28:                                #   in Loop: Header=BB8_10 Depth=2
	movq	-56(%rbp), %rax
	movzbl	33(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB8_30
# BB#29:                                #   in Loop: Header=BB8_10 Depth=2
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdi
	movzwl	34(%rax), %esi
	leaq	52(%rax), %rdx
	leaq	56(%rax), %rcx
	callq	AppendToFile
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdi
	callq	DisposeObject
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-56(%rbp), %rax
	movb	$2, 33(%rax)
.LBB8_30:                               #   in Loop: Header=BB8_10 Depth=2
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB8_32
# BB#31:                                #   in Loop: Header=BB8_10 Depth=2
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB8_33
.LBB8_32:                               #   in Loop: Header=BB8_10 Depth=2
	movq	-72(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB8_34
.LBB8_33:                               #   in Loop: Header=BB8_10 Depth=2
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.36, %esi
	callq	MakeWord
	movq	%rax, -72(%rbp)
.LBB8_34:                               #   in Loop: Header=BB8_10 Depth=2
	movq	NewCrossDb(%rip), %rdi
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %r8
	leaq	64(%r8), %rcx
	addq	$32, %r8
	movq	-56(%rbp), %rax
	movslq	52(%rax), %rsi
	movl	56(%rax), %ebx
	movzwl	34(%rax), %eax
	movl	%ebx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 24(%rsp)
	movl	$0, %esi
	movl	$.L.str.41, %r9d
	callq	DbInsert
	movq	-64(%rbp), %rax
	jmp	.LBB8_10
.LBB8_35:                               #   in Loop: Header=BB8_10 Depth=2
	cmpl	$4, -92(%rbp)
	jg	.LBB8_37
# BB#36:                                #   in Loop: Header=BB8_10 Depth=2
	movq	-72(%rbp), %rbx
	addq	$32, %rbx
	movq	-80(%rbp), %rdi
	callq	SymName
	movq	%rax, %r14
	movq	-80(%rbp), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movq	$.L.str.10, 16(%rsp)
	movq	$.L.str.12, 8(%rsp)
	movl	$10, %edi
	movl	$19, %esi
	movl	$.L.str.52, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	jmp	.LBB8_39
.LBB8_41:                               #   in Loop: Header=BB8_10 Depth=2
	movq	-56(%rbp), %rax
	cmpq	$0, 72(%rax)
	jne	.LBB8_43
# BB#42:                                #   in Loop: Header=BB8_10 Depth=2
	movq	-72(%rbp), %rbx
	addq	$32, %rbx
	movq	-80(%rbp), %rdi
	callq	SymName
	movq	%rax, %r14
	movq	-80(%rbp), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movq	$.L.str.9, 16(%rsp)
	movq	$.L.str.12, 8(%rsp)
	movl	$10, %edi
	movl	$21, %esi
	movl	$.L.str.55, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	Error
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.36, %esi
	callq	MakeWord
	movq	-56(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB8_43:                               #   in Loop: Header=BB8_10 Depth=2
	movq	NewCrossDb(%rip), %rdi
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	72(%rax), %rcx
	addq	$64, %rcx
	movq	no_fpos(%rip), %r8
	movq	-72(%rbp), %rax
	movslq	52(%rax), %r10
	movl	56(%rax), %ebx
	movzwl	50(%rax), %esi
	leaq	64(%rax), %r9
	movl	%ebx, 16(%rsp)
	movq	%r10, 8(%rsp)
	movl	%esi, (%rsp)
	movl	$0, 24(%rsp)
	movl	$1, %esi
	callq	DbInsert
	movq	-64(%rbp), %rax
	jmp	.LBB8_10
.LBB8_22:                               #   in Loop: Header=BB8_10 Depth=2
	cmpl	$5, -92(%rbp)
	jne	.LBB8_25
# BB#23:                                #   in Loop: Header=BB8_10 Depth=2
	movq	no_fpos(%rip), %r14
	movq	-80(%rbp), %rdi
	callq	SymName
	movq	%rax, %rbx
	movq	$.L.str.10, 8(%rsp)
	movq	$.L.str.12, (%rsp)
	movl	$10, %edi
	movl	$17, %esi
	movl	$.L.str.53, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
.LBB8_24:                               #   in Loop: Header=BB8_10 Depth=2
	callq	Error
.LBB8_25:                               #   in Loop: Header=BB8_10 Depth=2
	incl	-92(%rbp)
	movq	-64(%rbp), %rax
	jmp	.LBB8_10
.LBB8_37:                               #   in Loop: Header=BB8_10 Depth=2
	cmpl	$5, -92(%rbp)
	jne	.LBB8_40
# BB#38:                                #   in Loop: Header=BB8_10 Depth=2
	movq	no_fpos(%rip), %r14
	movq	-80(%rbp), %rdi
	callq	SymName
	movq	%rax, %rbx
	movq	$.L.str.10, 8(%rsp)
	movq	$.L.str.12, (%rsp)
	movl	$10, %edi
	movl	$20, %esi
	movl	$.L.str.53, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
.LBB8_39:                               #   in Loop: Header=BB8_10 Depth=2
	callq	Error
.LBB8_40:                               #   in Loop: Header=BB8_10 Depth=2
	movq	NewCrossDb(%rip), %rdi
	movq	-80(%rbp), %rdx
	movq	no_fpos(%rip), %r8
	movq	-72(%rbp), %rax
	movslq	52(%rax), %rcx
	movl	56(%rax), %esi
	movzwl	50(%rax), %ebx
	leaq	64(%rax), %r9
	movl	%esi, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	$0, 24(%rsp)
	movl	$1, %esi
	movl	$.L.str.36, %ecx
	callq	DbInsert
	incl	-92(%rbp)
	movq	-64(%rbp), %rax
	jmp	.LBB8_10
.LBB8_27:                               #   in Loop: Header=BB8_10 Depth=2
	movq	-72(%rbp), %rbx
	addq	$32, %rbx
	movq	-80(%rbp), %rdi
	callq	SymName
	movq	%rax, %r14
	movq	-80(%rbp), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movq	$.L.str.9, 16(%rsp)
	movq	$.L.str.12, 8(%rsp)
	movl	$10, %edi
	movl	$18, %esi
	movl	$.L.str.54, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	jmp	.LBB8_45
.LBB8_48:
	movq	$0, -112(%rbp)
	movl	$3, -88(%rbp)
	leaq	-80(%rbp), %r15
	leaq	-1664(%rbp), %r12
	leaq	-1152(%rbp), %rbx
	leaq	-94(%rbp), %r13
	leaq	-640(%rbp), %r14
	jmp	.LBB8_49
	.align	16, 0x90
.LBB8_52:                               #   in Loop: Header=BB8_49 Depth=1
	movq	NewCrossDb(%rip), %rdi
	movq	-80(%rbp), %rdx
	movq	no_fpos(%rip), %r8
	movq	-104(%rbp), %rax
	movl	-116(%rbp), %ecx
	movzwl	-94(%rbp), %esi
	movl	%ecx, 16(%rsp)
	movq	%rax, 8(%rsp)
	movl	%esi, (%rsp)
	movl	$0, 24(%rsp)
	movl	$0, %esi
	movq	%r12, %rcx
	movq	%rbx, %r9
	callq	DbInsert
.LBB8_49:                               # =>This Inner Loop Header: Depth=1
	movq	OldCrossDb(%rip), %rdi
	leaq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	leaq	-116(%rbp), %rax
	movq	%rax, 8(%rsp)
	leaq	-104(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-84(%rbp), %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	movq	%r13, %r9
	callq	DbRetrieveNext
	testl	%eax, %eax
	je	.LBB8_53
# BB#50:                                #   in Loop: Header=BB8_49 Depth=1
	cmpl	$0, -84(%rbp)
	jne	.LBB8_49
# BB#51:                                #   in Loop: Header=BB8_49 Depth=1
	movzwl	-94(%rbp), %edi
	callq	FileName
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%r14, %rdi
	callq	strlen
	movslq	-88(%rbp), %rcx
	subq	%rcx, %rax
	leaq	-640(%rbp,%rax), %rdi
	movl	$.L.str.3, %esi
	callq	strcpy
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	FileNum
	testw	%ax, %ax
	jne	.LBB8_49
	jmp	.LBB8_52
.LBB8_53:
	movq	OldCrossDb(%rip), %rdi
	callq	DbClose
	movq	NewCrossDb(%rip), %rdi
	movl	$1, %esi
	callq	DbConvert
.LBB8_54:
	addq	$1656, %rsp             # imm = 0x678
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	CrossClose, .Lfunc_end8-CrossClose
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_20
	.quad	.LBB8_26
	.quad	.LBB8_35
	.quad	.LBB8_41

	.text
	.align	16, 0x90
	.type	crtab_new,@function
crtab_new:                              # @crtab_new
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	leaq	8(,%rax,8), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB9_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$10, %edi
	movl	$1, %esi
	movl	$.L.str.59, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB9_2:
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movl	$0, -20(%rbp)
	jmp	.LBB9_3
	.align	16, 0x90
.LBB9_4:                                #   in Loop: Header=BB9_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	$0, 8(%rcx,%rax,8)
	incl	-20(%rbp)
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB9_4
# BB#5:
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	crtab_new, .Lfunc_end9-crtab_new
	.cfi_endproc

	.align	16, 0x90
	.type	crtab_rehash,@function
crtab_rehash:                           # @crtab_rehash
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%esi, %edi
	callq	crtab_new
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB10_1
	.align	16, 0x90
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	incl	-28(%rbp)
.LBB10_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB10_6
# BB#2:                                 #   in Loop: Header=BB10_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	jmp	.LBB10_3
	.align	16, 0x90
.LBB10_4:                               #   in Loop: Header=BB10_3 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rcx
	movzwl	16(%rcx), %eax
	addq	8(%rcx), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax,%rdx,8), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	incl	4(%rax)
	movq	-56(%rbp), %rax
.LBB10_3:                               #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_4
	jmp	.LBB10_5
.LBB10_6:
	movq	-8(%rbp), %rdi
	callq	free
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	crtab_rehash, .Lfunc_end10-crtab_rehash
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"word is too long"
	.size	.L.str, 17

	.type	RootCross,@object       # @RootCross
	.local	RootCross
	.comm	RootCross,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"automatically generated tag %s&%d is too long"
	.size	.L.str.1, 46

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"&"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.zero	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"assert failed in %s"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"CrossExpand: x!"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"CrossExpand: #args!"
	.size	.L.str.6, 20

	.type	nbt,@object             # @nbt
	.local	nbt
	.comm	nbt,16,16
	.type	nft,@object             # @nft
	.local	nft
	.comm	nft,16,16
	.type	ntarget,@object         # @ntarget
	.local	ntarget
	.comm	ntarget,8,8
	.type	nenclose,@object        # @nenclose
	.local	nenclose
	.comm	nenclose,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ClosureExpand: type(y) != CLOSURE!"
	.size	.L.str.7, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"preceding"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"foll_or_prec"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"following"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"value of right parameter of %s is not a simple word"
	.size	.L.str.11, 52

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"&&"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"value of right parameter of %s is an empty word"
	.size	.L.str.13, 48

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"now"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"symbol %s used in cross reference has no %s parameter"
	.size	.L.str.15, 54

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"@Tag"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"CrossExpand: db!"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"CrossExpand/CROSS_FOLL: cs == nilobj!"
	.size	.L.str.18, 38

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"CrossExpand/CROSS_FOLL: type(cs)!"
	.size	.L.str.19, 34

	.type	crossref_tab,@object    # @crossref_tab
	.local	crossref_tab
	.comm	crossref_tab,8,8
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"automatically generated tag %s_%d is too long"
	.size	.L.str.20, 46

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_"
	.size	.L.str.21, 2

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"CrossExpand ctype"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"unresolved cross reference %s%s%s"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"CrossExpand: type(res) != CLOSURE!"
	.size	.L.str.24, 35

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"CrossExpand: actual(res) != sym!"
	.size	.L.str.25, 33

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"CrossSequence: type(x)!"
	.size	.L.str.26, 24

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"CrossSequence: type(tmp)!"
	.size	.L.str.27, 26

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"CrossSequence: cs!"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"CrossSequence/GALL_FOLL: type(val)!"
	.size	.L.str.29, 36

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s parameter is not a word"
	.size	.L.str.30, 27

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"@Key"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"badkey"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s parameter is an empty word"
	.size	.L.str.33, 30

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"no %s galley target precedes this %s%s%s"
	.size	.L.str.34, 41

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"no %s galley target follows or precedes this %s%s%s"
	.size	.L.str.35, 52

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"none"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"CrossSequence: gall_tag!"
	.size	.L.str.37, 25

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"CrossSequence: GALL_TARG y!"
	.size	.L.str.38, 28

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"CrossSequence: cs_type!"
	.size	.L.str.39, 24

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"no %s precedes this %s%s%s"
	.size	.L.str.40, 27

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"0"
	.size	.L.str.41, 2

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"tag of %s is not a simple word"
	.size	.L.str.42, 31

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"CrossSeq: Up(tag)!"
	.size	.L.str.43, 19

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"CrossSequence: target_val!"
	.size	.L.str.44, 27

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"CrossSequence: Down(PAR)!"
	.size	.L.str.45, 26

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"???"
	.size	.L.str.46, 4

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"CrossSeq: non-WORD or empty tag!"
	.size	.L.str.47, 33

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"assert failed in %s %s"
	.size	.L.str.48, 23

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"CrossSequence:"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"CrossClose: type(cs)!"
	.size	.L.str.50, 22

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"CrossClose: GALL_TARG y!"
	.size	.L.str.51, 25

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"no %s follows this %s%s%s"
	.size	.L.str.52, 26

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"and more undefined %s%s%s"
	.size	.L.str.53, 26

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"no %s follows or precedes this %s%s%s"
	.size	.L.str.54, 38

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"no %s precedes or follows this %s%s%s"
	.size	.L.str.55, 38

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"CrossClose: unknown cs_type!"
	.size	.L.str.56, 29

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"automatically generated tag is too long (contains %s)"
	.size	.L.str.57, 54

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%d.%d.%s.%d"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"run out of memory enlarging crossref table"
	.size	.L.str.59, 43


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
