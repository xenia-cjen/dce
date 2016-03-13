	.text
	.file	"z28.opt"
	.globl	ErrorInit
	.align	16, 0x90
	.type	ErrorInit,@function
ErrorInit:                              # @ErrorInit
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
	cmpq	$0, fp(%rip)
	je	.LBB0_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$28, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_2:
	movq	-8(%rbp), %rdi
	movl	$.L.str.1, %esi
	callq	fopen
	movq	%rax, fp(%rip)
	testq	%rax, %rax
	jne	.LBB0_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$28, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_4:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ErrorInit, .Lfunc_end0-ErrorInit
	.cfi_endproc

	.globl	Error
	.align	16, 0x90
	.type	Error,@function
Error:                                  # @Error
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
	pushq	%r14
	pushq	%rbx
	subq	$752, %rsp              # imm = 0x2F0
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	testb	%al, %al
	je	.LBB1_2
# BB#1:
	movaps	%xmm0, -720(%rbp)
	movaps	%xmm1, -704(%rbp)
	movaps	%xmm2, -688(%rbp)
	movaps	%xmm3, -672(%rbp)
	movaps	%xmm4, -656(%rbp)
	movaps	%xmm5, -640(%rbp)
	movaps	%xmm6, -624(%rbp)
	movaps	%xmm7, -608(%rbp)
