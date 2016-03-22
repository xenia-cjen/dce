	.text
	.file	"z40.dce"
	.globl	FilterInit
	.align	16, 0x90
	.type	FilterInit,@function
FilterInit:                             # @FilterInit
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
	movl	$0, filter_count(%rip)
	movzbl	zz_lengths+17(%rip), %eax
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
	movb	$17, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, filter_active(%rip)
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.1, %esi
	callq	MakeWord
	movq	FilterInSym(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.2, %esi
	callq	MakeWord
	movq	FilterOutSym(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.3, %esi
	callq	MakeWord
	movq	FilterErrSym(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	FilterInSym(%rip), %rax
	movq	56(%rax), %rax
	movq	%rax, filter_in_filename(%rip)
	movq	FilterOutSym(%rip), %rax
	movq	56(%rax), %rax
	movq	%rax, filter_out_filename(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	FilterInit, .Lfunc_end0-FilterInit
	.cfi_endproc

	.globl	FilterCreate
	.align	16, 0x90
	.type	FilterCreate,@function
FilterCreate:                           # @FilterCreate
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
	pushq	%rbx
	subq	$2104, %rsp             # imm = 0x838
.Ltmp6:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movzbl	zz_lengths+57(%rip), %eax
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
	movb	$57, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -2104(%rbp)
	movq	-32(%rbp), %rcx
	movw	2(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-32(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	4(%rax), %eax
	andl	%ecx, %eax
	movq	-2104(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-32(%rbp), %rax
	andl	4(%rax), %esi
	movq	-2104(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movl	filter_count(%rip), %ecx
	incl	%ecx
	movl	%ecx, filter_count(%rip)
	leaq	-2080(%rbp), %rbx
	movl	$.L.str.4, %esi
	movl	$.L.str.1, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, -2088(%rbp)
	testq	%rax, %rax
	jne	.LBB1_7
# BB#6:
	movq	-32(%rbp), %r8
	leaq	-2080(%rbp), %r9
	movl	$40, %edi
	movl	$1, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_7:
	movq	-32(%rbp), %rdx
	leaq	-2080(%rbp), %rsi
	movl	$11, %edi
	callq	MakeWord
	movq	%rax, -2096(%rbp)
	movl	$1023, %ecx             # imm = 0x3FF
	andl	-12(%rbp), %ecx
	shll	$12, %ecx
	movl	$-4190209, %edx         # imm = 0xFFFFFFFFFFC00FFF
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	-2096(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_9
# BB#8:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_12
.LBB1_9:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_10
# BB#11:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_12
.LBB1_10:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_12:
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
	movq	-2104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_15
# BB#13:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_15
# BB#14:
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
.LBB1_15:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-2096(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_18
# BB#16:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_18
# BB#17:
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
.LBB1_18:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_20
# BB#19:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_23
.LBB1_20:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_21
# BB#22:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_23
.LBB1_21:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_23:
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
	movq	filter_active(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_26
# BB#24:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_26
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
.LBB1_26:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-2096(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_29
# BB#27:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_29
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
.LBB1_29:
	movq	-2088(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-32(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	LexScanVerbatim
	movq	%rax, -2112(%rbp)
	movq	-2088(%rbp), %rdi
	callq	fclose
	movl	filter_count(%rip), %ecx
	leaq	-2080(%rbp), %rbx
	movl	$.L.str.4, %esi
	movl	$.L.str.2, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	-32(%rbp), %rdx
	movl	$11, %edi
	movq	%rbx, %rsi
	callq	MakeWord
	movq	%rax, -2096(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_31
# BB#30:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_34
.LBB1_31:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_32
# BB#33:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_34
.LBB1_32:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_34:
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
	movq	-2104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_37
# BB#35:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_37
# BB#36:
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
.LBB1_37:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-2096(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_40
# BB#38:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_40
# BB#39:
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
.LBB1_40:
	movq	-24(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$8, %eax
	jae	.LBB1_42
# BB#41:
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	PushScope
.LBB1_42:
	callq	GetScopeSnapshot
	movq	%rax, -2096(%rbp)
	movq	-24(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$8, %eax
	jae	.LBB1_44
# BB#43:
	callq	PopScope
.LBB1_44:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_46
# BB#45:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_49
.LBB1_46:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_47
# BB#48:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_49
.LBB1_47:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_49:
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
	movq	-2104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_52
# BB#50:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_52
# BB#51:
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
.LBB1_52:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-2096(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_55
# BB#53:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_55
# BB#54:
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
.LBB1_55:
	movq	-2104(%rbp), %rax
	addq	$2104, %rsp             # imm = 0x838
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	FilterCreate, .Lfunc_end1-FilterCreate
	.cfi_endproc

	.globl	FilterSetFileNames
	.align	16, 0x90
	.type	FilterSetFileNames,@function
FilterSetFileNames:                     # @FilterSetFileNames
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movzbl	32(%rdi), %eax
	cmpl	$57, %eax
	je	.LBB2_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_2:
	movq	-8(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB2_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_4:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_5
	.align	16, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_5 Depth=1
	movq	-16(%rbp), %rax
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_6
# BB#7:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_9
# BB#8:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.10, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_9:
	movq	-16(%rbp), %rax
	movq	FilterInSym(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_10
	.align	16, 0x90
.LBB2_11:                               #   in Loop: Header=BB2_10 Depth=1
	movq	-16(%rbp), %rax
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_11
# BB#12:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_14
# BB#13:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_14:
	movq	-16(%rbp), %rax
	movq	FilterOutSym(%rip), %rcx
	movq	%rax, 56(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	FilterSetFileNames, .Lfunc_end2-FilterSetFileNames
	.cfi_endproc

	.globl	FilterExecute
	.align	16, 0x90
	.type	FilterExecute,@function
FilterExecute:                          # @FilterExecute
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$2120, %rsp             # imm = 0x848
.Ltmp13:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$57, %eax
	je	.LBB3_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_2:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	je	.LBB3_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_4:
	movq	filter_in_filename(%rip), %rax
	movq	FilterInSym(%rip), %rcx
	movq	%rax, 56(%rcx)
	cmpl	$0, SafeExecution(%rip)
	je	.LBB3_6
# BB#5:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movq	-24(%rbp), %r9
	movl	$40, %edi
	movl	$2, %esi
	movl	$.L.str.14, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.15, %esi
	callq	MakeWord
	movq	%rax, -56(%rbp)
	jmp	.LBB3_19
.LBB3_6:
	movq	-24(%rbp), %rdi
	callq	system
	movl	%eax, -36(%rbp)
	movl	$.L.str.3, %edi
	movl	$.L.str.16, %esi
	callq	fopen
	movq	%rax, -2120(%rbp)
	testq	%rax, %rax
	je	.LBB3_13
# BB#7:
	leaq	-2112(%rbp), %rbx
	jmp	.LBB3_8
	.align	16, 0x90
.LBB3_11:                               #   in Loop: Header=BB3_8 Depth=1
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$40, %edi
	movl	$3, %esi
	movl	$.L.str.17, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r9
	callq	Error
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	movq	-2120(%rbp), %rdx
	movl	$2048, %esi             # imm = 0x800
	movq	%rbx, %rdi
	callq	fgets
	testq	%rax, %rax
	je	.LBB3_12
# BB#9:                                 #   in Loop: Header=BB3_8 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movzbl	-1(%rax,%rbx), %eax
	cmpl	$10, %eax
	jne	.LBB3_11
# BB#10:                                #   in Loop: Header=BB3_8 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movb	$0, -1(%rax,%rbx)
	jmp	.LBB3_11
.LBB3_12:
	movq	-2120(%rbp), %rdi
	callq	fclose
	movl	$.L.str.3, %edi
	callq	remove
.LBB3_13:
	cmpl	$0, -36(%rbp)
	je	.LBB3_15
# BB#14:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movq	-24(%rbp), %r9
	movl	$40, %edi
	movl	$4, %esi
	movl	$.L.str.18, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_15:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB3_16
	.align	16, 0x90
.LBB3_17:                               #   in Loop: Header=BB3_16 Depth=1
	movq	-64(%rbp), %rax
.LBB3_16:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_17
# BB#18:
	movq	-64(%rbp), %rdi
	callq	LoadScopeSnapshot
	movq	FilterOutSym(%rip), %rax
	movq	56(%rax), %rdi
	addq	$64, %rdi
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movl	$.L.str.15, %esi
	movl	$10, %ecx
	xorl	%r8d, %r8d
	callq	DefineFile
	movw	%ax, -2122(%rbp)
	movzwl	-2122(%rbp), %edi
	xorl	%esi, %esi
	movl	$10, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	LexPush
	movq	-16(%rbp), %rsi
	addq	$32, %rsi
	movq	FilterOutSym(%rip), %r9
	movl	$104, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	NewToken
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	Parse
	movq	%rax, -56(%rbp)
	callq	LexPop
	movq	-64(%rbp), %rdi
	callq	ClearScopeSnapshot
	movq	FilterOutSym(%rip), %rax
	movq	56(%rax), %rdi
	addq	$64, %rdi
	callq	remove
	movq	filter_out_filename(%rip), %rax
	movq	FilterOutSym(%rip), %rcx
	movq	%rax, 56(%rcx)
.LBB3_19:
	movq	-56(%rbp), %rax
	addq	$2120, %rsp             # imm = 0x848
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	FilterExecute, .Lfunc_end3-FilterExecute
	.cfi_endproc

	.globl	FilterWrite
	.align	16, 0x90
	.type	FilterWrite,@function
FilterWrite:                            # @FilterWrite
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$57, %eax
	je	.LBB4_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_2:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_3 Depth=1
	movq	-40(%rbp), %rax
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_4
# BB#5:
	movq	-40(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	fopen
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	jne	.LBB4_7
# BB#6:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movq	-40(%rbp), %r9
	addq	$64, %r9
	movl	$40, %edi
	movl	$5, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_7:
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	testw	$1023, %ax              # imm = 0x3FF
	je	.LBB4_13
# BB#8:
	movq	-16(%rbp), %rsi
	movl	$.L.str.21, %edi
	callq	fputs
	movq	-16(%rbp), %rsi
	movl	$.L.str.22, %edi
	callq	fputs
	.align	16, 0x90
.LBB4_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	movq	-24(%rbp), %rax
	incl	(%rax)
.LBB4_10:                               #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -44(%rbp)
	cmpl	$-1, %eax
	je	.LBB4_12
# BB#11:                                #   in Loop: Header=BB4_10 Depth=2
	movl	-44(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	cmpl	$10, -44(%rbp)
	je	.LBB4_9
	jmp	.LBB4_10
.LBB4_12:
	movq	-16(%rbp), %rsi
	movl	$.L.str.23, %edi
	callq	fputs
	movq	-16(%rbp), %rsi
	movl	$.L.str.24, %edi
	callq	fputs
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	SymName
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	jmp	.LBB4_18
.LBB4_13:
	movq	-16(%rbp), %rsi
	movl	$.L.str.25, %edi
	callq	fputs
	movq	-16(%rbp), %rsi
	movl	$.L.str.22, %edi
	callq	fputs
	.align	16, 0x90
.LBB4_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
	movq	-24(%rbp), %rax
	incl	(%rax)
.LBB4_15:                               #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -44(%rbp)
	cmpl	$-1, %eax
	je	.LBB4_17
# BB#16:                                #   in Loop: Header=BB4_15 Depth=2
	movl	-44(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	cmpl	$10, -44(%rbp)
	je	.LBB4_14
	jmp	.LBB4_15
.LBB4_17:
	movq	-16(%rbp), %rsi
	movl	$.L.str.26, %edi
.LBB4_18:
	callq	fputs
	movq	-16(%rbp), %rsi
	movl	$.L.str.22, %edi
	callq	fputs
	movq	-24(%rbp), %rax
	incl	(%rax)
	movq	-32(%rbp), %rdi
	callq	fclose
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	FilterWrite, .Lfunc_end4-FilterWrite
	.cfi_endproc

	.globl	FilterScavenge
	.align	16, 0x90
	.type	FilterScavenge,@function
FilterScavenge:                         # @FilterScavenge
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
	movl	%edi, -4(%rbp)
	movq	filter_active(%rip), %rax
	movq	8(%rax), %rax
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_17:                               #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	filter_active(%rip), %rax
	je	.LBB5_18
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB5_3
	.align	16, 0x90
.LBB5_4:                                #   in Loop: Header=BB5_3 Depth=2
	movq	-16(%rbp), %rax
.LBB5_3:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_4
# BB#5:                                 #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB5_7
# BB#6:                                 #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	cmpq	16(%rax), %rcx
	jne	.LBB5_17
	.align	16, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	callq	remove
	movq	-24(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB5_9
# BB#8:                                 #   in Loop: Header=BB5_1 Depth=1
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
.LBB5_9:                                #   in Loop: Header=BB5_1 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB5_11
# BB#10:                                #   in Loop: Header=BB5_1 Depth=1
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
.LBB5_11:                               #   in Loop: Header=BB5_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB5_13
# BB#12:                                #   in Loop: Header=BB5_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB5_14
.LBB5_13:                               #   in Loop: Header=BB5_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB5_15
.LBB5_14:                               #   in Loop: Header=BB5_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB5_15:                               #   in Loop: Header=BB5_1 Depth=1
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
	jne	.LBB5_17
# BB#16:                                #   in Loop: Header=BB5_1 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB5_17
.LBB5_18:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	FilterScavenge, .Lfunc_end5-FilterScavenge
	.cfi_endproc

	.type	filter_count,@object    # @filter_count
	.local	filter_count
	.comm	filter_count,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"word is too long"
	.size	.L.str, 17

	.type	filter_active,@object   # @filter_active
	.local	filter_active
	.comm	filter_active,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"louti"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"lout"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"lout.err"
	.size	.L.str.3, 9

	.type	filter_in_filename,@object # @filter_in_filename
	.local	filter_in_filename
	.comm	filter_in_filename,8,8
	.type	filter_out_filename,@object # @filter_out_filename
	.local	filter_out_filename
	.comm	filter_out_filename,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s%d"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"w"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cannot open temporary filter file %s"
	.size	.L.str.6, 37

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"assert failed in %s"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"FilterSetFileNames: type(x)!"
	.size	.L.str.8, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"FilterSetFileNames: x has no children!"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"FilterSetFileNames: type(y)!"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"FilterSetFileNames: type(y) (2)!"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"FilterExecute: type(x)!"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"FilterExecute: type(env)!"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"safe execution prohibiting command: %s"
	.size	.L.str.14, 39

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"r"
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"failure (non-zero status) of filter: %s"
	.size	.L.str.18, 40

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"FilterWrite: type(x)!"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"cannot read filter temporary file %s"
	.size	.L.str.20, 37

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"@Begin"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\n"
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"@End"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	" "
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"{"
	.size	.L.str.25, 2

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"}"
	.size	.L.str.26, 2


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
