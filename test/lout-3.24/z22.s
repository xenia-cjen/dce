	.text
	.file	"z22.opt"
	.globl	Interpose
	.align	16, 0x90
	.type	Interpose,@function
Interpose:                              # @Interpose
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movslq	-12(%rbp), %rax
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
	movb	-12(%rbp), %al
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
	movq	-32(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-32(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-32(%rbp), %rax
	andl	36(%rax), %esi
	movq	-40(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_7
# BB#6:
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
.LBB0_7:
	movq	%rax, xx_tmp(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_10
# BB#8:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_10
# BB#9:
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
.LBB0_10:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_12
# BB#11:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_15
.LBB0_12:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_13
# BB#14:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_15
.LBB0_13:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_15:
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
	je	.LBB0_18
# BB#16:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_18
# BB#17:
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
.LBB0_18:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_21
# BB#19:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_21
# BB#20:
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
.LBB0_21:
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-32(%rbp), %rax
	movl	52(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-32(%rbp), %rax
	movl	60(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$1610612736, %edx       # imm = 0x60000000
	andl	40(%rax), %edx
	movl	$-1610612737, %eax      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Interpose, .Lfunc_end0-Interpose
	.cfi_endproc

	.globl	FlushInners
	.align	16, 0x90
	.type	FlushInners,@function
FlushInners:                            # @FlushInners
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	testq	%rsi, %rsi
	je	.LBB1_8
# BB#1:
	movq	-24(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB1_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_3:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB1_4
	.align	16, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_4 Depth=1
	movq	-56(%rbp), %rax
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_5
# BB#6:
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	PrintSym(%rip), %rax
	jne	.LBB1_8
# BB#7:
	movq	-16(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB1_51
	.align	16, 0x90
.LBB1_22:                               #   in Loop: Header=BB1_8 Depth=1
	movq	no_fpos(%rip), %rbx
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.5, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
                                        #     Child Loop BB1_34 Depth 2
                                        #     Child Loop BB1_38 Depth 2
                                        #     Child Loop BB1_44 Depth 2
                                        #     Child Loop BB1_28 Depth 2
	movq	-16(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_46
# BB#9:                                 #   in Loop: Header=BB1_8 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_10 Depth=2
	movq	-32(%rbp), %rax
.LBB1_10:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_11
# BB#12:                                #   in Loop: Header=BB1_8 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_14
# BB#13:                                #   in Loop: Header=BB1_8 Depth=1
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
.LBB1_14:                               #   in Loop: Header=BB1_8 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_16
# BB#15:                                #   in Loop: Header=BB1_8 Depth=1
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
.LBB1_16:                               #   in Loop: Header=BB1_8 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_18
# BB#17:                                #   in Loop: Header=BB1_8 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_19
.LBB1_18:                               #   in Loop: Header=BB1_8 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_8 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_20:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	leal	-119(%rax), %ecx
	cmpl	$5, %ecx
	jbe	.LBB1_23
# BB#21:                                #   in Loop: Header=BB1_8 Depth=1
	cmpl	$133, %eax
	jne	.LBB1_22
	jmp	.LBB1_8
	.align	16, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_8 Depth=1
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_24:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-32(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_8
# BB#25:                                #   in Loop: Header=BB1_8 Depth=1
	movq	-32(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_27
# BB#26:                                #   in Loop: Header=BB1_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_27:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_28
	.align	16, 0x90
.LBB1_29:                               #   in Loop: Header=BB1_28 Depth=2
	movq	-40(%rbp), %rax
.LBB1_28:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_29
	jmp	.LBB1_30
.LBB1_33:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_34
	.align	16, 0x90
.LBB1_35:                               #   in Loop: Header=BB1_34 Depth=2
	movq	-48(%rbp), %rax
.LBB1_34:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_35
# BB#36:                                #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rcx
	cmpq	16(%rax), %rcx
	je	.LBB1_8
# BB#37:                                #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB1_38
	.align	16, 0x90
.LBB1_39:                               #   in Loop: Header=BB1_38 Depth=2
	movq	-48(%rbp), %rax
.LBB1_38:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_39
# BB#40:                                #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$125, %eax
	je	.LBB1_42
# BB#41:                                #   in Loop: Header=BB1_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_42:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$5, %eax
	jae	.LBB1_8
# BB#43:                                #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rax
	andw	$-33, 42(%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB1_44
	.align	16, 0x90
.LBB1_45:                               #   in Loop: Header=BB1_44 Depth=2
	movq	-40(%rbp), %rax
.LBB1_44:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_45
.LBB1_30:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB1_32
# BB#31:                                #   in Loop: Header=BB1_8 Depth=1
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$11, %eax
	jb	.LBB1_8
.LBB1_32:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-40(%rbp), %rdi
	callq	FlushGalley
	jmp	.LBB1_8
.LBB1_46:
	movq	-16(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_48
# BB#47:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_49
.LBB1_48:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_50
.LBB1_49:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_50:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_51:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	FlushInners, .Lfunc_end1-FlushInners
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_8
	.quad	.LBB1_24
	.quad	.LBB1_22
	.quad	.LBB1_24
	.quad	.LBB1_22
	.quad	.LBB1_33

	.text
	.globl	ExpandRecursives
	.align	16, 0x90
	.type	ExpandRecursives,@function
ExpandRecursives:                       # @ExpandRecursives
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	$8388607, -24(%rbp)     # imm = 0x7FFFFF
	movl	$8388607, -20(%rbp)     # imm = 0x7FFFFF
	movl	$8388607, -16(%rbp)     # imm = 0x7FFFFF
	movq	$0, -88(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB2_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_2
	.align	16, 0x90
.LBB2_87:                               #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_63 Depth 2
                                        #     Child Loop BB2_73 Depth 2
                                        #     Child Loop BB2_90 Depth 2
                                        #     Child Loop BB2_110 Depth 2
                                        #     Child Loop BB2_120 Depth 2
                                        #     Child Loop BB2_133 Depth 2
                                        #     Child Loop BB2_143 Depth 2
                                        #     Child Loop BB2_158 Depth 2
                                        #     Child Loop BB2_168 Depth 2
	movq	-8(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_195
# BB#3:                                 #   in Loop: Header=BB2_2 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_4
	.align	16, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_4 Depth=2
	movq	-64(%rbp), %rax
.LBB2_4:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_5
# BB#6:                                 #   in Loop: Header=BB2_2 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_8
# BB#7:                                 #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_8:                                #   in Loop: Header=BB2_2 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_10
# BB#9:                                 #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_10:                               #   in Loop: Header=BB2_2 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_12
# BB#11:                                #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_13
.LBB2_12:                               #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_14
	.align	16, 0x90
.LBB2_13:                               #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_14:                               #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$123, %eax
	je	.LBB2_16
# BB#15:                                #   in Loop: Header=BB2_2 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_16:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -72(%rbp)
	movzbl	zz_lengths+8(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_18
# BB#17:                                #   in Loop: Header=BB2_2 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_21
	.align	16, 0x90
.LBB2_18:                               #   in Loop: Header=BB2_2 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_19
# BB#20:                                #   in Loop: Header=BB2_2 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_21
.LBB2_19:                               #   in Loop: Header=BB2_2 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_21:                               #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$8, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, 80(%rax)
	movq	-112(%rbp), %rax
	orw	$128, 42(%rax)
	movq	-112(%rbp), %rax
	andw	$-4097, 42(%rax)        # imm = 0xFFFFFFFFFFFFEFFF
	movq	-112(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-112(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-112(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-112(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-112(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-112(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	43(%rax), %eax
	movq	-112(%rbp), %rcx
	movzwl	42(%rcx), %edx
	andl	$32, %eax
	shll	$3, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movq	-112(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-112(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-112(%rbp), %rax
	movb	$-127, 40(%rax)
	movq	-112(%rbp), %rax
	andw	$-3, 42(%rax)
	movq	-72(%rbp), %rdi
	leaq	32(%rdi), %rsi
	callq	CopyObject
	movq	%rax, -120(%rbp)
	movq	%rax, %rdi
	callq	DetachEnv
	movq	%rax, -128(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_23
# BB#22:                                #   in Loop: Header=BB2_2 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_26
	.align	16, 0x90
.LBB2_23:                               #   in Loop: Header=BB2_2 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_24
# BB#25:                                #   in Loop: Header=BB2_2 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_26
.LBB2_24:                               #   in Loop: Header=BB2_2 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_26:                               #   in Loop: Header=BB2_2 Depth=1
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
	movq	-112(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_29
# BB#27:                                #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_29
# BB#28:                                #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_29:                               #   in Loop: Header=BB2_2 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_32
# BB#30:                                #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_32
# BB#31:                                #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_32:                               #   in Loop: Header=BB2_2 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_34
# BB#33:                                #   in Loop: Header=BB2_2 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_37
	.align	16, 0x90
.LBB2_34:                               #   in Loop: Header=BB2_2 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_35
# BB#36:                                #   in Loop: Header=BB2_2 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_37
.LBB2_35:                               #   in Loop: Header=BB2_2 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_37:                               #   in Loop: Header=BB2_2 Depth=1
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
	je	.LBB2_40
# BB#38:                                #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_40
# BB#39:                                #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_40:                               #   in Loop: Header=BB2_2 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-112(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_43
# BB#41:                                #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_43
# BB#42:                                #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_43:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-112(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-72(%rbp), %rax
	movzwl	42(%rax), %edx
	shrl	$4, %edx
	andl	$1, %edx
	xorl	%ecx, %ecx
	testb	$1, 43(%rdi)
	je	.LBB2_45
# BB#44:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-72(%rbp), %rax
	movzwl	42(%rax), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
.LBB2_45:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-72(%rbp), %r8
	addq	$64, %r8
	leaq	-96(%rbp), %rax
	movq	%rax, 40(%rsp)
	leaq	-104(%rbp), %rax
	movq	%rax, 32(%rsp)
	leaq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r8, (%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 16(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	SizeGalley
	movq	-72(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-136(%rbp), %rcx
	xorl	%edx, %edx
	callq	Constrained
	movq	-112(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB2_48
# BB#46:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-112(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jg	.LBB2_48
# BB#47:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-112(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB2_48
# BB#88:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-72(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$4, %eax
	jb	.LBB2_130
# BB#89:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-72(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-136(%rbp), %rcx
	movl	$1, %edx
	callq	Constrained
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_90
	.align	16, 0x90
.LBB2_91:                               #   in Loop: Header=BB2_90 Depth=2
	movq	-80(%rbp), %rax
.LBB2_90:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_91
# BB#92:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-80(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB2_95
# BB#93:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-80(%rbp), %rax
	movl	52(%rax), %ecx
	addl	60(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jg	.LBB2_95
# BB#94:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-80(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB2_95
.LBB2_130:                              #   in Loop: Header=BB2_2 Depth=1
	movq	-72(%rbp), %rdi
	movq	-112(%rbp), %rax
	movl	48(%rax), %esi
	movl	56(%rax), %edx
	xorl	%ecx, %ecx
	callq	AdjustSize
	movq	-72(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$4, %eax
	jb	.LBB2_132
# BB#131:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rax
	movl	52(%rax), %esi
	movl	60(%rax), %edx
	movl	$1, %ecx
	callq	AdjustSize
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movl	$19, %esi
	movq	%rdx, %rcx
	callq	Interpose
.LBB2_132:                              #   in Loop: Header=BB2_2 Depth=1
	movq	-112(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movl	$1, %ecx
	movq	%rdi, %rsi
	callq	Promote
	movq	-112(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_133
	.align	16, 0x90
.LBB2_142:                              #   in Loop: Header=BB2_133 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_133:                              #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_143
# BB#134:                               #   in Loop: Header=BB2_133 Depth=2
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_136
# BB#135:                               #   in Loop: Header=BB2_133 Depth=2
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
.LBB2_136:                              #   in Loop: Header=BB2_133 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_138
# BB#137:                               #   in Loop: Header=BB2_133 Depth=2
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
.LBB2_138:                              #   in Loop: Header=BB2_133 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_140
# BB#139:                               #   in Loop: Header=BB2_133 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_141
.LBB2_140:                              #   in Loop: Header=BB2_133 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_142
	.align	16, 0x90
.LBB2_141:                              #   in Loop: Header=BB2_133 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_142
	.align	16, 0x90
.LBB2_152:                              #   in Loop: Header=BB2_143 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_143:                              #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_153
# BB#144:                               #   in Loop: Header=BB2_143 Depth=2
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_146
# BB#145:                               #   in Loop: Header=BB2_143 Depth=2
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
.LBB2_146:                              #   in Loop: Header=BB2_143 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_148
# BB#147:                               #   in Loop: Header=BB2_143 Depth=2
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
.LBB2_148:                              #   in Loop: Header=BB2_143 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_150
# BB#149:                               #   in Loop: Header=BB2_143 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_151
.LBB2_150:                              #   in Loop: Header=BB2_143 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_152
	.align	16, 0x90
.LBB2_151:                              #   in Loop: Header=BB2_143 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_152
	.align	16, 0x90
.LBB2_48:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB2_50
# BB#49:                                #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_50:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_52
# BB#51:                                #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_52:                               #   in Loop: Header=BB2_2 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_54
# BB#53:                                #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_55
.LBB2_54:                               #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_56
	.align	16, 0x90
.LBB2_55:                               #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_56:                               #   in Loop: Header=BB2_2 Depth=1
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
	jne	.LBB2_58
# BB#57:                                #   in Loop: Header=BB2_2 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB2_58:                               #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB2_60
# BB#59:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-96(%rbp), %rdi
	callq	DisposeObject
.LBB2_60:                               #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB2_62
# BB#61:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-104(%rbp), %rdi
	callq	DisposeObject
.LBB2_62:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_63
	.align	16, 0x90
.LBB2_72:                               #   in Loop: Header=BB2_63 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_63:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_73
# BB#64:                                #   in Loop: Header=BB2_63 Depth=2
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_66
# BB#65:                                #   in Loop: Header=BB2_63 Depth=2
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
.LBB2_66:                               #   in Loop: Header=BB2_63 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_68
# BB#67:                                #   in Loop: Header=BB2_63 Depth=2
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
.LBB2_68:                               #   in Loop: Header=BB2_63 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_70
# BB#69:                                #   in Loop: Header=BB2_63 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_71
.LBB2_70:                               #   in Loop: Header=BB2_63 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_72
	.align	16, 0x90
.LBB2_71:                               #   in Loop: Header=BB2_63 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_72
	.align	16, 0x90
.LBB2_82:                               #   in Loop: Header=BB2_73 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_73:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_83
# BB#74:                                #   in Loop: Header=BB2_73 Depth=2
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_76
# BB#75:                                #   in Loop: Header=BB2_73 Depth=2
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
.LBB2_76:                               #   in Loop: Header=BB2_73 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_78
# BB#77:                                #   in Loop: Header=BB2_73 Depth=2
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
.LBB2_78:                               #   in Loop: Header=BB2_73 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_80
# BB#79:                                #   in Loop: Header=BB2_73 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_81
.LBB2_80:                               #   in Loop: Header=BB2_73 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_82
	.align	16, 0x90
.LBB2_81:                               #   in Loop: Header=BB2_73 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_82
.LBB2_153:                              #   in Loop: Header=BB2_2 Depth=1
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_155
# BB#154:                               #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_156
.LBB2_155:                              #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_157
.LBB2_95:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB2_97
# BB#96:                                #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_97:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_99
# BB#98:                                #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_99:                               #   in Loop: Header=BB2_2 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_101
# BB#100:                               #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_102
.LBB2_101:                              #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_103
.LBB2_156:                              #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_157:                              #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-64(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_158
	.align	16, 0x90
.LBB2_167:                              #   in Loop: Header=BB2_158 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_158:                              #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_168
# BB#159:                               #   in Loop: Header=BB2_158 Depth=2
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_161
# BB#160:                               #   in Loop: Header=BB2_158 Depth=2
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
.LBB2_161:                              #   in Loop: Header=BB2_158 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_163
# BB#162:                               #   in Loop: Header=BB2_158 Depth=2
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
.LBB2_163:                              #   in Loop: Header=BB2_158 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_165
# BB#164:                               #   in Loop: Header=BB2_158 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_166
.LBB2_165:                              #   in Loop: Header=BB2_158 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_167
	.align	16, 0x90
.LBB2_166:                              #   in Loop: Header=BB2_158 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_167
	.align	16, 0x90
.LBB2_177:                              #   in Loop: Header=BB2_168 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_168:                              #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_178
# BB#169:                               #   in Loop: Header=BB2_168 Depth=2
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_171
# BB#170:                               #   in Loop: Header=BB2_168 Depth=2
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
.LBB2_171:                              #   in Loop: Header=BB2_168 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_173
# BB#172:                               #   in Loop: Header=BB2_168 Depth=2
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
.LBB2_173:                              #   in Loop: Header=BB2_168 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_175
# BB#174:                               #   in Loop: Header=BB2_168 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_176
.LBB2_175:                              #   in Loop: Header=BB2_168 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_177
	.align	16, 0x90
.LBB2_176:                              #   in Loop: Header=BB2_168 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_177
.LBB2_178:                              #   in Loop: Header=BB2_2 Depth=1
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_180
# BB#179:                               #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_181
.LBB2_180:                              #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_182
.LBB2_181:                              #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_182:                              #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	cmpq	$0, -96(%rbp)
	je	.LBB2_184
# BB#183:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-96(%rbp), %rdi
	xorl	%esi, %esi
	callq	FlushInners
.LBB2_184:                              #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB2_2
# BB#185:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, xx_res(%rip)
	movq	-104(%rbp), %rcx
	movq	%rcx, xx_hold(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB2_187
# BB#186:                               #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_187:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_190
# BB#188:                               #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_190
# BB#189:                               #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_190:                              #   in Loop: Header=BB2_2 Depth=1
	movq	xx_hold(%rip), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 8(%rcx)
	je	.LBB2_192
# BB#191:                               #   in Loop: Header=BB2_2 Depth=1
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
	movq	zz_res(%rip), %rax
.LBB2_192:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_83
# BB#193:                               #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_83
# BB#194:                               #   in Loop: Header=BB2_2 Depth=1
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
	jmp	.LBB2_83
.LBB2_102:                              #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_103:                              #   in Loop: Header=BB2_2 Depth=1
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
	jne	.LBB2_105
# BB#104:                               #   in Loop: Header=BB2_2 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB2_105:                              #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB2_107
# BB#106:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-96(%rbp), %rdi
	callq	DisposeObject
.LBB2_107:                              #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB2_109
# BB#108:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-104(%rbp), %rdi
	callq	DisposeObject
.LBB2_109:                              #   in Loop: Header=BB2_2 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_110
	.align	16, 0x90
.LBB2_119:                              #   in Loop: Header=BB2_110 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_110:                              #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_120
# BB#111:                               #   in Loop: Header=BB2_110 Depth=2
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_113
# BB#112:                               #   in Loop: Header=BB2_110 Depth=2
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
.LBB2_113:                              #   in Loop: Header=BB2_110 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_115
# BB#114:                               #   in Loop: Header=BB2_110 Depth=2
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
.LBB2_115:                              #   in Loop: Header=BB2_110 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_117
# BB#116:                               #   in Loop: Header=BB2_110 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_118
.LBB2_117:                              #   in Loop: Header=BB2_110 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_119
	.align	16, 0x90
.LBB2_118:                              #   in Loop: Header=BB2_110 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_119
	.align	16, 0x90
.LBB2_129:                              #   in Loop: Header=BB2_120 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_120:                              #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_83
# BB#121:                               #   in Loop: Header=BB2_120 Depth=2
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_123
# BB#122:                               #   in Loop: Header=BB2_120 Depth=2
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
.LBB2_123:                              #   in Loop: Header=BB2_120 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_125
# BB#124:                               #   in Loop: Header=BB2_120 Depth=2
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
.LBB2_125:                              #   in Loop: Header=BB2_120 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_127
# BB#126:                               #   in Loop: Header=BB2_120 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_128
.LBB2_127:                              #   in Loop: Header=BB2_120 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_129
	.align	16, 0x90
.LBB2_128:                              #   in Loop: Header=BB2_120 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_129
	.align	16, 0x90
.LBB2_83:                               #   in Loop: Header=BB2_2 Depth=1
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_85
# BB#84:                                #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_86
.LBB2_85:                               #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_87
	.align	16, 0x90
.LBB2_86:                               #   in Loop: Header=BB2_2 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_87
.LBB2_195:
	movq	-8(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_197
# BB#196:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_198
.LBB2_197:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_199
.LBB2_198:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_199:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ExpandRecursives, .Lfunc_end2-ExpandRecursives
	.cfi_endproc

	.globl	Promote
	.align	16, 0x90
	.type	Promote,@function
Promote:                                # @Promote
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	je	.LBB3_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_2:
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_5
# BB#3:
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB3_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_5:
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB3_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_7:
	movq	-64(%rbp), %rax
	movb	$122, 32(%rax)
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB3_14
# BB#8:
	movq	-56(%rbp), %rax
	jmp	.LBB3_9
	.align	16, 0x90
.LBB3_10:                               #   in Loop: Header=BB3_9 Depth=1
	movq	-96(%rbp), %rax
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_10
# BB#11:
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB3_13
# BB#12:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_13:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB3_30
.LBB3_14:
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_16
# BB#15:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_19
.LBB3_16:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_17
# BB#18:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_19
.LBB3_17:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_19:
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
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-48(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-48(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-96(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-96(%rbp), %rax
	movb	$1, 42(%rax)
	movq	-96(%rbp), %rax
	andw	$-129, 44(%rax)
	movq	-96(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movzwl	-68(%rbp), %eax
	movq	-96(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$1, %eax
	shll	$9, %eax
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-96(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-96(%rbp), %rax
	andw	$8191, 44(%rax)         # imm = 0x1FFF
	movq	-96(%rbp), %rax
	movw	$0, 46(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_21
# BB#20:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
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
	je	.LBB3_27
# BB#25:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_27
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
.LBB3_27:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_30
# BB#28:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_30
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
.LBB3_30:
	movq	-48(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB3_98
# BB#31:
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	%rax, (%rax)
	je	.LBB3_36
# BB#32:
	movq	-48(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$10, %eax
	jae	.LBB3_33
.LBB3_36:
	movq	$0, -168(%rbp)
	jmp	.LBB3_37
.LBB3_33:
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	jmp	.LBB3_34
	.align	16, 0x90
.LBB3_35:                               #   in Loop: Header=BB3_34 Depth=1
	movq	-168(%rbp), %rax
.LBB3_34:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_35
.LBB3_37:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1048575, %r14d         # imm = 0xFFFFF
	movl	$-1048576, %r15d        # imm = 0xFFFFFFFFFFF00000
	movb	$1, %bl
	movl	$-2147483648, %r12d     # imm = 0xFFFFFFFF80000000
	movl	$2147483647, %r13d      # imm = 0x7FFFFFFF
	jmp	.LBB3_38
	.align	16, 0x90
.LBB3_97:                               #   in Loop: Header=BB3_38 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB3_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_40 Depth 2
                                        #     Child Loop BB3_58 Depth 2
	movq	-88(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB3_98
# BB#39:                                #   in Loop: Header=BB3_38 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB3_40
	.align	16, 0x90
.LBB3_41:                               #   in Loop: Header=BB3_40 Depth=2
	movq	-96(%rbp), %rax
.LBB3_40:                               #   Parent Loop BB3_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_41
# BB#42:                                #   in Loop: Header=BB3_38 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB3_82
# BB#43:                                #   in Loop: Header=BB3_38 Depth=1
	cmpq	$0, -168(%rbp)
	je	.LBB3_97
# BB#44:                                #   in Loop: Header=BB3_38 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB3_72
# BB#45:                                #   in Loop: Header=BB3_38 Depth=1
	movq	-96(%rbp), %rax
	movw	34(%rax), %ax
	movq	-168(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-96(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-168(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-96(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r15d, %eax
	movq	-168(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-96(%rbp), %rax
	movzwl	44(%rax), %eax
	movq	-168(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-96(%rbp), %rax
	movzbl	45(%rax), %eax
	andl	$1, %eax
	movq	-168(%rbp), %rcx
	movzwl	44(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-96(%rbp), %rax
	movzwl	44(%rax), %eax
	movq	-168(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-96(%rbp), %rax
	movzwl	44(%rax), %eax
	movq	-168(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-96(%rbp), %rax
	movzwl	44(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-168(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-96(%rbp), %rax
	movw	46(%rax), %ax
	movq	-168(%rbp), %rcx
	movw	%ax, 46(%rcx)
	movq	-168(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB3_56
# BB#46:                                #   in Loop: Header=BB3_38 Depth=1
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB3_48
# BB#47:                                #   in Loop: Header=BB3_38 Depth=1
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
.LBB3_48:                               #   in Loop: Header=BB3_38 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_50
# BB#49:                                #   in Loop: Header=BB3_38 Depth=1
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
.LBB3_50:                               #   in Loop: Header=BB3_38 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_52
# BB#51:                                #   in Loop: Header=BB3_38 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_53
.LBB3_52:                               #   in Loop: Header=BB3_38 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_54
	.align	16, 0x90
.LBB3_82:                               #   in Loop: Header=BB3_38 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_84
# BB#83:                                #   in Loop: Header=BB3_38 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_85
.LBB3_84:                               #   in Loop: Header=BB3_38 Depth=1
	movq	-48(%rbp), %rax
	andw	$-1025, 42(%rax)        # imm = 0xFFFFFFFFFFFFFBFF
	movq	-96(%rbp), %rsi
	movzbl	32(%rsi), %edi
	leaq	32(%rsi), %rdx
	addq	$64, %rsi
	callq	MakeWord
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rcx
	movzbl	43(%rcx), %ecx
	andl	$1, %ecx
	movq	-96(%rbp), %rdx
	movl	48(%rdx,%rcx,4), %ecx
	movl	%ecx, 48(%rax)
	movq	-48(%rbp), %rax
	movzbl	43(%rax), %eax
	andl	$1, %eax
	movq	-96(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movq	-168(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	%ecx, %eax
	movq	-168(%rbp), %rcx
	movl	40(%rcx), %edx
	movl	$-4096, %esi            # imm = 0xFFFFFFFFFFFFF000
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-96(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-96(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-96(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$528482304, %edx        # imm = 0x1F800000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-528482305, %esi       # imm = 0xFFFFFFFFE07FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	andl	%r12d, %eax
	movq	-168(%rbp), %rcx
	movl	40(%rcx), %edx
	andl	%r13d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	jmp	.LBB3_78
.LBB3_72:                               #   in Loop: Header=BB3_38 Depth=1
	movq	-48(%rbp), %rax
	andw	$-1025, 42(%rax)        # imm = 0xFFFFFFFFFFFFFBFF
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_74
# BB#73:                                #   in Loop: Header=BB3_38 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_77
.LBB3_85:                               #   in Loop: Header=BB3_38 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB3_87
# BB#86:                                #   in Loop: Header=BB3_38 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB3_97
.LBB3_87:                               #   in Loop: Header=BB3_38 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB3_97
# BB#88:                                #   in Loop: Header=BB3_38 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB3_97
# BB#89:                                #   in Loop: Header=BB3_38 Depth=1
	movq	-48(%rbp), %rax
	andw	$-1025, 42(%rax)        # imm = 0xFFFFFFFFFFFFFBFF
	movq	-96(%rbp), %rdx
	addq	$32, %rdx
	movl	$12, %edi
	movl	$.L.str.21, %esi
	callq	MakeWord
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rcx
	movzbl	43(%rcx), %ecx
	andl	$1, %ecx
	movq	-96(%rbp), %rdx
	movl	48(%rdx,%rcx,4), %ecx
	movl	%ecx, 48(%rax)
	movq	-48(%rbp), %rax
	movzbl	43(%rax), %eax
	andl	$1, %eax
	movq	-96(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movq	-168(%rbp), %rcx
	movl	%eax, 56(%rcx)
	jmp	.LBB3_78
.LBB3_74:                               #   in Loop: Header=BB3_38 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_75
# BB#76:                                #   in Loop: Header=BB3_38 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_77
.LBB3_75:                               #   in Loop: Header=BB3_38 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_77:                               #   in Loop: Header=BB3_38 Depth=1
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
	movq	%rax, -168(%rbp)
	movq	-96(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-96(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-168(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-96(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r15d, %eax
	movq	-168(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-96(%rbp), %rax
	movzwl	44(%rax), %eax
	movq	-168(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-96(%rbp), %rax
	movzbl	45(%rax), %eax
	andl	$1, %eax
	movq	-168(%rbp), %rcx
	movzwl	44(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-96(%rbp), %rax
	movzwl	44(%rax), %eax
	movq	-168(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-96(%rbp), %rax
	movzwl	44(%rax), %eax
	movq	-168(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-96(%rbp), %rax
	movzwl	44(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-168(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-96(%rbp), %rax
	movw	46(%rax), %ax
	movq	-168(%rbp), %rcx
	movw	%ax, 46(%rcx)
	movq	-168(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-168(%rbp), %rax
	movb	$1, 41(%rax)
	movq	-168(%rbp), %rax
	movb	$0, 42(%rax)
.LBB3_78:                               #   in Loop: Header=BB3_38 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_80
# BB#79:                                #   in Loop: Header=BB3_38 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_91
	.align	16, 0x90
.LBB3_80:                               #   in Loop: Header=BB3_38 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_81
# BB#90:                                #   in Loop: Header=BB3_38 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_91
.LBB3_81:                               #   in Loop: Header=BB3_38 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_91:                               #   in Loop: Header=BB3_38 Depth=1
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
	movq	104(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_94
# BB#92:                                #   in Loop: Header=BB3_38 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_94
# BB#93:                                #   in Loop: Header=BB3_38 Depth=1
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
.LBB3_94:                               #   in Loop: Header=BB3_38 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_97
# BB#95:                                #   in Loop: Header=BB3_38 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_97
# BB#96:                                #   in Loop: Header=BB3_38 Depth=1
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
.LBB3_53:                               #   in Loop: Header=BB3_38 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_54:                               #   in Loop: Header=BB3_38 Depth=1
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
	jne	.LBB3_56
# BB#55:                                #   in Loop: Header=BB3_38 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB3_56:                               #   in Loop: Header=BB3_38 Depth=1
	movq	-96(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB3_71
# BB#57:                                #   in Loop: Header=BB3_38 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_58
	.align	16, 0x90
.LBB3_59:                               #   in Loop: Header=BB3_58 Depth=2
	movq	-176(%rbp), %rax
.LBB3_58:                               #   Parent Loop BB3_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_59
# BB#60:                                #   in Loop: Header=BB3_38 Depth=1
	movq	-176(%rbp), %rdi
	movq	no_fpos(%rip), %rsi
	callq	CopyObject
	movq	%rax, -176(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_62
# BB#61:                                #   in Loop: Header=BB3_38 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_65
.LBB3_62:                               #   in Loop: Header=BB3_38 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_63
# BB#64:                                #   in Loop: Header=BB3_38 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_65
.LBB3_63:                               #   in Loop: Header=BB3_38 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_65:                               #   in Loop: Header=BB3_38 Depth=1
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
	movq	-168(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_68
# BB#66:                                #   in Loop: Header=BB3_38 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_68
# BB#67:                                #   in Loop: Header=BB3_38 Depth=1
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
.LBB3_68:                               #   in Loop: Header=BB3_38 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-176(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_71
# BB#69:                                #   in Loop: Header=BB3_38 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_71
# BB#70:                                #   in Loop: Header=BB3_38 Depth=1
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
.LBB3_71:                               #   in Loop: Header=BB3_38 Depth=1
	movq	-168(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	jmp	.LBB3_97
.LBB3_98:
	movq	-48(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$5, %eax
	jae	.LBB3_102
# BB#99:
	movq	-48(%rbp), %rax
	testb	$1, 43(%rax)
	je	.LBB3_102
# BB#100:
	movq	-80(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$2, %eax
	jae	.LBB3_102
# BB#101:
	movq	-48(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movl	$22, %edi
	movl	$3, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_102:
	movq	-48(%rbp), %rax
	testb	$1, 43(%rax)
	je	.LBB3_143
# BB#103:
	movq	-80(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$4, %eax
	jb	.LBB3_143
# BB#104:
	movq	-48(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$5, %eax
	jae	.LBB3_143
# BB#105:
	movq	-96(%rbp), %rax
	btl	$9, 44(%rax)
	jae	.LBB3_143
# BB#106:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB3_107
	.align	16, 0x90
.LBB3_108:                              #   in Loop: Header=BB3_107 Depth=1
	movq	-184(%rbp), %rax
.LBB3_107:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_108
# BB#109:
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	je	.LBB3_111
# BB#110:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_111:
	movzbl	zz_lengths+5(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_113
# BB#112:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_116
.LBB3_113:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_114
# BB#115:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_116
.LBB3_114:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_116:
	movq	zz_hold(%rip), %rax
	movb	$5, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -192(%rbp)
	movl	$0, 56(%rax)
	movq	-192(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-192(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-192(%rbp), %rax
	movl	$0, 52(%rax)
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_118
# BB#117:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_121
.LBB3_118:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_119
# BB#120:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_121
.LBB3_119:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_121:
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
	movq	%rax, -200(%rbp)
	movb	$0, 42(%rax)
	movq	-200(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-200(%rbp), %rax
	andw	$-129, 44(%rax)
	movq	-200(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-200(%rbp), %rax
	andw	$-513, 44(%rax)         # imm = 0xFFFFFFFFFFFFFDFF
	movq	-200(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-200(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 44(%rax)
	movq	-200(%rbp), %rax
	movw	$0, 46(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_123
# BB#122:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_126
.LBB3_123:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_124
# BB#125:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_126
.LBB3_124:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_126:
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
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_129
# BB#127:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_129
# BB#128:
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
.LBB3_129:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-200(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_132
# BB#130:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_132
# BB#131:
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
.LBB3_132:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_134
# BB#133:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_137
.LBB3_134:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_135
# BB#136:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_137
.LBB3_135:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_137:
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
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_140
# BB#138:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_140
# BB#139:
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
.LBB3_140:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-192(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_143
# BB#141:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_143
# BB#142:
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
.LBB3_143:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	PrintSym(%rip), %rax
	je	.LBB3_144
# BB#242:
	movq	-80(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$4, %eax
	jae	.LBB3_280
# BB#243:
	movq	-48(%rbp), %rax
	testb	$1, 43(%rax)
	je	.LBB3_280
# BB#244:
	movq	-80(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$2, %eax
	jae	.LBB3_279
# BB#245:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB3_246
	.align	16, 0x90
.LBB3_247:                              #   in Loop: Header=BB3_246 Depth=1
	movq	-112(%rbp), %rax
.LBB3_246:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_247
# BB#248:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	je	.LBB3_250
# BB#249:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.32, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_250:
	movq	-48(%rbp), %rdi
	callq	FindSplitInGalley
	movq	%rax, -96(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	je	.LBB3_252
# BB#251:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.33, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_252:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_253
	.align	16, 0x90
.LBB3_254:                              #   in Loop: Header=BB3_253 Depth=1
	movq	-120(%rbp), %rax
.LBB3_253:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_254
# BB#255:
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	je	.LBB3_257
# BB#256:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.34, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_257:
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.LBB3_279
# BB#258:
	movq	-112(%rbp), %rax
	movl	48(%rax), %eax
	movq	-120(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB3_260
# BB#259:
	movq	-120(%rbp), %rax
	jmp	.LBB3_261
.LBB3_280:
	movq	-80(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$3, %eax
	jae	.LBB3_282
# BB#281:
	movq	-48(%rbp), %rax
	movzbl	43(%rax), %eax
	testb	$1, %al
	je	.LBB3_279
.LBB3_282:
	movq	-48(%rbp), %rax
	movzbl	43(%rax), %eax
	andl	$1, %eax
	movl	%eax, -156(%rbp)
	movq	-48(%rbp), %rax
	jmp	.LBB3_283
	.align	16, 0x90
.LBB3_306:                              #   in Loop: Header=BB3_283 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
.LBB3_283:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_284 Depth 2
                                        #       Child Loop BB3_286 Depth 3
                                        #       Child Loop BB3_292 Depth 3
	movq	%rax, -88(%rbp)
	jmp	.LBB3_284
	.align	16, 0x90
.LBB3_298:                              #   in Loop: Header=BB3_284 Depth=2
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	HandleHeader
.LBB3_284:                              #   Parent Loop BB3_283 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_286 Depth 3
                                        #       Child Loop BB3_292 Depth 3
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB3_307
# BB#285:                               #   in Loop: Header=BB3_284 Depth=2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_286
	.align	16, 0x90
.LBB3_287:                              #   in Loop: Header=BB3_286 Depth=3
	movq	-96(%rbp), %rax
.LBB3_286:                              #   Parent Loop BB3_283 Depth=1
                                        #     Parent Loop BB3_284 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_287
# BB#288:                               #   in Loop: Header=BB3_284 Depth=2
	movq	-96(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB3_294
# BB#289:                               #   in Loop: Header=BB3_284 Depth=2
	cmpl	$0, -156(%rbp)
	je	.LBB3_290
# BB#291:                               #   in Loop: Header=BB3_284 Depth=2
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB3_292
.LBB3_290:                              #   in Loop: Header=BB3_284 Depth=2
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_292
	.align	16, 0x90
.LBB3_293:                              #   in Loop: Header=BB3_292 Depth=3
	movq	-96(%rbp), %rax
.LBB3_292:                              #   Parent Loop BB3_283 Depth=1
                                        #     Parent Loop BB3_284 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_293
.LBB3_294:                              #   in Loop: Header=BB3_284 Depth=2
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$20, %eax
	jl	.LBB3_299
# BB#295:                               #   in Loop: Header=BB3_284 Depth=2
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$23, %eax
	jg	.LBB3_299
# BB#296:                               #   in Loop: Header=BB3_284 Depth=2
	movq	-136(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB3_298
# BB#297:                               #   in Loop: Header=BB3_284 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.35, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_298
	.align	16, 0x90
.LBB3_299:                              #   in Loop: Header=BB3_284 Depth=2
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB3_306
# BB#300:                               #   in Loop: Header=BB3_284 Depth=2
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$138, %eax
	jg	.LBB3_306
# BB#301:                               #   in Loop: Header=BB3_284 Depth=2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_303
# BB#302:                               #   in Loop: Header=BB3_284 Depth=2
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
.LBB3_303:                              #   in Loop: Header=BB3_284 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_284
# BB#304:                               #   in Loop: Header=BB3_284 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB3_284
# BB#305:                               #   in Loop: Header=BB3_284 Depth=2
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
	jmp	.LBB3_284
.LBB3_144:
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-152(%rbp), %r15
	leaq	-148(%rbp), %r12
	leaq	-216(%rbp), %r13
	leaq	-128(%rbp), %r14
	jmp	.LBB3_145
	.align	16, 0x90
.LBB3_241:                              #   in Loop: Header=BB3_145 Depth=1
	movq	no_fpos(%rip), %rbx
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.5, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.31, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_145:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_147 Depth 2
                                        #     Child Loop BB3_151 Depth 2
                                        #     Child Loop BB3_199 Depth 2
                                        #     Child Loop BB3_206 Depth 2
                                        #     Child Loop BB3_169 Depth 2
                                        #     Child Loop BB3_178 Depth 2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB3_321
# BB#146:                               #   in Loop: Header=BB3_145 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_147
	.align	16, 0x90
.LBB3_148:                              #   in Loop: Header=BB3_147 Depth=2
	movq	-96(%rbp), %rax
.LBB3_147:                              #   Parent Loop BB3_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_148
# BB#149:                               #   in Loop: Header=BB3_145 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB3_153
# BB#150:                               #   in Loop: Header=BB3_145 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB3_151
	.align	16, 0x90
.LBB3_152:                              #   in Loop: Header=BB3_151 Depth=2
	movq	-96(%rbp), %rax
.LBB3_151:                              #   Parent Loop BB3_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_152
.LBB3_153:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	decl	%eax
	cmpl	$137, %eax
	ja	.LBB3_241
# BB#154:                               #   in Loop: Header=BB3_145 Depth=1
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_217:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB3_219
# BB#218:                               #   in Loop: Header=BB3_145 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB3_230
.LBB3_219:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-96(%rbp), %rax
	movl	52(%rax), %ecx
	addl	60(%rax), %ecx
	je	.LBB3_230
# BB#220:                               #   in Loop: Header=BB3_145 Depth=1
	xorl	%edi, %edi
	callq	SetLengthDim
	movq	-96(%rbp), %rdi
	movl	48(%rdi), %esi
	movl	56(%rdi), %ecx
	movq	%r15, 24(%rsp)
	movq	%r12, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%esi, %edx
	callq	FixAndPrintObject
	cmpq	$0, Promote.page_label(%rip)
	movl	$.L.str.30, %eax
	je	.LBB3_224
# BB#221:                               #   in Loop: Header=BB3_145 Depth=1
	movq	Promote.page_label(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_223
# BB#222:                               #   in Loop: Header=BB3_145 Depth=1
	movq	Promote.page_label(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	movl	$.L.str.30, %eax
	jne	.LBB3_224
.LBB3_223:                              #   in Loop: Header=BB3_145 Depth=1
	movq	Promote.page_label(%rip), %rax
	addq	$64, %rax
.LBB3_224:                              #   in Loop: Header=BB3_145 Depth=1
	movq	%rax, -144(%rbp)
	cmpl	$0, Promote.first(%rip)
	je	.LBB3_226
# BB#225:                               #   in Loop: Header=BB3_145 Depth=1
	movq	BackEnd(%rip), %rax
	movq	-48(%rbp), %rcx
	movl	48(%rcx), %edi
	addl	56(%rcx), %edi
	movq	-96(%rbp), %rcx
	movl	52(%rcx), %esi
	addl	60(%rcx), %esi
	movq	-144(%rbp), %rdx
	callq	*88(%rax)
	movl	$0, Promote.first(%rip)
	jmp	.LBB3_227
.LBB3_226:                              #   in Loop: Header=BB3_145 Depth=1
	movq	BackEnd(%rip), %rax
	movq	-48(%rbp), %rcx
	movl	48(%rcx), %edi
	addl	56(%rcx), %edi
	movq	-96(%rbp), %rcx
	movl	52(%rcx), %esi
	addl	60(%rcx), %esi
	movq	-144(%rbp), %rdx
	callq	*96(%rax)
.LBB3_227:                              #   in Loop: Header=BB3_145 Depth=1
	cmpq	$0, Promote.page_label(%rip)
	je	.LBB3_229
# BB#228:                               #   in Loop: Header=BB3_145 Depth=1
	movq	Promote.page_label(%rip), %rdi
	callq	DisposeObject
	movq	$0, Promote.page_label(%rip)
.LBB3_229:                              #   in Loop: Header=BB3_145 Depth=1
	movl	$1, %edi
	callq	SetLengthDim
	movq	-96(%rbp), %rdi
	movl	52(%rdi), %esi
	movl	60(%rdi), %ecx
	leal	(%rsi,%rcx), %eax
	movq	%r15, 24(%rsp)
	movq	%r12, 16(%rsp)
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	%esi, %edx
	callq	FixAndPrintObject
.LBB3_230:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB3_232
# BB#231:                               #   in Loop: Header=BB3_145 Depth=1
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
.LBB3_232:                              #   in Loop: Header=BB3_145 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_234
# BB#233:                               #   in Loop: Header=BB3_145 Depth=1
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
.LBB3_234:                              #   in Loop: Header=BB3_145 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_236
# BB#235:                               #   in Loop: Header=BB3_145 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_237
.LBB3_236:                              #   in Loop: Header=BB3_145 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_238
.LBB3_237:                              #   in Loop: Header=BB3_145 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_238:                              #   in Loop: Header=BB3_145 Depth=1
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
	jne	.LBB3_240
# BB#239:                               #   in Loop: Header=BB3_145 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB3_240:                              #   in Loop: Header=BB3_145 Depth=1
	xorl	%edi, %edi
	callq	FilterScavenge
	jmp	.LBB3_145
.LBB3_155:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-96(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$22, %edi
	movl	$10, %esi
	movl	$.L.str.29, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB3_156
.LBB3_166:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-96(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB3_168
# BB#167:                               #   in Loop: Header=BB3_145 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_168:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_169
	.align	16, 0x90
.LBB3_170:                              #   in Loop: Header=BB3_169 Depth=2
	movq	-104(%rbp), %rax
.LBB3_169:                              #   Parent Loop BB3_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_170
# BB#171:                               #   in Loop: Header=BB3_145 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	je	.LBB3_173
# BB#172:                               #   in Loop: Header=BB3_145 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_173:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-104(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$1, %eax
	jae	.LBB3_175
# BB#174:                               #   in Loop: Header=BB3_145 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB3_145
.LBB3_196:                              #   in Loop: Header=BB3_145 Depth=1
	cmpq	$0, Promote.page_label(%rip)
	je	.LBB3_198
# BB#197:                               #   in Loop: Header=BB3_145 Depth=1
	movq	Promote.page_label(%rip), %rdi
	callq	DisposeObject
	movq	$0, Promote.page_label(%rip)
.LBB3_198:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_199
	.align	16, 0x90
.LBB3_200:                              #   in Loop: Header=BB3_199 Depth=2
	movq	-104(%rbp), %rax
.LBB3_199:                              #   Parent Loop BB3_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_200
# BB#201:                               #   in Loop: Header=BB3_145 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$4, %eax
	je	.LBB3_203
# BB#202:                               #   in Loop: Header=BB3_145 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.27, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_203:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-104(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB3_205
# BB#204:                               #   in Loop: Header=BB3_145 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_205:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_206
	.align	16, 0x90
.LBB3_207:                              #   in Loop: Header=BB3_206 Depth=2
	movq	Promote.page_label(%rip), %rax
.LBB3_206:                              #   Parent Loop BB3_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, Promote.page_label(%rip)
	movq	Promote.page_label(%rip), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_207
# BB#208:                               #   in Loop: Header=BB3_145 Depth=1
	movq	Promote.page_label(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB3_210
# BB#209:                               #   in Loop: Header=BB3_145 Depth=1
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
.LBB3_210:                              #   in Loop: Header=BB3_145 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_212
# BB#211:                               #   in Loop: Header=BB3_145 Depth=1
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
.LBB3_212:                              #   in Loop: Header=BB3_145 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_214
# BB#213:                               #   in Loop: Header=BB3_145 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_215
.LBB3_214:                              #   in Loop: Header=BB3_145 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_216
.LBB3_192:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$40, %eax
	setne	%al
	movzbl	%al, %edx
	movl	%edx, -156(%rbp)
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	movq	%r13, %rsi
	movq	%r14, %rcx
	callq	Constrained
	cmpl	$8388607, -216(%rbp)    # imm = 0x7FFFFF
	jne	.LBB3_195
# BB#193:                               #   in Loop: Header=BB3_145 Depth=1
	cmpl	$8388607, -212(%rbp)    # imm = 0x7FFFFF
	jne	.LBB3_195
# BB#194:                               #   in Loop: Header=BB3_145 Depth=1
	cmpl	$8388607, -208(%rbp)    # imm = 0x7FFFFF
	je	.LBB3_156
.LBB3_195:                              #   in Loop: Header=BB3_145 Depth=1
	movslq	-156(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	80(%rcx), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -228(%rbp)
	movslq	-156(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	80(%rcx), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -232(%rbp)
	leaq	-228(%rbp), %rdi
	leaq	-232(%rbp), %rsi
	movq	%r13, %rdx
	callq	EnlargeToConstraint
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	movl	-228(%rbp), %esi
	movl	-232(%rbp), %edx
	movl	-156(%rbp), %ecx
	callq	AdjustSize
	jmp	.LBB3_156
.LBB3_175:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-104(%rbp), %rax
	movzbl	40(%rax), %eax
	cmpl	$133, %eax
	je	.LBB3_177
# BB#176:                               #   in Loop: Header=BB3_145 Depth=1
	movq	-104(%rbp), %rax
	movzbl	40(%rax), %eax
	cmpl	$130, %eax
	jne	.LBB3_191
.LBB3_177:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-104(%rbp), %rax
	movb	40(%rax), %al
	movq	-96(%rbp), %rcx
	movb	%al, 32(%rcx)
	movq	-96(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_178
	.align	16, 0x90
.LBB3_179:                              #   in Loop: Header=BB3_178 Depth=2
	movq	-224(%rbp), %rax
.LBB3_178:                              #   Parent Loop BB3_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_179
# BB#180:                               #   in Loop: Header=BB3_145 Depth=1
	movq	-104(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-224(%rbp), %rsi
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %edx
	callq	CrossMake
	movq	-96(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB3_182
# BB#181:                               #   in Loop: Header=BB3_145 Depth=1
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
.LBB3_182:                              #   in Loop: Header=BB3_145 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_184
# BB#183:                               #   in Loop: Header=BB3_145 Depth=1
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
.LBB3_184:                              #   in Loop: Header=BB3_145 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_186
# BB#185:                               #   in Loop: Header=BB3_145 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_187
.LBB3_186:                              #   in Loop: Header=BB3_145 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_188
.LBB3_215:                              #   in Loop: Header=BB3_145 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_216:                              #   in Loop: Header=BB3_145 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_156
.LBB3_191:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-104(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movl	$22, %edi
	movl	$4, %esi
	movl	$.L.str.26, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movq	-104(%rbp), %rdi
	xorl	%esi, %esi
	callq	KillGalley
	jmp	.LBB3_145
.LBB3_187:                              #   in Loop: Header=BB3_145 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_188:                              #   in Loop: Header=BB3_145 Depth=1
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
	jne	.LBB3_190
# BB#189:                               #   in Loop: Header=BB3_145 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB3_190:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	CrossSequence
.LBB3_156:                              #   in Loop: Header=BB3_145 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB3_158
# BB#157:                               #   in Loop: Header=BB3_145 Depth=1
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
.LBB3_158:                              #   in Loop: Header=BB3_145 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_160
# BB#159:                               #   in Loop: Header=BB3_145 Depth=1
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
.LBB3_160:                              #   in Loop: Header=BB3_145 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_162
# BB#161:                               #   in Loop: Header=BB3_145 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_163
.LBB3_162:                              #   in Loop: Header=BB3_145 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_164
.LBB3_163:                              #   in Loop: Header=BB3_145 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_164:                              #   in Loop: Header=BB3_145 Depth=1
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
	jne	.LBB3_145
# BB#165:                               #   in Loop: Header=BB3_145 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB3_145
.LBB3_307:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_309
# BB#308:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.36, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_309:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rcx
	cmpq	24(%rax), %rcx
	je	.LBB3_311
# BB#310:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.37, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_311:
	movq	-80(%rbp), %rax
	jmp	.LBB3_312
.LBB3_260:
	movq	-112(%rbp), %rax
.LBB3_261:
	movl	48(%rax), %eax
	movl	%eax, -236(%rbp)
	movq	-112(%rbp), %rax
	movl	56(%rax), %eax
	movq	-120(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB3_263
# BB#262:
	movq	-120(%rbp), %rax
	jmp	.LBB3_264
.LBB3_263:
	movq	-112(%rbp), %rax
.LBB3_264:
	movl	56(%rax), %edx
	movl	%edx, -240(%rbp)
	movq	-112(%rbp), %rdi
	movl	-236(%rbp), %esi
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	callq	AdjustSize
	movq	-120(%rbp), %rdi
	movl	-236(%rbp), %esi
	movl	-240(%rbp), %edx
	xorl	%ecx, %ecx
	callq	AdjustSize
	movq	-112(%rbp), %rax
	movq	%rax, xx_res(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB3_266
# BB#265:
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
	movq	zz_res(%rip), %rbx
.LBB3_266:
	movq	%rbx, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_269
# BB#267:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_269
# BB#268:
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
.LBB3_269:
	movq	xx_hold(%rip), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 8(%rcx)
	je	.LBB3_271
# BB#270:
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
	movq	zz_res(%rip), %rax
.LBB3_271:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_274
# BB#272:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_274
# BB#273:
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
.LBB3_274:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_276
# BB#275:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_277
.LBB3_276:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_278
.LBB3_277:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_278:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB3_279:
	movq	-64(%rbp), %rax
.LBB3_312:
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-248(%rbp), %rax
	cmpq	-256(%rbp), %rax
	je	.LBB3_321
# BB#313:
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_315
# BB#314:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.38, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_315:
	movq	-248(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-256(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_318
# BB#316:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_318
# BB#317:
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
.LBB3_318:
	movq	-248(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-264(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_321
# BB#319:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_321
# BB#320:
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
.LBB3_321:
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Promote, .Lfunc_end3-Promote
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_156
	.quad	.LBB3_217
	.quad	.LBB3_241
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_217
	.quad	.LBB3_241
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_241
	.quad	.LBB3_155
	.quad	.LBB3_155
	.quad	.LBB3_155
	.quad	.LBB3_155
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_217
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_166
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_156
	.quad	.LBB3_241
	.quad	.LBB3_241
	.quad	.LBB3_190
	.quad	.LBB3_190
	.quad	.LBB3_190
	.quad	.LBB3_190
	.quad	.LBB3_190
	.quad	.LBB3_190
	.quad	.LBB3_190
	.quad	.LBB3_190
	.quad	.LBB3_196
	.quad	.LBB3_156
	.quad	.LBB3_156
	.quad	.LBB3_192

	.text
	.globl	HandleHeader
	.align	16, 0x90
	.type	HandleHeader,@function
HandleHeader:                           # @HandleHeader
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movzbl	32(%rsi), %eax
	cmpl	$20, %eax
	jl	.LBB4_2
# BB#1:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$24, %eax
	jl	.LBB4_3
.LBB4_2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_3:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	cmpq	16(%rax), %rcx
	jne	.LBB4_5
# BB#4:
	movq	-16(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB4_6
.LBB4_5:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.10, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_6:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-20, %eax
	cmpl	$3, %eax
	ja	.LBB4_81
# BB#7:
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_48:
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB4_49
# BB#50:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	%rax, (%rax)
	jne	.LBB4_52
# BB#51:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_52:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rax
	jmp	.LBB4_53
	.align	16, 0x90
.LBB4_54:                               #   in Loop: Header=BB4_53 Depth=1
	movq	-24(%rbp), %rax
.LBB4_53:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_54
# BB#55:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB4_57
# BB#56:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_57:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB4_59
# BB#58:
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
.LBB4_59:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_61
# BB#60:
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
.LBB4_61:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_63
# BB#62:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_64
.LBB4_63:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_65
.LBB4_9:
	movq	-8(%rbp), %rdi
	callq	DisposeHeaders
.LBB4_10:
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB4_19
# BB#11:
	movq	-8(%rbp), %rax
	movzbl	43(%rax), %eax
	andl	$1, %eax
	leal	17(%rax,%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_13
# BB#12:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_16
.LBB4_8:
	movq	-8(%rbp), %rdi
	callq	DisposeHeaders
	jmp	.LBB4_81
.LBB4_49:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$22, %edi
	movl	$11, %esi
	movl	$.L.str.11, %edx
	movl	$2, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_81
.LBB4_13:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_14
# BB#15:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_16
.LBB4_64:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_65:
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
	jne	.LBB4_67
# BB#66:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB4_67:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	%rax, (%rax)
	jne	.LBB4_69
# BB#68:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_69:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB4_71
# BB#70:
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
.LBB4_71:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_73
# BB#72:
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
.LBB4_73:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_75
# BB#74:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_76
.LBB4_75:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_77
.LBB4_14:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_16:
	movq	-8(%rbp), %rax
	testb	$1, 43(%rax)
	movb	$19, %al
	jne	.LBB4_18
# BB#17:
	movb	$17, %al
.LBB4_18:
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
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
.LBB4_19:
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_21
# BB#20:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_24
.LBB4_21:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_22
# BB#23:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_24
.LBB4_22:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_24:
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
	andb	$-97, 43(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_26
# BB#25:
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
.LBB4_26:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB4_30
	.align	16, 0x90
.LBB4_31:                               #   in Loop: Header=BB4_30 Depth=1
	movq	-32(%rbp), %rax
.LBB4_30:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_31
# BB#32:
	movq	-16(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-24(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-16(%rbp), %rax
	movzbl	65(%rax), %eax
	andl	$1, %eax
	movq	-24(%rbp), %rcx
	movzwl	44(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-16(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-24(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-16(%rbp), %rax
	movzwl	64(%rax), %eax
	movq	-24(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-16(%rbp), %rax
	movzwl	64(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-24(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-16(%rbp), %rax
	movw	66(%rax), %ax
	movq	-24(%rbp), %rcx
	movw	%ax, 46(%rcx)
	movq	-24(%rbp), %rax
	andw	$-513, 44(%rax)         # imm = 0xFFFFFFFFFFFFFDFF
	movq	-24(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_34
# BB#33:
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
.LBB4_34:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_37
# BB#35:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_37
# BB#36:
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
.LBB4_37:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_39
# BB#38:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_42
.LBB4_39:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_40
# BB#41:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_42
.LBB4_40:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_42:
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
	movq	144(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_45
# BB#43:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_45
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
.LBB4_45:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_81
# BB#46:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_81
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
	jmp	.LBB4_81
.LBB4_76:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_77:
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
	jne	.LBB4_79
# BB#78:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB4_79:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB4_81
# BB#80:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	DisposeObject
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
.LBB4_81:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpb	$0, 32(%rax)
	je	.LBB4_83
# BB#82:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_83:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$23, %eax
	je	.LBB4_85
# BB#84:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$21, %eax
	jne	.LBB4_98
.LBB4_85:
	movq	-16(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB4_87
# BB#86:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	je	.LBB4_88
.LBB4_87:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_88:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB4_90
# BB#89:
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
.LBB4_90:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_92
# BB#91:
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
.LBB4_92:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_94
# BB#93:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_95
.LBB4_94:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_96
.LBB4_95:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_96:
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
	jne	.LBB4_98
# BB#97:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB4_98:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB4_100
# BB#99:
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
.LBB4_100:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_102
# BB#101:
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
.LBB4_102:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_104
# BB#103:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_105
.LBB4_104:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_106
.LBB4_105:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_106:
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
	jne	.LBB4_108
# BB#107:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB4_108:
	movq	-40(%rbp), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB4_110
# BB#109:
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
.LBB4_110:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_112
# BB#111:
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
.LBB4_112:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_114
# BB#113:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_115
.LBB4_114:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_116
.LBB4_115:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_116:
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
	jne	.LBB4_118
# BB#117:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB4_118:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	HandleHeader, .Lfunc_end4-HandleHeader
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_10
	.quad	.LBB4_48
	.quad	.LBB4_9
	.quad	.LBB4_8

	.text
	.align	16, 0x90
	.type	DisposeHeaders,@function
DisposeHeaders:                         # @DisposeHeaders
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, 144(%rdi)
	je	.LBB5_16
# BB#1:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB5_4
# BB#2:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	je	.LBB5_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.63, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_4
	.align	16, 0x90
.LBB5_14:                               #   in Loop: Header=BB5_4 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB5_15
# BB#5:                                 #   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB5_7
# BB#6:                                 #   in Loop: Header=BB5_4 Depth=1
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
.LBB5_7:                                #   in Loop: Header=BB5_4 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB5_9
# BB#8:                                 #   in Loop: Header=BB5_4 Depth=1
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
.LBB5_9:                                #   in Loop: Header=BB5_4 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB5_11
# BB#10:                                #   in Loop: Header=BB5_4 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB5_12
.LBB5_11:                               #   in Loop: Header=BB5_4 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB5_13
	.align	16, 0x90
.LBB5_12:                               #   in Loop: Header=BB5_4 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB5_13:                               #   in Loop: Header=BB5_4 Depth=1
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
	jne	.LBB5_4
	jmp	.LBB5_14
.LBB5_15:
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
.LBB5_16:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	DisposeHeaders, .Lfunc_end5-DisposeHeaders
	.cfi_endproc

	.globl	KillGalley
	.align	16, 0x90
	.type	KillGalley,@function
KillGalley:                             # @KillGalley
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB6_2
# BB#1:
	movq	-8(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB6_3
.LBB6_2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.39, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_3:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB6_4
	.align	16, 0x90
.LBB6_5:                                #   in Loop: Header=BB6_4 Depth=1
	movq	-24(%rbp), %rax
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_5
# BB#6:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$120, %eax
	je	.LBB6_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.40, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_8:
	movq	-24(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB6_10
# BB#9:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.41, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_10:
	movq	-8(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB6_12
# BB#11:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	callq	DisposeObject
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
.LBB6_12:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB6_13
	.align	16, 0x90
.LBB6_57:                               #   in Loop: Header=BB6_13 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB6_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_15 Depth 2
                                        #     Child Loop BB6_27 Depth 2
                                        #       Child Loop BB6_29 Depth 3
                                        #     Child Loop BB6_33 Depth 2
                                        #     Child Loop BB6_43 Depth 2
                                        #     Child Loop BB6_61 Depth 2
                                        #     Child Loop BB6_71 Depth 2
                                        #     Child Loop BB6_23 Depth 2
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB6_93
# BB#14:                                #   in Loop: Header=BB6_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB6_15
	.align	16, 0x90
.LBB6_16:                               #   in Loop: Header=BB6_15 Depth=2
	movq	-40(%rbp), %rax
.LBB6_15:                               #   Parent Loop BB6_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_16
# BB#17:                                #   in Loop: Header=BB6_13 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$120, %eax
	jg	.LBB6_25
# BB#18:                                #   in Loop: Header=BB6_13 Depth=1
	cmpl	$8, %eax
	jne	.LBB6_19
# BB#82:                                #   in Loop: Header=BB6_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.44, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_13
	.align	16, 0x90
.LBB6_25:                               #   in Loop: Header=BB6_13 Depth=1
	cmpl	$121, %eax
	jne	.LBB6_26
# BB#58:                                #   in Loop: Header=BB6_13 Depth=1
	movq	-40(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB6_60
# BB#59:                                #   in Loop: Header=BB6_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.42, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_60:                               #   in Loop: Header=BB6_13 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB6_61
	.align	16, 0x90
.LBB6_70:                               #   in Loop: Header=BB6_61 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB6_61:                               #   Parent Loop BB6_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB6_71
# BB#62:                                #   in Loop: Header=BB6_61 Depth=2
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB6_64
# BB#63:                                #   in Loop: Header=BB6_61 Depth=2
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
.LBB6_64:                               #   in Loop: Header=BB6_61 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB6_66
# BB#65:                                #   in Loop: Header=BB6_61 Depth=2
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
.LBB6_66:                               #   in Loop: Header=BB6_61 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_68
# BB#67:                                #   in Loop: Header=BB6_61 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_69
.LBB6_68:                               #   in Loop: Header=BB6_61 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB6_70
	.align	16, 0x90
.LBB6_69:                               #   in Loop: Header=BB6_61 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB6_70
	.align	16, 0x90
.LBB6_80:                               #   in Loop: Header=BB6_71 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB6_71:                               #   Parent Loop BB6_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB6_53
# BB#72:                                #   in Loop: Header=BB6_71 Depth=2
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB6_74
# BB#73:                                #   in Loop: Header=BB6_71 Depth=2
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
.LBB6_74:                               #   in Loop: Header=BB6_71 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB6_76
# BB#75:                                #   in Loop: Header=BB6_71 Depth=2
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
.LBB6_76:                               #   in Loop: Header=BB6_71 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_78
# BB#77:                                #   in Loop: Header=BB6_71 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_79
.LBB6_78:                               #   in Loop: Header=BB6_71 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB6_80
	.align	16, 0x90
.LBB6_79:                               #   in Loop: Header=BB6_71 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB6_80
	.align	16, 0x90
.LBB6_19:                               #   in Loop: Header=BB6_13 Depth=1
	cmpl	$120, %eax
	jne	.LBB6_83
# BB#20:                                #   in Loop: Header=BB6_13 Depth=1
	movq	-40(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB6_22
# BB#21:                                #   in Loop: Header=BB6_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.43, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_22:                               #   in Loop: Header=BB6_13 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB6_23
	.align	16, 0x90
.LBB6_24:                               #   in Loop: Header=BB6_23 Depth=2
	movq	-48(%rbp), %rax
.LBB6_23:                               #   Parent Loop BB6_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_24
# BB#81:                                #   in Loop: Header=BB6_13 Depth=1
	movq	-48(%rbp), %rdi
	xorl	%esi, %esi
	callq	KillGalley
	jmp	.LBB6_13
	.align	16, 0x90
.LBB6_26:                               #   in Loop: Header=BB6_13 Depth=1
	cmpl	$122, %eax
	je	.LBB6_27
.LBB6_83:                               #   in Loop: Header=BB6_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB6_85
# BB#84:                                #   in Loop: Header=BB6_13 Depth=1
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
.LBB6_85:                               #   in Loop: Header=BB6_13 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB6_87
# BB#86:                                #   in Loop: Header=BB6_13 Depth=1
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
.LBB6_87:                               #   in Loop: Header=BB6_13 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_89
# BB#88:                                #   in Loop: Header=BB6_13 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_90
.LBB6_89:                               #   in Loop: Header=BB6_13 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB6_91
	.align	16, 0x90
.LBB6_31:                               #   in Loop: Header=BB6_27 Depth=2
	movq	-48(%rbp), %rdi
	callq	DetachGalley
.LBB6_27:                               #   Parent Loop BB6_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_29 Depth 3
	movq	-40(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB6_32
# BB#28:                                #   in Loop: Header=BB6_27 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB6_29
	.align	16, 0x90
.LBB6_30:                               #   in Loop: Header=BB6_29 Depth=3
	movq	-48(%rbp), %rax
.LBB6_29:                               #   Parent Loop BB6_13 Depth=1
                                        #     Parent Loop BB6_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_30
	jmp	.LBB6_31
.LBB6_32:                               #   in Loop: Header=BB6_13 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB6_33
	.align	16, 0x90
.LBB6_42:                               #   in Loop: Header=BB6_33 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB6_33:                               #   Parent Loop BB6_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB6_43
# BB#34:                                #   in Loop: Header=BB6_33 Depth=2
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB6_36
# BB#35:                                #   in Loop: Header=BB6_33 Depth=2
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
.LBB6_36:                               #   in Loop: Header=BB6_33 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB6_38
# BB#37:                                #   in Loop: Header=BB6_33 Depth=2
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
.LBB6_38:                               #   in Loop: Header=BB6_33 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_40
# BB#39:                                #   in Loop: Header=BB6_33 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_41
.LBB6_40:                               #   in Loop: Header=BB6_33 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB6_42
	.align	16, 0x90
.LBB6_41:                               #   in Loop: Header=BB6_33 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB6_42
	.align	16, 0x90
.LBB6_52:                               #   in Loop: Header=BB6_43 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB6_43:                               #   Parent Loop BB6_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB6_53
# BB#44:                                #   in Loop: Header=BB6_43 Depth=2
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB6_46
# BB#45:                                #   in Loop: Header=BB6_43 Depth=2
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
.LBB6_46:                               #   in Loop: Header=BB6_43 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB6_48
# BB#47:                                #   in Loop: Header=BB6_43 Depth=2
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
.LBB6_48:                               #   in Loop: Header=BB6_43 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_50
# BB#49:                                #   in Loop: Header=BB6_43 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_51
.LBB6_50:                               #   in Loop: Header=BB6_43 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB6_52
	.align	16, 0x90
.LBB6_51:                               #   in Loop: Header=BB6_43 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB6_52
	.align	16, 0x90
.LBB6_53:                               #   in Loop: Header=BB6_13 Depth=1
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_55
# BB#54:                                #   in Loop: Header=BB6_13 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_56
.LBB6_55:                               #   in Loop: Header=BB6_13 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB6_57
.LBB6_56:                               #   in Loop: Header=BB6_13 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB6_57
.LBB6_90:                               #   in Loop: Header=BB6_13 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB6_91:                               #   in Loop: Header=BB6_13 Depth=1
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
	jne	.LBB6_13
# BB#92:                                #   in Loop: Header=BB6_13 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB6_13
.LBB6_93:
	cmpl	$0, -12(%rbp)
	je	.LBB6_96
# BB#94:
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB6_96
# BB#95:
	movq	-8(%rbp), %rdi
	callq	CalculateOptimize
.LBB6_96:
	movq	-24(%rbp), %rdi
	callq	MakeDead
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	KillGalley, .Lfunc_end6-KillGalley
	.cfi_endproc

	.align	16, 0x90
	.type	FindSplitInGalley,@function
FindSplitInGalley:                      # @FindSplitInGalley
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
	pushq	%rbx
	subq	$40, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	8(%rdi), %rax
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_7:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB7_8
# BB#2:                                 #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB7_3
	.align	16, 0x90
.LBB7_4:                                #   in Loop: Header=BB7_3 Depth=2
	movq	-32(%rbp), %rax
.LBB7_3:                                #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_4
# BB#5:                                 #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB7_7
# BB#6:                                 #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	jge	.LBB7_7
.LBB7_8:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB7_10
# BB#9:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$22, %edi
	movl	$1, %esi
	movl	$.L.str.64, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB7_10
	.align	16, 0x90
.LBB7_20:                               #   in Loop: Header=BB7_10 Depth=1
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB7_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
                                        #     Child Loop BB7_14 Depth 2
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	je	.LBB7_22
# BB#11:                                #   in Loop: Header=BB7_10 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-2, %eax
	cmpl	$97, %eax
	ja	.LBB7_21
# BB#12:                                #   in Loop: Header=BB7_10 Depth=1
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_19:                               #   in Loop: Header=BB7_10 Depth=1
	movq	-32(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$22, %edi
	movl	$2, %esi
	movl	$.L.str.65, %edx
	xorl	%ecx, %ecx
	jmp	.LBB7_20
	.align	16, 0x90
.LBB7_21:                               #   in Loop: Header=BB7_10 Depth=1
	movq	no_fpos(%rip), %rbx
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.5, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.66, %r9d
	jmp	.LBB7_20
.LBB7_13:                               #   in Loop: Header=BB7_10 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB7_14
	.align	16, 0x90
.LBB7_15:                               #   in Loop: Header=BB7_14 Depth=2
	movq	-32(%rbp), %rax
.LBB7_14:                               #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_15
	jmp	.LBB7_10
.LBB7_16:                               #   in Loop: Header=BB7_10 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB7_17
	.align	16, 0x90
.LBB7_18:                               #   in Loop: Header=BB7_17 Depth=2
	movq	-32(%rbp), %rax
.LBB7_17:                               #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_18
	jmp	.LBB7_10
.LBB7_22:
	movq	-32(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	FindSplitInGalley, .Lfunc_end7-FindSplitInGalley
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_19
	.quad	.LBB7_21
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_13
	.quad	.LBB7_16
	.quad	.LBB7_19
	.quad	.LBB7_16
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_13
	.quad	.LBB7_13
	.quad	.LBB7_13
	.quad	.LBB7_13
	.quad	.LBB7_13
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_13
	.quad	.LBB7_19
	.quad	.LBB7_13
	.quad	.LBB7_19
	.quad	.LBB7_13
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_21
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_19

	.text
	.align	16, 0x90
	.type	MakeDead,@function
MakeDead:                               # @MakeDead
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, MakeDead.dead_store(%rip)
	jne	.LBB8_7
# BB#1:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB8_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_6
.LBB8_3:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_4
# BB#5:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_6
.LBB8_4:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_6:
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
	movq	%rax, MakeDead.dead_store(%rip)
.LBB8_7:
	movq	-8(%rbp), %rax
	movb	$119, 32(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB8_9
# BB#8:
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
.LBB8_9:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	MakeDead.dead_store(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_12
# BB#10:
	cmpq	$0, zz_res(%rip)
	je	.LBB8_12
# BB#11:
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
.LBB8_12:
	cmpl	$150, MakeDead.dead_count(%rip)
	jl	.LBB8_23
# BB#13:
	movq	MakeDead.dead_store(%rip), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB8_15
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
	movq	zz_res(%rip), %rax
.LBB8_15:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB8_17
# BB#16:
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
.LBB8_17:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB8_19
# BB#18:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB8_20
.LBB8_19:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB8_21
.LBB8_23:
	incl	MakeDead.dead_count(%rip)
	jmp	.LBB8_24
.LBB8_20:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB8_21:
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
	jne	.LBB8_24
# BB#22:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB8_24:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	MakeDead, .Lfunc_end8-MakeDead
	.cfi_endproc

	.globl	FreeGalley
	.align	16, 0x90
	.type	FreeGalley,@function
FreeGalley:                             # @FreeGalley
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp37:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB9_2
# BB#1:
	movq	-16(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$1, %eax
	jb	.LBB9_3
.LBB9_2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.45, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB9_3:
	movq	-16(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB9_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.46, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB9_5:
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_8
# BB#6:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB9_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.47, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB9_8:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movb	$1, %bl
	jmp	.LBB9_9
	.align	16, 0x90
.LBB9_57:                               #   in Loop: Header=BB9_9 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB9_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_11 Depth 2
                                        #     Child Loop BB9_18 Depth 2
                                        #       Child Loop BB9_20 Depth 3
                                        #       Child Loop BB9_30 Depth 3
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB9_58
# BB#10:                                #   in Loop: Header=BB9_9 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB9_11
	.align	16, 0x90
.LBB9_12:                               #   in Loop: Header=BB9_11 Depth=2
	movq	-64(%rbp), %rax
.LBB9_11:                               #   Parent Loop BB9_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB9_12
# BB#13:                                #   in Loop: Header=BB9_9 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$122, %eax
	jne	.LBB9_16
# BB#14:                                #   in Loop: Header=BB9_9 Depth=1
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	InputSym(%rip), %rax
	je	.LBB9_15
.LBB9_16:                               #   in Loop: Header=BB9_9 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$122, %eax
	jne	.LBB9_55
# BB#17:                                #   in Loop: Header=BB9_9 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB9_18
	.align	16, 0x90
.LBB9_54:                               #   in Loop: Header=BB9_18 Depth=2
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
.LBB9_18:                               #   Parent Loop BB9_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_20 Depth 3
                                        #       Child Loop BB9_30 Depth 3
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB9_56
# BB#19:                                #   in Loop: Header=BB9_18 Depth=2
	movq	-80(%rbp), %rax
	jmp	.LBB9_20
	.align	16, 0x90
.LBB9_21:                               #   in Loop: Header=BB9_20 Depth=3
	movq	-72(%rbp), %rax
.LBB9_20:                               #   Parent Loop BB9_9 Depth=1
                                        #     Parent Loop BB9_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB9_21
# BB#22:                                #   in Loop: Header=BB9_18 Depth=2
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	je	.LBB9_24
# BB#23:                                #   in Loop: Header=BB9_18 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.49, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB9_24:                               #   in Loop: Header=BB9_18 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB9_37
# BB#25:                                #   in Loop: Header=BB9_18 Depth=2
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB9_37
# BB#26:                                #   in Loop: Header=BB9_18 Depth=2
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	88(%rax), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	SearchGalley
	movq	%rax, -88(%rbp)
	testq	%rax, %rax
	je	.LBB9_37
# BB#27:                                #   in Loop: Header=BB9_18 Depth=2
	movq	-72(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB9_29
# BB#28:                                #   in Loop: Header=BB9_18 Depth=2
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	80(%rax), %rsi
	callq	GazumpOptimize
.LBB9_29:                               #   in Loop: Header=BB9_18 Depth=2
	movq	-72(%rbp), %rdi
	callq	DetachGalley
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB9_30
	.align	16, 0x90
.LBB9_31:                               #   in Loop: Header=BB9_30 Depth=3
	movq	-96(%rbp), %rax
.LBB9_30:                               #   Parent Loop BB9_9 Depth=1
                                        #     Parent Loop BB9_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB9_31
# BB#32:                                #   in Loop: Header=BB9_18 Depth=2
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB9_34
# BB#33:                                #   in Loop: Header=BB9_18 Depth=2
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
.LBB9_34:                               #   in Loop: Header=BB9_18 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB9_18
# BB#35:                                #   in Loop: Header=BB9_18 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB9_18
# BB#36:                                #   in Loop: Header=BB9_18 Depth=2
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
	jmp	.LBB9_18
	.align	16, 0x90
.LBB9_37:                               #   in Loop: Header=BB9_18 Depth=2
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %r8
	xorl	%ecx, %ecx
	movq	%rdi, %rsi
	callq	FreeGalley
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_44
# BB#38:                                #   in Loop: Header=BB9_18 Depth=2
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB9_40
# BB#39:                                #   in Loop: Header=BB9_18 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB9_43
.LBB9_40:                               #   in Loop: Header=BB9_18 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB9_41
# BB#42:                                #   in Loop: Header=BB9_18 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB9_43
.LBB9_41:                               #   in Loop: Header=BB9_18 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB9_43:                               #   in Loop: Header=BB9_18 Depth=2
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
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB9_44:                               #   in Loop: Header=BB9_18 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB9_46
# BB#45:                                #   in Loop: Header=BB9_18 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB9_49
	.align	16, 0x90
.LBB9_46:                               #   in Loop: Header=BB9_18 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB9_47
# BB#48:                                #   in Loop: Header=BB9_18 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB9_49
.LBB9_47:                               #   in Loop: Header=BB9_18 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB9_49:                               #   in Loop: Header=BB9_18 Depth=2
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
	movq	(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB9_52
# BB#50:                                #   in Loop: Header=BB9_18 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB9_52
# BB#51:                                #   in Loop: Header=BB9_18 Depth=2
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
.LBB9_52:                               #   in Loop: Header=BB9_18 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB9_18
# BB#53:                                #   in Loop: Header=BB9_18 Depth=2
	cmpq	$0, zz_res(%rip)
	jne	.LBB9_54
	jmp	.LBB9_18
	.align	16, 0x90
.LBB9_55:                               #   in Loop: Header=BB9_9 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$121, %eax
	jne	.LBB9_57
.LBB9_56:                               #   in Loop: Header=BB9_9 Depth=1
	movq	-64(%rbp), %rax
	orw	$1, 42(%rax)
	jmp	.LBB9_57
.LBB9_15:                               #   in Loop: Header=BB9_9 Depth=1
	movq	-64(%rbp), %rax
	movq	80(%rax), %r8
	addq	$32, %r8
	movl	$22, %edi
	movl	$5, %esi
	movl	$.L.str.48, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB9_57
.LBB9_58:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	FreeGalley, .Lfunc_end9-FreeGalley
	.cfi_endproc

	.globl	SetTarget
	.align	16, 0x90
	.type	SetTarget,@function
SetTarget:                              # @SetTarget
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$168, %rsp
.Ltmp41:
	.cfi_offset %rbx, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movzbl	32(%rdi), %eax
	cmpl	$8, %eax
	je	.LBB10_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.50, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB10_2:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB10_3
	.align	16, 0x90
.LBB10_4:                               #   in Loop: Header=BB10_3 Depth=1
	movq	-40(%rbp), %rax
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB10_4
# BB#5:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB10_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.51, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB10_7:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$6, %eax
	jb	.LBB10_9
# BB#8:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.52, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB10_9:
	movq	$0, -64(%rbp)
	movq	-40(%rbp), %rax
	jmp	.LBB10_10
	.align	16, 0x90
.LBB10_21:                              #   in Loop: Header=BB10_10 Depth=1
	movq	-56(%rbp), %rax
.LBB10_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_12 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB10_22
# BB#11:                                #   in Loop: Header=BB10_10 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB10_12
	.align	16, 0x90
.LBB10_13:                              #   in Loop: Header=BB10_12 Depth=2
	movq	-48(%rbp), %rax
.LBB10_12:                              #   Parent Loop BB10_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB10_13
# BB#14:                                #   in Loop: Header=BB10_10 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB10_21
# BB#15:                                #   in Loop: Header=BB10_10 Depth=1
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$5, %eax
	jae	.LBB10_21
# BB#16:
	movq	-48(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB10_18
# BB#17:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.53, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB10_18:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB10_19
	.align	16, 0x90
.LBB10_20:                              #   in Loop: Header=BB10_19 Depth=1
	movq	-64(%rbp), %rax
.LBB10_19:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB10_20
.LBB10_22:
	cmpq	$0, -64(%rbp)
	jne	.LBB10_30
# BB#23:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	jmp	.LBB10_24
	.align	16, 0x90
.LBB10_62:                              #   in Loop: Header=BB10_24 Depth=1
	movq	-56(%rbp), %rax
.LBB10_24:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_26 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	80(%rcx), %rax
	je	.LBB10_30
# BB#25:                                #   in Loop: Header=BB10_24 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB10_26
	.align	16, 0x90
.LBB10_27:                              #   in Loop: Header=BB10_26 Depth=2
	movq	-48(%rbp), %rax
.LBB10_26:                              #   Parent Loop BB10_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB10_27
# BB#28:                                #   in Loop: Header=BB10_24 Depth=1
	movq	-48(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$5, %eax
	jae	.LBB10_62
# BB#29:
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB10_30:
	cmpq	$0, -64(%rbp)
	jne	.LBB10_32
# BB#31:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.54, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB10_32:
	movl	$0, -92(%rbp)
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB10_35
# BB#33:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	je	.LBB10_35
# BB#34:
	movq	$0, -120(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	addq	$32, %rsi
	callq	CopyObject
	movq	%rax, -64(%rbp)
	movl	$1, -92(%rbp)
	movq	-40(%rbp), %rdi
	callq	GetEnv
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rdi
	leaq	-152(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	-144(%rbp), %rcx
	movq	%rcx, (%rsp)
	movl	$1, 32(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	leaq	-112(%rbp), %rcx
	leaq	-128(%rbp), %r8
	leaq	-136(%rbp), %r9
	movl	$InitialStyle, %edx
	movq	%rax, %rsi
	callq	Manifest
	movq	%rax, -64(%rbp)
.LBB10_35:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB10_38
# BB#36:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	je	.LBB10_38
# BB#37:
	movq	-64(%rbp), %rbx
	addq	$32, %rbx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, %r9
	movl	$22, %edi
	movl	$6, %esi
	movl	$.L.str.55, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB10_38:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB10_39
	.align	16, 0x90
.LBB10_40:                              #   in Loop: Header=BB10_39 Depth=1
	movq	-72(%rbp), %rax
.LBB10_39:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB10_40
# BB#41:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB10_43
# BB#42:
	movq	-72(%rbp), %r8
	addq	$32, %r8
	movl	$22, %edi
	movl	$7, %esi
	movl	$.L.str.56, %edx
	movl	$1, %ecx
	movl	$.L.str.57, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB10_43:
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB10_44
	.align	16, 0x90
.LBB10_45:                              #   in Loop: Header=BB10_44 Depth=1
	movq	-80(%rbp), %rax
.LBB10_44:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB10_45
# BB#46:
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB10_49
# BB#47:
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB10_48
.LBB10_49:
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.60, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB10_50
# BB#51:
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.59, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB10_56
# BB#52:
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.61, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB10_53
# BB#54:
	movq	-80(%rbp), %r15
	addq	$32, %r15
	movq	-72(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, %r14
	movq	-80(%rbp), %rbx
	addq	$64, %rbx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	$.L.str.59, 32(%rsp)
	movq	$.L.str.57, 24(%rsp)
	movq	$.L.str.57, (%rsp)
	movl	$22, %edi
	movl	$9, %esi
	movl	$.L.str.62, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r15, %r8
	jmp	.LBB10_55
.LBB10_50:
	movq	-32(%rbp), %rax
	movb	$-123, 40(%rax)
	jmp	.LBB10_57
.LBB10_48:
	movq	-80(%rbp), %rbx
	addq	$32, %rbx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, %r14
	movq	-72(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	%rax, 8(%rsp)
	movq	$.L.str.59, 24(%rsp)
	movq	$.L.str.57, 16(%rsp)
	movq	$.L.str.57, (%rsp)
	movl	$22, %edi
	movl	$8, %esi
	movl	$.L.str.58, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
.LBB10_55:
	movq	%r14, %r9
	callq	Error
.LBB10_56:
	movq	-32(%rbp), %rax
	movb	$-127, 40(%rax)
	jmp	.LBB10_57
.LBB10_53:
	movq	-32(%rbp), %rax
	movb	$-126, 40(%rax)
.LBB10_57:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rcx
	movb	$1, %al
	testb	$-128, 41(%rcx)
	jne	.LBB10_59
# BB#58:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	sete	%al
.LBB10_59:
	movq	-32(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$12, %eax
	andl	$61439, %edx            # imm = 0xEFFF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	cmpl	$0, -92(%rbp)
	je	.LBB10_61
# BB#60:
	movq	-64(%rbp), %rdi
	callq	DisposeObject
.LBB10_61:
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	SetTarget, .Lfunc_end10-SetTarget
	.cfi_endproc

	.globl	CheckComponentOrder
	.align	16, 0x90
	.type	CheckComponentOrder,@function
CheckComponentOrder:                    # @CheckComponentOrder
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB11_1
	.align	16, 0x90
.LBB11_2:                               #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB11_2
# BB#3:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB11_4
	.align	16, 0x90
.LBB11_5:                               #   in Loop: Header=BB11_4 Depth=1
	movq	-32(%rbp), %rax
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB11_5
# BB#6:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB11_7
# BB#12:
	movl	$154, -44(%rbp)
	.align	16, 0x90
.LBB11_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_15 Depth 2
                                        #     Child Loop BB11_18 Depth 2
	movq	-24(%rbp), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB11_22
# BB#14:                                #   in Loop: Header=BB11_13 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB11_15
	.align	16, 0x90
.LBB11_16:                              #   in Loop: Header=BB11_15 Depth=2
	movq	-40(%rbp), %rax
.LBB11_15:                              #   Parent Loop BB11_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB11_16
# BB#17:                                #   in Loop: Header=BB11_13 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB11_18
	.align	16, 0x90
.LBB11_19:                              #   in Loop: Header=BB11_18 Depth=2
	movq	-24(%rbp), %rax
.LBB11_18:                              #   Parent Loop BB11_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB11_19
# BB#20:                                #   in Loop: Header=BB11_13 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_13
# BB#21:
	movl	$156, -44(%rbp)
	jmp	.LBB11_22
.LBB11_7:
	movl	$155, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB11_8
	.align	16, 0x90
.LBB11_11:                              #   in Loop: Header=BB11_8 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
.LBB11_8:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB11_22
# BB#9:                                 #   in Loop: Header=BB11_8 Depth=1
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB11_11
# BB#10:
	movl	$157, -44(%rbp)
.LBB11_22:
	movl	-44(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	CheckComponentOrder, .Lfunc_end11-CheckComponentOrder
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"word is too long"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"assert failed in %s"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"FlushInners: Up(hd)!"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"FlushInners: UNATTACHED!"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"FlushInners: FOLLOWS!"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"assert failed in %s %s"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"FlushInners:"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ExpandRecursives: recs == nilobj!"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ExpandRecursives: index!"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"HandleHeader: type(header)!"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"HandleHeader: header parents!"
	.size	.L.str.10, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"no header for %s to remove"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"@EndHeaderComponent"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Promote/END_HEADER!"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"HandleHeader: END_HEADER/gap!"
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"HandleHeader: type(gaplink)!"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"HH!"
	.size	.L.str.16, 4

	.type	Promote.first,@object   # @Promote.first
	.data
	.align	4
Promote.first:
	.long	1                       # 0x1
	.size	Promote.first, 4

	.type	Promote.page_label,@object # @Promote.page_label
	.local	Promote.page_label
	.comm	Promote.page_label,8,8
	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"Promote: hd!"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Promote: stop_link!"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Promote: stop_link == Down(hd)!"
	.size	.L.str.19, 32

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Promote: missing GAP_OBJ!"
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"w"
	.size	.L.str.21, 2

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"galley %s must have a single column mark"
	.size	.L.str.22, 41

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Promote: nojoin case, can't find VCAT"
	.size	.L.str.23, 38

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"FlushRootGalley: UNATTACHED!"
	.size	.L.str.24, 29

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"FlushRootGalley: unattached HEAD!"
	.size	.L.str.25, 34

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"galley %s deleted (never attached)"
	.size	.L.str.26, 35

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Promote: type(z) != PAGE_LABEL!"
	.size	.L.str.27, 32

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Promote: PAGE_LABEL Down(z) == z!"
	.size	.L.str.28, 34

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%s symbol ignored (out of place)"
	.size	.L.str.29, 33

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"?"
	.size	.L.str.30, 2

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Promote:"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Promote: tmp1 not COL_THR!"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Promote: FindSplitInGalley!"
	.size	.L.str.33, 28

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Promote: tmp2 not COL_THR!"
	.size	.L.str.34, 27

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Promote: header under SPLIT!"
	.size	.L.str.35, 29

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Promote: Down(hd) == stop_link!"
	.size	.L.str.36, 32

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Promote: dims!"
	.size	.L.str.37, 15

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.38, 27

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"KillGalley: precondition!"
	.size	.L.str.39, 26

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"KillGalley: UNATTACHED precondition!"
	.size	.L.str.40, 37

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"KillGalley: prnt!"
	.size	.L.str.41, 18

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"KillGalley: RECEPTIVE!"
	.size	.L.str.42, 23

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"KillGalley: UNATTACHED!"
	.size	.L.str.43, 24

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"KillGalley: head"
	.size	.L.str.44, 17

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"FreeGalley: pre!"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"FreeGalley: Up(hd)!"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"FreeGalley: ACAT!"
	.size	.L.str.47, 18

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"forcing galley after input point"
	.size	.L.str.48, 33

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"FreeGalley/RECEIVING: type(z) != HEAD!"
	.size	.L.str.49, 39

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"SetTarget: type(hd) != HEAD!"
	.size	.L.str.50, 29

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"SetTarget: type(x) != CLOSURE!"
	.size	.L.str.51, 31

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"SetTarget: x has no target!"
	.size	.L.str.52, 28

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"SetTarget: Down(PAR)!"
	.size	.L.str.53, 22

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"SetTarget:  cr == nilobj!"
	.size	.L.str.54, 26

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"target of %s is not a cross reference"
	.size	.L.str.55, 38

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"left parameter of %s is not a symbol"
	.size	.L.str.56, 37

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"&&"
	.size	.L.str.57, 3

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"replacing %s%s? by %s%s%s"
	.size	.L.str.58, 26

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"following"
	.size	.L.str.59, 10

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"preceding"
	.size	.L.str.60, 10

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"foll_or_prec"
	.size	.L.str.61, 13

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"replacing %s%s%s by %s%s%s"
	.size	.L.str.62, 27

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"DisposeHeaders: type(headers(hd))!"
	.size	.L.str.63, 35

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"FindSplit: missing galley component"
	.size	.L.str.64, 36

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"FindSplitInGalley failed"
	.size	.L.str.65, 25

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"FindSplitInGalley:"
	.size	.L.str.66, 19

	.type	MakeDead.dead_count,@object # @MakeDead.dead_count
	.local	MakeDead.dead_count
	.comm	MakeDead.dead_count,4,4
	.type	MakeDead.dead_store,@object # @MakeDead.dead_store
	.local	MakeDead.dead_store
	.comm	MakeDead.dead_store,8,8

	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
