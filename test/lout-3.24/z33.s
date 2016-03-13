	.text
	.file	"z33.opt"
	.globl	DbCreate
	.align	16, 0x90
	.type	DbCreate,@function
DbCreate:                               # @DbCreate
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
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_3
# BB#1:
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB0_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_3:
	movq	-16(%rbp), %rax
	movb	$0, 42(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	DbCreate, .Lfunc_end0-DbCreate
	.cfi_endproc

	.globl	DbInsert
	.align	16, 0x90
	.type	DbInsert,@function
DbInsert:                               # @DbInsert
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$664, %rsp              # imm = 0x298
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movl	40(%rbp), %r10d
	movl	32(%rbp), %r11d
	movq	24(%rbp), %rax
	movw	16(%rbp), %bx
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movw	%bx, -90(%rbp)
	movq	%rax, -104(%rbp)
	movl	%r11d, -108(%rbp)
	movl	%r10d, -112(%rbp)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_3
# BB#1:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB1_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_3:
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_5:
	movq	-88(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_7:
	movq	-48(%rbp), %rax
	cmpb	$0, 42(%rax)
	je	.LBB1_9
# BB#8:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_9:
	cmpl	$0, -112(%rbp)
	je	.LBB1_18
# BB#10:
	cmpl	$0, DbCheckTableInit(%rip)
	jne	.LBB1_12
# BB#11:
	movl	$107, %edi
	callq	dtab_new
	movq	%rax, DbCheckTable(%rip)
	movl	$1, DbCheckTableInit(%rip)
.LBB1_12:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	DbCheckTable(%rip), %rdx
	callq	dtab_retrieve
	movq	%rax, -128(%rbp)
	testq	%rax, %rax
	je	.LBB1_13
# BB#14:
	movq	-128(%rbp), %rax
	movzwl	34(%rax), %eax
	testl	%eax, %eax
	jle	.LBB1_16
# BB#15:
	movq	-80(%rbp), %r14
	movq	-64(%rbp), %rdi
	callq	SymName
	movq	%rax, %r15
	movq	-72(%rbp), %rbx
	movq	-128(%rbp), %rdi
	addq	$32, %rdi
	callq	EchoFilePos
	movq	%rax, 8(%rsp)
	movq	%rbx, (%rsp)
	movl	$33, %edi
	movl	$4, %esi
	movl	$.L.str.6, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%r15, %r9
	jmp	.LBB1_17
.LBB1_13:
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movl	$11, %edi
	callq	MakeWord
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movq	-128(%rbp), %rdi
	movl	$DbCheckTable, %esi
	callq	dtab_insert
	jmp	.LBB1_18
.LBB1_16:
	movq	-80(%rbp), %r14
	movq	-64(%rbp), %rdi
	callq	SymName
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$33, %edi
	movl	$5, %esi
	movl	$.L.str.7, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
.LBB1_17:
	callq	Error
.LBB1_18:
	movq	-48(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	.LBB1_23
# BB#19:
	movq	-48(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	addq	$4, %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB1_21
# BB#20:
	movq	no_fpos(%rip), %r8
	movq	-48(%rbp), %r9
	addq	$64, %r9
	movq	$.L.str.9, (%rsp)
	movl	$33, %edi
	movl	$2, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_21:
	movq	-48(%rbp), %rsi
	addq	$64, %rsi
	leaq	-640(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strcat
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	-48(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-48(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	.LBB1_23
# BB#22:
	movq	-48(%rbp), %r8
	addq	$32, %r8
	leaq	-640(%rbp), %r9
	movl	$33, %edi
	movl	$3, %esi
	movl	$.L.str.11, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_23:
	cmpw	$0, -90(%rbp)
	je	.LBB1_25
# BB#24:
	movzwl	-90(%rbp), %edi
	callq	FileName
	leaq	-640(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rbx, %rdi
	callq	strlen
	leaq	-3(%rax,%rbx), %rdi
	movl	$.L.str.12, %esi
	jmp	.LBB1_26
.LBB1_25:
	leaq	-640(%rbp), %rdi
	movl	$.L.str.13, %esi
.LBB1_26:
	callq	strcpy
	movl	$0, -660(%rbp)
	movq	-48(%rbp), %rax
	jmp	.LBB1_27
	.align	16, 0x90
.LBB1_38:                               #   in Loop: Header=BB1_27 Depth=1
	movq	-648(%rbp), %rax
.LBB1_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_29 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB1_39
# BB#28:                                #   in Loop: Header=BB1_27 Depth=1
	movq	-648(%rbp), %rax
	jmp	.LBB1_29
	.align	16, 0x90
.LBB1_30:                               #   in Loop: Header=BB1_29 Depth=2
	movq	-656(%rbp), %rax
.LBB1_29:                               #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_30
# BB#31:                                #   in Loop: Header=BB1_27 Depth=1
	movq	-656(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	je	.LBB1_34
# BB#32:                                #   in Loop: Header=BB1_27 Depth=1
	movq	-656(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_34
# BB#33:                                #   in Loop: Header=BB1_27 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_34:                               #   in Loop: Header=BB1_27 Depth=1
	movq	-656(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	jne	.LBB1_38
# BB#35:                                #   in Loop: Header=BB1_27 Depth=1
	movq	-656(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB1_39
# BB#36:                                #   in Loop: Header=BB1_27 Depth=1
	movq	-648(%rbp), %rax
	movzbl	33(%rax), %eax
	cmpl	-660(%rbp), %eax
	jle	.LBB1_38
# BB#37:                                #   in Loop: Header=BB1_27 Depth=1
	movq	-648(%rbp), %rax
	movzbl	33(%rax), %eax
	movl	%eax, -660(%rbp)
	jmp	.LBB1_38
.LBB1_39:
	movq	-648(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB1_54
# BB#40:
	movq	-64(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB1_42
# BB#41:
	movq	-64(%rbp), %rdi
	callq	CrossInit
.LBB1_42:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_44
# BB#43:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_47
.LBB1_44:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_45
# BB#46:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_47
.LBB1_45:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_47:
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
	je	.LBB1_50
# BB#48:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_50
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
.LBB1_50:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_53
# BB#51:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_53
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
.LBB1_53:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -648(%rbp)
	movl	-660(%rbp), %ecx
	incl	%ecx
	movb	%cl, 33(%rax)
	movq	-648(%rbp), %rax
	movb	$0, 34(%rax)
.LBB1_54:
	movq	-648(%rbp), %rax
	movzbl	33(%rax), %eax
	movl	%eax, -116(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_56
# BB#55:
	movq	-64(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$2048, %edx             # imm = 0x800
	movw	%dx, 41(%rax)
	movq	-64(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$4096, %edx             # imm = 0x1000
	movw	%dx, 41(%rax)
	movq	-648(%rbp), %rax
	movb	$1, 34(%rax)
.LBB1_56:
	movq	-48(%rbp), %rax
	movq	48(%rax), %r14
	movl	$.L.str.17, %r12d
	cmpl	$0, -52(%rbp)
	jne	.LBB1_58
# BB#57:                                # %select.mid
	movl	$.L.str.12, %r12d
.LBB1_58:                               # %select.end
	movl	-116(%rbp), %r15d
	movq	-72(%rbp), %r13
	movq	-88(%rbp), %rbx
	movl	DbInsert.extra_seq(%rip), %edi
	incl	%edi
	movl	%edi, DbInsert.extra_seq(%rip)
	callq	StringFiveInt
	movq	-104(%rbp), %rcx
	movl	-108(%rbp), %edx
	leaq	-640(%rbp), %rsi
	movq	%rsi, 24(%rsp)
	movl	%edx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r13, %r8
	movq	%rbx, %r9
	movl	%r15d, %ecx
	callq	fprintf
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	DbInsert, .Lfunc_end1-DbInsert
	.cfi_endproc

	.align	16, 0x90
	.type	dtab_new,@function
dtab_new:                               # @dtab_new
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	leaq	8(,%rax,8), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB2_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$33, %edi
	movl	$1, %esi
	movl	$.L.str.55, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_2:
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movl	$0, -20(%rbp)
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	$0, 8(%rcx,%rax,8)
	incl	-20(%rbp)
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB2_4
# BB#5:
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dtab_new, .Lfunc_end2-dtab_new
	.cfi_endproc

	.align	16, 0x90
	.type	dtab_retrieve,@function
dtab_retrieve:                          # @dtab_retrieve
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %eax
	addq	%rax, -64(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB3_2
# BB#3:
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	je	.LBB3_13
# BB#4:
	movq	-40(%rbp), %rax
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_12:                               #   in Loop: Header=BB3_5 Depth=1
	movq	-48(%rbp), %rax
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB3_13
# BB#6:                                 #   in Loop: Header=BB3_5 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB3_7
	.align	16, 0x90
.LBB3_8:                                #   in Loop: Header=BB3_7 Depth=2
	movq	-56(%rbp), %rax
.LBB3_7:                                #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_8
# BB#9:                                 #   in Loop: Header=BB3_5 Depth=1
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB3_12
# BB#10:                                #   in Loop: Header=BB3_5 Depth=1
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_12
# BB#11:
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_14
.LBB3_13:
	movq	$0, -8(%rbp)
.LBB3_14:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dtab_retrieve, .Lfunc_end3-dtab_retrieve
	.cfi_endproc

	.align	16, 0x90
	.type	dtab_insert,@function
dtab_insert:                            # @dtab_insert
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	(%rsi), %rax
	movl	(%rax), %ecx
	decl	%ecx
	cmpl	%ecx, 4(%rax)
	jne	.LBB4_2
# BB#1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	(%rdi), %esi
	addl	%esi, %esi
	callq	dtab_rehash
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB4_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	incl	4(%rax)
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_3 Depth=1
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %eax
	addq	%rax, -24(%rbp)
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB4_4
# BB#5:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	(%rcx), %rcx
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax,%rdx,8)
	jne	.LBB4_12
# BB#6:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_11
.LBB4_8:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_9
# BB#10:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_11
.LBB4_9:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_11:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
.LBB4_12:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_13
	.align	16, 0x90
.LBB4_20:                               #   in Loop: Header=BB4_13 Depth=1
	movq	-40(%rbp), %rax
.LBB4_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB4_21
# BB#14:                                #   in Loop: Header=BB4_13 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB4_15
	.align	16, 0x90
.LBB4_16:                               #   in Loop: Header=BB4_15 Depth=2
	movq	-48(%rbp), %rax
.LBB4_15:                               #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_16
# BB#17:                                #   in Loop: Header=BB4_13 Depth=1
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB4_20
# BB#18:                                #   in Loop: Header=BB4_13 Depth=1
	movq	-8(%rbp), %rdi
	addq	$64, %rdi
	movq	-48(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB4_20
# BB#19:                                #   in Loop: Header=BB4_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.56, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_20
.LBB4_21:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_23
# BB#22:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_26
.LBB4_23:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_24
# BB#25:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_26
.LBB4_24:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_26:
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
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_29
# BB#27:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_29
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
.LBB4_29:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_32
# BB#30:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_32
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
.LBB4_32:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dtab_insert, .Lfunc_end4-dtab_insert
	.cfi_endproc

	.globl	DbConvert
	.align	16, 0x90
	.type	DbConvert,@function
DbConvert:                              # @DbConvert
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
	pushq	%r12
	pushq	%rbx
	subq	$1072, %rsp             # imm = 0x430
.Ltmp23:
	.cfi_offset %rbx, -48
.Ltmp24:
	.cfi_offset %r12, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 42(%rax)
	je	.LBB5_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_2:
	movq	-40(%rbp), %rsi
	addq	$64, %rsi
	leaq	-1088(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	strcat
	movq	-40(%rbp), %rsi
	addq	$64, %rsi
	leaq	-576(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strcat
	movq	-40(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB5_18
# BB#3:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	movl	$.L.str.20, %esi
	movl	$.L.str.21, %edx
	movl	$.L.str.22, %ecx
	xorl	%eax, %eax
	callq	fprintf
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1096(%rbp)
	movl	$.L.str.25, %r12d
	jmp	.LBB5_4
	.align	16, 0x90
.LBB5_16:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-1096(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1096(%rbp)
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
	movq	-1096(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB5_17
# BB#5:                                 #   in Loop: Header=BB5_4 Depth=1
	movq	-1096(%rbp), %rax
	jmp	.LBB5_6
	.align	16, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_6 Depth=2
	movq	-1104(%rbp), %rax
.LBB5_6:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -1104(%rbp)
	movq	-1104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_7
# BB#8:                                 #   in Loop: Header=BB5_4 Depth=1
	movq	-1104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	je	.LBB5_11
# BB#9:                                 #   in Loop: Header=BB5_4 Depth=1
	movq	-1104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB5_11
# BB#10:                                #   in Loop: Header=BB5_4 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_11:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-1104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	jne	.LBB5_16
# BB#12:                                #   in Loop: Header=BB5_4 Depth=1
	movq	-40(%rbp), %rax
	movq	48(%rax), %r14
	movq	-1096(%rbp), %rax
	cmpb	$0, 34(%rax)
	movl	$.L.str.26, %ebx
	cmovneq	%r12, %rbx
	movzbl	33(%rax), %r15d
	cmpl	$0, -44(%rbp)
	je	.LBB5_14
# BB#13:                                #   in Loop: Header=BB5_4 Depth=1
	movq	-1104(%rbp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.27, %esi
	callq	FullSymName
	jmp	.LBB5_15
.LBB5_14:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-1104(%rbp), %rax
	movq	64(%rax), %rdi
	callq	SymName
.LBB5_15:                               #   in Loop: Header=BB5_4 Depth=1
	movq	%rax, %r8
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	callq	fprintf
	jmp	.LBB5_16
.LBB5_17:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	fclose
	leaq	-576(%rbp), %rdi
	leaq	-1088(%rbp), %rsi
	callq	SortFile
	jmp	.LBB5_19
.LBB5_18:
	leaq	-1088(%rbp), %rdi
	callq	remove
.LBB5_19:
	leaq	-576(%rbp), %rdi
	callq	remove
	movq	-40(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB5_20
	.align	16, 0x90
.LBB5_29:                               #   in Loop: Header=BB5_20 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB5_20:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB5_30
# BB#21:                                #   in Loop: Header=BB5_20 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB5_23
# BB#22:                                #   in Loop: Header=BB5_20 Depth=1
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
.LBB5_23:                               #   in Loop: Header=BB5_20 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB5_25
# BB#24:                                #   in Loop: Header=BB5_20 Depth=1
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
.LBB5_25:                               #   in Loop: Header=BB5_20 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB5_27
# BB#26:                                #   in Loop: Header=BB5_20 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB5_28
.LBB5_27:                               #   in Loop: Header=BB5_20 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB5_29
	.align	16, 0x90
.LBB5_28:                               #   in Loop: Header=BB5_20 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB5_29
	.align	16, 0x90
.LBB5_39:                               #   in Loop: Header=BB5_30 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB5_30:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB5_40
# BB#31:                                #   in Loop: Header=BB5_30 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB5_33
# BB#32:                                #   in Loop: Header=BB5_30 Depth=1
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
.LBB5_33:                               #   in Loop: Header=BB5_30 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB5_35
# BB#34:                                #   in Loop: Header=BB5_30 Depth=1
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
.LBB5_35:                               #   in Loop: Header=BB5_30 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB5_37
# BB#36:                                #   in Loop: Header=BB5_30 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB5_38
.LBB5_37:                               #   in Loop: Header=BB5_30 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB5_39
	.align	16, 0x90
.LBB5_38:                               #   in Loop: Header=BB5_30 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB5_39
.LBB5_40:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB5_42
# BB#41:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB5_43
.LBB5_42:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB5_44
.LBB5_43:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB5_44:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	addq	$1072, %rsp             # imm = 0x430
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	DbConvert, .Lfunc_end5-DbConvert
	.cfi_endproc

	.globl	DbClose
	.align	16, 0x90
	.type	DbClose,@function
DbClose:                                # @DbClose
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	testq	%rdi, %rdi
	je	.LBB6_4
# BB#1:
	movq	-8(%rbp), %rax
	cmpb	$0, 43(%rax)
	jne	.LBB6_4
# BB#2:
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB6_4
# BB#3:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	fclose
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
.LBB6_4:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	DbClose, .Lfunc_end6-DbClose
	.cfi_endproc

	.globl	DbLoad
	.align	16, 0x90
	.type	DbLoad,@function
DbLoad:                                 # @DbLoad
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$1232, %rsp             # imm = 0x4D0
.Ltmp33:
	.cfi_offset %rbx, -48
.Ltmp34:
	.cfi_offset %r12, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	-48(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movl	-52(%rbp), %r8d
	movl	$.L.str.19, %esi
	movl	$4, %ecx
	callq	DefineFile
	movw	%ax, -170(%rbp)
	movl	-56(%rbp), %esi
	movzwl	-170(%rbp), %edi
	xorl	%edx, %edx
	callq	OpenFile
	movq	%rax, -80(%rbp)
	testq	%rax, %rax
	je	.LBB7_4
# BB#1:
	movq	-80(%rbp), %rdx
	leaq	-704(%rbp), %rdi
	movl	$512, %esi              # imm = 0x200
	callq	fgets
	testq	%rax, %rax
	je	.LBB7_3
# BB#2:
	leaq	-701(%rbp), %rdi
	movl	$.L.str.21, %esi
	callq	StringBeginsWith
	testl	%eax, %eax
	jne	.LBB7_4
.LBB7_3:
	movzwl	-170(%rbp), %edi
	callq	FileName
	movq	%rax, %rdi
	callq	remove
	movq	$0, -80(%rbp)
.LBB7_4:
	cmpq	$0, -80(%rbp)
	jne	.LBB7_58
# BB#5:
	cmpl	$0, -56(%rbp)
	je	.LBB7_58
# BB#6:
	movq	$0, -88(%rbp)
	movq	-48(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movl	-52(%rbp), %r8d
	movl	$.L.str.28, %esi
	movl	$3, %ecx
	callq	DefineFile
	movw	%ax, -172(%rbp)
	movq	$0, -184(%rbp)
	movzwl	-172(%rbp), %edi
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	LexPush
	callq	LexGetToken
	movq	%rax, -96(%rbp)
	movl	$1048575, %r12d         # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%r12d, %eax
	movl	%eax, -156(%rbp)
	leaq	-96(%rbp), %r14
	leaq	-704(%rbp), %r15
	jmp	.LBB7_7
	.align	16, 0x90
.LBB7_47:                               #   in Loop: Header=BB7_7 Depth=1
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-112(%rbp), %r8
	leaq	64(%r8), %rcx
	addq	$32, %r8
	movq	-184(%rbp), %rax
	movl	-156(%rbp), %esi
	movl	%esi, 16(%rsp)
	movq	%rax, 8(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, (%rsp)
	movl	$0, %esi
	movl	$.L.str.17, %r9d
	callq	DbInsert
	movq	-104(%rbp), %rdi
	callq	DisposeObject
	callq	LexNextTokenPos
	movq	%rax, -184(%rbp)
	callq	LexGetToken
	movq	%rax, -96(%rbp)
	movl	36(%rax), %eax
	andl	%r12d, %eax
	movl	%eax, -156(%rbp)
.LBB7_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_15 Depth 2
                                        #       Child Loop BB7_17 Depth 3
                                        #     Child Loop BB7_25 Depth 2
                                        #       Child Loop BB7_27 Depth 3
                                        #     Child Loop BB7_33 Depth 2
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	jne	.LBB7_48
# BB#8:                                 #   in Loop: Header=BB7_7 Depth=1
	movq	StartSym(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	Parse
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB7_10
# BB#9:                                 #   in Loop: Header=BB7_7 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB7_11
.LBB7_10:                               #   in Loop: Header=BB7_7 Depth=1
	movq	-104(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-172(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$33, %edi
	movl	$6, %esi
	movl	$.L.str.29, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB7_11:                               #   in Loop: Header=BB7_7 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB7_13
# BB#12:                                #   in Loop: Header=BB7_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.30, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_13:                               #   in Loop: Header=BB7_7 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB7_24
# BB#14:                                #   in Loop: Header=BB7_7 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB7_15
	.align	16, 0x90
.LBB7_21:                               #   in Loop: Header=BB7_15 Depth=2
	movq	-136(%rbp), %rax
.LBB7_15:                               #   Parent Loop BB7_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_17 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB7_22
# BB#16:                                #   in Loop: Header=BB7_15 Depth=2
	movq	-136(%rbp), %rax
	jmp	.LBB7_17
	.align	16, 0x90
.LBB7_18:                               #   in Loop: Header=BB7_17 Depth=3
	movq	-144(%rbp), %rax
.LBB7_17:                               #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_18
# BB#19:                                #   in Loop: Header=BB7_15 Depth=2
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB7_21
# BB#20:                                #   in Loop: Header=BB7_15 Depth=2
	movq	-144(%rbp), %rax
	movq	80(%rax), %rax
	movq	-104(%rbp), %rcx
	cmpq	80(%rcx), %rax
	jne	.LBB7_21
.LBB7_22:                               #   in Loop: Header=BB7_7 Depth=1
	movq	-136(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB7_24
# BB#23:                                #   in Loop: Header=BB7_7 Depth=1
	movq	-104(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movq	$.L.str.32, (%rsp)
	movl	$33, %edi
	movl	$7, %esi
	movl	$.L.str.31, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB7_24:                               #   in Loop: Header=BB7_7 Depth=1
	movq	$0, -112(%rbp)
	movq	-104(%rbp), %rax
	jmp	.LBB7_25
	.align	16, 0x90
.LBB7_35:                               #   in Loop: Header=BB7_25 Depth=2
	movq	-136(%rbp), %rax
.LBB7_25:                               #   Parent Loop BB7_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_27 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB7_36
# BB#26:                                #   in Loop: Header=BB7_25 Depth=2
	movq	-136(%rbp), %rax
	jmp	.LBB7_27
	.align	16, 0x90
.LBB7_28:                               #   in Loop: Header=BB7_27 Depth=3
	movq	-120(%rbp), %rax
.LBB7_27:                               #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_28
# BB#29:                                #   in Loop: Header=BB7_25 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB7_35
# BB#30:                                #   in Loop: Header=BB7_25 Depth=2
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %eax
	testb	$1, %al
	je	.LBB7_35
# BB#31:                                #   in Loop: Header=BB7_25 Depth=2
	movq	-120(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB7_35
# BB#32:                                #   in Loop: Header=BB7_7 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB7_33
	.align	16, 0x90
.LBB7_34:                               #   in Loop: Header=BB7_33 Depth=2
	movq	-112(%rbp), %rax
.LBB7_33:                               #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_34
.LBB7_36:                               #   in Loop: Header=BB7_7 Depth=1
	cmpq	$0, -112(%rbp)
	jne	.LBB7_38
# BB#37:                                #   in Loop: Header=BB7_7 Depth=1
	movq	-104(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movl	$33, %edi
	movl	$8, %esi
	movl	$.L.str.33, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB7_38:                               #   in Loop: Header=BB7_7 Depth=1
	movq	-112(%rbp), %rdi
	movl	$1, %esi
	callq	ReplaceWithTidy
	movq	%rax, -112(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB7_41
# BB#39:                                #   in Loop: Header=BB7_7 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB7_41
# BB#40:                                #   in Loop: Header=BB7_7 Depth=1
	movq	-104(%rbp), %r8
	addq	$32, %r8
	movl	$33, %edi
	movl	$9, %esi
	movl	$.L.str.34, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB7_41:                               #   in Loop: Header=BB7_7 Depth=1
	movq	-112(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB7_43
# BB#42:                                #   in Loop: Header=BB7_7 Depth=1
	movq	-104(%rbp), %r8
	addq	$32, %r8
	movl	$33, %edi
	movl	$10, %esi
	movl	$.L.str.35, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB7_43:                               #   in Loop: Header=BB7_7 Depth=1
	cmpq	$0, -88(%rbp)
	jne	.LBB7_47
# BB#44:                                #   in Loop: Header=BB7_7 Depth=1
	movzwl	-172(%rbp), %edi
	callq	FileName
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%r15, %rdi
	callq	strlen
	addl	$-3, %eax
	movl	%eax, -148(%rbp)
	testl	%eax, %eax
	jg	.LBB7_46
# BB#45:                                #   in Loop: Header=BB7_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.36, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_46:                               #   in Loop: Header=BB7_7 Depth=1
	movslq	-148(%rbp), %rax
	leaq	-704(%rbp,%rax), %rdi
	movl	$.L.str.12, %esi
	callq	strcpy
	movq	-48(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movq	%r15, %rsi
	callq	MakeWord
	movq	%rax, %rdi
	callq	DbCreate
	movq	%rax, -88(%rbp)
	jmp	.LBB7_47
.LBB7_48:
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$105, %eax
	je	.LBB7_50
# BB#49:
	movq	-96(%rbp), %r8
	addq	$32, %r8
	movl	$33, %edi
	movl	$11, %esi
	movl	$.L.str.37, %edx
	movl	$1, %ecx
	movl	$.L.str.38, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_50:
	callq	LexPop
	cmpq	$0, -88(%rbp)
	jne	.LBB7_54
# BB#51:
	movzwl	-172(%rbp), %edi
	callq	FileName
	leaq	-704(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rbx, %rdi
	callq	strlen
	addl	$-3, %eax
	movl	%eax, -148(%rbp)
	testl	%eax, %eax
	jg	.LBB7_53
# BB#52:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.39, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_53:
	movslq	-148(%rbp), %rax
	leaq	-704(%rbp,%rax), %rdi
	movl	$.L.str.12, %esi
	callq	strcpy
	movq	-48(%rbp), %rdx
	addq	$32, %rdx
	leaq	-704(%rbp), %rsi
	movl	$11, %edi
	callq	MakeWord
	movq	%rax, %rdi
	callq	DbCreate
	movq	%rax, -88(%rbp)
.LBB7_54:
	movq	-88(%rbp), %rdi
	xorl	%esi, %esi
	callq	DbConvert
	movzwl	-170(%rbp), %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	OpenFile
	movq	%rax, -80(%rbp)
	testq	%rax, %rax
	je	.LBB7_57
# BB#55:
	movq	-80(%rbp), %rdx
	leaq	-704(%rbp), %rdi
	movl	$512, %esi              # imm = 0x200
	callq	fgets
	testq	%rax, %rax
	je	.LBB7_57
# BB#56:
	leaq	-701(%rbp), %rdi
	movl	$.L.str.21, %esi
	callq	StringBeginsWith
	testl	%eax, %eax
	jne	.LBB7_58
.LBB7_57:
	movq	-88(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-170(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$33, %edi
	movl	$12, %esi
	movl	$.L.str.40, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB7_58:
	movzwl	-170(%rbp), %edi
	callq	FileName
	leaq	-704(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rbx, %rdi
	callq	strlen
	addl	$-3, %eax
	movl	%eax, -148(%rbp)
	testl	%eax, %eax
	jg	.LBB7_60
# BB#59:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.41, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_60:
	movslq	-148(%rbp), %rax
	leaq	-704(%rbp,%rax), %rdi
	movl	$.L.str.12, %esi
	callq	strcpy
	movq	-48(%rbp), %rdx
	addq	$32, %rdx
	leaq	-704(%rbp), %r15
	movl	$11, %edi
	movq	%r15, %rsi
	callq	MakeWord
	movq	%rax, -88(%rbp)
	movb	$1, 42(%rax)
	movb	-68(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 43(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB7_74
# BB#61:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB7_63
# BB#62:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.42, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_63:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB7_65
# BB#64:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_68
.LBB7_65:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_66
# BB#67:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_68
.LBB7_66:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB7_68:
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
	je	.LBB7_71
# BB#69:
	cmpq	$0, zz_res(%rip)
	je	.LBB7_71
# BB#70:
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
.LBB7_71:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_74
# BB#72:
	cmpq	$0, zz_res(%rip)
	je	.LBB7_74
# BB#73:
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
.LBB7_74:
	cmpq	$0, -80(%rbp)
	je	.LBB7_75
# BB#77:
	movl	$0, -168(%rbp)
	movl	$1, -152(%rbp)
	movq	-80(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%r15, %rdi
	callq	fgets
	movq	%rax, -1224(%rbp)
	leaq	-160(%rbp), %r14
	leaq	-1216(%rbp), %rbx
	movb	$1, %r12b
	jmp	.LBB7_78
	.align	16, 0x90
.LBB7_125:                              #   in Loop: Header=BB7_78 Depth=1
	movq	-80(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%r15, %rdi
	callq	fgets
	movq	%rax, -1224(%rbp)
.LBB7_78:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_84 Depth 2
                                        #     Child Loop BB7_100 Depth 2
                                        #       Child Loop BB7_102 Depth 3
                                        #     Child Loop BB7_91 Depth 2
                                        #     Child Loop BB7_97 Depth 2
	cmpq	$0, -1224(%rbp)
	je	.LBB7_126
# BB#79:                                #   in Loop: Header=BB7_78 Depth=1
	movzbl	-704(%rbp), %eax
	cmpl	$48, %eax
	jne	.LBB7_126
# BB#80:                                #   in Loop: Header=BB7_78 Depth=1
	movzbl	-703(%rbp), %eax
	cmpl	$48, %eax
	jne	.LBB7_126
# BB#81:                                #   in Loop: Header=BB7_78 Depth=1
	incl	-152(%rbp)
	movq	-80(%rbp), %rdi
	callq	ftell
	movl	%eax, -168(%rbp)
	movl	$.L.str.43, %esi
	movq	%r15, %rdi
	callq	StringBeginsWith
	movl	%eax, -188(%rbp)
	testl	%eax, %eax
	movl	$.L.str.44, %esi
	jne	.LBB7_83
# BB#82:                                # %select.mid
                                        #   in Loop: Header=BB7_78 Depth=1
	movl	$.L.str.45, %esi
.LBB7_83:                               # %select.end
                                        #   in Loop: Header=BB7_78 Depth=1
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	__isoc99_sscanf
	movl	$9, -148(%rbp)
	jmp	.LBB7_84
	.align	16, 0x90
.LBB7_88:                               #   in Loop: Header=BB7_84 Depth=2
	incl	-148(%rbp)
.LBB7_84:                               #   Parent Loop BB7_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-148(%rbp), %rax
	movzbl	-704(%rbp,%rax), %eax
	cmpl	$32, %eax
	je	.LBB7_85
# BB#86:                                #   in Loop: Header=BB7_84 Depth=2
	movslq	-148(%rbp), %rax
	cmpb	$0, -704(%rbp,%rax)
	setne	%al
	jmp	.LBB7_87
	.align	16, 0x90
.LBB7_85:                               #   in Loop: Header=BB7_84 Depth=2
	xorl	%eax, %eax
.LBB7_87:                               #   in Loop: Header=BB7_84 Depth=2
	testb	%al, %al
	jne	.LBB7_88
# BB#89:                                #   in Loop: Header=BB7_78 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB7_90
# BB#99:                                #   in Loop: Header=BB7_78 Depth=1
	movq	$0, -128(%rbp)
	movslq	-148(%rbp), %rax
	leaq	1(%rax,%r15), %rdi
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	__isoc99_sscanf
	movq	-64(%rbp), %rax
	jmp	.LBB7_100
	.align	16, 0x90
.LBB7_131:                              #   in Loop: Header=BB7_100 Depth=2
	movq	-136(%rbp), %rax
.LBB7_100:                              #   Parent Loop BB7_78 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_102 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB7_108
# BB#101:                               #   in Loop: Header=BB7_100 Depth=2
	movq	-136(%rbp), %rax
	jmp	.LBB7_102
	.align	16, 0x90
.LBB7_103:                              #   in Loop: Header=BB7_102 Depth=3
	movq	-144(%rbp), %rax
.LBB7_102:                              #   Parent Loop BB7_78 Depth=1
                                        #     Parent Loop BB7_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_103
# BB#104:                               #   in Loop: Header=BB7_100 Depth=2
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB7_106
# BB#105:                               #   in Loop: Header=BB7_100 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.47, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_106:                              #   in Loop: Header=BB7_100 Depth=2
	movq	-144(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB7_131
# BB#107:                               #   in Loop: Header=BB7_78 Depth=1
	movq	-144(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB7_108
	.align	16, 0x90
.LBB7_90:                               #   in Loop: Header=BB7_78 Depth=1
	movl	$0, -164(%rbp)
	movq	StartSym(%rip), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB7_91
	.align	16, 0x90
.LBB7_95:                               #   in Loop: Header=BB7_91 Depth=2
	movq	-128(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	PushScope
	incl	-164(%rbp)
	movslq	-148(%rbp), %rax
	leaq	1(%rax,%r15), %rdi
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	__isoc99_sscanf
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	SearchSym
	movq	%rax, -128(%rbp)
	movq	%rbx, %rdi
	callq	strlen
	movl	-148(%rbp), %ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, -148(%rbp)
.LBB7_91:                               #   Parent Loop BB7_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-148(%rbp), %rax
	movzbl	-704(%rbp,%rax), %eax
	cmpl	$10, %eax
	je	.LBB7_92
# BB#93:                                #   in Loop: Header=BB7_91 Depth=2
	movslq	-148(%rbp), %rax
	cmpb	$0, -704(%rbp,%rax)
	setne	%al
	jmp	.LBB7_94
	.align	16, 0x90
.LBB7_92:                               #   in Loop: Header=BB7_91 Depth=2
	xorl	%eax, %eax
.LBB7_94:                               #   in Loop: Header=BB7_91 Depth=2
	testb	%al, %al
	jne	.LBB7_95
# BB#96:                                #   in Loop: Header=BB7_78 Depth=1
	movl	$1, -148(%rbp)
	jmp	.LBB7_97
	.align	16, 0x90
.LBB7_98:                               #   in Loop: Header=BB7_97 Depth=2
	callq	PopScope
	incl	-148(%rbp)
.LBB7_97:                               #   Parent Loop BB7_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-148(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jle	.LBB7_98
.LBB7_108:                              #   in Loop: Header=BB7_78 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB7_132
# BB#109:                               #   in Loop: Header=BB7_78 Depth=1
	movq	-128(%rbp), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB7_132
# BB#110:                               #   in Loop: Header=BB7_78 Depth=1
	movq	-128(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB7_112
# BB#111:                               #   in Loop: Header=BB7_78 Depth=1
	movq	-128(%rbp), %rdi
	callq	CrossInit
.LBB7_112:                              #   in Loop: Header=BB7_78 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r12b, %r12b
	jne	.LBB7_114
# BB#113:                               #   in Loop: Header=BB7_78 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_117
	.align	16, 0x90
.LBB7_114:                              #   in Loop: Header=BB7_78 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_115
# BB#116:                               #   in Loop: Header=BB7_78 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_117
.LBB7_115:                              #   in Loop: Header=BB7_78 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB7_117:                              #   in Loop: Header=BB7_78 Depth=1
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
	je	.LBB7_120
# BB#118:                               #   in Loop: Header=BB7_78 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_120
# BB#119:                               #   in Loop: Header=BB7_78 Depth=1
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
.LBB7_120:                              #   in Loop: Header=BB7_78 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-128(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_123
# BB#121:                               #   in Loop: Header=BB7_78 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB7_123
# BB#122:                               #   in Loop: Header=BB7_78 Depth=1
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
.LBB7_123:                              #   in Loop: Header=BB7_78 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movb	-160(%rbp), %cl
	movb	%cl, 33(%rax)
	movb	-188(%rbp), %al
	movq	-136(%rbp), %rcx
	movb	%al, 34(%rcx)
	cmpl	$0, -188(%rbp)
	je	.LBB7_125
# BB#124:                               #   in Loop: Header=BB7_78 Depth=1
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$2048, %edx             # imm = 0x800
	movw	%dx, 41(%rax)
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$4096, %edx             # imm = 0x1000
	movw	%dx, 41(%rax)
	jmp	.LBB7_125
.LBB7_126:
	movq	-88(%rbp), %rax
	cmpb	$0, 43(%rax)
	je	.LBB7_129
# BB#127:
	cmpq	$0, -1224(%rbp)
	je	.LBB7_76
# BB#128:
	movq	-80(%rbp), %rbx
	movzwl	-170(%rbp), %edi
	callq	FileName
	leaq	-704(%rbp), %rdx
	leaq	-1228(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	ReadLines
	movq	-88(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movw	-1228(%rbp), %ax
	movq	-88(%rbp), %rcx
	movw	%ax, 40(%rcx)
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdi
	movzwl	40(%rax), %esi
	callq	SortLines
	jmp	.LBB7_130
.LBB7_75:
	movq	-88(%rbp), %rax
	movq	$0, 48(%rax)
	jmp	.LBB7_76
.LBB7_132:
	movq	-88(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-170(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	-152(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$33, %edi
	movl	$13, %esi
	movl	$.L.str.48, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movq	-80(%rbp), %rdi
	callq	fclose
	movq	-88(%rbp), %rax
	movb	$0, 43(%rax)
.LBB7_76:
	movq	-88(%rbp), %rax
	movq	$0, 48(%rax)
	jmp	.LBB7_130
.LBB7_129:
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movw	-168(%rbp), %ax
	movq	-88(%rbp), %rcx
	movw	%ax, 40(%rcx)
.LBB7_130:
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	DbLoad, .Lfunc_end7-DbLoad
	.cfi_endproc

	.globl	DbRetrieve
	.align	16, 0x90
	.type	DbRetrieve,@function
DbRetrieve:                             # @DbRetrieve
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
	pushq	%r14
	pushq	%rbx
	subq	$1152, %rsp             # imm = 0x480
.Ltmp40:
	.cfi_offset %rbx, -32
.Ltmp41:
	.cfi_offset %r14, -24
	movq	32(%rbp), %r10
	movq	24(%rbp), %rbx
	movq	16(%rbp), %rax
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r10, -96(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 42(%rax)
	je	.LBB8_2
# BB#1:
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB8_2
# BB#3:
	movl	$0, -1156(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB8_4
	.align	16, 0x90
.LBB8_15:                               #   in Loop: Header=BB8_4 Depth=1
	movq	-1144(%rbp), %rax
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -1144(%rbp)
	movq	-1144(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB8_16
# BB#5:                                 #   in Loop: Header=BB8_4 Depth=1
	movq	-1144(%rbp), %rax
	jmp	.LBB8_6
	.align	16, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_6 Depth=2
	movq	-1152(%rbp), %rax
.LBB8_6:                                #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -1152(%rbp)
	movq	-1152(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_7
# BB#8:                                 #   in Loop: Header=BB8_4 Depth=1
	movq	-1152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	je	.LBB8_11
# BB#9:                                 #   in Loop: Header=BB8_4 Depth=1
	movq	-1152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB8_11
# BB#10:                                #   in Loop: Header=BB8_4 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_11:                               #   in Loop: Header=BB8_4 Depth=1
	movq	-1152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	jne	.LBB8_15
# BB#12:                                #   in Loop: Header=BB8_4 Depth=1
	movq	-1152(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB8_16
# BB#13:                                #   in Loop: Header=BB8_4 Depth=1
	movq	-1144(%rbp), %rax
	movzbl	33(%rax), %eax
	cmpl	-1156(%rbp), %eax
	jle	.LBB8_15
# BB#14:                                #   in Loop: Header=BB8_4 Depth=1
	movq	-1144(%rbp), %rax
	movzbl	33(%rax), %eax
	movl	%eax, -1156(%rbp)
	jmp	.LBB8_15
.LBB8_2:
	movl	$0, -20(%rbp)
	jmp	.LBB8_45
.LBB8_16:
	movq	-1144(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_31
# BB#17:
	movq	-48(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB8_19
# BB#18:
	movq	-48(%rbp), %rdi
	callq	CrossInit
.LBB8_19:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB8_21
# BB#20:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_24
.LBB8_21:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_22
# BB#23:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_24
.LBB8_22:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_24:
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
	je	.LBB8_27
# BB#25:
	cmpq	$0, zz_res(%rip)
	je	.LBB8_27
# BB#26:
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
.LBB8_27:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_30
# BB#28:
	cmpq	$0, zz_res(%rip)
	je	.LBB8_30
# BB#29:
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
.LBB8_30:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1144(%rbp)
	movl	-1156(%rbp), %ecx
	incl	%ecx
	movb	%cl, 33(%rax)
	movq	-1144(%rbp), %rax
	movb	$0, 34(%rax)
.LBB8_31:
	movq	-1144(%rbp), %rax
	movzbl	33(%rax), %eax
	movl	%eax, -100(%rbp)
	movl	$.L.str.17, %edx
	cmpl	$0, -36(%rbp)
	jne	.LBB8_33
# BB#32:                                # %select.mid
	movl	$.L.str.12, %edx
.LBB8_33:                               # %select.end
	movl	-100(%rbp), %ecx
	movq	-56(%rbp), %r8
	leaq	-1136(%rbp), %rdi
	movl	$.L.str.49, %esi
	xorl	%eax, %eax
	callq	sprintf
	movq	-32(%rbp), %rax
	cmpb	$0, 43(%rax)
	je	.LBB8_37
# BB#34:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	movzwl	40(%rax), %edx
	decl	%edx
	leaq	-1136(%rbp), %rcx
	leaq	-104(%rbp), %r8
	xorl	%esi, %esi
	callq	SearchLines
	testl	%eax, %eax
	je	.LBB8_35
# BB#36:
	movslq	-104(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	leaq	-1136(%rbp), %r9
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	movslq	-104(%rbp), %rax
	incq	%rax
	jmp	.LBB8_40
.LBB8_37:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	fseek
	movq	-32(%rbp), %rax
	movq	48(%rax), %rbx
	movzwl	40(%rax), %r14d
	movq	%rbx, %rdi
	callq	ftell
	leal	-1(%rax), %edx
	leaq	-1136(%rbp), %rcx
	leaq	-624(%rbp), %r8
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	SearchFile
	testl	%eax, %eax
	je	.LBB8_38
# BB#39:
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	leaq	-624(%rbp), %rdi
	leaq	-1136(%rbp), %r9
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	ftell
.LBB8_40:
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	-1136(%rbp), %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB8_42
# BB#41:
	movq	-32(%rbp), %rsi
	addq	$64, %rsi
	leaq	-1136(%rbp), %rdi
	callq	strcpy
.LBB8_42:
	leaq	-1136(%rbp), %rdi
	movl	$.L.str.28, %esi
	callq	FileNum
	movq	-72(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-72(%rbp), %rax
	cmpw	$0, (%rax)
	jne	.LBB8_44
# BB#43:
	movq	-32(%rbp), %rdx
	addq	$32, %rdx
	leaq	-1136(%rbp), %rdi
	movl	$.L.str.28, %esi
	movl	$3, %ecx
	xorl	%r8d, %r8d
	callq	DefineFile
	movq	-72(%rbp), %rcx
	movw	%ax, (%rcx)
.LBB8_44:
	movl	$1, -20(%rbp)
	jmp	.LBB8_45
.LBB8_35:
	movl	$0, -20(%rbp)
	jmp	.LBB8_45
.LBB8_38:
	movl	$0, -20(%rbp)
.LBB8_45:
	movl	-20(%rbp), %eax
	addq	$1152, %rsp             # imm = 0x480
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	DbRetrieve, .Lfunc_end8-DbRetrieve
	.cfi_endproc

	.align	16, 0x90
	.type	SearchLines,@function
SearchLines:                            # @SearchLines
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$584, %rsp              # imm = 0x248
.Ltmp45:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB9_2
# BB#1:
	movl	$0, -12(%rbp)
	jmp	.LBB9_15
.LBB9_2:
	movl	-28(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-32(%rbp), %eax
	jmp	.LBB9_3
	.align	16, 0x90
.LBB9_9:                                #   in Loop: Header=BB9_3 Depth=1
	movl	-60(%rbp), %eax
.LBB9_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_4 Depth 2
	decl	%eax
	movl	%eax, -56(%rbp)
	jmp	.LBB9_4
	.align	16, 0x90
.LBB9_10:                               #   in Loop: Header=BB9_4 Depth=2
	movl	-60(%rbp), %eax
	incl	%eax
	movl	%eax, -52(%rbp)
.LBB9_4:                                #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB9_11
# BB#5:                                 #   in Loop: Header=BB9_4 Depth=2
	movl	-52(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, UseCollate(%rip)
	je	.LBB9_7
# BB#6:                                 #   in Loop: Header=BB9_4 Depth=2
	movq	-40(%rbp), %rdi
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	strcollcmp
	jmp	.LBB9_8
	.align	16, 0x90
.LBB9_7:                                #   in Loop: Header=BB9_4 Depth=2
	movq	-40(%rbp), %rdi
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	strcmp
.LBB9_8:                                #   in Loop: Header=BB9_4 Depth=2
	testl	%eax, %eax
	jg	.LBB9_10
	jmp	.LBB9_9
.LBB9_11:
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	leaq	-576(%rbp), %rbx
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	__isoc99_sscanf
	movq	-40(%rbp), %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB9_12
# BB#13:
	movl	$0, -580(%rbp)
	jmp	.LBB9_14
.LBB9_12:
	movl	$1, -580(%rbp)
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB9_14:
	movl	-580(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB9_15:
	movl	-12(%rbp), %eax
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	SearchLines, .Lfunc_end9-SearchLines
	.cfi_endproc

	.align	16, 0x90
	.type	SearchFile,@function
SearchFile:                             # @SearchFile
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$584, %rsp              # imm = 0x248
.Ltmp49:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	jmp	.LBB10_1
	.align	16, 0x90
.LBB10_17:                              #   in Loop: Header=BB10_1 Depth=1
	movl	-52(%rbp), %eax
	decl	%eax
.LBB10_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_2 Depth 2
                                        #       Child Loop BB10_4 Depth 3
	movl	%eax, -48(%rbp)
	jmp	.LBB10_2
	.align	16, 0x90
.LBB10_18:                              #   in Loop: Header=BB10_2 Depth=2
	movl	-56(%rbp), %eax
	incl	%eax
	movl	%eax, -44(%rbp)
.LBB10_2:                               #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_4 Depth 3
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB10_19
# BB#3:                                 #   in Loop: Header=BB10_2 Depth=2
	movl	-44(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	xorl	%edx, %edx
	callq	fseek
	.align	16, 0x90
.LBB10_4:                               #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incl	-52(%rbp)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	cmpl	$10, %eax
	jne	.LBB10_4
# BB#5:                                 #   in Loop: Header=BB10_2 Depth=2
	movl	-48(%rbp), %eax
	incl	%eax
	cmpl	%eax, -52(%rbp)
	jne	.LBB10_7
# BB#6:                                 #   in Loop: Header=BB10_2 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	xorl	%edx, %edx
	callq	fseek
.LBB10_7:                               #   in Loop: Header=BB10_2 Depth=2
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	callq	fgets
	movq	-16(%rbp), %rdi
	callq	ftell
	decl	%eax
	movl	%eax, -56(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB10_9
# BB#8:                                 #   in Loop: Header=BB10_2 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.59, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB10_9:                               #   in Loop: Header=BB10_2 Depth=2
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.LBB10_11
# BB#10:                                #   in Loop: Header=BB10_2 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.60, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB10_11:                              #   in Loop: Header=BB10_2 Depth=2
	movl	-56(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB10_13
# BB#12:                                #   in Loop: Header=BB10_2 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.61, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB10_13:                              #   in Loop: Header=BB10_2 Depth=2
	cmpl	$0, UseCollate(%rip)
	je	.LBB10_15
# BB#14:                                #   in Loop: Header=BB10_2 Depth=2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	strcollcmp
	jmp	.LBB10_16
	.align	16, 0x90
.LBB10_15:                              #   in Loop: Header=BB10_2 Depth=2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	strcmp
.LBB10_16:                              #   in Loop: Header=BB10_2 Depth=2
	testl	%eax, %eax
	jg	.LBB10_18
	jmp	.LBB10_17
.LBB10_19:
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB10_21
# BB#20:
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	xorl	%edx, %edx
	callq	fseek
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	callq	fgets
	movq	-40(%rbp), %rdi
	leaq	-576(%rbp), %rbx
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	__isoc99_sscanf
	movq	-32(%rbp), %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -580(%rbp)
	jmp	.LBB10_22
.LBB10_21:
	movl	$0, -580(%rbp)
.LBB10_22:
	movl	-580(%rbp), %eax
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	SearchFile, .Lfunc_end10-SearchFile
	.cfi_endproc

	.globl	DbRetrieveNext
	.align	16, 0x90
	.type	DbRetrieveNext,@function
DbRetrieveNext:                         # @DbRetrieveNext
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$1168, %rsp             # imm = 0x490
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	%r11, -72(%rbp)
	movq	%r10, -80(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 42(%rax)
	jne	.LBB11_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.51, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB11_2:
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB11_3
# BB#4:
	movq	-16(%rbp), %rax
	cmpb	$0, 43(%rax)
	je	.LBB11_8
# BB#5:
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzwl	40(%rcx), %ecx
	cmpq	%rcx, (%rax)
	jl	.LBB11_7
# BB#6:
	movl	$0, -4(%rbp)
	jmp	.LBB11_31
.LBB11_3:
	movl	$0, -4(%rbp)
	jmp	.LBB11_31
.LBB11_8:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_9
# BB#10:
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	jmp	.LBB11_11
.LBB11_7:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -600(%rbp)
	movzbl	(%rax), %eax
	cmpl	$48, %eax
	sete	%al
	movq	-24(%rbp), %rcx
	movzbl	%al, %eax
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	addq	-600(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	-72(%rbp), %rax
	leaq	-1120(%rbp), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	-1124(%rbp), %rdx
	movl	$.L.str.52, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	movq	-80(%rbp), %rax
	incq	(%rax)
	jmp	.LBB11_14
.LBB11_9:
	movq	-16(%rbp), %rax
	movzwl	40(%rax), %esi
.LBB11_11:
	xorl	%edx, %edx
	callq	fseek
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	leaq	-592(%rbp), %rdi
	movl	$512, %esi              # imm = 0x200
	callq	fgets
	testq	%rax, %rax
	je	.LBB11_12
# BB#13:
	movzbl	-592(%rbp), %eax
	cmpl	$48, %eax
	sete	%al
	movq	-24(%rbp), %rcx
	movzbl	%al, %eax
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leaq	-592(%rbp,%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	-72(%rbp), %rax
	leaq	-1120(%rbp), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	-1124(%rbp), %rdx
	movl	$.L.str.52, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	ftell
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB11_14:
	leaq	-1120(%rbp), %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB11_16
# BB#15:
	movq	-16(%rbp), %rsi
	addq	$64, %rsi
	leaq	-1120(%rbp), %rdi
	callq	strcpy
.LBB11_16:
	leaq	-1120(%rbp), %rdi
	movl	$.L.str.28, %esi
	callq	FileNum
	movq	-56(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-56(%rbp), %rax
	cmpw	$0, (%rax)
	jne	.LBB11_18
# BB#17:
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	leaq	-1120(%rbp), %rdi
	movl	$.L.str.28, %esi
	movl	$3, %ecx
	xorl	%r8d, %r8d
	callq	DefineFile
	movq	-56(%rbp), %rcx
	movw	%ax, (%rcx)
.LBB11_18:
	movq	-16(%rbp), %rax
	jmp	.LBB11_19
	.align	16, 0x90
.LBB11_25:                              #   in Loop: Header=BB11_19 Depth=1
	movq	-1136(%rbp), %rax
.LBB11_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_21 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB11_26
# BB#20:                                #   in Loop: Header=BB11_19 Depth=1
	movq	-1136(%rbp), %rax
	jmp	.LBB11_21
	.align	16, 0x90
.LBB11_22:                              #   in Loop: Header=BB11_21 Depth=2
	movq	-1144(%rbp), %rax
.LBB11_21:                              #   Parent Loop BB11_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -1144(%rbp)
	movq	-1144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB11_22
# BB#23:                                #   in Loop: Header=BB11_19 Depth=1
	movq	-1144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	jne	.LBB11_25
# BB#24:                                #   in Loop: Header=BB11_19 Depth=1
	movq	-1136(%rbp), %rax
	movzbl	33(%rax), %eax
	cmpl	-1124(%rbp), %eax
	jne	.LBB11_25
.LBB11_26:
	movq	-1136(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB11_28
# BB#27:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.53, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB11_28:
	movq	-1144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	je	.LBB11_30
# BB#29:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.54, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB11_30:
	movq	-1144(%rbp), %rax
	movq	64(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB11_31
.LBB11_12:
	movl	$0, -4(%rbp)
.LBB11_31:
	movl	-4(%rbp), %eax
	addq	$1168, %rsp             # imm = 0x490
	popq	%rbp
	retq
.Lfunc_end11:
	.size	DbRetrieveNext, .Lfunc_end11-DbRetrieveNext
	.cfi_endproc

	.align	16, 0x90
	.type	dtab_rehash,@function
dtab_rehash:                            # @dtab_rehash
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
	subq	$56, %rsp
.Ltmp56:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%esi, %edi
	callq	dtab_new
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	leaq	-32(%rbp), %rbx
	jmp	.LBB12_1
	.align	16, 0x90
.LBB12_12:                              #   in Loop: Header=BB12_1 Depth=1
	incl	-36(%rbp)
.LBB12_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
                                        #       Child Loop BB12_8 Depth 3
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB12_13
# BB#2:                                 #   in Loop: Header=BB12_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 8(%rcx,%rax,8)
	je	.LBB12_12
# BB#3:                                 #   in Loop: Header=BB12_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB12_5
# BB#4:                                 #   in Loop: Header=BB12_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.57, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB12_6
	.align	16, 0x90
.LBB12_10:                              #   in Loop: Header=BB12_6 Depth=2
	movq	-56(%rbp), %rdi
	movq	%rbx, %rsi
	callq	dtab_insert
	movq	-48(%rbp), %rax
.LBB12_6:                               #   Parent Loop BB12_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_8 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB12_11
# BB#7:                                 #   in Loop: Header=BB12_6 Depth=2
	movq	-48(%rbp), %rax
	jmp	.LBB12_8
	.align	16, 0x90
.LBB12_9:                               #   in Loop: Header=BB12_8 Depth=3
	movq	-56(%rbp), %rax
.LBB12_8:                               #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB12_9
	jmp	.LBB12_10
	.align	16, 0x90
.LBB12_11:                              #   in Loop: Header=BB12_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB12_12
.LBB12_13:
	movq	-16(%rbp), %rdi
	callq	free
	movq	-32(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	dtab_rehash, .Lfunc_end12-dtab_rehash
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DbCreate: !is_word(type(x))"
	.size	.L.str.1, 28

	.type	DbInsert.extra_seq,@object # @DbInsert.extra_seq
	.local	DbInsert.extra_seq
	.comm	DbInsert.extra_seq,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DbInsert: db!"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"DbInsert: null tag!"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"DbInsert: null seq!"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"DbInsert: insert into reading database"
	.size	.L.str.5, 39

	.type	DbCheckTableInit,@object # @DbCheckTableInit
	.local	DbCheckTableInit
	.comm	DbCheckTableInit,4,4
	.type	DbCheckTable,@object    # @DbCheckTable
	.local	DbCheckTable
	.comm	DbCheckTable,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cross reference %s&&%s used previously, at%s"
	.size	.L.str.6, 45

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"cross reference %s&&%s used previously"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"database file name %s%s is too long"
	.size	.L.str.8, 36

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	".lix"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"w"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"cannot write to database file %s"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.zero	1
	.size	.L.str.12, 1

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"."
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"SymToNum: yy!"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"word is too long"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s%d&%s\t%s\t%s\t%ld\t%d\t%s\n"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"0"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"DbConvert: reading database"
	.size	.L.str.18, 28

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	".li"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"00 %s %s\n"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Basser Lout Version 3.24 (October 2000)"
	.size	.L.str.21, 40

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"database index file"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"DbConvert: y!"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s %d %s\n"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"00target"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"00symbol"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	" "
	.size	.L.str.27, 2

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	".ld"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"syntax error in database file %s"
	.size	.L.str.29, 33

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"DbLoad: create && symbs == nilobj!"
	.size	.L.str.30, 35

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%s found in database but not declared in %s line"
	.size	.L.str.31, 49

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"@Database"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"database symbol %s has no tag"
	.size	.L.str.33, 30

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"database symbol tag is not a simple word"
	.size	.L.str.34, 41

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"database symbol tag is an empty word"
	.size	.L.str.35, 37

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"DbLoad: FileName(dfnum) (1)!"
	.size	.L.str.36, 29

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%s or end of file expected here"
	.size	.L.str.37, 32

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"{"
	.size	.L.str.38, 2

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"DbLoad: FileName(dfnum) (2)!"
	.size	.L.str.39, 29

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"cannot open database file %s"
	.size	.L.str.40, 29

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"DbLoad: FileName(index_fnum)!"
	.size	.L.str.41, 30

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"DbLoad: type(symbs)!"
	.size	.L.str.42, 21

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"00target "
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"00target %d"
	.size	.L.str.44, 12

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"00symbol %d"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%s"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"DbLoad: type(y) != CLOSURE!"
	.size	.L.str.47, 28

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"undefined symbol in database file %s (line %d)"
	.size	.L.str.48, 47

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%s%d&%s"
	.size	.L.str.49, 8

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%*[^\t]\t%[^\t]\t%*[^\t]\t%ld\t%d\t%[^\n]"
	.size	.L.str.50, 33

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"DbRetrieveNext: not reading"
	.size	.L.str.51, 28

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%d&%[^\t]\t%[^\t]\t%*[^\t]\t%ld\t%d\t%[^\n]"
	.size	.L.str.52, 35

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"NumToSym: no sym"
	.size	.L.str.53, 17

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"NumToSym: y!"
	.size	.L.str.54, 13

	.type	OldCrossDb,@object      # @OldCrossDb
	.comm	OldCrossDb,8,8
	.type	NewCrossDb,@object      # @NewCrossDb
	.comm	NewCrossDb,8,8
	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"run out of memory enlarging dbcheck table"
	.size	.L.str.55, 42

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Dbcheck: entry inserted twice"
	.size	.L.str.56, 30

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"dtab_rehash: ACAT!"
	.size	.L.str.57, 19

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%[^\t]"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"SearchFile: l > mid!"
	.size	.L.str.59, 21

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"SearchFile: mid >= mid_end!"
	.size	.L.str.60, 28

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"SearchFile: mid_end > r!"
	.size	.L.str.61, 25


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
