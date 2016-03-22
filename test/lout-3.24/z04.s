	.text
	.file	"z04.dce"
	.globl	NewToken
	.align	16, 0x90
	.type	NewToken,@function
NewToken:                               # @NewToken
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
	subq	$48, %rsp
	movb	%dil, -1(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%dl, -17(%rbp)
	movb	%cl, -18(%rbp)
	movb	%r8b, -19(%rbp)
	movq	%r9, -32(%rbp)
	movzbl	-1(%rbp), %eax
	movzbl	zz_lengths(%rax), %eax
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
	movb	-1(%rbp), %al
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
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rcx
	movw	2(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-16(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	4(%rax), %eax
	andl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-16(%rbp), %rax
	andl	4(%rax), %esi
	movq	-40(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movb	-17(%rbp), %al
	movq	-40(%rbp), %rcx
	movb	%al, 42(%rcx)
	movb	-18(%rbp), %al
	movq	-40(%rbp), %rcx
	movb	%al, 41(%rcx)
	movb	-19(%rbp), %al
	movq	-40(%rbp), %rcx
	movb	%al, 40(%rcx)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	NewToken, .Lfunc_end0-NewToken
	.cfi_endproc

	.globl	CopyTokenList
	.align	16, 0x90
	.type	CopyTokenList,@function
CopyTokenList:                          # @CopyTokenList
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
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB1_11
	.align	16, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_3
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_4
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rsi
	movzbl	32(%rsi), %edi
	addq	$64, %rsi
	movq	-16(%rbp), %rdx
	callq	MakeWord
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rcx
	movb	42(%rcx), %cl
	movb	%cl, 42(%rax)
	movq	-24(%rbp), %rax
	movb	41(%rax), %al
	movq	-32(%rbp), %rcx
	movb	%al, 41(%rcx)
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	80(%rax), %r9
	movzbl	40(%rax), %r8d
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %edx
	movzbl	32(%rax), %edi
	callq	NewToken
	movq	%rax, -32(%rbp)
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_6
# BB#7:                                 #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_8
# BB#9:                                 #   in Loop: Header=BB1_1 Depth=1
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
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	movq	zz_hold(%rip), %rax
.LBB1_10:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	-8(%rbp), %rax
	jne	.LBB1_1
.LBB1_11:
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	CopyTokenList, .Lfunc_end1-CopyTokenList
	.cfi_endproc

	.globl	EchoCatOp
	.align	16, 0x90
	.type	EchoCatOp,@function
EchoCatOp:                              # @EchoCatOp
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
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %eax
	cmpl	$17, %eax
	je	.LBB2_17
# BB#1:
	cmpl	$18, %eax
	jne	.LBB2_2
# BB#10:
	cmpl	$0, -16(%rbp)
	je	.LBB2_14
# BB#11:
	movl	$.L.str.5, %eax
	cmpl	$0, -20(%rbp)
	jne	.LBB2_13
# BB#12:                                # %select.mid4
	movl	$.L.str.6, %eax
.LBB2_13:                               # %select.end3
	movq	%rax, -8(%rbp)
	jmp	.LBB2_25
.LBB2_17:
	cmpl	$0, -16(%rbp)
	je	.LBB2_21
# BB#18:
	movl	$.L.str.9, %eax
	cmpl	$0, -20(%rbp)
	jne	.LBB2_20
# BB#19:                                # %select.mid8
	movl	$.L.str.10, %eax
.LBB2_20:                               # %select.end7
	movq	%rax, -8(%rbp)
	jmp	.LBB2_25
.LBB2_2:
	cmpl	$19, %eax
	jne	.LBB2_24
# BB#3:
	cmpl	$0, -16(%rbp)
	je	.LBB2_7
# BB#4:
	movl	$.L.str.1, %eax
	cmpl	$0, -20(%rbp)
	jne	.LBB2_6
# BB#5:                                 # %select.mid
	movl	$.L.str.2, %eax
.LBB2_6:                                # %select.end
	movq	%rax, -8(%rbp)
	jmp	.LBB2_25
.LBB2_24:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	$.L.str.14, -8(%rbp)
	jmp	.LBB2_25
.LBB2_14:
	movl	$.L.str.7, %eax
	cmpl	$0, -20(%rbp)
	jne	.LBB2_16
# BB#15:                                # %select.mid6
	movl	$.L.str.8, %eax
.LBB2_16:                               # %select.end5
	movq	%rax, -8(%rbp)
	jmp	.LBB2_25
.LBB2_21:
	movl	$.L.str.11, %eax
	cmpl	$0, -20(%rbp)
	jne	.LBB2_23
# BB#22:                                # %select.mid10
	movl	$.L.str.10, %eax
.LBB2_23:                               # %select.end9
	movq	%rax, -8(%rbp)
	jmp	.LBB2_25
.LBB2_7:
	movl	$.L.str.3, %eax
	cmpl	$0, -20(%rbp)
	jne	.LBB2_9
# BB#8:                                 # %select.mid2
	movl	$.L.str.4, %eax
.LBB2_9:                                # %select.end1
	movq	%rax, -8(%rbp)
.LBB2_25:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	EchoCatOp, .Lfunc_end2-EchoCatOp
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"word is too long"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"^/"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"^//"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"//"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"^|"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"^||"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"|"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"||"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"^&"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"??"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"&"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"assert failed in %s"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"EchoCatOp"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.zero	1
	.size	.L.str.14, 1


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
