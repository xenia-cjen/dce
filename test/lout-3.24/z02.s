	.text
	.file	"z02.opt"
	.globl	LexLegalName
	.align	16, 0x90
	.type	LexLegalName,@function
LexLegalName:                           # @LexLegalName
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
	movq	%rdi, -8(%rbp)
	movzbl	(%rdi), %eax
	movzbl	chtbl(%rax), %eax
	testl	%eax, %eax
	je	.LBB0_6
# BB#1:
	cmpl	$3, %eax
	je	.LBB0_3
# BB#2:
	cmpl	$1, %eax
	jne	.LBB0_10
.LBB0_3:
	movl	$1, -12(%rbp)
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	incl	-12(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_5
	jmp	.LBB0_9
.LBB0_6:
	movl	$1, -12(%rbp)
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_7 Depth=1
	incl	-12(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpb	$0, chtbl(%rax)
	je	.LBB0_8
.LBB0_9:
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_11
.LBB0_10:
	movl	$0, -16(%rbp)
.LBB0_11:
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	LexLegalName, .Lfunc_end0-LexLegalName
	.cfi_endproc

	.globl	LexInit
	.align	16, 0x90
	.type	LexInit,@function
LexInit:                                # @LexInit
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
	movl	$1, %edi
	movl	$.L.str, %esi
	callq	initchtbl
	movl	$1, %edi
	movl	$.L.str.1, %esi
	callq	initchtbl
	movl	$1, %edi
	movl	$.L.str.2, %esi
	callq	initchtbl
	movl	$1, %edi
	movl	$.L.str.3, %esi
	callq	initchtbl
	movl	$1, %edi
	movl	$.L.str.4, %esi
	callq	initchtbl
	movl	$1, %edi
	movl	$.L.str.5, %esi
	callq	initchtbl
	movl	$1, %edi
	movl	$.L.str.6, %esi
	callq	initchtbl
	movl	$1, %edi
	movl	$.L.str.7, %esi
	callq	initchtbl
	movl	$1, %edi
	movl	$.L.str.8, %esi
	callq	initchtbl
	movl	$1, %edi
	movl	$.L.str.9, %esi
	callq	initchtbl
	movl	$1, %edi
	movl	$.L.str.10, %esi
	callq	initchtbl
	movl	$1, %edi
	movl	$.L.str.11, %esi
	callq	initchtbl
	movl	$2, %edi
	movl	$.L.str.12, %esi
	callq	initchtbl
	movl	$3, %edi
	movl	$.L.str.13, %esi
	callq	initchtbl
	movl	$4, %edi
	movl	$.L.str.14, %esi
	callq	initchtbl
	movl	$5, %edi
	movl	$.L.str.15, %esi
	callq	initchtbl
	movl	$6, %edi
	movl	$.L.str.16, %esi
	callq	initchtbl
	movl	$7, %edi
	movl	$.L.str.17, %esi
	callq	initchtbl
	movl	$8, %edi
	movl	$.L.str.18, %esi
	callq	initchtbl
	movb	$9, chtbl(%rip)
	movl	$-1, stack_free(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	LexInit, .Lfunc_end1-LexInit
	.cfi_endproc

	.align	16, 0x90
	.type	initchtbl,@function
initchtbl:                              # @initchtbl
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	movb	-4(%rbp), %al
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %ecx
	movb	%al, chtbl(%rcx)
	incl	-20(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB2_2
# BB#3:
	popq	%rbp
	retq
.Lfunc_end2:
	.size	initchtbl, .Lfunc_end2-initchtbl
	.cfi_endproc

	.globl	LexPush
	.align	16, 0x90
	.type	LexPush,@function
LexPush:                                # @LexPush
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
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movw	%di, -18(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	cmpl	$9, stack_free(%rip)
	jl	.LBB3_8
# BB#1:
	cmpl	$1, -28(%rbp)
	jne	.LBB3_3
# BB#2:
	movzwl	-18(%rbp), %edi
	callq	PosOfFile
	movq	%rax, %r14
	movzwl	-18(%rbp), %edi
	callq	FullFileName
	movq	%rax, %rbx
	movl	$2, %edi
	movl	$1, %esi
	movl	$.L.str.19, %edx
	jmp	.LBB3_4
.LBB3_3:
	movzwl	-18(%rbp), %edi
	callq	PosOfFile
	movq	%rax, %r14
	movzwl	-18(%rbp), %edi
	callq	FileName
	movq	%rax, %rbx
	movl	$2, %edi
	movl	$2, %esi
	movl	$.L.str.20, %edx
.LBB3_4:
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
	movl	stack_free(%rip), %eax
	decl	%eax
	movl	%eax, -40(%rbp)
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_6:                                #   in Loop: Header=BB3_5 Depth=1
	movq	no_fpos(%rip), %r14
	movslq	-40(%rbp), %rax
	imulq	$120, %rax, %rax
	movzwl	lex_stack+48(%rax), %edi
	callq	EchoFileSource
	movq	%rax, %rbx
	movl	$2, %edi
	movl	$23, %esi
	movl	$.L.str.21, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
	decl	-40(%rbp)
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%rbp)
	jns	.LBB3_6
# BB#7:
	movq	no_fpos(%rip), %r8
	movl	$2, %edi
	movl	$24, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_8:
	cmpl	$0, stack_free(%rip)
	js	.LBB3_10
# BB#9:
	movq	chpt(%rip), %rax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movq	%rax, lex_stack(%rcx)
	movq	frst(%rip), %rax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movq	%rax, lex_stack+8(%rcx)
	movq	limit(%rip), %rax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movq	%rax, lex_stack+16(%rcx)
	movq	buf(%rip), %rax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movq	%rax, lex_stack+24(%rcx)
	movl	blksize(%rip), %eax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movl	%eax, lex_stack+32(%rcx)
	movb	last_char(%rip), %al
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movb	%al, lex_stack+36(%rcx)
	movq	startline(%rip), %rax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movq	%rax, lex_stack+40(%rcx)
	movw	this_file(%rip), %ax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movw	%ax, lex_stack+48(%rcx)
	movq	fp(%rip), %rax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movq	%rax, lex_stack+56(%rcx)
	movw	ftype(%rip), %ax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movw	%ax, lex_stack+72(%rcx)
	movq	next_token(%rip), %rax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movq	%rax, lex_stack+80(%rcx)
	movl	offset(%rip), %eax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movl	%eax, lex_stack+88(%rcx)
	movl	first_line_num(%rip), %eax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movl	%eax, lex_stack+92(%rcx)
	movl	same_file(%rip), %eax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movl	%eax, lex_stack+96(%rcx)
	movq	mem_block(%rip), %rax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movq	%rax, lex_stack+112(%rcx)
	movw	file_pos+2(%rip), %ax
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movw	%ax, lex_stack+66(%rcx)
	movl	$1048575, %eax          # imm = 0xFFFFF
	movl	file_pos+4(%rip), %ecx
	andl	%eax, %ecx
	movslq	stack_free(%rip), %rdx
	imulq	$120, %rdx, %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	lex_stack+68(%rdx), %edi
	andl	%esi, %edi
	orl	%ecx, %edi
	movl	%edi, lex_stack+68(%rdx)
	andl	file_pos+4(%rip), %esi
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	andl	lex_stack+68(%rcx), %eax
	orl	%esi, %eax
	movl	%eax, lex_stack+68(%rcx)
.LBB3_10:
	incl	stack_free(%rip)
	movl	$10242, %edi            # imm = 0x2802
	callq	malloc
	movq	%rax, mem_block(%rip)
	testq	%rax, %rax
	jne	.LBB3_12
# BB#11:
	movzwl	-18(%rbp), %edi
	callq	PosOfFile
	movq	%rax, %r14
	movzwl	-18(%rbp), %edi
	callq	FullFileName
	movq	%rax, %rbx
	movl	$2, %edi
	movl	$3, %esi
	movl	$.L.str.23, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
.LBB3_12:
	movl	$2048, %eax             # imm = 0x800
	addq	mem_block(%rip), %rax
	movq	%rax, chpt(%rip)
	movq	%rax, buf(%rip)
	movb	$10, last_char(%rip)
	movw	-18(%rbp), %ax
	movw	%ax, this_file(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, offset(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, first_line_num(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, same_file(%rip)
	movw	-28(%rbp), %ax
	movw	%ax, ftype(%rip)
	movq	$0, next_token(%rip)
	movq	chpt(%rip), %rax
	movb	$0, (%rax)
	cmpl	$0, same_file(%rip)
	je	.LBB3_14
# BB#13:
	movq	fp(%rip), %rdi
	callq	ftell
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	movq	%rax, lex_stack-16(%rcx)
	jmp	.LBB3_15
.LBB3_14:
	movq	$0, fp(%rip)
.LBB3_15:
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	LexPush, .Lfunc_end3-LexPush
	.cfi_endproc

	.globl	LexPop
	.align	16, 0x90
	.type	LexPop,@function
LexPop:                                 # @LexPop
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
	cmpl	$0, stack_free(%rip)
	jg	.LBB4_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.24, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_2:
	decl	stack_free(%rip)
	cmpl	$0, same_file(%rip)
	je	.LBB4_4
# BB#3:
	movq	fp(%rip), %rdi
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movq	lex_stack+104(%rax), %rsi
	xorl	%edx, %edx
	callq	fseek
	jmp	.LBB4_6
.LBB4_4:
	cmpq	$0, fp(%rip)
	je	.LBB4_6
# BB#5:
	movq	fp(%rip), %rdi
	callq	fclose
.LBB4_6:
	movq	mem_block(%rip), %rdi
	callq	free
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movq	lex_stack+112(%rax), %rax
	movq	%rax, mem_block(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movq	lex_stack(%rax), %rax
	movq	%rax, chpt(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movq	lex_stack+8(%rax), %rax
	movq	%rax, frst(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movq	lex_stack+16(%rax), %rax
	movq	%rax, limit(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movq	lex_stack+24(%rax), %rax
	movq	%rax, buf(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movl	lex_stack+32(%rax), %eax
	movl	%eax, blksize(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movb	lex_stack+36(%rax), %al
	movb	%al, last_char(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movq	lex_stack+40(%rax), %rax
	movq	%rax, startline(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movw	lex_stack+48(%rax), %ax
	movw	%ax, this_file(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movq	lex_stack+56(%rax), %rax
	movq	%rax, fp(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movw	lex_stack+72(%rax), %ax
	movw	%ax, ftype(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movq	lex_stack+80(%rax), %rax
	movq	%rax, next_token(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movl	lex_stack+88(%rax), %eax
	movl	%eax, offset(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movl	lex_stack+92(%rax), %eax
	movl	%eax, first_line_num(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movl	lex_stack+96(%rax), %eax
	movl	%eax, same_file(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movw	lex_stack+66(%rax), %ax
	movw	%ax, file_pos+2(%rip)
	movslq	stack_free(%rip), %rax
	imulq	$120, %rax, %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	andl	lex_stack+68(%rax), %ecx
	movl	$-1048576, %eax         # imm = 0xFFFFFFFFFFF00000
	movl	file_pos+4(%rip), %edx
	andl	%eax, %edx
	orl	%ecx, %edx
	movl	%edx, file_pos+4(%rip)
	movslq	stack_free(%rip), %rcx
	imulq	$120, %rcx, %rcx
	andl	lex_stack+68(%rcx), %eax
	andl	$1048575, %edx          # imm = 0xFFFFF
	orl	%eax, %edx
	movl	%edx, file_pos+4(%rip)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	LexPop, .Lfunc_end4-LexPop
	.cfi_endproc

	.globl	LexNextTokenPos
	.align	16, 0x90
	.type	LexNextTokenPos,@function
LexNextTokenPos:                        # @LexNextTokenPos
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
	subq	$16, %rsp
	cmpq	$0, next_token(%rip)
	je	.LBB5_2
# BB#1:
	movq	next_token(%rip), %r8
	addq	$32, %r8
	movl	$2, %edi
	movl	$4, %esi
	movl	$.L.str.26, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB5_2:
	movq	fp(%rip), %rdi
	callq	ftell
	movq	limit(%rip), %rcx
	subq	chpt(%rip), %rcx
	subq	%rcx, %rax
	movq	buf(%rip), %rcx
	subq	frst(%rip), %rcx
	subq	%rcx, %rax
	movq	%rax, -8(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	LexNextTokenPos, .Lfunc_end5-LexNextTokenPos
	.cfi_endproc

	.globl	LexGetToken
	.align	16, 0x90
	.type	LexGetToken,@function
LexGetToken:                            # @LexGetToken
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp23:
	.cfi_offset %rbx, -56
.Ltmp24:
	.cfi_offset %r12, -48
.Ltmp25:
	.cfi_offset %r13, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
	cmpq	$0, next_token(%rip)
	je	.LBB6_4
# BB#1:
	movq	next_token(%rip), %rcx
	movq	%rcx, -88(%rbp)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB6_3
# BB#2:
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
.LBB6_3:
	movq	%rax, next_token(%rip)
	jmp	.LBB6_180
.LBB6_4:
	movq	$0, -88(%rbp)
	movq	chpt(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$1048575, %r15d         # imm = 0xFFFFF
	movl	$-1048576, %r12d        # imm = 0xFFFFFFFFFFF00000
	leaq	-104(%rbp), %r14
	jmp	.LBB6_5
	.align	16, 0x90
.LBB6_6:                                #   in Loop: Header=BB6_5 Depth=1
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_21:                               #   in Loop: Header=BB6_5 Depth=1
	incl	-96(%rbp)
	jmp	.LBB6_176
	.align	16, 0x90
.LBB6_13:                               #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	cmpl	$10, %eax
	movl	%eax, -76(%rbp)
	je	.LBB6_14
# BB#15:                                #   in Loop: Header=BB6_13 Depth=2
	cmpl	$0, -76(%rbp)
	setne	%al
	jmp	.LBB6_16
	.align	16, 0x90
.LBB6_14:                               #   in Loop: Header=BB6_13 Depth=2
	xorl	%eax, %eax
.LBB6_16:                               #   in Loop: Header=BB6_13 Depth=2
	testb	%al, %al
	jne	.LBB6_13
# BB#17:                                #   in Loop: Header=BB6_5 Depth=1
	cmpl	$10, -76(%rbp)
	jne	.LBB6_20
# BB#18:                                #   in Loop: Header=BB6_5 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, chpt(%rip)
	callq	srcnext
	movl	file_pos+4(%rip), %eax
	leal	1(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	andl	$-1048576, %eax         # imm = 0xFFFFFFFFFFF00000
	orl	%ecx, %eax
	movl	%eax, file_pos+4(%rip)
	andl	$1048575, %eax          # imm = 0xFFFFF
	movl	%eax, file_pos+4(%rip)
	jmp	.LBB6_19
.LBB6_48:                               #   in Loop: Header=BB6_5 Depth=1
	movq	-64(%rbp), %rax
	decq	%rax
	movq	%rax, -56(%rbp)
	subl	startline(%rip), %eax
	shll	$20, %eax
	movl	file_pos+4(%rip), %ecx
	andl	%r15d, %ecx
	orl	%eax, %ecx
	movl	%ecx, file_pos+4(%rip)
	.align	16, 0x90
.LBB6_49:                               #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	cmpb	$0, chtbl(%rax)
	je	.LBB6_49
# BB#50:                                #   in Loop: Header=BB6_5 Depth=1
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	decl	%eax
	movl	%eax, -76(%rbp)
	.align	16, 0x90
.LBB6_51:                               #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	SearchSym
	movq	%rax, -88(%rbp)
	decl	-76(%rbp)
	decq	-64(%rbp)
	cmpl	$0, -76(%rbp)
	jle	.LBB6_52
# BB#53:                                #   in Loop: Header=BB6_51 Depth=2
	cmpq	$0, -88(%rbp)
	sete	%al
	jmp	.LBB6_54
	.align	16, 0x90
.LBB6_52:                               #   in Loop: Header=BB6_51 Depth=2
	xorl	%eax, %eax
.LBB6_54:                               #   in Loop: Header=BB6_51 Depth=2
	testb	%al, %al
	jne	.LBB6_51
	jmp	.LBB6_58
.LBB6_55:                               #   in Loop: Header=BB6_5 Depth=1
	movq	-64(%rbp), %rax
	decq	%rax
	movq	%rax, -56(%rbp)
	subl	startline(%rip), %eax
	shll	$20, %eax
	movl	file_pos+4(%rip), %ecx
	andl	%r15d, %ecx
	orl	%eax, %ecx
	movl	%ecx, file_pos+4(%rip)
	.align	16, 0x90
.LBB6_56:                               #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$1, %eax
	je	.LBB6_56
# BB#57:                                #   in Loop: Header=BB6_5 Depth=1
	decq	-64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-64(%rbp), %esi
	subl	%edi, %esi
	callq	SearchSym
	movq	%rax, -88(%rbp)
.LBB6_58:                               #   in Loop: Header=BB6_5 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB6_59
# BB#67:                                #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$142, %eax
	jne	.LBB6_83
# BB#68:                                #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$10, %eax
	jae	.LBB6_78
# BB#69:                                #   in Loop: Header=BB6_5 Depth=1
	movl	$2, %edi
	movl	$8, %esi
	movl	$.L.str.31, %edx
	movl	$2, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	addl	$69, %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	decq	%rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, zz_size(%rip)
	cltq
	cmpq	$265, %rax              # imm = 0x109
	jb	.LBB6_71
# BB#70:                                #   in Loop: Header=BB6_5 Depth=1
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_74
.LBB6_127:                              #   in Loop: Header=BB6_5 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	%rax, -56(%rbp)
	decl	%eax
	subl	startline(%rip), %eax
	shll	$20, %eax
	movl	file_pos+4(%rip), %ecx
	andl	%r15d, %ecx
	orl	%eax, %ecx
	movl	%ecx, file_pos+4(%rip)
	jmp	.LBB6_128
.LBB6_7:                                #   in Loop: Header=BB6_5 Depth=1
	movzwl	ftype(%rip), %eax
	cmpl	$3, %eax
	jne	.LBB6_12
# BB#8:                                 #   in Loop: Header=BB6_5 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$97, %eax
	jl	.LBB6_12
# BB#9:                                 #   in Loop: Header=BB6_5 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$122, %eax
	jg	.LBB6_12
# BB#10:                                #   in Loop: Header=BB6_5 Depth=1
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %eax
	cmpl	$123, %eax
	jne	.LBB6_12
# BB#11:                                #   in Loop: Header=BB6_5 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %r8d
	movq	StartSym(%rip), %r9
	movl	$102, %edi
	movl	$file_pos, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	NewToken
	movq	%rax, -88(%rbp)
	addq	$2, -64(%rbp)
	jmp	.LBB6_176
.LBB6_22:                               #   in Loop: Header=BB6_5 Depth=1
	addl	$8, -96(%rbp)
	jmp	.LBB6_176
.LBB6_23:                               #   in Loop: Header=BB6_5 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, chpt(%rip)
	callq	srcnext
	movl	file_pos+4(%rip), %eax
	leal	1(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	andl	$-1048576, %eax         # imm = 0xFFFFFFFFFFF00000
	orl	%ecx, %eax
	movl	%eax, file_pos+4(%rip)
	andl	$1048575, %eax          # imm = 0xFFFFF
	movl	%eax, file_pos+4(%rip)
	incl	-92(%rbp)
	movl	$0, -96(%rbp)
.LBB6_19:                               #   in Loop: Header=BB6_5 Depth=1
	movq	chpt(%rip), %rax
	movq	%rax, -64(%rbp)
	decq	%rax
	movq	%rax, startline(%rip)
	jmp	.LBB6_176
.LBB6_24:                               #   in Loop: Header=BB6_5 Depth=1
	cmpl	$0, same_file(%rip)
	jne	.LBB6_34
# BB#25:                                #   in Loop: Header=BB6_5 Depth=1
	cmpq	$0, fp(%rip)
	je	.LBB6_29
# BB#26:                                #   in Loop: Header=BB6_5 Depth=1
	movq	fp(%rip), %rdi
	callq	fclose
	movq	$0, fp(%rip)
	xorl	%eax, %eax
	cmpw	$0, ftype(%rip)
	jne	.LBB6_28
# BB#27:                                #   in Loop: Header=BB6_5 Depth=1
	movzwl	this_file(%rip), %edi
	callq	NextFile
	movzwl	%ax, %eax
.LBB6_28:                               #   in Loop: Header=BB6_5 Depth=1
	movw	%ax, this_file(%rip)
	jmp	.LBB6_29
	.align	16, 0x90
.LBB6_33:                               #   in Loop: Header=BB6_29 Depth=2
	movw	%r13w, this_file(%rip)
.LBB6_29:                               #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	$0, this_file(%rip)
	je	.LBB6_34
# BB#30:                                #   in Loop: Header=BB6_29 Depth=2
	movw	this_file(%rip), %ax
	movw	%ax, file_pos+2(%rip)
	movl	file_pos+4(%rip), %eax
	andl	%r12d, %eax
	orl	$1, %eax
	movl	%eax, file_pos+4(%rip)
	movl	$1, file_pos+4(%rip)
	movzwl	this_file(%rip), %edi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	OpenFile
	movq	%rax, fp(%rip)
	testq	%rax, %rax
	jne	.LBB6_34
# BB#31:                                #   in Loop: Header=BB6_29 Depth=2
	movzwl	this_file(%rip), %edi
	callq	FullFileName
	movq	%rax, %rbx
	xorl	%r13d, %r13d
	movl	$2, %edi
	movl	$7, %esi
	movl	$.L.str.28, %edx
	movl	$2, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	movq	%rbx, %r9
	callq	Error
	cmpw	$0, ftype(%rip)
	jne	.LBB6_33
# BB#32:                                #   in Loop: Header=BB6_29 Depth=2
	movzwl	this_file(%rip), %edi
	callq	NextFile
	movzwl	%ax, %r13d
	jmp	.LBB6_33
.LBB6_34:                               #   in Loop: Header=BB6_5 Depth=1
	cmpq	$0, fp(%rip)
	je	.LBB6_38
# BB#35:                                #   in Loop: Header=BB6_5 Depth=1
	cmpl	$0, offset(%rip)
	je	.LBB6_37
# BB#36:                                #   in Loop: Header=BB6_5 Depth=1
	movq	fp(%rip), %rdi
	movslq	offset(%rip), %rsi
	xorl	%edx, %edx
	callq	fseek
	movl	$0, offset(%rip)
	movl	first_line_num(%rip), %eax
	andl	%r15d, %eax
	movl	file_pos+4(%rip), %ecx
	andl	%r12d, %ecx
	orl	%eax, %ecx
	movl	%ecx, file_pos+4(%rip)
.LBB6_37:                               #   in Loop: Header=BB6_5 Depth=1
	movq	buf(%rip), %rax
	movq	%rax, chpt(%rip)
	movq	%rax, limit(%rip)
	movq	%rax, frst(%rip)
	movl	$0, blksize(%rip)
	movb	$10, last_char(%rip)
	callq	srcnext
	movq	chpt(%rip), %rax
	movq	%rax, -64(%rbp)
	decq	%rax
	movq	%rax, startline(%rip)
	movl	$0, -96(%rbp)
	jmp	.LBB6_176
.LBB6_12:                               #   in Loop: Header=BB6_5 Depth=1
	movq	-64(%rbp), %rax
	decq	%rax
	movq	%rax, -56(%rbp)
	subl	startline(%rip), %eax
	shll	$20, %eax
	movl	file_pos+4(%rip), %ecx
	andl	%r15d, %ecx
	orl	%eax, %ecx
	movl	%ecx, file_pos+4(%rip)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %r9d
	movl	$2, %edi
	movl	$6, %esi
	movl	$.L.str.27, %edx
	movl	$2, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_176
.LBB6_59:                               #   in Loop: Header=BB6_5 Depth=1
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	addl	$69, %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	decq	%rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, zz_size(%rip)
	cltq
	cmpq	$265, %rax              # imm = 0x109
	jb	.LBB6_61
# BB#60:                                #   in Loop: Header=BB6_5 Depth=1
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_64
.LBB6_83:                               #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %rax
	cmpw	$0, 120(%rax)
	je	.LBB6_84
# BB#87:                                #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %rax
	movzwl	120(%rax), %eax
	cmpl	$112, %eax
	je	.LBB6_89
# BB#88:                                #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %rax
	movzwl	120(%rax), %eax
	cmpl	$113, %eax
	jne	.LBB6_124
.LBB6_89:                               #   in Loop: Header=BB6_5 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, chpt(%rip)
	callq	LexGetToken
	movq	%rax, -104(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB6_90
# BB#91:                                #   in Loop: Header=BB6_5 Depth=1
	movq	-104(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.32, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB6_92
.LBB6_20:                               #   in Loop: Header=BB6_5 Depth=1
	decq	-64(%rbp)
	jmp	.LBB6_176
.LBB6_38:                               #   in Loop: Header=BB6_5 Depth=1
	movswl	ftype(%rip), %eax
	cmpl	$2, %eax
	jg	.LBB6_42
# BB#39:                                #   in Loop: Header=BB6_5 Depth=1
	testl	%eax, %eax
	je	.LBB6_44
# BB#40:                                #   in Loop: Header=BB6_5 Depth=1
	cmpl	$1, %eax
	jne	.LBB6_47
# BB#41:                                #   in Loop: Header=BB6_5 Depth=1
	callq	LexPop
	movq	chpt(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LBB6_176
.LBB6_61:                               #   in Loop: Header=BB6_5 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_62
# BB#63:                                #   in Loop: Header=BB6_5 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_64
.LBB6_78:                               #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %rax
	movq	56(%rax), %rdi
	movl	$file_pos, %esi
	callq	CopyTokenList
	movq	%rax, -88(%rbp)
	testq	%rax, %rax
	je	.LBB6_82
# BB#79:                                #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB6_81
# BB#80:                                #   in Loop: Header=BB6_5 Depth=1
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
.LBB6_81:                               #   in Loop: Header=BB6_5 Depth=1
	movq	%rax, next_token(%rip)
	jmp	.LBB6_176
.LBB6_84:                               #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %r9
	movzbl	40(%r9), %r8d
	movl	$2, %edi
	jmp	.LBB6_85
.LBB6_71:                               #   in Loop: Header=BB6_5 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_72
# BB#73:                                #   in Loop: Header=BB6_5 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_74
.LBB6_42:                               #   in Loop: Header=BB6_5 Depth=1
	cmpl	$10, %eax
	jne	.LBB6_43
# BB#45:                                #   in Loop: Header=BB6_5 Depth=1
	movq	FilterOutSym(%rip), %r9
	movl	$105, %edi
	movl	$file_pos, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	callq	NewToken
	movq	%rax, -88(%rbp)
	jmp	.LBB6_46
.LBB6_90:                               #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
.LBB6_92:                               #   in Loop: Header=BB6_5 Depth=1
	movzbl	%al, %eax
	movl	%eax, -124(%rbp)
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB6_100
# BB#93:                                #   in Loop: Header=BB6_5 Depth=1
	cmpl	$0, -124(%rbp)
	je	.LBB6_94
.LBB6_100:                              #   in Loop: Header=BB6_5 Depth=1
	cmpl	$0, -124(%rbp)
	je	.LBB6_111
# BB#101:                               #   in Loop: Header=BB6_5 Depth=1
	callq	UnSuppressScope
	movq	-104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_103
# BB#102:                               #   in Loop: Header=BB6_5 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_104
.LBB6_103:                              #   in Loop: Header=BB6_5 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB6_105
.LBB6_62:                               #   in Loop: Header=BB6_5 Depth=1
	movl	zz_size(%rip), %edi
	movl	$file_pos, %esi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_64:                               #   in Loop: Header=BB6_5 Depth=1
	movb	zz_size(%rip), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 33(%rcx)
	movq	zz_hold(%rip), %rax
	movb	$11, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -88(%rbp)
	movw	file_pos+2(%rip), %cx
	movw	%cx, 34(%rax)
	movl	file_pos+4(%rip), %eax
	andl	%r15d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	file_pos+4(%rip), %eax
	andl	%r12d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	$0, -76(%rbp)
	jmp	.LBB6_65
	.align	16, 0x90
.LBB6_66:                               #   in Loop: Header=BB6_65 Depth=2
	movslq	-76(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	(%rcx,%rax), %cl
	movq	-88(%rbp), %rdx
	movb	%cl, 64(%rdx,%rax)
	incl	-76(%rbp)
.LBB6_65:                               #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_66
	jmp	.LBB6_77
.LBB6_124:                              #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %rax
	movzwl	120(%rax), %eax
	cmpl	$105, %eax
	jne	.LBB6_126
# BB#125:                               #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %rax
	movzbl	40(%rax), %r8d
	movzbl	120(%rax), %edi
	movl	$file_pos, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	jmp	.LBB6_86
.LBB6_43:                               #   in Loop: Header=BB6_5 Depth=1
	cmpl	$3, %eax
	jne	.LBB6_47
.LBB6_44:                               #   in Loop: Header=BB6_5 Depth=1
	movq	StartSym(%rip), %r9
	movl	$105, %edi
	movl	$file_pos, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	callq	NewToken
	movq	%rax, -88(%rbp)
	movl	$111, %edi
	movl	$file_pos, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	NewToken
	movq	%rax, next_token(%rip)
.LBB6_46:                               #   in Loop: Header=BB6_5 Depth=1
	movq	-64(%rbp), %rax
	decq	%rax
	movq	%rax, -64(%rbp)
	movq	%rax, startline(%rip)
	jmp	.LBB6_176
.LBB6_47:                               #   in Loop: Header=BB6_5 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.24, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.29, %r9d
	jmp	.LBB6_175
.LBB6_82:                               #   in Loop: Header=BB6_5 Depth=1
	movl	$0, -96(%rbp)
	jmp	.LBB6_176
.LBB6_72:                               #   in Loop: Header=BB6_5 Depth=1
	movl	zz_size(%rip), %edi
	movl	$file_pos, %esi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_74:                               #   in Loop: Header=BB6_5 Depth=1
	movb	zz_size(%rip), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 33(%rcx)
	movq	zz_hold(%rip), %rax
	movb	$11, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -88(%rbp)
	movw	file_pos+2(%rip), %cx
	movw	%cx, 34(%rax)
	movl	file_pos+4(%rip), %eax
	andl	%r15d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	file_pos+4(%rip), %eax
	andl	%r12d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	$0, -76(%rbp)
	jmp	.LBB6_75
	.align	16, 0x90
.LBB6_76:                               #   in Loop: Header=BB6_75 Depth=2
	movslq	-76(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	(%rcx,%rax), %cl
	movq	-88(%rbp), %rdx
	movb	%cl, 64(%rdx,%rax)
	incl	-76(%rbp)
.LBB6_75:                               #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_76
.LBB6_77:                               #   in Loop: Header=BB6_5 Depth=1
	movslq	-76(%rbp), %rax
	movq	-88(%rbp), %rcx
	movb	$0, 64(%rcx,%rax)
	jmp	.LBB6_176
.LBB6_94:                               #   in Loop: Header=BB6_5 Depth=1
	movq	-104(%rbp), %rbx
	addq	$32, %rbx
	movq	-88(%rbp), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movl	$2, %edi
	movl	$9, %esi
	movl	$.L.str.33, %edx
	movl	$2, %ecx
	movl	$.L.str.32, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movq	-104(%rbp), %rax
	jmp	.LBB6_95
.LBB6_126:                              #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %r9
	movzbl	40(%r9), %r8d
	movzbl	120(%r9), %edi
.LBB6_85:                               #   in Loop: Header=BB6_5 Depth=1
	movl	$file_pos, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
.LBB6_86:                               #   in Loop: Header=BB6_5 Depth=1
	callq	NewToken
	movq	%rax, -88(%rbp)
	jmp	.LBB6_176
.LBB6_167:                              #   in Loop: Header=BB6_128 Depth=2
	movl	$2, %edi
	movl	$13, %esi
	movl	$.L.str.38, %edx
	movl	$2, %ecx
	jmp	.LBB6_172
	.align	16, 0x90
.LBB6_128:                              #   Parent Loop BB6_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_136 Depth 3
                                        #       Child Loop BB6_160 Depth 3
                                        #       Child Loop BB6_154 Depth 3
                                        #       Child Loop BB6_144 Depth 3
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	movq	-72(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -72(%rbp)
	movb	%al, (%rcx)
	movzbl	chtbl(%rax), %eax
	cmpq	$9, %rax
	jbe	.LBB6_129
# BB#171:                               #   in Loop: Header=BB6_128 Depth=2
	movl	$2, %edi
	movl	$14, %esi
	movl	$.L.str.39, %edx
	xorl	%ecx, %ecx
.LBB6_172:                              #   in Loop: Header=BB6_128 Depth=2
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_173
	.align	16, 0x90
.LBB6_129:                              #   in Loop: Header=BB6_128 Depth=2
	jmpq	*.LJTI6_1(,%rax,8)
.LBB6_130:                              #   in Loop: Header=BB6_128 Depth=2
	decq	-64(%rbp)
	movl	$2, %edi
	movl	$11, %esi
	movl	$.L.str.37, %edx
	movl	$2, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
	movl	-72(%rbp), %eax
	decl	%eax
	subl	-56(%rbp), %eax
	addl	$69, %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	decq	%rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, zz_size(%rip)
	cltq
	cmpq	$265, %rax              # imm = 0x109
	jb	.LBB6_132
# BB#131:                               #   in Loop: Header=BB6_128 Depth=2
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_135
.LBB6_138:                              #   in Loop: Header=BB6_128 Depth=2
	movl	-72(%rbp), %eax
	decl	%eax
	subl	-56(%rbp), %eax
	addl	$69, %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	decq	%rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, zz_size(%rip)
	cltq
	cmpq	$265, %rax              # imm = 0x109
	jb	.LBB6_140
# BB#139:                               #   in Loop: Header=BB6_128 Depth=2
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_143
.LBB6_146:                              #   in Loop: Header=BB6_128 Depth=2
	decq	-72(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	je	.LBB6_148
# BB#147:                               #   in Loop: Header=BB6_128 Depth=2
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB6_157
.LBB6_148:                              #   in Loop: Header=BB6_128 Depth=2
	movl	$2, %edi
	movl	$12, %esi
	movl	$.L.str.37, %edx
	movl	$2, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
	movl	-72(%rbp), %eax
	subl	-56(%rbp), %eax
	addl	$69, %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	decq	%rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, zz_size(%rip)
	cltq
	cmpq	$265, %rax              # imm = 0x109
	jb	.LBB6_150
# BB#149:                               #   in Loop: Header=BB6_128 Depth=2
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_153
.LBB6_132:                              #   in Loop: Header=BB6_128 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_133
# BB#134:                               #   in Loop: Header=BB6_128 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_135
.LBB6_140:                              #   in Loop: Header=BB6_128 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_141
# BB#142:                               #   in Loop: Header=BB6_128 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_143
.LBB6_150:                              #   in Loop: Header=BB6_128 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_151
# BB#152:                               #   in Loop: Header=BB6_128 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_153
.LBB6_133:                              #   in Loop: Header=BB6_128 Depth=2
	movl	zz_size(%rip), %edi
	movl	$file_pos, %esi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_135:                              #   in Loop: Header=BB6_128 Depth=2
	movb	zz_size(%rip), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 33(%rcx)
	movq	zz_hold(%rip), %rax
	movb	$12, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -88(%rbp)
	movw	file_pos+2(%rip), %cx
	movw	%cx, 34(%rax)
	movl	file_pos+4(%rip), %eax
	andl	%r15d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	file_pos+4(%rip), %eax
	andl	%r12d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	$0, -76(%rbp)
	jmp	.LBB6_136
	.align	16, 0x90
.LBB6_137:                              #   in Loop: Header=BB6_136 Depth=3
	movslq	-76(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	(%rcx,%rax), %cl
	movq	-88(%rbp), %rdx
	movb	%cl, 64(%rdx,%rax)
	incl	-76(%rbp)
.LBB6_136:                              #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-76(%rbp), %rax
	movq	-72(%rbp), %rcx
	decq	%rcx
	subq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_137
	jmp	.LBB6_156
.LBB6_157:                              #   in Loop: Header=BB6_128 Depth=2
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$48, %eax
	jl	.LBB6_170
# BB#158:                               #   in Loop: Header=BB6_128 Depth=2
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$55, %eax
	jg	.LBB6_170
# BB#159:                               #   in Loop: Header=BB6_128 Depth=2
	movl	$0, -132(%rbp)
	movl	$0, -128(%rbp)
	.align	16, 0x90
.LBB6_160:                              #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-132(%rbp), %eax
	movq	-64(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rcx), %ecx
	leal	-48(%rcx,%rax,8), %eax
	movl	%eax, -132(%rbp)
	incl	-128(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$48, %eax
	jl	.LBB6_161
# BB#162:                               #   in Loop: Header=BB6_160 Depth=3
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$55, %eax
	jg	.LBB6_163
# BB#164:                               #   in Loop: Header=BB6_160 Depth=3
	cmpl	$3, -128(%rbp)
	setl	%al
	jmp	.LBB6_165
	.align	16, 0x90
.LBB6_161:                              #   in Loop: Header=BB6_160 Depth=3
	xorl	%eax, %eax
	jmp	.LBB6_165
	.align	16, 0x90
.LBB6_163:                              #   in Loop: Header=BB6_160 Depth=3
	xorl	%eax, %eax
.LBB6_165:                              #   in Loop: Header=BB6_160 Depth=3
	testb	%al, %al
	jne	.LBB6_160
# BB#166:                               #   in Loop: Header=BB6_128 Depth=2
	cmpl	$0, -132(%rbp)
	je	.LBB6_167
# BB#168:                               #   in Loop: Header=BB6_128 Depth=2
	movb	-132(%rbp), %al
	jmp	.LBB6_169
.LBB6_141:                              #   in Loop: Header=BB6_128 Depth=2
	movl	zz_size(%rip), %edi
	movl	$file_pos, %esi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_143:                              #   in Loop: Header=BB6_128 Depth=2
	movb	zz_size(%rip), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 33(%rcx)
	movq	zz_hold(%rip), %rax
	movb	$12, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -88(%rbp)
	movw	file_pos+2(%rip), %cx
	movw	%cx, 34(%rax)
	movl	file_pos+4(%rip), %eax
	andl	%r15d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	file_pos+4(%rip), %eax
	andl	%r12d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	$0, -76(%rbp)
	jmp	.LBB6_144
	.align	16, 0x90
.LBB6_145:                              #   in Loop: Header=BB6_144 Depth=3
	movslq	-76(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	(%rcx,%rax), %cl
	movq	-88(%rbp), %rdx
	movb	%cl, 64(%rdx,%rax)
	incl	-76(%rbp)
.LBB6_144:                              #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-76(%rbp), %rax
	movq	-72(%rbp), %rcx
	decq	%rcx
	subq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_145
	jmp	.LBB6_156
.LBB6_170:                              #   in Loop: Header=BB6_128 Depth=2
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movb	(%rax), %al
.LBB6_169:                              #   in Loop: Header=BB6_128 Depth=2
	movq	-72(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -72(%rbp)
	movb	%al, (%rcx)
	jmp	.LBB6_173
.LBB6_151:                              #   in Loop: Header=BB6_128 Depth=2
	movl	zz_size(%rip), %edi
	movl	$file_pos, %esi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_153:                              #   in Loop: Header=BB6_128 Depth=2
	movb	zz_size(%rip), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 33(%rcx)
	movq	zz_hold(%rip), %rax
	movb	$12, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -88(%rbp)
	movw	file_pos+2(%rip), %cx
	movw	%cx, 34(%rax)
	movl	file_pos+4(%rip), %eax
	andl	%r15d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	file_pos+4(%rip), %eax
	andl	%r12d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	$0, -76(%rbp)
	jmp	.LBB6_154
	.align	16, 0x90
.LBB6_155:                              #   in Loop: Header=BB6_154 Depth=3
	movslq	-76(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	(%rcx,%rax), %cl
	movq	-88(%rbp), %rdx
	movb	%cl, 64(%rdx,%rax)
	incl	-76(%rbp)
.LBB6_154:                              #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-76(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_155
.LBB6_156:                              #   in Loop: Header=BB6_128 Depth=2
	movslq	-76(%rbp), %rax
	movq	-88(%rbp), %rcx
	movb	$0, 64(%rcx,%rax)
	.align	16, 0x90
.LBB6_173:                              #   in Loop: Header=BB6_128 Depth=2
	cmpq	$0, -88(%rbp)
	je	.LBB6_128
	jmp	.LBB6_176
.LBB6_104:                              #   in Loop: Header=BB6_5 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB6_105:                              #   in Loop: Header=BB6_5 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movzbl	zz_lengths+102(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_107
# BB#106:                               #   in Loop: Header=BB6_5 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_110
.LBB6_107:                              #   in Loop: Header=BB6_5 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_108
# BB#109:                               #   in Loop: Header=BB6_5 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_110
.LBB6_108:                              #   in Loop: Header=BB6_5 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_110:                              #   in Loop: Header=BB6_5 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$102, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -104(%rbp)
.LBB6_111:                              #   in Loop: Header=BB6_5 Depth=1
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	Parse
	movq	%rax, -112(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -112(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB6_113
# BB#112:                               #   in Loop: Header=BB6_5 Depth=1
	callq	SuppressScope
.LBB6_113:                              #   in Loop: Header=BB6_5 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_116
# BB#114:                               #   in Loop: Header=BB6_5 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_115
.LBB6_116:                              #   in Loop: Header=BB6_5 Depth=1
	movq	-112(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	addl	$-3, %eax
	movl	%eax, -120(%rbp)
	js	.LBB6_119
# BB#117:                               #   in Loop: Header=BB6_5 Depth=1
	movslq	-120(%rbp), %rax
	movq	-112(%rbp), %rcx
	leaq	64(%rcx,%rax), %rdi
	movl	$.L.str.35, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB6_119
# BB#118:                               #   in Loop: Header=BB6_5 Depth=1
	movslq	-120(%rbp), %rax
	movq	-112(%rbp), %rcx
	leaq	64(%rcx,%rax), %rdi
	movl	$.L.str.36, %esi
	callq	strcpy
.LBB6_119:                              #   in Loop: Header=BB6_5 Depth=1
	movq	-112(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movq	-88(%rbp), %rax
	movzwl	120(%rax), %eax
	cmpl	$112, %eax
	setne	%al
	movzbl	%al, %r8d
	incl	%r8d
	movl	$.L.str.36, %esi
	movl	$1, %ecx
	callq	DefineFile
	movw	%ax, -114(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_121
# BB#120:                               #   in Loop: Header=BB6_5 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_122
.LBB6_121:                              #   in Loop: Header=BB6_5 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB6_123
.LBB6_115:                              #   in Loop: Header=BB6_5 Depth=1
	movq	-112(%rbp), %r8
	addq	$32, %r8
	movl	$2, %edi
	movl	$10, %esi
	movl	$.L.str.34, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-112(%rbp), %rax
.LBB6_95:                               #   in Loop: Header=BB6_5 Depth=1
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_97
# BB#96:                                #   in Loop: Header=BB6_5 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_98
.LBB6_97:                               #   in Loop: Header=BB6_5 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB6_99
.LBB6_122:                              #   in Loop: Header=BB6_5 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB6_123:                              #   in Loop: Header=BB6_5 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movzwl	-114(%rbp), %edi
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	LexPush
	callq	LexGetToken
	movq	%rax, -88(%rbp)
	incl	-92(%rbp)
	movq	chpt(%rip), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB6_176
.LBB6_98:                               #   in Loop: Header=BB6_5 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB6_99:                               #   in Loop: Header=BB6_5 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	$0, -88(%rbp)
	jmp	.LBB6_176
	.align	16, 0x90
.LBB6_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_29 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #     Child Loop BB6_128 Depth 2
                                        #       Child Loop BB6_136 Depth 3
                                        #       Child Loop BB6_160 Depth 3
                                        #       Child Loop BB6_154 Depth 3
                                        #       Child Loop BB6_144 Depth 3
                                        #     Child Loop BB6_56 Depth 2
                                        #     Child Loop BB6_49 Depth 2
                                        #     Child Loop BB6_51 Depth 2
                                        #     Child Loop BB6_75 Depth 2
                                        #     Child Loop BB6_65 Depth 2
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpq	$9, %rax
	jbe	.LBB6_6
# BB#174:                               #   in Loop: Header=BB6_5 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.24, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.40, %r9d
.LBB6_175:                              #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
	callq	Error
.LBB6_176:                              #   in Loop: Header=BB6_5 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB6_5
# BB#177:
	movq	-64(%rbp), %rax
	subq	startline(%rip), %rax
	cmpq	$2048, %rax             # imm = 0x800
	jl	.LBB6_179
# BB#178:
	movl	$1048575, %eax          # imm = 0xFFFFF
	andl	file_pos+4(%rip), %eax
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, file_pos+4(%rip)
	movl	$2, %edi
	movl	$15, %esi
	movl	$.L.str.41, %edx
	movl	$1, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
.LBB6_179:
	movq	-64(%rbp), %rax
	movq	%rax, chpt(%rip)
	movb	-92(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 42(%rcx)
	movb	-96(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 41(%rcx)
.LBB6_180:
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	LexGetToken, .Lfunc_end6-LexGetToken
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_48
	.quad	.LBB6_55
	.quad	.LBB6_127
	.quad	.LBB6_7
	.quad	.LBB6_13
	.quad	.LBB6_21
	.quad	.LBB6_21
	.quad	.LBB6_22
	.quad	.LBB6_23
	.quad	.LBB6_24
.LJTI6_1:
	.quad	.LBB6_173
	.quad	.LBB6_173
	.quad	.LBB6_138
	.quad	.LBB6_146
	.quad	.LBB6_173
	.quad	.LBB6_173
	.quad	.LBB6_173
	.quad	.LBB6_173
	.quad	.LBB6_130
	.quad	.LBB6_130

	.text
	.align	16, 0x90
	.type	srcnext,@function
srcnext:                                # @srcnext
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
	subq	$16, %rsp
	cmpl	$0, blksize(%rip)
	je	.LBB7_5
# BB#1:
	movq	chpt(%rip), %rax
	cmpq	limit(%rip), %rax
	jae	.LBB7_5
# BB#2:
	movq	buf(%rip), %rax
	movq	%rax, -8(%rbp)
	.align	16, 0x90
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movq	limit(%rip), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, limit(%rip)
	movzbl	-1(%rax), %eax
	movq	-8(%rbp), %rcx
	leaq	-1(%rcx), %rdx
	movq	%rdx, -8(%rbp)
	movb	%al, -1(%rcx)
	cmpl	$10, %eax
	jne	.LBB7_3
# BB#4:
	movq	-8(%rbp), %rax
	incq	%rax
	movq	%rax, frst(%rip)
	incq	limit(%rip)
	movl	$0, blksize(%rip)
.LBB7_5:
	movq	chpt(%rip), %rax
	cmpq	limit(%rip), %rax
	jb	.LBB7_15
# BB#6:
	movq	chpt(%rip), %rax
	cmpq	limit(%rip), %rax
	jbe	.LBB7_8
# BB#7:
	movl	$1048575, %eax          # imm = 0xFFFFF
	andl	file_pos+4(%rip), %eax
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, file_pos+4(%rip)
	movl	$2, %edi
	movl	$5, %esi
	movl	$.L.str.41, %edx
	movl	$1, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
.LBB7_8:
	movq	frst(%rip), %rax
	movq	%rax, chpt(%rip)
	movq	buf(%rip), %rdi
	movq	fp(%rip), %rcx
	movl	$1, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	fread
	movl	%eax, blksize(%rip)
	testl	%eax, %eax
	jle	.LBB7_10
# BB#9:
	movq	buf(%rip), %rax
	movslq	blksize(%rip), %rcx
	movb	-1(%rax,%rcx), %al
	movb	%al, last_char(%rip)
.LBB7_10:
	cmpl	$8191, blksize(%rip)    # imm = 0x1FFF
	jg	.LBB7_14
# BB#11:
	movzbl	last_char(%rip), %eax
	cmpl	$10, %eax
	je	.LBB7_14
# BB#12:
	incl	blksize(%rip)
	movq	buf(%rip), %rax
	movslq	blksize(%rip), %rcx
	movb	$10, -1(%rax,%rcx)
	movb	$10, last_char(%rip)
	movzwl	ftype(%rip), %eax
	cmpl	$3, %eax
	jne	.LBB7_14
# BB#13:
	andl	$1048575, file_pos+4(%rip) # imm = 0xFFFFF
	movl	$0, file_pos+4(%rip)
	movl	$2, %edi
	movl	$25, %esi
	movl	$.L.str.55, %edx
	movl	$1, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
.LBB7_14:
	movq	buf(%rip), %rax
	movq	%rax, frst(%rip)
	movq	buf(%rip), %rax
	movslq	blksize(%rip), %rcx
	leaq	(%rax,%rcx), %rdx
	movq	%rdx, limit(%rip)
	movb	$10, (%rax,%rcx)
.LBB7_15:
	movq	chpt(%rip), %rax
	cmpq	limit(%rip), %rax
	jb	.LBB7_17
# BB#16:
	movq	buf(%rip), %rax
	movq	%rax, limit(%rip)
	movq	%rax, chpt(%rip)
	movq	limit(%rip), %rax
	movb	$0, (%rax)
.LBB7_17:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	srcnext, .Lfunc_end7-srcnext
	.cfi_endproc

	.globl	LexScanVerbatim
	.align	16, 0x90
	.type	LexScanVerbatim,@function
LexScanVerbatim:                        # @LexScanVerbatim
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$1200, %rsp             # imm = 0x4B0
.Ltmp34:
	.cfi_offset %rbx, -48
.Ltmp35:
	.cfi_offset %r12, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	$0, -1152(%rbp)
	cmpq	$0, next_token(%rip)
	je	.LBB8_2
# BB#1:
	movq	-56(%rbp), %r8
	movl	$2, %edi
	movl	$16, %esi
	movl	$.L.str.42, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB8_2:
	movq	chpt(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$1, -84(%rbp)
	movl	$0, -612(%rbp)
	movl	$0, -1140(%rbp)
	leaq	-1136(%rbp), %r14
	leaq	-1140(%rbp), %rbx
	leaq	-1192(%rbp), %r15
	jmp	.LBB8_3
	.align	16, 0x90
.LBB8_52:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	callq	Error
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_35 Depth 2
                                        #     Child Loop BB8_22 Depth 2
                                        #     Child Loop BB8_7 Depth 2
                                        #     Child Loop BB8_157 Depth 2
                                        #     Child Loop BB8_141 Depth 2
                                        #     Child Loop BB8_107 Depth 2
                                        #     Child Loop BB8_132 Depth 2
                                        #     Child Loop BB8_92 Depth 2
                                        #     Child Loop BB8_76 Depth 2
                                        #     Child Loop BB8_56 Depth 2
	cmpl	$0, -80(%rbp)
	jne	.LBB8_167
# BB#4:                                 #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpq	$9, %rax
	jbe	.LBB8_5
# BB#166:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movzbl	-1(%rax), %r9d
	movl	$2, %edi
	movl	$22, %esi
	movl	$.L.str.53, %edx
	xorl	%ecx, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.24, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.54, %r9d
	jmp	.LBB8_52
	.align	16, 0x90
.LBB8_5:                                #   in Loop: Header=BB8_3 Depth=1
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -84(%rbp)
	movl	$0, -1156(%rbp)
	jmp	.LBB8_7
	.align	16, 0x90
.LBB8_14:                               #   in Loop: Header=BB8_7 Depth=2
	incl	-1156(%rbp)
.LBB8_7:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1156(%rbp), %eax
	cmpl	-612(%rbp), %eax
	jge	.LBB8_15
# BB#8:                                 #   in Loop: Header=BB8_7 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB8_9
# BB#13:                                #   in Loop: Header=BB8_7 Depth=2
	movslq	-1156(%rbp), %rax
	movzbl	-608(%rbp,%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_14
	.align	16, 0x90
.LBB8_9:                                #   in Loop: Header=BB8_7 Depth=2
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_14
# BB#10:                                #   in Loop: Header=BB8_7 Depth=2
	movslq	-1156(%rbp), %rax
	movzbl	-608(%rbp,%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_12
# BB#11:                                #   in Loop: Header=BB8_7 Depth=2
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	incl	-1156(%rbp)
	jmp	.LBB8_7
.LBB8_12:                               #   in Loop: Header=BB8_7 Depth=2
	movslq	-1156(%rbp), %rax
	movb	-608(%rbp,%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	incl	-1156(%rbp)
	jmp	.LBB8_7
.LBB8_19:                               #   in Loop: Header=BB8_3 Depth=1
	cmpl	$0, -84(%rbp)
	jne	.LBB8_3
# BB#20:                                #   in Loop: Header=BB8_3 Depth=1
	cmpl	$512, -612(%rbp)        # imm = 0x200
	jne	.LBB8_31
# BB#21:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -1160(%rbp)
	jmp	.LBB8_22
	.align	16, 0x90
.LBB8_29:                               #   in Loop: Header=BB8_22 Depth=2
	incl	-1160(%rbp)
.LBB8_22:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1160(%rbp), %eax
	cmpl	-612(%rbp), %eax
	jge	.LBB8_30
# BB#23:                                #   in Loop: Header=BB8_22 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB8_24
# BB#28:                                #   in Loop: Header=BB8_22 Depth=2
	movslq	-1160(%rbp), %rax
	movzbl	-608(%rbp,%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_29
	.align	16, 0x90
.LBB8_24:                               #   in Loop: Header=BB8_22 Depth=2
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_29
# BB#25:                                #   in Loop: Header=BB8_22 Depth=2
	movslq	-1160(%rbp), %rax
	movzbl	-608(%rbp,%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_27
# BB#26:                                #   in Loop: Header=BB8_22 Depth=2
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	incl	-1160(%rbp)
	jmp	.LBB8_22
.LBB8_27:                               #   in Loop: Header=BB8_22 Depth=2
	movslq	-1160(%rbp), %rax
	movb	-608(%rbp,%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	incl	-1160(%rbp)
	jmp	.LBB8_22
.LBB8_54:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -84(%rbp)
	movq	-72(%rbp), %rax
	movzbl	-1(%rax), %eax
	cmpl	$123, %eax
	jne	.LBB8_71
# BB#55:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -1168(%rbp)
	jmp	.LBB8_56
	.align	16, 0x90
.LBB8_63:                               #   in Loop: Header=BB8_56 Depth=2
	incl	-1168(%rbp)
.LBB8_56:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1168(%rbp), %eax
	cmpl	-612(%rbp), %eax
	jge	.LBB8_64
# BB#57:                                #   in Loop: Header=BB8_56 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB8_58
# BB#62:                                #   in Loop: Header=BB8_56 Depth=2
	movslq	-1168(%rbp), %rax
	movzbl	-608(%rbp,%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_63
	.align	16, 0x90
.LBB8_58:                               #   in Loop: Header=BB8_56 Depth=2
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_63
# BB#59:                                #   in Loop: Header=BB8_56 Depth=2
	movslq	-1168(%rbp), %rax
	movzbl	-608(%rbp,%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_61
# BB#60:                                #   in Loop: Header=BB8_56 Depth=2
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	incl	-1168(%rbp)
	jmp	.LBB8_56
.LBB8_61:                               #   in Loop: Header=BB8_56 Depth=2
	movslq	-1168(%rbp), %rax
	movb	-608(%rbp,%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	incl	-1168(%rbp)
	jmp	.LBB8_56
.LBB8_100:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -84(%rbp)
	movq	-72(%rbp), %rax
	movzbl	-1(%rax), %eax
	cmpl	$64, %eax
	jne	.LBB8_156
# BB#101:                               #   in Loop: Header=BB8_3 Depth=1
	decq	-72(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB8_104
# BB#102:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rdi
	movl	$.L.str.47, %esi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB8_104
# BB#103:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, -80(%rbp)
	jmp	.LBB8_3
.LBB8_32:                               #   in Loop: Header=BB8_3 Depth=1
	cmpl	$0, -84(%rbp)
	jne	.LBB8_45
# BB#33:                                #   in Loop: Header=BB8_3 Depth=1
	cmpl	$512, -612(%rbp)        # imm = 0x200
	jne	.LBB8_44
# BB#34:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -1164(%rbp)
	jmp	.LBB8_35
	.align	16, 0x90
.LBB8_42:                               #   in Loop: Header=BB8_35 Depth=2
	incl	-1164(%rbp)
.LBB8_35:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1164(%rbp), %eax
	cmpl	-612(%rbp), %eax
	jge	.LBB8_43
# BB#36:                                #   in Loop: Header=BB8_35 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB8_37
# BB#41:                                #   in Loop: Header=BB8_35 Depth=2
	movslq	-1164(%rbp), %rax
	movzbl	-608(%rbp,%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_42
	.align	16, 0x90
.LBB8_37:                               #   in Loop: Header=BB8_35 Depth=2
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_42
# BB#38:                                #   in Loop: Header=BB8_35 Depth=2
	movslq	-1164(%rbp), %rax
	movzbl	-608(%rbp,%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_40
# BB#39:                                #   in Loop: Header=BB8_35 Depth=2
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	incl	-1164(%rbp)
	jmp	.LBB8_35
.LBB8_40:                               #   in Loop: Header=BB8_35 Depth=2
	movslq	-1164(%rbp), %rax
	movb	-608(%rbp,%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	incl	-1164(%rbp)
	jmp	.LBB8_35
.LBB8_48:                               #   in Loop: Header=BB8_3 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB8_49
# BB#53:                                #   in Loop: Header=BB8_3 Depth=1
	movq	-56(%rbp), %r8
	movl	$2, %edi
	movl	$17, %esi
	movl	$.L.str.46, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_3
.LBB8_30:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -612(%rbp)
.LBB8_31:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movb	-1(%rax), %al
	movslq	-612(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -612(%rbp)
	movb	%al, -608(%rbp,%rcx)
	jmp	.LBB8_3
.LBB8_71:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movzbl	-1(%rax), %eax
	cmpl	$125, %eax
	jne	.LBB8_91
# BB#72:                                #   in Loop: Header=BB8_3 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB8_75
# BB#73:                                #   in Loop: Header=BB8_3 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB8_74
.LBB8_75:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -1172(%rbp)
	jmp	.LBB8_76
	.align	16, 0x90
.LBB8_83:                               #   in Loop: Header=BB8_76 Depth=2
	incl	-1172(%rbp)
.LBB8_76:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1172(%rbp), %eax
	cmpl	-612(%rbp), %eax
	jge	.LBB8_84
# BB#77:                                #   in Loop: Header=BB8_76 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB8_78
# BB#82:                                #   in Loop: Header=BB8_76 Depth=2
	movslq	-1172(%rbp), %rax
	movzbl	-608(%rbp,%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_83
	.align	16, 0x90
.LBB8_78:                               #   in Loop: Header=BB8_76 Depth=2
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_83
# BB#79:                                #   in Loop: Header=BB8_76 Depth=2
	movslq	-1172(%rbp), %rax
	movzbl	-608(%rbp,%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_81
# BB#80:                                #   in Loop: Header=BB8_76 Depth=2
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	incl	-1172(%rbp)
	jmp	.LBB8_76
.LBB8_81:                               #   in Loop: Header=BB8_76 Depth=2
	movslq	-1172(%rbp), %rax
	movb	-608(%rbp,%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	incl	-1172(%rbp)
	jmp	.LBB8_76
.LBB8_64:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -612(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_65
# BB#69:                                #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movzbl	-1(%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_70
.LBB8_156:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -1224(%rbp)
	jmp	.LBB8_157
	.align	16, 0x90
.LBB8_164:                              #   in Loop: Header=BB8_157 Depth=2
	incl	-1224(%rbp)
.LBB8_157:                              #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1224(%rbp), %eax
	cmpl	-612(%rbp), %eax
	jge	.LBB8_15
# BB#158:                               #   in Loop: Header=BB8_157 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB8_159
# BB#163:                               #   in Loop: Header=BB8_157 Depth=2
	movslq	-1224(%rbp), %rax
	movzbl	-608(%rbp,%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_164
	.align	16, 0x90
.LBB8_159:                              #   in Loop: Header=BB8_157 Depth=2
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_164
# BB#160:                               #   in Loop: Header=BB8_157 Depth=2
	movslq	-1224(%rbp), %rax
	movzbl	-608(%rbp,%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_162
# BB#161:                               #   in Loop: Header=BB8_157 Depth=2
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	incl	-1224(%rbp)
	jmp	.LBB8_157
.LBB8_162:                              #   in Loop: Header=BB8_157 Depth=2
	movslq	-1224(%rbp), %rax
	movb	-608(%rbp,%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	incl	-1224(%rbp)
	jmp	.LBB8_157
.LBB8_49:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-56(%rbp), %r8
	cmpl	$0, -60(%rbp)
	movl	$.L.str.44, %r9d
	jne	.LBB8_51
# BB#50:                                # %select.mid
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.45, %r9d
.LBB8_51:                               # %select.end
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$2, %edi
	movl	$22, %esi
	movl	$.L.str.43, %edx
	movl	$1, %ecx
	jmp	.LBB8_52
.LBB8_104:                              #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rdi
	movl	$.L.str.48, %esi
	callq	StringBeginsWith
	testl	%eax, %eax
	jne	.LBB8_106
# BB#105:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rdi
	movl	$.L.str.49, %esi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB8_140
.LBB8_106:                              #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rdi
	movl	$.L.str.49, %esi
	callq	StringBeginsWith
	movl	%eax, -1212(%rbp)
	movl	$0, -1216(%rbp)
	jmp	.LBB8_107
	.align	16, 0x90
.LBB8_114:                              #   in Loop: Header=BB8_107 Depth=2
	incl	-1216(%rbp)
.LBB8_107:                              #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1216(%rbp), %eax
	cmpl	-612(%rbp), %eax
	jge	.LBB8_115
# BB#108:                               #   in Loop: Header=BB8_107 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB8_109
# BB#113:                               #   in Loop: Header=BB8_107 Depth=2
	movslq	-1216(%rbp), %rax
	movzbl	-608(%rbp,%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_114
	.align	16, 0x90
.LBB8_109:                              #   in Loop: Header=BB8_107 Depth=2
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_114
# BB#110:                               #   in Loop: Header=BB8_107 Depth=2
	movslq	-1216(%rbp), %rax
	movzbl	-608(%rbp,%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_112
# BB#111:                               #   in Loop: Header=BB8_107 Depth=2
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	incl	-1216(%rbp)
	jmp	.LBB8_107
.LBB8_112:                              #   in Loop: Header=BB8_107 Depth=2
	movslq	-1216(%rbp), %rax
	movb	-608(%rbp,%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	incl	-1216(%rbp)
	jmp	.LBB8_107
.LBB8_115:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -612(%rbp)
	cmpl	$0, -1212(%rbp)
	movl	$11, %eax
	jne	.LBB8_117
# BB#116:                               # %select.mid2
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$8, %eax
.LBB8_117:                              # %select.end1
                                        #   in Loop: Header=BB8_3 Depth=1
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	%rax, chpt(%rip)
	callq	LexGetToken
	movq	%rax, -1192(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB8_121
# BB#118:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-1192(%rbp), %r8
	addq	$32, %r8
	cmpl	$0, -1212(%rbp)
	movl	$.L.str.49, %eax
	jne	.LBB8_120
# BB#119:                               # %select.mid4
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.48, %eax
.LBB8_120:                              # %select.end3
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	%rax, (%rsp)
	movl	$2, %edi
	movl	$18, %esi
	movl	$.L.str.50, %edx
	movl	$1, %ecx
	movl	$.L.str.32, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_121:                              #   in Loop: Header=BB8_3 Depth=1
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	Parse
	movq	%rax, -1184(%rbp)
	movq	chpt(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	-1184(%rbp), %rdi
	xorl	%esi, %esi
	callq	ReplaceWithTidy
	movq	%rax, -1184(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB8_124
# BB#122:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-1184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB8_124
# BB#123:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-1184(%rbp), %r8
	addq	$32, %r8
	movl	$2, %edi
	movl	$19, %esi
	movl	$.L.str.51, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB8_124:                              #   in Loop: Header=BB8_3 Depth=1
	movq	-1184(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movl	$2, %r8d
	cmpl	$0, -1212(%rbp)
	jne	.LBB8_126
# BB#125:                               # %select.mid6
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %r8d
.LBB8_126:                              # %select.end5
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.36, %esi
	movl	$1, %ecx
	callq	DefineFile
	movw	%ax, -1206(%rbp)
	movq	-1184(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB8_128
# BB#127:                               #   in Loop: Header=BB8_3 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB8_129
.LBB8_128:                              #   in Loop: Header=BB8_3 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB8_130
.LBB8_91:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -1176(%rbp)
	jmp	.LBB8_92
	.align	16, 0x90
.LBB8_99:                               #   in Loop: Header=BB8_92 Depth=2
	incl	-1176(%rbp)
.LBB8_92:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1176(%rbp), %eax
	cmpl	-612(%rbp), %eax
	jge	.LBB8_15
# BB#93:                                #   in Loop: Header=BB8_92 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB8_94
# BB#98:                                #   in Loop: Header=BB8_92 Depth=2
	movslq	-1176(%rbp), %rax
	movzbl	-608(%rbp,%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_99
	.align	16, 0x90
.LBB8_94:                               #   in Loop: Header=BB8_92 Depth=2
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_99
# BB#95:                                #   in Loop: Header=BB8_92 Depth=2
	movslq	-1176(%rbp), %rax
	movzbl	-608(%rbp,%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_97
# BB#96:                                #   in Loop: Header=BB8_92 Depth=2
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	incl	-1176(%rbp)
	jmp	.LBB8_92
.LBB8_97:                               #   in Loop: Header=BB8_92 Depth=2
	movslq	-1176(%rbp), %rax
	movb	-608(%rbp,%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	incl	-1176(%rbp)
	jmp	.LBB8_92
.LBB8_15:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -612(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_16
# BB#165:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movzbl	-1(%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_3
.LBB8_16:                               #   in Loop: Header=BB8_3 Depth=1
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_3
# BB#17:                                #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movzbl	-1(%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_179
# BB#18:                                #   in Loop: Header=BB8_3 Depth=1
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	jmp	.LBB8_3
.LBB8_179:                              #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movb	-1(%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	jmp	.LBB8_3
.LBB8_84:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -612(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_85
# BB#89:                                #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movzbl	-1(%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_90
.LBB8_43:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -612(%rbp)
.LBB8_44:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movb	-1(%rax), %al
	movslq	-612(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -612(%rbp)
	movb	%al, -608(%rbp,%rcx)
.LBB8_45:                               #   in Loop: Header=BB8_3 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB8_47
# BB#46:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -84(%rbp)
.LBB8_47:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, chpt(%rip)
	callq	srcnext
	movl	file_pos+4(%rip), %eax
	leal	1(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	andl	$-1048576, %eax         # imm = 0xFFFFFFFFFFF00000
	orl	%ecx, %eax
	movl	%eax, file_pos+4(%rip)
	andl	$1048575, %eax          # imm = 0xFFFFF
	movl	%eax, file_pos+4(%rip)
	movq	chpt(%rip), %rax
	movq	%rax, -72(%rbp)
	decq	%rax
	movq	%rax, startline(%rip)
	jmp	.LBB8_3
.LBB8_65:                               #   in Loop: Header=BB8_3 Depth=1
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_70
# BB#66:                                #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movzbl	-1(%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_68
# BB#67:                                #   in Loop: Header=BB8_3 Depth=1
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	incl	-76(%rbp)
	jmp	.LBB8_3
.LBB8_70:                               #   in Loop: Header=BB8_3 Depth=1
	incl	-76(%rbp)
	jmp	.LBB8_3
.LBB8_85:                               #   in Loop: Header=BB8_3 Depth=1
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_90
# BB#86:                                #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movzbl	-1(%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_88
# BB#87:                                #   in Loop: Header=BB8_3 Depth=1
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	decl	-76(%rbp)
	jmp	.LBB8_3
.LBB8_90:                               #   in Loop: Header=BB8_3 Depth=1
	decl	-76(%rbp)
	jmp	.LBB8_3
.LBB8_129:                              #   in Loop: Header=BB8_3 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB8_130:                              #   in Loop: Header=BB8_3 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movzwl	-1206(%rbp), %edi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	OpenFile
	movq	%rax, -1200(%rbp)
	testq	%rax, %rax
	jne	.LBB8_132
# BB#131:                               #   in Loop: Header=BB8_3 Depth=1
	movzwl	-1206(%rbp), %edi
	callq	PosOfFile
	movq	%rax, %r12
	movzwl	-1206(%rbp), %edi
	callq	FullFileName
	movq	%rax, %r9
	movl	$2, %edi
	movl	$20, %esi
	movl	$.L.str.52, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r12, %r8
	callq	Error
	jmp	.LBB8_132
	.align	16, 0x90
.LBB8_138:                              #   in Loop: Header=BB8_132 Depth=2
	movl	-1204(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
.LBB8_132:                              #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1200(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -1204(%rbp)
	cmpl	$-1, %eax
	je	.LBB8_139
# BB#133:                               #   in Loop: Header=BB8_132 Depth=2
	cmpq	$0, -40(%rbp)
	jne	.LBB8_138
# BB#134:                               #   in Loop: Header=BB8_132 Depth=2
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_132
# BB#135:                               #   in Loop: Header=BB8_132 Depth=2
	movslq	-1204(%rbp), %rax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_137
# BB#136:                               #   in Loop: Header=BB8_132 Depth=2
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	jmp	.LBB8_132
.LBB8_137:                              #   in Loop: Header=BB8_132 Depth=2
	movb	-1204(%rbp), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	jmp	.LBB8_132
.LBB8_139:                              #   in Loop: Header=BB8_3 Depth=1
	movq	-1200(%rbp), %rdi
	callq	fclose
	jmp	.LBB8_3
.LBB8_68:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movb	-1(%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	incl	-76(%rbp)
	jmp	.LBB8_3
.LBB8_140:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -1220(%rbp)
	jmp	.LBB8_141
	.align	16, 0x90
.LBB8_148:                              #   in Loop: Header=BB8_141 Depth=2
	incl	-1220(%rbp)
.LBB8_141:                              #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1220(%rbp), %eax
	cmpl	-612(%rbp), %eax
	jge	.LBB8_149
# BB#142:                               #   in Loop: Header=BB8_141 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB8_143
# BB#147:                               #   in Loop: Header=BB8_141 Depth=2
	movslq	-1220(%rbp), %rax
	movzbl	-608(%rbp,%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_148
	.align	16, 0x90
.LBB8_143:                              #   in Loop: Header=BB8_141 Depth=2
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_148
# BB#144:                               #   in Loop: Header=BB8_141 Depth=2
	movslq	-1220(%rbp), %rax
	movzbl	-608(%rbp,%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_146
# BB#145:                               #   in Loop: Header=BB8_141 Depth=2
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	incl	-1220(%rbp)
	jmp	.LBB8_141
.LBB8_146:                              #   in Loop: Header=BB8_141 Depth=2
	movslq	-1220(%rbp), %rax
	movb	-608(%rbp,%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	incl	-1220(%rbp)
	jmp	.LBB8_141
.LBB8_149:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -612(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_150
# BB#154:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %edi
	movq	-40(%rbp), %rsi
	callq	_IO_putc
	jmp	.LBB8_155
.LBB8_74:                               #   in Loop: Header=BB8_3 Depth=1
	decq	-72(%rbp)
	movl	$1, -80(%rbp)
	jmp	.LBB8_3
.LBB8_88:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movb	-1(%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	decl	-76(%rbp)
	jmp	.LBB8_3
.LBB8_150:                              #   in Loop: Header=BB8_3 Depth=1
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_155
# BB#151:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	chtbl(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB8_153
# BB#152:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-1152(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	incq	-72(%rbp)
	jmp	.LBB8_3
.LBB8_155:                              #   in Loop: Header=BB8_3 Depth=1
	incq	-72(%rbp)
	jmp	.LBB8_3
.LBB8_153:                              #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movslq	-1140(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1140(%rbp)
	movb	%al, -1136(%rbp,%rcx)
	incq	-72(%rbp)
	jmp	.LBB8_3
.LBB8_167:
	cmpq	$0, -40(%rbp)
	je	.LBB8_168
# BB#172:
	movq	-40(%rbp), %rsi
	movl	$10, %edi
	callq	_IO_putc
	jmp	.LBB8_173
.LBB8_168:
	cmpl	$511, -1140(%rbp)       # imm = 0x1FF
	jg	.LBB8_173
# BB#169:
	movzbl	chtbl+10(%rip), %eax
	cmpl	$8, %eax
	jne	.LBB8_171
# BB#170:
	movq	-1152(%rbp), %rdi
	leaq	-1136(%rbp), %rsi
	leaq	-1140(%rbp), %rdx
	callq	BuildLines
	movq	%rax, -1152(%rbp)
	jmp	.LBB8_173
.LBB8_171:
	movslq	-1140(%rbp), %rax
	leal	1(%rax), %ecx
	movl	%ecx, -1140(%rbp)
	movb	$10, -1136(%rbp,%rax)
.LBB8_173:
	movq	-72(%rbp), %rax
	subq	startline(%rip), %rax
	cmpq	$2048, %rax             # imm = 0x800
	jl	.LBB8_175
# BB#174:
	movl	$1048575, %eax          # imm = 0xFFFFF
	andl	file_pos+4(%rip), %eax
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, file_pos+4(%rip)
	movl	$2, %edi
	movl	$21, %esi
	movl	$.L.str.41, %edx
	movl	$1, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
.LBB8_175:
	movq	-72(%rbp), %rax
	movq	%rax, chpt(%rip)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_178
# BB#176:
	cmpq	$0, -1152(%rbp)
	jne	.LBB8_178
# BB#177:
	movl	$11, %edi
	movl	$.L.str.36, %esi
	movl	$file_pos, %edx
	callq	MakeWord
	movq	%rax, -1152(%rbp)
.LBB8_178:
	movq	-1152(%rbp), %rax
	addq	$1200, %rsp             # imm = 0x4B0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	LexScanVerbatim, .Lfunc_end8-LexScanVerbatim
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_54
	.quad	.LBB8_100
	.quad	.LBB8_6
	.quad	.LBB8_6
	.quad	.LBB8_6
	.quad	.LBB8_19
	.quad	.LBB8_19
	.quad	.LBB8_19
	.quad	.LBB8_32
	.quad	.LBB8_48

	.text
	.align	16, 0x90
	.type	BuildLines,@function
BuildLines:                             # @BuildLines
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	(%rdx), %eax
	addl	$69, %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	decq	%rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, zz_size(%rip)
	cltq
	cmpq	$265, %rax              # imm = 0x109
	jb	.LBB9_2
# BB#1:
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	movl	$file_pos, %r8d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB9_5
.LBB9_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB9_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB9_5
.LBB9_3:
	movl	zz_size(%rip), %edi
	movl	$file_pos, %esi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB9_5:
	movb	zz_size(%rip), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 33(%rcx)
	movq	zz_hold(%rip), %rax
	movb	$11, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -32(%rbp)
	movw	file_pos+2(%rip), %cx
	movw	%cx, 34(%rax)
	movl	$1048575, %eax          # imm = 0xFFFFF
	movl	file_pos+4(%rip), %ecx
	andl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%ecx, %edi
	movl	%edi, 36(%rdx)
	andl	file_pos+4(%rip), %esi
	movq	-32(%rbp), %rcx
	andl	36(%rcx), %eax
	orl	%esi, %eax
	movl	%eax, 36(%rcx)
	movl	$0, -60(%rbp)
	jmp	.LBB9_6
	.align	16, 0x90
.LBB9_7:                                #   in Loop: Header=BB9_6 Depth=1
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %cl
	movq	-32(%rbp), %rdx
	movb	%cl, 64(%rdx,%rax)
	incl	-60(%rbp)
.LBB9_6:                                # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jl	.LBB9_7
# BB#8:
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$0, 64(%rcx,%rax)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	cmpq	$0, -8(%rbp)
	je	.LBB9_9
# BB#10:
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB9_27
# BB#11:
	movzbl	zz_lengths+19(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB9_13
# BB#12:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB9_16
.LBB9_9:
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_66
.LBB9_27:
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_28
.LBB9_13:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB9_14
# BB#15:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB9_16
.LBB9_14:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB9_16:
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
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-8(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-8(%rbp), %rax
	andl	36(%rax), %esi
	movq	-40(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB9_18
# BB#17:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB9_21
.LBB9_18:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB9_19
# BB#20:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB9_21
.LBB9_19:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB9_21:
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
	je	.LBB9_24
# BB#22:
	cmpq	$0, zz_res(%rip)
	je	.LBB9_24
# BB#23:
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
.LBB9_24:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB9_28
# BB#25:
	cmpq	$0, zz_res(%rip)
	je	.LBB9_28
# BB#26:
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
.LBB9_28:
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB9_30
# BB#29:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB9_33
.LBB9_30:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB9_31
# BB#32:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB9_33
.LBB9_31:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB9_33:
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
	andb	$-2, 45(%rax)
	movq	-48(%rbp), %rax
	andw	$-513, 44(%rax)         # imm = 0xFFFFFFFFFFFFFDFF
	movw	file_pos+2(%rip), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movl	$1048575, %eax          # imm = 0xFFFFF
	movl	file_pos+4(%rip), %ecx
	andl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%ecx, %edi
	movl	%edi, 36(%rdx)
	andl	file_pos+4(%rip), %esi
	movq	-48(%rbp), %rcx
	andl	36(%rcx), %eax
	orl	%esi, %eax
	movl	%eax, 36(%rcx)
	movl	$11, %edi
	movl	$.L.str.56, %esi
	movl	$file_pos, %edx
	callq	MakeWord
	movq	%rax, -56(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB9_35
# BB#34:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB9_38
.LBB9_35:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB9_36
# BB#37:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB9_38
.LBB9_36:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB9_38:
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
	je	.LBB9_41
# BB#39:
	cmpq	$0, zz_res(%rip)
	je	.LBB9_41
# BB#40:
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
.LBB9_41:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB9_44
# BB#42:
	cmpq	$0, zz_res(%rip)
	je	.LBB9_44
# BB#43:
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
.LBB9_44:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB9_46
# BB#45:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB9_49
.LBB9_46:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB9_47
# BB#48:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB9_49
.LBB9_47:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB9_49:
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
	je	.LBB9_52
# BB#50:
	cmpq	$0, zz_res(%rip)
	je	.LBB9_52
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
.LBB9_52:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB9_55
# BB#53:
	cmpq	$0, zz_res(%rip)
	je	.LBB9_55
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
.LBB9_55:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB9_57
# BB#56:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB9_60
.LBB9_57:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB9_58
# BB#59:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB9_60
.LBB9_58:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB9_60:
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
	je	.LBB9_63
# BB#61:
	cmpq	$0, zz_res(%rip)
	je	.LBB9_63
# BB#62:
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
.LBB9_63:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB9_66
# BB#64:
	cmpq	$0, zz_res(%rip)
	je	.LBB9_66
# BB#65:
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
.LBB9_66:
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	BuildLines, .Lfunc_end9-BuildLines
	.cfi_endproc

	.type	chtbl,@object           # @chtbl
	.local	chtbl
	.comm	chtbl,256,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abcdefghijklmnopqrstuvwxyz"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"@"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"_"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\300\301\302\303\304\305\306\307"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\310\311\312\313\314\315\316\317"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\320\321\322\323\324\325\326"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\330\331\332\333\334\335\336\337"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\340\341\342\343\344\345\346\347"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\350\351\352\353\354\355\356\357"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\360\361\362\363\364\365\366"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\370\371\372\373\374\375\376\377"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\""
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\\"
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"#"
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	" "
	.size	.L.str.15, 2

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\f"
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\t"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\n"
	.size	.L.str.18, 2

	.type	stack_free,@object      # @stack_free
	.local	stack_free
	.comm	stack_free,4,4
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"too many open files when opening include file %s; open files are:"
	.size	.L.str.19, 66

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"too many open files when opening database file %s; open files are:"
	.size	.L.str.20, 67

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"  %s"
	.size	.L.str.21, 5

	.type	lex_stack,@object       # @lex_stack
	.local	lex_stack
	.comm	lex_stack,1200,16
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"exiting now"
	.size	.L.str.22, 12

	.type	chpt,@object            # @chpt
	.local	chpt
	.comm	chpt,8,8
	.type	frst,@object            # @frst
	.local	frst
	.comm	frst,8,8
	.type	limit,@object           # @limit
	.local	limit
	.comm	limit,8,8
	.type	buf,@object             # @buf
	.local	buf
	.comm	buf,8,8
	.type	blksize,@object         # @blksize
	.local	blksize
	.comm	blksize,4,4
	.type	last_char,@object       # @last_char
	.local	last_char
	.comm	last_char,1,1
	.type	startline,@object       # @startline
	.local	startline
	.comm	startline,8,8
	.type	this_file,@object       # @this_file
	.local	this_file
	.comm	this_file,2,2
	.type	fp,@object              # @fp
	.local	fp
	.comm	fp,8,8
	.type	ftype,@object           # @ftype
	.local	ftype
	.comm	ftype,2,2
	.type	next_token,@object      # @next_token
	.local	next_token
	.comm	next_token,8,8
	.type	offset,@object          # @offset
	.local	offset
	.comm	offset,4,4
	.type	first_line_num,@object  # @first_line_num
	.local	first_line_num
	.comm	first_line_num,4,4
	.type	same_file,@object       # @same_file
	.local	same_file
	.comm	same_file,4,4
	.type	mem_block,@object       # @mem_block
	.local	mem_block
	.comm	mem_block,8,8
	.type	file_pos,@object        # @file_pos
	.local	file_pos
	.comm	file_pos,8,4
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"run out of memory when opening file %s"
	.size	.L.str.23, 39

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"assert failed in %s"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"LexPop: stack_free <= 0!"
	.size	.L.str.25, 25

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"illegal macro invocation in database"
	.size	.L.str.26, 37

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"character %c outside quoted string"
	.size	.L.str.27, 35

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"cannot open file %s"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"unknown file type"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"word is too long"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"recursion in macro"
	.size	.L.str.31, 19

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"{"
	.size	.L.str.32, 2

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s expected (after %s)"
	.size	.L.str.33, 23

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"name of include file expected here"
	.size	.L.str.34, 35

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	".lt"
	.size	.L.str.35, 4

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.zero	1
	.size	.L.str.36, 1

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"unterminated string"
	.size	.L.str.37, 20

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"skipping null character in string"
	.size	.L.str.38, 34

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"LexGetToken: error in quoted string"
	.size	.L.str.39, 36

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"LexGetToken: bad chtbl[]"
	.size	.L.str.40, 25

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"line is too long (or final newline missing)"
	.size	.L.str.41, 44

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"filter parameter in macro"
	.size	.L.str.42, 26

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"end of file reached while reading %s"
	.size	.L.str.43, 37

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"@RawVerbatim"
	.size	.L.str.44, 13

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"@Verbatim"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"end of file reached while reading filter parameter"
	.size	.L.str.46, 51

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"@End"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"@Include"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"@SysInclude"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"expected %s here (after %s)"
	.size	.L.str.50, 28

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"expected file name here"
	.size	.L.str.51, 24

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"cannot open include file %s"
	.size	.L.str.52, 28

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"unreadable character (octal %o)"
	.size	.L.str.53, 32

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"LexScanVerbatim: bad chtbl[]"
	.size	.L.str.54, 29

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"a database file must end with a newline; this one doesn't"
	.size	.L.str.55, 58

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"1vx"
	.size	.L.str.56, 4


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
