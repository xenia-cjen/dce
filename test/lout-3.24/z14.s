	.text
	.file	"z14.dce"
	.globl	FillObject
	.align	16, 0x90
	.type	FillObject,@function
FillObject:                             # @FillObject
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
	subq	$584, %rsp              # imm = 0x248
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
	movq	16(%rbp), %rax
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
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
	movq	-96(%rbp), %rax
	movl	$0, (%rax)
	cmpq	$0, -72(%rbp)
	je	.LBB0_3
# BB#20:
	movl	$0, -272(%rbp)
	movl	$0, -268(%rbp)
	jmp	.LBB0_21
.LBB0_3:
	movq	-64(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	4(%rax), %ecx
	jge	.LBB0_5
# BB#4:
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.LBB0_6
.LBB0_5:
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
.LBB0_6:
	movl	%eax, -268(%rbp)
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	je	.LBB0_8
# BB#7:
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$3, %eax
	jne	.LBB0_9
.LBB0_8:
	movq	-56(%rbp), %rsi
	movl	$4095, %edi             # imm = 0xFFF
	andl	76(%rsi), %edi
	callq	FontSize
	addl	%eax, %eax
	movl	%eax, -276(%rbp)
	movl	-268(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -272(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movl	-268(%rbp), %eax
	movl	%eax, -272(%rbp)
.LBB0_10:
	movq	-56(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	cmpl	-268(%rbp), %ecx
	jg	.LBB0_12
# BB#11:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_12:
	movl	-268(%rbp), %ebx
	movq	-56(%rbp), %rsi
	movl	$4095, %r15d            # imm = 0xFFF
	movl	76(%rsi), %edi
	andl	%r15d, %edi
	callq	FontSize
	addl	%eax, %eax
	cmpl	%eax, %ebx
	jg	.LBB0_21
# BB#13:
	movq	-56(%rbp), %rbx
	addq	$32, %rbx
	movl	-268(%rbp), %edi
	callq	EchoLength
	movq	%rax, %r9
	xorl	%r14d, %r14d
	movl	$14, %edi
	movl	$6, %esi
	movl	$.L.str.3, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.4, %esi
	callq	MakeWord
	movq	%rax, -200(%rbp)
	movq	-56(%rbp), %rcx
	andl	76(%rcx), %r15d
	movl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %ecx
	orl	%r15d, %ecx
	movl	%ecx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	-200(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	76(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-56(%rbp), %rax
	movq	-200(%rbp), %rcx
	movl	$4194304, %edx          # imm = 0x400000
	andl	76(%rax), %edx
	movl	$-4194305, %eax         # imm = 0xFFFFFFFFFFBFFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-56(%rbp), %rax
	movl	76(%rax), %eax
	shrl	%eax
	movq	-200(%rbp), %rcx
	andl	$528482304, %eax        # imm = 0x1F800000
	movl	$-528482305, %edx       # imm = 0xFFFFFFFFE07FFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-200(%rbp), %rcx
	shll	$31, %eax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-200(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-200(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_15
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
	movq	zz_res(%rip), %r14
.LBB0_15:
	movq	%r14, xx_tmp(%rip)
	movq	-200(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_18
# BB#16:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_18
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
.LBB0_18:
	movq	-56(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB0_19
.LBB0_21:
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_23
# BB#22:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
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
	movb	$1, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -208(%rbp)
	movb	$1, 41(%rax)
	movq	-208(%rbp), %rax
	movb	$0, 42(%rax)
	movq	-208(%rbp), %rax
	andw	$-129, 44(%rax)
	movq	-208(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-208(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-208(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$3072, %ecx             # imm = 0xC00
	movw	%cx, 44(%rax)
	movq	-208(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$49152, %ecx            # imm = 0xC000
	movw	%cx, 44(%rax)
	movq	-208(%rbp), %rax
	movw	$4096, 46(%rax)         # imm = 0x1000
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.6, %esi
	callq	MakeWord
	movq	%rax, -216(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_28
# BB#27:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_31
.LBB0_28:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_29
# BB#30:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_31
.LBB0_29:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_31:
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
	movq	-208(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_34
# BB#32:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_34
# BB#33:
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
.LBB0_34:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-216(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_37
# BB#35:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_37
# BB#36:
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
.LBB0_37:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_39
# BB#38:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_42
.LBB0_39:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_40
# BB#41:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_42
.LBB0_40:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_42:
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
	je	.LBB0_45
# BB#43:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_45
# BB#44:
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
.LBB0_45:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-208(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_48
# BB#46:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_48
# BB#47:
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
.LBB0_48:
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.4, %esi
	callq	MakeWord
	movq	%rax, -216(%rbp)
	movl	$0, 60(%rax)
	movq	-216(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-216(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-216(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-216(%rbp), %rax
	andl	$-4096, 40(%rax)        # imm = 0xFFFFFFFFFFFFF000
	movq	-216(%rbp), %rax
	andl	$-4190209, 40(%rax)     # imm = 0xFFFFFFFFFFC00FFF
	movq	-216(%rbp), %rax
	andl	$-4194305, 40(%rax)     # imm = 0xFFFFFFFFFFBFFFFF
	movq	-216(%rbp), %rax
	andl	$-528482305, 40(%rax)   # imm = 0xFFFFFFFFE07FFFFF
	movq	-216(%rbp), %rax
	andl	$2147483647, 40(%rax)   # imm = 0x7FFFFFFF
	movq	-216(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_50
# BB#49:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_53
.LBB0_50:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_51
# BB#52:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_53
.LBB0_51:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_53:
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
	je	.LBB0_56
# BB#54:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_56
# BB#55:
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
.LBB0_56:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-216(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_59
# BB#57:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_59
# BB#58:
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
.LBB0_59:
	cmpl	$0, -84(%rbp)
	je	.LBB0_118
# BB#60:
	movl	$1, -284(%rbp)
	movq	-56(%rbp), %rax
	jmp	.LBB0_61
	.align	16, 0x90
.LBB0_69:                               #   in Loop: Header=BB0_61 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
	movq	-240(%rbp), %rax
.LBB0_61:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_63 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_72
# BB#62:                                #   in Loop: Header=BB0_61 Depth=1
	movq	-240(%rbp), %rax
	jmp	.LBB0_63
	.align	16, 0x90
.LBB0_64:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-232(%rbp), %rax
.LBB0_63:                               #   Parent Loop BB0_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_64
# BB#65:                                #   in Loop: Header=BB0_61 Depth=1
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_70
# BB#66:                                #   in Loop: Header=BB0_61 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB0_67
# BB#68:                                #   in Loop: Header=BB0_61 Depth=1
	movq	-232(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_69
	.align	16, 0x90
.LBB0_70:                               #   in Loop: Header=BB0_61 Depth=1
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_79
# BB#71:                                #   in Loop: Header=BB0_61 Depth=1
	movq	-232(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_83
	jmp	.LBB0_72
	.align	16, 0x90
.LBB0_79:                               #   in Loop: Header=BB0_61 Depth=1
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_80
# BB#81:                                #   in Loop: Header=BB0_61 Depth=1
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_82
.LBB0_67:                               #   in Loop: Header=BB0_61 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_69
.LBB0_80:                               #   in Loop: Header=BB0_61 Depth=1
	xorl	%eax, %eax
.LBB0_82:                               #   in Loop: Header=BB0_61 Depth=1
	testb	%al, %al
	jne	.LBB0_72
.LBB0_83:                               #   in Loop: Header=BB0_61 Depth=1
	movq	-240(%rbp), %rax
	jmp	.LBB0_61
.LBB0_72:
	movq	-240(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_74
# BB#73:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_74:
	movq	-232(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movl	%ecx, -300(%rbp)
	movl	%ecx, -296(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$0, -312(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_75
	.align	16, 0x90
.LBB0_88:                               #   in Loop: Header=BB0_75 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_75:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_77 Depth 2
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_97
# BB#76:                                #   in Loop: Header=BB0_75 Depth=1
	movq	-240(%rbp), %rax
	jmp	.LBB0_77
	.align	16, 0x90
.LBB0_78:                               #   in Loop: Header=BB0_77 Depth=2
	movq	-232(%rbp), %rax
.LBB0_77:                               #   Parent Loop BB0_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_78
# BB#84:                                #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_89
# BB#85:                                #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, -312(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_86
# BB#87:                                #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_88
	.align	16, 0x90
.LBB0_89:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_91
# BB#90:                                #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_75
	jmp	.LBB0_95
	.align	16, 0x90
.LBB0_91:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_92
# BB#93:                                #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_94
.LBB0_86:                               #   in Loop: Header=BB0_75 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_88
.LBB0_92:                               #   in Loop: Header=BB0_75 Depth=1
	xorl	%eax, %eax
.LBB0_94:                               #   in Loop: Header=BB0_75 Depth=1
	testb	%al, %al
	je	.LBB0_75
	jmp	.LBB0_95
.LBB0_19:
	movq	-200(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_95:
	cmpq	$0, -312(%rbp)
	jne	.LBB0_97
# BB#96:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB0_97:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_103 Depth 2
                                        #       Child Loop BB0_105 Depth 3
	movq	-240(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_118
# BB#98:                                #   in Loop: Header=BB0_97 Depth=1
	movq	-256(%rbp), %rax
	movl	56(%rax), %edi
	movq	-232(%rbp), %rax
	movl	48(%rax), %esi
	movl	56(%rax), %edx
	movq	-312(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movq	-256(%rbp), %rcx
	subl	56(%rcx), %eax
	movq	-232(%rbp), %rcx
	addl	48(%rcx), %eax
	addl	-296(%rbp), %eax
	movl	%eax, -296(%rbp)
	cmpl	-300(%rbp), %eax
	jge	.LBB0_101
# BB#99:                                #   in Loop: Header=BB0_97 Depth=1
	movq	-312(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.LBB0_102
# BB#100:                               #   in Loop: Header=BB0_97 Depth=1
	movq	-312(%rbp), %rax
	orw	$128, 44(%rax)
	jmp	.LBB0_102
	.align	16, 0x90
.LBB0_101:                              #   in Loop: Header=BB0_97 Depth=1
	movl	-296(%rbp), %eax
	movl	%eax, -300(%rbp)
.LBB0_102:                              #   in Loop: Header=BB0_97 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$0, -312(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_103
	.align	16, 0x90
.LBB0_111:                              #   in Loop: Header=BB0_103 Depth=2
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_103:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_105 Depth 3
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_97
# BB#104:                               #   in Loop: Header=BB0_103 Depth=2
	movq	-240(%rbp), %rax
	jmp	.LBB0_105
	.align	16, 0x90
.LBB0_106:                              #   in Loop: Header=BB0_105 Depth=3
	movq	-232(%rbp), %rax
.LBB0_105:                              #   Parent Loop BB0_97 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_106
# BB#107:                               #   in Loop: Header=BB0_103 Depth=2
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_112
# BB#108:                               #   in Loop: Header=BB0_103 Depth=2
	movq	-232(%rbp), %rax
	movq	%rax, -312(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_109
# BB#110:                               #   in Loop: Header=BB0_103 Depth=2
	movq	-232(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_111
	.align	16, 0x90
.LBB0_112:                              #   in Loop: Header=BB0_103 Depth=2
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_114
# BB#113:                               #   in Loop: Header=BB0_103 Depth=2
	movq	-232(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_103
	jmp	.LBB0_95
	.align	16, 0x90
.LBB0_114:                              #   in Loop: Header=BB0_103 Depth=2
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_115
# BB#116:                               #   in Loop: Header=BB0_103 Depth=2
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_117
.LBB0_109:                              #   in Loop: Header=BB0_103 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_111
.LBB0_115:                              #   in Loop: Header=BB0_103 Depth=2
	xorl	%eax, %eax
.LBB0_117:                              #   in Loop: Header=BB0_103 Depth=2
	testb	%al, %al
	je	.LBB0_103
	jmp	.LBB0_95
.LBB0_118:
	movq	-56(%rbp), %rax
	testb	$3, 68(%rax)
	jne	.LBB0_120
# BB#119:
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$14, %edi
	movl	$7, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_120:
	movl	$0, -292(%rbp)
	movl	$2147483647, %r14d      # imm = 0x7FFFFFFF
	movl	$4095, %r15d            # imm = 0xFFF
	movl	$-4096, %r12d           # imm = 0xFFFFFFFFFFFFF000
	movl	$1048575, %r13d         # imm = 0xFFFFF
	movl	$-1048576, %ebx         # imm = 0xFFFFFFFFFFF00000
	jmp	.LBB0_121
	.align	16, 0x90
.LBB0_474:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-56(%rbp), %rdi
	callq	Hyphenate
	movq	%rax, -56(%rbp)
	movl	$0, -76(%rbp)
	movl	$1, -292(%rbp)
	movq	-96(%rbp), %rax
	movl	$1, (%rax)
.LBB0_121:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_122 Depth 2
                                        #       Child Loop BB0_124 Depth 3
                                        #     Child Loop BB0_142 Depth 2
                                        #     Child Loop BB0_146 Depth 2
                                        #     Child Loop BB0_149 Depth 2
                                        #       Child Loop BB0_151 Depth 3
                                        #     Child Loop BB0_198 Depth 2
                                        #     Child Loop BB0_205 Depth 2
                                        #     Child Loop BB0_239 Depth 2
                                        #       Child Loop BB0_240 Depth 3
                                        #         Child Loop BB0_371 Depth 4
                                        #           Child Loop BB0_373 Depth 5
                                        #         Child Loop BB0_380 Depth 4
                                        #           Child Loop BB0_382 Depth 5
                                        #         Child Loop BB0_423 Depth 4
                                        #         Child Loop BB0_431 Depth 4
                                        #         Child Loop BB0_438 Depth 4
                                        #       Child Loop BB0_251 Depth 3
                                        #       Child Loop BB0_257 Depth 3
                                        #         Child Loop BB0_259 Depth 4
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_276 Depth 3
                                        #         Child Loop BB0_278 Depth 4
                                        #       Child Loop BB0_325 Depth 3
                                        #       Child Loop BB0_332 Depth 3
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	$1, -332(%rbp)
	movq	-56(%rbp), %rax
	jmp	.LBB0_122
	.align	16, 0x90
.LBB0_130:                              #   in Loop: Header=BB0_122 Depth=2
	movzbl	%al, %eax
	movl	%eax, -332(%rbp)
	movq	-320(%rbp), %rax
.LBB0_122:                              #   Parent Loop BB0_121 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_124 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_133
# BB#123:                               #   in Loop: Header=BB0_122 Depth=2
	movq	-320(%rbp), %rax
	jmp	.LBB0_124
	.align	16, 0x90
.LBB0_125:                              #   in Loop: Header=BB0_124 Depth=3
	movq	-328(%rbp), %rax
.LBB0_124:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_122 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_125
# BB#126:                               #   in Loop: Header=BB0_122 Depth=2
	movq	-328(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_131
# BB#127:                               #   in Loop: Header=BB0_122 Depth=2
	cmpl	$0, -332(%rbp)
	je	.LBB0_128
# BB#129:                               #   in Loop: Header=BB0_122 Depth=2
	movq	-328(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_130
	.align	16, 0x90
.LBB0_131:                              #   in Loop: Header=BB0_122 Depth=2
	movq	-328(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_135
# BB#132:                               #   in Loop: Header=BB0_122 Depth=2
	movq	-328(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_139
	jmp	.LBB0_133
	.align	16, 0x90
.LBB0_135:                              #   in Loop: Header=BB0_122 Depth=2
	movq	-328(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_136
# BB#137:                               #   in Loop: Header=BB0_122 Depth=2
	movq	-328(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_138
.LBB0_128:                              #   in Loop: Header=BB0_122 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_130
.LBB0_136:                              #   in Loop: Header=BB0_122 Depth=2
	xorl	%eax, %eax
.LBB0_138:                              #   in Loop: Header=BB0_122 Depth=2
	testb	%al, %al
	jne	.LBB0_133
.LBB0_139:                              #   in Loop: Header=BB0_122 Depth=2
	movq	-320(%rbp), %rax
	jmp	.LBB0_122
	.align	16, 0x90
.LBB0_133:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-320(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_134
# BB#140:                               #   in Loop: Header=BB0_121 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_144
# BB#141:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_142
	.align	16, 0x90
.LBB0_143:                              #   in Loop: Header=BB0_142 Depth=2
	movq	-128(%rbp), %rax
.LBB0_142:                              #   Parent Loop BB0_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_143
	jmp	.LBB0_145
	.align	16, 0x90
.LBB0_134:                              #   in Loop: Header=BB0_121 Depth=1
	movb	$5, -108(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB0_238
	.align	16, 0x90
.LBB0_144:                              #   in Loop: Header=BB0_121 Depth=1
	movq	$0, -128(%rbp)
.LBB0_145:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-328(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movl	%ecx, -120(%rbp)
	movl	$0, -116(%rbp)
	movb	$0, -107(%rbp)
	movl	$0, -368(%rbp)
	movq	-320(%rbp), %rax
	jmp	.LBB0_146
	.align	16, 0x90
.LBB0_147:                              #   in Loop: Header=BB0_146 Depth=2
	movq	-360(%rbp), %rax
.LBB0_146:                              #   Parent Loop BB0_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_147
# BB#148:                               #   in Loop: Header=BB0_121 Depth=1
	movq	$0, -344(%rbp)
	movl	$1, -364(%rbp)
	jmp	.LBB0_149
	.align	16, 0x90
.LBB0_157:                              #   in Loop: Header=BB0_149 Depth=2
	movzbl	%al, %eax
	movl	%eax, -364(%rbp)
.LBB0_149:                              #   Parent Loop BB0_121 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_151 Depth 3
	movq	-320(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_166
# BB#150:                               #   in Loop: Header=BB0_149 Depth=2
	movq	-320(%rbp), %rax
	jmp	.LBB0_151
	.align	16, 0x90
.LBB0_152:                              #   in Loop: Header=BB0_151 Depth=3
	movq	-352(%rbp), %rax
.LBB0_151:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_152
# BB#153:                               #   in Loop: Header=BB0_149 Depth=2
	movq	-352(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_158
# BB#154:                               #   in Loop: Header=BB0_149 Depth=2
	movq	-352(%rbp), %rax
	movq	%rax, -344(%rbp)
	cmpl	$0, -364(%rbp)
	je	.LBB0_155
# BB#156:                               #   in Loop: Header=BB0_149 Depth=2
	movq	-352(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_157
	.align	16, 0x90
.LBB0_158:                              #   in Loop: Header=BB0_149 Depth=2
	movq	-352(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_160
# BB#159:                               #   in Loop: Header=BB0_149 Depth=2
	movq	-352(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_149
	jmp	.LBB0_164
	.align	16, 0x90
.LBB0_160:                              #   in Loop: Header=BB0_149 Depth=2
	movq	-352(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_161
# BB#162:                               #   in Loop: Header=BB0_149 Depth=2
	movq	-352(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_163
.LBB0_155:                              #   in Loop: Header=BB0_149 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_157
.LBB0_161:                              #   in Loop: Header=BB0_149 Depth=2
	xorl	%eax, %eax
.LBB0_163:                              #   in Loop: Header=BB0_149 Depth=2
	testb	%al, %al
	je	.LBB0_149
.LBB0_164:                              #   in Loop: Header=BB0_121 Depth=1
	cmpq	$0, -344(%rbp)
	jne	.LBB0_166
# BB#165:                               #   in Loop: Header=BB0_121 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB0_166:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-320(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_188
# BB#167:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-344(%rbp), %rax
	movq	24(%rax), %rcx
	cmpq	16(%rax), %rcx
	je	.LBB0_169
# BB#168:                               #   in Loop: Header=BB0_121 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.10, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_169:                              #   in Loop: Header=BB0_121 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_171
# BB#170:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-128(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, -272(%rbp)
.LBB0_171:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-344(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_173
# BB#172:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-352(%rbp), %rax
	movl	48(%rax), %esi
	movl	56(%rax), %edx
	movq	-344(%rbp), %rcx
	addq	$44, %rcx
	movl	-272(%rbp), %r8d
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	callq	ActualGap
	movq	-352(%rbp), %rcx
	subl	48(%rcx), %eax
	jmp	.LBB0_174
	.align	16, 0x90
.LBB0_188:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB0_189
.LBB0_173:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-328(%rbp), %rax
	movl	56(%rax), %edi
	movq	-352(%rbp), %rax
	movl	48(%rax), %esi
	movl	56(%rax), %edx
	movq	-344(%rbp), %rcx
	addq	$44, %rcx
	movl	-272(%rbp), %r8d
	movl	-120(%rbp), %r9d
	subl	%edi, %r9d
	callq	ActualGap
	movq	-352(%rbp), %rcx
	subl	48(%rcx), %eax
	movq	-328(%rbp), %rcx
	subl	56(%rcx), %eax
.LBB0_174:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-344(%rbp), %rcx
	movw	%ax, 52(%rcx)
	movq	-344(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$2, %eax
	je	.LBB0_176
# BB#175:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-344(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$7, %eax
	jne	.LBB0_185
.LBB0_176:                              #   in Loop: Header=BB0_121 Depth=1
	cmpl	$0, -292(%rbp)
	je	.LBB0_186
# BB#177:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-328(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_179
# BB#178:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-328(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_187
.LBB0_179:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-328(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movq	-328(%rbp), %rcx
	movzbl	63(%rax,%rcx), %eax
	cmpl	$45, %eax
	je	.LBB0_187
# BB#180:                               #   in Loop: Header=BB0_121 Depth=1
	cmpq	$0, FillObject.hyph_word(%rip)
	jne	.LBB0_182
# BB#181:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.11, %esi
	callq	MakeWord
	movq	%rax, FillObject.hyph_word(%rip)
	andl	$-4096, 40(%rax)        # imm = 0xFFFFFFFFFFFFF000
	movq	-56(%rbp), %rax
	movq	FillObject.hyph_word(%rip), %rcx
	movl	76(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-56(%rbp), %rax
	movq	FillObject.hyph_word(%rip), %rcx
	movl	76(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-56(%rbp), %rax
	movl	76(%rax), %eax
	shrl	%eax
	movq	FillObject.hyph_word(%rip), %rcx
	andl	$528482304, %eax        # imm = 0x1F800000
	movl	40(%rcx), %edx
	movl	$-528482305, %esi       # imm = 0xFFFFFFFFE07FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movq	FillObject.hyph_word(%rip), %rcx
	shll	$31, %eax
	movl	40(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
.LBB0_182:                              #   in Loop: Header=BB0_121 Depth=1
	movq	FillObject.hyph_word(%rip), %rax
	movl	40(%rax), %eax
	andl	%r15d, %eax
	movq	-56(%rbp), %rcx
	movl	76(%rcx), %ecx
	andl	%r15d, %ecx
	cmpl	%ecx, %eax
	je	.LBB0_184
# BB#183:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-56(%rbp), %rax
	movl	76(%rax), %eax
	andl	%r15d, %eax
	movq	FillObject.hyph_word(%rip), %rcx
	movl	40(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-56(%rbp), %rax
	movw	34(%rax), %ax
	movq	FillObject.hyph_word(%rip), %rcx
	movw	%ax, 34(%rcx)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r13d, %eax
	movq	FillObject.hyph_word(%rip), %rcx
	movl	36(%rcx), %edx
	andl	%ebx, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	andl	%ebx, %eax
	movq	FillObject.hyph_word(%rip), %rcx
	movl	36(%rcx), %edx
	andl	%r13d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	FillObject.hyph_word(%rip), %rdi
	callq	FontWordSize
.LBB0_184:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-344(%rbp), %rax
	orw	$-8192, 44(%rax)        # imm = 0xFFFFFFFFFFFFE000
	movq	FillObject.hyph_word(%rip), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	addl	%ecx, -120(%rbp)
	jmp	.LBB0_187
.LBB0_185:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-344(%rbp), %rax
	btl	$7, 44(%rax)
	jae	.LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_121 Depth=1
	movl	$1, -368(%rbp)
.LBB0_187:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-344(%rbp), %rax
	movq	24(%rax), %rax
.LBB0_189:                              #   in Loop: Header=BB0_121 Depth=1
	movq	%rax, -136(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_190
# BB#194:                               #   in Loop: Header=BB0_121 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_196
# BB#195:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-128(%rbp), %rax
	movl	68(%rax), %eax
	jmp	.LBB0_197
	.align	16, 0x90
.LBB0_190:                              #   in Loop: Header=BB0_121 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_192
# BB#191:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-128(%rbp), %rax
	movl	68(%rax), %eax
	jmp	.LBB0_193
.LBB0_196:                              #   in Loop: Header=BB0_121 Depth=1
	movl	-272(%rbp), %eax
.LBB0_197:                              #   in Loop: Header=BB0_121 Depth=1
	movl	%eax, -384(%rbp)
	movq	-144(%rbp), %rax
	jmp	.LBB0_198
	.align	16, 0x90
.LBB0_199:                              #   in Loop: Header=BB0_198 Depth=2
	movq	-376(%rbp), %rax
.LBB0_198:                              #   Parent Loop BB0_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_199
# BB#200:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-376(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB0_201
.LBB0_192:                              #   in Loop: Header=BB0_121 Depth=1
	movl	-268(%rbp), %eax
.LBB0_193:                              #   in Loop: Header=BB0_121 Depth=1
	movl	%eax, -384(%rbp)
	movl	$0, -112(%rbp)
.LBB0_201:                              #   in Loop: Header=BB0_121 Depth=1
	movzbl	-107(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB0_212
# BB#202:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -392(%rbp)
	cmpb	$0, 32(%rax)
	je	.LBB0_204
# BB#203:                               #   in Loop: Header=BB0_121 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_204:                              #   in Loop: Header=BB0_121 Depth=1
	movq	-392(%rbp), %rax
	jmp	.LBB0_205
	.align	16, 0x90
.LBB0_206:                              #   in Loop: Header=BB0_205 Depth=2
	movq	-376(%rbp), %rax
.LBB0_205:                              #   Parent Loop BB0_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_206
# BB#207:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-376(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_212
# BB#208:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-376(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_212
# BB#209:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-376(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	jne	.LBB0_212
# BB#210:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-376(%rbp), %rax
	movzwl	46(%rax), %eax
	cmpl	$4096, %eax             # imm = 0x1000
	jne	.LBB0_212
# BB#211:                               #   in Loop: Header=BB0_121 Depth=1
	subl	$-128, -112(%rbp)
	.align	16, 0x90
.LBB0_212:                              #   in Loop: Header=BB0_121 Depth=1
	cmpl	$0, -384(%rbp)
	jg	.LBB0_216
# BB#213:                               #   in Loop: Header=BB0_121 Depth=1
	cmpl	$0, -120(%rbp)
	je	.LBB0_214
# BB#215:                               #   in Loop: Header=BB0_121 Depth=1
	movb	$2, -108(%rbp)
	jmp	.LBB0_230
	.align	16, 0x90
.LBB0_216:                              #   in Loop: Header=BB0_121 Depth=1
	movzbl	-107(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB0_219
# BB#217:                               #   in Loop: Header=BB0_121 Depth=1
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jle	.LBB0_219
# BB#218:                               #   in Loop: Header=BB0_121 Depth=1
	movb	$4, -108(%rbp)
	jmp	.LBB0_230
	.align	16, 0x90
.LBB0_219:                              #   in Loop: Header=BB0_121 Depth=1
	movl	-384(%rbp), %eax
	subl	-120(%rbp), %eax
	movl	-116(%rbp), %ecx
	addl	%ecx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_221
# BB#220:                               #   in Loop: Header=BB0_121 Depth=1
	movzbl	-107(%rbp), %eax
	testl	%eax, %eax
	setg	-108(%rbp)
	movl	-384(%rbp), %ecx
	movl	%ecx, %eax
	subl	-120(%rbp), %eax
	shll	$9, %eax
	jmp	.LBB0_224
.LBB0_214:                              #   in Loop: Header=BB0_121 Depth=1
	movb	$0, -108(%rbp)
	jmp	.LBB0_231
.LBB0_221:                              #   in Loop: Header=BB0_121 Depth=1
	movl	-120(%rbp), %eax
	cmpl	-384(%rbp), %eax
	jg	.LBB0_225
# BB#222:                               #   in Loop: Header=BB0_121 Depth=1
	movb	$1, -108(%rbp)
	jmp	.LBB0_223
.LBB0_225:                              #   in Loop: Header=BB0_121 Depth=1
	movq	BackEnd(%rip), %rax
	cmpl	$0, 36(%rax)
	je	.LBB0_229
# BB#226:                               #   in Loop: Header=BB0_121 Depth=1
	cmpl	$0, -80(%rbp)
	je	.LBB0_229
# BB#227:                               #   in Loop: Header=BB0_121 Depth=1
	movl	-120(%rbp), %eax
	subl	-384(%rbp), %eax
	shll	$2, %eax
	cmpl	-116(%rbp), %eax
	jg	.LBB0_229
# BB#228:                               #   in Loop: Header=BB0_121 Depth=1
	movb	$2, -108(%rbp)
.LBB0_223:                              #   in Loop: Header=BB0_121 Depth=1
	movl	-384(%rbp), %ecx
	movl	%ecx, %eax
	subl	-120(%rbp), %eax
	shll	$7, %eax
.LBB0_224:                              #   in Loop: Header=BB0_121 Depth=1
	cltd
	idivl	%ecx
	movl	%eax, -380(%rbp)
	imull	%eax, %eax
	addl	%eax, -112(%rbp)
	jmp	.LBB0_231
.LBB0_229:                              #   in Loop: Header=BB0_121 Depth=1
	movb	$3, -108(%rbp)
	.align	16, 0x90
.LBB0_230:                              #   in Loop: Header=BB0_121 Depth=1
	addl	$1048576, -112(%rbp)    # imm = 0x100000
.LBB0_231:                              #   in Loop: Header=BB0_121 Depth=1
	cmpl	$0, -112(%rbp)
	jns	.LBB0_233
# BB#232:                               #   in Loop: Header=BB0_121 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_233:                              #   in Loop: Header=BB0_121 Depth=1
	cmpl	$0, -368(%rbp)
	je	.LBB0_235
# BB#234:                               #   in Loop: Header=BB0_121 Depth=1
	movb	$7, -108(%rbp)
	jmp	.LBB0_238
	.align	16, 0x90
.LBB0_235:                              #   in Loop: Header=BB0_121 Depth=1
	movzbl	-108(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB0_238
# BB#236:                               #   in Loop: Header=BB0_121 Depth=1
	movq	-344(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_238
# BB#237:                               #   in Loop: Header=BB0_121 Depth=1
	movb	$3, -108(%rbp)
	movl	$1048576, -112(%rbp)    # imm = 0x100000
	.align	16, 0x90
.LBB0_238:                              #   in Loop: Header=BB0_121 Depth=1
	movups	-144(%rbp), %xmm0
	movups	-128(%rbp), %xmm1
	movups	-112(%rbp), %xmm2
	jmp	.LBB0_239
	.align	16, 0x90
.LBB0_365:                              #   in Loop: Header=BB0_239 Depth=2
	movaps	-144(%rbp), %xmm0
	movaps	-128(%rbp), %xmm1
	movaps	-112(%rbp), %xmm2
.LBB0_239:                              #   Parent Loop BB0_121 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_240 Depth 3
                                        #         Child Loop BB0_371 Depth 4
                                        #           Child Loop BB0_373 Depth 5
                                        #         Child Loop BB0_380 Depth 4
                                        #           Child Loop BB0_382 Depth 5
                                        #         Child Loop BB0_423 Depth 4
                                        #         Child Loop BB0_431 Depth 4
                                        #         Child Loop BB0_438 Depth 4
                                        #       Child Loop BB0_251 Depth 3
                                        #       Child Loop BB0_257 Depth 3
                                        #         Child Loop BB0_259 Depth 4
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_276 Depth 3
                                        #         Child Loop BB0_278 Depth 4
                                        #       Child Loop BB0_325 Depth 3
                                        #       Child Loop BB0_332 Depth 3
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm0, -192(%rbp)
	jmp	.LBB0_240
	.align	16, 0x90
.LBB0_471:                              #   in Loop: Header=BB0_240 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_240:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_371 Depth 4
                                        #           Child Loop BB0_373 Depth 5
                                        #         Child Loop BB0_380 Depth 4
                                        #           Child Loop BB0_382 Depth 5
                                        #         Child Loop BB0_423 Depth 4
                                        #         Child Loop BB0_431 Depth 4
                                        #         Child Loop BB0_438 Depth 4
	movzbl	-108(%rbp), %eax
	cmpl	$5, %eax
	je	.LBB0_472
# BB#241:                               #   in Loop: Header=BB0_240 Depth=3
	movzbl	-108(%rbp), %eax
	cmpq	$8, %rax
	ja	.LBB0_471
# BB#242:                               #   in Loop: Header=BB0_240 Depth=3
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_366:                              #   in Loop: Header=BB0_240 Depth=3
	movl	-112(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB0_368
# BB#367:                               #   in Loop: Header=BB0_240 Depth=3
	movups	-144(%rbp), %xmm0
	movups	-128(%rbp), %xmm1
	movups	-112(%rbp), %xmm2
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm0, -192(%rbp)
.LBB0_368:                              #   in Loop: Header=BB0_240 Depth=3
	movzbl	-108(%rbp), %eax
	cmpl	$5, %eax
	jne	.LBB0_370
# BB#369:                               #   in Loop: Header=BB0_240 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_370:                              #   in Loop: Header=BB0_240 Depth=3
	movq	-144(%rbp), %rax
	movq	%rax, -480(%rbp)
	jmp	.LBB0_371
	.align	16, 0x90
.LBB0_388:                              #   in Loop: Header=BB0_371 Depth=4
	movq	-480(%rbp), %rax
.LBB0_371:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        #       Parent Loop BB0_240 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_373 Depth 5
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_377
# BB#372:                               #   in Loop: Header=BB0_371 Depth=4
	movq	-480(%rbp), %rax
	jmp	.LBB0_373
	.align	16, 0x90
.LBB0_374:                              #   in Loop: Header=BB0_373 Depth=5
	movq	-488(%rbp), %rax
.LBB0_373:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        #       Parent Loop BB0_240 Depth=3
                                        #         Parent Loop BB0_371 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	16(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_374
# BB#375:                               #   in Loop: Header=BB0_371 Depth=4
	movq	-488(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_384
# BB#376:                               #   in Loop: Header=BB0_371 Depth=4
	movq	-488(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_388
	jmp	.LBB0_377
	.align	16, 0x90
.LBB0_384:                              #   in Loop: Header=BB0_371 Depth=4
	movq	-488(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_385
# BB#386:                               #   in Loop: Header=BB0_371 Depth=4
	movq	-488(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_387
	.align	16, 0x90
.LBB0_385:                              #   in Loop: Header=BB0_371 Depth=4
	xorl	%eax, %eax
.LBB0_387:                              #   in Loop: Header=BB0_371 Depth=4
	testb	%al, %al
	je	.LBB0_388
.LBB0_377:                              #   in Loop: Header=BB0_240 Depth=3
	movq	-480(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_379
# BB#378:                               #   in Loop: Header=BB0_240 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_379:                              #   in Loop: Header=BB0_240 Depth=3
	movq	$0, -496(%rbp)
	movl	$1, -508(%rbp)
	jmp	.LBB0_380
	.align	16, 0x90
.LBB0_393:                              #   in Loop: Header=BB0_380 Depth=4
	movzbl	%al, %eax
	movl	%eax, -508(%rbp)
.LBB0_380:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        #       Parent Loop BB0_240 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_382 Depth 5
	movq	-480(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_402
# BB#381:                               #   in Loop: Header=BB0_380 Depth=4
	movq	-480(%rbp), %rax
	jmp	.LBB0_382
	.align	16, 0x90
.LBB0_383:                              #   in Loop: Header=BB0_382 Depth=5
	movq	-504(%rbp), %rax
.LBB0_382:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        #       Parent Loop BB0_240 Depth=3
                                        #         Parent Loop BB0_380 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_383
# BB#389:                               #   in Loop: Header=BB0_380 Depth=4
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_394
# BB#390:                               #   in Loop: Header=BB0_380 Depth=4
	movq	-504(%rbp), %rax
	movq	%rax, -496(%rbp)
	cmpl	$0, -508(%rbp)
	je	.LBB0_391
# BB#392:                               #   in Loop: Header=BB0_380 Depth=4
	movq	-504(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_393
	.align	16, 0x90
.LBB0_394:                              #   in Loop: Header=BB0_380 Depth=4
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_396
# BB#395:                               #   in Loop: Header=BB0_380 Depth=4
	movq	-504(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_380
	jmp	.LBB0_400
	.align	16, 0x90
.LBB0_396:                              #   in Loop: Header=BB0_380 Depth=4
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_397
# BB#398:                               #   in Loop: Header=BB0_380 Depth=4
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_399
.LBB0_391:                              #   in Loop: Header=BB0_380 Depth=4
	xorl	%eax, %eax
	jmp	.LBB0_393
.LBB0_397:                              #   in Loop: Header=BB0_380 Depth=4
	xorl	%eax, %eax
.LBB0_399:                              #   in Loop: Header=BB0_380 Depth=4
	testb	%al, %al
	je	.LBB0_380
.LBB0_400:                              #   in Loop: Header=BB0_240 Depth=3
	cmpq	$0, -496(%rbp)
	jne	.LBB0_402
# BB#401:                               #   in Loop: Header=BB0_240 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB0_402:                              #   in Loop: Header=BB0_240 Depth=3
	movq	-480(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_404
# BB#403:                               #   in Loop: Header=BB0_240 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_404:                              #   in Loop: Header=BB0_240 Depth=3
	movq	-496(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_410
# BB#405:                               #   in Loop: Header=BB0_240 Depth=3
	movzbl	-107(%rbp), %eax
	testl	%eax, %eax
	jg	.LBB0_408
# BB#406:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-496(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-136(%rbp), %rax
	je	.LBB0_408
# BB#407:                               #   in Loop: Header=BB0_240 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_408:                              #   in Loop: Header=BB0_240 Depth=3
	decb	-107(%rbp)
	jne	.LBB0_414
# BB#409:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-496(%rbp), %rax
	movswl	52(%rax), %eax
	subl	%eax, -120(%rbp)
	jmp	.LBB0_414
.LBB0_410:                              #   in Loop: Header=BB0_240 Depth=3
	cmpb	$0, -107(%rbp)
	je	.LBB0_411
# BB#412:                               #   in Loop: Header=BB0_240 Depth=3
	movzbl	-107(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB0_414
# BB#413:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-496(%rbp), %rax
	movswl	52(%rax), %eax
	movq	-488(%rbp), %rcx
	movl	48(%rcx), %edx
	addl	56(%rcx), %edx
	addl	%eax, %edx
	subl	%edx, -100(%rbp)
	jmp	.LBB0_414
.LBB0_411:                              #   in Loop: Header=BB0_240 Depth=3
	movq	-496(%rbp), %rax
	movswl	52(%rax), %eax
	movq	-488(%rbp), %rcx
	movl	48(%rcx), %edx
	addl	56(%rcx), %edx
	addl	%eax, %edx
	subl	%edx, -120(%rbp)
	movq	-496(%rbp), %rax
	movswl	52(%rax), %eax
	subl	%eax, -116(%rbp)
	.align	16, 0x90
.LBB0_414:                              #   in Loop: Header=BB0_240 Depth=3
	movq	-496(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -144(%rbp)
	cmpq	-136(%rbp), %rax
	je	.LBB0_415
# BB#416:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-496(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB0_419
# BB#417:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-496(%rbp), %rax
	movq	64(%rax), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -520(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB0_422
# BB#418:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-496(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB0_419
.LBB0_415:                              #   in Loop: Header=BB0_240 Depth=3
	movb	$8, -108(%rbp)
	movl	$1048577, -112(%rbp)    # imm = 0x100001
	jmp	.LBB0_240
.LBB0_422:                              #   in Loop: Header=BB0_240 Depth=3
	movq	-520(%rbp), %rax
	jmp	.LBB0_423
	.align	16, 0x90
.LBB0_424:                              #   in Loop: Header=BB0_423 Depth=4
	movq	-128(%rbp), %rax
.LBB0_423:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        #       Parent Loop BB0_240 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_424
.LBB0_419:                              #   in Loop: Header=BB0_240 Depth=3
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_420
# BB#427:                               #   in Loop: Header=BB0_240 Depth=3
	cmpq	$0, -128(%rbp)
	je	.LBB0_429
# BB#428:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-128(%rbp), %rax
	movl	68(%rax), %eax
	jmp	.LBB0_430
.LBB0_420:                              #   in Loop: Header=BB0_240 Depth=3
	cmpq	$0, -128(%rbp)
	je	.LBB0_425
# BB#421:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-128(%rbp), %rax
	movl	68(%rax), %eax
	jmp	.LBB0_426
.LBB0_429:                              #   in Loop: Header=BB0_240 Depth=3
	movl	-272(%rbp), %eax
.LBB0_430:                              #   in Loop: Header=BB0_240 Depth=3
	movl	%eax, -536(%rbp)
	movq	-144(%rbp), %rax
	jmp	.LBB0_431
	.align	16, 0x90
.LBB0_432:                              #   in Loop: Header=BB0_431 Depth=4
	movq	-528(%rbp), %rax
.LBB0_431:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        #       Parent Loop BB0_240 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_432
# BB#433:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-528(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB0_434
.LBB0_425:                              #   in Loop: Header=BB0_240 Depth=3
	movl	-268(%rbp), %eax
.LBB0_426:                              #   in Loop: Header=BB0_240 Depth=3
	movl	%eax, -536(%rbp)
	movl	$0, -112(%rbp)
.LBB0_434:                              #   in Loop: Header=BB0_240 Depth=3
	movzbl	-107(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB0_445
# BB#435:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -544(%rbp)
	cmpb	$0, 32(%rax)
	je	.LBB0_437
# BB#436:                               #   in Loop: Header=BB0_240 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_437:                              #   in Loop: Header=BB0_240 Depth=3
	movq	-544(%rbp), %rax
	jmp	.LBB0_438
	.align	16, 0x90
.LBB0_439:                              #   in Loop: Header=BB0_438 Depth=4
	movq	-528(%rbp), %rax
.LBB0_438:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        #       Parent Loop BB0_240 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_439
# BB#440:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-528(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_445
# BB#441:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-528(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_445
# BB#442:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-528(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	jne	.LBB0_445
# BB#443:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-528(%rbp), %rax
	movzwl	46(%rax), %eax
	cmpl	$4096, %eax             # imm = 0x1000
	jne	.LBB0_445
# BB#444:                               #   in Loop: Header=BB0_240 Depth=3
	subl	$-128, -112(%rbp)
.LBB0_445:                              #   in Loop: Header=BB0_240 Depth=3
	cmpl	$0, -536(%rbp)
	jg	.LBB0_449
# BB#446:                               #   in Loop: Header=BB0_240 Depth=3
	cmpl	$0, -120(%rbp)
	je	.LBB0_447
# BB#448:                               #   in Loop: Header=BB0_240 Depth=3
	movb	$2, -108(%rbp)
	jmp	.LBB0_463
.LBB0_449:                              #   in Loop: Header=BB0_240 Depth=3
	movzbl	-107(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB0_452
# BB#450:                               #   in Loop: Header=BB0_240 Depth=3
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jle	.LBB0_452
# BB#451:                               #   in Loop: Header=BB0_240 Depth=3
	movb	$4, -108(%rbp)
	jmp	.LBB0_463
.LBB0_452:                              #   in Loop: Header=BB0_240 Depth=3
	movl	-536(%rbp), %eax
	subl	-120(%rbp), %eax
	movl	-116(%rbp), %ecx
	addl	%ecx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_454
# BB#453:                               #   in Loop: Header=BB0_240 Depth=3
	movzbl	-107(%rbp), %eax
	testl	%eax, %eax
	setg	-108(%rbp)
	movl	-536(%rbp), %ecx
	movl	%ecx, %eax
	subl	-120(%rbp), %eax
	shll	$9, %eax
	jmp	.LBB0_457
.LBB0_447:                              #   in Loop: Header=BB0_240 Depth=3
	movb	$0, -108(%rbp)
	jmp	.LBB0_464
.LBB0_454:                              #   in Loop: Header=BB0_240 Depth=3
	movl	-120(%rbp), %eax
	cmpl	-536(%rbp), %eax
	jg	.LBB0_458
# BB#455:                               #   in Loop: Header=BB0_240 Depth=3
	movb	$1, -108(%rbp)
.LBB0_456:                              #   in Loop: Header=BB0_240 Depth=3
	movl	-536(%rbp), %ecx
	movl	%ecx, %eax
	subl	-120(%rbp), %eax
	shll	$7, %eax
.LBB0_457:                              #   in Loop: Header=BB0_240 Depth=3
	cltd
	idivl	%ecx
	movl	%eax, -532(%rbp)
	imull	%eax, %eax
	addl	%eax, -112(%rbp)
	jmp	.LBB0_464
.LBB0_458:                              #   in Loop: Header=BB0_240 Depth=3
	movq	BackEnd(%rip), %rax
	cmpl	$0, 36(%rax)
	je	.LBB0_462
# BB#459:                               #   in Loop: Header=BB0_240 Depth=3
	cmpl	$0, -80(%rbp)
	je	.LBB0_462
# BB#460:                               #   in Loop: Header=BB0_240 Depth=3
	movl	-120(%rbp), %eax
	subl	-536(%rbp), %eax
	shll	$2, %eax
	cmpl	-116(%rbp), %eax
	jg	.LBB0_462
# BB#461:                               #   in Loop: Header=BB0_240 Depth=3
	movb	$2, -108(%rbp)
	jmp	.LBB0_456
.LBB0_462:                              #   in Loop: Header=BB0_240 Depth=3
	movb	$3, -108(%rbp)
.LBB0_463:                              #   in Loop: Header=BB0_240 Depth=3
	addl	$1048576, -112(%rbp)    # imm = 0x100000
.LBB0_464:                              #   in Loop: Header=BB0_240 Depth=3
	cmpl	$0, -112(%rbp)
	jns	.LBB0_466
# BB#465:                               #   in Loop: Header=BB0_240 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_466:                              #   in Loop: Header=BB0_240 Depth=3
	movq	-496(%rbp), %rax
	btl	$7, 44(%rax)
	jb	.LBB0_470
# BB#467:                               #   in Loop: Header=BB0_240 Depth=3
	cmpl	$0, -292(%rbp)
	jne	.LBB0_240
# BB#468:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-496(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$2, %eax
	je	.LBB0_470
# BB#469:                               #   in Loop: Header=BB0_240 Depth=3
	movq	-496(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$7, %eax
	jne	.LBB0_240
.LBB0_470:                              #   in Loop: Header=BB0_240 Depth=3
	movb	$6, -108(%rbp)
	jmp	.LBB0_240
	.align	16, 0x90
.LBB0_243:                              #   in Loop: Header=BB0_239 Depth=2
	movzbl	-108(%rbp), %eax
	cmpl	$8, %eax
	je	.LBB0_245
# BB#244:                               #   in Loop: Header=BB0_239 Depth=2
	movl	-160(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jg	.LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_239 Depth=2
	movaps	-192(%rbp), %xmm0
	movaps	-176(%rbp), %xmm1
	movaps	-160(%rbp), %xmm2
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
.LBB0_246:                              #   in Loop: Header=BB0_239 Depth=2
	movzbl	-108(%rbp), %eax
	cmpl	$5, %eax
	jne	.LBB0_248
# BB#247:                               #   in Loop: Header=BB0_239 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_248:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-136(%rbp), %rax
	movq	%rax, -400(%rbp)
	cmpq	-56(%rbp), %rax
	je	.LBB0_249
# BB#250:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-400(%rbp), %rax
	jmp	.LBB0_251
	.align	16, 0x90
.LBB0_252:                              #   in Loop: Header=BB0_251 Depth=3
	movq	-408(%rbp), %rax
.LBB0_251:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_252
# BB#253:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-408(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_255
# BB#254:                               #   in Loop: Header=BB0_239 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_255:                              #   in Loop: Header=BB0_239 Depth=2
	movl	-112(%rbp), %eax
	movq	-408(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-144(%rbp), %rax
	movq	-408(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-128(%rbp), %rax
	movq	-408(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$7, %eax
	jne	.LBB0_257
# BB#256:                               #   in Loop: Header=BB0_239 Depth=2
	movq	FillObject.hyph_word(%rip), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	subl	%ecx, -120(%rbp)
	movq	-408(%rbp), %rax
	addl	$16, 48(%rax)
	.align	16, 0x90
.LBB0_257:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_259 Depth 4
	movq	-400(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_267
# BB#258:                               #   in Loop: Header=BB0_257 Depth=3
	movq	-400(%rbp), %rax
	jmp	.LBB0_259
	.align	16, 0x90
.LBB0_260:                              #   in Loop: Header=BB0_259 Depth=4
	movq	-416(%rbp), %rax
.LBB0_259:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        #       Parent Loop BB0_257 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_260
# BB#261:                               #   in Loop: Header=BB0_257 Depth=3
	movq	-416(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_263
# BB#262:                               #   in Loop: Header=BB0_257 Depth=3
	movq	-416(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_257
	jmp	.LBB0_267
	.align	16, 0x90
.LBB0_263:                              #   in Loop: Header=BB0_257 Depth=3
	movq	-416(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_264
# BB#265:                               #   in Loop: Header=BB0_257 Depth=3
	movq	-416(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_266
	.align	16, 0x90
.LBB0_264:                              #   in Loop: Header=BB0_257 Depth=3
	xorl	%eax, %eax
.LBB0_266:                              #   in Loop: Header=BB0_257 Depth=3
	testb	%al, %al
	je	.LBB0_257
.LBB0_267:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-400(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_269
# BB#268:                               #   in Loop: Header=BB0_239 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_269:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-408(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_271
# BB#270:                               #   in Loop: Header=BB0_239 Depth=2
	incb	-107(%rbp)
	movq	-408(%rbp), %rax
	movswl	52(%rax), %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	-408(%rbp), %rax
	movswl	52(%rax), %eax
	movq	-416(%rbp), %rcx
	movl	48(%rcx), %edx
	addl	56(%rcx), %edx
	addl	%eax, %edx
	movl	%edx, -120(%rbp)
	movl	$0, -116(%rbp)
	jmp	.LBB0_272
	.align	16, 0x90
.LBB0_249:                              #   in Loop: Header=BB0_239 Depth=2
	movb	$5, -108(%rbp)
	jmp	.LBB0_365
	.align	16, 0x90
.LBB0_271:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-408(%rbp), %rax
	movswl	52(%rax), %eax
	movq	-416(%rbp), %rcx
	movl	48(%rcx), %edx
	addl	56(%rcx), %edx
	addl	%eax, %edx
	addl	%edx, -120(%rbp)
	movq	-408(%rbp), %rax
	movswl	52(%rax), %eax
	addl	%eax, -116(%rbp)
.LBB0_272:                              #   in Loop: Header=BB0_239 Depth=2
	movl	$0, -448(%rbp)
	movq	-400(%rbp), %rax
	jmp	.LBB0_273
	.align	16, 0x90
.LBB0_274:                              #   in Loop: Header=BB0_273 Depth=3
	movq	-440(%rbp), %rax
.LBB0_273:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_274
# BB#275:                               #   in Loop: Header=BB0_239 Depth=2
	movq	$0, -424(%rbp)
	movl	$1, -444(%rbp)
	jmp	.LBB0_276
	.align	16, 0x90
.LBB0_284:                              #   in Loop: Header=BB0_276 Depth=3
	movzbl	%al, %eax
	movl	%eax, -444(%rbp)
.LBB0_276:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_278 Depth 4
	movq	-400(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_293
# BB#277:                               #   in Loop: Header=BB0_276 Depth=3
	movq	-400(%rbp), %rax
	jmp	.LBB0_278
	.align	16, 0x90
.LBB0_279:                              #   in Loop: Header=BB0_278 Depth=4
	movq	-432(%rbp), %rax
.LBB0_278:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        #       Parent Loop BB0_276 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_279
# BB#280:                               #   in Loop: Header=BB0_276 Depth=3
	movq	-432(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_285
# BB#281:                               #   in Loop: Header=BB0_276 Depth=3
	movq	-432(%rbp), %rax
	movq	%rax, -424(%rbp)
	cmpl	$0, -444(%rbp)
	je	.LBB0_282
# BB#283:                               #   in Loop: Header=BB0_276 Depth=3
	movq	-432(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_284
	.align	16, 0x90
.LBB0_285:                              #   in Loop: Header=BB0_276 Depth=3
	movq	-432(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_287
# BB#286:                               #   in Loop: Header=BB0_276 Depth=3
	movq	-432(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_276
	jmp	.LBB0_291
	.align	16, 0x90
.LBB0_287:                              #   in Loop: Header=BB0_276 Depth=3
	movq	-432(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_288
# BB#289:                               #   in Loop: Header=BB0_276 Depth=3
	movq	-432(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_290
.LBB0_282:                              #   in Loop: Header=BB0_276 Depth=3
	xorl	%eax, %eax
	jmp	.LBB0_284
.LBB0_288:                              #   in Loop: Header=BB0_276 Depth=3
	xorl	%eax, %eax
.LBB0_290:                              #   in Loop: Header=BB0_276 Depth=3
	testb	%al, %al
	je	.LBB0_276
.LBB0_291:                              #   in Loop: Header=BB0_239 Depth=2
	cmpq	$0, -424(%rbp)
	jne	.LBB0_293
# BB#292:                               #   in Loop: Header=BB0_239 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB0_293:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-400(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_315
# BB#294:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-424(%rbp), %rax
	movq	24(%rax), %rcx
	cmpq	16(%rax), %rcx
	je	.LBB0_296
# BB#295:                               #   in Loop: Header=BB0_239 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.10, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_296:                              #   in Loop: Header=BB0_239 Depth=2
	cmpq	$0, -128(%rbp)
	je	.LBB0_298
# BB#297:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-128(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, -272(%rbp)
.LBB0_298:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-424(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_300
# BB#299:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-432(%rbp), %rax
	movl	48(%rax), %esi
	movl	56(%rax), %edx
	movq	-424(%rbp), %rcx
	addq	$44, %rcx
	movl	-272(%rbp), %r8d
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	callq	ActualGap
	movq	-432(%rbp), %rcx
	subl	48(%rcx), %eax
	jmp	.LBB0_301
.LBB0_315:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-56(%rbp), %rax
	jmp	.LBB0_316
.LBB0_300:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-416(%rbp), %rax
	movl	56(%rax), %edi
	movq	-432(%rbp), %rax
	movl	48(%rax), %esi
	movl	56(%rax), %edx
	movq	-424(%rbp), %rcx
	addq	$44, %rcx
	movl	-272(%rbp), %r8d
	movl	-120(%rbp), %r9d
	subl	%edi, %r9d
	callq	ActualGap
	movq	-432(%rbp), %rcx
	subl	48(%rcx), %eax
	movq	-416(%rbp), %rcx
	subl	56(%rcx), %eax
.LBB0_301:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-424(%rbp), %rcx
	movw	%ax, 52(%rcx)
	movq	-424(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$2, %eax
	je	.LBB0_303
# BB#302:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-424(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$7, %eax
	jne	.LBB0_312
.LBB0_303:                              #   in Loop: Header=BB0_239 Depth=2
	cmpl	$0, -292(%rbp)
	je	.LBB0_313
# BB#304:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-416(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_306
# BB#305:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-416(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_314
.LBB0_306:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-416(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movq	-416(%rbp), %rcx
	movzbl	63(%rax,%rcx), %eax
	cmpl	$45, %eax
	je	.LBB0_314
# BB#307:                               #   in Loop: Header=BB0_239 Depth=2
	cmpq	$0, FillObject.hyph_word(%rip)
	jne	.LBB0_309
# BB#308:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.11, %esi
	callq	MakeWord
	movq	%rax, FillObject.hyph_word(%rip)
	andl	$-4096, 40(%rax)        # imm = 0xFFFFFFFFFFFFF000
	movq	-56(%rbp), %rax
	movq	FillObject.hyph_word(%rip), %rcx
	movl	76(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-56(%rbp), %rax
	movq	FillObject.hyph_word(%rip), %rcx
	movl	76(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-56(%rbp), %rax
	movl	76(%rax), %eax
	shrl	%eax
	movq	FillObject.hyph_word(%rip), %rcx
	andl	$528482304, %eax        # imm = 0x1F800000
	movl	40(%rcx), %edx
	movl	$-528482305, %esi       # imm = 0xFFFFFFFFE07FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movq	FillObject.hyph_word(%rip), %rcx
	shll	$31, %eax
	movl	40(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
.LBB0_309:                              #   in Loop: Header=BB0_239 Depth=2
	movq	FillObject.hyph_word(%rip), %rax
	movl	40(%rax), %eax
	andl	%r15d, %eax
	movq	-56(%rbp), %rcx
	movl	76(%rcx), %ecx
	andl	%r15d, %ecx
	cmpl	%ecx, %eax
	je	.LBB0_311
# BB#310:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-56(%rbp), %rax
	movl	76(%rax), %eax
	andl	%r15d, %eax
	movq	FillObject.hyph_word(%rip), %rcx
	movl	40(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-56(%rbp), %rax
	movw	34(%rax), %ax
	movq	FillObject.hyph_word(%rip), %rcx
	movw	%ax, 34(%rcx)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r13d, %eax
	movq	FillObject.hyph_word(%rip), %rcx
	movl	36(%rcx), %edx
	andl	%ebx, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	andl	%ebx, %eax
	movq	FillObject.hyph_word(%rip), %rcx
	movl	36(%rcx), %edx
	andl	%r13d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	FillObject.hyph_word(%rip), %rdi
	callq	FontWordSize
.LBB0_311:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-424(%rbp), %rax
	orw	$-8192, 44(%rax)        # imm = 0xFFFFFFFFFFFFE000
	movq	FillObject.hyph_word(%rip), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	addl	%ecx, -120(%rbp)
	jmp	.LBB0_314
.LBB0_312:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-424(%rbp), %rax
	btl	$7, 44(%rax)
	jae	.LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_239 Depth=2
	movl	$1, -448(%rbp)
.LBB0_314:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-424(%rbp), %rax
	movq	24(%rax), %rax
.LBB0_316:                              #   in Loop: Header=BB0_239 Depth=2
	movq	%rax, -136(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_317
# BB#321:                               #   in Loop: Header=BB0_239 Depth=2
	cmpq	$0, -128(%rbp)
	je	.LBB0_323
# BB#322:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-128(%rbp), %rax
	movl	68(%rax), %eax
	jmp	.LBB0_324
.LBB0_317:                              #   in Loop: Header=BB0_239 Depth=2
	cmpq	$0, -128(%rbp)
	je	.LBB0_319
# BB#318:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-128(%rbp), %rax
	movl	68(%rax), %eax
	jmp	.LBB0_320
.LBB0_323:                              #   in Loop: Header=BB0_239 Depth=2
	movl	-272(%rbp), %eax
.LBB0_324:                              #   in Loop: Header=BB0_239 Depth=2
	movl	%eax, -464(%rbp)
	movq	-144(%rbp), %rax
	jmp	.LBB0_325
	.align	16, 0x90
.LBB0_326:                              #   in Loop: Header=BB0_325 Depth=3
	movq	-456(%rbp), %rax
.LBB0_325:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_326
# BB#327:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-456(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB0_328
.LBB0_319:                              #   in Loop: Header=BB0_239 Depth=2
	movl	-268(%rbp), %eax
.LBB0_320:                              #   in Loop: Header=BB0_239 Depth=2
	movl	%eax, -464(%rbp)
	movl	$0, -112(%rbp)
.LBB0_328:                              #   in Loop: Header=BB0_239 Depth=2
	movzbl	-107(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB0_339
# BB#329:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -472(%rbp)
	cmpb	$0, 32(%rax)
	je	.LBB0_331
# BB#330:                               #   in Loop: Header=BB0_239 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_331:                              #   in Loop: Header=BB0_239 Depth=2
	movq	-472(%rbp), %rax
	jmp	.LBB0_332
	.align	16, 0x90
.LBB0_333:                              #   in Loop: Header=BB0_332 Depth=3
	movq	-456(%rbp), %rax
.LBB0_332:                              #   Parent Loop BB0_121 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_333
# BB#334:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-456(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_339
# BB#335:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-456(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_339
# BB#336:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-456(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	jne	.LBB0_339
# BB#337:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-456(%rbp), %rax
	movzwl	46(%rax), %eax
	cmpl	$4096, %eax             # imm = 0x1000
	jne	.LBB0_339
# BB#338:                               #   in Loop: Header=BB0_239 Depth=2
	subl	$-128, -112(%rbp)
	.align	16, 0x90
.LBB0_339:                              #   in Loop: Header=BB0_239 Depth=2
	cmpl	$0, -464(%rbp)
	jg	.LBB0_343
# BB#340:                               #   in Loop: Header=BB0_239 Depth=2
	cmpl	$0, -120(%rbp)
	je	.LBB0_341
# BB#342:                               #   in Loop: Header=BB0_239 Depth=2
	movb	$2, -108(%rbp)
	jmp	.LBB0_357
	.align	16, 0x90
.LBB0_343:                              #   in Loop: Header=BB0_239 Depth=2
	movzbl	-107(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB0_346
# BB#344:                               #   in Loop: Header=BB0_239 Depth=2
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jle	.LBB0_346
# BB#345:                               #   in Loop: Header=BB0_239 Depth=2
	movb	$4, -108(%rbp)
	jmp	.LBB0_357
.LBB0_346:                              #   in Loop: Header=BB0_239 Depth=2
	movl	-464(%rbp), %eax
	subl	-120(%rbp), %eax
	movl	-116(%rbp), %ecx
	addl	%ecx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_348
# BB#347:                               #   in Loop: Header=BB0_239 Depth=2
	movzbl	-107(%rbp), %eax
	testl	%eax, %eax
	setg	-108(%rbp)
	movl	-464(%rbp), %ecx
	movl	%ecx, %eax
	subl	-120(%rbp), %eax
	shll	$9, %eax
	jmp	.LBB0_351
.LBB0_341:                              #   in Loop: Header=BB0_239 Depth=2
	movb	$0, -108(%rbp)
	jmp	.LBB0_358
.LBB0_348:                              #   in Loop: Header=BB0_239 Depth=2
	movl	-120(%rbp), %eax
	cmpl	-464(%rbp), %eax
	jg	.LBB0_352
# BB#349:                               #   in Loop: Header=BB0_239 Depth=2
	movb	$1, -108(%rbp)
.LBB0_350:                              #   in Loop: Header=BB0_239 Depth=2
	movl	-464(%rbp), %ecx
	movl	%ecx, %eax
	subl	-120(%rbp), %eax
	shll	$7, %eax
.LBB0_351:                              #   in Loop: Header=BB0_239 Depth=2
	cltd
	idivl	%ecx
	movl	%eax, -460(%rbp)
	imull	%eax, %eax
	addl	%eax, -112(%rbp)
	jmp	.LBB0_358
.LBB0_352:                              #   in Loop: Header=BB0_239 Depth=2
	movq	BackEnd(%rip), %rax
	cmpl	$0, 36(%rax)
	je	.LBB0_356
# BB#353:                               #   in Loop: Header=BB0_239 Depth=2
	cmpl	$0, -80(%rbp)
	je	.LBB0_356
# BB#354:                               #   in Loop: Header=BB0_239 Depth=2
	movl	-120(%rbp), %eax
	subl	-464(%rbp), %eax
	shll	$2, %eax
	cmpl	-116(%rbp), %eax
	jg	.LBB0_356
# BB#355:                               #   in Loop: Header=BB0_239 Depth=2
	movb	$2, -108(%rbp)
	jmp	.LBB0_350
.LBB0_356:                              #   in Loop: Header=BB0_239 Depth=2
	movb	$3, -108(%rbp)
	.align	16, 0x90
.LBB0_357:                              #   in Loop: Header=BB0_239 Depth=2
	addl	$1048576, -112(%rbp)    # imm = 0x100000
.LBB0_358:                              #   in Loop: Header=BB0_239 Depth=2
	cmpl	$0, -112(%rbp)
	jns	.LBB0_360
# BB#359:                               #   in Loop: Header=BB0_239 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_360:                              #   in Loop: Header=BB0_239 Depth=2
	cmpl	$0, -448(%rbp)
	je	.LBB0_362
# BB#361:                               #   in Loop: Header=BB0_239 Depth=2
	movb	$7, -108(%rbp)
	jmp	.LBB0_365
.LBB0_362:                              #   in Loop: Header=BB0_239 Depth=2
	movzbl	-108(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB0_365
# BB#363:                               #   in Loop: Header=BB0_239 Depth=2
	movq	-424(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_365
# BB#364:                               #   in Loop: Header=BB0_239 Depth=2
	movb	$3, -108(%rbp)
	movl	$1048576, -112(%rbp)    # imm = 0x100000
	jmp	.LBB0_365
	.align	16, 0x90
.LBB0_472:                              #   in Loop: Header=BB0_121 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB0_475
# BB#473:                               #   in Loop: Header=BB0_121 Depth=1
	cmpl	$129, -160(%rbp)
	jge	.LBB0_474
.LBB0_475:
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_476
# BB#499:
	movzbl	zz_lengths+19(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_501
# BB#500:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_504
.LBB0_476:
	cmpq	$0, -72(%rbp)
	je	.LBB0_477
# BB#478:
	movzbl	zz_lengths+19(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_480
# BB#479:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_483
.LBB0_501:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_502
# BB#503:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_504
.LBB0_477:
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$0, 48(%rax)
	movl	-268(%rbp), %eax
	movq	-200(%rbp), %rcx
	movl	%eax, 56(%rcx)
	jmp	.LBB0_778
.LBB0_480:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_481
# BB#482:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_483
.LBB0_502:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_504:
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
	movq	%rax, -200(%rbp)
	andb	$-9, 43(%rax)
	movq	-200(%rbp), %rax
	movl	$0, 48(%rax)
	movl	-268(%rbp), %eax
	movq	-200(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-56(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_506
# BB#505:
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
.LBB0_506:
	movq	%rax, xx_tmp(%rip)
	movq	-200(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_509
# BB#507:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_509
# BB#508:
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
.LBB0_509:
	movq	-144(%rbp), %rax
	movq	%rax, -560(%rbp)
	movb	$1, %bl
	movl	$1048575, %r14d         # imm = 0xFFFFF
	movl	$-1048576, %r15d        # imm = 0xFFFFFFFFFFF00000
	movl	$2147483647, %r12d      # imm = 0x7FFFFFFF
	movl	$-1610612737, %r13d     # imm = 0xFFFFFFFF9FFFFFFF
	jmp	.LBB0_510
	.align	16, 0x90
.LBB0_635:                              #   in Loop: Header=BB0_510 Depth=1
	movq	-552(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -560(%rbp)
.LBB0_510:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_575 Depth 2
                                        #     Child Loop BB0_579 Depth 2
	movq	-560(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_636
# BB#511:                               #   in Loop: Header=BB0_510 Depth=1
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_513
# BB#512:                               #   in Loop: Header=BB0_510 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_516
	.align	16, 0x90
.LBB0_513:                              #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_514
# BB#515:                               #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_516
.LBB0_514:                              #   in Loop: Header=BB0_510 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_516:                              #   in Loop: Header=BB0_510 Depth=1
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
	movq	%rax, -232(%rbp)
	movq	-56(%rbp), %rcx
	movzwl	42(%rcx), %ecx
	movzwl	42(%rax), %edx
	andl	$2048, %ecx             # imm = 0x800
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%ecx, %edx
	movw	%dx, 42(%rax)
	movq	-56(%rbp), %rax
	movw	34(%rax), %ax
	movq	-232(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-232(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r15d, %eax
	movq	-232(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-232(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-56(%rbp), %rax
	movzbl	65(%rax), %eax
	andl	$1, %eax
	movq	-232(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-232(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-232(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-232(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-56(%rbp), %rax
	movw	66(%rax), %ax
	movq	-232(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	andb	$3, %al
	movq	-232(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	movq	-232(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	movq	-232(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-56(%rbp), %rax
	movb	64(%rax), %al
	movq	-232(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-56(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-232(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-56(%rbp), %rax
	movzbl	69(%rax), %eax
	andl	$1, %eax
	movq	-232(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-56(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-232(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-56(%rbp), %rax
	movzwl	68(%rax), %eax
	movq	-232(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-56(%rbp), %rax
	movzwl	68(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-232(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-56(%rbp), %rax
	movw	70(%rax), %ax
	movq	-232(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-56(%rbp), %rax
	movl	76(%rax), %eax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	%ecx, %eax
	movq	-232(%rbp), %rcx
	movl	76(%rcx), %edx
	movl	$-4096, %esi            # imm = 0xFFFFFFFFFFFFF000
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 76(%rcx)
	movq	-56(%rbp), %rax
	movq	-232(%rbp), %rcx
	movl	76(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	76(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 76(%rcx)
	movq	-56(%rbp), %rax
	movq	-232(%rbp), %rcx
	movl	76(%rax), %eax
	movl	$12582912, %edx         # imm = 0xC00000
	andl	%edx, %eax
	movl	76(%rcx), %edx
	movl	$-12582913, %esi        # imm = 0xFFFFFFFFFF3FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 76(%rcx)
	movq	-56(%rbp), %rax
	movq	-232(%rbp), %rcx
	movl	76(%rax), %eax
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	%edx, %eax
	movl	76(%rcx), %edx
	movl	$-1056964609, %esi      # imm = 0xFFFFFFFFC0FFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 76(%rcx)
	movq	-56(%rbp), %rax
	movl	76(%rax), %eax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	%ecx, %eax
	movq	-232(%rbp), %rcx
	movl	76(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 76(%rcx)
	movq	-56(%rbp), %rax
	movq	-232(%rbp), %rcx
	movl	76(%rax), %eax
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	%edx, %eax
	movl	76(%rcx), %edx
	movl	$-1073741825, %esi      # imm = 0xFFFFFFFFBFFFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 76(%rcx)
	movq	-56(%rbp), %rax
	movb	64(%rax), %al
	andb	$1, %al
	movq	-232(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-56(%rbp), %rax
	movb	64(%rax), %al
	movq	-232(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-56(%rbp), %rax
	movb	64(%rax), %al
	movq	-232(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-56(%rbp), %rax
	movb	64(%rax), %al
	movq	-232(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-56(%rbp), %rax
	movw	72(%rax), %ax
	movq	-232(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-56(%rbp), %rax
	movw	74(%rax), %ax
	movq	-232(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-200(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_520
# BB#517:                               #   in Loop: Header=BB0_510 Depth=1
	movq	-232(%rbp), %rax
	movb	68(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	je	.LBB0_519
# BB#518:                               #   in Loop: Header=BB0_510 Depth=1
	movq	-232(%rbp), %rax
	movb	68(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	jne	.LBB0_520
.LBB0_519:                              #   in Loop: Header=BB0_510 Depth=1
	movq	-232(%rbp), %rax
	orb	$112, 68(%rax)
.LBB0_520:                              #   in Loop: Header=BB0_510 Depth=1
	movq	-232(%rbp), %rax
	movl	$0, 48(%rax)
	movl	-268(%rbp), %eax
	movq	-232(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	je	.LBB0_522
# BB#521:                               #   in Loop: Header=BB0_510 Depth=1
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$3, %eax
	jne	.LBB0_565
.LBB0_522:                              #   in Loop: Header=BB0_510 Depth=1
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.4, %esi
	callq	MakeWord
	movq	%rax, -568(%rbp)
	movl	$0, 60(%rax)
	movq	-568(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-568(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-568(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-568(%rbp), %rax
	andl	$-4096, 40(%rax)        # imm = 0xFFFFFFFFFFFFF000
	movq	-568(%rbp), %rax
	andl	$-4190209, 40(%rax)     # imm = 0xFFFFFFFFFFC00FFF
	movq	-568(%rbp), %rax
	andl	$-4194305, 40(%rax)     # imm = 0xFFFFFFFFFFBFFFFF
	movq	-568(%rbp), %rax
	andl	$-528482305, 40(%rax)   # imm = 0xFFFFFFFFE07FFFFF
	movq	-568(%rbp), %rax
	andl	$2147483647, 40(%rax)   # imm = 0x7FFFFFFF
	movq	-568(%rbp), %rax
	movl	40(%rax), %ecx
	andl	%r13d, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movzbl	zz_lengths+26(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_524
# BB#523:                               #   in Loop: Header=BB0_510 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_527
	.align	16, 0x90
.LBB0_524:                              #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_525
# BB#526:                               #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_527
.LBB0_525:                              #   in Loop: Header=BB0_510 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_527:                              #   in Loop: Header=BB0_510 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$26, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -576(%rbp)
	movl	$8388607, 64(%rax)      # imm = 0x7FFFFF
	movl	-276(%rbp), %eax
	movq	-576(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movq	-576(%rbp), %rax
	movl	$8388607, 72(%rax)      # imm = 0x7FFFFF
	movq	-576(%rbp), %rax
	movl	$0, 48(%rax)
	movl	-276(%rbp), %eax
	movq	-576(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-576(%rbp), %rax
	movl	40(%rax), %ecx
	andl	%r13d, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_529
# BB#528:                               #   in Loop: Header=BB0_510 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_532
	.align	16, 0x90
.LBB0_529:                              #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_530
# BB#531:                               #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_532
.LBB0_530:                              #   in Loop: Header=BB0_510 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_532:                              #   in Loop: Header=BB0_510 Depth=1
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
	movq	-576(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_535
# BB#533:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_535
# BB#534:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_535:                              #   in Loop: Header=BB0_510 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-568(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_538
# BB#536:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_538
# BB#537:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_538:                              #   in Loop: Header=BB0_510 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_540
# BB#539:                               #   in Loop: Header=BB0_510 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_543
	.align	16, 0x90
.LBB0_540:                              #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_541
# BB#542:                               #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_543
.LBB0_541:                              #   in Loop: Header=BB0_510 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_543:                              #   in Loop: Header=BB0_510 Depth=1
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
	movq	-232(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_546
# BB#544:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_546
# BB#545:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_546:                              #   in Loop: Header=BB0_510 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-576(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_549
# BB#547:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_549
# BB#548:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_549:                              #   in Loop: Header=BB0_510 Depth=1
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_551
# BB#550:                               #   in Loop: Header=BB0_510 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_554
	.align	16, 0x90
.LBB0_551:                              #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_552
# BB#553:                               #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_554
.LBB0_552:                              #   in Loop: Header=BB0_510 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_554:                              #   in Loop: Header=BB0_510 Depth=1
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
	movq	%rax, -584(%rbp)
	movb	$0, 42(%rax)
	movq	-584(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-584(%rbp), %rax
	orw	$128, 44(%rax)
	movq	-584(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-584(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-584(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-584(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 44(%rax)
	movq	-584(%rbp), %rax
	movw	$0, 46(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_556
# BB#555:                               #   in Loop: Header=BB0_510 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_559
	.align	16, 0x90
.LBB0_556:                              #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_557
# BB#558:                               #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_559
.LBB0_557:                              #   in Loop: Header=BB0_510 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_559:                              #   in Loop: Header=BB0_510 Depth=1
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
	movq	-232(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_562
# BB#560:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_562
# BB#561:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_562:                              #   in Loop: Header=BB0_510 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-584(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_565
# BB#563:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_565
# BB#564:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_565:                              #   in Loop: Header=BB0_510 Depth=1
	movq	-560(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -592(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -600(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	-592(%rbp), %rax
	cmpq	-600(%rbp), %rax
	je	.LBB0_574
# BB#566:                               #   in Loop: Header=BB0_510 Depth=1
	movq	-592(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_568
# BB#567:                               #   in Loop: Header=BB0_510 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_568:                              #   in Loop: Header=BB0_510 Depth=1
	movq	-592(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-600(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_571
# BB#569:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_571
# BB#570:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_571:                              #   in Loop: Header=BB0_510 Depth=1
	movq	-592(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-608(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_574
# BB#572:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_574
# BB#573:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_574:                              #   in Loop: Header=BB0_510 Depth=1
	movq	-560(%rbp), %rax
	jmp	.LBB0_575
	.align	16, 0x90
.LBB0_576:                              #   in Loop: Header=BB0_575 Depth=2
	movq	-552(%rbp), %rax
.LBB0_575:                              #   Parent Loop BB0_510 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_576
# BB#577:                               #   in Loop: Header=BB0_510 Depth=1
	movq	-552(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$7, %eax
	jne	.LBB0_608
# BB#578:                               #   in Loop: Header=BB0_510 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_579
	.align	16, 0x90
.LBB0_580:                              #   in Loop: Header=BB0_579 Depth=2
	movq	-616(%rbp), %rax
.LBB0_579:                              #   Parent Loop BB0_510 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_580
# BB#581:                               #   in Loop: Header=BB0_510 Depth=1
	movq	-616(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	movl	%eax, -620(%rbp)
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_583
# BB#582:                               #   in Loop: Header=BB0_510 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_586
	.align	16, 0x90
.LBB0_583:                              #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_584
# BB#585:                               #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_586
.LBB0_584:                              #   in Loop: Header=BB0_510 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_586:                              #   in Loop: Header=BB0_510 Depth=1
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
	movq	%rax, -616(%rbp)
	movb	$0, 42(%rax)
	movq	-616(%rbp), %rax
	movb	$0, 41(%rax)
	movl	-620(%rbp), %eax
	movq	-616(%rbp), %rcx
	andl	$3, %eax
	shll	$29, %eax
	movl	40(%rcx), %edx
	andl	%r13d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-616(%rbp), %rax
	orw	$128, 44(%rax)
	movq	-616(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-616(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-616(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-616(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 44(%rax)
	movq	-616(%rbp), %rax
	movw	$0, 46(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_588
# BB#587:                               #   in Loop: Header=BB0_510 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_591
	.align	16, 0x90
.LBB0_588:                              #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_589
# BB#590:                               #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_591
.LBB0_589:                              #   in Loop: Header=BB0_510 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_591:                              #   in Loop: Header=BB0_510 Depth=1
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
	je	.LBB0_594
# BB#592:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_594
# BB#593:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_594:                              #   in Loop: Header=BB0_510 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-616(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_597
# BB#595:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_597
# BB#596:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_597:                              #   in Loop: Header=BB0_510 Depth=1
	movq	-232(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.11, %esi
	callq	MakeWord
	movq	%rax, -616(%rbp)
	movq	-56(%rbp), %rcx
	movl	76(%rcx), %ecx
	movl	$4095, %edx             # imm = 0xFFF
	andl	%edx, %ecx
	movl	40(%rax), %edx
	movl	$-4096, %esi            # imm = 0xFFFFFFFFFFFFF000
	andl	%esi, %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	-616(%rbp), %rcx
	movl	76(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-56(%rbp), %rax
	movq	-616(%rbp), %rcx
	movl	76(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-56(%rbp), %rax
	movl	76(%rax), %eax
	shrl	%eax
	movq	-616(%rbp), %rcx
	andl	$528482304, %eax        # imm = 0x1F800000
	movl	40(%rcx), %edx
	movl	$-528482305, %esi       # imm = 0xFFFFFFFFE07FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-616(%rbp), %rcx
	shll	$31, %eax
	movl	40(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movl	-620(%rbp), %eax
	movq	-616(%rbp), %rcx
	andl	$3, %eax
	shll	$29, %eax
	movl	40(%rcx), %edx
	andl	%r13d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-616(%rbp), %rdi
	callq	FontWordSize
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_599
# BB#598:                               #   in Loop: Header=BB0_510 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_602
	.align	16, 0x90
.LBB0_599:                              #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_600
# BB#601:                               #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_602
.LBB0_600:                              #   in Loop: Header=BB0_510 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_602:                              #   in Loop: Header=BB0_510 Depth=1
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
	je	.LBB0_605
# BB#603:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_605
# BB#604:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_605:                              #   in Loop: Header=BB0_510 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-616(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_608
# BB#606:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_608
# BB#607:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_608:                              #   in Loop: Header=BB0_510 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_610
# BB#609:                               #   in Loop: Header=BB0_510 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_613
	.align	16, 0x90
.LBB0_610:                              #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_611
# BB#612:                               #   in Loop: Header=BB0_510 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_613
.LBB0_611:                              #   in Loop: Header=BB0_510 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_613:                              #   in Loop: Header=BB0_510 Depth=1
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
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_616
# BB#614:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_616
# BB#615:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_616:                              #   in Loop: Header=BB0_510 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-232(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_619
# BB#617:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_619
# BB#618:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_619:                              #   in Loop: Header=BB0_510 Depth=1
	movq	-560(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_621
# BB#620:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_621:                              #   in Loop: Header=BB0_510 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-200(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_624
# BB#622:                               #   in Loop: Header=BB0_510 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_624
# BB#623:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_624:                              #   in Loop: Header=BB0_510 Depth=1
	movq	-552(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-552(%rbp), %rax
	movb	$1, 42(%rax)
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-552(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-56(%rbp), %rax
	movzbl	65(%rax), %eax
	andl	$1, %eax
	movq	-552(%rbp), %rcx
	movzwl	44(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-552(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-552(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-552(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-56(%rbp), %rax
	movw	66(%rax), %ax
	movq	-552(%rbp), %rcx
	movw	%ax, 46(%rcx)
	movq	-552(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_635
# BB#625:                               #   in Loop: Header=BB0_510 Depth=1
	movq	-552(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_627
# BB#626:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_627:                              #   in Loop: Header=BB0_510 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_629
# BB#628:                               #   in Loop: Header=BB0_510 Depth=1
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
.LBB0_629:                              #   in Loop: Header=BB0_510 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_631
# BB#630:                               #   in Loop: Header=BB0_510 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_632
.LBB0_631:                              #   in Loop: Header=BB0_510 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_633
.LBB0_632:                              #   in Loop: Header=BB0_510 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_633:                              #   in Loop: Header=BB0_510 Depth=1
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
	jne	.LBB0_635
# BB#634:                               #   in Loop: Header=BB0_510 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB0_635
.LBB0_636:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_638
# BB#637:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_641
.LBB0_638:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_639
# BB#640:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_641
.LBB0_639:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_641:
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
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_644
# BB#642:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_644
# BB#643:
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
.LBB0_644:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_647
# BB#645:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_647
# BB#646:
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
.LBB0_647:
	movq	-56(%rbp), %rax
	movl	$0, 48(%rax)
	movl	-268(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	je	.LBB0_649
# BB#648:
	movq	-56(%rbp), %rax
	movb	68(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	jne	.LBB0_650
.LBB0_649:
	movq	-56(%rbp), %rax
	orb	$112, 68(%rax)
.LBB0_650:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_651
	.align	16, 0x90
.LBB0_652:                              #   in Loop: Header=BB0_651 Depth=1
	movq	-232(%rbp), %rax
.LBB0_651:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_652
# BB#653:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	je	.LBB0_654
# BB#674:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_675
	.align	16, 0x90
.LBB0_676:                              #   in Loop: Header=BB0_675 Depth=1
	movq	-224(%rbp), %rax
.LBB0_675:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_676
# BB#677:
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB0_679
# BB#678:
	movq	-224(%rbp), %rax
	cmpb	$0, 64(%rax)
	je	.LBB0_680
.LBB0_679:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_680:
	movq	-232(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_682
# BB#681:
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
.LBB0_682:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_684
# BB#683:
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
.LBB0_684:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_686
# BB#685:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_687
.LBB0_686:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_688
.LBB0_654:
	movq	-200(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_656
# BB#655:
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
.LBB0_656:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_658
# BB#657:
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
.LBB0_658:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_660
# BB#659:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_661
.LBB0_660:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_662
.LBB0_687:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_688:
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
	jne	.LBB0_690
# BB#689:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_690:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_691
	.align	16, 0x90
.LBB0_692:                              #   in Loop: Header=BB0_691 Depth=1
	movq	-224(%rbp), %rax
.LBB0_691:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_692
# BB#693:
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_695
# BB#694:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_695:
	movq	-232(%rbp), %rax
	jmp	.LBB0_667
.LBB0_661:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_662:
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
	jne	.LBB0_664
# BB#663:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_664:
	movq	-200(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	jne	.LBB0_666
# BB#665:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_666:
	movq	-200(%rbp), %rax
.LBB0_667:
	movq	(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_669
# BB#668:
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
.LBB0_669:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_671
# BB#670:
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
.LBB0_671:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_673
# BB#672:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_696
.LBB0_673:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_697
.LBB0_696:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_697:
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
	jne	.LBB0_699
# BB#698:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_699:
	movq	-56(%rbp), %rax
	testl	$-2147483648, 76(%rax)  # imm = 0xFFFFFFFF80000000
	je	.LBB0_707
# BB#700:
	movq	-200(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	je	.LBB0_707
# BB#701:
	movq	-200(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_702
	.align	16, 0x90
.LBB0_703:                              #   in Loop: Header=BB0_702 Depth=1
	movq	-208(%rbp), %rax
.LBB0_702:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_703
# BB#704:
	movq	-208(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_706
# BB#705:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_706:
	movq	-208(%rbp), %rax
	orw	$128, 44(%rax)
.LBB0_707:
	movq	-56(%rbp), %rax
	btl	$30, 76(%rax)
	jae	.LBB0_715
# BB#708:
	movq	-200(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	je	.LBB0_715
# BB#709:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	jmp	.LBB0_710
	.align	16, 0x90
.LBB0_711:                              #   in Loop: Header=BB0_710 Depth=1
	movq	-208(%rbp), %rax
.LBB0_710:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_711
# BB#712:
	movq	-208(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_714
# BB#713:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_714:
	movq	-208(%rbp), %rax
	orw	$128, 44(%rax)
.LBB0_715:
	movq	-200(%rbp), %rax
	cmpq	%rax, (%rax)
	jne	.LBB0_717
# BB#716:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.27, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_717:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_718
	.align	16, 0x90
.LBB0_719:                              #   in Loop: Header=BB0_718 Depth=1
	movq	-232(%rbp), %rax
.LBB0_718:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_719
# BB#720:
	movl	$1, -284(%rbp)
	movq	-232(%rbp), %rax
	jmp	.LBB0_721
	.align	16, 0x90
.LBB0_729:                              #   in Loop: Header=BB0_721 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
	movq	-240(%rbp), %rax
.LBB0_721:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_723 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	cmpq	-232(%rbp), %rax
	je	.LBB0_732
# BB#722:                               #   in Loop: Header=BB0_721 Depth=1
	movq	-240(%rbp), %rax
	jmp	.LBB0_723
	.align	16, 0x90
.LBB0_724:                              #   in Loop: Header=BB0_723 Depth=2
	movq	-224(%rbp), %rax
.LBB0_723:                              #   Parent Loop BB0_721 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_724
# BB#725:                               #   in Loop: Header=BB0_721 Depth=1
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_730
# BB#726:                               #   in Loop: Header=BB0_721 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB0_727
# BB#728:                               #   in Loop: Header=BB0_721 Depth=1
	movq	-224(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_729
	.align	16, 0x90
.LBB0_730:                              #   in Loop: Header=BB0_721 Depth=1
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_739
# BB#731:                               #   in Loop: Header=BB0_721 Depth=1
	movq	-224(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_743
	jmp	.LBB0_732
	.align	16, 0x90
.LBB0_739:                              #   in Loop: Header=BB0_721 Depth=1
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_740
# BB#741:                               #   in Loop: Header=BB0_721 Depth=1
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_742
.LBB0_727:                              #   in Loop: Header=BB0_721 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_729
.LBB0_740:                              #   in Loop: Header=BB0_721 Depth=1
	xorl	%eax, %eax
.LBB0_742:                              #   in Loop: Header=BB0_721 Depth=1
	testb	%al, %al
	jne	.LBB0_732
.LBB0_743:                              #   in Loop: Header=BB0_721 Depth=1
	movq	-240(%rbp), %rax
	jmp	.LBB0_721
.LBB0_732:
	movq	-240(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB0_734
# BB#733:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_734:
	movq	-224(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -280(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$0, -208(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_735
	.align	16, 0x90
.LBB0_748:                              #   in Loop: Header=BB0_735 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_735:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_737 Depth 2
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	cmpq	-232(%rbp), %rax
	je	.LBB0_757
# BB#736:                               #   in Loop: Header=BB0_735 Depth=1
	movq	-240(%rbp), %rax
	jmp	.LBB0_737
	.align	16, 0x90
.LBB0_738:                              #   in Loop: Header=BB0_737 Depth=2
	movq	-224(%rbp), %rax
.LBB0_737:                              #   Parent Loop BB0_735 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_738
# BB#744:                               #   in Loop: Header=BB0_735 Depth=1
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_749
# BB#745:                               #   in Loop: Header=BB0_735 Depth=1
	movq	-224(%rbp), %rax
	movq	%rax, -208(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_746
# BB#747:                               #   in Loop: Header=BB0_735 Depth=1
	movq	-224(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_748
	.align	16, 0x90
.LBB0_749:                              #   in Loop: Header=BB0_735 Depth=1
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_751
# BB#750:                               #   in Loop: Header=BB0_735 Depth=1
	movq	-224(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_735
	jmp	.LBB0_755
	.align	16, 0x90
.LBB0_751:                              #   in Loop: Header=BB0_735 Depth=1
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_752
# BB#753:                               #   in Loop: Header=BB0_735 Depth=1
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_754
.LBB0_746:                              #   in Loop: Header=BB0_735 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_748
.LBB0_752:                              #   in Loop: Header=BB0_735 Depth=1
	xorl	%eax, %eax
.LBB0_754:                              #   in Loop: Header=BB0_735 Depth=1
	testb	%al, %al
	je	.LBB0_735
	jmp	.LBB0_755
.LBB0_481:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_483:
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
	movq	%rax, -200(%rbp)
	andb	$-9, 43(%rax)
	movq	-56(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_485
# BB#484:
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
.LBB0_485:
	movq	%rax, xx_tmp(%rip)
	movq	-200(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_488
# BB#486:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_488
# BB#487:
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
.LBB0_488:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_490
# BB#489:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_493
.LBB0_490:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_491
# BB#492:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_493
.LBB0_491:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_493:
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
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_496
# BB#494:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_496
# BB#495:
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
.LBB0_496:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_778
# BB#497:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_778
# BB#498:
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
	jmp	.LBB0_778
.LBB0_755:
	cmpq	$0, -208(%rbp)
	jne	.LBB0_757
# BB#756:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB0_757:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_759 Depth 2
                                        #       Child Loop BB0_761 Depth 3
	movq	-240(%rbp), %rax
	cmpq	-232(%rbp), %rax
	je	.LBB0_774
# BB#758:                               #   in Loop: Header=BB0_757 Depth=1
	movq	-256(%rbp), %rax
	movl	56(%rax), %edi
	movq	-224(%rbp), %rax
	movl	48(%rax), %esi
	movl	56(%rax), %edx
	movq	-208(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	addl	%eax, -280(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$0, -208(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_759
	.align	16, 0x90
.LBB0_767:                              #   in Loop: Header=BB0_759 Depth=2
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_759:                              #   Parent Loop BB0_757 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_761 Depth 3
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	cmpq	-232(%rbp), %rax
	je	.LBB0_757
# BB#760:                               #   in Loop: Header=BB0_759 Depth=2
	movq	-240(%rbp), %rax
	jmp	.LBB0_761
	.align	16, 0x90
.LBB0_762:                              #   in Loop: Header=BB0_761 Depth=3
	movq	-224(%rbp), %rax
.LBB0_761:                              #   Parent Loop BB0_757 Depth=1
                                        #     Parent Loop BB0_759 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_762
# BB#763:                               #   in Loop: Header=BB0_759 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_768
# BB#764:                               #   in Loop: Header=BB0_759 Depth=2
	movq	-224(%rbp), %rax
	movq	%rax, -208(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_765
# BB#766:                               #   in Loop: Header=BB0_759 Depth=2
	movq	-224(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_767
	.align	16, 0x90
.LBB0_768:                              #   in Loop: Header=BB0_759 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_770
# BB#769:                               #   in Loop: Header=BB0_759 Depth=2
	movq	-224(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_759
	jmp	.LBB0_755
	.align	16, 0x90
.LBB0_770:                              #   in Loop: Header=BB0_759 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_771
# BB#772:                               #   in Loop: Header=BB0_759 Depth=2
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_773
.LBB0_765:                              #   in Loop: Header=BB0_759 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_767
.LBB0_771:                              #   in Loop: Header=BB0_759 Depth=2
	xorl	%eax, %eax
.LBB0_773:                              #   in Loop: Header=BB0_759 Depth=2
	testb	%al, %al
	je	.LBB0_759
	jmp	.LBB0_755
.LBB0_774:
	movl	-280(%rbp), %ecx
	movq	-256(%rbp), %rax
	addl	56(%rax), %ecx
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_776
# BB#775:
	movl	-280(%rbp), %eax
	movq	-256(%rbp), %rcx
	addl	56(%rcx), %eax
.LBB0_776:
	movq	-232(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-232(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	cmpl	-268(%rbp), %ecx
	jle	.LBB0_778
# BB#777:
	movq	-232(%rbp), %rax
	orb	$112, 68(%rax)
.LBB0_778:
	movq	-96(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_19
# BB#779:
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	jne	.LBB0_19
# BB#780:
	movq	-200(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)
	movl	$4095, %ebx             # imm = 0xFFF
	movl	$-2147483648, %r13d     # imm = 0xFFFFFFFF80000000
	movl	$2147483647, %r14d      # imm = 0x7FFFFFFF
	movl	$1610612736, %r15d      # imm = 0x60000000
	movl	$-1610612737, %r12d     # imm = 0xFFFFFFFF9FFFFFFF
	jmp	.LBB0_781
	.align	16, 0x90
.LBB0_837:                              #   in Loop: Header=BB0_781 Depth=1
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)
.LBB0_781:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_783 Depth 2
                                        #     Child Loop BB0_787 Depth 2
                                        #       Child Loop BB0_789 Depth 3
                                        #       Child Loop BB0_795 Depth 3
                                        #       Child Loop BB0_798 Depth 3
	movq	-240(%rbp), %rax
	cmpq	-200(%rbp), %rax
	je	.LBB0_19
# BB#782:                               #   in Loop: Header=BB0_781 Depth=1
	movq	-240(%rbp), %rax
	jmp	.LBB0_783
	.align	16, 0x90
.LBB0_784:                              #   in Loop: Header=BB0_783 Depth=2
	movq	-232(%rbp), %rax
.LBB0_783:                              #   Parent Loop BB0_781 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_784
# BB#785:                               #   in Loop: Header=BB0_781 Depth=1
	movq	-232(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB0_837
# BB#786:                               #   in Loop: Header=BB0_781 Depth=1
	movq	-232(%rbp), %rax
	jmp	.LBB0_787
	.align	16, 0x90
.LBB0_836:                              #   in Loop: Header=BB0_787 Depth=2
	movq	-248(%rbp), %rax
.LBB0_787:                              #   Parent Loop BB0_781 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_789 Depth 3
                                        #       Child Loop BB0_795 Depth 3
                                        #       Child Loop BB0_798 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpq	-232(%rbp), %rax
	je	.LBB0_837
# BB#788:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-248(%rbp), %rax
	jmp	.LBB0_789
	.align	16, 0x90
.LBB0_790:                              #   in Loop: Header=BB0_789 Depth=3
	movq	-208(%rbp), %rax
.LBB0_789:                              #   Parent Loop BB0_781 Depth=1
                                        #     Parent Loop BB0_787 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_790
# BB#791:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-208(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_836
# BB#792:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-208(%rbp), %rax
	cmpw	$0, 46(%rax)
	jne	.LBB0_836
# BB#793:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-208(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$7, %eax
	jne	.LBB0_836
# BB#794:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_795
	.align	16, 0x90
.LBB0_796:                              #   in Loop: Header=BB0_795 Depth=3
	movq	-256(%rbp), %rax
.LBB0_795:                              #   Parent Loop BB0_781 Depth=1
                                        #     Parent Loop BB0_787 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_796
# BB#797:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_798
	.align	16, 0x90
.LBB0_799:                              #   in Loop: Header=BB0_798 Depth=3
	movq	-264(%rbp), %rax
.LBB0_798:                              #   Parent Loop BB0_781 Depth=1
                                        #     Parent Loop BB0_787 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_799
# BB#800:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-256(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_802
# BB#801:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-256(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_836
.LBB0_802:                              #   in Loop: Header=BB0_787 Depth=2
	movq	-264(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_804
# BB#803:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-264(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_836
.LBB0_804:                              #   in Loop: Header=BB0_787 Depth=2
	movq	-256(%rbp), %rax
	movl	40(%rax), %eax
	andl	%ebx, %eax
	movq	-264(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	%ebx, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_836
# BB#805:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-256(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movq	-264(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$12, %ecx
	andl	$1023, %ecx             # imm = 0x3FF
	cmpl	%ecx, %eax
	jne	.LBB0_836
# BB#806:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-256(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$22, %eax
	andl	$1, %eax
	movq	-264(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$22, %ecx
	andl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_836
# BB#807:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-256(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$23, %eax
	andl	$63, %eax
	movq	-264(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$23, %ecx
	andl	$63, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_836
# BB#808:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-256(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	movq	-264(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$29, %ecx
	andl	$3, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_836
# BB#809:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-256(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$12, %ecx
	je	.LBB0_811
# BB#810:                               #   in Loop: Header=BB0_787 Depth=2
	movq	-264(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	sete	%al
.LBB0_811:                              #   in Loop: Header=BB0_787 Depth=2
	movzbl	%al, %edi
	addl	$11, %edi
	movl	%edi, -288(%rbp)
	movq	-256(%rbp), %rcx
	movq	-264(%rbp), %rdx
	addq	$64, %rdx
	leaq	64(%rcx), %rsi
	addq	$32, %rcx
	callq	MakeWordTwo
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	%ebx, %ecx
	movl	40(%rax), %edx
	movl	$-4096, %esi            # imm = 0xFFFFFFFFFFFFF000
	andl	%esi, %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-256(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-256(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-256(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$528482304, %edx        # imm = 0x1F800000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-528482305, %esi       # imm = 0xFFFFFFFFE07FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-256(%rbp), %rax
	movl	40(%rax), %eax
	andl	%r13d, %eax
	movq	-216(%rbp), %rcx
	movl	40(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-216(%rbp), %rdi
	callq	FontWordSize
	movq	-256(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	40(%rax), %eax
	andl	%r15d, %eax
	movl	40(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-248(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_813
# BB#812:                               #   in Loop: Header=BB0_787 Depth=2
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
.LBB0_813:                              #   in Loop: Header=BB0_787 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-216(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_816
# BB#814:                               #   in Loop: Header=BB0_787 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_816
# BB#815:                               #   in Loop: Header=BB0_787 Depth=2
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
.LBB0_816:                              #   in Loop: Header=BB0_787 Depth=2
	movq	-256(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_818
# BB#817:                               #   in Loop: Header=BB0_787 Depth=2
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
.LBB0_818:                              #   in Loop: Header=BB0_787 Depth=2
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_820
# BB#819:                               #   in Loop: Header=BB0_787 Depth=2
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
.LBB0_820:                              #   in Loop: Header=BB0_787 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_822
# BB#821:                               #   in Loop: Header=BB0_787 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_823
.LBB0_822:                              #   in Loop: Header=BB0_787 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_824
.LBB0_823:                              #   in Loop: Header=BB0_787 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_824:                              #   in Loop: Header=BB0_787 Depth=2
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
	jne	.LBB0_826
# BB#825:                               #   in Loop: Header=BB0_787 Depth=2
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_826:                              #   in Loop: Header=BB0_787 Depth=2
	movq	-264(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_828
# BB#827:                               #   in Loop: Header=BB0_787 Depth=2
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
.LBB0_828:                              #   in Loop: Header=BB0_787 Depth=2
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_830
# BB#829:                               #   in Loop: Header=BB0_787 Depth=2
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
.LBB0_830:                              #   in Loop: Header=BB0_787 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_832
# BB#831:                               #   in Loop: Header=BB0_787 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_833
.LBB0_832:                              #   in Loop: Header=BB0_787 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_834
.LBB0_833:                              #   in Loop: Header=BB0_787 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_834:                              #   in Loop: Header=BB0_787 Depth=2
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
	jne	.LBB0_836
# BB#835:                               #   in Loop: Header=BB0_787 Depth=2
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB0_836
.Lfunc_end0:
	.size	FillObject, .Lfunc_end0-FillObject
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_243
	.quad	.LBB0_366
	.quad	.LBB0_366
	.quad	.LBB0_366
	.quad	.LBB0_368
	.quad	.LBB0_471
	.quad	.LBB0_368
	.quad	.LBB0_246
	.quad	.LBB0_243

	.type	FillObject.hyph_word,@object # @FillObject.hyph_word
	.local	FillObject.hyph_word
	.comm	FillObject.hyph_word,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"FillObject: type(x) != ACAT!"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"FillObject: initial size!"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"paragraph deleted (assigned width %s is too narrow)"
	.size	.L.str.3, 52

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.zero	1
	.size	.L.str.4, 1

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"word is too long"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1rt"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"FillObject/extend_unbreakable:  link == x!"
	.size	.L.str.7, 43

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"NextDefiniteWithGap: g == nilobj!"
	.size	.L.str.8, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"hyphen or nohyphen option missing"
	.size	.L.str.9, 34

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"MoveRightToGap: newg!"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"SIB: glink!"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"SetIntervalBadness: badness < 0!"
	.size	.L.str.13, 33

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"IntervalShiftRightEnd: AT_END!"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"IntervalShiftRightEnd: type(g)!"
	.size	.L.str.15, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"IntervalShiftRightEnd: rlink == x!"
	.size	.L.str.16, 35

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"IntervalShiftLeftEnd: AT_END!"
	.size	.L.str.17, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"IntervalShiftLeftEnd: llink == x!"
	.size	.L.str.18, 34

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"IntervalShiftLeftEnd: tab_count <= 0!"
	.size	.L.str.19, 38

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"FillObject: IntervalClass(I)"
	.size	.L.str.20, 29

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.21, 27

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"almost empty paragraph!"
	.size	.L.str.22, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"FillObject: last word!"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"FillObject: last gap_obj!"
	.size	.L.str.24, 26

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"FillObject: type(gp) != GAP_OBJ (a)!"
	.size	.L.str.25, 37

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"FillObject: type(gp) != GAP_OBJ (b)!"
	.size	.L.str.26, 37

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"FillObject: empty paragraph!"
	.size	.L.str.27, 29

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"FillObject: last line is empty!"
	.size	.L.str.28, 32


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
