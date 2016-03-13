	.text
	.file	"z45.opt"
	.globl	ReadLines
	.align	16, 0x90
	.type	ReadLines,@function
ReadLines:                              # @ReadLines
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
	subq	$120, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$4096, %edi             # imm = 0x1000
	callq	malloc
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	jne	.LBB0_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movq	-24(%rbp), %r9
	movl	$45, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_2:
	movl	$4096, %eax             # imm = 0x1000
	addq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$2000, -76(%rbp)        # imm = 0x7D0
	movslq	-76(%rbp), %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, -72(%rbp)
	movslq	-76(%rbp), %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_4
# BB#3:
	movq	-32(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	strcpy
	addq	$8, -96(%rbp)
.LBB0_4:
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, -96(%rbp)
	movq	%rax, (%rcx)
	movl	$4096, %ebx             # imm = 0x1000
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_5 Depth=1
	movb	-116(%rbp), %al
	movq	-64(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -64(%rbp)
	movb	%al, (%rcx)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -116(%rbp)
	cmpl	$-1, %eax
	je	.LBB0_24
# BB#6:                                 #   in Loop: Header=BB0_5 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB0_9
# BB#7:                                 #   in Loop: Header=BB0_5 Depth=1
	movl	-56(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB0_9
# BB#8:                                 #   in Loop: Header=BB0_5 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_17
# BB#10:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$4096, %edi             # imm = 0x1000
	callq	malloc
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	jne	.LBB0_12
# BB#11:                                #   in Loop: Header=BB0_5 Depth=1
	movq	no_fpos(%rip), %r8
	movq	-24(%rbp), %r9
	movl	$45, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rax
	addq	%rbx, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_13 Depth=2
	movq	-112(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %al
	movq	-104(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -104(%rbp)
	movb	%al, (%rcx)
.LBB0_13:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_14
# BB#15:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, -8(%rcx)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_17
# BB#16:                                #   in Loop: Header=BB0_5 Depth=1
	movq	no_fpos(%rip), %r8
	movq	-24(%rbp), %r9
	movl	$45, %edi
	movl	$3, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$10, -116(%rbp)
	jne	.LBB0_23
# BB#18:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movb	$0, (%rax)
	movq	-96(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_22
# BB#19:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rdi
	movslq	-76(%rbp), %rsi
	shlq	$4, %rsi
	callq	realloc
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	jne	.LBB0_21
# BB#20:                                #   in Loop: Header=BB0_5 Depth=1
	movq	no_fpos(%rip), %r8
	movq	-24(%rbp), %r9
	movl	$45, %edi
	movl	$4, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_21:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	-76(%rbp), %rax
	shlq	$3, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	shll	-76(%rbp)
	movslq	-76(%rbp), %rax
	shlq	$3, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, -96(%rbp)
	movq	%rax, (%rcx)
	jmp	.LBB0_5
.LBB0_24:
	movq	-96(%rbp), %rax
	subq	-72(%rbp), %rax
	shrq	$3, %rax
	decl	%eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-72(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ReadLines, .Lfunc_end0-ReadLines
	.cfi_endproc

	.globl	WriteLines
	.align	16, 0x90
	.type	WriteLines,@function
WriteLines:                             # @WriteLines
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movq	-8(%rbp), %rsi
	movl	$.L.str.4, %edi
	callq	fputs
	incl	-24(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB1_2
# BB#3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	WriteLines, .Lfunc_end1-WriteLines
	.cfi_endproc

	.globl	SortLines
	.align	16, 0x90
	.type	SortLines,@function
SortLines:                              # @SortLines
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rsi
	movl	$pstrcollcmp, %ecx
	cmpl	$0, UseCollate(%rip)
	jne	.LBB2_2
# BB#1:                                 # %select.mid
	movl	$pstrcmp, %ecx
.LBB2_2:                                # %select.end
	movl	$8, %edx
	callq	qsort
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	SortLines, .Lfunc_end2-SortLines
	.cfi_endproc

	.align	16, 0x90
	.type	pstrcollcmp,@function
pstrcollcmp:                            # @pstrcollcmp
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	(%rsi), %rsi
	callq	strcollcmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pstrcollcmp, .Lfunc_end3-pstrcollcmp
	.cfi_endproc

	.align	16, 0x90
	.type	pstrcmp,@function
pstrcmp:                                # @pstrcmp
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	(%rsi), %rsi
	callq	strcmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pstrcmp, .Lfunc_end4-pstrcmp
	.cfi_endproc

	.globl	SortFile
	.align	16, 0x90
	.type	SortFile,@function
SortFile:                               # @SortFile
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.5, %esi
	callq	fopen
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	jne	.LBB5_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$45, %edi
	movl	$5, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB5_2:
	movq	-16(%rbp), %rdi
	movl	$.L.str.7, %esi
	callq	fopen
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	jne	.LBB5_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$45, %edi
	movl	$6, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB5_4:
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-28(%rbp), %rcx
	xorl	%edx, %edx
	callq	ReadLines
	movq	%rax, -24(%rbp)
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	SortLines
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	WriteLines
	movq	-48(%rbp), %rdi
	callq	fclose
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	SortFile, .Lfunc_end5-SortFile
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run out of memory when reading index file %s"
	.size	.L.str, 45

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"assert failed in %s"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ReadLines: lines and buff overlap!"
	.size	.L.str.2, 35

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"line too long when reading index file %s"
	.size	.L.str.3, 41

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"r"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cannot open index file %s for reading"
	.size	.L.str.6, 38

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"w"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"cannot open index file %s for writing"
	.size	.L.str.8, 38


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
