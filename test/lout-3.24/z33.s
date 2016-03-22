	.text
	.file	"z33.dce"
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
	subq	$744, %rsp              # imm = 0x2E8
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
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movw	%bx, -162(%rbp)
	movq	%rax, -176(%rbp)
	movl	%r11d, -180(%rbp)
	movl	%r10d, -184(%rbp)
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_3
# BB#1:
	movq	-120(%rbp), %rax
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
	movq	-144(%rbp), %rax
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
	movq	-160(%rbp), %rax
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
	movq	-120(%rbp), %rax
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
	cmpl	$0, -184(%rbp)
	je	.LBB1_32
# BB#10:
	cmpl	$0, DbCheckTableInit(%rip)
	jne	.LBB1_12
# BB#11:
	movl	$107, %edi
	callq	dtab_new
	movq	%rax, DbCheckTable(%rip)
	movl	$1, DbCheckTableInit(%rip)
.LBB1_12:
	movq	-136(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	DbCheckTable(%rip), %rdx
	movq	%rax, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_13 Depth=1
	movq	-112(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movzbl	(%rax), %eax
	addq	%rax, -104(%rbp)
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_14
# BB#15:
	movq	-104(%rbp), %rax
	movq	-72(%rbp), %rcx
	movslq	(%rcx), %rcx
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -80(%rbp)
	testq	%rax, %rax
	je	.LBB1_25
# BB#16:
	movq	-80(%rbp), %rax
	jmp	.LBB1_17
	.align	16, 0x90
.LBB1_24:                               #   in Loop: Header=BB1_17 Depth=1
	movq	-88(%rbp), %rax
.LBB1_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB1_25
# BB#18:                                #   in Loop: Header=BB1_17 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB1_19
	.align	16, 0x90
.LBB1_20:                               #   in Loop: Header=BB1_19 Depth=2
	movq	-96(%rbp), %rax
.LBB1_19:                               #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_20
# BB#21:                                #   in Loop: Header=BB1_17 Depth=1
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB1_24
# BB#22:                                #   in Loop: Header=BB1_17 Depth=1
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_24
# BB#23:
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB1_26
.LBB1_25:
	movq	$0, -48(%rbp)
.LBB1_26:                               # %dtab_retrieve.exit
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)
	testq	%rax, %rax
	je	.LBB1_27
# BB#28:
	movq	-200(%rbp), %rax
	movzwl	34(%rax), %eax
	testl	%eax, %eax
	jle	.LBB1_30
# BB#29:
	movq	-152(%rbp), %r14
	movq	-136(%rbp), %rdi
	callq	SymName
	movq	%rax, %r15
	movq	-144(%rbp), %rbx
	movq	-200(%rbp), %rdi
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
	jmp	.LBB1_31
.LBB1_27:
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movl	$11, %edi
	callq	MakeWord
	movq	%rax, -200(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movq	-200(%rbp), %rdi
	movl	$DbCheckTable, %esi
	callq	dtab_insert
	jmp	.LBB1_32
.LBB1_30:
	movq	-152(%rbp), %r14
	movq	-136(%rbp), %rdi
	callq	SymName
	movq	%rax, %rbx
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$33, %edi
	movl	$5, %esi
	movl	$.L.str.7, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
.LBB1_31:
	callq	Error
.LBB1_32:
	movq	-120(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	.LBB1_37
# BB#33:
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	addq	$4, %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB1_35
# BB#34:
	movq	no_fpos(%rip), %r8
	movq	-120(%rbp), %r9
	addq	$64, %r9
	movq	$.L.str.9, (%rsp)
	movl	$33, %edi
	movl	$2, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_35:
	movq	-120(%rbp), %rsi
	addq	$64, %rsi
	leaq	-720(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strcat
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	-120(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-120(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	.LBB1_37
# BB#36:
	movq	-120(%rbp), %r8
	addq	$32, %r8
	leaq	-720(%rbp), %r9
	movl	$33, %edi
	movl	$3, %esi
	movl	$.L.str.11, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_37:
	cmpw	$0, -162(%rbp)
	je	.LBB1_39
# BB#38:
	movzwl	-162(%rbp), %edi
	callq	FileName
	leaq	-720(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rbx, %rdi
	callq	strlen
	leaq	-3(%rax,%rbx), %rdi
	movl	$.L.str.12, %esi
	jmp	.LBB1_40
.LBB1_39:
	leaq	-720(%rbp), %rdi
	movl	$.L.str.13, %esi
.LBB1_40:
	callq	strcpy
	movl	$0, -740(%rbp)
	movq	-120(%rbp), %rax
	jmp	.LBB1_41
	.align	16, 0x90
.LBB1_52:                               #   in Loop: Header=BB1_41 Depth=1
	movq	-728(%rbp), %rax
.LBB1_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_43 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -728(%rbp)
	movq	-728(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.LBB1_53
# BB#42:                                #   in Loop: Header=BB1_41 Depth=1
	movq	-728(%rbp), %rax
	jmp	.LBB1_43
	.align	16, 0x90
.LBB1_44:                               #   in Loop: Header=BB1_43 Depth=2
	movq	-736(%rbp), %rax
.LBB1_43:                               #   Parent Loop BB1_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -736(%rbp)
	movq	-736(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_44
# BB#45:                                #   in Loop: Header=BB1_41 Depth=1
	movq	-736(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	je	.LBB1_48
# BB#46:                                #   in Loop: Header=BB1_41 Depth=1
	movq	-736(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_48
# BB#47:                                #   in Loop: Header=BB1_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_48:                               #   in Loop: Header=BB1_41 Depth=1
	movq	-736(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	jne	.LBB1_52
# BB#49:                                #   in Loop: Header=BB1_41 Depth=1
	movq	-736(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	-136(%rbp), %rax
	je	.LBB1_53
# BB#50:                                #   in Loop: Header=BB1_41 Depth=1
	movq	-728(%rbp), %rax
	movzbl	33(%rax), %eax
	cmpl	-740(%rbp), %eax
	jle	.LBB1_52
# BB#51:                                #   in Loop: Header=BB1_41 Depth=1
	movq	-728(%rbp), %rax
	movzbl	33(%rax), %eax
	movl	%eax, -740(%rbp)
	jmp	.LBB1_52
.LBB1_53:
	movq	-728(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB1_68
# BB#54:
	movq	-136(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB1_56
# BB#55:
	movq	-136(%rbp), %rdi
	callq	CrossInit
.LBB1_56:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_58
# BB#57:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_61
.LBB1_58:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_59
# BB#60:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_61
.LBB1_59:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_61:
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
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_64
# BB#62:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_64
# BB#63:
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
.LBB1_64:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_67
# BB#65:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_67
# BB#66:
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
.LBB1_67:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -728(%rbp)
	movl	-740(%rbp), %ecx
	incl	%ecx
	movb	%cl, 33(%rax)
	movq	-728(%rbp), %rax
	movb	$0, 34(%rax)
.LBB1_68:
	movq	-728(%rbp), %rax
	movzbl	33(%rax), %eax
	movl	%eax, -188(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB1_70
# BB#69:
	movq	-136(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$2048, %edx             # imm = 0x800
	movw	%dx, 41(%rax)
	movq	-136(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$4096, %edx             # imm = 0x1000
	movw	%dx, 41(%rax)
	movq	-728(%rbp), %rax
	movb	$1, 34(%rax)
.LBB1_70:
	movq	-120(%rbp), %rax
	movq	48(%rax), %r14
	movl	$.L.str.17, %r12d
	cmpl	$0, -124(%rbp)
	jne	.LBB1_72
# BB#71:                                # %select.mid
	movl	$.L.str.12, %r12d
.LBB1_72:                               # %select.end
	movl	-188(%rbp), %r15d
	movq	-144(%rbp), %r13
	movq	-160(%rbp), %rbx
	movl	DbInsert.extra_seq(%rip), %edi
	incl	%edi
	movl	%edi, DbInsert.extra_seq(%rip)
	callq	StringFiveInt
	movq	-176(%rbp), %rcx
	movl	-180(%rbp), %edx
	leaq	-720(%rbp), %rsi
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
	addq	$744, %rsp              # imm = 0x2E8
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
	.type	dtab_insert,@function
dtab_insert:                            # @dtab_insert
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
	subq	$120, %rsp
.Ltmp17:
	.cfi_offset %rbx, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	(%rsi), %rax
	movl	(%rax), %ecx
	decl	%ecx
	cmpl	%ecx, 4(%rax)
	jne	.LBB3_15
# BB#1:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	addl	%edi, %edi
	movq	%rax, -16(%rbp)
	movl	%edi, -20(%rbp)
	callq	dtab_new
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	leaq	-32(%rbp), %rbx
	jmp	.LBB3_2
	.align	16, 0x90
.LBB3_13:                               #   in Loop: Header=BB3_2 Depth=1
	incl	-36(%rbp)
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #       Child Loop BB3_9 Depth 3
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB3_14
# BB#3:                                 #   in Loop: Header=BB3_2 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 8(%rcx,%rax,8)
	je	.LBB3_13
# BB#4:                                 #   in Loop: Header=BB3_2 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB3_6
# BB#5:                                 #   in Loop: Header=BB3_2 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.57, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_6:                                #   in Loop: Header=BB3_2 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB3_7
	.align	16, 0x90
.LBB3_11:                               #   in Loop: Header=BB3_7 Depth=2
	movq	-56(%rbp), %rdi
	movq	%rbx, %rsi
	callq	dtab_insert
	movq	-48(%rbp), %rax
.LBB3_7:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_9 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB3_12
# BB#8:                                 #   in Loop: Header=BB3_7 Depth=2
	movq	-48(%rbp), %rax
	jmp	.LBB3_9
	.align	16, 0x90
.LBB3_10:                               #   in Loop: Header=BB3_9 Depth=3
	movq	-56(%rbp), %rax
.LBB3_9:                                #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_10
	jmp	.LBB3_11
	.align	16, 0x90
.LBB3_12:                               #   in Loop: Header=BB3_2 Depth=1
	movq	-64(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB3_13
.LBB3_14:                               # %dtab_rehash.exit
	movq	-16(%rbp), %rdi
	callq	free
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB3_15:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	incl	4(%rax)
	movq	-72(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB3_16
	.align	16, 0x90
.LBB3_17:                               #   in Loop: Header=BB3_16 Depth=1
	movq	-120(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movzbl	(%rax), %eax
	addq	%rax, -88(%rbp)
.LBB3_16:                               # =>This Inner Loop Header: Depth=1
	movq	-120(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB3_17
# BB#18:
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	(%rcx), %rcx
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax,%rdx,8)
	jne	.LBB3_25
# BB#19:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_21
# BB#20:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_24
.LBB3_21:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_22
# BB#23:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_24
.LBB3_22:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_24:
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
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
.LBB3_25:
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB3_26
	.align	16, 0x90
.LBB3_33:                               #   in Loop: Header=BB3_26 Depth=1
	movq	-104(%rbp), %rax
.LBB3_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_28 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB3_34
# BB#27:                                #   in Loop: Header=BB3_26 Depth=1
	movq	-104(%rbp), %rax
	jmp	.LBB3_28
	.align	16, 0x90
.LBB3_29:                               #   in Loop: Header=BB3_28 Depth=2
	movq	-112(%rbp), %rax
.LBB3_28:                               #   Parent Loop BB3_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_29
# BB#30:                                #   in Loop: Header=BB3_26 Depth=1
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	-112(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB3_33
# BB#31:                                #   in Loop: Header=BB3_26 Depth=1
	movq	-72(%rbp), %rdi
	addq	$64, %rdi
	movq	-112(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_33
# BB#32:                                #   in Loop: Header=BB3_26 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.56, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_33
.LBB3_34:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_36
# BB#35:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_39
.LBB3_36:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_37
# BB#38:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_39
.LBB3_37:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_39:
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
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_42
# BB#40:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_42
# BB#41:
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
.LBB3_42:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_45
# BB#43:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_45
# BB#44:
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
.LBB3_45:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dtab_insert, .Lfunc_end3-dtab_insert
	.cfi_endproc

	.globl	DbConvert
	.align	16, 0x90
	.type	DbConvert,@function
DbConvert:                              # @DbConvert
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
	pushq	%r12
	pushq	%rbx
	subq	$1072, %rsp             # imm = 0x430
.Ltmp21:
	.cfi_offset %rbx, -48
.Ltmp22:
	.cfi_offset %r12, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 42(%rax)
	je	.LBB4_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_2:
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
	je	.LBB4_18
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
	jmp	.LBB4_4
	.align	16, 0x90
.LBB4_16:                               #   in Loop: Header=BB4_4 Depth=1
	movq	-1096(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1096(%rbp)
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	movq	-1096(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB4_17
# BB#5:                                 #   in Loop: Header=BB4_4 Depth=1
	movq	-1096(%rbp), %rax
	jmp	.LBB4_6
	.align	16, 0x90
.LBB4_7:                                #   in Loop: Header=BB4_6 Depth=2
	movq	-1104(%rbp), %rax
.LBB4_6:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -1104(%rbp)
	movq	-1104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_7
# BB#8:                                 #   in Loop: Header=BB4_4 Depth=1
	movq	-1104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	je	.LBB4_11
# BB#9:                                 #   in Loop: Header=BB4_4 Depth=1
	movq	-1104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB4_11
# BB#10:                                #   in Loop: Header=BB4_4 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_11:                               #   in Loop: Header=BB4_4 Depth=1
	movq	-1104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	jne	.LBB4_16
# BB#12:                                #   in Loop: Header=BB4_4 Depth=1
	movq	-40(%rbp), %rax
	movq	48(%rax), %r14
	movq	-1096(%rbp), %rax
	cmpb	$0, 34(%rax)
	movl	$.L.str.26, %ebx
	cmovneq	%r12, %rbx
	movzbl	33(%rax), %r15d
	cmpl	$0, -44(%rbp)
	je	.LBB4_14
# BB#13:                                #   in Loop: Header=BB4_4 Depth=1
	movq	-1104(%rbp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.27, %esi
	callq	FullSymName
	jmp	.LBB4_15
.LBB4_14:                               #   in Loop: Header=BB4_4 Depth=1
	movq	-1104(%rbp), %rax
	movq	64(%rax), %rdi
	callq	SymName
.LBB4_15:                               #   in Loop: Header=BB4_4 Depth=1
	movq	%rax, %r8
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	callq	fprintf
	jmp	.LBB4_16
.LBB4_17:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	fclose
	leaq	-576(%rbp), %rdi
	leaq	-1088(%rbp), %rsi
	callq	SortFile
	jmp	.LBB4_19
.LBB4_18:
	leaq	-1088(%rbp), %rdi
	callq	remove
.LBB4_19:
	leaq	-576(%rbp), %rdi
	callq	remove
	movq	-40(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB4_20
	.align	16, 0x90
.LBB4_29:                               #   in Loop: Header=BB4_20 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB4_20:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB4_30
# BB#21:                                #   in Loop: Header=BB4_20 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB4_23
# BB#22:                                #   in Loop: Header=BB4_20 Depth=1
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
.LBB4_23:                               #   in Loop: Header=BB4_20 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_25
# BB#24:                                #   in Loop: Header=BB4_20 Depth=1
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
.LBB4_25:                               #   in Loop: Header=BB4_20 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_27
# BB#26:                                #   in Loop: Header=BB4_20 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_28
.LBB4_27:                               #   in Loop: Header=BB4_20 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_29
	.align	16, 0x90
.LBB4_28:                               #   in Loop: Header=BB4_20 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB4_29
	.align	16, 0x90
.LBB4_39:                               #   in Loop: Header=BB4_30 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB4_30:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB4_40
# BB#31:                                #   in Loop: Header=BB4_30 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB4_33
# BB#32:                                #   in Loop: Header=BB4_30 Depth=1
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
.LBB4_33:                               #   in Loop: Header=BB4_30 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_35
# BB#34:                                #   in Loop: Header=BB4_30 Depth=1
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
.LBB4_35:                               #   in Loop: Header=BB4_30 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_37
# BB#36:                                #   in Loop: Header=BB4_30 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_38
.LBB4_37:                               #   in Loop: Header=BB4_30 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_39
	.align	16, 0x90
.LBB4_38:                               #   in Loop: Header=BB4_30 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB4_39
.LBB4_40:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_42
# BB#41:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_43
.LBB4_42:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_44
.LBB4_43:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_44:
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
.Lfunc_end4:
	.size	DbConvert, .Lfunc_end4-DbConvert
	.cfi_endproc

	.globl	DbClose
	.align	16, 0x90
	.type	DbClose,@function
DbClose:                                # @DbClose
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	testq	%rdi, %rdi
	je	.LBB5_4
# BB#1:
	movq	-8(%rbp), %rax
	cmpb	$0, 43(%rax)
	jne	.LBB5_4
# BB#2:
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB5_4
# BB#3:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	fclose
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
.LBB5_4:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	DbClose, .Lfunc_end5-DbClose
	.cfi_endproc

	.globl	DbLoad
	.align	16, 0x90
	.type	DbLoad,@function
DbLoad:                                 # @DbLoad
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$1248, %rsp             # imm = 0x4E0
.Ltmp31:
	.cfi_offset %rbx, -48
.Ltmp32:
	.cfi_offset %r12, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
	movq	%rdi, -64(%rbp)
	movl	%esi, -68(%rbp)
	movl	%edx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	-64(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movl	-68(%rbp), %r8d
	movl	$.L.str.19, %esi
	movl	$4, %ecx
	callq	DefineFile
	movw	%ax, -186(%rbp)
	movl	-72(%rbp), %esi
	movzwl	-186(%rbp), %edi
	xorl	%edx, %edx
	callq	OpenFile
	movq	%rax, -96(%rbp)
	testq	%rax, %rax
	je	.LBB6_4
# BB#1:
	movq	-96(%rbp), %rdx
	leaq	-720(%rbp), %rdi
	movl	$512, %esi              # imm = 0x200
	callq	fgets
	testq	%rax, %rax
	je	.LBB6_3
# BB#2:
	leaq	-717(%rbp), %rdi
	movl	$.L.str.21, %esi
	callq	StringBeginsWith
	testl	%eax, %eax
	jne	.LBB6_4
.LBB6_3:
	movzwl	-186(%rbp), %edi
	callq	FileName
	movq	%rax, %rdi
	callq	remove
	movq	$0, -96(%rbp)
.LBB6_4:
	cmpq	$0, -96(%rbp)
	jne	.LBB6_64
# BB#5:
	cmpl	$0, -72(%rbp)
	je	.LBB6_64
# BB#6:
	movq	$0, -104(%rbp)
	movq	-64(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movl	-68(%rbp), %r8d
	movl	$.L.str.28, %esi
	movl	$3, %ecx
	callq	DefineFile
	movw	%ax, -188(%rbp)
	movq	$0, -200(%rbp)
	movzwl	-188(%rbp), %edi
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	LexPush
	callq	LexGetToken
	movq	%rax, -112(%rbp)
	movl	$1048575, %r12d         # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%r12d, %eax
	movl	%eax, -172(%rbp)
	leaq	-112(%rbp), %r14
	leaq	-720(%rbp), %r15
	jmp	.LBB6_7
	.align	16, 0x90
.LBB6_50:                               #   in Loop: Header=BB6_7 Depth=1
	movq	-104(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-128(%rbp), %r8
	leaq	64(%r8), %rcx
	addq	$32, %r8
	movq	-200(%rbp), %rax
	movl	-172(%rbp), %esi
	movl	%esi, 16(%rsp)
	movq	%rax, 8(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, (%rsp)
	movl	$0, %esi
	movl	$.L.str.17, %r9d
	callq	DbInsert
	movq	-120(%rbp), %rdi
	callq	DisposeObject
	callq	LexNextTokenPos
	movq	%rax, -200(%rbp)
	callq	LexGetToken
	movq	%rax, -112(%rbp)
	movl	36(%rax), %eax
	andl	%r12d, %eax
	movl	%eax, -172(%rbp)
.LBB6_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_15 Depth 2
                                        #       Child Loop BB6_17 Depth 3
                                        #     Child Loop BB6_25 Depth 2
                                        #       Child Loop BB6_27 Depth 3
                                        #     Child Loop BB6_33 Depth 2
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	jne	.LBB6_51
# BB#8:                                 #   in Loop: Header=BB6_7 Depth=1
	movq	StartSym(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	Parse
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB6_10
# BB#9:                                 #   in Loop: Header=BB6_7 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB6_11
.LBB6_10:                               #   in Loop: Header=BB6_7 Depth=1
	movq	-120(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-188(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$33, %edi
	movl	$6, %esi
	movl	$.L.str.29, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB6_11:                               #   in Loop: Header=BB6_7 Depth=1
	cmpq	$0, -80(%rbp)
	jne	.LBB6_13
# BB#12:                                #   in Loop: Header=BB6_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.30, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_13:                               #   in Loop: Header=BB6_7 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB6_24
# BB#14:                                #   in Loop: Header=BB6_7 Depth=1
	movq	-80(%rbp), %rax
	jmp	.LBB6_15
	.align	16, 0x90
.LBB6_21:                               #   in Loop: Header=BB6_15 Depth=2
	movq	-152(%rbp), %rax
.LBB6_15:                               #   Parent Loop BB6_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_17 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB6_22
# BB#16:                                #   in Loop: Header=BB6_15 Depth=2
	movq	-152(%rbp), %rax
	jmp	.LBB6_17
	.align	16, 0x90
.LBB6_18:                               #   in Loop: Header=BB6_17 Depth=3
	movq	-160(%rbp), %rax
.LBB6_17:                               #   Parent Loop BB6_7 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_18
# BB#19:                                #   in Loop: Header=BB6_15 Depth=2
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB6_21
# BB#20:                                #   in Loop: Header=BB6_15 Depth=2
	movq	-160(%rbp), %rax
	movq	80(%rax), %rax
	movq	-120(%rbp), %rcx
	cmpq	80(%rcx), %rax
	jne	.LBB6_21
.LBB6_22:                               #   in Loop: Header=BB6_7 Depth=1
	movq	-152(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB6_24
# BB#23:                                #   in Loop: Header=BB6_7 Depth=1
	movq	-120(%rbp), %rbx
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
.LBB6_24:                               #   in Loop: Header=BB6_7 Depth=1
	movq	$0, -128(%rbp)
	movq	-120(%rbp), %rax
	jmp	.LBB6_25
	.align	16, 0x90
.LBB6_35:                               #   in Loop: Header=BB6_25 Depth=2
	movq	-152(%rbp), %rax
.LBB6_25:                               #   Parent Loop BB6_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_27 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.LBB6_36
# BB#26:                                #   in Loop: Header=BB6_25 Depth=2
	movq	-152(%rbp), %rax
	jmp	.LBB6_27
	.align	16, 0x90
.LBB6_28:                               #   in Loop: Header=BB6_27 Depth=3
	movq	-136(%rbp), %rax
.LBB6_27:                               #   Parent Loop BB6_7 Depth=1
                                        #     Parent Loop BB6_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_28
# BB#29:                                #   in Loop: Header=BB6_25 Depth=2
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB6_35
# BB#30:                                #   in Loop: Header=BB6_25 Depth=2
	movq	-136(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %eax
	testb	$1, %al
	je	.LBB6_35
# BB#31:                                #   in Loop: Header=BB6_25 Depth=2
	movq	-136(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB6_35
# BB#32:                                #   in Loop: Header=BB6_7 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB6_33
	.align	16, 0x90
.LBB6_34:                               #   in Loop: Header=BB6_33 Depth=2
	movq	-128(%rbp), %rax
.LBB6_33:                               #   Parent Loop BB6_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_34
.LBB6_36:                               #   in Loop: Header=BB6_7 Depth=1
	cmpq	$0, -128(%rbp)
	jne	.LBB6_38
# BB#37:                                #   in Loop: Header=BB6_7 Depth=1
	movq	-120(%rbp), %rbx
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
.LBB6_38:                               #   in Loop: Header=BB6_7 Depth=1
	movq	-128(%rbp), %rdi
	movl	$1, %esi
	callq	ReplaceWithTidy
	movq	%rax, -128(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_41
# BB#39:                                #   in Loop: Header=BB6_7 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB6_41
# BB#40:                                #   in Loop: Header=BB6_7 Depth=1
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$33, %edi
	movl	$9, %esi
	movl	$.L.str.34, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB6_41:                               #   in Loop: Header=BB6_7 Depth=1
	movq	-128(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB6_43
# BB#42:                                #   in Loop: Header=BB6_7 Depth=1
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$33, %edi
	movl	$10, %esi
	movl	$.L.str.35, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB6_43:                               #   in Loop: Header=BB6_7 Depth=1
	cmpq	$0, -104(%rbp)
	jne	.LBB6_50
# BB#44:                                #   in Loop: Header=BB6_7 Depth=1
	movzwl	-188(%rbp), %edi
	callq	FileName
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%r15, %rdi
	callq	strlen
	addl	$-3, %eax
	movl	%eax, -164(%rbp)
	testl	%eax, %eax
	jg	.LBB6_46
# BB#45:                                #   in Loop: Header=BB6_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.36, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_46:                               #   in Loop: Header=BB6_7 Depth=1
	movslq	-164(%rbp), %rax
	leaq	-720(%rbp,%rax), %rdi
	movl	$.L.str.12, %esi
	callq	strcpy
	movq	-64(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movq	%r15, %rsi
	callq	MakeWord
	movq	%rax, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_49
# BB#47:                                #   in Loop: Header=BB6_7 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB6_49
# BB#48:                                #   in Loop: Header=BB6_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_49:                               # %DbCreate.exit
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-48(%rbp), %rax
	movb	$0, 42(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB6_50
.LBB6_51:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$105, %eax
	je	.LBB6_53
# BB#52:
	movq	-112(%rbp), %r8
	addq	$32, %r8
	movl	$33, %edi
	movl	$11, %esi
	movl	$.L.str.37, %edx
	movl	$1, %ecx
	movl	$.L.str.38, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_53:
	callq	LexPop
	cmpq	$0, -104(%rbp)
	jne	.LBB6_60
# BB#54:
	movzwl	-188(%rbp), %edi
	callq	FileName
	leaq	-720(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rbx, %rdi
	callq	strlen
	addl	$-3, %eax
	movl	%eax, -164(%rbp)
	testl	%eax, %eax
	jg	.LBB6_56
# BB#55:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.39, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_56:
	movslq	-164(%rbp), %rax
	leaq	-720(%rbp,%rax), %rdi
	movl	$.L.str.12, %esi
	callq	strcpy
	movq	-64(%rbp), %rdx
	addq	$32, %rdx
	leaq	-720(%rbp), %rsi
	movl	$11, %edi
	callq	MakeWord
	movq	%rax, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_59
# BB#57:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB6_59
# BB#58:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_59:                               # %DbCreate.exit2
	movq	-48(%rbp), %rax
	movb	$0, 42(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB6_60:
	movq	-104(%rbp), %rdi
	xorl	%esi, %esi
	callq	DbConvert
	movzwl	-186(%rbp), %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	OpenFile
	movq	%rax, -96(%rbp)
	testq	%rax, %rax
	je	.LBB6_63
# BB#61:
	movq	-96(%rbp), %rdx
	leaq	-720(%rbp), %rdi
	movl	$512, %esi              # imm = 0x200
	callq	fgets
	testq	%rax, %rax
	je	.LBB6_63
# BB#62:
	leaq	-717(%rbp), %rdi
	movl	$.L.str.21, %esi
	callq	StringBeginsWith
	testl	%eax, %eax
	jne	.LBB6_64
.LBB6_63:
	movq	-104(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-186(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$33, %edi
	movl	$12, %esi
	movl	$.L.str.40, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB6_64:
	movzwl	-186(%rbp), %edi
	callq	FileName
	leaq	-720(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rbx, %rdi
	callq	strlen
	addl	$-3, %eax
	movl	%eax, -164(%rbp)
	testl	%eax, %eax
	jg	.LBB6_66
# BB#65:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.41, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_66:
	movslq	-164(%rbp), %rax
	leaq	-720(%rbp,%rax), %rdi
	movl	$.L.str.12, %esi
	callq	strcpy
	movq	-64(%rbp), %rdx
	addq	$32, %rdx
	leaq	-720(%rbp), %r15
	movl	$11, %edi
	movq	%r15, %rsi
	callq	MakeWord
	movq	%rax, -104(%rbp)
	movb	$1, 42(%rax)
	movb	-84(%rbp), %al
	movq	-104(%rbp), %rcx
	movb	%al, 43(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB6_80
# BB#67:
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB6_69
# BB#68:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.42, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_69:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_71
# BB#70:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_74
.LBB6_71:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_72
# BB#73:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_74
.LBB6_72:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_74:
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
	movq	-104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_77
# BB#75:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_77
# BB#76:
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
.LBB6_77:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_80
# BB#78:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_80
# BB#79:
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
.LBB6_80:
	cmpq	$0, -96(%rbp)
	je	.LBB6_81
# BB#83:
	movl	$0, -184(%rbp)
	movl	$1, -168(%rbp)
	movq	-96(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%r15, %rdi
	callq	fgets
	movq	%rax, -1240(%rbp)
	leaq	-176(%rbp), %r14
	leaq	-1232(%rbp), %rbx
	movb	$1, %r12b
	jmp	.LBB6_84
	.align	16, 0x90
.LBB6_131:                              #   in Loop: Header=BB6_84 Depth=1
	movq	-96(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%r15, %rdi
	callq	fgets
	movq	%rax, -1240(%rbp)
.LBB6_84:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_90 Depth 2
                                        #     Child Loop BB6_106 Depth 2
                                        #       Child Loop BB6_108 Depth 3
                                        #     Child Loop BB6_97 Depth 2
                                        #     Child Loop BB6_103 Depth 2
	cmpq	$0, -1240(%rbp)
	je	.LBB6_132
# BB#85:                                #   in Loop: Header=BB6_84 Depth=1
	movzbl	-720(%rbp), %eax
	cmpl	$48, %eax
	jne	.LBB6_132
# BB#86:                                #   in Loop: Header=BB6_84 Depth=1
	movzbl	-719(%rbp), %eax
	cmpl	$48, %eax
	jne	.LBB6_132
# BB#87:                                #   in Loop: Header=BB6_84 Depth=1
	incl	-168(%rbp)
	movq	-96(%rbp), %rdi
	callq	ftell
	movl	%eax, -184(%rbp)
	movl	$.L.str.43, %esi
	movq	%r15, %rdi
	callq	StringBeginsWith
	movl	%eax, -204(%rbp)
	testl	%eax, %eax
	movl	$.L.str.44, %esi
	jne	.LBB6_89
# BB#88:                                # %select.mid
                                        #   in Loop: Header=BB6_84 Depth=1
	movl	$.L.str.45, %esi
.LBB6_89:                               # %select.end
                                        #   in Loop: Header=BB6_84 Depth=1
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	__isoc99_sscanf
	movl	$9, -164(%rbp)
	jmp	.LBB6_90
	.align	16, 0x90
.LBB6_94:                               #   in Loop: Header=BB6_90 Depth=2
	incl	-164(%rbp)
.LBB6_90:                               #   Parent Loop BB6_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-164(%rbp), %rax
	movzbl	-720(%rbp,%rax), %eax
	cmpl	$32, %eax
	je	.LBB6_91
# BB#92:                                #   in Loop: Header=BB6_90 Depth=2
	movslq	-164(%rbp), %rax
	cmpb	$0, -720(%rbp,%rax)
	setne	%al
	jmp	.LBB6_93
	.align	16, 0x90
.LBB6_91:                               #   in Loop: Header=BB6_90 Depth=2
	xorl	%eax, %eax
.LBB6_93:                               #   in Loop: Header=BB6_90 Depth=2
	testb	%al, %al
	jne	.LBB6_94
# BB#95:                                #   in Loop: Header=BB6_84 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB6_96
# BB#105:                               #   in Loop: Header=BB6_84 Depth=1
	movq	$0, -144(%rbp)
	movslq	-164(%rbp), %rax
	leaq	1(%rax,%r15), %rdi
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	__isoc99_sscanf
	movq	-80(%rbp), %rax
	jmp	.LBB6_106
	.align	16, 0x90
.LBB6_137:                              #   in Loop: Header=BB6_106 Depth=2
	movq	-152(%rbp), %rax
.LBB6_106:                              #   Parent Loop BB6_84 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_108 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB6_114
# BB#107:                               #   in Loop: Header=BB6_106 Depth=2
	movq	-152(%rbp), %rax
	jmp	.LBB6_108
	.align	16, 0x90
.LBB6_109:                              #   in Loop: Header=BB6_108 Depth=3
	movq	-160(%rbp), %rax
.LBB6_108:                              #   Parent Loop BB6_84 Depth=1
                                        #     Parent Loop BB6_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_109
# BB#110:                               #   in Loop: Header=BB6_106 Depth=2
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB6_112
# BB#111:                               #   in Loop: Header=BB6_106 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.47, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_112:                              #   in Loop: Header=BB6_106 Depth=2
	movq	-160(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB6_137
# BB#113:                               #   in Loop: Header=BB6_84 Depth=1
	movq	-160(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB6_114
	.align	16, 0x90
.LBB6_96:                               #   in Loop: Header=BB6_84 Depth=1
	movl	$0, -180(%rbp)
	movq	StartSym(%rip), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB6_97
	.align	16, 0x90
.LBB6_101:                              #   in Loop: Header=BB6_97 Depth=2
	movq	-144(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	PushScope
	incl	-180(%rbp)
	movslq	-164(%rbp), %rax
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
	movq	%rax, -144(%rbp)
	movq	%rbx, %rdi
	callq	strlen
	movl	-164(%rbp), %ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, -164(%rbp)
.LBB6_97:                               #   Parent Loop BB6_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-164(%rbp), %rax
	movzbl	-720(%rbp,%rax), %eax
	cmpl	$10, %eax
	je	.LBB6_98
# BB#99:                                #   in Loop: Header=BB6_97 Depth=2
	movslq	-164(%rbp), %rax
	cmpb	$0, -720(%rbp,%rax)
	setne	%al
	jmp	.LBB6_100
	.align	16, 0x90
.LBB6_98:                               #   in Loop: Header=BB6_97 Depth=2
	xorl	%eax, %eax
.LBB6_100:                              #   in Loop: Header=BB6_97 Depth=2
	testb	%al, %al
	jne	.LBB6_101
# BB#102:                               #   in Loop: Header=BB6_84 Depth=1
	movl	$1, -164(%rbp)
	jmp	.LBB6_103
	.align	16, 0x90
.LBB6_104:                              #   in Loop: Header=BB6_103 Depth=2
	callq	PopScope
	incl	-164(%rbp)
.LBB6_103:                              #   Parent Loop BB6_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-164(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jle	.LBB6_104
.LBB6_114:                              #   in Loop: Header=BB6_84 Depth=1
	cmpq	$0, -144(%rbp)
	je	.LBB6_138
# BB#115:                               #   in Loop: Header=BB6_84 Depth=1
	movq	-144(%rbp), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB6_138
# BB#116:                               #   in Loop: Header=BB6_84 Depth=1
	movq	-144(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB6_118
# BB#117:                               #   in Loop: Header=BB6_84 Depth=1
	movq	-144(%rbp), %rdi
	callq	CrossInit
.LBB6_118:                              #   in Loop: Header=BB6_84 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r12b, %r12b
	jne	.LBB6_120
# BB#119:                               #   in Loop: Header=BB6_84 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_123
	.align	16, 0x90
.LBB6_120:                              #   in Loop: Header=BB6_84 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_121
# BB#122:                               #   in Loop: Header=BB6_84 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_123
.LBB6_121:                              #   in Loop: Header=BB6_84 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB6_123:                              #   in Loop: Header=BB6_84 Depth=1
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
	movq	-104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_126
# BB#124:                               #   in Loop: Header=BB6_84 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB6_126
# BB#125:                               #   in Loop: Header=BB6_84 Depth=1
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
.LBB6_126:                              #   in Loop: Header=BB6_84 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-144(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_129
# BB#127:                               #   in Loop: Header=BB6_84 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB6_129
# BB#128:                               #   in Loop: Header=BB6_84 Depth=1
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
.LBB6_129:                              #   in Loop: Header=BB6_84 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movb	-176(%rbp), %cl
	movb	%cl, 33(%rax)
	movb	-204(%rbp), %al
	movq	-152(%rbp), %rcx
	movb	%al, 34(%rcx)
	cmpl	$0, -204(%rbp)
	je	.LBB6_131
# BB#130:                               #   in Loop: Header=BB6_84 Depth=1
	movq	-144(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$2048, %edx             # imm = 0x800
	movw	%dx, 41(%rax)
	movq	-144(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$4096, %edx             # imm = 0x1000
	movw	%dx, 41(%rax)
	jmp	.LBB6_131
.LBB6_132:
	movq	-104(%rbp), %rax
	cmpb	$0, 43(%rax)
	je	.LBB6_135
# BB#133:
	cmpq	$0, -1240(%rbp)
	je	.LBB6_82
# BB#134:
	movq	-96(%rbp), %rbx
	movzwl	-186(%rbp), %edi
	callq	FileName
	leaq	-720(%rbp), %rdx
	leaq	-1244(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	ReadLines
	movq	-104(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movw	-1244(%rbp), %ax
	movq	-104(%rbp), %rcx
	movw	%ax, 40(%rcx)
	movq	-104(%rbp), %rax
	movq	48(%rax), %rdi
	movzwl	40(%rax), %esi
	callq	SortLines
	jmp	.LBB6_136
.LBB6_81:
	movq	-104(%rbp), %rax
	movq	$0, 48(%rax)
	jmp	.LBB6_82
.LBB6_138:
	movq	-104(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-186(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	-168(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$33, %edi
	movl	$13, %esi
	movl	$.L.str.48, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movq	-96(%rbp), %rdi
	callq	fclose
	movq	-104(%rbp), %rax
	movb	$0, 43(%rax)
.LBB6_82:
	movq	-104(%rbp), %rax
	movq	$0, 48(%rax)
	jmp	.LBB6_136
.LBB6_135:
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movw	-184(%rbp), %ax
	movq	-104(%rbp), %rcx
	movw	%ax, 40(%rcx)
.LBB6_136:
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$1248, %rsp             # imm = 0x4E0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	DbLoad, .Lfunc_end6-DbLoad
	.cfi_endproc

	.globl	DbRetrieve
	.align	16, 0x90
	.type	DbRetrieve,@function
DbRetrieve:                             # @DbRetrieve
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1720, %rsp             # imm = 0x6B8
.Ltmp38:
	.cfi_offset %rbx, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
	movq	32(%rbp), %r10
	movq	24(%rbp), %rbx
	movq	16(%rbp), %rax
	movq	%rdi, -608(%rbp)
	movl	%esi, -612(%rbp)
	movq	%rdx, -624(%rbp)
	movq	%rcx, -632(%rbp)
	movq	%r8, -640(%rbp)
	movq	%r9, -648(%rbp)
	movq	%rax, -656(%rbp)
	movq	%rbx, -664(%rbp)
	movq	%r10, -672(%rbp)
	movq	-608(%rbp), %rax
	cmpb	$0, 42(%rax)
	je	.LBB7_2
# BB#1:
	movq	-608(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB7_2
# BB#3:
	movl	$0, -1732(%rbp)
	movq	-608(%rbp), %rax
	jmp	.LBB7_4
	.align	16, 0x90
.LBB7_15:                               #   in Loop: Header=BB7_4 Depth=1
	movq	-1720(%rbp), %rax
.LBB7_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -1720(%rbp)
	movq	-1720(%rbp), %rax
	cmpq	-608(%rbp), %rax
	je	.LBB7_16
# BB#5:                                 #   in Loop: Header=BB7_4 Depth=1
	movq	-1720(%rbp), %rax
	jmp	.LBB7_6
	.align	16, 0x90
.LBB7_7:                                #   in Loop: Header=BB7_6 Depth=2
	movq	-1728(%rbp), %rax
.LBB7_6:                                #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -1728(%rbp)
	movq	-1728(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_7
# BB#8:                                 #   in Loop: Header=BB7_4 Depth=1
	movq	-1728(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	je	.LBB7_11
# BB#9:                                 #   in Loop: Header=BB7_4 Depth=1
	movq	-1728(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB7_11
# BB#10:                                #   in Loop: Header=BB7_4 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_11:                               #   in Loop: Header=BB7_4 Depth=1
	movq	-1728(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	jne	.LBB7_15
# BB#12:                                #   in Loop: Header=BB7_4 Depth=1
	movq	-1728(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	-624(%rbp), %rax
	je	.LBB7_16
# BB#13:                                #   in Loop: Header=BB7_4 Depth=1
	movq	-1720(%rbp), %rax
	movzbl	33(%rax), %eax
	cmpl	-1732(%rbp), %eax
	jle	.LBB7_15
# BB#14:                                #   in Loop: Header=BB7_4 Depth=1
	movq	-1720(%rbp), %rax
	movzbl	33(%rax), %eax
	movl	%eax, -1732(%rbp)
	jmp	.LBB7_15
.LBB7_2:
	movl	$0, -596(%rbp)
	jmp	.LBB7_82
.LBB7_16:
	movq	-1720(%rbp), %rax
	cmpq	-608(%rbp), %rax
	jne	.LBB7_31
# BB#17:
	movq	-624(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB7_19
# BB#18:
	movq	-624(%rbp), %rdi
	callq	CrossInit
.LBB7_19:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB7_21
# BB#20:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_24
.LBB7_21:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB7_22
# BB#23:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB7_24
.LBB7_22:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB7_24:
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
	movq	-608(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_27
# BB#25:
	cmpq	$0, zz_res(%rip)
	je	.LBB7_27
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
.LBB7_27:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-624(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB7_30
# BB#28:
	cmpq	$0, zz_res(%rip)
	je	.LBB7_30
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
.LBB7_30:
	movq	-608(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1720(%rbp)
	movl	-1732(%rbp), %ecx
	incl	%ecx
	movb	%cl, 33(%rax)
	movq	-1720(%rbp), %rax
	movb	$0, 34(%rax)
.LBB7_31:
	movq	-1720(%rbp), %rax
	movzbl	33(%rax), %eax
	movl	%eax, -676(%rbp)
	movl	$.L.str.17, %edx
	cmpl	$0, -612(%rbp)
	jne	.LBB7_33
# BB#32:                                # %select.mid
	movl	$.L.str.12, %edx
.LBB7_33:                               # %select.end
	movl	-676(%rbp), %ecx
	movq	-632(%rbp), %r8
	leaq	-1712(%rbp), %r14
	movl	$.L.str.49, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	sprintf
	movq	-608(%rbp), %rax
	cmpb	$0, 43(%rax)
	je	.LBB7_52
# BB#34:
	movq	-608(%rbp), %rax
	movq	48(%rax), %rcx
	movzwl	40(%rax), %eax
	decl	%eax
	movq	%rcx, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	%eax, -60(%rbp)
	movq	%r14, -48(%rbp)
	leaq	-680(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB7_36
# BB#35:
	movl	$0, -36(%rbp)
	jmp	.LBB7_49
.LBB7_52:
	movq	-608(%rbp), %rax
	movq	48(%rax), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	fseek
	movq	-608(%rbp), %rax
	movq	48(%rax), %rbx
	movzwl	40(%rax), %r15d
	movq	%rbx, %rdi
	callq	ftell
	decl	%eax
	movq	%rbx, -32(%rbp)
	movl	%r15d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movq	%r14, -48(%rbp)
	leaq	-1200(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-40(%rbp), %eax
	jmp	.LBB7_53
	.align	16, 0x90
.LBB7_69:                               #   in Loop: Header=BB7_53 Depth=1
	movl	-68(%rbp), %eax
	decl	%eax
.LBB7_53:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_54 Depth 2
                                        #       Child Loop BB7_56 Depth 3
	movl	%eax, -64(%rbp)
	jmp	.LBB7_54
	.align	16, 0x90
.LBB7_70:                               #   in Loop: Header=BB7_54 Depth=2
	movl	-72(%rbp), %eax
	incl	%eax
	movl	%eax, -60(%rbp)
.LBB7_54:                               #   Parent Loop BB7_53 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_56 Depth 3
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jg	.LBB7_71
# BB#55:                                #   in Loop: Header=BB7_54 Depth=2
	movl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, -68(%rbp)
	movq	-32(%rbp), %rdi
	movslq	-68(%rbp), %rsi
	xorl	%edx, %edx
	callq	fseek
	.align	16, 0x90
.LBB7_56:                               #   Parent Loop BB7_53 Depth=1
                                        #     Parent Loop BB7_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incl	-68(%rbp)
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	cmpl	$10, %eax
	jne	.LBB7_56
# BB#57:                                #   in Loop: Header=BB7_54 Depth=2
	movl	-64(%rbp), %eax
	incl	%eax
	cmpl	%eax, -68(%rbp)
	jne	.LBB7_59
# BB#58:                                #   in Loop: Header=BB7_54 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rdi
	movslq	-68(%rbp), %rsi
	xorl	%edx, %edx
	callq	fseek
.LBB7_59:                               #   in Loop: Header=BB7_54 Depth=2
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	callq	fgets
	movq	-32(%rbp), %rdi
	callq	ftell
	decl	%eax
	movl	%eax, -72(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB7_61
# BB#60:                                #   in Loop: Header=BB7_54 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.59, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_61:                               #   in Loop: Header=BB7_54 Depth=2
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB7_63
# BB#62:                                #   in Loop: Header=BB7_54 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.60, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_63:                               #   in Loop: Header=BB7_54 Depth=2
	movl	-72(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB7_65
# BB#64:                                #   in Loop: Header=BB7_54 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.61, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_65:                               #   in Loop: Header=BB7_54 Depth=2
	cmpl	$0, UseCollate(%rip)
	je	.LBB7_67
# BB#66:                                #   in Loop: Header=BB7_54 Depth=2
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	strcollcmp
	jmp	.LBB7_68
	.align	16, 0x90
.LBB7_67:                               #   in Loop: Header=BB7_54 Depth=2
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	strcmp
.LBB7_68:                               #   in Loop: Header=BB7_54 Depth=2
	testl	%eax, %eax
	jg	.LBB7_70
	jmp	.LBB7_69
.LBB7_71:
	movl	-60(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB7_73
# BB#72:
	movq	-32(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	xorl	%edx, %edx
	callq	fseek
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	callq	fgets
	movq	-56(%rbp), %rdi
	leaq	-592(%rbp), %rbx
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	__isoc99_sscanf
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_74
.LBB7_36:
	movl	-40(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	jmp	.LBB7_37
	.align	16, 0x90
.LBB7_43:                               #   in Loop: Header=BB7_37 Depth=1
	movl	-72(%rbp), %eax
.LBB7_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_38 Depth 2
	decl	%eax
	movl	%eax, -68(%rbp)
	jmp	.LBB7_38
	.align	16, 0x90
.LBB7_44:                               #   in Loop: Header=BB7_38 Depth=2
	movl	-72(%rbp), %eax
	incl	%eax
	movl	%eax, -64(%rbp)
.LBB7_38:                               #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jg	.LBB7_45
# BB#39:                                #   in Loop: Header=BB7_38 Depth=2
	movl	-64(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, UseCollate(%rip)
	je	.LBB7_41
# BB#40:                                #   in Loop: Header=BB7_38 Depth=2
	movq	-48(%rbp), %rdi
	movslq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	strcollcmp
	jmp	.LBB7_42
	.align	16, 0x90
.LBB7_41:                               #   in Loop: Header=BB7_38 Depth=2
	movq	-48(%rbp), %rdi
	movslq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	strcmp
.LBB7_42:                               #   in Loop: Header=BB7_38 Depth=2
	testl	%eax, %eax
	jg	.LBB7_44
	jmp	.LBB7_43
.LBB7_45:
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	leaq	-592(%rbp), %rbx
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	__isoc99_sscanf
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB7_46
# BB#47:
	movl	$0, -76(%rbp)
	jmp	.LBB7_48
.LBB7_73:
	movl	$0, -76(%rbp)
.LBB7_74:                               # %SearchFile.exit
	cmpl	$0, -76(%rbp)
	je	.LBB7_75
# BB#76:
	movq	-640(%rbp), %rdx
	movq	-656(%rbp), %rcx
	movq	-664(%rbp), %r8
	leaq	-1200(%rbp), %rdi
	leaq	-1712(%rbp), %r9
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	movq	-608(%rbp), %rax
	movq	48(%rax), %rdi
	callq	ftell
	jmp	.LBB7_77
.LBB7_75:
	movl	$0, -596(%rbp)
	jmp	.LBB7_82
.LBB7_46:
	movl	$1, -76(%rbp)
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_48:
	movl	-76(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB7_49:                               # %SearchLines.exit
	cmpl	$0, -36(%rbp)
	je	.LBB7_50
# BB#51:
	movslq	-680(%rbp), %rax
	movq	-608(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-640(%rbp), %rdx
	movq	-656(%rbp), %rcx
	movq	-664(%rbp), %r8
	leaq	-1712(%rbp), %r9
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	movslq	-680(%rbp), %rax
	incq	%rax
.LBB7_77:
	movq	-672(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	-1712(%rbp), %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB7_79
# BB#78:
	movq	-608(%rbp), %rsi
	addq	$64, %rsi
	leaq	-1712(%rbp), %rdi
	callq	strcpy
.LBB7_79:
	leaq	-1712(%rbp), %rdi
	movl	$.L.str.28, %esi
	callq	FileNum
	movq	-648(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-648(%rbp), %rax
	cmpw	$0, (%rax)
	jne	.LBB7_81
# BB#80:
	movq	-608(%rbp), %rdx
	addq	$32, %rdx
	leaq	-1712(%rbp), %rdi
	movl	$.L.str.28, %esi
	movl	$3, %ecx
	xorl	%r8d, %r8d
	callq	DefineFile
	movq	-648(%rbp), %rcx
	movw	%ax, (%rcx)
.LBB7_81:
	movl	$1, -596(%rbp)
	jmp	.LBB7_82
.LBB7_50:
	movl	$0, -596(%rbp)
.LBB7_82:
	movl	-596(%rbp), %eax
	addq	$1720, %rsp             # imm = 0x6B8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	DbRetrieve, .Lfunc_end7-DbRetrieve
	.cfi_endproc

	.globl	DbRetrieveNext
	.align	16, 0x90
	.type	DbRetrieveNext,@function
DbRetrieveNext:                         # @DbRetrieveNext
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
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
	jne	.LBB8_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.51, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_2:
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB8_3
# BB#4:
	movq	-16(%rbp), %rax
	cmpb	$0, 43(%rax)
	je	.LBB8_8
# BB#5:
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzwl	40(%rcx), %ecx
	cmpq	%rcx, (%rax)
	jl	.LBB8_7
# BB#6:
	movl	$0, -4(%rbp)
	jmp	.LBB8_31
.LBB8_3:
	movl	$0, -4(%rbp)
	jmp	.LBB8_31
.LBB8_8:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_9
# BB#10:
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	jmp	.LBB8_11
.LBB8_7:
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
	jmp	.LBB8_14
.LBB8_9:
	movq	-16(%rbp), %rax
	movzwl	40(%rax), %esi
.LBB8_11:
	xorl	%edx, %edx
	callq	fseek
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	leaq	-592(%rbp), %rdi
	movl	$512, %esi              # imm = 0x200
	callq	fgets
	testq	%rax, %rax
	je	.LBB8_12
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
.LBB8_14:
	leaq	-1120(%rbp), %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB8_16
# BB#15:
	movq	-16(%rbp), %rsi
	addq	$64, %rsi
	leaq	-1120(%rbp), %rdi
	callq	strcpy
.LBB8_16:
	leaq	-1120(%rbp), %rdi
	movl	$.L.str.28, %esi
	callq	FileNum
	movq	-56(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-56(%rbp), %rax
	cmpw	$0, (%rax)
	jne	.LBB8_18
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
.LBB8_18:
	movq	-16(%rbp), %rax
	jmp	.LBB8_19
	.align	16, 0x90
.LBB8_25:                               #   in Loop: Header=BB8_19 Depth=1
	movq	-1136(%rbp), %rax
.LBB8_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_21 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB8_26
# BB#20:                                #   in Loop: Header=BB8_19 Depth=1
	movq	-1136(%rbp), %rax
	jmp	.LBB8_21
	.align	16, 0x90
.LBB8_22:                               #   in Loop: Header=BB8_21 Depth=2
	movq	-1144(%rbp), %rax
.LBB8_21:                               #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -1144(%rbp)
	movq	-1144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_22
# BB#23:                                #   in Loop: Header=BB8_19 Depth=1
	movq	-1144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	jne	.LBB8_25
# BB#24:                                #   in Loop: Header=BB8_19 Depth=1
	movq	-1136(%rbp), %rax
	movzbl	33(%rax), %eax
	cmpl	-1124(%rbp), %eax
	jne	.LBB8_25
.LBB8_26:
	movq	-1136(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB8_28
# BB#27:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.53, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_28:
	movq	-1144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$140, %eax
	je	.LBB8_30
# BB#29:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.54, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_30:
	movq	-1144(%rbp), %rax
	movq	64(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB8_31
.LBB8_12:
	movl	$0, -4(%rbp)
.LBB8_31:
	movl	-4(%rbp), %eax
	addq	$1168, %rsp             # imm = 0x490
	popq	%rbp
	retq
.Lfunc_end8:
	.size	DbRetrieveNext, .Lfunc_end8-DbRetrieveNext
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
