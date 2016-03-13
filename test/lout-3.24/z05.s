	.text
	.file	"z05.opt"
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
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
.Ltmp10:
	.cfi_offset %rbx, -48
.Ltmp11:
	.cfi_offset %r12, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movb	%dl, -49(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movb	$1, %r12b
	leaq	-64(%rbp), %r14
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_385:                              #   in Loop: Header=BB2_1 Depth=1
	callq	LexGetToken
	movq	%rax, -64(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_82 Depth 2
                                        #       Child Loop BB2_87 Depth 3
                                        #     Child Loop BB2_41 Depth 2
                                        #       Child Loop BB2_46 Depth 3
                                        #     Child Loop BB2_131 Depth 2
                                        #     Child Loop BB2_199 Depth 2
                                        #     Child Loop BB2_278 Depth 2
                                        #     Child Loop BB2_361 Depth 2
                                        #       Child Loop BB2_363 Depth 3
                                        #     Child Loop BB2_378 Depth 2
	movzbl	-49(%rbp), %eax
	cmpl	$143, %eax
	movb	$1, %al
	je	.LBB2_7
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_4
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	movb	$1, %al
	je	.LBB2_7
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_5
# BB#6:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
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
	je	.LBB2_171
# BB#8:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_11
# BB#9:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.14, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_10
.LBB2_11:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$114, %eax
	je	.LBB2_13
# BB#12:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$115, %eax
	jne	.LBB2_19
.LBB2_13:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %edi
	movq	-48(%rbp), %rsi
	callq	ReadPrependDef
	jmp	.LBB2_14
.LBB2_19:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$116, %eax
	je	.LBB2_21
# BB#20:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$117, %eax
	jne	.LBB2_22
.LBB2_21:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %edi
	movq	-48(%rbp), %rsi
	callq	ReadDatabaseDef
	.align	16, 0x90
.LBB2_14:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_16
# BB#15:                                #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_17
.LBB2_16:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_18
.LBB2_17:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_18:                               #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_385
.LBB2_10:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	ReadLangDef
	jmp	.LBB2_385
.LBB2_22:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_24
# BB#23:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_34
.LBB2_24:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_26
# BB#25:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_34
.LBB2_26:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_28
# BB#27:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_34
.LBB2_28:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_30
# BB#29:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_34
.LBB2_30:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_32
# BB#31:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.17, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_34
.LBB2_32:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_171
# BB#33:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.18, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_171
.LBB2_34:                               #   in Loop: Header=BB2_1 Depth=1
	callq	BodyParNotAllowed
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r12b, %r12b
	jne	.LBB2_36
# BB#35:                                #   in Loop: Header=BB2_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_39
.LBB2_36:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_37
# BB#38:                                #   in Loop: Header=BB2_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_39
.LBB2_37:                               #   in Loop: Header=BB2_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_39:                               #   in Loop: Header=BB2_1 Depth=1
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
	movq	%rax, -96(%rbp)
	movl	$0, -136(%rbp)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_80
# BB#40:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_41
.LBB2_80:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_119
# BB#81:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.17, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_119
	jmp	.LBB2_82
	.align	16, 0x90
.LBB2_79:                               #   in Loop: Header=BB2_41 Depth=2
	movq	-64(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$27, %esi
	movl	$.L.str.20, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_41:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_46 Depth 3
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_43
# BB#42:                                #   in Loop: Header=BB2_41 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_44
.LBB2_43:                               #   in Loop: Header=BB2_41 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_45
	.align	16, 0x90
.LBB2_44:                               #   in Loop: Header=BB2_41 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_45:                               #   in Loop: Header=BB2_41 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_46
.LBB2_77:                               #   in Loop: Header=BB2_46 Depth=3
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
.LBB2_46:                               #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	callq	LexGetToken
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$2, %ecx
	je	.LBB2_62
# BB#47:                                #   in Loop: Header=BB2_46 Depth=3
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_48
# BB#49:                                #   in Loop: Header=BB2_46 Depth=3
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_52
# BB#50:                                #   in Loop: Header=BB2_46 Depth=3
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.18, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_51
.LBB2_52:                               #   in Loop: Header=BB2_46 Depth=3
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_55
# BB#53:                                #   in Loop: Header=BB2_46 Depth=3
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_54
.LBB2_55:                               #   in Loop: Header=BB2_46 Depth=3
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_58
# BB#56:                                #   in Loop: Header=BB2_46 Depth=3
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_57
.LBB2_58:                               #   in Loop: Header=BB2_46 Depth=3
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_59
# BB#60:                                #   in Loop: Header=BB2_46 Depth=3
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB2_61
	.align	16, 0x90
.LBB2_48:                               #   in Loop: Header=BB2_46 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_62
.LBB2_59:                               #   in Loop: Header=BB2_46 Depth=3
	xorl	%eax, %eax
.LBB2_61:                               #   in Loop: Header=BB2_46 Depth=3
	xorb	$1, %al
	jmp	.LBB2_62
.LBB2_51:                               #   in Loop: Header=BB2_46 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_62
.LBB2_54:                               #   in Loop: Header=BB2_46 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_62
.LBB2_57:                               #   in Loop: Header=BB2_46 Depth=3
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_62:                               #   in Loop: Header=BB2_46 Depth=3
	testb	%al, %al
	je	.LBB2_119
# BB#63:                                #   in Loop: Header=BB2_46 Depth=3
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB2_79
# BB#64:                                #   in Loop: Header=BB2_46 Depth=3
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	jne	.LBB2_78
# BB#65:                                #   in Loop: Header=BB2_46 Depth=3
	movq	-64(%rbp), %rax
	movq	80(%rax), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	PushScope
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB2_67
# BB#66:                                #   in Loop: Header=BB2_46 Depth=3
	movl	$1, -136(%rbp)
.LBB2_67:                               #   in Loop: Header=BB2_46 Depth=3
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r12b, %r12b
	jne	.LBB2_69
# BB#68:                                #   in Loop: Header=BB2_46 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_72
.LBB2_69:                               #   in Loop: Header=BB2_46 Depth=3
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_70
# BB#71:                                #   in Loop: Header=BB2_46 Depth=3
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_72
.LBB2_70:                               #   in Loop: Header=BB2_46 Depth=3
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_72:                               #   in Loop: Header=BB2_46 Depth=3
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
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_75
# BB#73:                                #   in Loop: Header=BB2_46 Depth=3
	cmpq	$0, zz_res(%rip)
	je	.LBB2_75
# BB#74:                                #   in Loop: Header=BB2_46 Depth=3
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
.LBB2_75:                               #   in Loop: Header=BB2_46 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_46
# BB#76:                                #   in Loop: Header=BB2_46 Depth=3
	cmpq	$0, zz_res(%rip)
	jne	.LBB2_77
	jmp	.LBB2_46
	.align	16, 0x90
.LBB2_78:                               #   in Loop: Header=BB2_41 Depth=2
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$26, %esi
	movl	$.L.str.19, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_41
	.align	16, 0x90
.LBB2_117:                              #   in Loop: Header=BB2_82 Depth=2
	xorl	%eax, %eax
	callq	Error
.LBB2_82:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_87 Depth 3
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_84
# BB#83:                                #   in Loop: Header=BB2_82 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_85
.LBB2_84:                               #   in Loop: Header=BB2_82 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_86
	.align	16, 0x90
.LBB2_85:                               #   in Loop: Header=BB2_82 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_86:                               #   in Loop: Header=BB2_82 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_87
	.align	16, 0x90
.LBB2_103:                              #   in Loop: Header=BB2_87 Depth=3
	movq	-64(%rbp), %rbx
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
.LBB2_87:                               #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	callq	LexGetToken
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$2, %ecx
	je	.LBB2_100
# BB#88:                                #   in Loop: Header=BB2_87 Depth=3
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_89
# BB#90:                                #   in Loop: Header=BB2_87 Depth=3
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_93
# BB#91:                                #   in Loop: Header=BB2_87 Depth=3
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.18, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_92
.LBB2_93:                               #   in Loop: Header=BB2_87 Depth=3
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_96
# BB#94:                                #   in Loop: Header=BB2_87 Depth=3
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_95
.LBB2_96:                               #   in Loop: Header=BB2_87 Depth=3
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_97
# BB#98:                                #   in Loop: Header=BB2_87 Depth=3
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB2_99
	.align	16, 0x90
.LBB2_89:                               #   in Loop: Header=BB2_87 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_100
.LBB2_97:                               #   in Loop: Header=BB2_87 Depth=3
	xorl	%eax, %eax
.LBB2_99:                               #   in Loop: Header=BB2_87 Depth=3
	xorb	$1, %al
	jmp	.LBB2_100
.LBB2_92:                               #   in Loop: Header=BB2_87 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_100
.LBB2_95:                               #   in Loop: Header=BB2_87 Depth=3
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_100:                              #   in Loop: Header=BB2_87 Depth=3
	testb	%al, %al
	je	.LBB2_119
# BB#101:                               #   in Loop: Header=BB2_87 Depth=3
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB2_118
# BB#102:                               #   in Loop: Header=BB2_87 Depth=3
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	$0, 96(%rax)
	jne	.LBB2_103
# BB#104:                               #   in Loop: Header=BB2_87 Depth=3
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	jne	.LBB2_116
# BB#105:                               #   in Loop: Header=BB2_87 Depth=3
	movq	-64(%rbp), %rax
	movq	80(%rax), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	PushScope
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -128(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r12b, %r12b
	jne	.LBB2_107
# BB#106:                               #   in Loop: Header=BB2_87 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_110
.LBB2_107:                              #   in Loop: Header=BB2_87 Depth=3
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_108
# BB#109:                               #   in Loop: Header=BB2_87 Depth=3
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_110
.LBB2_108:                              #   in Loop: Header=BB2_87 Depth=3
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_110:                              #   in Loop: Header=BB2_87 Depth=3
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
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_113
# BB#111:                               #   in Loop: Header=BB2_87 Depth=3
	cmpq	$0, zz_res(%rip)
	je	.LBB2_113
# BB#112:                               #   in Loop: Header=BB2_87 Depth=3
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
.LBB2_113:                              #   in Loop: Header=BB2_87 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_87
# BB#114:                               #   in Loop: Header=BB2_87 Depth=3
	cmpq	$0, zz_res(%rip)
	je	.LBB2_87
# BB#115:                               #   in Loop: Header=BB2_87 Depth=3
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
	jmp	.LBB2_87
	.align	16, 0x90
.LBB2_118:                              #   in Loop: Header=BB2_82 Depth=2
	movq	-64(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$29, %esi
	movl	$.L.str.23, %edx
	movl	$2, %ecx
	jmp	.LBB2_117
.LBB2_116:                              #   in Loop: Header=BB2_82 Depth=2
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$28, %esi
	movl	$.L.str.22, %edx
	movl	$2, %ecx
	movl	$.L.str.17, %r9d
	jmp	.LBB2_117
.LBB2_119:                              #   in Loop: Header=BB2_1 Depth=1
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r12b, %r12b
	jne	.LBB2_121
# BB#120:                               #   in Loop: Header=BB2_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_124
.LBB2_121:                              #   in Loop: Header=BB2_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_122
# BB#123:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_124
.LBB2_122:                              #   in Loop: Header=BB2_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_124:                              #   in Loop: Header=BB2_1 Depth=1
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
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_160
# BB#125:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.18, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_160
# BB#126:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_128
# BB#127:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_129
.LBB2_128:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_130
.LBB2_129:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_130:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	SuppressScope
	jmp	.LBB2_131
	.align	16, 0x90
.LBB2_158:                              #   in Loop: Header=BB2_131 Depth=2
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
.LBB2_131:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	LexGetToken
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_134
# BB#132:                               #   in Loop: Header=BB2_131 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_133
.LBB2_134:                              #   in Loop: Header=BB2_131 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_137
# BB#135:                               #   in Loop: Header=BB2_131 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_136
.LBB2_137:                              #   in Loop: Header=BB2_131 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_140
# BB#138:                               #   in Loop: Header=BB2_131 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_139
.LBB2_140:                              #   in Loop: Header=BB2_131 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_143
# BB#141:                               #   in Loop: Header=BB2_131 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_142
.LBB2_143:                              #   in Loop: Header=BB2_131 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_144
# BB#145:                               #   in Loop: Header=BB2_131 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.17, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB2_146
	.align	16, 0x90
.LBB2_133:                              #   in Loop: Header=BB2_131 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_147
	.align	16, 0x90
.LBB2_144:                              #   in Loop: Header=BB2_131 Depth=2
	xorl	%eax, %eax
.LBB2_146:                              #   in Loop: Header=BB2_131 Depth=2
	xorb	$1, %al
	jmp	.LBB2_147
.LBB2_136:                              #   in Loop: Header=BB2_131 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_147
.LBB2_139:                              #   in Loop: Header=BB2_131 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_147
.LBB2_142:                              #   in Loop: Header=BB2_131 Depth=2
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_147:                              #   in Loop: Header=BB2_131 Depth=2
	testb	%al, %al
	je	.LBB2_159
# BB#148:                               #   in Loop: Header=BB2_131 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r12b, %r12b
	jne	.LBB2_150
# BB#149:                               #   in Loop: Header=BB2_131 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_153
	.align	16, 0x90
.LBB2_150:                              #   in Loop: Header=BB2_131 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_151
# BB#152:                               #   in Loop: Header=BB2_131 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_153
.LBB2_151:                              #   in Loop: Header=BB2_131 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_153:                              #   in Loop: Header=BB2_131 Depth=2
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
	je	.LBB2_156
# BB#154:                               #   in Loop: Header=BB2_131 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB2_156
# BB#155:                               #   in Loop: Header=BB2_131 Depth=2
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
.LBB2_156:                              #   in Loop: Header=BB2_131 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_131
# BB#157:                               #   in Loop: Header=BB2_131 Depth=2
	cmpq	$0, zz_res(%rip)
	jne	.LBB2_158
	jmp	.LBB2_131
.LBB2_159:                              #   in Loop: Header=BB2_1 Depth=1
	callq	UnSuppressScope
.LBB2_160:                              #   in Loop: Header=BB2_1 Depth=1
	movzbl	-49(%rbp), %eax
	cmpl	$143, %eax
	jne	.LBB2_166
# BB#161:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_163
# BB#162:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_166
.LBB2_163:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_165
# BB#164:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_165
.LBB2_166:                              #   in Loop: Header=BB2_1 Depth=1
	movzbl	-49(%rbp), %eax
	cmpl	$145, %eax
	jne	.LBB2_172
# BB#167:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_169
# BB#168:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_169
.LBB2_172:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_177
# BB#173:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_174
.LBB2_177:                              #   in Loop: Header=BB2_1 Depth=1
	callq	SuppressScope
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_179
# BB#178:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_180
.LBB2_179:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_181
.LBB2_180:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_181:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
	movzbl	-49(%rbp), %eax
	cmpl	$145, %eax
	jne	.LBB2_189
# BB#182:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_189
# BB#183:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.27, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_184
.LBB2_189:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -132(%rbp)
.LBB2_190:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_193
# BB#191:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_192
.LBB2_193:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movq	-128(%rbp), %rax
	movzbl	-49(%rbp), %esi
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, (%rsp)
	movl	$100, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	InsertSym
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_195
# BB#194:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$1, %ecx
	movb	%cl, 43(%rax)
.LBB2_195:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -136(%rbp)
	je	.LBB2_197
# BB#196:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$64, %ecx
	movb	%cl, 43(%rax)
.LBB2_197:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -132(%rbp)
	je	.LBB2_199
# BB#198:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	incw	122(%rax)
	movq	-72(%rbp), %rax
	orb	$64, 126(%rax)
	jmp	.LBB2_199
	.align	16, 0x90
.LBB2_244:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	callq	InsertAlternativeName
.LBB2_199:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_201
# BB#200:                               #   in Loop: Header=BB2_199 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_202
.LBB2_201:                              #   in Loop: Header=BB2_199 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_203
	.align	16, 0x90
.LBB2_202:                              #   in Loop: Header=BB2_199 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_203:                              #   in Loop: Header=BB2_199 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_206
# BB#204:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_205
.LBB2_206:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_209
# BB#207:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_208
.LBB2_209:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_212
# BB#210:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_211
.LBB2_212:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_215
# BB#213:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.29, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_214
.LBB2_215:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_218
# BB#216:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.30, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_217
.LBB2_218:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_221
# BB#219:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.31, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_220
.LBB2_221:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_224
# BB#222:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.32, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_223
.LBB2_224:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_227
# BB#225:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.33, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_226
.LBB2_227:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_230
# BB#228:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.34, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_229
.LBB2_230:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_233
# BB#231:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.35, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_232
.LBB2_233:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_236
# BB#234:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.36, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_235
.LBB2_236:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_239
# BB#237:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.7, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_238
.LBB2_239:                              #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_240
# BB#241:                               #   in Loop: Header=BB2_199 Depth=2
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.37, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB2_242
	.align	16, 0x90
.LBB2_205:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_243
.LBB2_208:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_243
.LBB2_211:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_243
.LBB2_214:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_243
.LBB2_217:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_243
.LBB2_220:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_243
.LBB2_223:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_243
.LBB2_226:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_243
.LBB2_240:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
.LBB2_242:                              #   in Loop: Header=BB2_199 Depth=2
	xorb	$1, %al
	jmp	.LBB2_243
.LBB2_229:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_243
.LBB2_232:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_243
.LBB2_235:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_243
.LBB2_238:                              #   in Loop: Header=BB2_199 Depth=2
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_243:                              #   in Loop: Header=BB2_199 Depth=2
	testb	%al, %al
	jne	.LBB2_244
# BB#245:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_256
# BB#246:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.29, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_256
# BB#247:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$128, %edx
	movw	%dx, 41(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_249
# BB#248:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_250
.LBB2_249:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_251
.LBB2_174:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-88(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_176
# BB#175:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$32, %esi
	movl	$.L.str.26, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_176:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%r14, %rdi
	callq	ReadMacro
	movq	%rax, -72(%rbp)
	jmp	.LBB2_377
.LBB2_184:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$1, -132(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_186
# BB#185:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_187
.LBB2_186:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_188
.LBB2_250:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_251:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_253
# BB#252:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.30, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_256
.LBB2_253:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_255
# BB#254:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.31, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_256
.LBB2_255:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$34, %esi
	movl	$.L.str.38, %edx
	movl	$2, %ecx
	movl	$.L.str.30, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_256:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_263
# BB#257:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.31, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_263
# BB#258:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$14680063, %edx         # imm = 0xDFFFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_260
# BB#259:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_261
.LBB2_260:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_262
.LBB2_261:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_262:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
.LBB2_263:                              #   in Loop: Header=BB2_1 Depth=1
	movq	$0, -80(%rbp)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_275
# BB#264:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.30, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_275
# BB#265:                               #   in Loop: Header=BB2_1 Depth=1
	callq	UnSuppressScope
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_267
# BB#266:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_268
.LBB2_267:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_269
.LBB2_268:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_269:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	jne	.LBB2_270
# BB#273:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	Parse
	movq	%rax, -80(%rbp)
	callq	SuppressScope
	cmpq	$0, -64(%rbp)
	jne	.LBB2_275
# BB#274:                               #   in Loop: Header=BB2_1 Depth=1
	callq	LexGetToken
	movq	%rax, -64(%rbp)
.LBB2_275:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_294
# BB#276:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.32, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_294
# BB#277:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -140(%rbp)
	jmp	.LBB2_278
	.align	16, 0x90
.LBB2_288:                              #   in Loop: Header=BB2_278 Depth=2
	movl	-140(%rbp), %eax
	leal	(%rax,%rax,4), %eax
	movq	-64(%rbp), %rcx
	movzbl	64(%rcx), %ecx
	leal	-48(%rcx,%rax,2), %eax
	movl	%eax, -140(%rbp)
.LBB2_278:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_280
# BB#279:                               #   in Loop: Header=BB2_278 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_281
.LBB2_280:                              #   in Loop: Header=BB2_278 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_282
	.align	16, 0x90
.LBB2_281:                              #   in Loop: Header=BB2_278 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_282:                              #   in Loop: Header=BB2_278 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_283
# BB#284:                               #   in Loop: Header=BB2_278 Depth=2
	movq	-64(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$48, %eax
	jl	.LBB2_285
# BB#286:                               #   in Loop: Header=BB2_278 Depth=2
	movq	-64(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$58, %eax
	setl	%al
	jmp	.LBB2_287
	.align	16, 0x90
.LBB2_283:                              #   in Loop: Header=BB2_278 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_287
	.align	16, 0x90
.LBB2_285:                              #   in Loop: Header=BB2_278 Depth=2
	xorl	%eax, %eax
.LBB2_287:                              #   in Loop: Header=BB2_278 Depth=2
	testb	%al, %al
	jne	.LBB2_288
# BB#289:                               #   in Loop: Header=BB2_1 Depth=1
	cmpl	$9, -140(%rbp)
	jg	.LBB2_291
# BB#290:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$37, %esi
	movl	$.L.str.39, %edx
	movl	$2, %ecx
	movl	$10, %r9d
	xorl	%eax, %eax
	callq	Error
	movl	$10, -140(%rbp)
	jmp	.LBB2_293
.LBB2_291:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$101, -140(%rbp)
	jl	.LBB2_293
# BB#292:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$38, %esi
	movl	$.L.str.40, %edx
	movl	$2, %ecx
	movl	$100, %r9d
	xorl	%eax, %eax
	callq	Error
	movl	$100, -140(%rbp)
.LBB2_293:                              #   in Loop: Header=BB2_1 Depth=1
	movb	-140(%rbp), %al
	movq	-72(%rbp), %rcx
	movb	%al, 40(%rcx)
.LBB2_294:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_311
# BB#295:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.33, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_311
# BB#296:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_298
# BB#297:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_299
.LBB2_298:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_300
.LBB2_299:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_300:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_303
# BB#301:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.34, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_302
.LBB2_303:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_305
# BB#304:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.35, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_306
.LBB2_305:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$39, %esi
	movl	$.L.str.41, %edx
	movl	$2, %ecx
	movl	$.L.str.35, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_306
.LBB2_302:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16777199, %edx         # imm = 0xFFFFEF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
.LBB2_306:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_308
# BB#307:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_309
.LBB2_308:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_310
.LBB2_309:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_310:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
.LBB2_311:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_324
# BB#312:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.34, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_324
# BB#313:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_315
# BB#314:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_316
.LBB2_315:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_317
.LBB2_316:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_317:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_318
# BB#319:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, (%rsp)
	movl	$144, %esi
	movl	$100, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	InsertSym
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_321
# BB#320:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_322
.LBB2_321:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_323
.LBB2_322:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_323:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
.LBB2_324:                              #   in Loop: Header=BB2_1 Depth=1
	callq	UnSuppressScope
	movq	-72(%rbp), %rsi
	movl	$145, %edx
	movq	%r14, %rdi
	callq	ReadDefinitions
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_326
# BB#325:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.35, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_328
.LBB2_326:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_342
# BB#327:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.36, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_342
.LBB2_328:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_329
# BB#330:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.36, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB2_331
.LBB2_329:                              #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
.LBB2_331:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rcx
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
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_333
# BB#332:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_334
.LBB2_333:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_335
.LBB2_334:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_335:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_336
# BB#337:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, (%rsp)
	movl	$146, %esi
	movl	$100, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	InsertSym
	callq	UnSuppressScope
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_339
# BB#338:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_340
.LBB2_339:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_341
.LBB2_340:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_341:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
.LBB2_342:                              #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB2_344
# BB#343:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
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
.LBB2_344:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_352
# BB#345:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.7, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_346
.LBB2_352:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_355
# BB#353:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.37, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_354
.LBB2_355:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB2_358
# BB#356:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	je	.LBB2_358
# BB#357:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rbx
	addq	$32, %rbx
	movq	-72(%rbp), %rdi
	callq	SymName
	movq	%rax, %r9
	movl	$5, %edi
	movl	$42, %esi
	movl	$.L.str.44, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB2_358
.LBB2_346:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rsi
	addq	$32, %rsi
	movq	StartSym(%rip), %r9
	movl	$102, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$3, %r8d
	jmp	.LBB2_347
.LBB2_354:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rsi
	addq	$32, %rsi
	movq	StartSym(%rip), %r9
	movl	$104, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
.LBB2_347:                              #   in Loop: Header=BB2_1 Depth=1
	callq	NewToken
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_349
# BB#348:                               #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_350
.LBB2_349:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_351
.LBB2_350:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_351:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB2_358:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	jne	.LBB2_360
# BB#359:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 80(%rcx)
.LBB2_360:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	PushScope
	callq	BodyParAllowed
	movq	-72(%rbp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	Parse
	movq	-72(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-88(%rbp), %rax
	jmp	.LBB2_361
	.align	16, 0x90
.LBB2_367:                              #   in Loop: Header=BB2_361 Depth=2
	movq	-112(%rbp), %rbx
	leaq	32(%rbx), %r15
	addq	$64, %rbx
	movq	-72(%rbp), %rdi
	callq	SymName
	movq	%rax, (%rsp)
	movl	$5, %edi
	movl	$43, %esi
	movl	$.L.str.45, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r15, %r8
	movq	%rbx, %r9
	callq	Error
	movq	-104(%rbp), %rax
.LBB2_361:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_363 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB2_376
# BB#362:                               #   in Loop: Header=BB2_361 Depth=2
	movq	-104(%rbp), %rax
	jmp	.LBB2_363
	.align	16, 0x90
.LBB2_364:                              #   in Loop: Header=BB2_363 Depth=3
	movq	-112(%rbp), %rax
.LBB2_363:                              #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_361 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_364
# BB#365:                               #   in Loop: Header=BB2_361 Depth=2
	movq	-112(%rbp), %rbx
	addq	$64, %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	SearchSym
	movq	%rax, -120(%rbp)
	testq	%rax, %rax
	je	.LBB2_367
# BB#366:                               #   in Loop: Header=BB2_361 Depth=2
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB2_367
# BB#368:                               #   in Loop: Header=BB2_361 Depth=2
	movq	-72(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$8, %eax
	jae	.LBB2_372
# BB#369:                               #   in Loop: Header=BB2_361 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	jne	.LBB2_372
# BB#370:                               #   in Loop: Header=BB2_361 Depth=2
	movq	-112(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$44, %esi
	movl	$.L.str.46, %edx
	jmp	.LBB2_371
.LBB2_372:                              #   in Loop: Header=BB2_361 Depth=2
	movq	-120(%rbp), %rax
	movzbl	43(%rax), %eax
	testb	$1, %al
	je	.LBB2_374
# BB#373:                               #   in Loop: Header=BB2_361 Depth=2
	movq	-112(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$45, %esi
	movl	$.L.str.47, %edx
.LBB2_371:                              #   in Loop: Header=BB2_361 Depth=2
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-104(%rbp), %rax
	jmp	.LBB2_361
.LBB2_374:                              #   in Loop: Header=BB2_361 Depth=2
	movq	-120(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$1, %ecx
	movb	%cl, 43(%rax)
	movq	-104(%rbp), %rax
	jmp	.LBB2_361
.LBB2_376:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-88(%rbp), %rdi
	callq	DisposeObject
	callq	PopScope
.LBB2_377:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB2_378
	.align	16, 0x90
.LBB2_379:                              #   in Loop: Header=BB2_378 Depth=2
	callq	PopScope
	movq	-104(%rbp), %rax
.LBB2_378:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB2_379
# BB#380:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-96(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_382
# BB#381:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_383
.LBB2_382:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-96(%rbp), %rdi
	callq	DisposeObject
	movq	$0, -96(%rbp)
	jmp	.LBB2_384
.LBB2_383:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 96(%rcx)
.LBB2_384:                              #   in Loop: Header=BB2_1 Depth=1
	callq	BodyParAllowed
	cmpq	$0, -64(%rbp)
	jne	.LBB2_1
	jmp	.LBB2_385
.LBB2_187:                              #   in Loop: Header=BB2_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_188:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -64(%rbp)
	jmp	.LBB2_190
.LBB2_169:
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$31, %esi
	movl	$.L.str.25, %edx
	movl	$2, %ecx
	movl	$.L.str.12, %r9d
	jmp	.LBB2_170
.LBB2_165:
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.16, (%rsp)
	movl	$5, %edi
	movl	$30, %esi
	movl	$.L.str.24, %edx
	movl	$2, %ecx
	movl	$.L.str.15, %r9d
.LBB2_170:
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_171
.LBB2_192:
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$33, %esi
	movl	$.L.str.28, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	callq	UnSuppressScope
	jmp	.LBB2_171
.LBB2_336:
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$41, %esi
	movl	$.L.str.42, %edx
	movl	$2, %ecx
	movl	$.L.str.35, %r9d
	jmp	.LBB2_271
.LBB2_270:
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$36, %esi
	movl	$.L.str.38, %edx
	movl	$2, %ecx
	movl	$.L.str.7, %r9d
	jmp	.LBB2_271
.LBB2_318:
	movq	-64(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$40, %esi
	movl	$.L.str.42, %edx
	movl	$2, %ecx
	movl	$.L.str.34, %r9d
.LBB2_271:
	xorl	%eax, %eax
	callq	Error
	callq	UnSuppressScope
.LBB2_171:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ReadDefinitions, .Lfunc_end2-ReadDefinitions
	.cfi_endproc

	.align	16, 0x90
	.type	ReadLangDef,@function
ReadLangDef:                            # @ReadLangDef
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
	subq	$40, %rsp
.Ltmp17:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_5
.LBB3_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_5
.LBB3_3:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_5:
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
	movq	%rax, -24(%rbp)
	movb	$1, %bl
	jmp	.LBB3_6
	.align	16, 0x90
.LBB3_20:                               #   in Loop: Header=BB3_6 Depth=1
	callq	LexGetToken
	movq	%rax, -24(%rbp)
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	movb	$1, %al
	je	.LBB3_8
# BB#7:                                 #   in Loop: Header=BB3_6 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	sete	%al
.LBB3_8:                                #   in Loop: Header=BB3_6 Depth=1
	testb	%al, %al
	je	.LBB3_21
# BB#9:                                 #   in Loop: Header=BB3_6 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_11
# BB#10:                                #   in Loop: Header=BB3_6 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_14
	.align	16, 0x90
.LBB3_11:                               #   in Loop: Header=BB3_6 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_12
# BB#13:                                #   in Loop: Header=BB3_6 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_14
.LBB3_12:                               #   in Loop: Header=BB3_6 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_6 Depth=1
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
	je	.LBB3_17
# BB#15:                                #   in Loop: Header=BB3_6 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_17
# BB#16:                                #   in Loop: Header=BB3_6 Depth=1
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
.LBB3_17:                               #   in Loop: Header=BB3_6 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_20
# BB#18:                                #   in Loop: Header=BB3_6 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_20
# BB#19:                                #   in Loop: Header=BB3_6 Depth=1
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
	jmp	.LBB3_20
.LBB3_21:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB3_27
# BB#22:
	movq	-24(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$4, %esi
	movl	$.L.str.48, %edx
	movl	$2, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_24
# BB#23:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_25
.LBB3_24:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_26
.LBB3_27:
	movq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	Parse
	movq	%rax, -40(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	callq	LanguageDefine
	jmp	.LBB3_28
.LBB3_25:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_26:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB3_28:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ReadLangDef, .Lfunc_end3-ReadLangDef
	.cfi_endproc

	.align	16, 0x90
	.type	ReadMacro,@function
ReadMacro:                              # @ReadMacro
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	callq	SuppressScope
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_2
# BB#1:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_3
.LBB4_2:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_4
.LBB4_3:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_4:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_7
# BB#5:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_6
.LBB4_7:
	movq	-40(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, (%rsp)
	movl	$142, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	callq	InsertSym
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB4_9
# BB#8:
	movq	-48(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$1, %ecx
	movb	%cl, 43(%rax)
.LBB4_9:
	callq	UnSuppressScope
	jmp	.LBB4_10
	.align	16, 0x90
.LBB4_17:                               #   in Loop: Header=BB4_10 Depth=1
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	callq	InsertAlternativeName
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_12
# BB#11:                                #   in Loop: Header=BB4_10 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_13
.LBB4_12:                               #   in Loop: Header=BB4_10 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_14
	.align	16, 0x90
.LBB4_13:                               #   in Loop: Header=BB4_10 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_14:                               #   in Loop: Header=BB4_10 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$11, %ecx
	je	.LBB4_16
# BB#15:                                #   in Loop: Header=BB4_10 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	sete	%al
.LBB4_16:                               #   in Loop: Header=BB4_10 Depth=1
	testb	%al, %al
	jne	.LBB4_17
# BB#18:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB4_21
# BB#19:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.7, (%rsp)
	movl	$5, %edi
	movl	$25, %esi
	movl	$.L.str.50, %edx
	movl	$2, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_20
.LBB4_21:
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	ReadTokenList
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_23
# BB#22:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_24
.LBB4_23:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_25
.LBB4_6:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$24, %esi
	movl	$.L.str.49, %edx
	movl	$2, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
	callq	UnSuppressScope
.LBB4_20:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, -8(%rbp)
	jmp	.LBB4_32
.LBB4_24:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_25:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	16(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB4_27
# BB#26:
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
.LBB4_27:
	movq	-48(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_29
# BB#28:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_30
.LBB4_29:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_31
.LBB4_30:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_31:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-48(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16776191, %edx         # imm = 0xFFFBFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_32:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ReadMacro, .Lfunc_end4-ReadMacro
	.cfi_endproc

	.align	16, 0x90
	.type	ReadTokenList,@function
ReadTokenList:                          # @ReadTokenList
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp24:
	.cfi_offset %rbx, -32
.Ltmp25:
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
	je	.LBB5_1
# BB#2:
	cmpq	$0, zz_res(%rip)
	jne	.LBB5_4
# BB#3:
	movq	zz_hold(%rip), %rax
	jmp	.LBB5_5
.LBB5_1:
	movq	zz_res(%rip), %rax
	jmp	.LBB5_5
.LBB5_4:
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
	jmp	.LBB5_5
	.align	16, 0x90
.LBB5_19:                               #   in Loop: Header=BB5_5 Depth=1
	movq	zz_res(%rip), %rax
.LBB5_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #       Child Loop BB5_67 Depth 3
                                        #         Child Loop BB5_84 Depth 4
                                        #           Child Loop BB5_86 Depth 5
                                        #         Child Loop BB5_90 Depth 4
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB5_6
	.align	16, 0x90
.LBB5_112:                              #   in Loop: Header=BB5_6 Depth=2
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB5_6:                                #   Parent Loop BB5_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_67 Depth 3
                                        #         Child Loop BB5_84 Depth 4
                                        #           Child Loop BB5_86 Depth 5
                                        #         Child Loop BB5_90 Depth 4
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-2, %eax
	cmpl	$115, %eax
	ja	.LBB5_111
# BB#7:                                 #   in Loop: Header=BB5_6 Depth=2
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_56:                               #   in Loop: Header=BB5_6 Depth=2
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
	je	.LBB5_57
# BB#58:                                #   in Loop: Header=BB5_6 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB5_59
# BB#60:                                #   in Loop: Header=BB5_6 Depth=2
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
	jmp	.LBB5_61
	.align	16, 0x90
.LBB5_111:                              #   in Loop: Header=BB5_6 Depth=2
	movq	-40(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$5, %edi
	movl	$23, %esi
	movl	$.L.str.62, %edx
	xorl	%ecx, %ecx
	jmp	.LBB5_112
.LBB5_30:                               #   in Loop: Header=BB5_6 Depth=2
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$13, %esi
	movl	$.L.str.53, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_6
.LBB5_57:                               #   in Loop: Header=BB5_6 Depth=2
	movq	zz_res(%rip), %rax
	jmp	.LBB5_61
.LBB5_59:                               #   in Loop: Header=BB5_6 Depth=2
	movq	zz_hold(%rip), %rax
.LBB5_61:                               #   in Loop: Header=BB5_6 Depth=2
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	callq	PopScope
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB5_63
# BB#62:                                #   in Loop: Header=BB5_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	jne	.LBB5_67
	jmp	.LBB5_63
	.align	16, 0x90
.LBB5_97:                               #   in Loop: Header=BB5_67 Depth=3
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	callq	PopScope
.LBB5_67:                               #   Parent Loop BB5_5 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_84 Depth 4
                                        #           Child Loop BB5_86 Depth 5
                                        #         Child Loop BB5_90 Depth 4
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB5_68
# BB#69:                                #   in Loop: Header=BB5_67 Depth=3
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	48(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB5_71
# BB#70:                                #   in Loop: Header=BB5_67 Depth=3
	xorl	%eax, %eax
	jmp	.LBB5_72
	.align	16, 0x90
.LBB5_68:                               #   in Loop: Header=BB5_67 Depth=3
	xorl	%eax, %eax
	jmp	.LBB5_72
.LBB5_71:                               #   in Loop: Header=BB5_67 Depth=3
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$145, %eax
	sete	%al
	.align	16, 0x90
.LBB5_72:                               #   in Loop: Header=BB5_67 Depth=3
	testb	%al, %al
	je	.LBB5_99
# BB#73:                                #   in Loop: Header=BB5_67 Depth=3
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
	je	.LBB5_74
# BB#75:                                #   in Loop: Header=BB5_67 Depth=3
	cmpq	$0, zz_res(%rip)
	je	.LBB5_76
# BB#77:                                #   in Loop: Header=BB5_67 Depth=3
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
	jmp	.LBB5_78
	.align	16, 0x90
.LBB5_74:                               #   in Loop: Header=BB5_67 Depth=3
	movq	zz_res(%rip), %rax
	jmp	.LBB5_78
	.align	16, 0x90
.LBB5_76:                               #   in Loop: Header=BB5_67 Depth=3
	movq	zz_hold(%rip), %rax
.LBB5_78:                               #   in Loop: Header=BB5_67 Depth=3
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	jne	.LBB5_79
# BB#82:                                #   in Loop: Header=BB5_67 Depth=3
	movl	$0, -84(%rbp)
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -64(%rbp)
	testq	%rax, %rax
	je	.LBB5_89
# BB#83:                                #   in Loop: Header=BB5_67 Depth=3
	movq	-64(%rbp), %rax
	jmp	.LBB5_84
	.align	16, 0x90
.LBB5_88:                               #   in Loop: Header=BB5_84 Depth=4
	movq	-80(%rbp), %rax
	movq	80(%rax), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	PushScope
	incl	-84(%rbp)
	movq	-72(%rbp), %rax
.LBB5_84:                               #   Parent Loop BB5_5 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        #       Parent Loop BB5_67 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB5_86 Depth 5
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB5_89
# BB#85:                                #   in Loop: Header=BB5_84 Depth=4
	movq	-72(%rbp), %rax
	jmp	.LBB5_86
	.align	16, 0x90
.LBB5_87:                               #   in Loop: Header=BB5_86 Depth=5
	movq	-80(%rbp), %rax
.LBB5_86:                               #   Parent Loop BB5_5 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        #       Parent Loop BB5_67 Depth=3
                                        #         Parent Loop BB5_84 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_87
	jmp	.LBB5_88
	.align	16, 0x90
.LBB5_89:                               #   in Loop: Header=BB5_67 Depth=3
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
	jmp	.LBB5_90
	.align	16, 0x90
.LBB5_91:                               #   in Loop: Header=BB5_90 Depth=4
	callq	PopScope
	incl	-88(%rbp)
.LBB5_90:                               #   Parent Loop BB5_5 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        #       Parent Loop BB5_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-88(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.LBB5_91
# BB#92:                                #   in Loop: Header=BB5_67 Depth=3
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
	je	.LBB5_93
# BB#94:                                #   in Loop: Header=BB5_67 Depth=3
	cmpq	$0, zz_res(%rip)
	je	.LBB5_95
# BB#96:                                #   in Loop: Header=BB5_67 Depth=3
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
	jmp	.LBB5_97
	.align	16, 0x90
.LBB5_93:                               #   in Loop: Header=BB5_67 Depth=3
	movq	zz_res(%rip), %rax
	jmp	.LBB5_97
	.align	16, 0x90
.LBB5_95:                               #   in Loop: Header=BB5_67 Depth=3
	movq	zz_hold(%rip), %rax
	jmp	.LBB5_97
.LBB5_79:                               #   in Loop: Header=BB5_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$103, %eax
	je	.LBB5_80
# BB#98:                                #   in Loop: Header=BB5_6 Depth=2
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
.LBB5_99:                               #   in Loop: Header=BB5_6 Depth=2
	movq	-48(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$8, %eax
	jae	.LBB5_6
# BB#100:                               #   in Loop: Header=BB5_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB5_102
# BB#101:                               #   in Loop: Header=BB5_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	je	.LBB5_102
# BB#108:                               #   in Loop: Header=BB5_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$103, %eax
	je	.LBB5_6
# BB#109:                               #   in Loop: Header=BB5_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$105, %eax
	je	.LBB5_6
# BB#110:                               #   in Loop: Header=BB5_6 Depth=2
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
	jmp	.LBB5_112
	.align	16, 0x90
.LBB5_18:                               #   in Loop: Header=BB5_5 Depth=1
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_19
# BB#20:                                #   in Loop: Header=BB5_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB5_4
# BB#21:                                #   in Loop: Header=BB5_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB5_5
.LBB5_22:                               #   in Loop: Header=BB5_5 Depth=1
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
	je	.LBB5_23
# BB#24:                                #   in Loop: Header=BB5_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB5_4
# BB#25:                                #   in Loop: Header=BB5_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB5_5
.LBB5_23:                               #   in Loop: Header=BB5_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB5_5
.LBB5_8:                                #   in Loop: Header=BB5_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$64, %eax
	jne	.LBB5_10
# BB#9:                                 #   in Loop: Header=BB5_5 Depth=1
	movq	-40(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$11, %esi
	movl	$.L.str.51, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB5_10:                               #   in Loop: Header=BB5_5 Depth=1
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_11
# BB#12:                                #   in Loop: Header=BB5_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB5_4
# BB#13:                                #   in Loop: Header=BB5_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB5_5
.LBB5_14:                               #   in Loop: Header=BB5_5 Depth=1
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_15
# BB#16:                                #   in Loop: Header=BB5_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB5_4
# BB#17:                                #   in Loop: Header=BB5_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB5_5
.LBB5_26:                               #   in Loop: Header=BB5_5 Depth=1
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
	je	.LBB5_27
# BB#28:                                #   in Loop: Header=BB5_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB5_4
# BB#29:                                #   in Loop: Header=BB5_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB5_5
.LBB5_31:                               #   in Loop: Header=BB5_5 Depth=1
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
	je	.LBB5_32
# BB#33:                                #   in Loop: Header=BB5_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB5_4
# BB#34:                                #   in Loop: Header=BB5_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB5_5
.LBB5_63:                               #   in Loop: Header=BB5_5 Depth=1
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_64
# BB#65:                                #   in Loop: Header=BB5_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB5_4
# BB#66:                                #   in Loop: Header=BB5_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB5_5
.LBB5_11:                               #   in Loop: Header=BB5_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB5_5
.LBB5_15:                               #   in Loop: Header=BB5_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB5_5
.LBB5_27:                               #   in Loop: Header=BB5_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB5_5
.LBB5_32:                               #   in Loop: Header=BB5_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB5_5
.LBB5_64:                               #   in Loop: Header=BB5_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB5_5
.LBB5_102:                              #   in Loop: Header=BB5_5 Depth=1
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
	jne	.LBB5_104
# BB#103:                               #   in Loop: Header=BB5_5 Depth=1
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 80(%rcx)
.LBB5_104:                              #   in Loop: Header=BB5_5 Depth=1
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
	je	.LBB5_105
# BB#106:                               #   in Loop: Header=BB5_5 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB5_4
# BB#107:                               #   in Loop: Header=BB5_5 Depth=1
	movq	zz_hold(%rip), %rax
	jmp	.LBB5_5
.LBB5_105:                              #   in Loop: Header=BB5_5 Depth=1
	movq	zz_res(%rip), %rax
	jmp	.LBB5_5
.LBB5_35:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB5_55
# BB#36:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$15, %esi
.LBB5_37:
	movl	$.L.str.55, %edx
	movl	$2, %ecx
	movl	$.L.str.56, %r9d
	xorl	%eax, %eax
	jmp	.LBB5_54
.LBB5_38:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$104, %eax
	je	.LBB5_42
# BB#39:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$16, %esi
	movl	$.L.str.55, %edx
	jmp	.LBB5_40
.LBB5_42:
	callq	LexGetToken
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_43
# BB#44:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_45
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
	jmp	.LBB5_47
.LBB5_43:
	movq	zz_res(%rip), %rax
	jmp	.LBB5_47
.LBB5_45:
	movq	zz_hold(%rip), %rax
.LBB5_47:
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB5_52
# BB#48:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB5_51
# BB#49:
	movq	-40(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpl	$64, %eax
	jne	.LBB5_51
# BB#50:
	movq	-40(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$5, %edi
	movl	$17, %esi
	movl	$.L.str.51, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	jmp	.LBB5_54
.LBB5_52:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	80(%rcx), %rax
	je	.LBB5_55
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
	jmp	.LBB5_54
.LBB5_51:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$18, %esi
	movl	$.L.str.58, %edx
.LBB5_40:
	movl	$2, %ecx
	movl	$.L.str.57, %r9d
	xorl	%eax, %eax
.LBB5_54:
	callq	Error
.LBB5_55:
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB5_80:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB5_55
# BB#81:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$5, %edi
	movl	$20, %esi
	jmp	.LBB5_37
.Lfunc_end5:
	.size	ReadTokenList, .Lfunc_end5-ReadTokenList
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_56
	.quad	.LBB5_111
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_8
	.quad	.LBB5_14
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_111
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_111
	.quad	.LBB5_22
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_111
	.quad	.LBB5_22
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_18
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_26
	.quad	.LBB5_35
	.quad	.LBB5_31
	.quad	.LBB5_38
	.quad	.LBB5_22
	.quad	.LBB5_18
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_30
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22

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
