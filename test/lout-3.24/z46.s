	.text
	.file	"z46.opt"
	.globl	FindOptimize
	.align	16, 0x90
	.type	FindOptimize,@function
FindOptimize:                           # @FindOptimize
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
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
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$6, %eax
	jb	.LBB0_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_4:
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-40(%rbp), %rax
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB0_18
# BB#6:                                 #   in Loop: Header=BB0_5 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-32(%rbp), %rax
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_8
# BB#9:                                 #   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB0_16
# BB#10:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	testb	$1, 126(%rax)
	je	.LBB0_16
# BB#11:
	movq	-32(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB0_13
# BB#12:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_13:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_14
	.align	16, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-48(%rbp), %rax
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_15
# BB#17:
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$32, %rsi
	callq	CopyObject
	movq	%rax, -48(%rbp)
.LBB0_18:
	cmpq	$0, -48(%rbp)
	jne	.LBB0_26
# BB#19:
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	jmp	.LBB0_20
	.align	16, 0x90
.LBB0_38:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-40(%rbp), %rax
.LBB0_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	80(%rcx), %rax
	je	.LBB0_26
# BB#21:                                #   in Loop: Header=BB0_20 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_22 Depth=2
	movq	-32(%rbp), %rax
.LBB0_22:                               #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_23
# BB#24:                                #   in Loop: Header=BB0_20 Depth=1
	movq	-32(%rbp), %rax
	testb	$1, 126(%rax)
	je	.LBB0_38
# BB#25:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-16(%rbp), %rsi
	addq	$32, %rsi
	callq	CopyObject
	movq	%rax, -48(%rbp)
.LBB0_26:
	cmpq	$0, -48(%rbp)
	jne	.LBB0_28
# BB#27:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_28:
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -64(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	addq	$64, %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-104(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 16(%rsp)
	movl	$1, 8(%rsp)
	leaq	-64(%rbp), %rcx
	leaq	-80(%rbp), %r8
	leaq	-88(%rbp), %r9
	callq	Manifest
	movq	%rax, -48(%rbp)
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -48(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_31
# BB#29:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_30
.LBB0_31:
	movq	-48(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.7, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_32
# BB#33:
	movq	-48(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.8, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_36
# BB#34:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$46, %edi
	movl	$2, %esi
	movl	$.L.str.9, %edx
	jmp	.LBB0_35
.LBB0_32:
	movl	$1, -4(%rbp)
	jmp	.LBB0_37
.LBB0_30:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$46, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
.LBB0_35:
	movl	$2, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_36:
	movl	$0, -4(%rbp)
.LBB0_37:
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	FindOptimize, .Lfunc_end0-FindOptimize
	.cfi_endproc

	.globl	SetOptimize
	.align	16, 0x90
	.type	SetOptimize,@function
SetOptimize:                            # @SetOptimize
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
	subq	$1144, %rsp             # imm = 0x478
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	leaq	-544(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strcat
	movq	-16(%rbp), %rax
	movl	$1048575, %edi          # imm = 0xFFFFF
	andl	36(%rax), %edi
	callq	StringInt
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
	movq	OldCrossDb(%rip), %rdi
	movq	OptGallSym(%rip), %rdx
	leaq	-1112(%rbp), %rax
	movq	%rax, 16(%rsp)
	leaq	-1116(%rbp), %rax
	movq	%rax, 8(%rsp)
	leaq	-1104(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-1056(%rbp), %r8
	leaq	-1090(%rbp), %r9
	movl	$0, %esi
	movq	%rbx, %rcx
	callq	DbRetrieve
	testl	%eax, %eax
	je	.LBB1_56
# BB#1:
	xorl	%edi, %edi
	callq	SwitchScope
	movq	-1104(%rbp), %rsi
	movl	-1116(%rbp), %edx
	movzwl	-1090(%rbp), %edi
	callq	ReadFromFile
	movq	%rax, -1064(%rbp)
	xorl	%edi, %edi
	callq	UnSwitchScope
	cmpq	$0, -1064(%rbp)
	jne	.LBB1_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_3:
	movq	-1064(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB1_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_5:
	movq	-1064(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	OptGallSym(%rip), %rax
	je	.LBB1_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_7:
	movq	-1064(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_9
# BB#8:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_9:
	movq	-1064(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_10 Depth=1
	movq	-1072(%rbp), %rax
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -1072(%rbp)
	movq	-1072(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_11
# BB#12:
	movq	-1072(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	je	.LBB1_14
# BB#13:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_14:
	movq	-1072(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_15 Depth=1
	movq	-1072(%rbp), %rax
.LBB1_15:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -1072(%rbp)
	movq	-1072(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_16
# BB#17:
	movq	-1072(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_19
# BB#18:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_19:
	movq	-1072(%rbp), %rdi
	xorl	%esi, %esi
	callq	ReplaceWithTidy
	movq	%rax, -1072(%rbp)
	movq	-16(%rbp), %rax
	andw	$-513, 42(%rax)         # imm = 0xFFFFFFFFFFFFFDFF
	movq	-1072(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_21
# BB#20:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_21:
	movq	-1072(%rbp), %rax
	movq	%rax, -1080(%rbp)
	leaq	-1120(%rbp), %rbx
	jmp	.LBB1_22
	.align	16, 0x90
.LBB1_46:                               #   in Loop: Header=BB1_22 Depth=1
	movq	-1080(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1080(%rbp)
.LBB1_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_24 Depth 2
	movq	-1080(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-1072(%rbp), %rax
	je	.LBB1_47
# BB#23:                                #   in Loop: Header=BB1_22 Depth=1
	movq	-1080(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_24
	.align	16, 0x90
.LBB1_25:                               #   in Loop: Header=BB1_24 Depth=2
	movq	-1088(%rbp), %rax
.LBB1_24:                               #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -1088(%rbp)
	movq	-1088(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_25
# BB#26:                                #   in Loop: Header=BB1_22 Depth=1
	movq	-1088(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_27
# BB#38:                                #   in Loop: Header=BB1_22 Depth=1
	movq	-1088(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_40
# BB#39:                                #   in Loop: Header=BB1_22 Depth=1
	movq	-1088(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_45
.LBB1_40:                               #   in Loop: Header=BB1_22 Depth=1
	movq	-1088(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.18, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_41
# BB#42:                                #   in Loop: Header=BB1_22 Depth=1
	movl	$0, -1120(%rbp)
	movq	-1088(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	__isoc99_sscanf
	cmpl	$0, -1120(%rbp)
	jg	.LBB1_44
# BB#43:                                #   in Loop: Header=BB1_22 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_44:                               #   in Loop: Header=BB1_22 Depth=1
	movl	-1120(%rbp), %eax
	movq	-1088(%rbp), %rcx
	movl	%eax, 48(%rcx)
	jmp	.LBB1_46
.LBB1_41:                               #   in Loop: Header=BB1_22 Depth=1
	movq	-16(%rbp), %rax
	orw	$512, 42(%rax)          # imm = 0x200
.LBB1_27:                               #   in Loop: Header=BB1_22 Depth=1
	movq	-1080(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_29
# BB#28:                                #   in Loop: Header=BB1_22 Depth=1
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
.LBB1_29:                               #   in Loop: Header=BB1_22 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_31
# BB#30:                                #   in Loop: Header=BB1_22 Depth=1
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
.LBB1_31:                               #   in Loop: Header=BB1_22 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_33
# BB#32:                                #   in Loop: Header=BB1_22 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_34
.LBB1_33:                               #   in Loop: Header=BB1_22 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_35
.LBB1_34:                               #   in Loop: Header=BB1_22 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_35:                               #   in Loop: Header=BB1_22 Depth=1
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
	jne	.LBB1_37
# BB#36:                                #   in Loop: Header=BB1_22 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_37:                               #   in Loop: Header=BB1_22 Depth=1
	movq	-1080(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1080(%rbp)
	jmp	.LBB1_46
.LBB1_45:                               #   in Loop: Header=BB1_22 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_46
.LBB1_47:
	movq	-1072(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_49
# BB#48:
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
.LBB1_49:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_51
# BB#50:
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
.LBB1_51:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_53
# BB#52:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_54
.LBB1_53:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_55
.LBB1_56:
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
	jmp	.LBB1_57
.LBB1_54:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_55:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-1064(%rbp), %rdi
	callq	DisposeObject
	movq	-1072(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB1_57:
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB1_72
# BB#58:
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_72
# BB#59:
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_60
	.align	16, 0x90
.LBB1_61:                               #   in Loop: Header=BB1_60 Depth=1
	movq	-1088(%rbp), %rax
.LBB1_60:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -1088(%rbp)
	movq	-1088(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_61
# BB#62:
	movq	-1088(%rbp), %rax
	movl	48(%rax), %eax
	decl	%eax
	movq	-16(%rbp), %rcx
	movl	%eax, 160(%rcx)
	movq	-1088(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_64
# BB#63:
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
.LBB1_64:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_66
# BB#65:
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
.LBB1_66:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_68
# BB#67:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_69
.LBB1_68:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_70
.LBB1_72:
	movq	-16(%rbp), %rax
	movl	$65535, 160(%rax)       # imm = 0xFFFF
	jmp	.LBB1_73
.LBB1_69:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_70:
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
	jne	.LBB1_73
# BB#71:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_73:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_75
# BB#74:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_78
.LBB1_75:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_76
# BB#77:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_78
.LBB1_76:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_78:
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
	movq	-16(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-16(%rbp), %rax
	andw	$-1025, 42(%rax)        # imm = 0xFFFFFFFFFFFFFBFF
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_80
# BB#79:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_83
.LBB1_80:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_81
# BB#82:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_83
.LBB1_81:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_83:
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
	movq	-16(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-24(%rbp), %rax
	movw	2(%rax), %ax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movw	%ax, 66(%rcx)
	movq	-24(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-24(%rbp), %rax
	movb	4(%rax), %al
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-24(%rbp), %rax
	movb	4(%rax), %al
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-24(%rbp), %rax
	movb	(%rax), %al
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-24(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-24(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-24(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-24(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-24(%rbp), %rax
	movw	6(%rax), %ax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movw	%ax, 70(%rcx)
	movq	-24(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-24(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-24(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-24(%rbp), %rax
	movb	(%rax), %al
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-24(%rbp), %rax
	movb	(%rax), %al
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-24(%rbp), %rax
	movb	(%rax), %al
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-24(%rbp), %rax
	movw	8(%rax), %ax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movw	%ax, 72(%rcx)
	movq	-24(%rbp), %rax
	movw	10(%rax), %ax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movw	%ax, 74(%rcx)
	movq	-16(%rbp), %rax
	testb	$1, 43(%rax)
	je	.LBB1_85
# BB#84:
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movb	68(%rax), %cl
	andb	$-4, %cl
	orb	$1, %cl
	movb	%cl, 68(%rax)
.LBB1_85:
	addq	$1144, %rsp             # imm = 0x478
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SetOptimize, .Lfunc_end1-SetOptimize
	.cfi_endproc

	.globl	GazumpOptimize
	.align	16, 0x90
	.type	GazumpOptimize,@function
GazumpOptimize:                         # @GazumpOptimize
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	je	.LBB2_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_2:
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB2_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_4:
	movzbl	zz_lengths+26(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_6
# BB#5:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_9
.LBB2_6:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_7
# BB#8:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_9
.LBB2_7:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_9:
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
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movzbl	43(%rax), %eax
	testb	$1, %al
	jne	.LBB2_11
# BB#10:
	movq	-16(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$3, %eax
	jb	.LBB2_13
.LBB2_11:
	movq	-8(%rbp), %rax
	movzbl	43(%rax), %eax
	testb	$1, %al
	jne	.LBB2_14
# BB#12:
	movq	-16(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$3, %eax
	jae	.LBB2_14
.LBB2_13:
	movq	-32(%rbp), %rax
	movl	$8388607, 64(%rax)      # imm = 0x7FFFFF
	movq	-32(%rbp), %rax
	movl	$8388607, 68(%rax)      # imm = 0x7FFFFF
	movq	-32(%rbp), %rax
	movl	$8388607, 72(%rax)      # imm = 0x7FFFFF
	jmp	.LBB2_18
.LBB2_14:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_15
	.align	16, 0x90
.LBB2_16:                               #   in Loop: Header=BB2_15 Depth=1
	movq	-48(%rbp), %rax
.LBB2_15:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_16
# BB#17:
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	addq	$64, %rsi
	movq	-8(%rbp), %rax
	movzbl	43(%rax), %edx
	andl	$1, %edx
	leaq	-40(%rbp), %rcx
	callq	Constrained
.LBB2_18:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_20
# BB#19:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_23
.LBB2_20:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_21
# BB#22:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_23
.LBB2_21:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_23:
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
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_26
# BB#24:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_26
# BB#25:
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
.LBB2_26:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_29
# BB#27:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_29
# BB#28:
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
.LBB2_29:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	%rax, (%rax)
	je	.LBB2_96
# BB#30:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	jmp	.LBB2_31
	.align	16, 0x90
.LBB2_32:                               #   in Loop: Header=BB2_31 Depth=1
	movq	-24(%rbp), %rax
.LBB2_31:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_32
# BB#33:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB2_35
# BB#34:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_35:
	movq	-24(%rbp), %rax
	andw	$-129, 44(%rax)
	movq	-24(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-24(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-24(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$3072, %ecx             # imm = 0xC00
	movw	%cx, 44(%rax)
	movq	-24(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$49152, %ecx            # imm = 0xC000
	movw	%cx, 44(%rax)
	movq	-24(%rbp), %rax
	movw	$4096, 46(%rax)         # imm = 0x1000
	movq	-24(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_46
# BB#36:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB2_38
# BB#37:
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
.LBB2_38:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_40
# BB#39:
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
.LBB2_40:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_42
# BB#41:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_43
.LBB2_42:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_44
.LBB2_43:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_44:
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
	jne	.LBB2_46
# BB#45:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB2_46:
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.26, %esi
	callq	MakeWord
	movq	%rax, -32(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_48
# BB#47:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_51
.LBB2_48:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_49
# BB#50:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_51
.LBB2_49:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_51:
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
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_54
# BB#52:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_54
# BB#53:
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
.LBB2_54:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_57
# BB#55:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_57
# BB#56:
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
.LBB2_57:
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.27, %esi
	callq	MakeWord
	movq	%rax, -32(%rbp)
	movl	$0, 56(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-32(%rbp), %rax
	andl	$-4190209, 40(%rax)     # imm = 0xFFFFFFFFFFC00FFF
	movq	-32(%rbp), %rax
	andl	$-4096, 40(%rax)        # imm = 0xFFFFFFFFFFFFF000
	movq	-32(%rbp), %rax
	andl	$-4194305, 40(%rax)     # imm = 0xFFFFFFFFFFBFFFFF
	movq	-32(%rbp), %rax
	andl	$2147483647, 40(%rax)   # imm = 0x7FFFFFFF
	movq	-32(%rbp), %rax
	andl	$-528482305, 40(%rax)   # imm = 0xFFFFFFFFE07FFFFF
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_59
# BB#58:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_62
.LBB2_59:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_60
# BB#61:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_62
.LBB2_60:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_62:
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
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_65
# BB#63:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_65
# BB#64:
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
.LBB2_65:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_68
# BB#66:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_68
# BB#67:
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
.LBB2_68:
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_70
# BB#69:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_73
.LBB2_70:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_71
# BB#72:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_73
.LBB2_71:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_73:
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
	movq	%rax, -24(%rbp)
	movb	$1, 41(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 42(%rax)
	movq	-32(%rbp), %rax
	movw	34(%rax), %ax
	movq	-24(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-32(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-24(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-32(%rbp), %rax
	andl	36(%rax), %esi
	movq	-24(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-24(%rbp), %rax
	andw	$-129, 44(%rax)
	movq	-24(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-24(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-24(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-24(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 44(%rax)
	movq	-24(%rbp), %rax
	movw	$567, 46(%rax)          # imm = 0x237
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.28, %esi
	callq	MakeWord
	movq	%rax, -32(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_75
# BB#74:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_78
.LBB2_75:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_76
# BB#77:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_78
.LBB2_76:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_78:
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
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_81
# BB#79:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_81
# BB#80:
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
.LBB2_81:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_84
# BB#82:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_84
# BB#83:
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
.LBB2_84:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_86
# BB#85:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_89
.LBB2_86:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_87
# BB#88:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_89
.LBB2_87:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_89:
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
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_92
# BB#90:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_92
# BB#91:
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
.LBB2_92:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_95
# BB#93:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_95
# BB#94:
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
.LBB2_95:
	movq	-8(%rbp), %rax
	orw	$1024, 42(%rax)         # imm = 0x400
.LBB2_96:
	movq	-8(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB2_111
# BB#97:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_111
# BB#98:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_99
	.align	16, 0x90
.LBB2_100:                              #   in Loop: Header=BB2_99 Depth=1
	movq	-32(%rbp), %rax
.LBB2_99:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_100
# BB#101:
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	160(%rcx), %edx
	leal	-1(%rax,%rdx), %eax
	movl	%eax, 160(%rcx)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB2_103
# BB#102:
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
.LBB2_103:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_105
# BB#104:
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
.LBB2_105:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_107
# BB#106:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_108
.LBB2_107:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_109
.LBB2_111:
	movq	-8(%rbp), %rax
	movl	$65535, 160(%rax)       # imm = 0xFFFF
	jmp	.LBB2_112
.LBB2_108:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_109:
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
	jne	.LBB2_112
# BB#110:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB2_112:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	GazumpOptimize, .Lfunc_end2-GazumpOptimize
	.cfi_endproc

	.globl	CalculateOptimize
	.align	16, 0x90
	.type	CalculateOptimize,@function
CalculateOptimize:                      # @CalculateOptimize
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
	subq	$664, %rsp              # imm = 0x298
.Ltmp13:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	104(%rdi), %rax
	cmpq	%rax, (%rax)
	jne	.LBB3_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_2:
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_3 Depth=1
	movq	-96(%rbp), %rax
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_4
# BB#5:
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB3_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.30, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_7:
	movq	-96(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB3_9
# BB#8:
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
.LBB3_9:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_11
# BB#10:
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
.LBB3_11:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_13
# BB#12:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_14
.LBB3_13:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_15
.LBB3_14:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_15:
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
	jne	.LBB3_17
# BB#16:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB3_17:
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	jne	.LBB3_19
# BB#18:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.31, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_19:
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB3_21
# BB#20:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.32, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_21:
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	(%rax), %rax
	jmp	.LBB3_22
	.align	16, 0x90
.LBB3_23:                               #   in Loop: Header=BB3_22 Depth=1
	movq	-32(%rbp), %rax
.LBB3_22:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_23
# BB#24:
	xorl	%edi, %edi
	callq	EnterErrorBlock
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	addq	$64, %rsi
	movq	104(%rax), %rdi
	movq	112(%rax), %rdx
	leaq	-640(%rbp), %rax
	movq	%rax, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	callq	FillObject
	movq	-16(%rbp), %rcx
	movq	%rax, 104(%rcx)
	xorl	%edi, %edi
	callq	LeaveErrorBlock
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	jne	.LBB3_123
# BB#25:
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	je	.LBB3_123
# BB#26:
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_28
# BB#27:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_31
.LBB3_28:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_29
# BB#30:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_31
.LBB3_29:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_31:
	movq	zz_hold(%rip), %rax
	movb	$2, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -48(%rbp)
	movq	OptGallSym(%rip), %rcx
	movq	%rcx, 80(%rax)
	movq	-16(%rbp), %rax
	movw	34(%rax), %ax
	movq	-48(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-16(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-16(%rbp), %rax
	andl	36(%rax), %esi
	movq	-48(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movzbl	zz_lengths+10(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_33
# BB#32:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_36
.LBB3_33:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_34
# BB#35:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_36
.LBB3_34:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_36:
	movq	zz_hold(%rip), %rax
	movb	$10, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -56(%rbp)
	movq	OptGallSym(%rip), %rdi
	movl	$146, %esi
	callq	ChildSym
	movq	-56(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_38
# BB#37:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_41
.LBB3_38:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_39
# BB#40:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_41
.LBB3_39:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_41:
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
	je	.LBB3_44
# BB#42:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_44
# BB#43:
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
.LBB3_44:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_47
# BB#45:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_47
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
.LBB3_47:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_49
# BB#48:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_52
.LBB3_49:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_50
# BB#51:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_52
.LBB3_50:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_52:
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
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_54
# BB#53:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_57
.LBB3_54:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_55
# BB#56:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_57
.LBB3_55:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_57:
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
	je	.LBB3_60
# BB#58:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_60
# BB#59:
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
.LBB3_60:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_63
# BB#61:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_63
# BB#62:
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
.LBB3_63:
	cmpl	$0, -640(%rbp)
	je	.LBB3_75
# BB#64:
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.18, %esi
	callq	MakeWord
	movq	%rax, -80(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_66
# BB#65:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_69
.LBB3_66:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_67
# BB#68:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_69
.LBB3_67:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_69:
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
	je	.LBB3_72
# BB#70:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_72
# BB#71:
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
.LBB3_72:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_75
# BB#73:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_75
# BB#74:
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
.LBB3_75:
	movl	$0, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movb	$1, %bl
	jmp	.LBB3_76
	.align	16, 0x90
.LBB3_120:                              #   in Loop: Header=BB3_76 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB3_76:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_78 Depth 2
                                        #     Child Loop BB3_82 Depth 2
                                        #       Child Loop BB3_84 Depth 3
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	104(%rcx), %rax
	je	.LBB3_121
# BB#77:                                #   in Loop: Header=BB3_76 Depth=1
	movq	-72(%rbp), %rax
	jmp	.LBB3_78
	.align	16, 0x90
.LBB3_79:                               #   in Loop: Header=BB3_78 Depth=2
	movq	-32(%rbp), %rax
.LBB3_78:                               #   Parent Loop BB3_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_79
# BB#80:                                #   in Loop: Header=BB3_76 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB3_120
# BB#81:                                #   in Loop: Header=BB3_76 Depth=1
	movl	$0, -100(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB3_82
	.align	16, 0x90
.LBB3_88:                               #   in Loop: Header=BB3_82 Depth=2
	movq	-40(%rbp), %rax
.LBB3_82:                               #   Parent Loop BB3_76 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_84 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB3_89
# BB#83:                                #   in Loop: Header=BB3_82 Depth=2
	movq	-40(%rbp), %rax
	jmp	.LBB3_84
	.align	16, 0x90
.LBB3_85:                               #   in Loop: Header=BB3_84 Depth=3
	movq	-24(%rbp), %rax
.LBB3_84:                               #   Parent Loop BB3_76 Depth=1
                                        #     Parent Loop BB3_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_85
# BB#86:                                #   in Loop: Header=BB3_82 Depth=2
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB3_88
# BB#87:                                #   in Loop: Header=BB3_82 Depth=2
	incl	-100(%rbp)
	jmp	.LBB3_88
	.align	16, 0x90
.LBB3_89:                               #   in Loop: Header=BB3_76 Depth=1
	movl	-100(%rbp), %edi
	callq	StringInt
	movq	-32(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movq	%rax, %rsi
	callq	MakeWord
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB3_109
# BB#90:                                #   in Loop: Header=BB3_76 Depth=1
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_92
# BB#91:                                #   in Loop: Header=BB3_76 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_95
.LBB3_92:                               #   in Loop: Header=BB3_76 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_93
# BB#94:                                #   in Loop: Header=BB3_76 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_95
.LBB3_93:                               #   in Loop: Header=BB3_76 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_95:                               #   in Loop: Header=BB3_76 Depth=1
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
	movq	%rax, -88(%rbp)
	andb	$127, 44(%rax)
	movq	-88(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-88(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 44(%rax)
	movq	-88(%rbp), %rax
	movw	$120, 46(%rax)
	movl	-104(%rbp), %eax
	incl	%eax
	movl	%eax, -104(%rbp)
	cltq
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$35, %rcx
	addl	%edx, %ecx
	shll	$2, %ecx
	leal	(%rcx,%rcx,4), %ecx
	cmpl	%ecx, %eax
	je	.LBB3_96
# BB#97:                                #   in Loop: Header=BB3_76 Depth=1
	movq	-88(%rbp), %rax
	movb	$1, 41(%rax)
	movq	-88(%rbp), %rax
	movb	$0, 42(%rax)
	jmp	.LBB3_98
.LBB3_96:                               #   in Loop: Header=BB3_76 Depth=1
	movq	-88(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-88(%rbp), %rax
	movb	$1, 42(%rax)
.LBB3_98:                               #   in Loop: Header=BB3_76 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_100
# BB#99:                                #   in Loop: Header=BB3_76 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_103
.LBB3_100:                              #   in Loop: Header=BB3_76 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_101
# BB#102:                               #   in Loop: Header=BB3_76 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_103
.LBB3_101:                              #   in Loop: Header=BB3_76 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_103:                              #   in Loop: Header=BB3_76 Depth=1
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
	je	.LBB3_106
# BB#104:                               #   in Loop: Header=BB3_76 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_106
# BB#105:                               #   in Loop: Header=BB3_76 Depth=1
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
.LBB3_106:                              #   in Loop: Header=BB3_76 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_109
# BB#107:                               #   in Loop: Header=BB3_76 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_109
# BB#108:                               #   in Loop: Header=BB3_76 Depth=1
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
.LBB3_109:                              #   in Loop: Header=BB3_76 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_111
# BB#110:                               #   in Loop: Header=BB3_76 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_114
	.align	16, 0x90
.LBB3_111:                              #   in Loop: Header=BB3_76 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_112
# BB#113:                               #   in Loop: Header=BB3_76 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_114
.LBB3_112:                              #   in Loop: Header=BB3_76 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_114:                              #   in Loop: Header=BB3_76 Depth=1
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
	je	.LBB3_117
# BB#115:                               #   in Loop: Header=BB3_76 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_117
# BB#116:                               #   in Loop: Header=BB3_76 Depth=1
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
.LBB3_117:                              #   in Loop: Header=BB3_76 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_120
# BB#118:                               #   in Loop: Header=BB3_76 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_120
# BB#119:                               #   in Loop: Header=BB3_76 Depth=1
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
	jmp	.LBB3_120
.LBB3_121:
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	DisposeObject
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	DisposeObject
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
	cmpl	$0, AllowCrossDb(%rip)
	je	.LBB3_123
# BB#122:
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	leaq	-624(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strcat
	movq	-16(%rbp), %rax
	movl	$1048575, %edi          # imm = 0xFFFFF
	andl	36(%rax), %edi
	callq	StringInt
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
	movq	-16(%rbp), %rdi
	addq	$32, %rdi
	callq	DatabaseFileNum
	movw	%ax, -626(%rbp)
	movq	-48(%rbp), %rdi
	movzwl	-626(%rbp), %esi
	leaq	-632(%rbp), %rdx
	leaq	-636(%rbp), %rcx
	callq	AppendToFile
	movq	NewCrossDb(%rip), %rdi
	movq	OptGallSym(%rip), %rdx
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movslq	-632(%rbp), %rax
	movl	-636(%rbp), %ecx
	movzwl	-626(%rbp), %esi
	movl	%ecx, 16(%rsp)
	movq	%rax, 8(%rsp)
	movl	%esi, (%rsp)
	movl	$0, 24(%rsp)
	xorl	%esi, %esi
	movl	$.L.str.33, %r9d
	movq	%rbx, %rcx
	callq	DbInsert
.LBB3_123:
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	CalculateOptimize, .Lfunc_end3-CalculateOptimize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"FindOptimize: type(x) != CLOSURE!"
	.size	.L.str.1, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"FindOptimize: x has no target!"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"FindOptimize: Down(PAR)!"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"FindOptimize: res == nilobj!"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"unable to evaluate %s parameter, assuming value is No"
	.size	.L.str.5, 54

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"@Optimize"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Yes"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"No"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"value of %s operator is neither Yes nor No, assuming No"
	.size	.L.str.9, 56

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"."
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"SetOptimize: res == nilobj!"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"SetOptimize: type(res) != CLOSURE!"
	.size	.L.str.12, 35

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"SetOptimize: actual(res) != Opt!"
	.size	.L.str.13, 33

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"SetOptimize: Down(res) == res!"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"SetOptimize: type(y) != PAR!"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"SetOptimize: type(y) != ACAT!"
	.size	.L.str.16, 30

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"SetOptimize: type(y) != ACAT (2)!"
	.size	.L.str.17, 34

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"h"
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%d"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"SetOptimize: num <= 0!"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"SetOptimize: type(z)!"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"word is too long"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"GazumpOptimize: type(hd) != HEAD!"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"GazumpOptimize: opt_c!"
	.size	.L.str.24, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"FlushGalley: type(g) != GAP_OBJ!"
	.size	.L.str.25, 33

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"1rt"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.zero	1
	.size	.L.str.27, 1

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"1c"
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"CO!"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"CalculateOptimize: type(last)!"
	.size	.L.str.30, 31

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"KillGalley: no opt_constraints!"
	.size	.L.str.31, 32

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"KillGalleyo!"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"0"
	.size	.L.str.33, 2


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
