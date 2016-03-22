	.text
	.file	"z03.dce"
	.globl	InitFiles
	.align	16, 0x90
	.type	InitFiles,@function
InitFiles:                              # @InitFiles
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
	pushq	%rbx
	subq	$24, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movb	$1, %bl
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
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
	movslq	-12(%rbp), %rcx
	movq	%rax, file_type(,%rcx,8)
	incl	-12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$10, -12(%rbp)
	jg	.LBB0_8
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_4
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_5
# BB#6:                                 #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	jmp	.LBB0_7
.LBB0_8:
	movl	$0, -12(%rbp)
	movb	$1, %bl
	jmp	.LBB0_9
	.align	16, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=1
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
	movslq	-12(%rbp), %rcx
	movq	%rax, file_path(,%rcx,8)
	incl	-12(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$7, -12(%rbp)
	jg	.LBB0_16
# BB#10:                                #   in Loop: Header=BB0_9 Depth=1
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_12
# BB#11:                                #   in Loop: Header=BB0_9 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_15
	.align	16, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_13
# BB#14:                                #   in Loop: Header=BB0_9 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_15
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	jmp	.LBB0_15
.LBB0_16:
	movl	$3, %edi
	callq	ftab_new
	movq	%rax, file_tab(%rip)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_18
# BB#17:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_21
.LBB0_18:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_19
# BB#20:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_21
.LBB0_19:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_21:
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
	movq	%rax, empty_path(%rip)
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.1, %esi
	callq	MakeWord
	movq	%rax, -24(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_23
# BB#22:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_26
.LBB0_23:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_24
# BB#25:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_26
.LBB0_24:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_26:
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
	movq	empty_path(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_29
# BB#27:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_29
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
.LBB0_29:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_32
# BB#30:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_32
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
.LBB0_32:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	InitFiles, .Lfunc_end0-InitFiles
	.cfi_endproc

	.align	16, 0x90
	.type	ftab_new,@function
ftab_new:                               # @ftab_new
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rdi
	shlq	$4, %rdi
	orq	$8, %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB1_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$3, %edi
	movl	$1, %esi
	movl	$.L.str.31, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_2:
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movl	$0, -20(%rbp)
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	movq	$0, 16(%rcx,%rax)
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	movq	$0, 8(%rcx,%rax)
	incl	-20(%rbp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB1_4
# BB#5:
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ftab_new, .Lfunc_end1-ftab_new
	.cfi_endproc

	.globl	AddToPath
	.align	16, 0x90
	.type	AddToPath,@function
AddToPath:                              # @AddToPath
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
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
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_5:
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
	movslq	-4(%rbp), %rax
	movq	file_path(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_8
# BB#6:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_8
# BB#7:
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
.LBB2_8:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_11
# BB#9:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_11
# BB#10:
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
.LBB2_11:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	AddToPath, .Lfunc_end2-AddToPath
	.cfi_endproc

	.globl	DefineFile
	.align	16, 0x90
	.type	DefineFile,@function
DefineFile:                             # @DefineFile
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
	subq	$56, %rsp
.Ltmp13:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	cmpl	$11, -36(%rbp)
	jl	.LBB3_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_2:
	cmpl	$0, -36(%rbp)
	jne	.LBB3_8
# BB#3:
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, -44(%rbp)
	cmpl	$3, %eax
	jl	.LBB3_8
# BB#4:
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	leaq	-3(%rax,%rcx), %rdi
	movl	$.L.str.4, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_6
# BB#5:
	movq	-32(%rbp), %r8
	movq	-16(%rbp), %r9
	movl	$3, %edi
	movl	$3, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_6:
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	leaq	-3(%rax,%rcx), %rdi
	movl	$.L.str.6, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_8
# BB#7:
	movq	-32(%rbp), %r8
	movq	-16(%rbp), %r9
	movl	$3, %edi
	movl	$4, %esi
	movl	$.L.str.7, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_8:
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	-24(%rbp), %rdi
	callq	strlen
	addq	%rbx, %rax
	cmpq	$2048, %rax             # imm = 0x800
	jb	.LBB3_10
# BB#9:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movq	-24(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$3, %edi
	movl	$5, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_10:
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	$11, %edi
	callq	MakeWordTwo
	movq	%rax, -56(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_12
# BB#11:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_15
.LBB3_12:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_13
# BB#14:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_15
.LBB3_13:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_15:
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
	movslq	-36(%rbp), %rax
	movq	file_type(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_18
# BB#16:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_18
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
.LBB3_18:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_21
# BB#19:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_21
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
.LBB3_21:
	movl	-40(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-56(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-56(%rbp), %rax
	movl	$1023, %ecx             # imm = 0x3FF
	andl	-36(%rbp), %ecx
	shll	$12, %ecx
	movl	$-4190209, %edx         # imm = 0xFFFFFFFFFFC00FFF
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-56(%rbp), %rax
	andl	$2147483647, 40(%rax)   # imm = 0x7FFFFFFF
	movq	-56(%rbp), %rdi
	movl	$file_tab, %esi
	callq	ftab_insert
	movq	-56(%rbp), %rcx
	movl	$4095, %eax             # imm = 0xFFF
	andl	40(%rcx), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	DefineFile, .Lfunc_end3-DefineFile
	.cfi_endproc

	.align	16, 0x90
	.type	ftab_insert,@function
ftab_insert:                            # @ftab_insert
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
	subq	$72, %rsp
.Ltmp17:
	.cfi_offset %rbx, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	(%rsi), %rax
	movl	(%rax), %ecx
	decl	%ecx
	cmpl	%ecx, 4(%rax)
	jne	.LBB4_10
# BB#1:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	addl	%edi, %edi
	movq	%rax, -16(%rbp)
	movl	%edi, -20(%rbp)
	callq	ftab_new
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	leaq	-32(%rbp), %rbx
	jmp	.LBB4_2
	.align	16, 0x90
.LBB4_3:                                #   in Loop: Header=BB4_2 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rdi
	movq	%rbx, %rsi
	callq	ftab_insert
	incl	-36(%rbp)
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jle	.LBB4_3
# BB#4:
	movl	$0, -36(%rbp)
	jmp	.LBB4_5
	.align	16, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	incl	-36(%rbp)
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB4_9
# BB#6:                                 #   in Loop: Header=BB4_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	cmpq	$0, 16(%rcx,%rax)
	je	.LBB4_8
# BB#7:                                 #   in Loop: Header=BB4_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	movq	16(%rcx,%rax), %rdi
	callq	DisposeObject
	jmp	.LBB4_8
.LBB4_9:                                # %ftab_rehash.exit
	movq	-16(%rbp), %rdi
	callq	free
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB4_10:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %ecx
	incl	%ecx
	movl	%ecx, 4(%rax)
	movl	%ecx, -64(%rbp)
	cmpl	$65536, %ecx            # imm = 0x10000
	jl	.LBB4_12
# BB#11:
	movq	-48(%rbp), %r8
	addq	$32, %r8
	movl	$3, %edi
	movl	$2, %esi
	movl	$.L.str.32, %edx
	movl	$1, %ecx
	movl	$65535, %r9d            # imm = 0xFFFF
	xorl	%eax, %eax
	callq	Error
.LBB4_12:
	movq	-48(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -72(%rbp)
	leaq	65(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	64(%rax), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB4_13
	.align	16, 0x90
.LBB4_14:                               #   in Loop: Header=BB4_13 Depth=1
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -60(%rbp)
.LBB4_13:                               # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB4_14
# BB#15:
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	cltd
	idivl	(%rcx)
	movl	%edx, -60(%rbp)
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$4, %rax
	cmpq	$0, 16(%rcx,%rax)
	jne	.LBB4_22
# BB#16:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_18
# BB#17:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
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
	movslq	-60(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	shlq	$4, %rcx
	movq	%rax, 16(%rdx,%rcx)
.LBB4_22:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_24
# BB#23:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_27
.LBB4_24:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_25
# BB#26:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_27
.LBB4_25:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_27:
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
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$4, %rax
	movq	16(%rcx,%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_30
# BB#28:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_30
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
.LBB4_30:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_33
# BB#31:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_33
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
.LBB4_33:
	movq	-48(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	-64(%rbp), %ecx
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-48(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	shlq	$4, %rcx
	movq	%rax, 8(%rdx,%rcx)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ftab_insert, .Lfunc_end4-ftab_insert
	.cfi_endproc

	.globl	FirstFile
	.align	16, 0x90
	.type	FirstFile,@function
FirstFile:                              # @FirstFile
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
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	movq	file_type(,%rax,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB5_2
# BB#1:
	movw	$0, -6(%rbp)
	jmp	.LBB5_6
.LBB5_2:
	movq	-16(%rbp), %rax
	jmp	.LBB5_3
	.align	16, 0x90
.LBB5_4:                                #   in Loop: Header=BB5_3 Depth=1
	movq	-24(%rbp), %rax
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_4
# BB#5:
	movq	-24(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	40(%rax), %ecx
	movw	%cx, -6(%rbp)
.LBB5_6:
	movzwl	-6(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	FirstFile, .Lfunc_end5-FirstFile
	.cfi_endproc

	.globl	NextFile
	.align	16, 0x90
	.type	NextFile,@function
NextFile:                               # @NextFile
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	movw	%di, -2(%rbp)
	movzwl	-2(%rbp), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB6_2
# BB#1:
	movw	$0, -2(%rbp)
	jmp	.LBB6_6
.LBB6_2:
	movq	-16(%rbp), %rax
	jmp	.LBB6_3
	.align	16, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_3 Depth=1
	movq	-24(%rbp), %rax
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_4
# BB#5:
	movq	-24(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	40(%rax), %ecx
	movw	%cx, -2(%rbp)
.LBB6_6:
	movzwl	-2(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	NextFile, .Lfunc_end6-NextFile
	.cfi_endproc

	.globl	FileNum
	.align	16, 0x90
	.type	FileNum,@function
FileNum:                                # @FileNum
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$632, %rsp              # imm = 0x278
.Ltmp27:
	.cfi_offset %rbx, -24
	movq	%rdi, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	-80(%rbp), %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	-88(%rbp), %rdi
	callq	strlen
	addq	%rbx, %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB7_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movq	-80(%rbp), %r9
	movq	-88(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$3, %edi
	movl	$6, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB7_2:
	movq	-80(%rbp), %rsi
	leaq	-624(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movq	-88(%rbp), %rsi
	movq	%rbx, %rdi
	callq	strcat
	movq	file_tab(%rip), %rax
	movq	%rbx, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	1(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB7_3
	.align	16, 0x90
.LBB7_4:                                #   in Loop: Header=BB7_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -60(%rbp)
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_4
# BB#5:
	movl	-60(%rbp), %eax
	movq	-32(%rbp), %rcx
	cltd
	idivl	(%rcx)
	movl	%edx, -60(%rbp)
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$4, %rax
	movq	16(%rcx,%rax), %rax
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	je	.LBB7_14
# BB#6:
	movq	-40(%rbp), %rax
	jmp	.LBB7_7
	.align	16, 0x90
.LBB7_13:                               #   in Loop: Header=BB7_7 Depth=1
	movq	-48(%rbp), %rax
.LBB7_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB7_14
# BB#8:                                 #   in Loop: Header=BB7_7 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB7_9
	.align	16, 0x90
.LBB7_10:                               #   in Loop: Header=BB7_9 Depth=2
	movq	-56(%rbp), %rax
.LBB7_9:                                #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_10
# BB#11:                                #   in Loop: Header=BB7_7 Depth=1
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB7_13
# BB#12:
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_15
.LBB7_14:
	movq	$0, -16(%rbp)
.LBB7_15:                               # %ftab_retrieve.exit
	movq	-16(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB7_17
# BB#16:
	movq	-104(%rbp), %rcx
	movl	$4095, %eax             # imm = 0xFFF
	andl	40(%rcx), %eax
.LBB7_17:
	movl	%eax, -92(%rbp)
	movzwl	-92(%rbp), %eax
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	FileNum, .Lfunc_end7-FileNum
	.cfi_endproc

	.globl	DatabaseFileNum
	.align	16, 0x90
	.type	DatabaseFileNum,@function
DatabaseFileNum:                        # @DatabaseFileNum
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
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movzwl	2(%rdi), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -32(%rbp)
	movl	40(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	cmpl	$2, %eax
	jae	.LBB8_1
# BB#6:
	movq	-24(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -2(%rbp)
	movzwl	-2(%rbp), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB8_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_8:
	movq	-16(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB8_12
# BB#9:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB8_10
	.align	16, 0x90
.LBB8_11:                               #   in Loop: Header=BB8_10 Depth=1
	movq	-16(%rbp), %rax
.LBB8_10:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_11
.LBB8_12:                               # %FileName.exit
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movq	%rdi, -48(%rbp)
	movl	$.L.str.4, %esi
	callq	FileNum
	movw	%ax, -34(%rbp)
	testw	%ax, %ax
	jne	.LBB8_17
# BB#13:
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	$.L.str.4, %esi
	movl	$3, %ecx
	xorl	%r8d, %r8d
	callq	DefineFile
	movw	%ax, -34(%rbp)
	jmp	.LBB8_17
.LBB8_1:
	cmpl	$3, %eax
	jne	.LBB8_2
# BB#14:
	movq	-32(%rbp), %rax
	cmpw	$0, 34(%rax)
	jne	.LBB8_5
# BB#15:
	movq	-24(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -34(%rbp)
	jmp	.LBB8_17
.LBB8_2:
	cmpl	$10, %eax
	jne	.LBB8_16
# BB#3:
	movq	-32(%rbp), %rax
	cmpw	$0, 34(%rax)
	jne	.LBB8_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$3, %edi
	movl	$7, %esi
	movl	$.L.str.9, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB8_5:
	movq	-32(%rbp), %rdi
	addq	$32, %rdi
	callq	DatabaseFileNum
	movw	%ax, -34(%rbp)
	jmp	.LBB8_17
.LBB8_16:
	movq	no_fpos(%rip), %r8
	movl	$3, %edi
	movl	$8, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	movw	$0, -34(%rbp)
.LBB8_17:
	movzwl	-34(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	DatabaseFileNum, .Lfunc_end8-DatabaseFileNum
	.cfi_endproc

	.globl	FileName
	.align	16, 0x90
	.type	FileName,@function
FileName:                               # @FileName
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -2(%rbp)
	movzwl	-2(%rbp), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB9_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB9_2:
	movq	-16(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB9_6
# BB#3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB9_4
	.align	16, 0x90
.LBB9_5:                                #   in Loop: Header=BB9_4 Depth=1
	movq	-16(%rbp), %rax
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB9_5
.LBB9_6:
	movq	-16(%rbp), %rax
	addq	$64, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	FileName, .Lfunc_end9-FileName
	.cfi_endproc

	.globl	FullFileName
	.align	16, 0x90
	.type	FullFileName,@function
FullFileName:                           # @FullFileName
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movw	%di, -10(%rbp)
	movzwl	-10(%rbp), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -24(%rbp)
	testq	%rax, %rax
	jne	.LBB10_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB10_2:
	movq	-24(%rbp), %rax
	testl	$-2147483648, 40(%rax)  # imm = 0xFFFFFFFF80000000
	je	.LBB10_8
# BB#3:
	movq	-24(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB10_7
# BB#4:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB10_5
	.align	16, 0x90
.LBB10_6:                               #   in Loop: Header=BB10_5 Depth=1
	movq	-24(%rbp), %rax
.LBB10_5:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB10_6
.LBB10_7:
	movl	FullFileName.ffbp(%rip), %eax
	leal	1(%rax), %ecx
	shrl	$31, %ecx
	leal	1(%rax,%rcx), %ecx
	andl	$-2, %ecx
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, FullFileName.ffbp(%rip)
	movslq	FullFileName.ffbp(%rip), %rax
	shlq	$9, %rax
	leaq	FullFileName.ffbuff(%rax), %rdi
	movq	-24(%rbp), %rsi
	addq	$64, %rsi
	callq	strcpy
	movslq	FullFileName.ffbp(%rip), %rax
	shlq	$9, %rax
	leaq	FullFileName.ffbuff(%rax), %rdi
	movl	$.L.str.12, %esi
	callq	strcat
	movslq	FullFileName.ffbp(%rip), %rax
	shlq	$9, %rax
	leaq	FullFileName.ffbuff(%rax), %rax
	jmp	.LBB10_13
.LBB10_8:
	movq	-24(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB10_12
# BB#9:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB10_10
	.align	16, 0x90
.LBB10_11:                              #   in Loop: Header=BB10_10 Depth=1
	movq	-24(%rbp), %rax
.LBB10_10:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB10_11
.LBB10_12:
	movq	-24(%rbp), %rax
	addq	$64, %rax
.LBB10_13:
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	FullFileName, .Lfunc_end10-FullFileName
	.cfi_endproc

	.globl	EchoFilePos
	.align	16, 0x90
	.type	EchoFilePos,@function
EchoFilePos:                            # @EchoFilePos
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	bp(%rip), %eax
	leal	1(%rax), %ecx
	shrl	$31, %ecx
	leal	1(%rax,%rcx), %ecx
	andl	$-2, %ecx
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, bp(%rip)
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.1, %esi
	callq	strcpy
	movq	-8(%rbp), %rax
	movzwl	2(%rax), %eax
	testl	%eax, %eax
	jle	.LBB11_2
# BB#1:
	movq	-8(%rbp), %rdi
	callq	append_fpos
.LBB11_2:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	EchoFilePos, .Lfunc_end11-EchoFilePos
	.cfi_endproc

	.align	16, 0x90
	.type	append_fpos,@function
append_fpos:                            # @append_fpos
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp43:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movzwl	2(%rdi), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -24(%rbp)
	testq	%rax, %rax
	jne	.LBB12_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.33, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB12_2:
	movq	-24(%rbp), %rax
	movzwl	34(%rax), %eax
	testl	%eax, %eax
	jle	.LBB12_6
# BB#3:
	movq	-24(%rbp), %rdi
	addq	$32, %rdi
	callq	append_fpos
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	callq	strlen
	addq	$2, %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB12_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %r9
	movl	$3, %edi
	movl	$9, %esi
	movl	$.L.str.34, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB12_5:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.14, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.35, %esi
	callq	strcat
.LBB12_6:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	leaq	13(%rbx,%rax), %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB12_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %r9
	movl	$3, %edi
	movl	$10, %esi
	movl	$.L.str.34, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB12_8:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.14, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.18, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movq	-24(%rbp), %rsi
	addq	$64, %rsi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.18, %esi
	callq	strcat
	movq	-16(%rbp), %rax
	testl	$1048575, 4(%rax)       # imm = 0xFFFFF
	je	.LBB12_10
# BB#9:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.14, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	movq	-16(%rbp), %rax
	movl	$1048575, %edi          # imm = 0xFFFFF
	andl	4(%rax), %edi
	callq	StringInt
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.24, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	shrl	$20, %edi
	callq	StringInt
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
.LBB12_10:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	append_fpos, .Lfunc_end12-append_fpos
	.cfi_endproc

	.globl	EchoAltFilePos
	.align	16, 0x90
	.type	EchoAltFilePos,@function
EchoAltFilePos:                         # @EchoAltFilePos
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp47:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	bp(%rip), %eax
	leal	1(%rax), %ecx
	shrl	$31, %ecx
	leal	1(%rax,%rcx), %ecx
	andl	$-2, %ecx
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, bp(%rip)
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.1, %esi
	callq	strcpy
	movq	-16(%rbp), %rax
	movzwl	2(%rax), %eax
	testl	%eax, %eax
	jle	.LBB13_3
# BB#1:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	movq	-16(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	FullFileName
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
	movq	-16(%rbp), %rax
	testl	$1048575, 4(%rax)       # imm = 0xFFFFF
	je	.LBB13_3
# BB#2:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.13, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	movq	-16(%rbp), %rax
	movl	$1048575, %edi          # imm = 0xFFFFF
	andl	4(%rax), %edi
	callq	StringInt
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.13, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	shrl	$20, %edi
	callq	StringInt
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
.LBB13_3:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	EchoAltFilePos, .Lfunc_end13-EchoAltFilePos
	.cfi_endproc

	.globl	EchoFileSource
	.align	16, 0x90
	.type	EchoFileSource,@function
EchoFileSource:                         # @EchoFileSource
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
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Ltmp51:
	.cfi_offset %rbx, -32
.Ltmp52:
	.cfi_offset %r14, -24
	movw	%di, -18(%rbp)
	movl	bp(%rip), %eax
	leal	1(%rax), %ecx
	shrl	$31, %ecx
	leal	1(%rax,%rcx), %ecx
	andl	$-2, %ecx
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, bp(%rip)
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.1, %esi
	callq	strcpy
	movzwl	-18(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB14_18
# BB#1:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.14, %esi
	callq	strcat
	movzwl	-18(%rbp), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	jne	.LBB14_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB14_3:
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	cmpl	$10, %eax
	jne	.LBB14_7
# BB#4:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	movl	$.L.str.16, %esi
	cmpq	$0, MsgCat(%rip)
	je	.LBB14_6
# BB#5:
	movq	MsgCat(%rip), %rdi
	movl	$3, %esi
	movl	$11, %edx
	movl	$.L.str.16, %ecx
	callq	catgets
	movq	%rax, %rsi
.LBB14_6:
	movq	%rbx, %rdi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.14, %esi
	callq	strcat
.LBB14_7:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	movl	$.L.str.17, %esi
	cmpq	$0, MsgCat(%rip)
	je	.LBB14_9
# BB#8:
	movq	MsgCat(%rip), %rdi
	movl	$3, %esi
	movl	$12, %edx
	movl	$.L.str.17, %ecx
	callq	catgets
	movq	%rax, %rsi
.LBB14_9:
	movq	%rbx, %rdi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.14, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.18, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	movzwl	-18(%rbp), %edi
	callq	FullFileName
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.18, %esi
	callq	strcat
	movq	-32(%rbp), %rax
	movzwl	34(%rax), %eax
	testl	%eax, %eax
	jle	.LBB14_18
# BB#10:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.19, %esi
	callq	strcat
	movl	$1048575, %r14d         # imm = 0xFFFFF
	jmp	.LBB14_11
	.align	16, 0x90
.LBB14_16:                              #   in Loop: Header=BB14_11 Depth=1
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.22, %esi
	callq	strcat
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB14_11:                              # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movzwl	34(%rax), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -40(%rbp)
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	cmpq	$0, MsgCat(%rip)
	movl	$.L.str.20, %esi
	je	.LBB14_13
# BB#12:                                #   in Loop: Header=BB14_11 Depth=1
	movq	MsgCat(%rip), %rdi
	movl	$3, %esi
	movl	$13, %edx
	movl	$.L.str.20, %ecx
	callq	catgets
	movq	%rax, %rsi
.LBB14_13:                              #   in Loop: Header=BB14_11 Depth=1
	movq	%rbx, %rdi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.14, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.18, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movq	-40(%rbp), %rsi
	addq	$64, %rsi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.18, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.14, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	cmpq	$0, MsgCat(%rip)
	movl	$.L.str.21, %esi
	je	.LBB14_15
# BB#14:                                #   in Loop: Header=BB14_11 Depth=1
	movq	MsgCat(%rip), %rdi
	movl	$3, %esi
	movl	$14, %edx
	movl	$.L.str.21, %ecx
	callq	catgets
	movq	%rax, %rsi
.LBB14_15:                              #   in Loop: Header=BB14_11 Depth=1
	movq	%rbx, %rdi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.14, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	movq	-32(%rbp), %rax
	movl	36(%rax), %edi
	andl	%r14d, %edi
	callq	StringInt
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
	movq	-40(%rbp), %rax
	cmpw	$0, 34(%rax)
	jne	.LBB14_16
# BB#17:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.23, %esi
	callq	strcat
.LBB14_18:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	EchoFileSource, .Lfunc_end14-EchoFileSource
	.cfi_endproc

	.globl	EchoFileLine
	.align	16, 0x90
	.type	EchoFileLine,@function
EchoFileLine:                           # @EchoFileLine
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp56:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	bp(%rip), %eax
	leal	1(%rax), %ecx
	shrl	$31, %ecx
	leal	1(%rax,%rcx), %ecx
	andl	$-2, %ecx
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, bp(%rip)
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.1, %esi
	callq	strcpy
	movq	-16(%rbp), %rax
	movzwl	2(%rax), %eax
	testl	%eax, %eax
	jle	.LBB15_3
# BB#1:
	movq	-16(%rbp), %rax
	testl	$1048575, 4(%rax)       # imm = 0xFFFFF
	je	.LBB15_3
# BB#2:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	movq	-16(%rbp), %rax
	movl	$1048575, %edi          # imm = 0xFFFFF
	andl	4(%rax), %edi
	callq	StringInt
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rdi
	movl	$.L.str.24, %esi
	callq	strcat
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rbx
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	shrl	$20, %edi
	callq	StringInt
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
.LBB15_3:
	movslq	bp(%rip), %rax
	shlq	$9, %rax
	leaq	buff(%rax), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	EchoFileLine, .Lfunc_end15-EchoFileLine
	.cfi_endproc

	.globl	PosOfFile
	.align	16, 0x90
	.type	PosOfFile,@function
PosOfFile:                              # @PosOfFile
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -2(%rbp)
	movzwl	-2(%rbp), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB16_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB16_2:
	movq	-16(%rbp), %rax
	addq	$32, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	PosOfFile, .Lfunc_end16-PosOfFile
	.cfi_endproc

	.globl	OpenFile
	.align	16, 0x90
	.type	OpenFile,@function
OpenFile:                               # @OpenFile
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movw	%di, -2(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movzwl	-2(%rbp), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	%rax, 8(%rax)
	je	.LBB17_5
# BB#1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB17_2
	.align	16, 0x90
.LBB17_3:                               #   in Loop: Header=BB17_2 Depth=1
	movq	-48(%rbp), %rax
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB17_3
# BB#4:
	movq	-48(%rbp), %rdi
	addq	$64, %rdi
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movq	file_mode(,%rax,8), %rsi
	callq	fopen
	movq	%rax, -24(%rbp)
	jmp	.LBB17_18
.LBB17_5:
	movq	-32(%rbp), %r8
	movslq	48(%r8), %rcx
	movq	file_path(,%rcx,8), %rsi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	40(%r8), %eax
	leaq	64(%r8), %rdi
	leaq	32(%r8), %r9
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movq	file_mode(,%rax,8), %r8
	leaq	-52(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r8, (%rsp)
	leaq	-40(%rbp), %r8
	callq	SearchPath
	movq	%rax, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB17_17
# BB#6:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB17_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB17_11
.LBB17_8:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB17_9
# BB#10:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB17_11
.LBB17_9:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB17_11:
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
	je	.LBB17_14
# BB#12:
	cmpq	$0, zz_res(%rip)
	je	.LBB17_14
# BB#13:
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
.LBB17_14:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB17_17
# BB#15:
	cmpq	$0, zz_res(%rip)
	je	.LBB17_17
# BB#16:
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
.LBB17_17:
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	shll	$31, %eax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
.LBB17_18:
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	OpenFile, .Lfunc_end17-OpenFile
	.cfi_endproc

	.align	16, 0x90
	.type	SearchPath,@function
SearchPath:                             # @SearchPath
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1448, %rsp             # imm = 0x5A8
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %rbx
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%rbx, -96(%rbp)
	movq	%rax, -104(%rbp)
	movl	$0, (%rax)
	movq	-56(%rbp), %rdi
	movl	$.L.str.36, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB18_1
# BB#2:
	movq	-56(%rbp), %rdi
	movl	$.L.str.35, %esi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB18_4
# BB#3:
	movq	empty_path(%rip), %rax
	jmp	.LBB18_5
.LBB18_1:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movq	stdin(%rip), %rax
	jmp	.LBB18_39
.LBB18_4:
	movq	-64(%rbp), %rax
.LBB18_5:
	movq	%rax, -1160(%rbp)
	movq	$0, -1168(%rbp)
	movq	-1160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1144(%rbp)
	leaq	-624(%rbp), %r13
	leaq	-1136(%rbp), %r14
	leaq	-1320(%rbp), %r15
	leaq	-1464(%rbp), %r12
	jmp	.LBB18_6
	.align	16, 0x90
.LBB18_34:                              #   in Loop: Header=BB18_6 Depth=1
	movq	-1144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1144(%rbp)
.LBB18_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_11 Depth 2
	cmpq	$0, -1168(%rbp)
	je	.LBB18_8
# BB#7:                                 #   in Loop: Header=BB18_6 Depth=1
	xorl	%eax, %eax
	jmp	.LBB18_9
	.align	16, 0x90
.LBB18_8:                               #   in Loop: Header=BB18_6 Depth=1
	movq	-1144(%rbp), %rax
	cmpq	-1160(%rbp), %rax
	setne	%al
.LBB18_9:                               #   in Loop: Header=BB18_6 Depth=1
	testb	%al, %al
	je	.LBB18_35
# BB#10:                                #   in Loop: Header=BB18_6 Depth=1
	movq	-1144(%rbp), %rax
	jmp	.LBB18_11
	.align	16, 0x90
.LBB18_12:                              #   in Loop: Header=BB18_11 Depth=2
	movq	-1152(%rbp), %rax
.LBB18_11:                              #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -1152(%rbp)
	movq	-1152(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB18_12
# BB#13:                                #   in Loop: Header=BB18_6 Depth=1
	movq	-1152(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB18_14
# BB#15:                                #   in Loop: Header=BB18_6 Depth=1
	movq	-1152(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	-56(%rbp), %rdi
	callq	strlen
	leaq	1(%rbx,%rax), %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB18_17
# BB#16:                                #   in Loop: Header=BB18_6 Depth=1
	movq	-1152(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$.L.str.35, (%rsp)
	movl	$3, %edi
	movl	$15, %esi
	movl	$.L.str.37, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB18_17:                              #   in Loop: Header=BB18_6 Depth=1
	movq	-1152(%rbp), %rsi
	addq	$64, %rsi
	movq	%r13, %rdi
	callq	strcpy
	movl	$.L.str.35, %esi
	movq	%r13, %rdi
	callq	strcat
	movq	-56(%rbp), %rsi
	movq	%r13, %rdi
	callq	strcat
	jmp	.LBB18_18
	.align	16, 0x90
.LBB18_14:                              #   in Loop: Header=BB18_6 Depth=1
	movq	-56(%rbp), %rsi
	movq	%r13, %rdi
	callq	strcpy
.LBB18_18:                              #   in Loop: Header=BB18_6 Depth=1
	movq	-96(%rbp), %rsi
	movq	%r13, %rdi
	callq	fopen
	movq	%rax, -1168(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB18_23
# BB#19:                                #   in Loop: Header=BB18_6 Depth=1
	cmpq	$0, -1168(%rbp)
	jne	.LBB18_23
# BB#20:                                #   in Loop: Header=BB18_6 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	strcpy
	movq	%r14, %rdi
	callq	strlen
	leaq	-3(%rax,%r14), %rdi
	movl	$.L.str.4, %esi
	callq	strcpy
	movl	$.L.str.27, %esi
	movq	%r14, %rdi
	callq	fopen
	movq	%rax, -1176(%rbp)
	testq	%rax, %rax
	jne	.LBB18_21
.LBB18_23:                              #   in Loop: Header=BB18_6 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB18_29
# BB#24:                                #   in Loop: Header=BB18_6 Depth=1
	cmpq	$0, -1168(%rbp)
	je	.LBB18_29
# BB#25:                                #   in Loop: Header=BB18_6 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	strcpy
	movq	%r14, %rdi
	callq	strlen
	leaq	-3(%rax,%r14), %rdi
	movl	$.L.str.4, %esi
	callq	strcpy
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	stat
	testl	%eax, %eax
	jne	.LBB18_29
# BB#26:                                #   in Loop: Header=BB18_6 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	stat
	testl	%eax, %eax
	jne	.LBB18_29
# BB#27:                                #   in Loop: Header=BB18_6 Depth=1
	movq	-1376(%rbp), %rax
	cmpq	-1232(%rbp), %rax
	jg	.LBB18_28
	.align	16, 0x90
.LBB18_29:                              #   in Loop: Header=BB18_6 Depth=1
	cmpl	$0, -72(%rbp)
	je	.LBB18_34
# BB#30:                                #   in Loop: Header=BB18_6 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	strcpy
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	strcat
	movl	$.L.str.27, %esi
	movq	%r14, %rdi
	callq	fopen
	movq	%rax, -1176(%rbp)
	testq	%rax, %rax
	je	.LBB18_34
# BB#31:                                #   in Loop: Header=BB18_6 Depth=1
	cmpq	$0, -1168(%rbp)
	je	.LBB18_33
# BB#32:                                #   in Loop: Header=BB18_6 Depth=1
	movq	-88(%rbp), %r8
	movq	%r14, (%rsp)
	movl	$3, %edi
	movl	$16, %esi
	movl	$.L.str.38, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r13, %r9
	callq	Error
.LBB18_33:                              #   in Loop: Header=BB18_6 Depth=1
	movq	-1176(%rbp), %rax
	movq	%rax, -1168(%rbp)
	movq	-104(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB18_34
.LBB18_35:
	xorl	%eax, %eax
	cmpq	$0, -1168(%rbp)
	je	.LBB18_38
# BB#36:
	movq	-1152(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB18_38
# BB#37:
	movq	-88(%rbp), %rdx
	leaq	-624(%rbp), %rsi
	movl	$11, %edi
	callq	MakeWord
.LBB18_38:
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-1168(%rbp), %rax
.LBB18_39:
	movq	%rax, -48(%rbp)
.LBB18_40:
	movq	-48(%rbp), %rax
	addq	$1448, %rsp             # imm = 0x5A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_21:
	movq	-1176(%rbp), %rdi
	callq	fclose
	jmp	.LBB18_22
.LBB18_28:
	movq	-1168(%rbp), %rdi
	callq	fclose
	leaq	-624(%rbp), %rdi
	callq	remove
.LBB18_22:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, -48(%rbp)
	jmp	.LBB18_40
.Lfunc_end18:
	.size	SearchPath, .Lfunc_end18-SearchPath
	.cfi_endproc

	.globl	OpenIncGraphicFile
	.align	16, 0x90
	.type	OpenIncGraphicFile,@function
OpenIncGraphicFile:                     # @OpenIncGraphicFile
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$592, %rsp              # imm = 0x250
	movq	%rdi, -8(%rbp)
	movb	%sil, -9(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movzbl	-9(%rbp), %eax
	cmpl	$94, %eax
	je	.LBB19_3
# BB#1:
	movzbl	-9(%rbp), %eax
	cmpl	$95, %eax
	je	.LBB19_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB19_3:
	movzbl	-9(%rbp), %eax
	cmpl	$94, %eax
	setne	%al
	movzbl	%al, %eax
	incl	%eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-52(%rbp), %rax
	movq	file_path(,%rax,8), %rsi
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	leaq	-60(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$.L.str.27, (%rsp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	SearchPath
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB19_5
# BB#4:
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	$11, %edi
	callq	MakeWord
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB19_5:
	cmpq	$0, -48(%rbp)
	je	.LBB19_6
# BB#7:
	movl	$0, -56(%rbp)
	jmp	.LBB19_8
	.align	16, 0x90
.LBB19_10:                              #   in Loop: Header=BB19_8 Depth=1
	incl	-56(%rbp)
.LBB19_8:                               # =>This Inner Loop Header: Depth=1
	cmpl	$5, -56(%rbp)
	jg	.LBB19_11
# BB#9:                                 #   in Loop: Header=BB19_8 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	addq	$64, %rdi
	movslq	-56(%rbp), %rax
	movq	compress_suffixes(,%rax,8), %rsi
	callq	StringEndsWith
	testl	%eax, %eax
	je	.LBB19_10
.LBB19_11:
	cmpl	$5, -56(%rbp)
	jg	.LBB19_15
# BB#12:
	movq	-48(%rbp), %rdi
	callq	fclose
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	addq	$64, %rdx
	leaq	-576(%rbp), %rdi
	movl	$.L.str.28, %esi
	movl	$.L.str.29, %ecx
	xorl	%eax, %eax
	callq	sprintf
	cmpl	$0, SafeExecution(%rip)
	je	.LBB19_14
# BB#13:
	movq	-32(%rbp), %r8
	leaq	-576(%rbp), %r9
	movl	$3, %edi
	movl	$17, %esi
	movl	$.L.str.30, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB19_6:
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -48(%rbp)
	jmp	.LBB19_16
.LBB19_15:
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB19_16
.LBB19_14:
	leaq	-576(%rbp), %rdi
	callq	system
	movl	$.L.str.29, %edi
	movl	$.L.str.27, %esi
	callq	fopen
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
.LBB19_16:
	movq	-48(%rbp), %rax
	addq	$592, %rsp              # imm = 0x250
	popq	%rbp
	retq
.Lfunc_end19:
	.size	OpenIncGraphicFile, .Lfunc_end19-OpenIncGraphicFile
	.cfi_endproc

	.globl	FileSetUpdated
	.align	16, 0x90
	.type	FileSetUpdated,@function
FileSetUpdated:                         # @FileSetUpdated
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	movw	%di, -2(%rbp)
	movl	%esi, -8(%rbp)
	movzwl	-2(%rbp), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movl	$1, 56(%rax)
	movl	-8(%rbp), %eax
	movzwl	-2(%rbp), %ecx
	movq	file_tab(%rip), %rdx
	shlq	$4, %rcx
	movq	8(%rdx,%rcx), %rcx
	movl	%eax, 60(%rcx)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	FileSetUpdated, .Lfunc_end20-FileSetUpdated
	.cfi_endproc

	.globl	FileGetLineCount
	.align	16, 0x90
	.type	FileGetLineCount,@function
FileGetLineCount:                       # @FileGetLineCount
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	movw	%di, -2(%rbp)
	movzwl	-2(%rbp), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movl	60(%rax), %eax
	movl	%eax, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	FileGetLineCount, .Lfunc_end21-FileGetLineCount
	.cfi_endproc

	.globl	FileTestUpdated
	.align	16, 0x90
	.type	FileTestUpdated,@function
FileTestUpdated:                        # @FileTestUpdated
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	movw	%di, -2(%rbp)
	movzwl	-2(%rbp), %eax
	movq	file_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movl	56(%rax), %eax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	FileTestUpdated, .Lfunc_end22-FileTestUpdated
	.cfi_endproc

	.type	no_fpos,@object         # @no_fpos
	.data
	.globl	no_fpos
	.align	8
no_fpos:
	.quad	no_file_pos
	.size	no_fpos, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"word is too long"
	.size	.L.str, 17

	.type	file_type,@object       # @file_type
	.local	file_type
	.comm	file_type,88,16
	.type	file_path,@object       # @file_path
	.local	file_path
	.comm	file_path,64,16
	.type	file_tab,@object        # @file_tab
	.local	file_tab
	.comm	file_tab,8,8
	.type	empty_path,@object      # @empty_path
	.local	empty_path
	.comm	empty_path,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"assert failed in %s"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"DefineFile: ftype!"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	".ld"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"database file %s where source file expected"
	.size	.L.str.5, 44

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	".li"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"database index file %s where source file expected"
	.size	.L.str.7, 50

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"file name %s%s is too long"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"DatabaseFileNum: filter file position unknown"
	.size	.L.str.9, 46

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"DatabaseFileNum: unexpected file type"
	.size	.L.str.10, 38

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"FileName: x == nilobj!"
	.size	.L.str.11, 23

	.type	FullFileName.ffbuff,@object # @FullFileName.ffbuff
	.local	FullFileName.ffbuff
	.comm	FullFileName.ffbuff,1024,16
	.type	FullFileName.ffbp,@object # @FullFileName.ffbp
	.data
	.align	4
FullFileName.ffbp:
	.long	1                       # 0x1
	.size	FullFileName.ffbp, 4

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	".lt"
	.size	.L.str.12, 4

	.type	bp,@object              # @bp
	.data
	.align	4
bp:
	.long	1                       # 0x1
	.size	bp, 4

	.type	buff,@object            # @buff
	.local	buff
	.comm	buff,1024,16
	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	":"
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	" "
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"EchoFileSource: x == nilobj!"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"filter"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"file"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\""
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" ("
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"from"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"line"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	", "
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	")"
	.size	.L.str.23, 2

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	","
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"PosOfFile: file_tab entry is nilobj!"
	.size	.L.str.25, 37

	.type	file_mode,@object       # @file_mode
	.data
	.align	16
file_mode:
	.quad	.L.str.27
	.quad	.L.str.27
	.quad	.L.str.27
	.quad	.L.str.27
	.quad	.L.str.27
	.quad	.L.str.27
	.quad	.L.str.27
	.quad	.L.str.27
	.quad	.L.str.27
	.quad	.L.str.27
	.quad	.L.str.27
	.size	file_mode, 88

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"OpenIncGraphicFile!"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"r"
	.size	.L.str.27, 2

	.type	compress_suffixes,@object # @compress_suffixes
	.data
	.align	16
compress_suffixes:
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.size	compress_suffixes, 48

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"gunzip -c %s > %s"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"lout.eps"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"safe execution prohibiting command: %s"
	.size	.L.str.30, 39

	.type	no_file_pos,@object     # @no_file_pos
	.local	no_file_pos
	.comm	no_file_pos,8,4
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"run out of memory when enlarging file table"
	.size	.L.str.31, 44

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"too many files (maximum is %d)"
	.size	.L.str.32, 31

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"EchoFilePos: file_tab entry is nilobj!"
	.size	.L.str.33, 39

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"file position %s... is too long to print"
	.size	.L.str.34, 41

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"/"
	.size	.L.str.35, 2

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"-"
	.size	.L.str.36, 2

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"file path name %s%s%s is too long"
	.size	.L.str.37, 34

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"files %s and %s both exist"
	.size	.L.str.38, 27

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	".gz"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"-gz"
	.size	.L.str.40, 4

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	".z"
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"-z"
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_z"
	.size	.L.str.43, 3

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	".Z"
	.size	.L.str.44, 3


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
