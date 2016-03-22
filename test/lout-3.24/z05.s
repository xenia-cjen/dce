	.text
	.file	"z05.dce"
	.globl	ReadPrependDef
	.align	16, 0x90
	.type	ReadPrependDef,@function
ReadPrependDef:                         # @ReadPrependDef
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	callq	LexGetToken
	movq	%rax, -24(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB0_6
# BB#1:
	movq	-24(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$5, %esi
	movl	$.L.str, %edx
	movl	$2, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_3
# BB#2:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_4
.LBB0_3:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_5
.LBB0_6:
	movq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	Parse
	movq	%rax, -32(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -32(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_9
# BB#7:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_8
.LBB0_9:
	movq	-32(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movl	$1, %r8d
	cmpl	$114, -4(%rbp)
	je	.LBB0_11
# BB#10:                                # %select.mid
	movl	$2, %r8d
.LBB0_11:                               # %select.end
	movl	$.L.str.3, %esi
	movl	$6, %ecx
	callq	DefineFile
	jmp	.LBB0_12
.LBB0_4:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_5:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_12
.LBB0_8:
	movq	-32(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$6, %esi
	movl	$.L.str.2, %edx
	movl	$2, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-32(%rbp), %rdi
	callq	DisposeObject
.LBB0_12:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ReadPrependDef, .Lfunc_end0-ReadPrependDef
	.cfi_endproc

	.globl	ReadDatabaseDef
	.align	16, 0x90
	.type	ReadDatabaseDef,@function
ReadDatabaseDef:                        # @ReadDatabaseDef
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
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
	movb	$17, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -32(%rbp)
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movb	$1, %bl
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_28:                               #   in Loop: Header=BB1_6 Depth=1
	callq	LexGetToken
	movq	%rax, -40(%rbp)
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	movb	$1, %al
	je	.LBB1_10
# BB#7:                                 #   in Loop: Header=BB1_6 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB1_8
# BB#9:                                 #   in Loop: Header=BB1_6 Depth=1
	movq	-40(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$64, %eax
	sete	%al
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_6 Depth=1
	xorl	%eax, %eax
.LBB1_10:                               #   in Loop: Header=BB1_6 Depth=1
	testb	%al, %al
	je	.LBB1_29
# BB#11:                                #   in Loop: Header=BB1_6 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB1_23
# BB#12:                                #   in Loop: Header=BB1_6 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_14
# BB#13:                                #   in Loop: Header=BB1_6 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_17
	.align	16, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_6 Depth=1
	movq	-40(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$7, %esi
	movl	$.L.str.5, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_25
# BB#24:                                #   in Loop: Header=BB1_6 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_26
.LBB1_25:                               #   in Loop: Header=BB1_6 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_27
	.align	16, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_6 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_15
# BB#16:                                #   in Loop: Header=BB1_6 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_17
.LBB1_26:                               #   in Loop: Header=BB1_6 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_27:                               #   in Loop: Header=BB1_6 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_28
.LBB1_15:                               #   in Loop: Header=BB1_6 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_6 Depth=1
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
	je	.LBB1_20
# BB#18:                                #   in Loop: Header=BB1_6 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_20
# BB#19:                                #   in Loop: Header=BB1_6 Depth=1
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
.LBB1_20:                               #   in Loop: Header=BB1_6 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_28
# BB#21:                                #   in Loop: Header=BB1_6 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_28
# BB#22:                                #   in Loop: Header=BB1_6 Depth=1
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
	jmp	.LBB1_28
.LBB1_29:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB1_35
# BB#30:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.8, (%rsp)
	movl	$5, %edi
	movl	$8, %esi
	movl	$.L.str.6, %edx
	movl	$2, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_32
# BB#31:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_33
.LBB1_32:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_34
.LBB1_35:
	movq	-32(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_37
# BB#36:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$9, %esi
	movl	$.L.str.9, %edx
	movl	$2, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_37:
	movq	-24(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	Parse
	movq	%rax, -48(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -48(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_41
# BB#38:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_39
.LBB1_41:
	movq	-48(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.10, %esi
	callq	StringEndsWith
	testl	%eax, %eax
	je	.LBB1_43
# BB#42:
	movq	-48(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.8, (%rsp)
	movl	$5, %edi
	movl	$47, %esi
	movl	$.L.str.11, %edx
	movl	$2, %ecx
	movl	$.L.str.10, %r9d
	jmp	.LBB1_40
.LBB1_43:
	movq	-32(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_47
# BB#44:
	movq	-48(%rbp), %rdi
	movl	$3, %esi
	cmpl	$116, -12(%rbp)
	je	.LBB1_46
# BB#45:                                # %select.mid
	movl	$4, %esi
.LBB1_46:                               # %select.end
	movq	-32(%rbp), %rcx
	movl	InMemoryDbIndexes(%rip), %r8d
	movl	$1, %edx
	callq	DbLoad
	jmp	.LBB1_47
.LBB1_33:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_34:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_47
.LBB1_39:
	movq	-48(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$10, %esi
	movl	$.L.str.2, %edx
	movl	$2, %ecx
	movl	$.L.str.8, %r9d
.LBB1_40:
	xorl	%eax, %eax
	callq	Error
	movq	-48(%rbp), %rdi
	callq	DisposeObject
.LBB1_47:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ReadDatabaseDef, .Lfunc_end1-ReadDatabaseDef
	.cfi_endproc

	.globl	ReadDefinitions
	.align	16, 0x90
	.type	ReadDefinitions,@function
ReadDefinitions:                        # @ReadDefinitions
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
.Ltmp10:
	.cfi_offset %rbx, -56
.Ltmp11:
	.cfi_offset %r12, -48
.Ltmp12:
	.cfi_offset %r13, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movq	%rdi, -96(%rbp)
	movq	%rsi, -104(%rbp)
	movb	%dl, -105(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	leaq	-56(%rbp), %r15
	movb	$1, %r13b
	leaq	-120(%rbp), %r14
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_34:                               # %ReadLangDef.exit
                                        #   in Loop: Header=BB2_1 Depth=1
	callq	LexGetToken
	movq	%rax, -120(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_102 Depth 2
                                        #       Child Loop BB2_107 Depth 3
                                        #     Child Loop BB2_61 Depth 2
                                        #       Child Loop BB2_66 Depth 3
                                        #     Child Loop BB2_151 Depth 2
                                        #     Child Loop BB2_251 Depth 2
                                        #     Child Loop BB2_330 Depth 2
                                        #     Child Loop BB2_413 Depth 2
                                        #       Child Loop BB2_415 Depth 3
                                        #     Child Loop BB2_206 Depth 2
                                        #     Child Loop BB2_430 Depth 2
                                        #     Child Loop BB2_14 Depth 2
	movzbl	-105(%rbp), %eax
	cmpl	$143, %eax
	movb	$1, %al
	je	.LBB2_7
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_4
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	movb	$1, %al
	je	.LBB2_7
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_5
# BB#6:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB2_7
	.align	16, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	testb	%al, %al
	je	.LBB2_191
# BB#8:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_35
# BB#9:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.14, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_10
.LBB2_35:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$114, %eax
	je	.LBB2_37
# BB#36:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$115, %eax
	jne	.LBB2_39
.LBB2_37:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %edi
	movq	-104(%rbp), %rsi
	callq	ReadPrependDef
	movq	-120(%rbp), %rax
	jmp	.LBB2_28
.LBB2_39:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$116, %eax
	je	.LBB2_41
# BB#40:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$117, %eax
	jne	.LBB2_42
.LBB2_41:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %edi
	movq	-104(%rbp), %rsi
	callq	ReadDatabaseDef
	movq	-120(%rbp), %rax
	jmp	.LBB2_28
.LBB2_10:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_11
# BB#12:                                #   in Loop: Header=BB2_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_13
.LBB2_11:                               #   in Loop: Header=BB2_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_13:                               #   in Loop: Header=BB2_1 Depth=1
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
	movq	%rax, -64(%rbp)
	jmp	.LBB2_14
	.align	16, 0x90
.LBB2_25:                               #   in Loop: Header=BB2_14 Depth=2
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
.LBB2_14:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	LexGetToken
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$11, %ecx
	je	.LBB2_16
# BB#15:                                #   in Loop: Header=BB2_14 Depth=2
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	sete	%al
.LBB2_16:                               #   in Loop: Header=BB2_14 Depth=2
	testb	%al, %al
	je	.LBB2_26
# BB#17:                                #   in Loop: Header=BB2_14 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_18
# BB#19:                                #   in Loop: Header=BB2_14 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_20
	.align	16, 0x90
.LBB2_18:                               #   in Loop: Header=BB2_14 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_20:                               #   in Loop: Header=BB2_14 Depth=2
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
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_23
# BB#21:                                #   in Loop: Header=BB2_14 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB2_23
# BB#22:                                #   in Loop: Header=BB2_14 Depth=2
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
.LBB2_23:                               #   in Loop: Header=BB2_14 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_14
# BB#24:                                #   in Loop: Header=BB2_14 Depth=2
	cmpq	$0, zz_res(%rip)
	jne	.LBB2_25
	jmp	.LBB2_14
.LBB2_26:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB2_33
# BB#27:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$4, %esi
	movl	$.L.str.48, %edx
	movl	$2, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-56(%rbp), %rax
	.align	16, 0x90
.LBB2_28:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_30
# BB#29:                                #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_31
.LBB2_30:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_32
	.align	16, 0x90
.LBB2_31:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_32:                               #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_34
.LBB2_33:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	Parse
	movq	%rax, -72(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rax, %rsi
	callq	LanguageDefine
	jmp	.LBB2_34
.LBB2_42:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_44
# BB#43:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_54
.LBB2_44:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_46
# BB#45:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_54
.LBB2_46:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_48
# BB#47:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_54
.LBB2_48:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_50
# BB#49:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_54
.LBB2_50:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_52
# BB#51:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.17, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_54
.LBB2_52:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_191
# BB#53:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.18, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_191
.LBB2_54:                               #   in Loop: Header=BB2_1 Depth=1
	callq	BodyParNotAllowed
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_56
# BB#55:                                #   in Loop: Header=BB2_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_59
.LBB2_56:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_57
# BB#58:                                #   in Loop: Header=BB2_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_59
.LBB2_57:                               #   in Loop: Header=BB2_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_59:                               #   in Loop: Header=BB2_1 Depth=1
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
	movq	%rax, -152(%rbp)
	movl	$0, -192(%rbp)
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_100
# BB#60:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_61
.LBB2_100:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_139
# BB#101:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.17, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_139
	jmp	.LBB2_102
	.align	16, 0x90
.LBB2_99:                               #   in Loop: Header=BB2_61 Depth=2
	movq	-120(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$27, %esi
	movl	$.L.str.20, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_61:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_66 Depth 3
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_63
# BB#62:                                #   in Loop: Header=BB2_61 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_64
.LBB2_63:                               #   in Loop: Header=BB2_61 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_65
	.align	16, 0x90
.LBB2_64:                               #   in Loop: Header=BB2_61 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_65:                               #   in Loop: Header=BB2_61 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_66
.LBB2_97:                               #   in Loop: Header=BB2_66 Depth=3
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
.LBB2_66:                               #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	callq	LexGetToken
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$2, %ecx
	je	.LBB2_82
# BB#67:                                #   in Loop: Header=BB2_66 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_68
# BB#69:                                #   in Loop: Header=BB2_66 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_72
# BB#70:                                #   in Loop: Header=BB2_66 Depth=3
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.18, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_71
.LBB2_72:                               #   in Loop: Header=BB2_66 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_75
# BB#73:                                #   in Loop: Header=BB2_66 Depth=3
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_74
.LBB2_75:                               #   in Loop: Header=BB2_66 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_78
# BB#76:                                #   in Loop: Header=BB2_66 Depth=3
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_77
.LBB2_78:                               #   in Loop: Header=BB2_66 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_79
# BB#80:                                #   in Loop: Header=BB2_66 Depth=3
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB2_81
	.align	16, 0x90
.LBB2_68:                               #   in Loop: Header=BB2_66 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_82
.LBB2_79:                               #   in Loop: Header=BB2_66 Depth=3
	xorl	%eax, %eax
.LBB2_81:                               #   in Loop: Header=BB2_66 Depth=3
	xorb	$1, %al
	jmp	.LBB2_82
.LBB2_71:                               #   in Loop: Header=BB2_66 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_82
.LBB2_74:                               #   in Loop: Header=BB2_66 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_82
.LBB2_77:                               #   in Loop: Header=BB2_66 Depth=3
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_82:                               #   in Loop: Header=BB2_66 Depth=3
	testb	%al, %al
	je	.LBB2_139
# BB#83:                                #   in Loop: Header=BB2_66 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB2_99
# BB#84:                                #   in Loop: Header=BB2_66 Depth=3
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	jne	.LBB2_98
# BB#85:                                #   in Loop: Header=BB2_66 Depth=3
	movq	-120(%rbp), %rax
	movq	80(%rax), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	PushScope
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB2_87
# BB#86:                                #   in Loop: Header=BB2_66 Depth=3
	movl	$1, -192(%rbp)
.LBB2_87:                               #   in Loop: Header=BB2_66 Depth=3
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_89
# BB#88:                                #   in Loop: Header=BB2_66 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_92
.LBB2_89:                               #   in Loop: Header=BB2_66 Depth=3
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_90
# BB#91:                                #   in Loop: Header=BB2_66 Depth=3
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_92
.LBB2_90:                               #   in Loop: Header=BB2_66 Depth=3
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_92:                               #   in Loop: Header=BB2_66 Depth=3
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
	je	.LBB2_95
# BB#93:                                #   in Loop: Header=BB2_66 Depth=3
	cmpq	$0, zz_res(%rip)
	je	.LBB2_95
# BB#94:                                #   in Loop: Header=BB2_66 Depth=3
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
.LBB2_95:                               #   in Loop: Header=BB2_66 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_66
# BB#96:                                #   in Loop: Header=BB2_66 Depth=3
	cmpq	$0, zz_res(%rip)
	jne	.LBB2_97
	jmp	.LBB2_66
	.align	16, 0x90
.LBB2_98:                               #   in Loop: Header=BB2_61 Depth=2
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$26, %esi
	movl	$.L.str.19, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_61
	.align	16, 0x90
.LBB2_137:                              #   in Loop: Header=BB2_102 Depth=2
	xorl	%eax, %eax
	callq	Error
.LBB2_102:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_107 Depth 3
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_104
# BB#103:                               #   in Loop: Header=BB2_102 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_105
.LBB2_104:                              #   in Loop: Header=BB2_102 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_106
	.align	16, 0x90
.LBB2_105:                              #   in Loop: Header=BB2_102 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_106:                              #   in Loop: Header=BB2_102 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_107
	.align	16, 0x90
.LBB2_123:                              #   in Loop: Header=BB2_107 Depth=3
	movq	-120(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movq	$.L.str.13, (%rsp)
	movl	$5, %edi
	movl	$48, %esi
	movl	$.L.str.21, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB2_107:                              #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	callq	LexGetToken
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$2, %ecx
	je	.LBB2_120
# BB#108:                               #   in Loop: Header=BB2_107 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_109
# BB#110:                               #   in Loop: Header=BB2_107 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_113
# BB#111:                               #   in Loop: Header=BB2_107 Depth=3
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.18, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_112
.LBB2_113:                              #   in Loop: Header=BB2_107 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_116
# BB#114:                               #   in Loop: Header=BB2_107 Depth=3
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_115
.LBB2_116:                              #   in Loop: Header=BB2_107 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_117
# BB#118:                               #   in Loop: Header=BB2_107 Depth=3
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB2_119
	.align	16, 0x90
.LBB2_109:                              #   in Loop: Header=BB2_107 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_120
.LBB2_117:                              #   in Loop: Header=BB2_107 Depth=3
	xorl	%eax, %eax
.LBB2_119:                              #   in Loop: Header=BB2_107 Depth=3
	xorb	$1, %al
	jmp	.LBB2_120
.LBB2_112:                              #   in Loop: Header=BB2_107 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_120
.LBB2_115:                              #   in Loop: Header=BB2_107 Depth=3
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_120:                              #   in Loop: Header=BB2_107 Depth=3
	testb	%al, %al
	je	.LBB2_139
# BB#121:                               #   in Loop: Header=BB2_107 Depth=3
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB2_138
# BB#122:                               #   in Loop: Header=BB2_107 Depth=3
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	$0, 96(%rax)
	jne	.LBB2_123
# BB#124:                               #   in Loop: Header=BB2_107 Depth=3
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	jne	.LBB2_136
# BB#125:                               #   in Loop: Header=BB2_107 Depth=3
	movq	-120(%rbp), %rax
	movq	80(%rax), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	PushScope
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -184(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_127
# BB#126:                               #   in Loop: Header=BB2_107 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_130
.LBB2_127:                              #   in Loop: Header=BB2_107 Depth=3
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_128
# BB#129:                               #   in Loop: Header=BB2_107 Depth=3
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_130
.LBB2_128:                              #   in Loop: Header=BB2_107 Depth=3
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_130:                              #   in Loop: Header=BB2_107 Depth=3
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
	je	.LBB2_133
# BB#131:                               #   in Loop: Header=BB2_107 Depth=3
	cmpq	$0, zz_res(%rip)
	je	.LBB2_133
# BB#132:                               #   in Loop: Header=BB2_107 Depth=3
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
.LBB2_133:                              #   in Loop: Header=BB2_107 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_107
# BB#134:                               #   in Loop: Header=BB2_107 Depth=3
	cmpq	$0, zz_res(%rip)
	je	.LBB2_107
# BB#135:                               #   in Loop: Header=BB2_107 Depth=3
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
	jmp	.LBB2_107
	.align	16, 0x90
.LBB2_138:                              #   in Loop: Header=BB2_102 Depth=2
	movq	-120(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$29, %esi
	movl	$.L.str.23, %edx
	movl	$2, %ecx
	jmp	.LBB2_137
.LBB2_136:                              #   in Loop: Header=BB2_102 Depth=2
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$28, %esi
	movl	$.L.str.22, %edx
	movl	$2, %ecx
	movl	$.L.str.17, %r9d
	jmp	.LBB2_137
.LBB2_139:                              #   in Loop: Header=BB2_1 Depth=1
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_141
# BB#140:                               #   in Loop: Header=BB2_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_144
.LBB2_141:                              #   in Loop: Header=BB2_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_142
# BB#143:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_144
.LBB2_142:                              #   in Loop: Header=BB2_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_144:                              #   in Loop: Header=BB2_1 Depth=1
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
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_180
# BB#145:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.18, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_180
# BB#146:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_148
# BB#147:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_149
.LBB2_148:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_150
.LBB2_149:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_150:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	SuppressScope
	jmp	.LBB2_151
	.align	16, 0x90
.LBB2_178:                              #   in Loop: Header=BB2_151 Depth=2
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
.LBB2_151:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	LexGetToken
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_154
# BB#152:                               #   in Loop: Header=BB2_151 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_153
.LBB2_154:                              #   in Loop: Header=BB2_151 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_157
# BB#155:                               #   in Loop: Header=BB2_151 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_156
.LBB2_157:                              #   in Loop: Header=BB2_151 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_160
# BB#158:                               #   in Loop: Header=BB2_151 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_159
.LBB2_160:                              #   in Loop: Header=BB2_151 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_163
# BB#161:                               #   in Loop: Header=BB2_151 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_162
.LBB2_163:                              #   in Loop: Header=BB2_151 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_164
# BB#165:                               #   in Loop: Header=BB2_151 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.17, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB2_166
	.align	16, 0x90
.LBB2_153:                              #   in Loop: Header=BB2_151 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_167
	.align	16, 0x90
.LBB2_164:                              #   in Loop: Header=BB2_151 Depth=2
	xorl	%eax, %eax
.LBB2_166:                              #   in Loop: Header=BB2_151 Depth=2
	xorb	$1, %al
	jmp	.LBB2_167
.LBB2_156:                              #   in Loop: Header=BB2_151 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_167
.LBB2_159:                              #   in Loop: Header=BB2_151 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_167
.LBB2_162:                              #   in Loop: Header=BB2_151 Depth=2
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_167:                              #   in Loop: Header=BB2_151 Depth=2
	testb	%al, %al
	je	.LBB2_179
# BB#168:                               #   in Loop: Header=BB2_151 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_170
# BB#169:                               #   in Loop: Header=BB2_151 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_173
	.align	16, 0x90
.LBB2_170:                              #   in Loop: Header=BB2_151 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_171
# BB#172:                               #   in Loop: Header=BB2_151 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_173
.LBB2_171:                              #   in Loop: Header=BB2_151 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_173:                              #   in Loop: Header=BB2_151 Depth=2
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
	je	.LBB2_176
# BB#174:                               #   in Loop: Header=BB2_151 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB2_176
# BB#175:                               #   in Loop: Header=BB2_151 Depth=2
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
.LBB2_176:                              #   in Loop: Header=BB2_151 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_151
# BB#177:                               #   in Loop: Header=BB2_151 Depth=2
	cmpq	$0, zz_res(%rip)
	jne	.LBB2_178
	jmp	.LBB2_151
.LBB2_179:                              #   in Loop: Header=BB2_1 Depth=1
	callq	UnSuppressScope
.LBB2_180:                              #   in Loop: Header=BB2_1 Depth=1
	movzbl	-105(%rbp), %eax
	cmpl	$143, %eax
	jne	.LBB2_186
# BB#181:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_183
# BB#182:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_186
.LBB2_183:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_185
# BB#184:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_185
.LBB2_186:                              #   in Loop: Header=BB2_1 Depth=1
	movzbl	-105(%rbp), %eax
	cmpl	$145, %eax
	jne	.LBB2_192
# BB#187:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_189
# BB#188:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_189
.LBB2_192:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_229
# BB#193:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_194
.LBB2_229:                              #   in Loop: Header=BB2_1 Depth=1
	callq	SuppressScope
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_231
# BB#230:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_232
.LBB2_231:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_233
.LBB2_232:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_233:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
	movzbl	-105(%rbp), %eax
	cmpl	$145, %eax
	jne	.LBB2_241
# BB#234:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_241
# BB#235:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.27, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_236
.LBB2_241:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -188(%rbp)
.LBB2_242:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_245
# BB#243:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_244
.LBB2_245:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movq	-184(%rbp), %rax
	movzbl	-105(%rbp), %esi
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, (%rsp)
	movl	$100, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	InsertSym
	movq	%rax, -128(%rbp)
	movq	-184(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB2_247
# BB#246:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$1, %ecx
	movb	%cl, 43(%rax)
.LBB2_247:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -192(%rbp)
	je	.LBB2_249
# BB#248:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$64, %ecx
	movb	%cl, 43(%rax)
.LBB2_249:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -188(%rbp)
	je	.LBB2_251
# BB#250:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-104(%rbp), %rax
	incw	122(%rax)
	movq	-128(%rbp), %rax
	orb	$64, 126(%rax)
	jmp	.LBB2_251
	.align	16, 0x90
.LBB2_296:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rsi
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	callq	InsertAlternativeName
.LBB2_251:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_253
# BB#252:                               #   in Loop: Header=BB2_251 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_254
.LBB2_253:                              #   in Loop: Header=BB2_251 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_255
	.align	16, 0x90
.LBB2_254:                              #   in Loop: Header=BB2_251 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_255:                              #   in Loop: Header=BB2_251 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_258
# BB#256:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_257
.LBB2_258:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_261
# BB#259:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_260
.LBB2_261:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_264
# BB#262:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_263
.LBB2_264:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_267
# BB#265:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.29, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_266
.LBB2_267:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_270
# BB#268:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.30, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_269
.LBB2_270:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_273
# BB#271:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.31, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_272
.LBB2_273:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_276
# BB#274:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.32, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_275
.LBB2_276:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_279
# BB#277:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.33, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_278
.LBB2_279:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_282
# BB#280:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.34, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_281
.LBB2_282:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_285
# BB#283:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.35, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_284
.LBB2_285:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_288
# BB#286:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.36, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_287
.LBB2_288:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_291
# BB#289:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.7, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_290
.LBB2_291:                              #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_292
# BB#293:                               #   in Loop: Header=BB2_251 Depth=2
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.37, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB2_294
	.align	16, 0x90
.LBB2_257:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_295
.LBB2_260:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_295
.LBB2_263:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_295
.LBB2_266:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_295
.LBB2_269:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_295
.LBB2_272:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_295
.LBB2_275:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_295
.LBB2_278:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_295
.LBB2_292:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
.LBB2_294:                              #   in Loop: Header=BB2_251 Depth=2
	xorb	$1, %al
	jmp	.LBB2_295
.LBB2_281:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_295
.LBB2_284:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_295
.LBB2_287:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_295
.LBB2_290:                              #   in Loop: Header=BB2_251 Depth=2
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_295:                              #   in Loop: Header=BB2_251 Depth=2
	testb	%al, %al
	jne	.LBB2_296
# BB#297:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_308
# BB#298:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.29, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_308
# BB#299:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$128, %edx
	movw	%dx, 41(%rax)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_301
# BB#300:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_302
.LBB2_301:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_303
.LBB2_194:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-144(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_196
# BB#195:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$32, %esi
	movl	$.L.str.26, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_196:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%r14, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	%rcx, -72(%rbp)
	callq	SuppressScope
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_198
# BB#197:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_199
.LBB2_198:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_200
.LBB2_236:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$1, -188(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_238
# BB#237:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_239
.LBB2_238:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_240
.LBB2_199:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_200:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_203
# BB#201:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_202
.LBB2_203:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, (%rsp)
	movl	$142, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	callq	InsertSym
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB2_205
# BB#204:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-88(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$1, %ecx
	movb	%cl, 43(%rax)
.LBB2_205:                              #   in Loop: Header=BB2_1 Depth=1
	callq	UnSuppressScope
	jmp	.LBB2_206
	.align	16, 0x90
.LBB2_213:                              #   in Loop: Header=BB2_206 Depth=2
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	callq	InsertAlternativeName
.LBB2_206:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_208
# BB#207:                               #   in Loop: Header=BB2_206 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_209
.LBB2_208:                              #   in Loop: Header=BB2_206 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_210
	.align	16, 0x90
.LBB2_209:                              #   in Loop: Header=BB2_206 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_210:                              #   in Loop: Header=BB2_206 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$11, %ecx
	je	.LBB2_212
# BB#211:                               #   in Loop: Header=BB2_206 Depth=2
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	sete	%al
.LBB2_212:                              #   in Loop: Header=BB2_206 Depth=2
	testb	%al, %al
	jne	.LBB2_213
# BB#214:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB2_217
# BB#215:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.7, (%rsp)
	movl	$5, %edi
	movl	$25, %esi
	movl	$.L.str.50, %edx
	movl	$2, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_216
.LBB2_217:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	ReadTokenList
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_219
# BB#218:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_220
.LBB2_219:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_221
.LBB2_202:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$24, %esi
	movl	$.L.str.49, %edx
	movl	$2, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
	callq	UnSuppressScope
.LBB2_216:                              # %ReadMacro.exit
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, -48(%rbp)
	jmp	.LBB2_228
.LBB2_302:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_303:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_305
# BB#304:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.30, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_308
.LBB2_305:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_307
# BB#306:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.31, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_308
.LBB2_307:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$34, %esi
	movl	$.L.str.38, %edx
	movl	$2, %ecx
	movl	$.L.str.30, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_308:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_315
# BB#309:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.31, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_315
# BB#310:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$14680063, %edx         # imm = 0xDFFFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_312
# BB#311:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_313
.LBB2_312:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_314
.LBB2_313:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_314:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
.LBB2_315:                              #   in Loop: Header=BB2_1 Depth=1
	movq	$0, -136(%rbp)
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_327
# BB#316:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.30, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_327
# BB#317:                               #   in Loop: Header=BB2_1 Depth=1
	callq	UnSuppressScope
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_319
# BB#318:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_320
.LBB2_319:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_321
.LBB2_320:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_321:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	jne	.LBB2_322
# BB#325:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	Parse
	movq	%rax, -136(%rbp)
	callq	SuppressScope
	cmpq	$0, -120(%rbp)
	jne	.LBB2_327
# BB#326:                               #   in Loop: Header=BB2_1 Depth=1
	callq	LexGetToken
	movq	%rax, -120(%rbp)
.LBB2_327:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_346
# BB#328:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.32, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_346
# BB#329:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -196(%rbp)
	jmp	.LBB2_330
	.align	16, 0x90
.LBB2_340:                              #   in Loop: Header=BB2_330 Depth=2
	movl	-196(%rbp), %eax
	leal	(%rax,%rax,4), %eax
	movq	-120(%rbp), %rcx
	movzbl	64(%rcx), %ecx
	leal	-48(%rcx,%rax,2), %eax
	movl	%eax, -196(%rbp)
.LBB2_330:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_332
# BB#331:                               #   in Loop: Header=BB2_330 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_333
.LBB2_332:                              #   in Loop: Header=BB2_330 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_334
	.align	16, 0x90
.LBB2_333:                              #   in Loop: Header=BB2_330 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_334:                              #   in Loop: Header=BB2_330 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_335
# BB#336:                               #   in Loop: Header=BB2_330 Depth=2
	movq	-120(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$48, %eax
	jl	.LBB2_337
# BB#338:                               #   in Loop: Header=BB2_330 Depth=2
	movq	-120(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$58, %eax
	setl	%al
	jmp	.LBB2_339
	.align	16, 0x90
.LBB2_335:                              #   in Loop: Header=BB2_330 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_339
	.align	16, 0x90
.LBB2_337:                              #   in Loop: Header=BB2_330 Depth=2
	xorl	%eax, %eax
.LBB2_339:                              #   in Loop: Header=BB2_330 Depth=2
	testb	%al, %al
	jne	.LBB2_340
# BB#341:                               #   in Loop: Header=BB2_1 Depth=1
	cmpl	$9, -196(%rbp)
	jg	.LBB2_343
# BB#342:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$37, %esi
	movl	$.L.str.39, %edx
	movl	$2, %ecx
	movl	$10, %r9d
	xorl	%eax, %eax
	callq	Error
	movl	$10, -196(%rbp)
	jmp	.LBB2_345
.LBB2_343:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$101, -196(%rbp)
	jl	.LBB2_345
# BB#344:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$38, %esi
	movl	$.L.str.40, %edx
	movl	$2, %ecx
	movl	$100, %r9d
	xorl	%eax, %eax
	callq	Error
	movl	$100, -196(%rbp)
.LBB2_345:                              #   in Loop: Header=BB2_1 Depth=1
	movb	-196(%rbp), %al
	movq	-128(%rbp), %rcx
	movb	%al, 40(%rcx)
.LBB2_346:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_363
# BB#347:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.33, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_363
# BB#348:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_350
# BB#349:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_351
.LBB2_350:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_352
.LBB2_351:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_352:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_355
# BB#353:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.34, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_354
.LBB2_355:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_357
# BB#356:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.35, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_358
.LBB2_357:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$39, %esi
	movl	$.L.str.41, %edx
	movl	$2, %ecx
	movl	$.L.str.35, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_358
.LBB2_354:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16777199, %edx         # imm = 0xFFFFEF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
.LBB2_358:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_360
# BB#359:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_361
.LBB2_360:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_362
.LBB2_361:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_362:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
.LBB2_363:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_376
# BB#364:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.34, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_376
# BB#365:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_367
# BB#366:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_368
.LBB2_367:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_369
.LBB2_368:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_369:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_370
# BB#371:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movq	-128(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, (%rsp)
	movl	$144, %esi
	movl	$100, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	InsertSym
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_373
# BB#372:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_374
.LBB2_373:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_375
.LBB2_374:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_375:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
.LBB2_376:                              #   in Loop: Header=BB2_1 Depth=1
	callq	UnSuppressScope
	movq	-128(%rbp), %rsi
	movl	$145, %edx
	movq	%r14, %rdi
	callq	ReadDefinitions
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_378
# BB#377:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.35, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_380
.LBB2_378:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_394
# BB#379:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.36, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_394
.LBB2_380:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_381
# BB#382:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.36, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB2_383
.LBB2_381:                              #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
.LBB2_383:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	41(%rcx), %edx
	movzbl	43(%rcx), %esi
	shll	$16, %esi
	orl	%edx, %esi
	shll	$8, %eax
	andl	$16776959, %esi         # imm = 0xFFFEFF
	leal	(%rax,%rsi), %eax
	shrl	$16, %esi
	movb	%sil, 43(%rcx)
	movw	%ax, 41(%rcx)
	callq	SuppressScope
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_385
# BB#384:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_386
.LBB2_385:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_387
.LBB2_386:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_387:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_388
# BB#389:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movq	-128(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, (%rsp)
	movl	$146, %esi
	movl	$100, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	InsertSym
	callq	UnSuppressScope
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_391
# BB#390:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_392
.LBB2_391:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_393
.LBB2_392:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_393:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
.LBB2_394:                              #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB2_396
# BB#395:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 16(%rsp)
	addq	$32, %rdx
	movq	%rax, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.43, %edi
	movl	$143, %esi
	movl	$100, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	InsertSym
.LBB2_396:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_404
# BB#397:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.7, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_398
.LBB2_404:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_407
# BB#405:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.37, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_406
.LBB2_407:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB2_410
# BB#408:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	je	.LBB2_410
# BB#409:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rbx
	addq	$32, %rbx
	movq	-128(%rbp), %rdi
	callq	SymName
	movq	%rax, %r9
	movl	$5, %edi
	movl	$42, %esi
	movl	$.L.str.44, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB2_410
.LBB2_398:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rsi
	addq	$32, %rsi
	movq	StartSym(%rip), %r9
	movl	$102, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$3, %r8d
	jmp	.LBB2_399
.LBB2_406:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rsi
	addq	$32, %rsi
	movq	StartSym(%rip), %r9
	movl	$104, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
.LBB2_399:                              #   in Loop: Header=BB2_1 Depth=1
	callq	NewToken
	movq	%rax, -176(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_401
# BB#400:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_402
.LBB2_401:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_403
.LBB2_402:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_403:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-176(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB2_410:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	jne	.LBB2_412
# BB#411:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 80(%rcx)
.LBB2_412:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	PushScope
	callq	BodyParAllowed
	movq	-128(%rbp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	Parse
	movq	-128(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-144(%rbp), %rax
	jmp	.LBB2_413
	.align	16, 0x90
.LBB2_419:                              #   in Loop: Header=BB2_413 Depth=2
	movq	-168(%rbp), %rbx
	leaq	32(%rbx), %r12
	addq	$64, %rbx
	movq	-128(%rbp), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movl	$5, %edi
	movl	$43, %esi
	movl	$.L.str.45, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r12, %r8
	movq	%rbx, %r9
	callq	Error
	movq	-160(%rbp), %rax
.LBB2_413:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_415 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpq	-144(%rbp), %rax
	je	.LBB2_428
# BB#414:                               #   in Loop: Header=BB2_413 Depth=2
	movq	-160(%rbp), %rax
	jmp	.LBB2_415
	.align	16, 0x90
.LBB2_416:                              #   in Loop: Header=BB2_415 Depth=3
	movq	-168(%rbp), %rax
.LBB2_415:                              #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_413 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_416
# BB#417:                               #   in Loop: Header=BB2_413 Depth=2
	movq	-168(%rbp), %rbx
	addq	$64, %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	SearchSym
	movq	%rax, -176(%rbp)
	testq	%rax, %rax
	je	.LBB2_419
# BB#418:                               #   in Loop: Header=BB2_413 Depth=2
	movq	-176(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB2_419
# BB#420:                               #   in Loop: Header=BB2_413 Depth=2
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$8, %eax
	jae	.LBB2_424
# BB#421:                               #   in Loop: Header=BB2_413 Depth=2
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	jne	.LBB2_424
# BB#422:                               #   in Loop: Header=BB2_413 Depth=2
	movq	-168(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$44, %esi
	movl	$.L.str.46, %edx
	jmp	.LBB2_423
.LBB2_424:                              #   in Loop: Header=BB2_413 Depth=2
	movq	-176(%rbp), %rax
	movzbl	43(%rax), %eax
	testb	$1, %al
	je	.LBB2_426
# BB#425:                               #   in Loop: Header=BB2_413 Depth=2
	movq	-168(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$45, %esi
	movl	$.L.str.47, %edx
.LBB2_423:                              #   in Loop: Header=BB2_413 Depth=2
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-160(%rbp), %rax
	jmp	.LBB2_413
.LBB2_426:                              #   in Loop: Header=BB2_413 Depth=2
	movq	-176(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$1, %ecx
	movb	%cl, 43(%rax)
	movq	-160(%rbp), %rax
	jmp	.LBB2_413
.LBB2_428:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-144(%rbp), %rdi
	callq	DisposeObject
	callq	PopScope
	jmp	.LBB2_429
.LBB2_239:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_240:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -120(%rbp)
	jmp	.LBB2_242
.LBB2_220:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_221:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB2_223
# BB#222:                               #   in Loop: Header=BB2_1 Depth=1
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
.LBB2_223:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-88(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_225
# BB#224:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_226
.LBB2_225:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_227
.LBB2_226:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_227:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-88(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16776191, %edx         # imm = 0xFFFBFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB2_228:                              # %ReadMacro.exit
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB2_429:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-152(%rbp), %rax
	jmp	.LBB2_430
	.align	16, 0x90
.LBB2_431:                              #   in Loop: Header=BB2_430 Depth=2
	callq	PopScope
	movq	-160(%rbp), %rax
.LBB2_430:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB2_431
# BB#432:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-152(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_434
# BB#433:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-184(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB2_435
.LBB2_434:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-152(%rbp), %rdi
	callq	DisposeObject
	movq	$0, -152(%rbp)
	jmp	.LBB2_436
.LBB2_435:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-152(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, 96(%rcx)
.LBB2_436:                              #   in Loop: Header=BB2_1 Depth=1
	callq	BodyParAllowed
	cmpq	$0, -120(%rbp)
	jne	.LBB2_1
	jmp	.LBB2_34
.LBB2_189:
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$31, %esi
	movl	$.L.str.25, %edx
	movl	$2, %ecx
	movl	$.L.str.12, %r9d
	jmp	.LBB2_190
.LBB2_185:
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.16, (%rsp)
	movl	$5, %edi
	movl	$30, %esi
	movl	$.L.str.24, %edx
	movl	$2, %ecx
	movl	$.L.str.15, %r9d
.LBB2_190:
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_191
.LBB2_244:
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$33, %esi
	movl	$.L.str.28, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	callq	UnSuppressScope
	jmp	.LBB2_191
.LBB2_388:
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$41, %esi
	movl	$.L.str.42, %edx
	movl	$2, %ecx
	movl	$.L.str.35, %r9d
	jmp	.LBB2_323
.LBB2_322:
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$36, %esi
	movl	$.L.str.38, %edx
	movl	$2, %ecx
	movl	$.L.str.7, %r9d
	jmp	.LBB2_323
.LBB2_370:
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$40, %esi
	movl	$.L.str.42, %edx
	movl	$2, %ecx
	movl	$.L.str.34, %r9d
.LBB2_323:
	xorl	%eax, %eax
	callq	Error
	callq	UnSuppressScope
.LBB2_191:
	movq	-120(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ReadDefinitions, .Lfunc_end2-ReadDefinitions
	.cfi_endproc

	.align	16, 0x90
	.type	ReadTokenList,@function
ReadTokenList:                          # @ReadTokenList
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_1
# BB#2:
	cmpq	$0, zz_res(%rip)
	jne	.LBB3_4
# BB#3:
	movq	zz_hold(%rip), %rax
	jmp	.LBB3_5
.LBB3_1:
	movq	zz_res(%rip), %rax
	jmp	.LBB3_5
.LBB3_4:
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
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_19:                               #   in Loop: Header=BB3_5 Depth=1
	movq	zz_res(%rip), %rax
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
                                        #       Child Loop BB3_67 Depth 3
                                        #         Child Loop BB3_84 Depth 4
                                        #           Child Loop BB3_86 Depth 5
                                        #         Child Loop BB3_90 Depth 4
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB3_6
	.align	16, 0x90
.LBB3_112:                              #   in Loop: Header=BB3_6 Depth=2
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_6:                                #   Parent Loop BB3_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_67 Depth 3
                                        #         Child Loop BB3_84 Depth 4
                                        #           Child Loop BB3_86 Depth 5
                                        #         Child Loop BB3_90 Depth 4
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-2, %eax
	cmpl	$115, %eax
	ja	.LBB3_111
# BB#7:                                 #   in Loop: Header=BB3_6 Depth=2
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_56:                               #   in Loop: Header=BB3_6 Depth=2
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	movq	%rdi, -48(%rbp)
	movl	$1, %esi
	xorl	%edx, %edx
	callq	PushScope
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_57
# BB#58:                                #   in Loop: Header=BB3_6 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB3_59
# BB#60:                                #   in Loop: Header=BB3_6 Depth=2
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
	jmp	.LBB3_61
	.align	16, 0x90
.LBB3_111:                              #   in Loop: Header=BB3_6 Depth=2
	movq	-40(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$5, %edi
	movl	$23, %esi
	movl	$.L.str.62, %edx
	xorl	%ecx, %ecx
	jmp	.LBB3_112
.LBB3_30:                               #   in Loop: Header=BB3_6 Depth=2
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$13, %esi
	movl	$.L.str.53, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_6
.LBB3_57:                               #   in Loop: Header=BB3_6 Depth=2
	movq	zz_res(%rip), %rax
	jmp	.LBB3_61
.LBB3_59:                               #   in Loop: Header=BB3_6 Depth=2
	movq	zz_hold(%rip), %rax
.LBB3_61:                               #   in Loop: Header=BB3_6 Depth=2
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	callq	PopScope
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB3_63
# BB#62:                                #   in Loop: Header=BB3_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	jne	.LBB3_67
	jmp	.LBB3_63
	.align	16, 0x90
.LBB3_97:                               #   in Loop: Header=BB3_67 Depth=3
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	callq	PopScope
.LBB3_67:                               #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_84 Depth 4
                                        #           Child Loop BB3_86 Depth 5
                                        #         Child Loop BB3_90 Depth 4
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB3_68
# BB#69:                                #   in Loop: Header=BB3_67 Depth=3
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	48(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB3_71
# BB#70:                                #   in Loop: Header=BB3_67 Depth=3
	xorl	%eax, %eax
	jmp	.LBB3_72
	.align	16, 0x90
.LBB3_68:                               #   in Loop: Header=BB3_67 Depth=3
	xorl	%eax, %eax
	jmp	.LBB3_72
.LBB3_71:                               #   in Loop: Header=BB3_67 Depth=3
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$145, %eax
	sete	%al
	.align	16, 0x90
.LBB3_72:                               #   in Loop: Header=BB3_67 Depth=3
	testb	%al, %al
	je	.LBB3_99
# BB#73:                                #   in Loop: Header=BB3_67 Depth=3
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_74
# BB#75:                                #   in Loop: Header=BB3_67 Depth=3
	cmpq	$0, zz_res(%rip)
	je	.LBB3_76
# BB#77:                                #   in Loop: Header=BB3_67 Depth=3
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
	jmp	.LBB3_78
	.align	16, 0x90
.LBB3_74:                               #   in Loop: Header=BB3_67 Depth=3
	movq	zz_res(%rip), %rax
	jmp	.LBB3_78
	.align	16, 0x90
.LBB3_76:                               #   in Loop: Header=BB3_67 Depth=3
	movq	zz_hold(%rip), %rax
.LBB3_78:                               #   in Loop: Header=BB3_67 Depth=3
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	jne	.LBB3_79
# BB#82:                                #   in Loop: Header=BB3_67 Depth=3
	movl	$0, -84(%rbp)
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -64(%rbp)
	testq	%rax, %rax
	je	.LBB3_89
# BB#83:                                #   in Loop: Header=BB3_67 Depth=3
	movq	-64(%rbp), %rax
	jmp	.LBB3_84
	.align	16, 0x90
.LBB3_88:                               #   in Loop: Header=BB3_84 Depth=4
	movq	-80(%rbp), %rax
	movq	80(%rax), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	PushScope
	incl	-84(%rbp)
	movq	-72(%rbp), %rax
.LBB3_84:                               #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        #       Parent Loop BB3_67 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_86 Depth 5
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB3_89
# BB#85:                                #   in Loop: Header=BB3_84 Depth=4
	movq	-72(%rbp), %rax
	jmp	.LBB3_86
	.align	16, 0x90
.LBB3_87:                               #   in Loop: Header=BB3_86 Depth=5
	movq	-80(%rbp), %rax
.LBB3_86:                               #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        #       Parent Loop BB3_67 Depth=3
                                        #         Parent Loop BB3_84 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_87
	jmp	.LBB3_88
	.align	16, 0x90
.LBB3_89:                               #   in Loop: Header=BB3_67 Depth=3
	movq	-56(%rbp), %rax
	movq	80(%rax), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	PushScope
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	ReadTokenList
	callq	PopScope
	movl	$0, -88(%rbp)
	jmp	.LBB3_90
	.align	16, 0x90
.LBB3_91:                               #   in Loop: Header=BB3_90 Depth=4
	callq	PopScope
	incl	-88(%rbp)
.LBB3_90:                               #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        #       Parent Loop BB3_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-88(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.LBB3_91
# BB#92:                                #   in Loop: Header=BB3_67 Depth=3
	movq	-48(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	PushScope
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_93
# BB#94:                                #   in Loop: Header=BB3_67 Depth=3
	cmpq	$0, zz_res(%rip)
	je	.LBB3_95
# BB#96:                                #   in Loop: Header=BB3_67 Depth=3
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
	jmp	.LBB3_97
	.align	16, 0x90
.LBB3_93:                               #   in Loop: Header=BB3_67 Depth=3
	movq	zz_res(%rip), %rax
	jmp	.LBB3_97
	.align	16, 0x90
.LBB3_95:                               #   in Loop: Header=BB3_67 Depth=3
	movq	zz_hold(%rip), %rax
	jmp	.LBB3_97
.LBB3_79:                               #   in Loop: Header=BB3_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$103, %eax
	je	.LBB3_80
# BB#98:                                #   in Loop: Header=BB3_6 Depth=2
	movq	-56(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, (%rsp)
	movl	$5, %edi
	movl	$21, %esi
	movl	$.L.str.60, %edx
	movl	$2, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_99:                               #   in Loop: Header=BB3_6 Depth=2
	movq	-48(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$8, %eax
	jae	.LBB3_6
# BB#100:                               #   in Loop: Header=BB3_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB3_102
# BB#101:                               #   in Loop: Header=BB3_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	je	.LBB3_102
# BB#108:                               #   in Loop: Header=BB3_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$103, %eax
	je	.LBB3_6
# BB#109:                               #   in Loop: Header=BB3_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$105, %eax
	je	.LBB3_6
# BB#110:                               #   in Loop: Header=BB3_6 Depth=2
	movq	-40(%rbp), %rbx
	addq	$32, %rbx
	movq	-48(%rbp), %rdi
	callq	SymName
	movq	%rax, %r9
	movq	$.L.str.7, (%rsp)
	movl	$5, %edi
	movl	$22, %esi
	movl	$.L.str.61, %edx
	movl	$2, %ecx
	jmp	.LBB3_112
	.align	16, 0x90
.LBB3_18:                               #   in Loop: Header=BB3_5 Depth=1
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_19
# BB#20:                                #   in Loop: Header=BB3_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB3_4
# BB#21:                                #   in Loop: Header=BB3_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB3_5
.LBB3_22:                               #   in Loop: Header=BB3_5 Depth=1
	movq	-40(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movl	$5, %edi
	movl	$12, %esi
	movl	$.L.str.52, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_23
# BB#24:                                #   in Loop: Header=BB3_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB3_4
# BB#25:                                #   in Loop: Header=BB3_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB3_5
.LBB3_23:                               #   in Loop: Header=BB3_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB3_5
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$64, %eax
	jne	.LBB3_10
# BB#9:                                 #   in Loop: Header=BB3_5 Depth=1
	movq	-40(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$11, %esi
	movl	$.L.str.51, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_10:                               #   in Loop: Header=BB3_5 Depth=1
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_11
# BB#12:                                #   in Loop: Header=BB3_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB3_4
# BB#13:                                #   in Loop: Header=BB3_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB3_5
.LBB3_14:                               #   in Loop: Header=BB3_5 Depth=1
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_15
# BB#16:                                #   in Loop: Header=BB3_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB3_4
# BB#17:                                #   in Loop: Header=BB3_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB3_5
.LBB3_26:                               #   in Loop: Header=BB3_5 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	ReadTokenList
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_27
# BB#28:                                #   in Loop: Header=BB3_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB3_4
# BB#29:                                #   in Loop: Header=BB3_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB3_5
.LBB3_31:                               #   in Loop: Header=BB3_5 Depth=1
	movq	-40(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movl	$5, %edi
	movl	$14, %esi
	movl	$.L.str.54, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_32
# BB#33:                                #   in Loop: Header=BB3_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB3_4
# BB#34:                                #   in Loop: Header=BB3_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB3_5
.LBB3_63:                               #   in Loop: Header=BB3_5 Depth=1
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_64
# BB#65:                                #   in Loop: Header=BB3_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB3_4
# BB#66:                                #   in Loop: Header=BB3_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB3_5
.LBB3_11:                               #   in Loop: Header=BB3_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB3_5
.LBB3_15:                               #   in Loop: Header=BB3_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB3_5
.LBB3_27:                               #   in Loop: Header=BB3_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB3_5
.LBB3_32:                               #   in Loop: Header=BB3_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB3_5
.LBB3_64:                               #   in Loop: Header=BB3_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB3_5
.LBB3_102:                              #   in Loop: Header=BB3_5 Depth=1
	movq	-48(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	PushScope
	movq	-48(%rbp), %rdi
	movl	$146, %esi
	callq	ChildSym
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	PushScope
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	jne	.LBB3_104
# BB#103:                               #   in Loop: Header=BB3_5 Depth=1
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 80(%rcx)
.LBB3_104:                              #   in Loop: Header=BB3_5 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	ReadTokenList
	callq	PopScope
	callq	PopScope
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_105
# BB#106:                               #   in Loop: Header=BB3_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB3_4
# BB#107:                               #   in Loop: Header=BB3_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB3_5
.LBB3_105:                              #   in Loop: Header=BB3_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB3_5
.LBB3_35:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB3_55
# BB#36:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$15, %esi
.LBB3_37:
	movl	$.L.str.55, %edx
	movl	$2, %ecx
	movl	$.L.str.56, %r9d
	xorl	%eax, %eax
	jmp	.LBB3_54
.LBB3_38:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	je	.LBB3_42
# BB#39:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$16, %esi
	movl	$.L.str.55, %edx
	jmp	.LBB3_40
.LBB3_42:
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_43
# BB#44:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_45
# BB#46:
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
	jmp	.LBB3_47
.LBB3_43:
	movq	zz_res(%rip), %rax
	jmp	.LBB3_47
.LBB3_45:
	movq	zz_hold(%rip), %rax
.LBB3_47:
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB3_52
# BB#48:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB3_51
# BB#49:
	movq	-40(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$64, %eax
	jne	.LBB3_51
# BB#50:
	movq	-40(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$17, %esi
	movl	$.L.str.51, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	jmp	.LBB3_54
.LBB3_52:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	80(%rcx), %rax
	je	.LBB3_55
# BB#53:
	movq	-40(%rbp), %rbx
	addq	$32, %rbx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, %r14
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, 8(%rsp)
	movq	$.L.str.57, 16(%rsp)
	movq	$.L.str.37, (%rsp)
	movl	$5, %edi
	movl	$19, %esi
	movl	$.L.str.59, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	jmp	.LBB3_54
.LBB3_51:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$18, %esi
	movl	$.L.str.58, %edx
.LBB3_40:
	movl	$2, %ecx
	movl	$.L.str.57, %r9d
	xorl	%eax, %eax
.LBB3_54:
	callq	Error
.LBB3_55:
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB3_80:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB3_55
# BB#81:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$20, %esi
	jmp	.LBB3_37
.Lfunc_end3:
	.size	ReadTokenList, .Lfunc_end3-ReadTokenList
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_56
	.quad	.LBB3_111
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_8
	.quad	.LBB3_14
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_111
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_111
	.quad	.LBB3_22
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_22
	.quad	.LBB3_22
	.quad	.LBB3_111
	.quad	.LBB3_22
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_18
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_26
	.quad	.LBB3_35
	.quad	.LBB3_31
	.quad	.LBB3_38
	.quad	.LBB3_22
	.quad	.LBB3_18
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_30
	.quad	.LBB3_111
	.quad	.LBB3_111
	.quad	.LBB3_22
	.quad	.LBB3_22
	.quad	.LBB3_22
	.quad	.LBB3_22

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"left brace expected here in %s declaration"
	.size	.L.str, 43

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"@PrependGraphic"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name of %s file expected here"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.zero	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"word is too long"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"unknown or misspelt symbol %s"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"symbol name or %s expected here (%s declaration)"
	.size	.L.str.6, 49

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"{"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"@Database"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"symbol names missing in %s declaration"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	".ld"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s suffix should be omitted in %s clause"
	.size	.L.str.11, 41

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"named"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"import"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"langdef"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"def"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"macro"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"extend"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"export"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"import name expected here"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"import %s not in scope"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s has %s clause, so cannot be extended"
	.size	.L.str.21, 40

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s symbol name expected here"
	.size	.L.str.22, 29

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"extend symbol %s not in scope"
	.size	.L.str.23, 30

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"keyword %s or %s expected here"
	.size	.L.str.24, 31

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"keyword %s expected here"
	.size	.L.str.25, 25

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ignoring export list of macro"
	.size	.L.str.26, 30

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"compulsory"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"symbol name expected here"
	.size	.L.str.28, 26

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"force"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"into"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"horizontally"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"precedence"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"associativity"
	.size	.L.str.33, 14

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"left"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"right"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"body"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"@Begin"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%s expected here"
	.size	.L.str.38, 17

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"precedence is too low (%d substituted)"
	.size	.L.str.39, 39

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"precedence is too high (%d substituted)"
	.size	.L.str.40, 40

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"associativity altered to %s"
	.size	.L.str.41, 28

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"cannot find %s parameter name"
	.size	.L.str.42, 30

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"@Target"
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"opening left brace or @Begin of %s expected"
	.size	.L.str.44, 44

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"exported symbol %s is not defined in %s"
	.size	.L.str.45, 40

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"body parameter %s may not be exported"
	.size	.L.str.46, 38

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"symbol %s exported twice"
	.size	.L.str.47, 25

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"expected opening %s of langdef here"
	.size	.L.str.48, 36

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%s ignored (name is missing)"
	.size	.L.str.49, 29

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%s ignored (opening %s is missing)"
	.size	.L.str.50, 35

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"symbol %s unknown or misspelt"
	.size	.L.str.51, 30

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"symbol %s not allowed in macro"
	.size	.L.str.52, 31

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"unexpected end of input"
	.size	.L.str.53, 24

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"%s not expected here"
	.size	.L.str.54, 21

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"unmatched %s in macro"
	.size	.L.str.55, 22

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"}"
	.size	.L.str.56, 2

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"@End"
	.size	.L.str.57, 5

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"symbol name expected after %s"
	.size	.L.str.58, 30

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"%s %s does not match %s %s"
	.size	.L.str.59, 27

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"%s must follow named parameter %s"
	.size	.L.str.60, 34

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"right parameter of %s must begin with %s"
	.size	.L.str.61, 41

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"ReadTokenList: %s"
	.size	.L.str.62, 18


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