.LBB1_2:
	movq	%r9, -728(%rbp)
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	leaq	-768(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$48, -76(%rbp)
	movl	$40, -80(%rbp)
	cmpq	$0, MsgCat(%rip)
	je	.LBB1_4
# BB#3:
	movq	MsgCat(%rip), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	catgets
	movq	%rax, %rsi
	jmp	.LBB1_5
.LBB1_4:
	movq	-32(%rbp), %rsi
.LBB1_5:
	leaq	-592(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	callq	vsprintf
	cmpq	$0, fp(%rip)
	jne	.LBB1_7
# BB#6:
	movq	stderr(%rip), %rax
	movq	%rax, fp(%rip)
.LBB1_7:
	movl	-36(%rbp), %eax
	cmpl	$2, %eax
	je	.LBB1_29
# BB#8:
	cmpl	$1, %eax
	je	.LBB1_22
# BB#9:
	testl	%eax, %eax
	je	.LBB1_10
# BB#41:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_42
	.align	16, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_22 Depth=1
	movl	$1, %edi
	callq	LeaveErrorBlock
.LBB1_22:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, block_top(%rip)
	jg	.LBB1_23
# BB#24:
	cmpl	$0, AltErrorFormat(%rip)
	je	.LBB1_27
# BB#25:
	movq	fp(%rip), %r14
	movl	$.L.str.10, %ebx
	cmpq	$0, MsgCat(%rip)
	je	.LBB1_16
# BB#26:
	movq	MsgCat(%rip), %rdi
	movl	$28, %esi
	movl	$8, %edx
	movl	$.L.str.10, %ecx
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_10 Depth=1
	movl	$1, %edi
	callq	LeaveErrorBlock
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, block_top(%rip)
	jg	.LBB1_11
# BB#12:
	cmpl	$0, AltErrorFormat(%rip)
	je	.LBB1_17
# BB#13:
	movq	fp(%rip), %r14
	movl	$.L.str.8, %ebx
	cmpq	$0, MsgCat(%rip)
	je	.LBB1_16
# BB#14:
	movq	MsgCat(%rip), %rdi
	movl	$28, %esi
	movl	$7, %edx
	movl	$.L.str.8, %ecx
.LBB1_15:
	callq	catgets
	movq	%rax, %rbx
.LBB1_16:
	movq	-48(%rbp), %rdi
	callq	EchoAltFilePos
	jmp	.LBB1_21
.LBB1_29:
	cmpl	$0, block_top(%rip)
	je	.LBB1_31
# BB#30:
	movslq	block_top(%rip), %rax
	cmpl	$0, print_block-4(,%rax,4)
	je	.LBB1_35
.LBB1_31:
	cmpl	$0, AltErrorFormat(%rip)
	je	.LBB1_34
# BB#32:
	movq	fp(%rip), %rbx
	movq	-48(%rbp), %rdi
	callq	EchoAltFilePos
	movq	%rax, %rdx
	leaq	-592(%rbp), %rcx
	movl	$.L.str.12, %esi
	jmp	.LBB1_33
.LBB1_27:
	movq	-48(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	PrintFileBanner
	movq	fp(%rip), %r14
	movl	$.L.str.11, %ebx
	cmpq	$0, MsgCat(%rip)
	je	.LBB1_20
# BB#28:
	movq	MsgCat(%rip), %rdi
	movl	$28, %esi
	movl	$5, %edx
	movl	$.L.str.11, %ecx
	jmp	.LBB1_19
.LBB1_34:
	movq	-48(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	PrintFileBanner
	movq	fp(%rip), %rbx
	movq	-48(%rbp), %rdi
	callq	EchoFileLine
	movq	%rax, %rdx
	leaq	-592(%rbp), %rcx
	movl	$.L.str.13, %esi
.LBB1_33:
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$1, error_seen(%rip)
.LBB1_42:
	xorl	%eax, %eax
	addq	$752, %rsp              # imm = 0x2F0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB1_17:
	movq	-48(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	PrintFileBanner
	movq	fp(%rip), %r14
	movl	$.L.str.9, %ebx
	cmpq	$0, MsgCat(%rip)
	je	.LBB1_20
# BB#18:
	movq	MsgCat(%rip), %rdi
	movl	$28, %esi
	movl	$4, %edx
	movl	$.L.str.9, %ecx
.LBB1_19:
	callq	catgets
	movq	%rax, %rbx
.LBB1_20:
	movq	-48(%rbp), %rdi
	callq	EchoFileLine
.LBB1_21:
	movq	%rax, %rdx
	leaq	-592(%rbp), %rcx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB1_35:
	cmpl	$19, mess_top(%rip)
	jg	.LBB1_40
# BB#36:
	cmpl	$0, AltErrorFormat(%rip)
	je	.LBB1_39
# BB#37:
	movslq	mess_top(%rip), %rax
	leal	1(%rax), %ecx
	movl	%ecx, mess_top(%rip)
	shlq	$9, %rax
	leaq	message(%rax), %rbx
	movq	-48(%rbp), %rdi
	callq	EchoAltFilePos
	movq	%rax, %rdx
	leaq	-592(%rbp), %rcx
	movl	$.L.str.12, %esi
	jmp	.LBB1_38
.LBB1_40:
	movq	-48(%rbp), %r8
	movl	$28, %edi
	movl	$6, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movl	$1, error_seen(%rip)
	jmp	.LBB1_42
.LBB1_39:
	movq	-48(%rbp), %rax
	movzwl	2(%rax), %eax
	movslq	mess_top(%rip), %rcx
	movl	%eax, message_fnum(,%rcx,4)
	movslq	mess_top(%rip), %rax
	leal	1(%rax), %ecx
	movl	%ecx, mess_top(%rip)
	shlq	$9, %rax
	leaq	message(%rax), %rbx
	movq	-48(%rbp), %rdi
	callq	EchoFileLine
	movq	%rax, %rdx
	leaq	-592(%rbp), %rcx
	movl	$.L.str.13, %esi
.LBB1_38:
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movl	$1, error_seen(%rip)
	jmp	.LBB1_42
.Lfunc_end1:
	.size	Error, .Lfunc_end1-Error
	.cfi_endproc

	.globl	ErrorSeen
	.align	16, 0x90
	.type	ErrorSeen,@function
ErrorSeen:                              # @ErrorSeen
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
	movl	error_seen(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ErrorSeen, .Lfunc_end2-ErrorSeen
	.cfi_endproc

	.globl	EnterErrorBlock
	.align	16, 0x90
	.type	EnterErrorBlock,@function
EnterErrorBlock:                        # @EnterErrorBlock
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$19, block_top(%rip)
	jg	.LBB3_2
# BB#1:
	movl	-4(%rbp), %eax
	movslq	block_top(%rip), %rcx
	movl	%eax, print_block(,%rcx,4)
	movl	mess_top(%rip), %eax
	movslq	block_top(%rip), %rcx
	movl	%eax, start_block(,%rcx,4)
	incl	block_top(%rip)
	jmp	.LBB3_3
.LBB3_2:
	movq	no_fpos(%rip), %r8
	movl	$28, %edi
	movl	$3, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	EnterErrorBlock, .Lfunc_end3-EnterErrorBlock
	.cfi_endproc

	.globl	LeaveErrorBlock
	.align	16, 0x90
	.type	LeaveErrorBlock,@function
LeaveErrorBlock:                        # @LeaveErrorBlock
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, block_top(%rip)
	jg	.LBB4_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_2:
	cmpl	$0, -4(%rbp)
	jne	.LBB4_5
# BB#3:
	movslq	block_top(%rip), %rax
	cmpl	$0, print_block-4(,%rax,4)
	je	.LBB4_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_5:
	cmpq	$0, fp(%rip)
	jne	.LBB4_7
# BB#6:
	movq	stderr(%rip), %rax
	movq	%rax, fp(%rip)
.LBB4_7:
	cmpl	$0, -4(%rbp)
	je	.LBB4_13
# BB#8:
	movslq	block_top(%rip), %rax
	movl	start_block-4(,%rax,4), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB4_9
	.align	16, 0x90
.LBB4_11:                               #   in Loop: Header=BB4_9 Depth=1
	movslq	-8(%rbp), %rax
	shlq	$9, %rax
	leaq	message(%rax), %rdi
	movq	fp(%rip), %rsi
	callq	fputs
	incl	-8(%rbp)
.LBB4_9:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	mess_top(%rip), %eax
	jge	.LBB4_13
# BB#10:                                #   in Loop: Header=BB4_9 Depth=1
	cmpl	$0, AltErrorFormat(%rip)
	jne	.LBB4_11
# BB#12:                                #   in Loop: Header=BB4_9 Depth=1
	movslq	-8(%rbp), %rax
	movl	message_fnum(,%rax,4), %edi
	callq	PrintFileBanner
	jmp	.LBB4_11
.LBB4_13:
	decl	block_top(%rip)
	movslq	block_top(%rip), %rax
	movl	start_block(,%rax,4), %eax
	movl	%eax, mess_top(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	LeaveErrorBlock, .Lfunc_end4-LeaveErrorBlock
	.cfi_endproc

	.align	16, 0x90
	.type	PrintFileBanner,@function
PrintFileBanner:                        # @PrintFileBanner
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
	pushq	%rbx
	pushq	%rax
.Ltmp20:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	cmpl	PrintFileBanner.CurrentFileNum(%rip), %edi
	je	.LBB5_2
# BB#1:
	movq	fp(%rip), %rbx
	movzwl	-12(%rbp), %edi
	callq	EchoFileSource
	movq	%rax, %rcx
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
	movl	-12(%rbp), %eax
	movl	%eax, PrintFileBanner.CurrentFileNum(%rip)
.LBB5_2:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	PrintFileBanner, .Lfunc_end5-PrintFileBanner
	.cfi_endproc

	.globl	CheckErrorBlocks
	.align	16, 0x90
	.type	CheckErrorBlocks,@function
CheckErrorBlocks:                       # @CheckErrorBlocks
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
	cmpl	$0, block_top(%rip)
	je	.LBB6_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_2:
	popq	%rbp
	retq
.Lfunc_end6:
	.size	CheckErrorBlocks, .Lfunc_end6-CheckErrorBlocks
	.cfi_endproc

	.type	fp,@object              # @fp
	.local	fp
	.comm	fp,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-e argument appears twice in command line"
	.size	.L.str, 42

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cannot open error file %s"
	.size	.L.str.2, 26

	.type	error_seen,@object      # @error_seen
	.local	error_seen
	.comm	error_seen,4,4
	.type	block_top,@object       # @block_top
	.local	block_top
	.comm	block_top,4,4
	.type	print_block,@object     # @print_block
	.local	print_block
	.comm	print_block,80,16
	.type	mess_top,@object        # @mess_top
	.local	mess_top
	.comm	mess_top,4,4
	.type	start_block,@object     # @start_block
	.local	start_block
	.comm	start_block,80,16
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"too many levels of error messages"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"assert failed in %s"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"LeaveErrorBlock: no matching EnterErrorBlock!"
	.size	.L.str.5, 46

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"LeaveErrorBlock: commit!"
	.size	.L.str.6, 25

	.type	message,@object         # @message
	.local	message
	.comm	message,10240,16
	.type	message_fnum,@object    # @message_fnum
	.local	message_fnum
	.comm	message_fnum,80,16
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"CheckErrorBlocks: block_top != 0!"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s internal error: %s\n"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"  %6s internal error: %s\n"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s: fatal error: %s\n"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"  %6s: fatal error: %s\n"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s: %s\n"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"  %6s: %s\n"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"too many error messages"
	.size	.L.str.14, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Error: invalid error type"
	.size	.L.str.15, 26

	.type	PrintFileBanner.CurrentFileNum,@object # @PrintFileBanner.CurrentFileNum
	.data
	.align	4
PrintFileBanner.CurrentFileNum:
	.long	4294967295              # 0xffffffff
	.size	PrintFileBanner.CurrentFileNum, 4

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"lout%s:\n"
	.size	.L.str.16, 9


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
